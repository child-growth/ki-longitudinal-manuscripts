
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(longbowtools)
library(progress)
library(longbowRiskFactors)


d <- readRDS(here("/results/rf results/raw longbow results/results_cont_obs_counts_2020-06-02.RDS"))
#drop EE gestational age
d <- d %>% filter(!(studyid=="EE" & !is.na(gagebrth)))
d <- d %>% filter(is.na(perdiar6) & is.na(perdiar24))


d2 <- readRDS(here("/results/rf results/raw longbow results/seasonality_rf_cont_results_obs_counts_2020-05-29.RDS"))
d2 <- d2 %>% mutate(rain_quartile=case_when(
  rain_quartile==1 ~ "Opposite max rain",
  rain_quartile==2 ~ "Pre-max rain",
  rain_quartile==3 ~ "Max rain",
  rain_quartile==4 ~ "Post-max rain"
))


d3 <- readRDS(here("/results/rf results/raw longbow results/results_cont_obs_count_diars_2020-06-08.RDS"))


 d <- bind_rows(d, d2, d3)


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

# seperate laz and wlz
 Ndf_laz <- Ndf %>% filter(outcome_variable=="haz")
 Ndf_wlz <- Ndf %>% filter(outcome_variable=="whz")


Ndf <- rbind(Ndf_laz, Ndf_wlz)

#Grab total N's by pooled analysis
N_sums <- Ndf %>% group_by(agecat, outcome_variable, intervention_variable, intervention_level) %>%
  summarize(n_cell=sum(n_cell), n=sum(n)) %>%
  mutate(prev=n_cell/n)



# save concatenated Ns
save(N_sums, Ndf, Ns, exposure_df, file="C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/continuous_rf_Ns_sub.rdata")



