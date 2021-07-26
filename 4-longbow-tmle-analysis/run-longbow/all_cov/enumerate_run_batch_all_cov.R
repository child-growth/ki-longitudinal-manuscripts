
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
analyses <- analyses %>% filter(Y=="haz" | Y=="whz")
dim(analyses)

#use just 24 month dataset
analyses$file <- gsub("rf.Rdata","rf_prim.Rdata",analyses$file)

#check data
load("/data/KI/UCB-SuperLearner/Manuscript analysis data/wast_meanZ_rf_prim.Rdata")
table(d$agecat)
load("/data/KI/UCB-SuperLearner/Manuscript analysis data/st_meanZ_rf_prim.Rdata")
table(d$agecat)
table(d$studyid, !is.na(d$fhtcm))
#replace covariates
load(paste0(BV_dir,"/results/adjustment_sets_list_all_cov.Rdata"))
for(i in 1:nrow(analyses)){
  analyses$W[[i]] <- gsub("W_bmi", "W_mbmi", analyses$W[[i]])
  analyses$W[[i]] <- adjustment_sets_all_cov[[1]][!(adjustment_sets_all_cov[[1]] %in% c(analyses$A[[i]],"enwast", "anywast06"))]
}

# unique(unlist(analyses$W))
# unique(unlist(analyses$W))[!(unique(unlist(analyses$W)) %in% colnames(d))]
# colnames(d)[!(colnames(d) %in% unique(unlist(analyses$W)))]

#specify analyses
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)


run_ki_tmle(enumerated_analyses, results_folder="results_full_cov", overwrite = F)
