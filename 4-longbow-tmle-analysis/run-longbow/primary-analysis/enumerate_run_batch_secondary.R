
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

analyses_prim <- readRDS(here("4-longbow-tmle-analysis","analysis specification","adjusted_binary_analyses_primary.rds"))
load(here("4-longbow-tmle-analysis","analysis specification","adjusted_binary_analyses.rdata"))
#only run secondary- primary in seperate script
dim(analyses)
dim(analyses_prim)
analyses <- anti_join(analyses, analyses_prim, by = c("A","Y","id","strata", "W"))
analyses <- analyses %>% filter(A!="fage_rf",A!="fhtcm_rf", Y!="swasted", Y!="sstunted")
analyses <- analyses %>% filter(A!="pers_wast",A!="anywast06", A!="enstunt", A!="enwast")
dim(analyses)

table(analyses_prim$A, analyses_prim$Y)
table(analyses$A, analyses$Y)

enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)


paste0(BV_dir,"/tmle/","results_bin_secondary","/")
run_ki_tmle(enumerated_analyses, results_folder="results_bin_secondary", overwrite = F, skip_failed=F)
