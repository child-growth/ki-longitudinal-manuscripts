
rm(list=ls())
.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/4.0/" , .libPaths() ) )

source(paste0(here::here(), "/0-config.R"))
.libPaths( "~/rlibs" )
library(data.table)
library(longbowtools)
library(progress)
library(longbowRiskFactors)

# 1. enumerate analysis
setwd(here("4-longbow-tmle-analysis","run-longbow","mortality"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)
default_params$script_params$count_Y <- TRUE

load("/data/KI/UCB-SuperLearner/Manuscript analysis data/stuntwast_morbidity.Rdata")
table(d$ever_sev_co06)
table(d$ever_sunderweight06)

load(here("4-longbow-tmle-analysis","analysis specification","morbidity_analyses.rdata"))
analyses$A

#specify analyses
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

#run TMLE
run_ki_tmle(enumerated_analyses, results_folder="morbidity", overwrite = T, skip_failed=T)
