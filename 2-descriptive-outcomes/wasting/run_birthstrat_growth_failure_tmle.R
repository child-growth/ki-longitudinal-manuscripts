
rm(list=ls())
.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/4.0/" , .libPaths() ) )

source(paste0(here::here(), "/0-config.R"))
.libPaths( "~/rlibs" )
library(data.table)
library(longbowtools)
#library(jsonlite)
library(progress)
library(longbowRiskFactors)

# 1. enumerate analysis

setwd(here("4-longbow-tmle-analysis","run-longbow","early wast"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)

load(here("4-longbow-tmle-analysis","analysis specification","birthwast_strat_analyses.rdata"))
analyses<-analyses %>% filter(!grepl("co_",A),A!="agecat",Y!="agecat")

enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

run_ki_tmle(enumerated_analyses, results_folder="results_birthstrat_later_failure", overwrite = T,  rmd_filename = here("4-longbow-tmle-analysis/run-longbow/longbow_RiskFactors_rare_outcomes.Rmd"))
