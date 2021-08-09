
rm(list=ls())
try(.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/4.0/" , .libPaths() ) ))

source(paste0(here::here(), "/0-config.R"))
try(.libPaths( "~/rlibs" ))
library(data.table)
library(longbowtools)
#library(jsonlite)
library(progress)
library(longbowRiskFactors)


# 1. enumerate analysis

setwd(here("4-longbow-tmle-analysis","run-longbow","primary-analysis"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)

analyses <- readRDS(here("4-longbow-tmle-analysis","analysis specification","adjusted_binary_analyses_primary.rds"))
table(analyses$A, analyses$Y)
unique(analyses$A)
dim(analyses)
analyses <- analyses %>% filter((Y %in% c("ever_stunted", "ever_wasted"))|
                                (A %in% c("sex","meducyrs","hhwealth_quart","mwtkg")),
                                !(A %in% c("fage_rf", "fhtcm_rf","brthmon",
                                           "enwast","anywast06","pers_wast","trth2o","predfeed3","exclfeed3",
                                           "predfeed6","exclfeed6","predfeed36","exclfeed36","month","enstunt")))
dim(analyses)



enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

run_ki_tmle(enumerated_analyses, results_folder="results_bin_primary_tz", overwrite = F, skip_failed=T,
            rmd_filename = here("4-longbow-tmle-analysis/run-longbow/longbow_RiskFactors_tanzania.Rmd"))
