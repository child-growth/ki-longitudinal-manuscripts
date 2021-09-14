
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

analyses <- analyses %>% filter(A=="fage")  
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

load("/data/KI/UCB-SuperLearner/Manuscript analysis data/st_cuminc_rf_primary.rdata")
table(d$fage)
table(d$country)

load("/data/KI/UCB-SuperLearner/Manuscript analysis data/pers_wast_rf_primary.rdata")
table(d$agecat, d$fage)

run_ki_tmle(enumerated_analyses, results_folder="bin_primary_fage", overwrite = T, skip_failed=F)
