
rm(list=ls())
.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/4.0/" , .libPaths() ) )

source(paste0(here::here(), "/0-config.R"))
.libPaths( "~/rlibs" )
library(data.table)
library(longbowtools)
library(jsonlite)
library(progress)
library(longbowRiskFactors)

# 1. enumerate analysis
setwd(here("4-longbow-tmle-analysis","run-longbow","mortality"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)
default_params$script_params$count_Y <- TRUE

load(here("4-longbow-tmle-analysis","analysis specification","muac_mortality_analyses.rdata"))
analyses <- analyses %>% filter(Y=="dead624")
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)


#run TMLE
run_ki_tmle(enumerated_analyses, results_folder="muac_mortality", overwrite=FALSE)
