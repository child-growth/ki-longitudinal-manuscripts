
source(paste0(here::here(), "/0-config.R"))
library(data.table)
library(longbowtools)
library(jsonlite)
library(progress)
library(longbowRiskFactors)


configure_cluster(here("0-project-functions","cluster_credentials.json"))

batch_id_cont <- 61347
batch_id_cont

# wait for the batch to finish and track progress
wait_for_batch(batch_id_cont)

# download the longbow outputs
get_batch_results(batch_id_cont, results_folder="results_cont")
length(dir("results_cont"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "results_cont")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "results_cont")

# save concatenated results
filename1 <- paste(paste('results_cont',Sys.Date( ),sep='_'),'RDS',sep='.')
filename2 <- paste(paste('results_cont_obs_counts',Sys.Date( ),sep='_'),'RDS',sep='.')
saveRDS(results, file=here("results","rf results","raw longbow results",filename1))
saveRDS(obs_counts, file=here("results","rf results","raw longbow results",filename2))
