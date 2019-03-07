

rm(list = ls())
library(tidyverse)
library(metafor)
library(data.table)
library(knitr)

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
d_noBW <- d_noBW %>% group_by(studyid, country, subjid) %>% mutate(minage=min(agedays)) %>% filter(minage < 15)
dim(d_noBW)
d_noBW <- left_join(d_noBW, dstunt, by=c("studyid", "country", "subjid", "agedays"))
dim(d_noBW)

#Drop measures during birth wasting episode
d_noBW$whz[d_noBW$wasting_episode=="Born Wasted"] <- NA
d_noBW$haz[d_noBW$wasting_episode=="Born Wasted"] <- NA


nw <- d_noBW %>% group_by(studyid, country, subjid) %>% mutate(minage=min(agedays)) %>% filter(minage < 15) %>% filter(first(wasting_episode)!="Born Wasted")
w <- d_noBW %>% group_by(studyid, country, subjid)%>% mutate(minage=min(agedays), numrec=sum(wast_rec)) %>% filter(minage < 15) %>% filter(first(wasting_episode)=="Born Wasted") %>% filter(numrec>0)


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