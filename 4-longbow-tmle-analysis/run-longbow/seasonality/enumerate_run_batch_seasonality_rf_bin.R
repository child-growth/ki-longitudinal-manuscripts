

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
setwd(here("4-longbow-tmle-analysis","run-longbow","seasonality"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)

#Set to continious
default_params$script_params$count_Y <- TRUE

load(here("4-longbow-tmle-analysis","analysis specification","seasonality_rf_prev_analyses.rdata"))
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)


writeLines(jsonlite::toJSON(enumerated_analyses),"seasonality_rf_bin_analyses.json")


# 2. run batch
configure_cluster(here("0-project-functions","cluster_credentials.json"))
rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")

# send the batch to longbow (with provisioning disabled)
batch_inputs <- "seasonality_rf_bin_analyses.json"
batch_id_bin <- run_on_longbow(rmd_filename, batch_inputs, provision = FALSE)
batch_id_bin

# wait for the batch to finish and track progress
wait_for_batch(batch_id_bin)

# download the longbow outputs
get_batch_results(batch_id_bin, results_folder="seasonality_rf_bin_results")
length(dir("seasonality_rf_bin_results"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "seasonality_rf_bin_results")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "seasonality_rf_bin_results")

# save concatenated results
filename1 <- paste(paste('seasonality_rf_bin_results',Sys.Date( ),sep='_'),'RDS',sep='.')
filename2 <- paste(paste('seasonality_rf_bin_results_obs_counts',Sys.Date( ),sep='_'),'RDS',sep='.')
saveRDS(results, file=here("results","rf results","raw longbow results",filename1))
saveRDS(obs_counts, file=here("results","rf results","raw longbow results",filename2))
