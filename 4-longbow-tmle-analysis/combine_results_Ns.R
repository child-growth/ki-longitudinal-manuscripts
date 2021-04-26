
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(longbowtools)
library(progress)
library(longbowRiskFactors)

d1 <- readRDS(paste0(res_dir,"rf results/longbow results/results_bin_primary_obs_counts.RDS"))
d2 <- readRDS(paste0(res_dir,"rf results/longbow results/results_bin_other_obs_counts.RDS"))
d1$pers_wast <- factor(d1$pers_wast)
d <- bind_rows(d1, d2)
# bin_sub <- readRDS(here("/results/rf results/raw longbow results/results_bin_sub_obs_counts.rds"))
# bin_sub2 <- readRDS(here("/results/rf results/raw longbow results/results_bin_sub_obs_counts.rds"))
# bin_sub3 <- readRDS(here("/results/rf results/raw longbow results/results_bin_sub_obs_counts_2020-05-20_part2.rds"))
# bin_sub3$pers_wast <- factor(bin_sub3$pers_wast)
# d <- bind_rows(bin_sub3,  bin_sub2,  bin_sub, bin)
# 
# d <- d %>% filter(is.na(perdiar6) & is.na(perdiar24))
# bin_diar <- readRDS(here("/results/rf results/raw longbow results/results_bin_diar_obs_counts_2020-06-08.RDS"))
# bin_diar$pers_wast <- factor(bin_diar$pers_wast)
# d <- bind_rows(d, bin_diar)


dim(d)
d <- distinct(d)
dim(d)




outcome_vars <- c( "wasted","swasted","wast_rec90d",   "ever_wasted",   "ever_swasted", 
                    "stunted","sstunted","ever_stunted",  "ever_sstunted", "pers_wast",    
                    "ever_co" )

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
  "month",     "pers_wast",    "lag_WHZ_quart","rain_quartile")

d <- data.frame(d)

exposures <- d[,which(colnames(d) %in% exposure_vars)]
outcomes <- d[,which(colnames(d) %in% outcome_vars)]

nrows <- nrow(exposures)
exposure_df <- data.frame(intervention_variable=rep(NA, nrows), intervention_level=rep(NA, nrows))
for(i in 1:nrows){
  vec <- !is.na(exposures[i,])
  exposure_df$intervention_variable[i] <- colnames(exposures)[vec]
  exposure_df$intervention_level[i] <- as.character(exposures[i,vec])
}

# outcome_df <- data.frame(outcome_variable=rep(NA, nrows), outcome_level=rep(NA, nrows))
# for(i in 1:nrows){
#   vec <- !is.na(outcomes[i,])
#   outcome_df$outcome_variable[i] <- colnames(outcomes)[vec]
#   outcome_df$outcome_level[i] <- outcomes[i,vec]
# }

Ns <- d %>% subset(., select = c(studyid, country, agecat, outcome_variable, n_cell, n))

Ndf_Ystrat <- cbind(Ns, exposure_df)
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
save(N_sums, Ndf, Ndf_Ystrat, Ns, #outcome_df, 
     exposure_df, file=paste0(res_dir,"stunting_rf_Ns.rdata"))


