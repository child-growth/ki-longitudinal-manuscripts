
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

load("/data/KI/UCB-SuperLearner/Manuscript analysis data/wast_meanZ_rf.Rdata")
d <- d %>% filter(agecat=="24 months") %>% droplevels()
save(d, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/wast_meanZ_rf_prim.Rdata")

load("/data/KI/UCB-SuperLearner/Manuscript analysis data/st_meanZ_rf.Rdata")
d <- d %>% filter(agecat=="24 months")  %>% droplevels()
table(d$country, is.na(d$sex))
table(d$studyid, d$country)

table(d$studyid, d$sga)

head(d)

save(d, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/st_meanZ_rf_prim.Rdata")

analyses$strata
#specify analyses
analyses$file <- gsub("rf.Rdata","rf_prim.Rdata",analyses$file)


specify_longbow_cc <- function(j, analyses_df=analyses, params=default_params){
  params$data$uri <- ghapdata_dir
  params$data$repository_path <- NULL
  
  analysis <- analyses_df[j,]
  analysis_params <- params
  analysis_nodes <- as.list(analysis)[c("W","A","Y","strata","id")]
  analysis_nodes$W[[1]] <- gsub("W_bmi", "W_mbmi", analysis_nodes$W[[1]])
  analysis_nodes$W <- gsub("W_", "", analysis_nodes$W[[1]]) #use categorical where possible
  analysis_nodes$strata <- analysis$strata[[1]]
  analysis_params$nodes <- analysis_nodes
  analysis_params$data$uri <- paste0(analysis_params$data$uri, analysis$file)
  analysis_params$script_params$parallelize <- TRUE
  return(analysis_params)
}


enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow_cc)


run_ki_tmle(enumerated_analyses, results_folder="results_cont_CC", overwrite = F, skip_failed = F, rmd_filename = here("4-longbow-tmle-analysis/run-longbow/longbow_RiskFactors_CC.Rmd"))


