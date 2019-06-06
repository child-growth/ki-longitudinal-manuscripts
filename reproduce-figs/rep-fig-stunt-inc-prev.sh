#!/bin/bash

###########################################################
# Reproduce stunting incidence and prevalence figure
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
# outcome generation scripts
###########################################################
# switch directories
cd ../2-descriptive-outcomes/stunting/

# Copy utility run script into this folder for concision in call
cp ../runFileSaveLogs.py ../2-descriptive-outcomes/stunting/

# Run folder scripts and produce output
# ./runFileSaveLogs -i "DHS-cleaning" 2_stunt_calc_outcomes.R 2_stunt_calc_outcomes_fe.R 2_stunt_calc_outcomes_monthly.R
R CMD BATCH 2_stunt_calc_outcomes.R
R CMD BATCH 2_stunt_calc_outcomes_fe.R
R CMD BATCH 2_stunt_calc_outcomes_monthly.R

# Remove copied utility run script
rm runFileSaveLogs.py

###########################################################
# plotting scripts
###########################################################
cd ../5-visualizations/stunting/

# Copy utility run script into this folder for concision in call
cp ../../runFileSaveLogs.py ../../5-visualizations/stunting/

# ./runFileSaveLogs -i "DHS-fig-stunting" fig-stunting-descriptive-epi-plots.R fig-stunting-descriptive-epi-plots-fe.R fig-stunting-descriptive-epi-plots-monthly24.R
R CMD BATCH fig-stunting-descriptive-epi-plots.R
R CMD BATCH fig-stunting-descriptive-epi-plots-fe.R
R CMD BATCH fig-stunting-descriptive-epi-plots-monthly24.R

# Remove copied utility run script
rm runFileSaveLogs





