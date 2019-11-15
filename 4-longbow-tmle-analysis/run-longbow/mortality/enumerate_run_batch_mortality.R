
library(data.table)
library(longbowtools)
library(jsonlite)
library(progress)
library(longbowRiskFactors)
library(here)
#note: every "here" in this script is the working directory where all the repos live on your laptop
#for example: here = "C:/Users/rolan/Documents/repos"


# 1. enumerate analysis

setwd(here("4-longbow-tmle-analysis","run-longbow","mortality"))
inputs <- "inputs_template.json"
default_params <- fromJSON(inputs)
default_params$script_params$count_Y <- TRUE

load(here("4-longbow-tmle-analysis","analysis specification","mortality_analyses.rdata"))
analyses


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

writeLines(toJSON(enumerated_analyses[[1]]),"single_mortality_analyses.json")
writeLines(toJSON(enumerated_analyses),"all_mortality_analyses.json")



# 2. run batch

try(configure_cluster(here("ki-longitudinal-manuscripts","0-project-functions","cluster_credentials.json")))
try(configure_cluster("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/0-project-functions/cluster_credentials.json"))

rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")



# send the batch to longbow (with provisioning disabled)
mort_batch_inputs <- "all_mortality_analyses.json"
mort_batch_id <-  run_on_longbow(rmd_filename, mort_batch_inputs, provision = FALSE)

# wait for the batch to finish and track progress
wait_for_batch(mort_batch_id)

# download the longbow outputs
get_batch_results(mort_batch_id, results_folder="results")
length(dir("results"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "results")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "results")

# save concatenated results
filename1 <- paste(paste('mortality',Sys.Date( ),sep='_'),'rdata',sep='.')
filename2 <- paste(paste('mortality_obs_counts',Sys.Date( ),sep='_'),'rdata',sep='.')
save(results, file=here("results","rf results","raw longbow results",filename1))
save(obs_counts, file=here("results","rf results","raw longbow results",filename2))


