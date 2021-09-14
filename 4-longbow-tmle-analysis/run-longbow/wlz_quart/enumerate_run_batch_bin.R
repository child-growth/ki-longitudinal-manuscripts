

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

setwd(here("4-longbow-tmle-analysis","run-longbow","wlz_quart"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)

#Set to binary
default_params$script_params$count_Y <- TRUE

#load(here("sprint_7D_longbow","Manuscript analysis","adjusted_continuous.rdata"))
load(here("4-longbow-tmle-analysis","analysis specification","adjusted_binary_lagwhz.rdata"))

#Add in a non-age stratified version
analyses_unstrat <- analyses
analyses_unstrat$strata[[1]] <- c("studyid", "country")
analyses_unstrat$strata[[2]] <- c("studyid", "country")

analyses <- rbind(analyses, analyses_unstrat)

#Change analyses to list form
ghapdata_dir <-"C:/Users/andre/Downloads/"
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

"/data/KI/UCB-SuperLearner/Manuscript analysis data/stuntCI_whz_rf.Rdata"

BV_dir <- res_dir <- paste0(here(),"/results")


run_ki_tmle(enumerated_analyses, results_folder="stunt_bin_wlz_quart", overwrite = T)


