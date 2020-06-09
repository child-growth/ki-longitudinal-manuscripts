
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(longbowtools)
library(progress)
library(longbowRiskFactors)

bin_primary <- readRDS(here("/results/rf results/raw longbow results/results_bin_primary_obs_counts_2020-05-28.RDS"))
bin_primary <- bin_primary %>% filter(is.na(perdiar6) & is.na(perdiar24))
bin_diar <- readRDS(here("/results/rf results/raw longbow results/results_bin_diar_obs_counts_2020-06-08.RDS"))
bin_primary <- bind_rows(bin_primary, bin_diar)


#Drop sparse estimates
dim(bin_primary)
d <- bin_primary %>% group_by(agecat,          studyid,         country,         !is.na(sex),             !is.na(ever_stunted),   
                                         outcome_variable, !is.na(mage),            !is.na(mhtcm),          
                                         !is.na(mwtkg),           !is.na(mbmi),            !is.na(single),          !is.na(fage),            !is.na(fhtcm),          
                                         !is.na(nrooms),          !is.na(nchldlt5),        !is.na(nhh),             !is.na(hhwealth_quart),  !is.na(brthmon),        
                                         !is.na(parity),          !is.na(meducyrs),        !is.na(feducyrs),        !is.na(hfoodsec),        !is.na(gagebrth),       
                                         !is.na(birthwt),         !is.na(birthlen),        !is.na(vagbrth),         !is.na(hdlvry),          !is.na(trth2o),         
                                         !is.na(cleanck),         !is.na(impfloor),        !is.na(impsan),          !is.na(safeh20),         !is.na(perdiar6),       
                                         !is.na(perdiar24),       !is.na(predfeed3),       !is.na(exclfeed3),       !is.na(predfeed6),       !is.na(exclfeed6),      
                                         !is.na(predfeed36),      !is.na(exclfeed36),      !is.na(predexfd6),       !is.na(earlybf),         !is.na(month),          
                                         !is.na(ever_sstunted),   !is.na(ever_swasted),    !is.na(enstunt),         !is.na(ever_wasted),     !is.na(pers_wast)) %>%
              mutate(min_n_cell=min(n_cell)) %>%
              filter(min_n_cell >= 5)
dim(d)


#drop EE gestational age
d <- d %>% filter(!(studyid=="EE" & !is.na(gagebrth)))


d2 <- readRDS(here("/results/rf results/raw longbow results/seasonality_rf_bin_results_obs_counts_2020-05-29.RDS"))
d2 <- d2 %>% mutate(rain_quartile=case_when(
  rain_quartile==1 ~ "Opposite max rain",
  rain_quartile==2 ~ "Pre-max rain",
  rain_quartile==3 ~ "Max rain",
  rain_quartile==4 ~ "Post-max rain"
))

d <- bind_rows(d, d2)


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
  "month",     "pers_wast",    "lag_WHZ_quart","rain_quartile")

d <- data.frame(d)
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
save(N_sums, Ndf, Ndf_Ystrat, Ns, outcome_df, exposure_df, file=here("results/stunting_rf_Ns_sub.rdata"))



#Table 1
tab1 <- N_sums %>% filter(agecat=="0-24 months", outcome_variable=="ever_stunted")

