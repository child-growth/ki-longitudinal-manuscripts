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
# cp ~/ki-longitudinal-manuscripts/runFileSaveLogs ~/ki-longitudinal-manuscripts/5-visualization/stunting

# Run folder scripts and produce output
# cd ~/ki-longitudinal-manuscripts/5-visualization/stunting

# ./runFileSaveLogs -i "visualizations-stunting" \
# fig-DHS-plots-laz-compute.R \
# fig-DHS-plots-laz.R \
# fig-DHS-quantile-plots.R \
# fig-study-inventory-heatmaps-stunt.R \
# fig-stunting-descriptive-epi-plot-monthly24.R \
# fig-stunting-descriptive-epi-plots-fe.R \
# fig-stunting-descriptive-epi-plots.R \
# fig-stunting-flow-fe.R \
# fig-stunting-flow-re.R \
# fig-stunting-flow-strat-prep.R \
# fig-stunting-flow.R \
# fig-stunting-laz-quantile.R \
# fig-stunting-length-velocity-fe \
# fig-stunting-length-velocity-monthly24.R \
# fig-stunting-length-velocity-subset.R \
# fig-stunting-length-velocity.R \
# fig-stunting-prevalence-map.R \
# fig-stunting-rec-density.R \
# fig-stunting-rec-prev.R

R CMD BATCH fig-DHS-plots-laz-compute.R 
R CMD BATCH fig-DHS-plots-laz.R 
R CMD BATCH fig-DHS-quantile-plots.R 
R CMD BATCH fig-study-inventory-heatmaps-stunt.R 
R CMD BATCH fig-stunting-descriptive-epi-plot-monthly24.R 
R CMD BATCH fig-stunting-descriptive-epi-plots-fe.R 
R CMD BATCH fig-stunting-descriptive-epi-plots.R 
R CMD BATCH fig-stunting-flow-fe.R 
R CMD BATCH fig-stunting-flow-re.R 
R CMD BATCH fig-stunting-flow-strat-prep.R 
R CMD BATCH fig-stunting-flow.R 
R CMD BATCH fig-stunting-laz-quantile.R 
R CMD BATCH fig-stunting-length-velocity-fe 
R CMD BATCH fig-stunting-length-velocity-monthly24.R 
R CMD BATCH fig-stunting-length-velocity-subset.R 
R CMD BATCH fig-stunting-length-velocity.R 
R CMD BATCH fig-stunting-prevalence-map.R 
R CMD BATCH fig-stunting-rec-density.R 
R CMD BATCH fig-stunting-rec-prev.R

# Remove copied utility run script
# rm runFileSaveLogs
