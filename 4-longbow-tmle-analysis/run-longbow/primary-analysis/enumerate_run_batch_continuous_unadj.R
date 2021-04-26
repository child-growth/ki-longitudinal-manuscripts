
rm(list=ls())
.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/4.0/" , .libPaths() ) )

source(paste0(here::here(), "/0-config.R"))
.libPaths( "~/rlibs" )
library(data.table)
library(longbowtools)
library(jsonlite)
library(progress)
library(longbowRiskFactors)


# 1. enumerate analysis

setwd(here("4-longbow-tmle-analysis","run-longbow","primary-analysis"))
inputs <- "inputs_template.json"
default_params <- fromJSON(inputs)

#Set to continious
default_params$script_params$count_Y <- FALSE

#load(here("sprint_7D_longbow","Manuscript analysis","adjusted_continuous.rdata"))
load(here("4-longbow-tmle-analysis","analysis specification","unadjusted_continuous.rdata"))
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)


writeLines(toJSON(enumerated_analyses),"all_cont_unadj_analyses.json")


# 2. run batch
configure_cluster(here("0-project-functions","cluster_credentials.json"))

rmd_filename <- here("4-longbow-tmle-analysis/run-longbow/longbow_RiskFactors.Rmd")


# send the batch to longbow (with provisioning disabled)
batch_inputs <- "all_cont_unadj_analyses.json"
batch_id_cont <- run_on_longbow(rmd_filename, batch_inputs, provision = FALSE)
batch_id_cont

# wait for the batch to finish and track progress
wait_for_batch(batch_id_cont)

# download the longbow outputs
get_batch_results(batch_id_cont, results_folder="results_cont_unadj")
length(dir("results_cont_unadj"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "results_cont_unadj")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "results_cont_unadj")

# save concatenated results
filename1 <- paste(paste('results_cont_unadj',Sys.Date( ),sep='_'),'RDS',sep='.')
filename2 <- paste(paste('results_cont_unadj_obs_counts',Sys.Date( ),sep='_'),'RDS',sep='.')
saveRDS(results, file=paste0(res_dir,"rf results/raw longbow results/",filename1))
saveRDS(obs_counts, file=paste0(res_dir,"rf results/raw longbow results/",filename2))
