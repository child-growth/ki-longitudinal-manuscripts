



rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_co_functions.R"))


load("U:/ucb-superlearner/data/Wasting_inc_data.RData")


#Subset to monthly
d <- d_noBW %>% filter(measurefreq == "monthly") %>% filter(agedays < 24*30.4167) %>%
  subset(., select = c(studyid, region, country, subjid, agedays, whz, haz, wasting_episode, wast_inc, wast_rec, pt_wast, wasting_duration))

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



p <- ggplot(data=plotdf, aes(x=agedays, y=fit, group=born_wast, color=born_wast,  fill=born_wast)) +
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
    legend.position = c(.8,.2),
        legend.title = element_blank(),
        legend.background = element_blank(),
        legend.box.background = element_rect(colour = "black"),
        legend.text=element_text(size=rel(1)))    
p


ggsave(p, file=paste0(here(),"/6-shiny-app/figures/wasting/birthwast_strat_growth_curve.png"), width=7, height=5)
save(p, file=paste0(here::here(),"/figures/plot objects/birthwast_strat_growth_curve_object.Rdata"))


p <- ggplot(data=plotdf, aes(x=agedays, y=fit, group=born_wast, color=born_wast,  fill=born_wast)) +
  geom_line(size=2) +
  geom_ribbon(aes(ymin=fit_lb, ymax=fit_ub), alpha=0.3, color=NA) +
  scale_color_manual(values=tableau10[c(5:6)], na.translate = F) + 
  scale_fill_manual(values=tableau10[c(5:6)], na.translate = F) + 
  ylab("WLZ") + xlab("Age in months") +
  scale_y_continuous(expand = c(0, 0)) +
  scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                     breaks = 1:24*30.4167-15.2, labels = 1:24) +
  #geom_text(data = ann_text,label =  c("Year 1","Year 2", "Year 3"), color="grey30") +
  #coord_cartesian(ylim=c(-1.25, 0)) + 
  guides(shape=guide_legend(ncol=2), color=guide_legend(ncol=1)) + #guides(color = FALSE) + 
  theme(
    legend.position = "none",
    #legend.position = c(.9,.2),
    legend.title = element_blank(),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"),
    legend.text=element_text(size=rel(0.5)))+


ggsave(p, file=paste0(here(),"/6-shiny-app/figures/wasting/birthwast_strat_growth_curve_nolegend.png"), width=7, height=5)



p <- ggplot() +
  geom_line(data=plotdf, aes(x=agedays, y=fit, group=born_wast, color=born_wast,  fill=born_wast), size=2) +
  geom_dl(data=plotdf, aes(label = born_wast), method = list(dl.combine("first.points", "last.points"))) 
p




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

saveRDS(res, file = paste0(here(),"/results/bw_longterm_res.rds"))



# #Region-specific
# 
# 
# #Subset to monthly
# d <- d_noBW %>% filter(measurefreq == "monthly") %>% filter(agedays < 24*30.4167) %>%
#   subset(., select = c(studyid, region, country, subjid, agedays, whz, haz, wasting_episode, wast_inc, wast_rec, pt_wast, wasting_duration))
# 
# #Mark children born or enrolled wasted
# d <- d %>% group_by(studyid, subjid) %>% arrange(studyid, subjid, agedays) %>%
#   mutate(age_enrol = first(agedays)) %>%
#   filter(age_enrol < 6 * 30.4167) %>%
#   mutate(early_wast = 1*(whz < (-2) & agedays < 6 * 30.4167),
#          early_wast=max(early_wast))
# table(d$early_wast)
# 
# d <- calc.ci.agecat(d, range=6)
# d <- d %>% filter(agecat!="0-6 months")
# 
# d$agecat <- "6-24 months"
# d$agecat <- factor(d$agecat)
# 
# d %>% filter(region=="Asia") %>% group_by(early_wast) %>% do(summary.perswast(., agelist = list("6-24 months"))$pers.res)
# 
# d %>% filter(region=="Africa") %>% group_by(early_wast) %>% do(summary.perswast(., agelist = list("6-24 months"))$pers.res)
# 
# d %>% filter(region=="Latin America") %>% group_by(early_wast) %>% do(summary.perswast(., agelist = list("6-24 months"))$pers.res)
# 
# df <- d %>% filter(region=="Latin America")  %>% group_by(studyid, country, subjid) %>% 
#   mutate(N=n()) %>% ungroup() %>%
#   filter(N>=4) %>%
#   group_by(studyid, country, agecat, subjid, early_wast) %>%
#   filter(!is.na(agecat)) %>%
#   summarise(perc_wast = mean(whz < (-2)), na.rm=T) %>%
#   mutate(pers_wast = 1*(perc_wast>=.5)) %>% group_by(early_wast) %>%
#   summarise(mean(pers_wast, na.rm=T), sum(pers_wast, na.rm=T))
# df  
