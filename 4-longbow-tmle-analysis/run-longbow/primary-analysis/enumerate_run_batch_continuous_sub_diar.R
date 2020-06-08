
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

setwd(here("4-longbow-tmle-analysis","run-longbow","primary-analysis"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)

#Set to continious
default_params$script_params$count_Y <- FALSE

load(here("4-longbow-tmle-analysis","analysis specification","adjusted_continuous_diar2.Rdata"))

default_params$script_params$count_Y <- FALSE


enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)


writeLines(jsonlite::toJSON(enumerated_analyses),"diar_analyses.json")




# 2. run batch
configure_cluster(here("0-project-functions","cluster_credentials.json"))


rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")




# send the batch to longbow (with provisioning disabled)
batch_inputs <- "diar_analyses.json"
batch_id <- run_on_longbow(rmd_filename, batch_inputs, provision = FALSE)
batch_id

# wait for the batch to finish and track progress
wait_for_batch(batch_id)

# download the longbow outputs
get_batch_results(batch_id, results_folder="results_diar")
length(dir("results_diar"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata","results_diar")
obs_counts <- load_batch_results("obs_counts.rdata","results_diar")

# save concatenated results
filename1 <- paste(paste('results_cont_diar',Sys.Date( ),sep='_'),'RDS',sep='.')
filename2 <- paste(paste('results_cont_obs_count_diars',Sys.Date( ),sep='_'),'RDS',sep='.')
saveRDS(results, file=here("results","rf results","raw longbow results",filename1))
saveRDS(obs_counts, file=here("results","rf results","raw longbow results",filename2))
