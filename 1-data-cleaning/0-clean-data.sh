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
# cp ~/Documents/Berkeley/Colford-Hubbard/ki-longitudinal-manuscripts/runFileSaveLogs ~/Documents/Berkeley/Colford-Hubbard/ki-longitudinal-manuscripts/1-data-cleaning


# Copy utility run script into this folder for concision in call
cp ~/ki-longitudinal-manuscripts/runFileSaveLogs ~/ki-longitudinal-manuscripts/1-data-cleaning

# Run folder scripts and produce output
cd ~/ki-longitudinal-manuscripts/1-data-cleaning


#list all scripts here
 # ./runFileSaveLogs -i "data-cleaning" \
 # raw data cleaning/0_save_studies_as_rds.R \
 # raw data cleaning/1_assetPCA-allstudies.R \
 # raw data cleaning/2_BreastfeedingCleaning.R \
 # raw data cleaning/3_BreastfeedingDatasetCreation.R \
 # raw data cleaning/4_ImpsanCleaning.R \
 # raw data cleaning/5_SafeH2OCleaning.R \
 # raw data cleaning/6_DiarrheaCleaning.R \
 # raw data cleaning/7_PROVIDE_measure_months.R \
 # raw data cleaning/8_maternal_weight.R \
 
./runFileSaveLogs -i "data-cleaning" \
  1_process_FINAL_dataset.R \
  2_clean_FINAL_covariates.R \
  3_merge_covariates_and_raw_data.R \
  4_create_master_dataset.R \
  5_process_mortality_data.R \
  6_anthro_prepdata.R \
  7_DHS-data-cleaning.R \
  8_DHS-data-quantiles.R \
  9_seasonality_prepdata.R \
  10-monthly-ppt-processing.R \
  11_rainfall_prepdata.R #\
  
  # metadata scripts/1_create_KI_wasting_consort_data.R \
  # metadata scripts/2_create_KI_stunting_consort_data.R \
  # metadata scripts/3_check_extended_table1_stunting.R
 

# Remove copied utility run script
 rm runFileSaveLogs
