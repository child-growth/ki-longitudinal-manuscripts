

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))


#Load data
load("C:/Users/andre/Downloads/seasonality_rf.Rdata")

d <- readRDS("C:/Users/andre/Downloads/seasonality_rf_data.rds")
head(d)

d %>% group_by()

median(df$wasting_duration, na.rm=T)
#Quantile CI's'
sort(df$wasting_duration)[qbinom(c(.025,.975), length(df$wasting_duration), 0.5)]
