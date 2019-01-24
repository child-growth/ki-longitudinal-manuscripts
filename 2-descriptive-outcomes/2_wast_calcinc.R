


rm(list=ls())
library(tidyverse)
library(zoo)

source("U:/Wasting/1-outcomes/0_wast_incfunctions.R")

load("U:/Data/Wasting/rf_wasting_data.RData")


#temp test
#unique(d$studyid)
# df <- d %>% filter(studyid=="ki1000108-IRC" | studyid=="ki1000108-CMC-V-BCS-2002")
# test <- df %>% group_by(studyid, country) %>% do(WastIncCalc(., dropBornWasted=T))
# table(test$wast_inc)
# table(test$studyid, test$wast_inc)
# table(test$studyid, test$wast)
# table(test$studyid, test$wast_rec60d)
# table(test$studyid, test$wasting_episode)
dfull<-d
df <- d
d <- df %>% group_by(studyid, country) %>% do(WastIncCalc(.))
d_noBW <- df %>% group_by(studyid, country) %>% do(WastIncCalc(., dropBornWasted=T))

save(d, d_noBW, file="U:/Data/Wasting/Wasting_inc_data.RData")

# Calc incidence with no recovery to see what proportion become wasted for the first time 
# before and after 6 months
d_noRec <- df %>% group_by(studyid, country) %>% do(WastIncCalc(., washout=1000))
d_noBW_noRec <- df %>% group_by(studyid, country) %>% do(WastIncCalc(., dropBornWasted=T, washout=1000))

save(d_noRec, d_noBW_noRec, file="U:/Data/Wasting/Wasting_inc_noRec_data.RData")


# Calculate incidence in the intervention dataset with yearly-measured studies
load("U:/Data/Wasting/int_wasting_data.RData")
df_int <- d
d_int <- df_int %>% group_by(studyid, country) %>% do(WastIncCalc(.))
d_int_noBW <- df_int %>% group_by(studyid, country) %>% do(WastIncCalc(., dropBornWasted=T))
save(d_int, d_int_noBW, file="U:/Data/Wasting/Wast_int_inc_data.RData")



#Calculate incidence of stunting
load("U:/Data/Stunting/stunting_data.RData")
dfstunt <- d
dstunt_noBW <- dfstunt %>% group_by(studyid, country) %>% do(WastIncCalc(., stunt=T, dropBornWasted=T, washout = 60)) 
dstunt <- dfstunt %>% group_by(studyid, country) %>% do(WastIncCalc(., stunt=T, washout=1000)) 



#Rename outcomes
colnames(dstunt)
dstunt <- dstunt %>% subset(., select=-c(haz)) %>% rename(haz=whz)
colnames(dstunt)<-gsub("wast","stunt",colnames(dstunt))

dstunt_noBW <- dstunt_noBW %>% subset(., select=-c(haz)) %>% rename(haz=whz)
colnames(dstunt_noBW)<-gsub("wast","stunt",colnames(dstunt_noBW))

#Drop incidence for children born or enrolled stunted
dstunt_noBW <- dstunt_noBW %>% group_by(studyid, subjid) %>% arrange(studyid, subjid, agedays) %>%
  mutate(cuminc=cumsum(stunt_inc))
dstunt_noBW$stunt_inc[dstunt_noBW$cuminc>1 & dstunt_noBW$stunt_inc==1] <- 0 


save(dstunt, dstunt_noBW, file="U:/Data/Wasting/Stunting_inc_data.RData")



#Sensitivity outcomes
d30 <- df %>% group_by(studyid, country) %>% do(WastIncCalc(., washout=30))
d_noBW30 <- df %>% group_by(studyid, country) %>% do(WastIncCalc(., washout=30, dropBornWasted=T))

d90 <- df %>% group_by(studyid, country) %>% do(WastIncCalc(., washout=90))
d_noBW90 <- df %>% group_by(studyid, country) %>% do(WastIncCalc(., washout=90, dropBornWasted=T))

save(d30, d_noBW30, d90, d_noBW90, file="U:/Data/Wasting/Wasting_inc_sens_data.RData")


