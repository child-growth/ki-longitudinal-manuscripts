

#!/bin/bash

# Remove previous results
# cd /data/flu/flu-data/
# rm -f \
# "1b-cdph_season.RDS" \
# "2b-absentee_p3.RDS" "2b-absentee_flu.RDS" "2b-absentee_nonflu.RDS" "2b-absentee_flu_CDC.RDS" "2b-absentee_flu_cdph2.RDS" "2b-absentee_flu_cdph3.RDS" \
# "2c-absentee_flu_yr.RDS" "2c-absentee_nonflu_yr.RDS" "2c-absentee_flu_CDC_yr.RDS" "2c-absentee_flu_cdph2_yr.RDS" "2c-absentee_flu_cdph3_yr.RDS" \


# Copy utility run script into this folder for concision in call
cp ~/ki-longitudinal-manuscripts/runFileSaveLogs ~/ki-longitudinal-manuscripts/2-descriptive-outcomes/wasting/

# Run folder scripts and produce output
cd ~/ki-longitudinal-manuscripts/2-descriptive-outcomes/wasting/


#list all scripts here
 ./runFileSaveLogs -i "descriptive-outcomes-wasting" \
  1_wast_calcinc.R \
  2_birth_wast_outcomes.R \
  3_wast_summarize_outcomes.R \
  4_co_summarize_outcomes.R \
  5_co_flowdata.R \
  7_wast_ir_sensitivity.R \
  8_wast_manuscript_extra_stats.R \
  9_create_wast_seasonality_datasets.R \
  10_wast_summarize_outcomes_FE.R \
  11_wast_summarize_outcomes_no_Kenaba_bw.R \
  12_co_summarize_outcomes_FE.R \
  13_create_birth_wast_seasonality_dataset.R \
  14_co_summarize_outcomes_no_Kenaba.R

# Remove copied utility run script
 rm runFileSaveLogs
