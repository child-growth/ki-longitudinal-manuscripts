
rm(list=ls())
library(tidyverse)
library(longbowtools)
library(progress)
library(longbowRiskFactors)


#d <- as.data.frame(load_batch_results("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf results/wasting rf results/binary_wasting_obs_counts.rdata"))
load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf results/wasting rf results/binary_wasting_obs_counts.rdata")
d <- obs_counts

colnames(d)
outcome_vars <- c("stunted","ever_stunted","wasted","ever_wasted")

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

d<-d[!is.na(d$stunted)|!is.na(d$ever_stunted)|!is.na(d$wasted)|!is.na(d$ever_wasted),]

exposures <- d[,which(colnames(d) %in% exposure_vars)]
outcomes <- d[,which(colnames(d) %in% outcome_vars)]

nrows <- nrow(exposures)
exposure_df <- data.frame(intervention_variable=rep(NA, nrows), intervention_level=rep(NA, nrows))
for(i in 1:nrows){
  exposure_df$intervention_variable[i] <- colnames(exposures)[!is.na(exposures[i,])]
  exposure_df$intervention_level[i] <- as.character(exposures[i,!is.na(exposures[i,])])
}

outcome_df <- data.frame(outcome_variable=rep(NA, nrows), outcome_level=rep(NA, nrows))
for(i in 1:nrows){
  outcome_df$outcome_variable[i] <- colnames(outcomes)[!is.na(outcomes[i,])]
  outcome_df$outcome_level[i] <- outcomes[i,!is.na(outcomes[i,])]
}

Ns <- d %>% subset(., select = c(studyid, country, agecat, n_cell, n))

Ndf_Ystrat <- cbind(Ns, outcome_df, exposure_df)
Ndf_Ystrat <- distinct(Ndf_Ystrat)

Ndf <- Ndf_Ystrat %>% group_by(studyid, country, agecat, outcome_variable, intervention_variable, intervention_level) %>%
  summarize(min_n_cell=min(n_cell), n_cell=sum(n_cell), n=n[1]) %>%
  mutate(prev=n_cell/n)
summary(Ndf$prev)

#Grab total N's by pooled analysis
N_sums <- Ndf %>% group_by(agecat, outcome_variable, intervention_variable, intervention_level) %>%
  summarize(n_cell=sum(n_cell), n=sum(n)) %>%
  mutate(prev=n_cell/n)


# save concatenated Ns
save(N_sums, Ndf, Ndf_Ystrat, Ns, outcome_df, exposure_df, file="C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/stunting_rf_Ns_sub.rdata")


