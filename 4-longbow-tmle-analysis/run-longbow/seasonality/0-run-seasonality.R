
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


source(here("4-longbow-tmle-analysis/run-longbow/seasonality/enumerate_run_batch_seasonality_birth_wast.R"))
source(here("4-longbow-tmle-analysis/run-longbow/seasonality/enumerate_run_batch_seasonality_rf_bin.R"))
source(here("4-longbow-tmle-analysis/run-longbow/seasonality/enumerate_run_batch_seasonality_rf_cont.R"))
source(here("4-longbow-tmle-analysis/run-longbow/seasonality/enumerate_run_batch_seasonality_wast.R"))
