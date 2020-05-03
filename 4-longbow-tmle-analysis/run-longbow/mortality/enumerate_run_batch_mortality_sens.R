
#Run mortality analysis dropping children without measurements in the first month of life

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

load(here("4-longbow-tmle-analysis","analysis specification","mortality_analyses_sens.rdata"))
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

writeLines(toJSON(enumerated_analyses[[1]]),"single_mortality_analyses.json")
writeLines(toJSON(enumerated_analyses),"all_mortality_analyses.json")



# 2. run batch

configure_cluster(here("0-project-functions","cluster_credentials.json"))
rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")



#run test/provisioning job
# inputs <- "single_mortality_analyses.json"
# run_on_longbow(rmd_filename, inputs, provision = TRUE)
# 

# send the batch to longbow (with provisioning disabled)
mort_batch_inputs <- "all_mortality_analyses.json"
mort_batch_id <-  run_on_longbow(rmd_filename, mort_batch_inputs, provision = FALSE)
mort_batch_id
# wait for the batch to finish and track progress
wait_for_batch(mort_batch_id)

# download the longbow outputs
get_batch_results(mort_batch_id, results_folder="results_sens")
length(dir("results_sens"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "results_sens")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "results_sens")

# save concatenated results
filename1 <- paste(paste('mortality_sens',Sys.Date( ),sep='_'),'RDS',sep='.')
filename2 <- paste(paste('mortality_obs_counts_sens',Sys.Date( ),sep='_'),'RDS',sep='.')
saveRDS(results, file=here("results","rf results","raw longbow results",filename1))
saveRDS(obs_counts, file=here("results","rf results","raw longbow results",filename2))


