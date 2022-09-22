


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))




Zscores_bwt_strat <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_cont_bwt_strat_2022-04-17.RDS"))
head(Zscores_bwt_strat)
saveRDS(Zscores_bwt_strat, paste0(res_dir, "rf results/longbow results/results_cont_bwt_strat.RDS"))

Zscores_bwt_strat_bin <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_cont_bwt_strat_bin_2022-09-20.RDS"))
saveRDS(Zscores_bwt_strat_bin, paste0(res_dir, "rf results/longbow results/results_cont_bwt_strat_bin.RDS"))
Zscores_bwt_strat_bin_N <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_cont_bwt_strat_bin_obs_counts_2022-09-20.RDS"))
saveRDS(Zscores_bwt_strat_bin_N, paste0(res_dir, "rf results/longbow results/results_cont_bwt_strat_bin_N.RDS"))
Zscores_full_bin <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_cont_full_bin_2022-09-20.RDS"))
saveRDS(Zscores_full_bin, paste0(res_dir, "rf results/longbow results/results_cont_full_bin.RDS"))

Zscores_mwtkg <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_cont_mwtkg_2021-10-03.RDS"))
table(Zscores_mwtkg$intervention_variable, Zscores_mwtkg$intervention_level)
saveRDS(Zscores_mwtkg, paste0(res_dir, "rf results/longbow results/results_cont_mwtkg.RDS"))

Zscores <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_cont_2021-04-22.RDS"))
saveRDS(Zscores, paste0(res_dir, "rf results/longbow results/results_cont.RDS"))

Zscores18mo <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_cont_18mo_2021-10-31.RDS"))
saveRDS(Zscores18mo, paste0(res_dir, "rf results/longbow results/results_cont18mo.RDS"))



Zscores_waz <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_waz_2021-07-28.RDS"))
saveRDS(Zscores_waz, paste0(res_dir, "rf results/longbow results/results_waz.RDS"))


bin_primary <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_bin_primary_2021-10-04.RDS")) #%>% filter(intervention_variable!="fage")
# bin_primary_tz <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_bin_primary_tz_2021-08-08.RDS"))
# fage_primary <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_bin_primary_fage_2021-08-09.RDS"))
# bin_primary <- bind_rows(bin_primary,bin_primary_tz, fage_primary)
#bin_other <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_bin_2021-04-23.RDS"))

bin_other <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_bin_secondary_2021-10-04.RDS"))


saveRDS(bin_primary, paste0(res_dir, "rf results/longbow results/results_bin_primary.RDS"))
saveRDS(bin_other, paste0(res_dir, "rf results/longbow results/results_bin_other.RDS"))

mortality <- readRDS(paste0(res_dir, "rf results/raw longbow results/mortality_2021-06-10.RDS"))
saveRDS(mortality, paste0(res_dir, "rf results/longbow results/results_mortality.RDS"))

morbidity <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_morbidity_2021-08-03.RDS"))
morbidity_tz <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_morbidity_tz_2021-08-08.RDS"))
morbidity <- bind_rows(morbidity,morbidity_tz)
saveRDS(morbidity, paste0(res_dir, "rf results/longbow results/results_morbidity.RDS"))

Zscores_unadj <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_cont_unadj_2021-04-25.RDS"))
saveRDS(Zscores_unadj, paste0(res_dir, "rf results/longbow results/results_cont_unadj.RDS"))

bin_unadj <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_bin_unadj_2021-04-23.RDS"))
saveRDS(bin_unadj, paste0(res_dir, "rf results/longbow results/results_bin_unadj.RDS"))

velocity_wlz_quart <- readRDS(paste0(res_dir, "rf results/raw longbow results/vel_wlz_quart_2021-04-26.RDS"))
velocity_wlz_quart_tz <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_vel_wlz_quart_tz_2021-08-08.RDS"))
velocity_wlz_quart <- bind_rows(velocity_wlz_quart,velocity_wlz_quart_tz)
saveRDS(velocity_wlz_quart, paste0(res_dir, "rf results/longbow results/velocity_wlz_quart.RDS"))

stunt_bin_wlz_quart <- readRDS(paste0(res_dir, "rf results/raw longbow results/stunt_bin_wlz_quart_2021-04-26.RDS"))
saveRDS(stunt_bin_wlz_quart, paste0(res_dir, "rf results/longbow results/stunt_bin_wlz_quart.RDS"))

velocity <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_vel_2021-10-22.RDS"))   
velocity2 <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_vel_glm_2021-08-11.RDS"))   
velocity2 <- velocity2[!(paste0(velocity2$intervention_variable,"-", velocity2$outcome_variable) %in% unique(paste0(velocity$intervention_variable,"-", velocity$outcome_variable))), ]
velocity <- velocity %>% filter(!(intervention_variable %in% c("mwtkg","mhtcm","fhtcm","mbmi")))
velocity_wtkg <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_vel_mwtkg_2021-10-09.RDS"))
velocity_wtkg$intervention_level[velocity_wtkg$intervention_level==2] <- "<20 kg/m²"
velocity_wtkg$intervention_level[velocity_wtkg$intervention_level==1] <- ">=20 kg/m²"
velocity_wtkg$intervention_level[velocity_wtkg$baseline_level==1] <- ">=20 kg/m²"
velocity <- bind_rows(velocity, velocity_wtkg)

table(velocity$intervention_variable, velocity$intervention_level)

saveRDS(velocity, paste0(res_dir, "rf results/longbow results/results_vel.RDS"))

# velocity_sub <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_vel_2021-07-25.RDS"))   
# saveRDS(velocity_sub, paste0(res_dir, "rf results/longbow results/results_vel_sub.RDS"))

season <-  readRDS(paste0(res_dir,  "rf results/raw longbow results/results_seasonality_results_2021-08-26.RDS"))
saveRDS(season, paste0(res_dir, "rf results/longbow results/seasonality_results.RDS"))

season_birth <-  readRDS(paste0(res_dir,  "rf results/raw longbow results/seasonality_birth_results_2021-06-05.RDS"))
saveRDS(season_birth, paste0(res_dir, "rf results/longbow results/seasonality_birth_results.RDS"))

season_cont_rf <- readRDS(paste0(res_dir,  "rf results/raw longbow results/seasonality_rf_cont_results_2021-04-22.RDS"))
saveRDS(season_cont_rf, paste0(res_dir, "rf results/longbow results/season_cont_rf_results.RDS"))

season_bin_rf <- readRDS(paste0(res_dir,  "rf results/raw longbow results/seasonality_rf_bin_results_2021-04-22.RDS"))
saveRDS(season_bin_rf, paste0(res_dir, "rf results/longbow results/season_bin_rf_results.RDS"))

mediation <- readRDS(paste0(res_dir,  "rf results/raw longbow results/results_mediation_2021-10-04.RDS"))
saveRDS(mediation, paste0(res_dir, "rf results/longbow results/mediation.RDS"))

stunt_rec <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_bin_stunt_rec_2021-10-04.RDS"))
saveRDS(stunt_rec, paste0(res_dir, "rf results/longbow results/results_bin_stunt_rec.RDS"))


optx_results <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_opttx_vim_2021-08-21.RDS"))   
optx_results <- optx_results %>% filter(!(intervention_variable) %in% c("fhtcm",  "mbmi", "mhtcm", "mwtkg"))
optx_results_mwtkg <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_opttx_vim_mwtkg_2021-10-03.RDS"))   
optx_results_season <- readRDS(paste0(res_dir, "rf results/raw longbow results/opttx_vim_season_results_2021-06-05.RDS"))   
optx_results <- bind_rows(optx_results, optx_results_mwtkg, optx_results_season)

saveRDS(optx_results, paste0(res_dir, "rf results/longbow results/opttx_vim_results.RDS"))


Zscores_full_cov <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_full_cov_2021-06-30.RDS"))
saveRDS(Zscores_full_cov, paste0(res_dir, "rf results/longbow results/results_full_cov.RDS"))

#Temp/Extra
fhtcm_prim <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_cont_primary_fhtcm_2021-08-02.RDS"))
saveRDS(fhtcm_prim, paste0(res_dir, "rf results/longbow results/results_fhtcm_prim.RDS"))

fage_prim <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_cont_primary_fage_2021-08-02.RDS"))
saveRDS(fage_prim, paste0(res_dir, "rf results/longbow results/results_fage_prim.RDS"))

birthvars <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_cont_primary_birthwt_2021-08-04.RDS"))
saveRDS(birthvars, paste0(res_dir, "rf results/longbow results/results_birthvars_rerun.RDS"))

enwast_wlz <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_cont_enwast_wlz_2021-08-05.RDS"))
saveRDS(enwast_wlz, paste0(res_dir, "rf results/longbow results/results_results_cont_enwast_wlz.RDS"))





#Save N's
Zscores_Ns <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_cont_obs_counts_2021-04-22.RDS"))
Zscores_prim_Ns <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_cont_primary_obs_counts_2021-09-24.RDS"))
Zscores_mwtkg <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_cont_mwtkg_obs_counts_2021-10-03.RDS"))
saveRDS(Zscores_mwtkg, paste0(res_dir, "rf results/longbow results/results_cont_mwtkg_obs_counts.RDS"))


bin_Ns <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_bin_primary_obs_counts_2021-10-04.RDS"))
bin_other_N <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_bin_secondary_obs_counts_2021-08-18.RDS"))
season_N <- readRDS(paste0(res_dir, "rf results/raw longbow results/seasonality_rf_bin_results_obs_counts_2021-04-22.RDS"))
season_cont_N <- readRDS(paste0(res_dir, "rf results/raw longbow results/seasonality_rf_cont_results_obs_counts_2021-04-22.RDS"))

saveRDS(Zscores_Ns, paste0(res_dir, "rf results/longbow results/results_cont_obs_counts.RDS"))
saveRDS(Zscores_prim_Ns, paste0(res_dir, "rf results/longbow results/results_cont_prim_obs_counts.RDS"))
saveRDS(bin_Ns, paste0(res_dir, "rf results/longbow results/results_bin_primary_obs_counts.RDS"))
saveRDS(bin_other_N, paste0(res_dir, "rf results/longbow results/results_bin_other_obs_counts.RDS"))
saveRDS(season_N, paste0(res_dir, "rf results/longbow results/seasonality_rf_bin_results_obs_counts.RDS"))
saveRDS(season_cont_N, paste0(res_dir, "rf results/longbow results/seasonality_rf_cont_results_obs_counts.RDS"))


velocity_wlz_quart_N <- readRDS(paste0(res_dir, "rf results/raw longbow results/vel_wlz_quart_obs_counts_2021-04-26.RDS"))
velocity_wlz_quart_N_tz <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_vel_wlz_quart_tz_obs_counts_2021-08-08.RDS"))
velocity_wlz_quart_N <- bind_rows(velocity_wlz_quart_N,velocity_wlz_quart_N_tz)
saveRDS(velocity_wlz_quart_N, paste0(res_dir, "rf results/longbow results/velocity_wlz_quart_obs_counts.RDS"))


#Temp/Extra
fhtcm_prim_Ns <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_cont_primary_fhtcm_obs_counts_2021-08-01.RDS"))
saveRDS(fhtcm_prim_Ns, paste0(res_dir, "rf results/longbow results/results_cont_primary_fhtcm_obs_counts.RDS"))
fage_prim_cont_Ns <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_cont_primary_fage_obs_counts_2021-08-02.RDS"))
saveRDS(fage_prim_cont_Ns, paste0(res_dir, "rf results/longbow results/results_cont_primary_fage_obs_counts.RDS"))


fage_prim_Ns <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_bin_primary_fage_obs_counts_2021-08-09.RDS"))
saveRDS(fage_prim_Ns, paste0(res_dir, "rf results/longbow results/results_cont_fage_obs_counts.RDS"))

enwast_wlz_Ns <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_cont_primary_fage_obs_counts_2021-08-02.RDS"))
saveRDS(enwast_wlz_Ns, paste0(res_dir, "rf results/longbow results/results_cont_primary_fage_obs_counts.RDS"))


enwast_wlz_Ns <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_cont_enwast_wlz_obs_counts_2021-08-05.RDS"))
saveRDS(enwast_wlz_Ns, paste0(res_dir, "rf results/longbow results/results_results_cont_enwast_wlz_obs_counts.RDS"))


