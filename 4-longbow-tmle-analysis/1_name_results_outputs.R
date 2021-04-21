


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))



Zscores <- readRDS(here("results/rf results/raw longbow results/results_cont_2021-04-05.RDS"))
cont_wealth <- readRDS(here("results/rf results/raw longbow results/results_cont_wealth_2021-04-18.RDS"))
#Merge in wealth
cont_wealth <- bin_wealth %>% filter(outcome_variable %in% unique(bin_other$outcome_variable))
Zscores <- Zscores %>% filter(intervention_variable != "hhwealth_quart")
Zscores <- bind_rows(Zscores, cont_wealth)

saveRDS(Zscores, here("results/rf results/longbow results/results_cont.RDS"))


bin_primary <- readRDS(here("results/rf results/raw longbow results/results_bin_primary_2021-04-19.RDS"))
bin_other <- readRDS(here("results/rf results/raw longbow results/results_bin_2021-04-06.RDS"))
bin_wealth <- readRDS(here("results/rf results/raw longbow results/results_bin_wealth_2021-04-18.RDS"))

# d <- bin_primary %>% filter(agecat %in% c("0-24 months", "0-6 months","6-24 months")) %>% droplevels(.)
# table(d$intervention_variable, d$agecat)

#Merge in wealth
bin_wealth_other <- bin_wealth %>% filter(outcome_variable %in% unique(bin_other$outcome_variable))
bin_other <- bin_other %>% filter(intervention_variable != "hhwealth_quart")
bin_other <- bind_rows(bin_other, bin_wealth_other)

saveRDS(bin_primary, here("results/rf results/longbow results/results_bin_primary.RDS"))
saveRDS(bin_other, here("results/rf results/longbow results/results_bin_other.RDS"))

Zscores_unadj <- readRDS(here("results/rf results/raw longbow results/results_cont_unadj_2020-04-19.rds"))
saveRDS(Zscores_unadj, here("results/rf results/longbow results/results_cont_unadj.RDS"))

bin_unadj <- readRDS(here("results/rf results/raw longbow results/results_bin_unadj_2020-03-06.rds"))
saveRDS(bin_unadj, here("results/rf results/longbow results/results_bin_unadj.RDS"))

velocity_wlz_quart <- readRDS(here("results/rf results/raw longbow results/vel_wlz_quart_2021-04-04.rds"))
saveRDS(velocity_wlz_quart, here("results/rf results/longbow results/velocity_wlz_quart.RDS"))

stunt_bin_wlz_quart <- readRDS(here("results/rf results/raw longbow results/stunt_bin_wlz_quart_2021-04-04.rds"))
saveRDS(stunt_bin_wlz_quart, here("results/rf results/longbow results/stunt_bin_wlz_quart.RDS"))

velocity <- readRDS(here("results/rf results/raw longbow results/results_vel_2021-04-04.RDS"))   
saveRDS(velocity, here("results/rf results/longbow results/results_vel.RDS"))

season <-  readRDS(here("results","rf results","raw longbow results","seasonality_results_2021-04-06.rds"))
saveRDS(season, here("results/rf results/longbow results/seasonality_results.RDS"))

season_birth <-  readRDS(here("results","rf results","raw longbow results","seasonality_birth_results_2021-04-06.rds"))
saveRDS(season_birth, here("results/rf results/longbow results/seasonality_birth_results.RDS"))

season_cont_rf <- readRDS(here("results","rf results","raw longbow results","seasonality_rf_cont_results_2021-04-04.rds"))
saveRDS(season_cont_rf, here("results/rf results/longbow results/season_cont_rf_results.RDS"))

season_bin_rf <- readRDS(here("results","rf results","raw longbow results","seasonality_rf_bin_results_2021-04-04.rds"))
saveRDS(season_bin_rf, here("results/rf results/longbow results/season_bin_rf_results.RDS"))

mediation <- readRDS(here("results","rf results","raw longbow results","mediation_2021-04-04.RDS"))
saveRDS(season_bin_rf, here("results/rf results/longbow results/mediation.RDS"))


optx_results <- readRDS(here("results/rf results/raw longbow results/opttx_vim_results_2021-04-05.RDS"))   
saveRDS(optx_results, here("results/rf results/longbow results/opttx_vim_results.RDS"))

