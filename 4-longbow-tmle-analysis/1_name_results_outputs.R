


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))





Zscores <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_cont_2021-04-22.RDS"))
saveRDS(Zscores, paste0(res_dir, "rf results/longbow results/results_cont.RDS"))


bin_primary <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_bin_primary_2021-05-15.RDS"))
bin_other <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_bin_2021-04-23.RDS"))

saveRDS(bin_primary, paste0(res_dir, "rf results/longbow results/results_bin_primary.RDS"))
saveRDS(bin_other, paste0(res_dir, "rf results/longbow results/results_bin_other.RDS"))

mortality <- readRDS(paste0(res_dir, "rf results/raw longbow results/mortality_2021-04-28.RDS"))
saveRDS(mortality, paste0(res_dir, "rf results/longbow results/results_mortality.RDS"))


Zscores_unadj <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_cont_unadj_2021-04-25.RDS"))
saveRDS(Zscores_unadj, paste0(res_dir, "rf results/longbow results/results_cont_unadj.RDS"))

bin_unadj <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_bin_unadj_2021-04-23.RDS"))
saveRDS(bin_unadj, paste0(res_dir, "rf results/longbow results/results_bin_unadj.RDS"))

velocity_wlz_quart <- readRDS(paste0(res_dir, "rf results/raw longbow results/vel_wlz_quart_2021-04-26.RDS"))
saveRDS(velocity_wlz_quart, paste0(res_dir, "rf results/longbow results/velocity_wlz_quart.RDS"))

stunt_bin_wlz_quart <- readRDS(paste0(res_dir, "rf results/raw longbow results/stunt_bin_wlz_quart_2021-04-26.RDS"))
saveRDS(stunt_bin_wlz_quart, paste0(res_dir, "rf results/longbow results/stunt_bin_wlz_quart.RDS"))

velocity <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_vel_2021-04-24.RDS"))   
saveRDS(velocity, paste0(res_dir, "rf results/longbow results/results_vel.RDS"))

season <-  readRDS(paste0(res_dir,  "rf results/raw longbow results/seasonality_results_2021-04-22.RDS"))
saveRDS(season, paste0(res_dir, "rf results/longbow results/seasonality_results.RDS"))

season_birth <-  readRDS(paste0(res_dir,  "rf results/raw longbow results/seasonality_birth_results_2021-04-22.RDS"))
saveRDS(season_birth, paste0(res_dir, "rf results/longbow results/seasonality_birth_results.RDS"))

season_cont_rf <- readRDS(paste0(res_dir,  "rf results/raw longbow results/seasonality_rf_cont_results_2021-04-22.RDS"))
saveRDS(season_cont_rf, paste0(res_dir, "rf results/longbow results/season_cont_rf_results.RDS"))

season_bin_rf <- readRDS(paste0(res_dir,  "rf results/raw longbow results/seasonality_rf_bin_results_2021-04-22.RDS"))
saveRDS(season_bin_rf, paste0(res_dir, "rf results/longbow results/season_bin_rf_results.RDS"))

mediation <- readRDS(paste0(res_dir,  "rf results/raw longbow results/mediation_2021-04-23.RDS"))
saveRDS(mediation, paste0(res_dir, "rf results/longbow results/mediation.RDS"))


optx_results <- readRDS(paste0(res_dir, "rf results/raw longbow results/opttx_vim_results_2021-04-30.RDS"))   
saveRDS(optx_results, paste0(res_dir, "rf results/longbow results/opttx_vim_results.RDS"))



#Save N's
Zscores_Ns <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_cont_obs_counts_2021-04-22.RDS"))
bin_Ns <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_bin_primary_obs_counts_2021-04-22.RDS"))
bin_other_N <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_bin_obs_counts_2021-04-23.RDS"))
season_N <- readRDS(paste0(res_dir, "rf results/raw longbow results/seasonality_rf_bin_results_obs_counts_2021-04-22.RDS"))
season_cont_N <- readRDS(paste0(res_dir, "rf results/raw longbow results/seasonality_rf_cont_results_obs_counts_2021-04-22.RDS"))

saveRDS(Zscores_Ns, paste0(res_dir, "rf results/longbow results/results_cont_obs_counts.RDS"))
saveRDS(bin_Ns, paste0(res_dir, "rf results/longbow results/results_bin_primary_obs_counts.RDS"))
saveRDS(bin_other_N, paste0(res_dir, "rf results/longbow results/results_bin_other_obs_counts.RDS"))
saveRDS(season_N, paste0(res_dir, "rf results/longbow results/seasonality_rf_bin_results_obs_counts.RDS"))
saveRDS(season_cont_N, paste0(res_dir, "rf results/longbow results/seasonality_rf_cont_results_obs_counts.RDS"))

