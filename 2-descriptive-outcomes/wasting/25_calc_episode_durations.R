

rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
library(rcompanion)
library(metamedian)

source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))
load(paste0(ghapdata_dir, "Wasting_inc_sens_data.RData"))
load(paste0(ghapdata_dir, "Wasting_inc_data.RData"))


summary(d$duration)
summary(d$wasting_duration)
summary(d30$wasting_duration)

# d <-d30

#Calculate durations with 30 day washout

#Duration
df <- d %>% group_by(studyid, subjid, episode_id) %>% slice(1)  %>% filter(wasting_episode=="Wasted", agedays < 30.4167  * 24)
df30 <- d30 %>% group_by(studyid, subjid, episode_id) %>% slice(1)  %>% filter(wasting_episode=="Wasted", agedays < 30.4167  * 24)
summary(df$wasting_duration)
summary(df30$wasting_duration)

calc_dur_ci <- function(df){
  dur <- median(df$wasting_duration, na.rm=T)
  #Quantile CI's'
  ci <- sort(df$wasting_duration)[qbinom(c(.025,.975), length(df$wasting_duration), 0.5)]
  return(data.frame(dur=dur, ci.lb=ci[1], ci.ub=ci[2]))
}
calc_dur_ci(df)

#duration by age 
d6 <- calc.ci.agecat(d, range=6, birth="no")
df2 <- d6 %>% group_by(studyid, subjid, agecat,episode_id) %>% slice(1)  %>% filter(wasting_episode=="Wasted",agedays < 30.4167  * 24)
df2 %>% group_by(agecat) %>% do(calc_dur_ci(.))

df2$agecat <- as.character(df2$agecat)
df2$agecat[df2$agecat!="Birth" & df2$agecat!="8 days-6 months"] <- "6-24 months"
df2 %>% group_by(agecat) %>% do(calc_dur_ci(.))

#Mean WLZ of episodes by age
d6 %>% group_by(agecat) %>% filter(whz < (-2)) %>% summarise(mean(whz))

# #Check calculation methods
# groupwiseMedian(wasting_duration ~ agecat,
#                 data       = df2,
#                 conf       = 0.95,
#                 R          = 5000,
#                 percentile = TRUE,
#                 bca        = FALSE,
#                 digits     = 3)
# 

#pooled median
dur_summary <- df2 %>% group_by(studyid, country) %>% summarize(N=n(), dur=median(wasting_duration, na.rm=T))
dur_summary_agecat <- df2 %>% group_by(studyid, country, agecat) %>%
  filter(!is.na(agecat)) %>% summarize(N=n(), dur=median(wasting_duration, na.rm=T))


## Meta-analysis of the difference of medians
pool.medians <- function(d){
  poolres <- pool.med(yi=d$dur, #wi=d$N, #Don't include weights, as this makes it a fixed-effects style estimator
                      norm.approx = T)
  res <- data.frame(duration=poolres$pooled.est, lb=poolres$ci.lb, ub=poolres$ci.ub)
  return(res)
}

dur_summary %>% filter(N>5) %>% ungroup() %>% do(pool.medians(.))
dur_summary_agecat %>% filter(N>5) %>% group_by(agecat) %>% do(pool.medians(.))






#Number of measurements per episode
df_Nmeas <- d %>% filter(wasting_episode=="Wasted") %>% group_by(studyid, country, subjid, episode_id) %>% summarize(N=n(), agedays=mean(agedays, na.rm=T)) %>% filter(agedays <=730)
head(df_Nmeas)


ggplot(df_Nmeas, aes(x=agedays, y=N)) + geom_jitter(alpha=0.01)
summary(df_Nmeas$N)
df_Nmeas <- calc.ci.agecat(df_Nmeas, range=6, birth="yes")
prop.table(table(df_Nmeas$agecat,df_Nmeas$N),1)*100
df_Nmeas$agecat <- as.character(df_Nmeas$agecat)
df_Nmeas$agecat[df_Nmeas$agecat!="0-6 months"] <- "6-24 months"
df_Nmeas$N[df_Nmeas$N>5] <- 5
prop.table(table(df_Nmeas$agecat,df_Nmeas$N),1)*100


#RE pool
pool.data= df_Nmeas %>%
  group_by(studyid,country) %>%
  mutate(Nmeas=n()) %>%
  group_by(studyid,country, N) %>%
  summarise(
    nchild=length(unique(subjid)),
    nstudy=length(unique(studyid)),
    ncases=n(),
    Nmeas=Nmeas[1]) 

pool.data.age= df_Nmeas %>%
  group_by(studyid,country,agecat) %>%
  mutate(Nmeas=n()) %>%
  group_by(studyid,country,agecat, N) %>%
  summarise(
    nchild=length(unique(subjid)),
    nstudy=length(unique(studyid)),
    ncases=n(),
    Nmeas=Nmeas[1]) 


res1 <- pool.data %>% group_by(N) %>%
  do(fit.rma(data=. ,ni="Nmeas", xi="ncases",age=.$agecat[1],measure="PLO",nlab=" measurements", method="REML"))

res2 <-  pool.data.age %>% group_by(agecat, N) %>%
  do(fit.rma(data=. ,ni="Nmeas", xi="ncases",age=.$agecat[1],measure="PLO",nlab=" measurements", method="REML"))

res <- bind_rows(res1, res2)
res %>% filter(N %in% c(1,2,5)) %>% select(N, agecat, est, lb, ub) %>%
  mutate(est=est*100, lb=lb*100, ub=ub*100)


