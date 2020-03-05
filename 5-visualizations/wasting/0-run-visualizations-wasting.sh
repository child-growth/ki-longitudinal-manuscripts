#!/bin/bash

# Remove previous results
# cd /data/flu/flu-data/
# rm -f \
# "1b-cdph_season.RDS" \
# "2b-absentee_p3.RDS" "2b-absentee_flu.RDS" "2b-absentee_nonflu.RDS" "2b-absentee_flu_CDC.RDS" "2b-absentee_flu_cdph2.RDS" "2b-absentee_flu_cdph3.RDS" \

# Copy utility run script into this folder for concision in call
cp ~/ki-longitudinal-manuscripts/runFileSaveLogs ~/ki-longitudinal-manuscripts/5-visualizations/wasting

# Run folder scripts and produce output
cd ~/ki-longitudinal-manuscripts/5-visualizations/wasting

 ./runFileSaveLogs -i "visualizations-wasting" \
  fig-wasting-study-inventory-heatmap.R \
  fig-wasting-descriptive-epi-plots.R \
  fig-pers-wasting.R \
  fig-co-flow.R \
  fig-birth-wasting-recovery-stats.R \
  fig-wasting-seasonality.R \
  fig-wasting-seasonality-rainfall.R \
  fig-wasting-season-relative-risks.R \
  fig-wasting-rec-hist.R \
  fig-birth-wasting-splines.R \
  manuscript_figure_grids.R \
  fig-DHS-plots-whz.R \
  fig-DHS-quantile-plots-wasting.R \
  fig-wasting-classification-example.R \
  fig-wasting-prevalence-map.R 


# Remove copied utility run script
 rm runFileSaveLogs
