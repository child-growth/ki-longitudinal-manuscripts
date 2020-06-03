
rm(list=ls())
.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/3.6/" , .libPaths() ) )

source(paste0(here::here(), "/0-config.R"))
.libPaths( "~/rlibs" )
library(data.table)
library(longbowtools)
#library(jsonlite)
library(progress)
library(longbowRiskFactors)

# 1. enumerate analysis

setwd(here("4-longbow-tmle-analysis","run-longbow","early wast"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)

load(here("4-longbow-tmle-analysis","analysis specification","earlywast_strat_analyses.rdata"))
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

#writeLines(jsonlite::toJSON(enumerated_analyses[[1]]),"single_bin_analysis.json")
writeLines(jsonlite::toJSON(enumerated_analyses),"all_bin_analyses.json")



# 2. run batch

configure_cluster(here("0-project-functions","cluster_credentials.json"))

rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")
# inputs <- "inputs_template.json"
#inputs <- "single_bin_analysis.json"



# send the batch to longbow (with provisioning disabled)
bin_batch_inputs <- "all_bin_analyses.json"
bin_batch_id <-  run_on_longbow(rmd_filename, bin_batch_inputs, provision = FALSE)
bin_batch_id

# wait for the batch to finish and track progress
wait_for_batch(bin_batch_id)

# download the longbow outputs
get_batch_results(bin_batch_id, results_folder="results_early_wast")
length(dir("results_early_wast"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "results_early_wast")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "results_early_wast")

# save concatenated results
filename1 <- paste(paste('results_early_wast',Sys.Date( ),sep='_'),'RDS',sep='.')
filename2 <- paste(paste('results_early_wast_obs_counts',Sys.Date( ),sep='_'),'RDS',sep='.')
saveRDS(results, file=here("results","rf results","raw longbow results",filename1))
saveRDS(obs_counts, file=here("results","rf results","raw longbow results",filename2))
