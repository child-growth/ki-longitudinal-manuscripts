

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

ate %>% filter(intervention_variable=="predexfd6", outcome_variable=="haz", region=="Pooled", agecat=="24 months")
par %>% filter(intervention_variable=="predexfd6", outcome_variable=="haz", region=="Pooled", agecat=="24 months")

par1 <- par %>% filter(region=="Pooled", agecat=="24 months") %>% mutate(sig.par = 1*(CI1<0 & CI2<0)) %>% distinct(intervention_variable, outcome_variable, sig.par)
ate1 <- ate  %>% filter(region=="Pooled", agecat=="24 months") %>% mutate(sig.ate = 1*((CI1<0 & CI2<0) | (CI1>0 & CI2>0))) %>% distinct(intervention_variable, outcome_variable, sig.ate)

comb <- left_join(par1, ate1, by =c("intervention_variable","outcome_variable"))
comb
comb %>% filter(sig.par==0 & sig.ate==1)

ate %>% filter(intervention_variable=="hdlvry", outcome_variable=="haz", region=="Pooled", agecat=="24 months")
par %>% filter(intervention_variable=="hdlvry", outcome_variable=="haz", region=="Pooled", agecat=="24 months")

ate %>% filter(intervention_variable=="hdlvry", outcome_variable=="whz", region=="Pooled", agecat=="24 months")
par %>% filter(intervention_variable=="hdlvry", outcome_variable=="whz", region=="Pooled", agecat=="24 months")

ate %>% filter(intervention_variable=="mbmi", outcome_variable=="haz", region=="Pooled", agecat=="24 months")
par %>% filter(intervention_variable=="mbmi", outcome_variable=="haz", region=="Pooled", agecat=="24 months")


impfloor              whz       0       1
9                 impsan
cleanck              


#get percent breastfeeding
load("/data/KI/UCB-SuperLearner/Manuscript analysis data/st_meanZ_rf.Rdata")
prop.table(table(d$agecat, d$predexfd6),1) *100

prop.table(table(d$agecat, d$pers_wast),1) *100