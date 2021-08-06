
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

source(paste0(here(),"/3-prep-tmle-analysis/01_risk_factor_presence.R"))

source(paste0(here(),"/3-prep-tmle-analysis/02_calc_wast_rf_outcome.R"))
source(paste0(here(),"/3-prep-tmle-analysis/03_calc_wlz-stunt_rf_outcomes.R"))
source(paste0(here(),"/3-prep-tmle-analysis/04_calc_stunt_rf_outcomes.R"))
source(paste0(here(),"/3-prep-tmle-analysis/05_calc_co_rf_outcomes.R"))
source(paste0(here(),"/3-prep-tmle-analysis/06_calc_mort_rf_outcomes.R"))
source(paste0(here(),"/3-prep-tmle-analysis/07_merge_outcomes_and_covariates.R"))
source(paste0(here(),"/3-prep-tmle-analysis/08_merge_mortality_outcomes_and_covariates.R"))
source(paste0(here(),"/3-prep-tmle-analysis/08_merge_mortality_outcomes_and_covariates_no_overlap.R"))
source(paste0(here(),"/3-prep-tmle-analysis/09_specify_analyses.R"))
source(paste0(here(),"/3-prep-tmle-analysis/09_specify_binary_analyses_primary.R"))
source(paste0(here(),"/3-prep-tmle-analysis/09_merge_outcomes_and_covariates_primary.R"))

source(paste0(here(),"/3-prep-tmle-analysis/09_merge_seasonality_outcomes_and_covariates.R"))
source(paste0(here(),"/3-prep-tmle-analysis/10_specify_mortality_analyses.R"))
source(paste0(here(),"/3-prep-tmle-analysis/11_specify_mediation_analyses.R"))
source(paste0(here(),"/3-prep-tmle-analysis/12_specify_one-step_analyses.R"))
source(paste0(here(),"/3-prep-tmle-analysis/13_table1.R"))
source(paste0(here(),"/3-prep-tmle-analysis/14_calc_mort_pooled_logistic_regressions.R"))
source(paste0(here(),"/3-prep-tmle-analysis/15_R2_estimation.R"))

