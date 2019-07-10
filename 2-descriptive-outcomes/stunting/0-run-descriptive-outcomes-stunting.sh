#!/bin/bash

# Remove previous results
# cd /data/flu/flu-data/
# rm -f \
# "1b-cdph_season.RDS" \
# "2b-absentee_p3.RDS" "2b-absentee_flu.RDS" "2b-absentee_nonflu.RDS" "2b-absentee_flu_CDC.RDS" "2b-absentee_flu_cdph2.RDS" "2b-absentee_flu_cdph3.RDS" \
# "2c-absentee_flu_yr.RDS" "2c-absentee_nonflu_yr.RDS" "2c-absentee_flu_CDC_yr.RDS" "2c-absentee_flu_cdph2_yr.RDS" "2c-absentee_flu_cdph3_yr.RDS" \
# "2d-absentee_flu_downsample.RDS" \
# "2e-absentee_flu_downsample_yr.RDS" \
# "3-absentee_flu_adj_prepped.RDS" "3-absentee_nonflu_adj_prepped.RDS" "3-absentee_flu_CDC_adj_prepped.RDS" "3-absentee_flu_cdph2_adj_prepped.RDS" "3-absentee_flu_cdph3_adj_prepped.RDS" "3-absentee_peakwk_CDC_adj_prepped.RDS" \
# "4-absentee_flu_adj_did_prepped.RDS" "4-absentee_nonflu_adj_did_prepped.RDS" "4-absentee_flu_CDC_adj_did_prepped.RDS" "4-absentee_flu_cdph2_adj_did_prepped.RDS" "4-absentee_flu_cdph3_adj_did_prepped.RDS" "4-absentee_peakwk_CDC_adj_did_prepped.RDS" \
# "5b-absentee_vaccination_coverage_p3.RDS" \
# "6-absentee_flu_unadj_did_prepped.RDS" "6-absentee_nonflu_unadj_did_prepped.RDS" "6-absentee_flu_CDC_unadj_did_prepped.RDS" "6-absentee_flu_cdph2_unadj_did_prepped.RDS" "6-absentee_flu_cdph3_unadj_did_prepped.RDS" "6-absentee_peakwk_CDC_unadj_did_prepped.RDS"


# Copy utility run script into this folder for concision in call
# cp ~/ki-longitudinal-manuscripts/runFileSaveLogs ~/ki-longitudinal-manuscripts/2-descriptive-outcomes/stunting

# Run folder scripts and produce output
# skip 0-make-stunt-fakedata.R
# cd ~/ki-longitudinal-manuscripts/2-descriptive-outcomes/stunting

# ./runFileSaveLogs -i "2-descriptive-outcomes-stunting" \
# 0-make-who-growth-vel.R \
# 1_growth_velocity.R \
# 2_stunt_calc_outcomes_Anna.R \
# 2_stunt_calc_outcomes_fe.R \
# 2_stunt_calc_outcomes_monthly.R \
# 2_stunt_calc_outcomes.R \
# 3_pool_velocity_outcomes.R \
# 4_stunt_flowdata.R \
# 5_stunt_rec_cohort.R \
# 6_stunt_meandiff_haz.R \
# 7_stunt_meandiff_hazvel.R

R CMD BATCH 1_growth_velocity.R
R CMD BATCH 2_stunt_calc_outcomes.R 
R CMD BATCH 3_pool_velocity_outcomes.R 
R CMD BATCH 4_stunt_flowdata.R 
R CMD BATCH 5_stunt_rec_cohort.R 
R CMD BATCH 6_stunt_meandiff_haz.R 
R CMD BATCH 7_stunt_meandiff_hazvel.R



# Remove copied utility run script
# rm runFileSaveLogs
