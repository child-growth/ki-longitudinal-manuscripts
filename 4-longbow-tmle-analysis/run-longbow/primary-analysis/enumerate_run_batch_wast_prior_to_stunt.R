
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

load(file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/adjusted_binary_analyses.rdata"))
analyses <- analyses %>% 
  filter(
    Y=="ever_stunted",
    A %in% c("enwast","anywast06", "pers_wast"))
analyses

load("/data/KI/UCB-SuperLearner/Manuscript analysis data/st_cuminc_nobirth_rf.Rdata")
table(d$country)
table(d$studyid, d$country)
table(d$studyid, d$enwast, d$ever_stunted)

d <- d %>% filter(agecat=="6-24 months")
save(d, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/st_cuminc_624.Rdata")

analyses$file <- gsub("_nobirth_rf.Rdata","_624.Rdata",analyses$file)
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)
enumerated_analyses



run_ki_tmle(enumerated_analyses, results_folder="results_early_wast_ccFig4", overwrite = T)


