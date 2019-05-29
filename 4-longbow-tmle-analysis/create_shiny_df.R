
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))


d_adj <- readRDS(paste0(here::here(),"/results/rf results/full_RF_results.rds"))
d_unadj <- readRDS(paste0(here::here(),"/results/rf results/full_RF_unadj_results.rds"))

d <- rbind(d_adj, d_unadj)
d$pooled <- 0

d <- d %>% rename(RR = estimate, RR.CI1 = ci_lower, RR.CI2 = ci_upper)

dRR <- readRDS(paste0(here::here(),"/results/rf results/pooled_RR_results.rds"))

head(d)
head(dRR)

dRR$adjusted = 1
dRR$pooled = 1


df <- bind_rows(d, dRR)

df <- df %>% filter(type=="RR")


saveRDS(df, paste0(here::here(),"/6-shiny-app/RF app/shiny_rf_results.rds"))



library(rsconnect)
rsconnect::deployApp('C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/6-shiny-app/RF app')
