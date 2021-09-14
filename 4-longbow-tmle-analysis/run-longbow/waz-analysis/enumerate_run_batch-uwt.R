
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

setwd(here("4-longbow-tmle-analysis","run-longbow","waz-analysis"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)

load(here("4-longbow-tmle-analysis","analysis specification","adjusted_binary_uwt_analyses.rdata"))
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)


#run TMLE
run_ki_tmle(enumerated_analyses, results_folder="uwt", overwrite = F, skip_failed=F)

