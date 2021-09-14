


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))



dfull <- readRDS(paste0(BV_dir,"/results/rf results/full_RF_results.rds"))

d <- dfull %>% filter(type=="ATE", agecat!="All")

d %>% filter(intervention_variable=="pers_wast", outcome_variable=="haz", estimate    != 0)

#Drop reference levels
d <- d %>% filter(intervention_level != d$baseline_level)


RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.cont(.)) %>% as.data.frame()
RMAest$region <- "Pooled"

RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.cont(.)) %>% as.data.frame()

RMAest_raw <- rbind(RMAest, RMAest_region)



#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest_raw)


#Add reference level to labe
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$baseline_level)

saveRDS(RMAest_clean, paste0(BV_dir,"/results/rf results/pooled_ATE_results.rds"))
