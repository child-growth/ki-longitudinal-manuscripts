
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))




#Load data
dfull <- readRDS(paste0(BV_dir,"/results/rf results/full_RF_results.rds"))
head(dfull)


unique(dfull$type)
d <- dfull %>% filter(type=="RR")

#drop morbidity and mortality analysis
d <- d %>% filter(outcome_variable!="dead" & outcome_variable!="co_occurence" & outcome_variable!="pers_wasted624")


#Subset agecat
d <- droplevels(d)



RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(poolRR(., method="FE")) %>% as.data.frame()
RMAest$region <- "Pooled"

RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(poolRR(., method="FE")) %>% as.data.frame()

RMAest_raw <- rbind(RMAest, RMAest_region)



#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest_raw)


#Add reference level to label
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$intervention_level)

#Save cleaned data
saveRDS(RMAest_clean, paste0(BV_dir,"/results/rf results/pooled_RR_FE_results.rds"))