

rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))
load(paste0(ghapdata_dir, "Wasting_inc_sens_data.RData"))

d <-d30

#Calculate durations with 30 day washout

#Duration
df <- d %>% group_by(studyid, subjid, episode_id) %>% slice(1) %>% filter(!is.na(wasting_duration)) %>% filter(agedays < 30.6417 * 24)
calc_dur_ci <- function(df){
  dur <- median(df$wasting_duration, na.rm=T)
  #Quantile CI's'
  ci <- sort(df$wasting_duration)[qbinom(c(.025,.975), length(df$wasting_duration), 0.5)]
  return(data.frame(dur=dur, ci.lb=ci[1], ci.ub=ci[2]))
}
calc_dur_ci(df)

#duration by age 
d6 <- calc.ci.agecat(df, range=6, birth="no")
df2 <- d6 %>% group_by(studyid, subjid, agecat,episode_id) %>% slice(1) %>% filter(!is.na(wasting_duration)) %>% filter(agedays < 30.6417 * 24)
df2 %>% group_by(agecat) %>% do(calc_dur_ci(.))

df2$agecat <- as.character(df2$agecat)
df2$agecat[df2$agecat!="Birth" & df2$agecat!="8 days-6 months"] <- "6-24 months"
df2 %>% group_by(agecat) %>% do(calc_dur_ci(.))


#Number of measurements per episode
df_Nmeas <- d %>% filter(wasting_episode=="Wasted") %>% group_by(studyid, subjid, episode_id) %>% summarize(N=n(), agedays=mean(agedays, na.rm=T)) %>% filter(agedays <=730)
head(df_Nmeas)

temp<-d %>% filter(studyid=="CMC-V-BCS-2002",subjid=="100", episode_id==4 )

ggplot(df_Nmeas, aes(x=agedays, y=N)) + geom_jitter(alpha=0.01)
summary(df_Nmeas$N)
df_Nmeas <- calc.ci.agecat(df_Nmeas, range=6, birth="yes")
prop.table(table(df_Nmeas$agecat,df_Nmeas$N),1)*100
df_Nmeas$agecat <- as.character(df_Nmeas$agecat)
df_Nmeas$agecat[df_Nmeas$agecat!="0-6 months"] <- "6-24 months"
df_Nmeas$N[df_Nmeas$N>5] <- 5
prop.table(table(df_Nmeas$agecat,df_Nmeas$N),1)*100

