
rm(list=ls())
try(.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/4.0/" , .libPaths() ) ))

source(paste0(here::here(), "/0-config.R"))
try(.libPaths( "~/rlibs" ))
library(data.table)
library(longbowtools)
library(progress)
library(longbowRiskFactors)


# 1. enumerate analysis
setwd(here("4-longbow-tmle-analysis","run-longbow","primary-analysis"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)

#Set to continious
default_params$script_params$count_Y <- FALSE

#load analyses
load(here("4-longbow-tmle-analysis","analysis specification","adjusted_continuous.rdata"))

#Drop growth velocity
dim(analyses)
#analyses <- analyses %>% filter(Y=="haz" | Y=="whz", A %in% c("birthwt","birthlen","gagebrth","enwast","enstunt","anywast06","pers_wast"))
analyses <- analyses %>% filter(Y=="haz" | Y=="whz", A %in% c("birthwt","birthlen","gagebrth"))
dim(analyses)


#specify analyses
#analyses$file <- gsub("rf.Rdata","rf_prim.Rdata",analyses$file)

enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)


run_ki_tmle(enumerated_analyses, results_folder="cont_primary_birthwt", overwrite = F)


