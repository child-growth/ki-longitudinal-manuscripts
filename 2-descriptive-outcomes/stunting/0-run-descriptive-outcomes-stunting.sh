#!/bin/bash

# Remove previous results
# cd /data/flu/flu-data/
# rm -f \
# "1b-cdph_season.RDS" \
# "2b-absentee_p3.RDS" "2b-absentee_flu.RDS" "2b-absentee_nonflu.RDS" "2b-absentee_flu_CDC.RDS" "2b-absentee_flu_cdph2.RDS" "2b-absentee_flu_cdph3.RDS" \

# Copy utility run script into this folder for concision in call
cp ~/ki-longitudinal-manuscripts/runFileSaveLogs ~/ki-longitudinal-manuscripts/2-descriptive-outcomes/stunting

# Run folder scripts and produce output
cd ~/ki-longitudinal-manuscripts/2-descriptive-outcomes/stunting

./runFileSaveLogs -i "2-descriptive-outcomes-stunting" \
 0-make-who-growth-vel.R \
 1_growth_velocity.R \
 2_stunt_calc_outcomes.R \
 3_pool_velocity_outcomes.R \
 4_stunt_flowdata.R \
 5_stunt_rec_cohort.R \
 6_stunt_meandiff_haz.R \
 7_stunt_meandiff_hazvel.R \
 8_stunt_meanLAZ_strat_incage.R \
 9_stunt_velocity_strat_incage.R \
 10_stunt_calc_outcomes_no_probit.R \
 11_stunt_calc_outcomes_no_Kenaba_birth.R 

# Remove copied utility run script
 rm runFileSaveLogs
