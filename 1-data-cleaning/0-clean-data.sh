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
cp ~/ki-longitudinal-manuscripts/runFileSaveLogs ~/ki-longitudinal-manuscripts/1-data-cleaning

# Run folder scripts and produce output
cd ~/ki-longitudinal-manuscripts/1-data-cleaning/
./runFileSaveLogs -i "clean-data" \
1_assetPCA-allstudies.R \
2_process_FINAL_dataset.R \
2_process_mortality_data.R \
3_merge_covariates_and_raw_data.R \
4_grab_study_metadata.R \
5_st_prepdata.R \
6_co_prepdata.R \
6_wast_prepdata.R \
7_DHS-data-cleaning-ghap.R \
7_DHS-data-cleaning.R \
7_DHS-data-cleaning-quantiles.R \
7_DHS-ki-density.R \
8_GHAPStudyMetadata.R \
9_GHAPStudyMetadata_stunting.R \
10_seasonality_prepdata.R \
11_icc_calc.R \
12_create_CONSORT_dataset.R \
13_simulate_test_dataset.R

# Remove copied utility run script
rm runFileSaveLogs
