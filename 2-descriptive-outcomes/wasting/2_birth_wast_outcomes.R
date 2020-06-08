



rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_co_functions.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))


load(paste0(ghapdata_dir, "Wasting_inc_data.RData"))
co <- readRDS(paste0(ghapdata_dir, "rf_co_occurrence_data.rds"))


age_cutoff = 7


#Subset to monthly
d <- d_noBW %>% filter(measurefreq == "monthly") %>% filter(agedays < 24*30.4167) %>%
  subset(., select = c(studyid, region, country, subjid, agedays, whz, wasting_episode, wast_inc, wast_rec, pt_wast, wasting_duration))

#Mark children born or enrolled wasted
d <- d %>% group_by(studyid, subjid) %>% arrange(studyid, subjid, agedays) %>%
       mutate(age_enrol = first(agedays)) %>%
       filter(age_enrol <= age_cutoff) %>%
       mutate(born_wast = 1 * (first(whz) < (-2))) 
table(d$born_wast)
d %>% group_by(born_wast) %>% summarize(length(unique(paste0(studyid, subjid))))


#Subset to co-occurrence to monthly
co <- co %>% filter(measurefreq == "monthly") %>% filter(agedays < 24*30.4167) %>%
  subset(., select = c(studyid, region, country, subjid, agedays, whz, haz, sex))

#Mark children born or enrolled wasted
co <- co %>% group_by(studyid, subjid) %>% arrange(studyid, subjid, agedays) %>%
  mutate(age_enrol = first(agedays),
         first_whz = first(whz)) %>%
  filter(age_enrol <= age_cutoff) %>%
  mutate(born_wast = 1 * (first_whz < (-2)))

#Drop children who never recovered from wasting at birth
dim(d)
length(unique(paste0(d$studyid,d$subjid)))
d <- d %>% group_by(studyid, subjid) %>% filter(!(born_wast==1 & sum(wast_rec)==0))
dim(d)
length(unique(paste0(d$studyid,d$subjid)))
df <- d %>% group_by(studyid, subjid) %>% slice(1) 
table(d$born_wast[d$agedays<24*30.4167])
table(df$born_wast)

# estimate a pooled fit, over birth wasting status
plotdf <- NULL
set.seed(12345)
for(i in 1:length(unique(d$born_wast))){
  cat=unique(d$born_wast)[i]
  di <- filter(d, born_wast==cat)
  #fiti <- mgcv::gam(whz~s(agedays,bs="cr", k=10),data=di)
  fiti <- mgcv::gam(whz~s(agedays,bs="cr"),data=di)
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
co <- calc.ci.agecat(co, range=6)


#Drop first 6 months
d <- d %>% filter(agecat!="0-6 months")
d$agecat <- "6-24 months"
d$agecat <- factor(d$agecat)

co <- co %>% filter(agecat!="0-6 months")
co$agecat <- "6-24 months"
co$agecat <- factor(co$agecat)

#mean whz
whz.res <- d %>% group_by(born_wast) %>% do(summary.whz(., N_filter=1)$whz.res)
whz.res


#prevalence
prev.res <- d %>% group_by(born_wast) %>% do(summary.prev.whz(., N_filter=1)$prev.res)
prev.res

#CI
ci.res <- d %>% group_by(born_wast) %>% do(summary.wast.ci(., N_filter=1, age.range=NULL)$ci.res)
ci.res


#Incidence rate
ir.res <- d %>% group_by(born_wast) %>% do(summary.ir(., Nchild_filter=1, ptime_filter=1)$ir.res)
ir.res$est <- ir.res$est * 1000
ir.res$lb <- ir.res$lb * 1000
ir.res$ub <- ir.res$ub * 1000
ir.res


#Persistant wasting
perswast.res <- d %>% group_by(born_wast) %>% do(summary.perswast(., N_filter=1)$pers.res)
perswast.res



#co-occurrent wasting and stunting
co.res <- co %>% group_by(born_wast) %>% 
  filter(agedays > 17*30.4167 & agedays < 19*30.4167) %>% 
  do(summary.prev.co(., N_filter=1)$prev.res)
co.res


res <- data.frame(
  measure= rep(c("Mean WLZ", "Wasting prevalence", "Wasting cumulative incidence", "Wasting incidence rate", "Persistent wasting", "Co-occurrent wasting and stunting"), each=2),
  rbind(whz.res, prev.res, ci.res, ir.res, perswast.res, co.res)
)
res

saveRDS(res, file = paste0(here(),"/results/bw_longterm_res.rds"))




