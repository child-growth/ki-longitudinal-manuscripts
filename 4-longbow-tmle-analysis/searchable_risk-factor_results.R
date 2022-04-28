# Script creating a searchable table of all risk-factor results
# using the DT package

# Table is a dataset consisting of input dataframe + output files from multiple scripts
# input file (cohort-specific risk factor results): 
# (1) full_RF_results.rds 
# output files (pooled estimates):
# (1) pool_ATE.Rout
# (2) pool_PAF.Rout
# (3) pool_RR.Rout
# (4) pool_RR_FE.Rout
# (5) pool_Zscore_PAR.Rout
# (6) pool_Zscore_PAR_FE.Rout

# Key variables to include:
# (1) identifiers of each estimate
# (2) estimate
# (3) confidence intervals
# (4) N's

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

#input file
# dfull <- readRDS(paste0(BV_dir,"/results_old/rf results/full_RF_results.rds"))
dfull <- readRDS(paste0(here::here(),"/results_old/rf results/full_RF_results.rds"))

#output files
ATE <- readRDS(paste0(here::here(),"/results_old/rf results/pooled_ATE_results.rds"))
PAF <- readRDS(paste0(here::here(),"/results_old/rf results/pooled_PAF_results.rds"))
RR_results <- readRDS(paste0(here::here(),"/results_old/rf results/pooled_RR_results.rds"))
RR_FE <- readRDS(paste0(here::here(),"/results_old/rf results/pooled_RR_FE_results.rds"))
Zscore_PAR <- readRDS(paste0(here::here(),"/results_old/rf results/pooled_Zscore_PAR_results.rds"))
Zscore_PAR_FE <- readRDS(paste0(here::here(),"/results_old/rf results/pooled_Zscore_PAR_results_FE.rds"))

dim(dfull)
df_list <- list(ATE, PAF, RR_results, RR_FE, Zscore_PAR, Zscore_PAR_FE)
test_merge <- Reduce(function(x, y) merge(x, y, 
                                          by.x = c("intervention_variable", "agecat", "intervention_level", "baseline_level", "outcome_variable", "region", "Nstudies", "RFlabel", "RFtype", "RFlabel_ref"), 
                                          by.y = c("intervention_variable", "agecat", "intervention_level", "baseline_level", "outcome_variable", "region", "Nstudies", "RFlabel", "RFtype", "RFlabel_ref")), 
                     df_list)

ATE_PAF <- merge(ATE, PAF, 
                 by.x = c("agecat", "intervention_level", "baseline_level", "outcome_variable", "Nstudies"),
                 by.y = c("agecat", "intervention_level", "baseline_level", "outcome_variable", "Nstudies"),
                 all = TRUE)

dfull_ATE <- merge(dfull, ATE, 
                   by.x = c("agecat", "intervention_level", "baseline_level", "outcome_variable"),
                   by.y = c("agecat", "intervention_level", "baseline_level", "outcome_variable"),
                   all = TRUE)
