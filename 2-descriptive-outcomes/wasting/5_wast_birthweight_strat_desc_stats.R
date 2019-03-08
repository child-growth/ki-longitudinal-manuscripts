


rm(list = ls())
library(tidyverse)
library(metafor)
library(data.table)
library(knitr)
library(growthstandards)

source("U:/Wasting/1-outcomes/0_wast_incfunctions.R")


load("U:/Data/Wasting/Wasting_inc_data.RData")
load("U:/Data/Wasting/Stunting_inc_data.RData")


#Subset to monthly
d <- d %>% filter(measurefreq == "monthly")
d_noBW <- d_noBW %>% filter(measurefreq == "monthly")
dstunt<- dstunt %>% filter(measurefreq == "monthly")

colnames(dstunt)
dstunt <- dstunt %>% subset(., select =c(studyid, country, subjid, agedays, haz))

d_noBW <- d_noBW %>% filter(agedays < 24 * 30.4167)


table(d_noBW$wasting_episode)

dim(d_noBW)
d_noBW <- d_noBW %>% group_by(studyid, country, subjid) %>% mutate(minage=min(agedays)) %>% filter(minage ==1)
dim(d_noBW)
d_noBW <- left_join(d_noBW, dstunt, by=c("studyid", "country", "subjid", "agedays"))
dim(d_noBW)




#Merge in covariates.
cov <- readRDS("U:/ucb-superlearner/Stunting rallies/FINAL_clean_covariates.rds")
cov <- cov %>% subset(., select = c(studyid, subjid, country, sex, birthwt))
dim(d_noBW)
d_noBW <- left_join(d_noBW, cov, by=c("studyid", "subjid", "country"))
dim(d_noBW)

#Calculate birthweight (in grams) from Zscore at birth
d_noBW$weight <- who_zscore2wtkg(d_noBW$agedays, z = d_noBW$whz, sex = d_noBW$sex) * 1000

#Calc low birthweight
d_noBW$lbw <- ifelse(d_noBW$weight < 2500, 1, 0)
d_noBW$lbw[d_noBW$agedays>1] <- NA
table(d_noBW$lbw)
d_noBW <- d_noBW  %>% group_by(studyid, country, subjid) %>% mutate(lbw=first(lbw)) 
table(d_noBW$lbw)

table(d_noBW$birthwt)


#Drop measures during birth wasting episode
d_noBW$whz[d_noBW$wasting_episode=="Born Wasted"] <- NA
d_noBW$haz[d_noBW$wasting_episode=="Born Wasted"] <- NA

dim(d_noBW)
d_noBW <- d_noBW  %>% group_by(studyid, country, subjid) %>% mutate(mean_whz=mean(whz, na.rm=T))%>% filter(!is.na(mean_whz))
dim(d_noBW)

#--------------------------------------------------
# Calculate descriptive statistics stratified by
# birthweight from covariate dataset
#--------------------------------------------------


nw <- d_noBW %>% group_by(studyid, country, subjid) %>% mutate(minage=min(agedays)) %>% filter(minage == 1) %>% filter(first(lbw)!=1)
w <- d_noBW %>% group_by(studyid, country, subjid)%>% mutate(minage=min(agedays), numrec=sum(wast_rec)) %>% filter(minage == 1) %>% filter(first(lbw)==1)


table(w$wasting_episode)
table(w$wast_inc)


#proportion of ever stunted and ever wasted children

sum_w <- w %>% group_by(studyid, country, subjid) %>% 
  summarize(wast_inc=sum(wast_inc), sevwast_inc=sum(sevwast_inc), wast_rec=sum(wast_rec), 
            N=n(),
            ever_wast=1*(min(whz, na.rm=T)<(-2)), ever_stunt=1*(min(haz, na.rm=T)<(-2)), 
            wast_meas=sum(whz < (-2), na.rm=T), sevwast_meas=sum(whz < (-3), na.rm=T), 
            stunt_meas=sum(haz < (-2), na.rm=T), sevstunt_meas=sum(haz < (-3), na.rm=T), 
            whz=mean(whz, na.rm=T),haz=mean(haz, na.rm=T)) %>% 
  ungroup() %>% 
  summarize(`Birth status`="Wasted",
            `Number of children`=n(), 
            `Mean number of measurements` =mean(N),
            `Mean WHZ`=mean(whz), `Proportion of children ever wasted`=  mean(ever_wast),
            `Mean number of wasting episodes`=mean(wast_inc),
            `Mean number of severe wasting episodes`=mean(sevwast_inc),
            `Mean number of wasted measurements`=mean(wast_meas), 
            `Mean number of severely wasted measurements`=mean(sevwast_meas),
            `Mean HAZ`=mean(haz), 
            `Proportion of children ever stunted`=  mean(ever_stunt),
            `Mean number of stunted measurements`=mean(stunt_meas), 
            `Mean number of severely stunted measurements`=mean(sevstunt_meas))


sum_nw <- nw %>% group_by(studyid, country, subjid) %>% 
  summarize(wast_inc=sum(wast_inc), sevwast_inc=sum(sevwast_inc), wast_rec=sum(wast_rec), 
            N=n(),
            ever_wast=1*(min(whz, na.rm=T)<(-2)), ever_stunt=1*(min(haz, na.rm=T)<(-2)), 
            wast_meas=sum(whz < (-2), na.rm=T), sevwast_meas=sum(whz < (-3), na.rm=T), 
            stunt_meas=sum(haz < (-2), na.rm=T), sevstunt_meas=sum(haz < (-3), na.rm=T), 
            whz=mean(whz, na.rm=T),haz=mean(haz, na.rm=T)) %>% 
  ungroup() %>% 
  summarize(`Birth status`="Not wasted",
            `Number of children`=n(), 
            `Mean number of measurements` =mean(N),
            `Mean WHZ`=mean(whz), `Proportion of children ever wasted`=  mean(ever_wast),
            `Mean number of wasting episodes`=mean(wast_inc),
            `Mean number of severe wasting episodes`=mean(sevwast_inc),
            `Mean number of wasted measurements`=mean(wast_meas), 
            `Mean number of severely wasted measurements`=mean(sevwast_meas),
            `Mean HAZ`=mean(haz), 
            `Proportion of children ever stunted`=  mean(ever_stunt),
            `Mean number of stunted measurements`=mean(stunt_meas), 
            `Mean number of severely stunted measurements`=mean(sevstunt_meas))


#median episode duration:
w_dur <- median(w$wasting_duration[w$wast_inc==1 & !is.na(w$wast_inc)], na.rm=T)
nw_dur <- median(nw$wasting_duration[nw$wast_inc==1 & !is.na(nw$wast_inc)], na.rm=T)


res <- rbind(sum_w, sum_nw)
res$`Median duration of wasting episodes (days)` <- c(w_dur, nw_dur)

res[,c(5,11)] <- res[,c(5,11)]*100
res[,-1] <- round(res[,-1],2)

knitr::kable(res)

#--------------------------------------------------
# Calculate descriptive statistics stratified by
# birthweight back-calculated from Z-score at birth
#--------------------------------------------------


nw <- d_noBW %>% group_by(studyid, country, subjid) %>% mutate(minage=min(agedays))%>% filter(birthwt=="Normal or high birthweight")
w <- d_noBW %>% group_by(studyid, country, subjid)%>% mutate(minage=min(agedays), numrec=sum(wast_rec))  %>% filter(birthwt=="Low birth weight")


table(w$wasting_episode)
table(w$wast_inc)


#proportion of ever stunted and ever wasted children

sum_w <- w %>% group_by(studyid, country, subjid) %>% 
  summarize(wast_inc=sum(wast_inc), sevwast_inc=sum(sevwast_inc), wast_rec=sum(wast_rec), 
            N=n(),
            ever_wast=1*(min(whz, na.rm=T)<(-2)), ever_stunt=1*(min(haz, na.rm=T)<(-2)), 
            wast_meas=sum(whz < (-2), na.rm=T), sevwast_meas=sum(whz < (-3), na.rm=T), 
            stunt_meas=sum(haz < (-2), na.rm=T), sevstunt_meas=sum(haz < (-3), na.rm=T), 
            whz=mean(whz, na.rm=T),haz=mean(haz, na.rm=T)) %>% 
  ungroup() %>% 
  summarize(`Birth status`="Wasted",
            `Number of children`=n(), 
            `Mean number of measurements` =mean(N),
            `Mean WHZ`=mean(whz), `Proportion of children ever wasted`=  mean(ever_wast),
            `Mean number of wasting episodes`=mean(wast_inc),
            `Mean number of severe wasting episodes`=mean(sevwast_inc),
            `Mean number of wasted measurements`=mean(wast_meas), 
            `Mean number of severely wasted measurements`=mean(sevwast_meas),
            `Mean HAZ`=mean(haz), 
            `Proportion of children ever stunted`=  mean(ever_stunt),
            `Mean number of stunted measurements`=mean(stunt_meas), 
            `Mean number of severely stunted measurements`=mean(sevstunt_meas))


sum_nw <- nw %>% group_by(studyid, country, subjid) %>% 
  summarize(wast_inc=sum(wast_inc), sevwast_inc=sum(sevwast_inc), wast_rec=sum(wast_rec), 
            N=n(),
            ever_wast=1*(min(whz, na.rm=T)<(-2)), ever_stunt=1*(min(haz, na.rm=T)<(-2)), 
            wast_meas=sum(whz < (-2), na.rm=T), sevwast_meas=sum(whz < (-3), na.rm=T), 
            stunt_meas=sum(haz < (-2), na.rm=T), sevstunt_meas=sum(haz < (-3), na.rm=T), 
            whz=mean(whz, na.rm=T),haz=mean(haz, na.rm=T)) %>% 
  ungroup() %>% 
  summarize(`Birth status`="Not wasted",
            `Number of children`=n(), 
            `Mean number of measurements` =mean(N),
            `Mean WHZ`=mean(whz), `Proportion of children ever wasted`=  mean(ever_wast),
            `Mean number of wasting episodes`=mean(wast_inc),
            `Mean number of severe wasting episodes`=mean(sevwast_inc),
            `Mean number of wasted measurements`=mean(wast_meas), 
            `Mean number of severely wasted measurements`=mean(sevwast_meas),
            `Mean HAZ`=mean(haz), 
            `Proportion of children ever stunted`=  mean(ever_stunt),
            `Mean number of stunted measurements`=mean(stunt_meas), 
            `Mean number of severely stunted measurements`=mean(sevstunt_meas))


#median episode duration:
w_dur <- median(w$wasting_duration[w$wast_inc==1 & !is.na(w$wast_inc)], na.rm=T)
nw_dur <- median(nw$wasting_duration[nw$wast_inc==1 & !is.na(nw$wast_inc)], na.rm=T)


res2 <- rbind(sum_w, sum_nw)
res2$`Median duration of wasting episodes (days)` <- c(w_dur, nw_dur)

res2[,c(5,11)] <- res2[,c(5,11)]*100
res2[,-1] <- round(res2[,-1],2)

knitr::kable(res2)