
library(data.table)
library(longbowtools)
library(jsonlite)
library(progress)
library(longbowRiskFactors)
library(here)
#note: every "here" in this script is the working directory where all the repos live on your laptop
#for example: here = "C:/Users/rolan/Documents/repos"


# 1. enumerate analysis

setwd(here("4-longbow-tmle-analysis","run-longbow","one-step sens"))
inputs <- "inputs_template.json"
default_params <- fromJSON(inputs)

#Set to continious
default_params$script_params$count_Y <- FALSE

load(here("4-longbow-tmle-analysis","analysis specification","adjusted_continuous_one_step_sens.rdata"))

#Change analyses to list form
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

writeLines(toJSON(enumerated_analyses[[1]]),"single_1step_analysis.json")
writeLines(toJSON(enumerated_analyses),"all_1step_analyses.json")


# 2. run batch

configure_cluster(here("0-project-functions","cluster_credentials.json"))

rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")
inputs <- "single_1step_analysis.json"

#run test/provisioning job
#run_on_longbow(rmd_filename, inputs, provision = TRUE)

# send the batch to longbow (with provisioning disabled)
batch_inputs <- "all_1step_analyses.json"
batch_id_1step <- run_on_longbow(rmd_filename, batch_inputs, provision = FALSE)
batch_id_1step

# wait for the batch to finish and track progress
wait_for_batch(batch_id_1step)

# download the longbow outputs
get_batch_results(batch_id_1step, results_folder="results_1step")
length(dir("results_1step"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "results_1step")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "results_1step")

# save concatenated results
filename1 <- paste(paste('results_1step',Sys.Date( ),sep='_'),'RDS',sep='.')
filename2 <- paste(paste('results_1step_obs_counts',Sys.Date( ),sep='_'),'RDS',sep='.')
saveRDS(results, file=paste0(res_dir,"rf results/raw longbow results/",filename1))
saveRDS(obs_counts, file=paste0(res_dir,"rf results/raw longbow results/",filename2))

