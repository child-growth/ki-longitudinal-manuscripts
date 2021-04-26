
rm(list=ls())
try(.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/4.0/" , .libPaths() ) ))

source(paste0(here::here(), "/0-config.R"))
try(.libPaths( "~/rlibs" ))
library(data.table)
library(longbowtools)
#library(jsonlite)
library(progress)
library(longbowRiskFactors)


# 1. enumerate analysis

setwd(here("4-longbow-tmle-analysis","run-longbow","primary-analysis"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)
analyses <- readRDS(here("4-longbow-tmle-analysis","analysis specification","adjusted_binary_analyses_primary.rds"))
analyses <- analyses %>% filter(A=="hhwealth_quart")

enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

writeLines(jsonlite::toJSON(enumerated_analyses[[5]]),"single_wealth_analysis.json")
writeLines(jsonlite::toJSON(enumerated_analyses),"all_wealth_analyses.json")



# 2. run batch

configure_cluster(here("0-project-functions","cluster_credentials.json"))

rmd_filename <- here("4-longbow-tmle-analysis/run-longbow/longbow_RiskFactors.Rmd")
# inputs <- "inputs_template.json"
inputs <- "single_wealth_analysis.json"

#run test/provisioning job
#run_on_longbow(rmd_filename, inputs, provision = TRUE)

# send the batch to longbow (with provisioning disabled)
bin_batch_inputs <- "all_wealth_analyses.json"
bin_batch_id <-  run_on_longbow(rmd_filename, bin_batch_inputs, provision = FALSE)
bin_batch_id

# wait for the batch to finish and track progress
wait_for_batch(bin_batch_id)

# download the longbow outputs
get_batch_results(bin_batch_id, results_folder="results_wealth")
length(dir("results_wealth"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "results_bin_wealth")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "results_bin_wealth")

# save concatenated results
filename1 <- paste(paste('results_bin_wealth',Sys.Date( ),sep='_'),'RDS',sep='.')
filename2 <- paste(paste('results_bin_wealth_obs_counts',Sys.Date( ),sep='_'),'RDS',sep='.')
saveRDS(results, file=paste0(res_dir,"rf results/raw longbow results/",filename1))
saveRDS(obs_counts, file=paste0(res_dir,"rf results/raw longbow results/",filename2))

