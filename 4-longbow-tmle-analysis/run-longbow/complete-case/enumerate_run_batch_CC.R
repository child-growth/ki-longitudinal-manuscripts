
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

unique(analyses$Y)
analyses <- analyses %>% filter(A!="pers_wast",A!="anywast06", A!="enstunt", A!="enwast", Y %in% c("ever_stunted","ever_wasted"))
analyses <- analyses %>% filter(A!="fage_rf",A!="fhtcm_rf") %>% mutate(Y=factor(Y, levels=rev(c("pers_wast", "ever_wasted","ever_swasted" ,   "ever_stunted", "ever_sstunted" )))) %>%
  arrange(Y) %>% mutate(Y=as.character(Y))
head(analyses)

specify_longbow_cc <- function(j, analyses_df=analyses, params=default_params){
  params$data$uri <- ghapdata_dir
  params$data$repository_path <- NULL
  
  analysis <- analyses_df[j,]
  analysis_params <- params
  analysis_nodes <- as.list(analysis)[c("W","A","Y","strata","id")]
  analysis_nodes$W[[1]] <- gsub("W_bmi", "W_mbmi", analysis_nodes$W[[1]])
  #analysis_nodes$W <- gsub("W_", "", analysis_nodes$W[[1]]) #use categorical where possible
  analysis_nodes$strata <- analysis$strata[[1]]
  analysis_params$nodes <- analysis_nodes
  analysis_params$data$uri <- paste0(analysis_params$data$uri, analysis$file)
  analysis_params$script_params$parallelize <- TRUE
  return(analysis_params)
}

enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow_cc)


#enumerated_analyses <- enumerated_analyses[15:16]

#update to use categorical variables

paste0(BV_dir,"/tmle/","results_bin_CC","/")
run_ki_tmle(enumerated_analyses, results_folder="results_bin_CC", overwrite = F, skip_failed=F, rmd_filename = here("4-longbow-tmle-analysis/run-longbow/longbow_RiskFactors_CC.Rmd"))

