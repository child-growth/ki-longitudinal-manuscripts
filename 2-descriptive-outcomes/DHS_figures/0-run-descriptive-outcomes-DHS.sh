

#!/bin/bash

# Remove previous results
# cd /data/flu/flu-data/
# rm -f \
# "1b-cdph_season.RDS" \
# "2b-absentee_p3.RDS" "2b-absentee_flu.RDS" "2b-absentee_nonflu.RDS" "2b-absentee_flu_CDC.RDS" "2b-absentee_flu_cdph2.RDS" "2b-absentee_flu_cdph3.RDS" \
# "2c-absentee_flu_yr.RDS" "2c-absentee_nonflu_yr.RDS" "2c-absentee_flu_CDC_yr.RDS" "2c-absentee_flu_cdph2_yr.RDS" "2c-absentee_flu_cdph3_yr.RDS" \


# Copy utility run script into this folder for concision in call
cp ~/ki-longitudinal-manuscripts/runFileSaveLogs ~/ki-longitudinal-manuscripts/2-descriptive-outcomes/DHS_figures/
  
# Run folder scripts and produce output
cd ~/ki-longitudinal-manuscripts/2-descriptive-outcomes/DHS_figures/
  
  
#list all scripts here
./runFileSaveLogs -i "descriptive-outcomes-dhs" \
 01_DHS_plot_dhsdata_mean_stunting.R \
 02_DHS_plot_dhsdata_mean_wasting.R \
 03_DHSplot_kidata_density.R \
 04_DHSplot_dhsdata_density.R \
 05_DHSplot_density_medians.R 

# Remove copied utility run script
rm runFileSaveLogs
