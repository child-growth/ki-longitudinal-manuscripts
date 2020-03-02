#!/bin/bash

#chmod -R 777 ki-longitudinal-manuscripts


# Remove previous results
rm ~/ki-longitudinal-manuscripts/figures/stunting/*


# Copy utility run script into this folder for concision in call
cp ~/ki-longitudinal-manuscripts/runFileSaveLogs ~/ki-longitudinal-manuscripts/5-visualizations/stunting

# Run folder scripts and produce output
cd ~/ki-longitudinal-manuscripts/5-visualizations/stunting


#list all scripts here
 ./runFileSaveLogs -i "visualizations-stunting" fig-study-inventory-heatmaps-stunt.R 
 #\
 # fig-DHS-plots-laz-compute.R \
 # fig-DHS-plots-laz.R \
 # fig-DHS-quantile-plots.R \
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


#R CMD BATCH fig-study-inventory-heatmaps-stunt.R

# #Primary pooled stunting descriptive epi plots
# R CMD BATCH fig-stunting-plot-mean-laz.R
# R CMD BATCH fig-stunting-laz-quantile.R
# R CMD BATCH fig-stunting-plot-laz-quantile-monthly.R
# R CMD BATCH fig-stunting-plot-prev.R
# R CMD BATCH fig-stunting-plot-inc.R
# 
# R CMD BATCH fig-stunting-rec-density.R
# R CMD BATCH fig-stunting-rec-prev.R
# 
# #Velocity 
# R CMD BATCH fig-stunting-length-velocity.R
# R CMD BATCH fig-stunting-length-velocity-fe.R
# R CMD BATCH fig-stunting-length-velocity-monthly24.R
# R CMD BATCH fig-stunting-length-velocity-subset.R
# 
# #Stunting flow 
# R CMD BATCH fig-stunting-flow-strat-prep.R
# R CMD BATCH fig-stunting-flow.R
# R CMD BATCH fig-stunting-flow-fe.R
# R CMD BATCH fig-stunting-flow-re.R
# 
# 
# #Incidence by age growth curves
# R CMD BATCH fig-stunting-meanlaz-incage.R
# R CMD BATCH fig-stunting-velocity-incage.R
# 
# 
# 
# 
# #extended data
# R CMD BATCH fig-stunting-prevalence-map.R
# 
# #DHS
# R CMD BATCH fig-DHS-plots-laz.R
# R CMD BATCH fig-DHS-quantile-plots.R
# #No probit
# R CMD BATCH fig-stunting-descriptive-epi-plots_no_probit.R
# R CMD BATCH fig-stunting-descriptive-epi-plots-fe_no_probit.R


# Remove copied utility run script
 rm runFileSaveLogs
