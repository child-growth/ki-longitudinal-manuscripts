

#!/bin/bash

# Remove previous results
# cd /data/flu/flu-data/
# rm -f \
# "1b-cdph_season.RDS" \
# "2b-absentee_p3.RDS" "2b-absentee_flu.RDS" "2b-absentee_nonflu.RDS" "2b-absentee_flu_CDC.RDS" "2b-absentee_flu_cdph2.RDS" "2b-absentee_flu_cdph3.RDS" \
# "2c-absentee_flu_yr.RDS" "2c-absentee_nonflu_yr.RDS" "2c-absentee_flu_CDC_yr.RDS" "2c-absentee_flu_cdph2_yr.RDS" "2c-absentee_flu_cdph3_yr.RDS" \


# Copy utility run script into this folder for concision in call
cp ~/ki-longitudinal-manuscripts/runFileSaveLogs ~/ki-longitudinal-manuscripts/3-prep-tmle-analysis/
  
# Run folder scripts and produce output
cd ~/ki-longitudinal-manuscripts/3-prep-tmle-analysis/
  
  
#list all scripts here
./runFileSaveLogs -i "prep-tmle-analysis" \
 02_calc_wast_rf_outcome.R \
 03_calc_wlz-stunt_rf_outcomes.R \
 04_calc_stunt_rf_outcomes.R \
 05_calc_co_rf_outcomes.R \
 06_calc_mort_rf_outcomes.R \
 07_merge_outcomes_and_covariates.R \
 08_merge_mortality_outcomes_and_covariates.R \
 09_specify_analyses.R \
 09_merge_seasonality_outcomes_and_covariates.R \
 10_specify_mortality_analyses.R \
 11_specify_mediation_analyses.R \
 12_specify_one-step_analyses.R \
 13_table1.R \
 14_calc_mort_pooled_logistic_regressions.R \
 15_R2_estimation.R \
 01_risk_factor_presence.R



# Remove copied utility run script
rm runFileSaveLogs
