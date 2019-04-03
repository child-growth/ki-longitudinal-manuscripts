



rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))


load("U:/ucb-superlearner/data/Wasting_inc_data.RData")


#Subset to monthly
d <- d_noBW %>% filter(measurefreq == "monthly") %>% filter(agedays < 24*30.4167) %>%
  subset(., select = c(studyid, region, country, subjid, agedays, whz, wasting_episode, wast_inc, wast_rec, pt_wast, wasting_duration))

#Mark children born or enrolled wasted
d <- d %>% group_by(studyid, subjid) %>% arrange(studyid, subjid, agedays) %>%
       mutate(age_enrol = first(agedays)) %>%
       filter(age_enrol < 3 * 30.4167) %>%
       mutate(born_wast = 1 * (first(whz) < (-2)))# %>%
       #filter(born_wast==1 | sum(wast_inc)>0) #Subset to only children who experiences wasting
table(d$born_wast)

#Drop children who never recovered from wasting at birth
dim(d)
d <- d %>% filter(!(born_wast==1 & sum(wast_rec)==0))
dim(d)


# estimate a pooled fit, over birth wasting status
plotdf <- NULL
for(i in 1:length(unique(d$born_wast))){
  cat=unique(d$born_wast)[i]
  di <- filter(d, born_wast==cat)
  fiti <- mgcv::gam(whz~s(agedays,bs="cr", k=10),data=di)
  range=min(di$agedays):max(di$agedays)
  agedays=1:(diff(range(range))+1)
  newd <- data.frame(agedays=range)
  fitci <- gamCI(m=fiti,newdata=newd,nreps=1000)
  dfit <- data.frame(born_wast=cat, agedays=agedays,
                     fit=fitci$fit,fit_se=fitci$se.fit,
                     fit_lb=fitci$lwrS,fit_ub=fitci$uprS)
  plotdf<-rbind(plotdf,dfit)
}
plotdf

plotdf$born_wast <- factor(ifelse(plotdf$born_wast==1, "Born wasted", "Not born wasted"))


p <- ggplot() +
  geom_line(data=plotdf, aes(x=agedays, y=fit, group=born_wast, color=born_wast,  fill=born_wast), size=2) +
  geom_ribbon(data=plotdf, aes(x=agedays, y=fit, ymin=fit_lb, ymax=fit_ub, group=born_wast, color=born_wast,  fill=born_wast), alpha=0.3, color=NA) +
  scale_color_manual(values=tableau10[c(5:6)], na.translate = F) + 
  scale_fill_manual(values=tableau10[c(5:6)], na.translate = F) + 
  ylab("WLZ") + xlab("Age in months") +
  scale_y_continuous(expand = c(0, 0)) +
  scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                     breaks = 1:24*30.4167-15.2, labels = 1:24) +
  #geom_text(data = ann_text,label =  c("Year 1","Year 2", "Year 3"), color="grey30") +
  #coord_cartesian(ylim=c(-1.25, 0)) + 
  guides(shape=guide_legend(ncol=2), color=guide_legend(ncol=1)) + #guides(color = FALSE) + 
  theme(legend.position = c(.9,.2),
        legend.title = element_blank(),
        legend.background = element_blank(),
        legend.box.background = element_rect(colour = "black"),
        legend.text=element_text(size=rel(0.5)))
p


ggsave(p, file=paste0(here(),"/figures/wasting/birthwast_strat_growth_curve.png"), width=7, height=5)




d %>% group_by(subjid, born_wast) %>% slice(1) %>% group_by(born_wast) %>% summarize(mean(whz, na.rm=T))

ggplot(d, aes(x=agedays, y=whz, group=born_wast, color=born_wast)) + geom_smooth() 





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


res <- data.frame(
  measure= rep(c("Mean WLZ","Wasting cumulative incidence", "Severe wasting cumulative incidence", "Wasting incidence rate", "Persistent wasting"), each=2),
    rbind(whz.res,ci.res, sev.ci.res, ir.res, perswast.res)
)
res

saveRDS(res, file = paste0(here(),"/results/bw_longterm_res.rds"))

