


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))


Zscores_alt_ref <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_cont_primary_alt_ref_2022-10-28.RDS"))
Zscores_alt_ref_season <- readRDS(paste0(BV_dir,"/results/rf results/raw longbow results/results_seasonality_rf_cont_alt_ref_2022-09-28.RDS")) %>% mutate(parameter="Mean Difference") %>% filter(intervention_variable!="perdiar6")
#Zscores_sga <- readRDS(paste0(res_dir, "rf results/longbow results/results_cont_sga.RDS"))


dfull <- bind_rows(Zscores_alt_ref, Zscores_alt_ref_season)#, Zscores_sga)

unique(dfull$intervention_variable)

dfull %>% filter(intervention_variable=="nrooms")


d <- dfull %>% filter(type=="ATE", agecat!="All")

d %>% filter(intervention_variable=="pers_wast", outcome_variable=="haz", estimate    != 0)

d %>% filter(intervention_variable=="rain_quartile", estimate    != 0)

#Drop reference levels
d <- d %>% filter(intervention_level != d$baseline_level)

#temp
#d<-d[d$intervention_variable=="single",] %>% filter(outcome_variable == "haz", agecat=="24 months" )

#drop sparse variables (at least 10 obs per variable)
dim(d)
d <- d %>% filter(adjustment_set!="")
dim(d)

d <- mark_region(d)


RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.cont(.)) %>% as.data.frame()
RMAest$region <- "Pooled"
RMAest


RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.cont(.)) %>% as.data.frame()

RMAest_raw <- rbind(RMAest, RMAest_region)

RMAest_raw %>% filter(intervention_variable=="SGA", intervention_level!= baseline_level, region=="Pooled")

#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest_raw)


#Add reference level to label
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$baseline_level)

saveRDS(RMAest_clean, paste0(BV_dir,"/results/rf results/pooled_ATE_results_alt_ref.rds"))

unique(RMAest_clean$intervention_variable)
