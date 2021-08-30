
rm(list=ls())
.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/4.0/" , .libPaths() ) )

source(paste0(here::here(), "/0-config.R"))
.libPaths( "~/rlibs" )
library(data.table)
library(longbowtools)
library(jsonlite)
library(progress)
library(longbowRiskFactors)
library(longbowOptTX)

# 1. enumerate analysis

setwd(here("4-longbow-tmle-analysis","run-longbow","optimal-intervention-analysis"))
inputs <- "inputs_template.json"
default_params <- fromJSON(inputs)


# # Continious
load(here("4-longbow-tmle-analysis","analysis specification","seasonality_rf_Zscore_analyses.rdata"))
default_params$script_params$maximize <- TRUE
default_params$script_params$count_Y <- FALSE

analyses <- analyses %>% filter(Y %in% c("haz","whz"))

enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

run_ki_tmle(enumerated_analyses, results_folder="opttx_vim_season", overwrite = F, skip_failed=F,
            rmd_filename = here("4-longbow-tmle-analysis/run-longbow/longbow_OptTX.Rmd"))

