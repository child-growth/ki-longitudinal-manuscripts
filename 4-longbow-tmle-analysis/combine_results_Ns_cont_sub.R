
rm(list=ls())
library(tidyverse)
library(longbowtools)
library(progress)
library(longbowRiskFactors)


load(here("/results/rf results/raw longbow results/results_cont_obs_counts_2019-11-18.rdata"))

d <- obs_counts


exposure_vars <- c(
  "gagebrth",        "birthlen",      "enwast",        "vagbrth",      
  "hdlvry",        "fage",          "mwtkg",         "mbmi",          "fhtcm",        
  "nhh",           "nchldlt5",      "hhwealth_quart","parity",        "meducyrs",     
  "trth2o",        "cleanck",       "impfloor",  "anywast06",     
  "impsan",        "safeh20",       "perdiar6",      "perdiar24",     "predfeed3",    
  "predfeed36",    "exclfeed3",     "exclfeed36",    "earlybf",          
  "birthwt",       "mage",          "mhtcm",         "single",        "nrooms",       
  "feducyrs",      "hfoodsec",      "exclfeed6",     "s03rec24",      "enstunt",      
  "predfeed6",     "predexfd6",     "sex",          "brthmon",      
  "month",     "pers_wast",    "lag_WHZ_quart")


d<-data.frame(d)

d <- d %>% filter(agecat %in% c("24 months"))

#Get distinct obs (duplicates for adjusted and unadjusted, and often for wlz and haz)
dim(d)
d <- distinct(d)
dim(d)

exposures <- d[,which(colnames(d) %in% exposure_vars)]

nrows <- nrow(exposures)
exposure_df <- data.frame(intervention_variable=rep(NA, nrows), intervention_level=rep(NA, nrows))
for(i in 1:nrows){
  exposure_df$intervention_variable[i] <- colnames(exposures)[!is.na(exposures[i,])]
  exposure_df$intervention_level[i] <- as.character(exposures[i,!is.na(exposures[i,])])
}


exposure_df 

Ns <- d %>% subset(., select = c(studyid, country, agecat, n_cell, n,outcome_variable))

Ndf <- cbind(Ns, exposure_df)
# 
#Always more laz than whz obs, so seperate bigger N's to laz
 Ndf_laz <- Ndf %>% group_by(studyid,country,agecat, intervention_variable, intervention_level,outcome_variable) 
 Ndf_wlz <- Ndf %>% group_by(studyid,country,agecat, intervention_variable, intervention_level,outcome_variable) 


Ndf <- rbind(Ndf_laz, Ndf_wlz)

#Grab total N's by pooled analysis
N_sums <- Ndf %>% group_by(agecat, outcome_variable, intervention_variable, intervention_level) %>%
  summarize(n_cell=sum(n_cell), n=sum(n)) %>%
  mutate(prev=n_cell/n)


# save concatenated Ns
save(N_sums, Ndf, Ns, exposure_df, file="C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/continuous_rf_Ns_sub.rdata")



