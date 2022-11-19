
#TO DO
# change back to original bluevelvet filepaths
# mean differences -> estimate, ci_lower, ci_upper; unsure how to merge
# CIR -> RR, RR.CI1, RR.CI2; merge using RFlabel, RFtype, or RFlabel_ref?

#Nature update- combine PIE, mean diff, and RR in one plot.
# 6 pnaels for 3 parameters for HAZ and WHZ

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))




rr <- readRDS(paste0(here::here(),"/data/pooled_RR_results.rds")) %>% filter( intervention_level !=   baseline_level) %>% mutate(RR=round(RR,2), RR.CI1=round(RR.CI1,2), RR.CI2=round(RR.CI2,2))
ate <- readRDS(paste0(here::here(),"/data/pooled_ATE_results.rds")) %>% filter( intervention_level !=   baseline_level) %>% mutate(ATE=round(ATE,2), CI1=round(CI1,2), CI2=round(CI2,2))
#par <- readRDS(paste0(here::here(),"/data/pooled_PAR_results.rds")) %>% filter( intervention_level !=   baseline_level) %>% mutate(ATE=round(ATE,2), CI1=round(CI1,2), CI2=round(CI2,2))


unique(rr$intervention_variable)
rr %>% filter(intervention_variable=="gagebrth", outcome_variable %in% c("stunted","wasted"),agecat=="24 months", intervention_level=="Preterm") %>% select(outcome_variable,   RR, RR.CI1, RR.CI2, region) 


rr %>% filter(intervention_variable=="sex", agecat=="24 months",outcome_variable %in% c("stunted","wasted")) %>% select(outcome_variable,   RR, RR.CI1, RR.CI2, region) 


rr %>% filter(intervention_variable=="cleanck",agecat=="24 months",outcome_variable %in% c("stunted","wasted")) %>% select(outcome_variable,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="cleanck", agecat=="24 months",outcome_variable %in% c("stunted","wasted")) %>% mutate(RR=1/RR, RR.CI1_temp=1/RR.CI2, RR.CI2=1/RR.CI1, RR.CI1=RR.CI1_temp)  %>% select(outcome_variable,   RR, RR.CI1, RR.CI2, region)
rr %>% filter(intervention_variable=="cleanck", agecat=="Birth",outcome_variable %in% c("stunted","wasted")) %>% mutate(RR=1/RR, RR.CI1_temp=1/RR.CI2, RR.CI2=1/RR.CI1, RR.CI1=RR.CI1_temp)  %>% select(outcome_variable,   RR, RR.CI1, RR.CI2, region)
ate %>% filter(intervention_variable=="cleanck", agecat=="Birth",outcome_variable %in% c("haz","whz"))
ate %>% filter(intervention_variable=="cleanck", agecat=="6 months",outcome_variable %in% c("haz","whz"))
ate %>% filter(intervention_variable=="cleanck", agecat=="24 months",outcome_variable %in% c("haz","whz"))
rr %>% filter(intervention_variable=="cleanck", agecat=="0-6 months",outcome_variable %in% c("ever_stunted","ever_wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 

rr %>% filter(intervention_variable=="single", agecat=="24 months",outcome_variable %in% c("stunted","wasted")) %>% select(outcome_variable,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="single", agecat=="Birth",outcome_variable %in% c("stunted","wasted")) %>% select(outcome_variable,   RR, RR.CI1, RR.CI2, region) 


rr %>% filter(intervention_variable=="mage", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 

rr %>% filter(intervention_variable=="mbmi", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 

rr %>% filter(intervention_variable=="mhtcm", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="fhtcm", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 


rr %>% filter(intervention_variable=="mhtcm", agecat=="0-24 months",outcome_variable %in% c("ever_stunted","ever_wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="fhtcm", agecat=="0-24 months",outcome_variable %in% c("ever_stunted","ever_wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 



rr %>% filter(intervention_variable=="perdiar24", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
ate %>% filter(intervention_variable=="perdiar24", agecat=="24 months",outcome_variable %in% c("haz","whz"), region=="Pooled")


rr %>% filter(intervention_variable=="meducyrs", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="meducyrs", agecat=="0-24 months",outcome_variable %in% c("ever_stunted","ever_wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="feducyrs", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 




rr %>% filter(intervention_variable=="perdiar6", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
ate %>% filter(intervention_variable=="perdiar6", agecat=="24 months",outcome_variable %in% c("haz","whz"), region=="Pooled")



rr %>% filter(intervention_variable=="perdiar6", agecat=="6 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
ate %>% filter(intervention_variable=="perdiar6", agecat=="6 months",outcome_variable %in% c("haz","whz"), region=="Pooled")





rr %>% filter(intervention_variable=="impfloor", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
ate %>% filter(intervention_variable=="impfloor", agecat=="24 months",outcome_variable %in% c("haz","whz"), region=="Pooled")



rr %>% filter(intervention_variable=="fage", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
ate %>% filter(intervention_variable=="fage", agecat=="24 months",outcome_variable %in% c("haz","whz"), region=="Pooled")



rr %>% filter(intervention_variable=="vagbrth", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
ate %>% filter(intervention_variable=="vagbrth", agecat=="24 months",outcome_variable %in% c("haz","whz"), region=="Pooled")
ate %>% filter(intervention_variable=="vagbrth", agecat=="6 months",outcome_variable %in% c("haz","whz"), region=="Pooled")

rr %>% filter(intervention_variable=="hdlvry", agecat=="6 months",outcome_variable %in% c("stunted","wasted","sstunted","swasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="hdlvry", agecat=="24 months",outcome_variable %in% c("stunted","wasted","sstunted","swasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 


rr %>% filter(intervention_variable=="birthwt", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled"|region=="Africa") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 


ate %>% filter(intervention_variable=="parity", agecat=="6 months",outcome_variable %in% c("haz","whz"), region=="Pooled")
ate %>% filter(intervention_variable=="parity", agecat=="24 months",outcome_variable %in% c("haz","whz"), region=="Pooled")
rr %>% filter(intervention_variable=="parity", agecat=="6 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="parity", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="parity", agecat=="0-24 months",outcome_variable %in% c("ever_stunted","ever_wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="parity", agecat=="0-6 months",outcome_variable %in% c("ever_stunted","ever_wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="parity", agecat=="6-24 months",outcome_variable %in% c("ever_stunted","ever_wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 

ate %>% filter(intervention_variable=="parity", intervention_level=="3+", outcome_variable %in% c("y_rate_haz"), region=="Pooled")
ate %>% filter(intervention_variable=="parity", intervention_level=="3+", outcome_variable %in% c("y_rate_waz"), region=="Pooled")

ate %>% filter(intervention_variable=="parity", intervention_level=="3+", outcome_variable %in% c("y_rate_len"), region=="Pooled")
ate %>% filter(intervention_variable=="parity", intervention_level=="3+", outcome_variable %in% c("y_rate_wtkg"), region=="Pooled")

rr %>% filter(intervention_variable=="single", agecat=="6 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="single", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="single", agecat=="0-24 months",outcome_variable %in% c("ever_stunted","ever_wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 



rr %>% filter(intervention_variable=="hhwealth_quart", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="hhwealth_quart", agecat=="0-24 months",outcome_variable %in% c("ever_stunted","ever_wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 

rr %>% filter(intervention_variable=="hfoodsec", agecat=="6 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="hfoodsec", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="hfoodsec", agecat=="0-24 months",outcome_variable %in% c("ever_stunted","ever_wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="hfoodsec", agecat=="6-24 months",outcome_variable %in% c("ever_stunted","ever_wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 

rr %>% filter(intervention_variable=="impsan", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="safeh20", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="safeh20", agecat=="0-24 months",outcome_variable %in% c("ever_stunted","ever_wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 



rr %>% filter(intervention_variable=="predexfd6", agecat=="6 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="predexfd6", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 

rr %>% filter(intervention_variable=="earlybf", agecat=="6-24 months",outcome_variable %in% c("ever_stunted","ever_wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="earlybf", agecat=="6 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="earlybf", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 


rr %>% filter(intervention_variable=="nhh", agecat=="0-24 months",outcome_variable %in% c("ever_stunted","ever_wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="nhh", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="nchldlt5", agecat=="0-24 months",outcome_variable %in% c("ever_stunted","ever_wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="nchldlt5", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 

rr %>% filter(intervention_variable=="nrooms", agecat=="0-24 months",outcome_variable %in% c("ever_stunted","ever_wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 
rr %>% filter(intervention_variable=="nrooms", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 


rr %>% filter(intervention_variable=="rain_quartile", agecat=="24 months",outcome_variable %in% c("stunted","wasted"), region=="Pooled") %>% select(outcome_variable,intervention_level,   RR, RR.CI1, RR.CI2, region) 

ate %>% filter(intervention_variable=="rain_quartile", agecat=="24 months",outcome_variable %in% c("haz","whz"), region=="Pooled")

unique(ate$intervention_variable)
ate %>% filter(intervention_variable=="predexfd6", agecat=="6 months",outcome_variable %in% c("haz","whz"), region=="Pooled")
ate %>% filter(intervention_variable=="predexfd6", agecat=="24 months",outcome_variable %in% c("haz","whz"), region=="Pooled")
ate %>% filter(intervention_variable=="perdiar24", agecat=="24 months",outcome_variable %in% c("haz","whz"), region=="Pooled")
