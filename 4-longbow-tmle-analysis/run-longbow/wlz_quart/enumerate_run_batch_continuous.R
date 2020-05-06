

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

setwd(here("4-longbow-tmle-analysis","run-longbow","wlz_quart"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)

#Set to continious
default_params$script_params$count_Y <- FALSE

#load(here("sprint_7D_longbow","Manuscript analysis","adjusted_continuous.rdata"))
load(here("4-longbow-tmle-analysis","analysis specification","adjusted_continuous_lagwhz.rdata"))

#Add in a non-age stratified version
analyses_unstrat <- analyses
analyses_unstrat$strata[[1]] <- c("studyid", "country")
analyses_unstrat$strata[[2]] <- c("studyid", "country")

analyses <- rbind(analyses, analyses_unstrat)

#Change analyses to list form
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

writeLines(jsonlite::toJSON(enumerated_analyses[[1]]),"single_cont_analysis.json")
writeLines(jsonlite::toJSON(enumerated_analyses),"all_cont_analyses.json")


# 2. run batch

configure_cluster(here("0-project-functions","cluster_credentials.json"))
rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")
# inputs <- "inputs_template.json"
inputs <- "single_cont_analysis.json"

#run test/provisioning job
#run_on_longbow(rmd_filename, inputs, provision = TRUE)

# send the batch to longbow (with provisioning disabled)
batch_inputs <- "all_cont_analyses.json"
batch_id_cont <- run_on_longbow(rmd_filename, batch_inputs, provision = FALSE)
batch_id_cont

# wait for the batch to finish and track progress
wait_for_batch(batch_id_cont)

# download the longbow outputs
get_batch_results(batch_id_cont, results_folder="results")
length(dir("results"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "results")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "results")

# save concatenated results
filename1 <- paste(paste('vel_wlz_quart',Sys.Date( ),sep='_'),'RDS',sep='.')
filename2 <- paste(paste('vel_wlz_quart_obs_counts',Sys.Date( ),sep='_'),'RDS',sep='.')
saveRDS(results, file=here("results","rf results","raw longbow results",filename1))
saveRDS(obs_counts, file=here("results","rf results","raw longbow results",filename2))
