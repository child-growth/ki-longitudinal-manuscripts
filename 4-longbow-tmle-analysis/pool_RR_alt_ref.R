



rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

bin_primary_alt_ref <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_bin_primary_alt_ref_2022-09-29.RDS")) #%>% filter(intervention_variable!="fage")

d <- bin_primary_alt_ref %>% filter(type=="RR")

#drop morbidity and mortality analysis
d <- d %>% filter(outcome_variable!="dead" & outcome_variable!="co_occurence" & outcome_variable!="pers_wasted624")


#Drop reference levels
d <- d %>% filter(intervention_level != d$baseline_level)


#Subset agecat
d <- droplevels(d)
head(d)
d <- mark_region(d)

unique(d$intervention_variable)
# d <- d %>% filter(intervention_variable=="perdiar6"|intervention_variable=="perdiar24", agecat=="24 months"|agecat=="6-24 months",
#                   outcome_variable %in% c("ever_wasted","wasted"), ci_lower!=ci_upper)
# 

RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(poolRR(.)) %>% as.data.frame()
RMAest$region <- "Pooled"

RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(poolRR(.)) %>% as.data.frame()

RMAest_raw <- rbind(RMAest, RMAest_region)

unique(RMAest_raw$intervention_level)

#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest_raw)

unique(RMAest_clean$intervention_level)

#Add reference level to label
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$baseline_level)

#Save cleaned data
saveRDS(RMAest_clean, paste0(BV_dir,"/results/rf results/pooled_RR_results_alt_ref.rds"))