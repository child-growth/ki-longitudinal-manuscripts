



rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_co_functions.R"))


load(paste0(ghapdata_dir, "Wasting_inc_data.RData"))


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
set.seed(12345)
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

saveRDS(plotdf, paste0(ghapdata_dir,"/birthwast_strat_whz_plot_data.rds"))




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

#Incidence rate
ir.res <- d %>% group_by(born_wast) %>% do(summary.ir(.)$ir.res)
ir.res$est <- ir.res$est * 1000
ir.res$lb <- ir.res$lb * 1000
ir.res$ub <- ir.res$ub * 1000



#Persistant wasting
perswast.res <- d %>% group_by(born_wast) %>% do(summary.perswast(.)$pers.res)
perswast.res



#co-occurrent wasting and stunting
co.res <- d %>% group_by(born_wast) %>% do(summary.prev.co(.)$prev.res)
co.res


res <- data.frame(
  measure= rep(c("Mean WLZ","Wasting cumulative incidence", "Severe wasting cumulative incidence", "Wasting incidence rate", "Persistent wasting", "Co-occurrent wasting and stunting"), each=2),
    rbind(whz.res, ir.res, perswast.res, co.res)
)
res

saveRDS(res, file = paste0(here(),"/results/bw_longterm_res.rds"))




