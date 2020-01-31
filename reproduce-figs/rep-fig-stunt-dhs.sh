#!/bin/bash

###########################################################
# Reproduce DHS stunting figure 
###########################################################

###########################################################
# Remove previous results
###########################################################
cd ../results/

# rm -f \
# "3a_abs_glm_p1_unadj_ill.RDS" "3a_abs_glm_p1_unadj_all.RDS" \
# "3b_abs_glm_p1_adj_ill.RDS" "3b_abs_glm_p1_adj_all.RDS" \
# "5a_abs_glm_p2_did_ill.RDS" "5a_abs_glm_p2_did_all.RDS" \
# "5c_abs_glm_p2_adj_did_ill.RDS" "5c_abs_glm_p2_adj_did_all.RDS" \
# "5cg_abs_glm_p2_adj_did_ill.RDS" "5cg_abs_glm_p2_adj_did_all.RDS" \
# "5cm_abs_glm_p2_adj_did_ill.RDS" "5cm_abs_glm_p2_adj_did_all.RDS" \
# "5cm_offseason_abs_glm_p2_adj_did_ill.RDS" "5cm_offseason_abs_glm_p2_adj_did_all.RDS" \
# "5cr_abs_glm_p2_adj_did_ill.RDS" "5cr_abs_glm_p2_adj_did_all.RDS"
# 

###########################################################
# cleaning scripts
###########################################################
# switch directories
cd ../1-data-cleaning/

# Copy utility run script into this folder for concision in call
cp ../runFileSaveLogs.py ../1-data-cleaning/

# Run folder scripts and produce output
# ./runFileSaveLogs -i "DHS-cleaning" 7_DHS-data-cleaning.R 7_DHS-ki-density.R
R CMD BATCH 7_DHS-data-cleaning.R 
R CMD BATCH 7_DHS-ki-density.R

# Remove copied utility run script
rm runFileSaveLogs.py

###########################################################
# plotting scripts
###########################################################
cd ../5-visualizations/stunting/

# Copy utility run script into this folder for concision in call
cp ../../runFileSaveLogs.py ../../5-visualizations/stunting/

# ./runFileSaveLogs -i "DHS-fig-stunting" fig-DHS-plots-laz-compute.R fig-DHS-plots-laz.R
# R CMD BATCH fig-DHS-plots-laz-compute.R
R CMD BATCH fig-DHS-plots-laz.R

# Remove copied utility run script
rm runFileSaveLogs





