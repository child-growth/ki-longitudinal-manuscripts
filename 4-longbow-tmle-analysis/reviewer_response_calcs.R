

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


#Load data
ate <- readRDS(paste0(BV_dir,"/results/rf results/pooled_ATE_results.rds")) 
rr <- readRDS(paste0(BV_dir,"/results/rf results/pooled_RR_results.rds"))
par <- readRDS(paste0(BV_dir,"/results/rf results/pooled_Zscore_PAR_results.rds"))

#Get PAR vs ATE diff for reviewer comments
ate %>% filter(intervention_variable=="pers_wast", outcome_variable=="haz", region=="Pooled", agecat=="6 months")
par %>% filter(intervention_variable=="pers_wast", outcome_variable=="haz", region=="Pooled", agecat=="6 months")

ate %>% filter(intervention_variable=="pers_wast", outcome_variable=="haz", region=="Pooled", agecat=="24 months")
par %>% filter(intervention_variable=="pers_wast", outcome_variable=="haz", region=="Pooled", agecat=="24 months")

ate %>% filter(intervention_variable=="predexfd6", outcome_variable=="haz", region=="Pooled", agecat=="6 months")
par %>% filter(intervention_variable=="predexfd6", outcome_variable=="haz", region=="Pooled", agecat=="6 months")


#get percent breastfeeding
load("/data/KI/UCB-SuperLearner/Manuscript analysis data/st_meanZ_rf.Rdata")
prop.table(table(d$agecat, d$predexfd6),1) *100

prop.table(table(d$agecat, d$pers_wast),1) *100