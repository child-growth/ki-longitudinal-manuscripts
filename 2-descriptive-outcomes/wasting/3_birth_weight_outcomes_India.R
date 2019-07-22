



rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_co_functions.R"))


load(paste0(ghapdata_dir, "Wasting_inc_data.RData"))

#Subset to monthly
d <- d_noBW %>% filter(measurefreq == "monthly") %>% filter(agedays < 24*30.4167) %>%
  filter(region=="South Asia") %>%
  subset(., select = c(studyid, region, country, subjid, agedays, whz, sex, wasting_episode, wast_inc, wast_rec, pt_wast, wasting_duration))

#Mark children born or enrolled wasted
d <- d %>% group_by(studyid, subjid) %>% arrange(studyid, subjid, agedays) %>%
  mutate(age_enrol = first(agedays)) %>%
  filter(age_enrol == 1) %>%
  mutate(born_wast = 1 * (first(whz) < (-2)))

#calculate birthweight
d$birthwt <- who_zscore2wtkg(d$age_enrol, d$whz, sex = d$sex) * 1000
summary(d$birthwt)

#Categorize low birthweight
d$lbw <- NA
d$lbw[d$birthwt<2500] <- 1
d$lbw[d$birthwt>=2500] <- 0
table(d$lbw)




# estimate a pooled fit, over birth wasting status
plotdf <- NULL
set.seed(12345)
for(i in 1:length(unique(d$born_wast))){
  cat=unique(d$lbw)[i]
  di <- filter(d, lbw==cat)
  fiti <- mgcv::gam(whz~s(agedays,bs="cr", k=10),data=di)
  range=min(di$agedays):max(di$agedays)
  agedays=1:(diff(range(range))+1)
  newd <- data.frame(agedays=range)
  fitci <- gamCI(m=fiti,newdata=newd,nreps=1000)
  dfit <- data.frame(lbw=cat, agedays=agedays,
                     fit=fitci$fit,fit_se=fitci$se.fit,
                     fit_lb=fitci$lwrS,fit_ub=fitci$uprS)
  plotdf<-rbind(plotdf,dfit)
}
plotdf

plotdf$lbw <- factor(ifelse(plotdf$lbw==1, "Low birthweight", "Healthy birthweight"))



p <- ggplot(data=plotdf, aes(x=agedays, y=fit, group=lbw, color=lbw,  fill=lbw)) +
  geom_line(size=2) +
  geom_ribbon(aes(ymin=fit_lb, ymax=fit_ub), alpha=0.3, color=NA) +
  scale_color_manual(values=tableau10[c(5:6)], na.translate = F) + 
  scale_fill_manual(values=tableau10[c(5:6)], na.translate = F) + 
  ylab("Mean WLZ") + xlab("Age in months") +
  scale_y_continuous(expand = c(0, 0)) +
  scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                     breaks = 1:24*30.4167-15.2, labels = 1:24) +
  #geom_text(data = ann_text,label =  c("Year 1","Year 2", "Year 3"), color="grey30") +
  #coord_cartesian(ylim=c(-1.25, 0)) + 
  guides(shape=guide_legend(ncol=2), color=guide_legend(ncol=1)) + #guides(color = FALSE) + 
  theme(
    legend.position = c(.8,.5),
    legend.title = element_blank(),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"),
    legend.text=element_text(size=rel(1)))    
p


ggsave(p, file=paste0(here(),"/figures/India/wasting/birthweight_strat_growth_curve_India.png"), width=7, height=5)




#Set WLZ during birth  wasting episode to 0
d$whz[d$wasting_episode=="Born Wasted"] <- NA


d <- calc.ci.agecat(d, range=6)

#Drop first 6 months
d <- d %>% filter(agecat!="0-6 months")

d$agecat <- "6-24 months"
d$agecat <- factor(d$agecat)

#mean whz
whz.res <- d %>% group_by(born_wast) %>% do(summary.whz(.)$whz.res)
whz.res

#Cumulative inc
ci.res <- d %>% group_by(born_wast) %>% do(summary.ci(., agelist = list("6-24 months"))$ci.res)
ci.res

sev.ci.res <- d %>% group_by(born_wast) %>% do(summary.ci(., agelist = list("6-24 months"), severe.wasted = T)$ci.res)
sev.ci.res

#Incidence rate
ir.res <- d %>% group_by(born_wast) %>% do(summary.ir(., agelist = list("6-24 months"))$ir.res)
ir.res$est <- ir.res$est * 1000
ir.res$lb <- ir.res$lb * 1000
ir.res$ub <- ir.res$ub * 1000



#Duration
# dur.res <- d %>% group_by(born_wast) %>% do(summary.dur(., agelist = list("6-24 months"))$dur.res)
# dur.res

#Persistant wasting
perswast.res <- d %>% group_by(born_wast) %>% do(summary.perswast(., agelist = list("6-24 months"))$pers.res)
perswast.res



#co-occurrent wasting and stunting
co.res <- d %>% group_by(born_wast) %>% do(summary.prev.co(.)$prev.res)
co.res


res <- data.frame(
  measure= rep(c("Mean WLZ","Wasting cumulative incidence", "Severe wasting cumulative incidence", "Wasting incidence rate", "Persistent wasting", "Co-occurrent wasting and stunting"), each=2),
  rbind(whz.res,ci.res, sev.ci.res, ir.res, perswast.res, co.res)
)
res

saveRDS(res, file = paste0(here(),"/results/bw_longterm_res_India.rds"))


