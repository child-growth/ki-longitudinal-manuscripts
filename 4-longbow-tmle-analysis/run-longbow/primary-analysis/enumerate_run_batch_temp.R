
source(paste0(here::here(), "/0-config.R"))
library(data.table)
library(longbowtools)
library(jsonlite)
library(progress)
library(longbowRiskFactors)


configure_cluster(here("0-project-functions","cluster_credentials.json"))

bin_batch_id <- 60116
bin_batch_id

# wait for the batch to finish and track progress
wait_for_batch(bin_batch_id)

# download the longbow outputs
get_batch_results(bin_batch_id, results_folder="results_bin")
length(dir("results_bin"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "results_bin")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "results_bin")

# save concatenated results
filename1 <- paste(paste('results_bin',Sys.Date( ),sep='_'),'RDS',sep='.')
filename2 <- paste(paste('results_bin_obs_counts',Sys.Date( ),sep='_'),'RDS',sep='.')
saveRDS(results, file=here("results","rf results","raw longbow results",filename1))
saveRDS(obs_counts, file=here("results","rf results","raw longbow results",filename2))
