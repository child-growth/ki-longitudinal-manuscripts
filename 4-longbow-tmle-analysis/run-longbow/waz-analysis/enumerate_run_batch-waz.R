
rm(list=ls())
try(.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/4.0/" , .libPaths() ) ))

source(paste0(here::here(), "/0-config.R"))
try(.libPaths( "~/rlibs" ))
library(data.table)
library(longbowtools)
library(progress)



# 1. enumerate analysis
setwd(here("4-longbow-tmle-analysis","run-longbow","waz-analysis"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)

#Set to continious
default_params$script_params$count_Y <- FALSE

#load analyses
load(here("4-longbow-tmle-analysis","analysis specification","adjusted_waz.rdata"))

load("/data/KI/UCB-SuperLearner/Manuscript analysis data/uwt_meanZ_rf.Rdata")
head(d)
table(d$fage)

#specify analyses
unique(analyses$A)
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)



#run TMLE
run_ki_tmle(enumerated_analyses, results_folder="waz", overwrite = F, skip_failed=F)

