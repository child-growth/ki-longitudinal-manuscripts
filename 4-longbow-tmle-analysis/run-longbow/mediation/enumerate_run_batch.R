
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
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)


writeLines(jsonlite::toJSON(enumerated_analyses[[1]]),"single_mediation_analyses.json")
writeLines(jsonlite::toJSON(enumerated_analyses),"all_mediation_analyses.json")



# 2. run batch

configure_cluster(here("0-project-functions","cluster_credentials.json"))

rmd_filename <- here("4-longbow-tmle-analysis/run-longbow/longbow_RiskFactors.Rmd")

# send the batch to longbow (with provisioning disabled)
med_batch_inputs <- "all_mediation_analyses.json"
med_batch_id <-  run_on_longbow(rmd_filename, med_batch_inputs, provision = FALSE)
med_batch_id

# wait for the batch to finish and track progress
wait_for_batch(med_batch_id)

# download the longbow outputs
get_batch_results(med_batch_id, results_folder="mediation")
length(dir("/data/KI/ki-manuscript-output/longbow/mediation"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "mediation")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "mediation")

# save concatenated results
filename1 <- paste(paste('mediation',Sys.Date( ),sep='_'),'RDS',sep='.')
filename2 <- paste(paste('mediation_obs_counts',Sys.Date( ),sep='_'),'RDS',sep='.')
saveRDS(results, file=paste0(res_dir,"rf results/raw longbow results/",filename1))
saveRDS(obs_counts, file=paste0(res_dir,"rf results/raw longbow results/",filename2))



