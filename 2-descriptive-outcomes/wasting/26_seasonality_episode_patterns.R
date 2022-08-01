

rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))
library(broom)
load(paste0(ghapdata_dir, "Wasting_inc_sens_data.RData"))

d <- d30

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
d6 <- calc.ci.agecat(d, range=6, birth="no")
df2 <- d6 %>% group_by(studyid, subjid, agecat,episode_id) %>% slice(1) %>% filter(!is.na(wasting_duration)) %>% filter(agedays < 30.6417 * 24)
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


#--------------------------------------------------------------------
#look at birthmonth and reoccurrence in south asian cohorts
#--------------------------------------------------------------------

#load covariates
dfull <-d
load( paste0(ghapdata_dir, "seasonality_rf.Rdata"))
season <- d %>% group_by(studyid, subjid) %>% arrange(agedays) %>% filter(first(agedays)<=14) %>% ungroup() %>% select(studyid, subjid, rain_quartile, cohort_index) %>% distinct(studyid,subjid, .keep_all = T)
cov <- readRDS(paste0(ghapdata_dir,"FINAL_clean_covariates.rds"))

head(d)
cov <- cov %>% subset(., select = c(studyid, subjid, birthwt, brthmon))

d <- left_join(dfull, cov,by=c("studyid", "subjid"))
d <- left_join(d, season,by=c("studyid", "subjid"))

d <- d %>% filter(measurefreq=="monthly") %>% group_by(studyid, subjid) %>% arrange(agedays) %>%
  filter( first(agedays)<=14) %>% ungroup()

#Subset to med/high seasonal cohorts
d <- d %>% filter(cohort_index >= 0.7)

#subset to monthly cohorts in south asia
df <- d %>% filter(region=="South Asia") %>% 
  mutate(brthmon=as.numeric(brthmon), monsoon = ifelse(brthmon>=5 & brthmon <= 10, "Monsoon","Dry"))

df %>% group_by(monsoon) %>%
  summarise(N=n(),wast_eps=sum(wast_inc), wast_eps/N*100, 
            mean(whz, na.rm=T), mean(wast_rec60d, na.rm=T), median(duration, na.rm=T))

#look at ages past 6 months
d2 <- d %>% filter(agedays >= 6 *30.4167, !is.na(rain_quartile))
d2 %>% group_by(rain_quartile) %>%
  summarise(N=n(),wast_eps=sum(wast_inc), wast_eps/N*100, 
            mean(whz, na.rm=T), mean(wast_rec60d, na.rm=T), median(duration, na.rm=T))


#get rma pooled mean WLZ, difference, wasting IR, wasting CI.
df <- d2 %>% mutate(agecat=rain_quartile)
#drop studies without enough obs in all seasons
df <- df %>% group_by(studyid, country, agecat) %>% mutate(Nchild=length(unique(subjid))) %>% filter(Nchild>=5) %>%
       group_by(studyid, country) %>% mutate(Nseasons = length(unique(agecat))) %>% filter(Nseasons==4) 
     table(df$studyid)                                        

prev.res <- summary.prev.whz(df, N_filter=5)$prev.res
whz.res <- summary.whz(df, N_filter=5)$whz.res


#CI
ip.res <- summary.incprop(df, N_filter=5)$ci.res
ip.res

#IR
ir.res <-summary.ir(df, Nchild_filter=1, ptime_filter=1)$ir.res
ir.res$est <- ir.res$est * 1000
ir.res$lb <- ir.res$lb * 1000
ir.res$ub <- ir.res$ub * 1000
ir.res

#pers wast
pers.res <- summary.perswast(df,  N_filter=5)$pers.res
pers.res


rma_format(pers.res, subgroup = "agecat")


pers.res$agecat <- factor(pers.res$agecat, levels=c("Opposite max rain", "Post-max rain","Pre-max rain","Max rain" ))
fit <- rma(est/100, sei=se, mods = ~ agecat, method="FE", data=pers.res)
fit

pers.res$est <- pers.res$est/100
fit <- rma(est, sei=se, mods = ~ agecat, method="FE", data=pers.res)
fit



df2 <- df %>%
  mutate(rain_quartile2=case_when(
    rain_quartile %in% c("Opposite max rain","Post-max rain") ~"Low",
    rain_quartile %in% c("Pre-max rain", "Max rain") ~"High"),
    rain_quartile2=factor(rain_quartile2, levels=c("Low","High")))

res <- df2 %>% ungroup() %>%
  nest_by(studyid, country) %>% 
  mutate(mod = list(lm(whz ~rain_quartile2, data = data))) %>%
  #mutate(mod = list(lm.cluster(whz ~rain_quartile2 + subjid,cluster = 'subjid', data = data))) %>%
  summarize(tidy(mod)) %>%
  #filter(term=="rain_quartileMax rain")
  filter(term=="rain_quartile2High")
res

fit <- rma(estimate, sei=std.error, method="REML", data=res)
fit


res2 <- df2 %>% group_by(studyid, country, subjid, rain_quartile2) %>%
  summarize(wast=1*(min(whz, na.rm=T) < (-2))) %>%
  ungroup() %>%
  nest_by(studyid, country) %>% 
  mutate(mod = list(glm(wast ~rain_quartile2, family = "binomial", data = data))) %>%
  summarize(tidy(mod)) %>%
  filter(term=="rain_quartile2High")
res2

fit2 <- rma(estimate, sei=std.error, measure="RR", method="REML", data=res2)
fit2 <- summary(fit2)

exp(fit2$beta)
exp(fit2$ci.lb)
exp(fit2$ci.ub)



res3 <- df %>% group_by(studyid, country, subjid, rain_quartile) %>%
  summarize(wast=1*(min(whz, na.rm=T) < (-2))) %>%
  ungroup() %>%
  nest_by(studyid, country) %>% 
  mutate(mod = list(glm(wast ~rain_quartile, family = "binomial", data = data))) %>%
  summarize(tidy(mod)) %>%
  filter(term=="rain_quartileMax rain")
res3

fit3 <- rma(estimate, sei=std.error, measure="RR", method="REML", data=res3)
fit3 <- summary(fit3)
fit3
