

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))


#Load data
dfull <- readRDS(paste0(BV_dir,"/results/rf results/raw longbow results/results_results_early_wast_2021-08-09.RDS"))
Ns <- readRDS(paste0(BV_dir,"/results/rf results/raw longbow results/results_results_early_wast_obs_counts_2021-08-09.RDS"))
# dfull <- readRDS(paste0(BV_dir,"/results/rf results/raw longbow results/results_early_wast_2021-06-07.RDS"))
# Ns <- readRDS(paste0(BV_dir,"/results/rf results/raw longbow results/results_early_wast_obs_counts_2021-06-07.RDS"))
head(dfull)

d <- dfull %>% filter(type=="RR", ci_lower != ci_upper, agecat=="0-6 months")

RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(poolRR(.)) %>% as.data.frame()
RMAest


RMAest_FE <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(poolRR(., method="FE")) %>% as.data.frame()
RMAest_FE