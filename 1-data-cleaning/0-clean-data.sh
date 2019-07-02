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

# Run folder scripts and produce output
cd 1-data-cleaning/

# ./runFileSaveLogs -i "clean-data" \
# 1_process_FINAL_dataset.R \
# 2_clean_FINAL_covariates.R \
# 3_merge_covariates_and_raw_data.R \
# 4_create_master_dataset.R \
# 5_process_mortality_data.R \
# 6_anthro_prepdata.R \
# 7_DHS-data-cleaning.R \
# 8_DHS-data-quantiles.R \
# 9_seasonality_prepdata.R

R CMD BATCH 1_process_FINAL_dataset.R

# # TEMPORARY FIX
# echo $'\n### Running 1_process_FINAL_dataset.R...' >&1
# (time Rscript 1_process_FINAL_dataset.R >&1)

# echo $'\n### Running 1_process_FINAL_dataset.R...' >&2
# (time Rscript 1_process_FINAL_dataset.R >&2)
# 
# echo $'\n### Running 2_clean_FINAL_covariates.R...' >&2
# (time Rscript 2_clean_FINAL_covariates.R >&2)
# 
# # echo $'\n### Running 3_merge_covariates_and_raw_data.R...' >&2
# # (time Rscript 3_merge_covariates_and_raw_data.R >&2)
# # 
# # echo $'\n### Running 4_create_master_dataset.R...' >&2
# # (time Rscript 4_create_master_dataset.R >&2)
# # 
# # echo $'\n### Running 5_process_mortality_data.R...' >&2
# # (time Rscript 5_process_mortality_data.R >&2)
# # 
# # echo $'\n### Running 6_anthro_prepdata.R...' >&2
# # (time Rscript 6_anthro_prepdata.R >&2)
# # 
# # echo $'\n### Running 7_DHS-data-cleaning.R...' >&2
# # (time Rscript 7_DHS-data-cleaning.R >&2)
# # 
# # echo $'\n### Running 8_DHS-data-quantiles.R...' >&2
# # (time Rscript 8_DHS-data-quantiles.R >&2)
# # 
# # echo $'\n### Running 9_seasonality_prepdata.R...' >&2
# # (time Rscript 9_seasonality_prepdata.R >&2)
# 
# echo $'\n--- Total time to run data-cleaning scripts:' >&2

R CMD BATCH 1_process_FINAL_dataset.R


# Remove copied utility run script
# rm runFileSaveLogs
