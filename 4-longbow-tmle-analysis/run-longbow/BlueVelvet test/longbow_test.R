
rm(list=ls())
.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/3.6/" , .libPaths() ) )
source(paste0(here::here(), "/0-config.R"))

library(longbowtools)
library(progress)
library(longbowRiskFactors)
library(jsonlite)

#get IP address
system("ifconfig", intern=TRUE)

#setwd('~/Desktop/sprint_7D_longbow/adjusted_binary/')
# setwd("~/Dropbox/gates/sprint_7D_longbow/adjusted_binary/")
setwd(here("4-longbow-tmle-analysis","run-longbow","primary-analysis"))
inputs <- "inputs_template.json"
default_params <- fromJSON(inputs)
#Set to continious
default_params$script_params$count_Y <- FALSE

load(here("4-longbow-tmle-analysis","analysis specification","adjusted_continuous.rdata"))

analyses$file <- "data/birthwt_data.csv"

#Drop growth velocity
analyses <- analyses %>% filter(Y=="haz" | Y=="whz")
analyses <- analyses[1:2,]

i=1
enumerated_analyses <- lapply(seq_len(nrow(analyses)),function(i){
  analysis <- analyses[i,]
  analysis_params <- default_params
  analysis_nodes <- as.list(analysis)[c("W","A","Y","strata","id")]
  analysis_nodes$W <- NULL
  analysis_nodes$strata <- NULL
  analysis_nodes$Y <- "haz"
  analysis_nodes$A <- "sex"
  analysis_nodes$id <- "subjid"
  analysis_params$nodes <- analysis_nodes
  analysis_params$data$repository_path <- analysis$file
  return(analysis_params)
})


rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")

inputs <- "inputs_template.json"



writeLines(toJSON(enumerated_analyses[[1]]),"single_cont_analysis.json")
writeLines(toJSON(enumerated_analyses),"all_cont_analyses.json")


# 2. run batch

configure_cluster(here("0-project-functions","cluster_credentials.json"))

rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")
# inputs <- "inputs_template.json"
inputs <- "single_cont_analysis.json"

#run test/provisioning job
#run_on_longbow(rmd_filename, inputs, provision = TRUE, backend="bluevelvet")


# send the batch to longbow (with provisioning disabled)
batch_inputs <- "all_cont_analyses.json"
batch_id_cont <- run_on_longbow(rmd_filename, batch_inputs, provision = FALSE, backend="bluevelvet")

# wait for the batch to finish and track progress
wait_for_batch(batch_id_cont)

# download the longbow outputs
get_batch_results(batch_id_cont, results_folder="results_cont")
length(dir("results_cont"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "results_cont")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "results_cont")

# save concatenated results
filename1 <- paste(paste('results_cont',Sys.Date( ),sep='_'),'rdata',sep='.')
filename2 <- paste(paste('results_cont_obs_counts',Sys.Date( ),sep='_'),'rdata',sep='.')
save(results, file=here("results","rf results","raw longbow results",filename1))
save(obs_counts, file=here("results","rf results","raw longbow results",filename2))