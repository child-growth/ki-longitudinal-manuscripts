



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

#How many of those who had birthweight measured and who did NOT have wasting at birth also had incident wasting in the first 60 days? 
df <- d %>% filter(agedays < 2* 30.4167, born_wast==0) %>% group_by(studyid, subjid) %>% mutate(Nmeas=n())
table(df$Nmeas)
df <- df %>% filter(Nmeas>2, agedays > 7)  %>% group_by(studyid, country) %>% mutate(N=n(), wast=1*(whz < -2))
summary(df$whz)
prop.table(table(df$whz < -2)) * 100
df2 <- df %>% group_by(studyid, country, subjid) %>% summarise(wast_inc=1*(min(whz)< -2), N=n())
prop.table(table(df2$wast_inc)) * 100

#prevalence
dprev <- df %>% group_by(studyid, country) %>% summarise(N=n(), wast=sum(wast), agecat="0-2 months")
prev.res= fit.rma(data=dprev,ni="N", xi="wast",age="0-2 months",measure="PLO",nlab="children", method="REML")
prev.res$est=as.numeric(prev.res$est)
prev.res$lb=as.numeric(prev.res$lb)
prev.res$ub=as.numeric(prev.res$ub)
prev.res = prev.res %>%
  mutate(est=est*100,lb=lb*100,ub=ub*100)
prev.res

#CI
# estimate random effects, format results
dCI <- df2 %>% group_by(studyid, country) %>% summarise(N=n(), ncases=sum(wast_inc), agecat="0-2 months")
ci.res=fit.rma(data=dCI,ni="N", xi="ncases",age="0-2 months",measure="PLO",nlab=" measurements", method="REML")
ci.res$est=as.numeric(ci.res$est)
ci.res$lb=as.numeric(ci.res$lb)
ci.res$ub=as.numeric(ci.res$ub)
ci.res = ci.res %>%
  mutate(est=est*100,lb=lb*100,ub=ub*100)
ci.res$ptest.f=sprintf("%0.0f",ci.res$est)
ci.res




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

#Make a cohort-stratified dataset
# estimate a pooled fit, over birth wasting status
df <- d %>% group_by(studyid, country) %>% mutate(N=length(unique(born_wast))) %>% 
  filter(N==2) %>% droplevels()

plotdf <- NULL
set.seed(12345)
for(i in 1:length(unique(df$born_wast))){
  for(j in 1:length(unique(df$studyid))){
    cat=unique(df$born_wast)[i]
    study=unique(df$studyid)[j]
    subdf <- filter(df, born_wast==cat, studyid==study)
    for(k in 1:length(unique(subdf$country))){
      country=unique(subdf$country)[k]
      di <- filter(subdf, country==country)
      
      #cat(k," ",study," ",country," ",cat," ",length(agedays)," ",length(fitci$fit),"\n")
  #fiti <- mgcv::gam(whz~s(agedays,bs="cr", k=10),data=di)
      fiti <- NULL
  try(fiti <- mgcv::gam(whz~s(agedays,bs="cr"),data=di))
  range=min(di$agedays):max(di$agedays)
  agedays=1:(diff(range(range))+1)
  newd <- data.frame(agedays=range)
  try(fitci <- gamCI(m=fiti,newdata=newd,nreps=1000))
  dfit <- data.frame(studyid=study, country=country,
                     born_wast=cat, agedays=agedays,
                     fit=fitci$fit,fit_se=fitci$se.fit,
                     fit_lb=fitci$lwrS,fit_ub=fitci$uprS)
  plotdf<-rbind(plotdf,dfit)
    }
  }  
}

plotdf

plotdf$born_wast <- factor(ifelse(plotdf$born_wast==1, "Born wasted", "Not born wasted"))

saveRDS(plotdf, paste0(ghapdata_dir,"/birthwast_and_cohort_strat_whz_plot_data.rds"))




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


#Drop studies with less than Nmin meas
Nmin=6

#mean whz
whz.res <- d %>% group_by(born_wast) %>% do(summary.whz(., N_filter=Nmin)$whz.res)
whz.res


#prevalence
prev.res <- d %>% group_by(born_wast) %>% do(summary.prev.whz(., N_filter=Nmin)$prev.res)
prev.res

#CI
ci.res <- d %>% group_by(born_wast) %>% do(summary.wast.ci(., N_filter=Nmin, age.range=NULL)$ci.res)
ci.res


#Incidence rate
ir.res <- d %>% group_by(born_wast) %>% do(summary.ir(., Nchild_filter=1, ptime_filter=1)$ir.res)
ir.res$est <- ir.res$est * 1000
ir.res$lb <- ir.res$lb * 1000
ir.res$ub <- ir.res$ub * 1000
ir.res


#Persistant wasting
perswast.res <- d %>% group_by(born_wast) %>% do(summary.perswast(., N_filter=Nmin)$pers.res)
perswast.res



#co-occurrent wasting and stunting
co.res <- co %>% group_by(born_wast) %>% 
  filter(agedays > 17*30.4167 & agedays < 19*30.4167) %>% 
  do(summary.prev.co(., N_filter=Nmin)$prev.res)
co.res



#Get cohort-specific estimates
whz.res.cohort <- d %>% group_by(born_wast) %>% do(summary.whz(., N_filter=Nmin)$whz.cohort)
prev.res.cohort <- d %>% group_by(born_wast) %>% do(summary.prev.whz(., N_filter=Nmin)$prev.cohort)
ci.res.cohort <- d %>% group_by(born_wast) %>% do(summary.wast.ci(., N_filter=Nmin, age.range=NULL)$ci.cohort)
ir.res.cohort <- d %>% group_by(born_wast) %>% do(summary.ir(., Nchild_filter=1, ptime_filter=1)$ir.cohort)
ir.res.cohort$yi <- ir.res.cohort$yi * 1000
ir.res.cohort$ci.lb <- ir.res.cohort$ci.lb  * 1000
ir.res.cohort$ci.ub <- ir.res.cohort$ci.ub * 1000
perswast.res.cohort <- d %>% group_by(born_wast) %>% do(summary.perswast(., N_filter=Nmin)$pers.cohort)
co.res.cohort <- co %>% group_by(born_wast) %>% 
  filter(agedays > 17*30.4167 & agedays < 19*30.4167) %>% 
  do(summary.prev.co(., N_filter=Nmin)$prev.cohort)


res <- data.frame(
  measure= rep(c("Mean WLZ", "Wasting prevalence", "Wasting cumulative incidence", "Wasting incidence rate", "Persistent wasting", "Co-occurrent wasting and stunting"), each=2),
  rbind(whz.res, prev.res, ci.res, ir.res, perswast.res, co.res)
)
res


res.cohort <- bind_rows(
  data.frame(measure= "Mean WLZ",whz.res.cohort),
  data.frame(measure= "Wasting prevalence",prev.res.cohort),
  data.frame(measure= "Wasting cumulative incidence",ci.res.cohort),
  data.frame(measure= "Wasting incidence rate",ir.res.cohort),
  data.frame(measure= "Persistent wasting",perswast.res.cohort),
  data.frame(measure= "Co-occurrent wasting and stunting",co.res.cohort)
) %>%
  mutate(est=yi*100,  lb=ci.lb*100, ub=ci.ub*100, cohort=paste0(studyid,"-",country)) %>%
  select(measure, born_wast,cohort, studyid, country, est, lb, ub, nmeas) %>%
  group_by(cohort, measure) %>% mutate(N=n()) %>% filter(N==2)
  
head(res.cohort)
as.data.frame(res.cohort[res.cohort$measure=="Persistent wasting",])

saveRDS(res, file = paste0(BV_dir,"/results/bw_longterm_res.rds"))
saveRDS(res.cohort, file = paste0(BV_dir,"/results/bw_longterm_res_cohort.rds"))




