
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

setwd(here("4-longbow-tmle-analysis","run-longbow","mediation"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)
default_params$script_params$count_Y <- FALSE

load(here("4-longbow-tmle-analysis","analysis specification","mediation.RData"))
analyses

analyses <- analyses %>% filter(A %in% c("fhtcm","mhtcm","mwtkg","mbmi"))


specify_longbow_med<-function(j, analyses_df=analyses, params=default_params){
  params$data$uri <- ghapdata_dir
  params$data$repository_path <- NULL
  
  analysis <- analyses_df[j,]
  analysis_params <- params
  analysis_nodes <- as.list(analysis)[c("W","A","Y","strata","id")]
  analysis_nodes$W <- gsub("W_bmi", "W_mbmi", analysis_nodes$W[[1]])
  analysis_nodes$W <- gsub("vagbrth", "W_sga", analysis_nodes$W)
  analysis_nodes$strata <- analysis$strata[[1]]
  analysis_params$nodes <- analysis_nodes
  analysis_params$data$uri <- paste0(analysis_params$data$uri, analysis$file)
  analysis_params$script_params$parallelize <- TRUE
  return(analysis_params)
}

enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow_med)

paste0(BV_dir,"/tmle/","mediation","/")
run_ki_tmle(enumerated_analyses, results_folder="mediation", overwrite = T)
