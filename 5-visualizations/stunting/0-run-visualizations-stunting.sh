#!/bin/bash

#chmod -R 777 ki-longitudinal-manuscripts


# Copy utility run script into this folder for concision in call
cp ~/ki-longitudinal-manuscripts/runFileSaveLogs ~/ki-longitudinal-manuscripts/5-visualizations/stunting

# Run folder scripts and produce output
cd ~/ki-longitudinal-manuscripts/5-visualizations/stunting


#list all scripts here
./runFileSaveLogs -i "visualizations-stunting" fig-study-inventory-heatmaps-stunt.R 

R CMD BATCH fig1-study-inventory-heatmaps-stunt.R \
R CMD BATCH fig2-DHS-plots-laz.R \
R CMD BATCH fig3a-stunting-inc-prop.R \
R CMD BATCH fig3b-stunting-meanlaz-incage.R 
R CMD BATCH fig4a-stunting-flow-strat-prep.R \
R CMD BATCH fig4a-stunting-flow.R \
R CMD BATCH fig4b-stunting-flow-line.R \
R CMD BATCH fig4c-stunting-rec-density.R \ 
R CMD BATCH fig4d-stunting-rec-mean.R \
R CMD BATCH fig5-stunting-length-velocity.R \ 
R CMD BATCH figED2-stunting-prevalence-map.R \ 
R CMD BATCH figED3-4-stunting-cohort-tracking.R \
R CMD BATCH figED5-stunting-laz-quantile.R \
R CMD BATCH figED6-laz-dist-cohort.R \
R CMD BATCH figED7-laz-skew.R \
R CMD BATCH figED8-stunting-rec-density-pheno.R \
R CMD BATCH figED9-stunting-length-velocity-strat.R \

# Remove copied utility run script
 rm runFileSaveLogs
