
library(data.table)
library(longbowtools)
library(jsonlite)
library(progress)
library(longbowRiskFactors)
library(here)
#note: every "here" in this script is the working directory where all the repos live on your laptop
#for example: here = "C:/Users/rolan/Documents/repos"


# 1. enumerate analysis

setwd(here("4-longbow-tmle-analysis","run-longbow","primary-analysis"))
inputs <- "inputs_template.json"
default_params <- fromJSON(inputs)

load(here("4-longbow-tmle-analysis","analysis specification","adjusted_binary_analyses.rdata"))
analyses <- analyses %>% filter(A == "lag_WHZ_quart")



analyses$file <- sprintf("Manuscript analysis data/%s",analyses$file)

i=1
enumerated_analyses <- lapply(seq_len(nrow(analyses)),function(i){
  analysis <- analyses[i,]
  analysis_params <- default_params
  analysis_nodes <- as.list(analysis)[c("W","A","Y","strata","id")]
  analysis_nodes$W <- gsub("W_bmi", "W_mbmi", analysis_nodes$W[[1]])
  analysis_params$nodes <- analysis_nodes
  analysis_params$data$repository_path <- analysis$file
  return(analysis_params)
})

writeLines(toJSON(enumerated_analyses),"all_bin_analyses_lagwhz.json")



# 2. run batch
configure_cluster(here("0-project-functions","cluster_credentials.json"))

rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")
inputs <- "single_bin_analysis_lagwhz.json"

#run test/provisioning job
run_on_longbow(rmd_filename, inputs, provision = TRUE)

# send the batch to longbow (with provisioning disabled)
bin_batch_inputs <- "all_bin_analyses_lagwhz.json"
bin_batch_id <-  run_on_longbow(rmd_filename, bin_batch_inputs, provision = FALSE)

# wait for the batch to finish and track progress
wait_for_batch(bin_batch_id)

# download the longbow outputs
get_batch_results(bin_batch_id, results_folder="results_bin_lagwhz")
length(dir("results_bin_lagwhz"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "results_bin_lagwhz")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "results_bin_lagwhz")

# save concatenated results
filename1 <- paste(paste('results_bin_lagwhz',Sys.Date( ),sep='_'),'rdata',sep='.')
filename2 <- paste(paste('results_bin_lagwhz_obs_counts',Sys.Date( ),sep='_'),'rdata',sep='.')
save(results, file=here("results","rf results","raw longbow results",filename1))
save(obs_counts, file=here("results","rf results","raw longbow results",filename2))
