rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))
#Load data
dfull <- readRDS(paste0(BV_dir,"/results/rf results/raw longbow results/results_results_birthstrat_later_failure_2022-09-13.RDS"))
#dfull <- readRDS("C:/Users/andre/Downloads/results_results_all_ages_growth_faltering_2022-07-13.RDS")
unique(dfull$intervention_variable)
head(dfull)
dfull <- dfull %>% filter(type=="RR", ci_lower != ci_upper)
#pool across cohorts
RMAest <- dfull %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(poolRR(., method="FE")) %>% as.data.frame()
RMAest

#Save the results to print in the plot:
df <- RMAest %>% select(outcome_variable,RR,RR.CI1,RR.CI2) %>% mutate(estimate=paste0("RR: ",round(RR,2)," (",round(RR.CI1,2),", ",round(RR.CI2,2),")"))
df

saveRDS(df, paste0(BV_dir,"/results/birthstrat_RR_estimates.rds")) 
