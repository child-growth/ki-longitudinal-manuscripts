

#!/bin/bash

# Remove previous results
# cd /data/flu/flu-data/
# rm -f \
# "1b-cdph_season.RDS" \
# "2b-absentee_p3.RDS" "2b-absentee_flu.RDS" "2b-absentee_nonflu.RDS" "2b-absentee_flu_CDC.RDS" "2b-absentee_flu_cdph2.RDS" "2b-absentee_flu_cdph3.RDS" \
# "2c-absentee_flu_yr.RDS" "2c-absentee_nonflu_yr.RDS" "2c-absentee_flu_CDC_yr.RDS" "2c-absentee_flu_cdph2_yr.RDS" "2c-absentee_flu_cdph3_yr.RDS" \


# Copy utility run script into this folder for concision in call
cp ~/ki-longitudinal-manuscripts/runFileSaveLogs ~/ki-longitudinal-manuscripts/4-longbow-tmle-analysis/secondary\ outcome\ pooling/
  
# Run folder scripts and produce output
cd ~/ki-longitudinal-manuscripts/4-longbow-tmle-analysis/secondary\ outcome\ pooling/
  
  
#list all scripts here
./runFileSaveLogs -i "longbow-tmle-analysis-secondary" \
pool_ATE_FE.R \
pool_ATE_FE_unadj.R \
pool_ATE_unadj.R \
pool_Zscore_PAR_FE.R \
pool_Zscore_PAR_unadj.R \
pool_Zscore_PAR_FE_unadj.R \
pool_PAF_FE.R \
pool_PAF_FE_unadj.R \
pool_PAF_unadj.R \
pool_RR_FE.R \
pool_RR_FE_unadj.R \
pool_RR_unadj.R



# Remove copied utility run script
rm runFileSaveLogs
