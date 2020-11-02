


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))





#Load data
dfull <- readRDS(here("/results/rf results/raw longbow results/results_waz_2020-08-21.RDS"))


unique(dfull$type)
d <- dfull %>% filter(type=="PAR")

#Subset to continious outcomes
unique(d$outcome_variable)
d <- d %>% filter(outcome_variable=="waz")

d <- droplevels(d)

d <- d %>% distinct_at(., .vars=c("agecat", "studyid", "country", "strata_label", "intervention_variable", 
                                    "outcome_variable","type","parameter","intervention_level",  "baseline_level"),
                         .keep_all=TRUE)
#Mark region
d <- mark_region(d)

RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.Zpar(.)) %>% as.data.frame()
RMAest$region <- "Pooled"

RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.Zpar(.)) %>% as.data.frame()

RMAest_raw <- rbind(RMAest, RMAest_region)

RMAest_raw <- RMAest_raw %>% filter(!is.na(PAR))




#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest_raw, outcome="continuous")
table(is.na(RMAest_clean$intervention_level))
table(is.na(RMAest_clean$intervention_variable))

#Add reference level to label
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$intervention_level)

#Save cleaned data
saveRDS(RMAest_clean, paste0(here::here(),"/results/rf results/pooled_Zscore_PAR_results_waz.rds"))
