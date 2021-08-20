
rm(list=ls())
.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/4.0/" , .libPaths() ) )

source(paste0(here::here(), "/0-config.R"))
.libPaths( "~/rlibs" )
library(data.table)
library(longbowtools)
library(progress)
library(longbowRiskFactors)

# 1. enumerate analysis
setwd(here("4-longbow-tmle-analysis","run-longbow","mortality"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)
default_params$script_params$count_Y <- TRUE

load("/data/KI/UCB-SuperLearner/Manuscript analysis data/stuntwast_morbidity.Rdata")

#Ns for figure legend
d_perswast <- d %>% filter(!is.na(pers_wasted624))
length(unique(paste0(d_perswast$studyid,"-",d_perswast$country)))
length(unique(paste0(d_perswast$studyid,"-",d_perswast$country,"-",d_perswast$subjid)))
table(d$pers_wasted624)

d_co <- d %>% filter(!is.na(co_occurence))
length(unique(paste0(d_co$studyid,"-",d_co$country)))
length(unique(paste0(d_co$studyid,"-",d_co$country,"-",d_co$subjid)))
nrow(d_co)
table(d$co_occurence)


load(here("4-longbow-tmle-analysis","analysis specification","morbidity_analyses.rdata"))
analyses$A

#specify analyses
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

#run TMLE
run_ki_tmle(enumerated_analyses, results_folder="morbidity", overwrite = T, skip_failed=T)
