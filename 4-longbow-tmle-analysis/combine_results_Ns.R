
rm(list=ls())
library(tidyverse)
library(longbowtools)
library(progress)
library(longbowRiskFactors)

dir_path <- "C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/"
setwd(paste0(dir_path,"unadjusted_binary/"))

d <- as.data.frame(load_batch_results("obs_counts.rdata"))

colnames(d)
outcome_vars <- c("stunted",  "sstunted",    "ever_stunted", "s03rec24")

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
Ndf <- Ndf_Ystrat %>% group_by(studyid, country, agecat, outcome_variable, intervention_variable, intervention_level) %>%
  summarize(min_n_cell=min(n_cell), n_cell=sum(n_cell), n=n[1]) %>%
  mutate(prev=n_cell/n)

# save concatenated Ns
save(Ndf, Ndf_Ystrat, Ns, outcome_df, exposure_df, file="C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/stunting_rf_Ns.rdata")






load("adjusted_binary/adjusted_binary_results.rdata")
adj_bin <- results
load("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/unadjusted_binary/unadjusted_binary_results.rdata")
unadj_bin <- results
# load("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/adjusted_velocity/adjusted_velocity_results.rdata")
# adj_vel <- results
# load("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/unadjusted_velocity/unadjusted_velocity_results.rdata")
# unadj_vel <- results
load("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/wasting_analyses/wasting_results_full.rdata")
wasting <- results
load("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/wasting_analyses/wasting_results.rdata")
Zscores <- results
# load("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/opttx_vim/adjusted_binary_results.rdata")
# vim <- results