#!/bin/bash

# Remove previous results
# cd /data/flu/flu-data/
# rm -f \
# "1b-cdph_season.RDS" \
# "2b-absentee_p3.RDS" "2b-absentee_flu.RDS" "2b-absentee_nonflu.RDS" "2b-absentee_flu_CDC.RDS" "2b-absentee_flu_cdph2.RDS" "2b-absentee_flu_cdph3.RDS" \

# Copy utility run script into this folder for concision in call
cp ~/ki-longitudinal-manuscripts/runFileSaveLogs ~/ki-longitudinal-manuscripts/5-visualizations/risk\ factors

# Run folder scripts and produce output
cd ~/ki-longitudinal-manuscripts/5-visualizations/risk\ factors

./runFileSaveLogs -i "visualizations-c+c" \
 fig-rf-study-inventory-heatmap.R \
 fig-Zscore-PAR-plots.R \
 fig-PAR-VIM-comparison.R \
 fig-age-strat-rf-comp.R \
 fig-wast-perswast-comp.R \
 fig-spline-plots.R \
 fig-early-wast-RR.R \
 fig-wlz-quart-laz-velocity.R \
 fig-wlz-quart-stunting.R \
 fig-mortality-plots.R \
 fig-mortality-timing.R \
 rf_manuscript_figure_grids.R \
 fig-example-forest.R \
 fig-sig-heatmap.R \
 fig-PAF-plots.R \
 fig-Zscore-PAR-extended-data-plots.R \
 fig-adjustment-effect-by-cov-number.R \
 fig-mediation-analysis.R \
 fig-EValues.R \
 fig-kaplan-meier-curves.R \
 fig-RR-plots.R \
 fig-spline-plots_sensitivity.R \
 fig-pooled-RR-plots.R

# Remove copied utility run script
rm runFileSaveLogs
