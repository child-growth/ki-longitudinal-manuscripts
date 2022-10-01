rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))



#Load data
dfull <- readRDS(paste0(res_dir, "rf results/longbow results/results_cont_CC.RDS"))
head(dfull)

dfull %>% filter(outcome_variable=="haz", intervention_variable=="mwtkg", agecat=="24 months", type=="PAR")
dfull %>% filter(outcome_variable=="whz", intervention_variable=="mbmi", agecat=="24 months", type=="PAR")
dfull %>% filter(outcome_variable=="whz", intervention_variable=="fhtcm", agecat=="24 months", type=="PAR")


unique(dfull$type)
d <- dfull %>% filter(type=="PAR")
table(d$intervention_variable, d$outcome_variable)



#Subset to continious outcomes
unique(d$outcome_variable)
d <- d %>% filter(outcome_variable=="y_rate_haz"|outcome_variable=="y_rate_waz"|
                    outcome_variable=="y_rate_len"|
                    outcome_variable=="y_rate_wtkg"|outcome_variable=="haz"|
                    outcome_variable=="whz"|outcome_variable=="waz")

#drop sparse variables (at least 10 obs per variable)
dim(d)
d <- d %>% filter(adjustment_set!="")
dim(d)

d <- droplevels(d)

df <- d %>% filter(intervention_variable=="cleanck", outcome_variable=="haz", agecat=="24 months")

RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.Zpar(.)) %>% as.data.frame()
RMAest$region <- "Pooled"

d <- mark_region(d)

RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.Zpar(.)) %>% as.data.frame()

RMAest_raw <- rbind(RMAest, RMAest_region)

RMAest_raw <- RMAest_raw %>% filter(!is.na(PAR))




#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest_raw, outcome="continuous")

RMAest_clean[is.na(RMAest_clean$intervention_level),]
table(is.na(RMAest_clean$intervention_level))
table(is.na(RMAest_clean$intervention_variable))

#Add reference level to label
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$intervention_level)

#Save cleaned data
saveRDS(RMAest_clean, paste0(BV_dir,"/results/rf results/pooled_Zscore_PAR_results.rds"))
saveRDS(RMAest_clean, file=paste0(here::here(),"/data/pooled_Zscore_PAR_results_cc.rds"))
