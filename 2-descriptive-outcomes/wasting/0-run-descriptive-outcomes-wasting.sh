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
# cp ~/ki-longitudinal-manuscripts/runFileSaveLogs ~/ki-longitudinal-manuscripts/2-descriptive-outcomes/wasting

# Run folder scripts and produce output
cd ~/ki-longitudinal-manuscripts/2-descriptive-outcomes/wasting

# ./runFileSaveLogs -i "descriptive-outcomes-wasting" \
# 2_wast_calcinc.R \
# 2_wast_inc_cohort.R \
# 3_birth_wast_outcomes.R \
# 3_co_summarize_outcomes.R \
# 3_wast_summarize_outcomes.R \
# 7_wast_ir_sensitivity.R \
# 8_wast_manuscript_extra_stats.R \
# co_flowdata.R \
# wast_flowdata.R

R CMD BATCH 2_wast_calcinc.R 
R CMD BATCH 2_wast_inc_cohort.R 
R CMD BATCH 3_birth_wast_outcomes.R 
R CMD BATCH 3_co_summarize_outcomes.R 
R CMD BATCH 3_wast_summarize_outcomes.R 
R CMD BATCH 7_wast_ir_sensitivity.R 
R CMD BATCH 8_wast_manuscript_extra_stats.R 
R CMD BATCH co_flowdata.R 
R CMD BATCH wast_flowdata.R

# Remove copied utility run script
# rm runFileSaveLogs
