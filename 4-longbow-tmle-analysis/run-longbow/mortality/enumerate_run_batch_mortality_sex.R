
rm(list=ls())
.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/3.6/" , .libPaths() ) )

source(paste0(here::here(), "/0-config.R"))
.libPaths( "~/rlibs" )
library(data.table)
library(longbowtools)
library(jsonlite)
library(progress)
library(longbowRiskFactors)

# 1. enumerate analysis
setwd(here("4-longbow-tmle-analysis","run-longbow","mortality"))
inputs <- "inputs_template.json"
default_params <- fromJSON(inputs)
default_params$script_params$count_Y <- TRUE

load(here("4-longbow-tmle-analysis","analysis specification","mortality_analyses_sex.rdata"))
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

writeLines(toJSON(enumerated_analyses),"sex_mortality_analyses.json")



# 2. run batch

configure_cluster(here("0-project-functions","cluster_credentials.json"))
rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")



# send the batch to longbow (with provisioning disabled)
mort_batch_inputs <- "sex_mortality_analyses.json"
mort_batch_id <-  run_on_longbow(rmd_filename, mort_batch_inputs, provision = FALSE)
mort_batch_id
# wait for the batch to finish and track progress
wait_for_batch(mort_batch_id)

# download the longbow outputs
get_batch_results(mort_batch_id, results_folder="results_sex")
length(dir("results_sex"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "results_sex")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "results_sex")

# save concatenated results
filename1 <- paste(paste('mortality_sex',Sys.Date( ),sep='_'),'RDS',sep='.')
filename2 <- paste(paste('mortality_sex_obs_counts',Sys.Date( ),sep='_'),'RDS',sep='.')
saveRDS(results, file=here("results","rf results","raw longbow results",filename1))
saveRDS(obs_counts, file=here("results","rf results","raw longbow results",filename2))


