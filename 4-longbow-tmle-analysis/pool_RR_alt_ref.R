



rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))


dfull <- readRDS(paste0(BV_dir,"/results/rf results/full_RF_results.rds")) %>% 
  filter(type=="RR", !(intervention_variable=="parity" & outcome_variable=="ever_wasted"))

#get parity
bin_primary_alt_ref <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_bin_primary_alt_ref_2022-10-05.RDS")) %>% filter(outcome_variable=="ever_wasted", agecat=="0-24 months", type=="RR", intervention_variable=="parity")
bin_primary_alt_ref_ns <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_bin_primary_alt_ref_obs_counts_2022-10-05.RDS")) %>% 
  filter(outcome_variable!="ever_wasted", agecat=="0-24 months", !is.na(parity)) %>%
  group_by(studyid, country, parity) %>% summarise(min_n_cell=min(n_cell)) %>% rename(intervention_level=parity) %>% mutate(intervention_variable="parity")
bin_primary_alt_ref <- left_join(bin_primary_alt_ref, bin_primary_alt_ref_ns, by =c("studyid", "country","intervention_variable","intervention_level"))

bin_primary_alt_ref %>% filter(intervention_variable=="parity" & outcome_variable =="ever_wasted")
dfull %>% filter(intervention_variable=="parity" & outcome_variable =="ever_wasted")

d <- bind_rows(dfull, bin_primary_alt_ref) 




#drop morbidity and mortality analysis
d <- d %>% filter(outcome_variable!="dead" & outcome_variable!="co_occurence" & outcome_variable!="pers_wasted624")


#Drop reference levels and sparse estimates
d <- d %>% filter(intervention_level != d$baseline_level)  %>% filter(min_n_cell>=10)


#Drop duplicated (unadjusted sex and month variables)
dim(d)
d <- distinct(d)
dim(d)

d <- droplevels(d)



temp <- d %>% filter(intervention_variable=="perdiar6" & outcome_variable=="ever_wasted")
temp




#Subset agecat
d <- droplevels(d)
head(d)
d <- mark_region(d)

unique(d$intervention_variable)


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