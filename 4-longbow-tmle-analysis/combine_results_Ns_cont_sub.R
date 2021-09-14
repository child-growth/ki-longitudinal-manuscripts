
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(longbowtools)
library(progress)
library(longbowRiskFactors)


d <- readRDS(paste0(res_dir,"rf results/longbow results/results_cont_obs_counts.RDS"))
#drop EE gestational age
# <- d %>% filter(!(studyid=="EE" & !is.na(gagebrth))) %>% subset(., select = -c(fage))
table(d$fage)

d2 <- readRDS(paste0(res_dir,"rf results/longbow results/seasonality_rf_cont_results_obs_counts.RDS"))

d2 <- d2 %>% mutate(rain_quartile=case_when(
  rain_quartile==1 ~ "Opposite max rain",
  rain_quartile==2 ~ "Pre-max rain",
  rain_quartile==3 ~ "Max rain",
  rain_quartile==4 ~ "Post-max rain"
))


d3 <- readRDS(paste0(res_dir, "rf results/longbow results/results_cont_primary_fage_obs_counts.RDS"))# %>% rename(fage=fage_rf)
d4 <- readRDS(paste0(res_dir, "rf results/longbow results/results_results_cont_enwast_wlz_obs_counts.RDS"))


d <- bind_rows(d, d2, d3, d4)

exposure_vars <- c(
  "gagebrth",        "birthlen",      "enwast",        "vagbrth",      
  "hdlvry",        "fage",     "fage_rf",        "mwtkg",         "mbmi",          "fhtcm",        
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
  print(i)
  exposure_df$intervention_variable[i] <- colnames(exposures)[!is.na(exposures[i,])]
  exposure_df$intervention_level[i] <- as.character(exposures[i,!is.na(exposures[i,])])
}


exposure_df 

Ns <- d %>% subset(., select = c(studyid, country, agecat, n_cell, n, outcome_variable))

Ndf <- cbind(Ns, exposure_df)


head(Ndf) 
Ndf <- Ndf %>% filter(intervention_variable!="fage") %>% mutate(
  intervention_variable = case_when(
    intervention_variable=="fage_rf" ~"fage",
    intervention_variable==intervention_variable ~intervention_variable
  )
)


#Grab total N's by pooled analysis
N_sums <- Ndf %>% group_by(agecat, outcome_variable, intervention_variable, intervention_level) %>%
  summarize(n_cell=sum(n_cell), n=sum(n)) %>%
  mutate(prev=n_cell/n)



# save concatenated Ns
save(N_sums, Ndf, Ns, exposure_df,  file=paste0(res_dir,"continuous_rf_Ns_sub.rdata"))


