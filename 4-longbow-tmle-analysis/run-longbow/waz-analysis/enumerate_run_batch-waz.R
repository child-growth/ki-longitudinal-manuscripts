
rm(list=ls())
try(.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/3.6/" , .libPaths() ) ))

source(paste0(here::here(), "/0-config.R"))
try(.libPaths( "~/rlibs" ))
library(data.table)
library(longbowtools)
library(jsonlite)
library(progress)



# 1. enumerate analysis
setwd(here("4-longbow-tmle-analysis","run-longbow","waz-analysis"))
inputs <- "inputs_template.json"
default_params <- fromJSON(inputs)

#Set to continious
default_params$script_params$count_Y <- FALSE

#load analyses
load(here("4-longbow-tmle-analysis","analysis specification","adjusted_waz.rdata"))


#specify analyses
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)


writeLines(toJSON(enumerated_analyses[[17]]),"single_waz_analysis.json")
writeLines(toJSON(enumerated_analyses),"all_waz_analyses.json")


# 2. run batch
configure_cluster(here("0-project-functions","cluster_credentials.json"))

rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")
inputs <- "single_waz_analysis.json"

#run test/provisioning job
#run_on_longbow(rmd_filename, inputs, provision = TRUE)

# send the batch to longbow (with provisioning disabled)
batch_inputs <- "all_waz_analyses.json"
batch_id_waz <- run_on_longbow(rmd_filename, batch_inputs, provision = FALSE)
batch_id_waz

# wait for the batch to finish and track progress
wait_for_batch(batch_id_waz)

# download the longbow outputs
get_batch_results(batch_id_waz, results_folder="results_waz")
length(dir("results_waz"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "results_waz")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "results_waz")

# save concatenated results
filename1 <- paste(paste('results_waz',Sys.Date( ),sep='_'),'RDS',sep='.')
filename2 <- paste(paste('results_waz_obs_counts',Sys.Date( ),sep='_'),'RDS',sep='.')
saveRDS(results, file=here("results","rf results","raw longbow results",filename1))
saveRDS(obs_counts, file=here("results","rf results","raw longbow results",filename2))
