
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

setwd(here("4-longbow-tmle-analysis","run-longbow","mediation"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)
default_params$script_params$count_Y <- FALSE

load(here("4-longbow-tmle-analysis","analysis specification","mediation.RData"))
analyses

analyses <- analyses %>% filter(A %in% c("fhtcm","mhtcm","mwtkg","mbmi"))
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)


writeLines(jsonlite::toJSON(enumerated_analyses[[1]]),"single_mediation_analyses.json")
writeLines(jsonlite::toJSON(enumerated_analyses),"all_mediation_analyses.json")



# 2. run batch

configure_cluster(here("0-project-functions","cluster_credentials.json"))

rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")
#inputs <- "inputs_template.json"
#inputs <- "single_bin_analysis.json"

#run test/provisioning job
#run_on_longbow(rmd_filename, inputs, provision = TRUE)

# send the batch to longbow (with provisioning disabled)
med_batch_inputs <- "all_mediation_analyses.json"
med_batch_id <-  run_on_longbow(rmd_filename, med_batch_inputs, provision = FALSE)
med_batch_id

# wait for the batch to finish and track progress
wait_for_batch(med_batch_id)

# download the longbow outputs
get_batch_results(med_batch_id, results_folder="results")
length(dir("results"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "results")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "results")

# save concatenated results
filename1 <- paste(paste('mediation',Sys.Date( ),sep='_'),'RDS',sep='.')
filename2 <- paste(paste('mediation_obs_counts',Sys.Date( ),sep='_'),'RDS',sep='.')
saveRDS(results, file=here("results","rf results","raw longbow results",filename1))
saveRDS(obs_counts, file=here("results","rf results","raw longbow results",filename2))


