#!/bin/bash

# Remove previous results
# cd /data/flu/flu-data/
# rm -f \
# "1b-cdph_season.RDS" \
# "2b-absentee_p3.RDS" "2b-absentee_flu.RDS" "2b-absentee_nonflu.RDS" "2b-absentee_flu_CDC.RDS" "2b-absentee_flu_cdph2.RDS" "2b-absentee_flu_cdph3.RDS" \


# Copy utility run script into this folder for concision in call
cp ~/ki-longitudinal-manuscripts/runFileSaveLogs ~/ki-longitudinal-manuscripts/5-visualizations/shared/

# Run folder scripts and produce output
cd ~/ki-longitudinal-manuscripts/5-visualizations/shared/


#list all scripts here
 ./runFileSaveLogs -i "visualizations-shared" \
fig-CONSORT-figure1.R \
fig-anthro-measure-quality.R \
fig-anthro-secular-trends.R \
fig-enrollment-age-histograms.R #\
#fig-mal-ed-pakistan-QC.R

# Remove copied utility run script
 rm runFileSaveLogs

