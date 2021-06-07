rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))


dfull <- readRDS("/data/KI/ki-manuscript-output/results/rf results/raw longbow results/results_earlywast_2021-06-05.RDS") %>% filter(type=="RR")
Ns <- readRDS("/data/KI/ki-manuscript-output/results/rf results/raw longbow results/results_earlywast_obs_counts_2021-06-05.RDS") %>% 
  filter(agecat=="6-24 months",
         outcome_variable=="ever_stunted") %>%
  mutate(intervention_variable=case_when(!is.na(enwast)~"enwast",
                     !is.na(anywast06)~"anywast06",
                     !is.na(pers_wast)~"pers_wast")) %>%
  group_by(studyid,  country, intervention_variable) %>%
  summarise(minN=min(n_cell))

dfull <- left_join(dfull, Ns, by=c("studyid","country","intervention_variable"))  


# #Load data
# dfull <- readRDS(paste0(BV_dir,"/results/rf results/full_RF_results.rds"))
# head(dfull)
# 
# 
# unique(dfull$type)
# df <- dfull %>% filter(type=="RR")


d <- dfull %>% 
  filter(
         outcome_variable=="ever_stunted",
         intervention_variable %in% c("enwast","anywast06", "pers_wast"),
         agecat=="6-24 months",
         minN>=5) %>%
  filter(!is.na(intervention_variable)) %>%
  filter(intervention_level != baseline_level) 

cohortRR <- d %>% select(studyid,country,intervention_variable,estimate, ci_lower,ci_upper)


RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(poolRR(.)) %>% as.data.frame()
RMAest$region <- "Pooled"
RMAest

