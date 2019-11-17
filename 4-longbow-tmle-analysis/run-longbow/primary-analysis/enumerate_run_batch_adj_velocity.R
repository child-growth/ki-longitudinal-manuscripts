
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

#Set to continious
default_params$script_params$count_Y <- FALSE

#load(here("sprint_7D_longbow","Manuscript analysis","adjusted_continuous.rdata"))
load(here("4-longbow-tmle-analysis","analysis specification","adjusted_continuous.rdata"))

analyses$file <- sprintf("Manuscript analysis data/%s",analyses$file)

#Drop growth velocity
analyses <- analyses %>% filter(Y!="haz" & Y!="whz")

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

writeLines(toJSON(enumerated_analyses[[1]]),"single_cont_analysis.json")
writeLines(toJSON(enumerated_analyses),"all_cont_analyses.json")


# 2. run batch

configure_cluster(here("0-project-functions","cluster_credentials.json"))

rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")
# inputs <- "inputs_template.json"
inputs <- "single_cont_analysis.json"

#run test/provisioning job
run_on_longbow(rmd_filename, inputs, provision = TRUE)

# send the batch to longbow (with provisioning disabled)
batch_inputs <- "all_cont_analyses.json"
batch_id_cont <- run_on_longbow(rmd_filename, batch_inputs, provision = FALSE)

# wait for the batch to finish and track progress
wait_for_batch(batch_id_cont)

# download the longbow outputs
get_batch_results(batch_id_cont, results_folder="results_vel")
length(dir("results_vel"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "results_vel")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "results_vel")

# save concatenated results
filename1 <- paste(paste('results_vel',Sys.Date( ),sep='_'),'rdata',sep='.')
filename2 <- paste(paste('results_vel_obs_counts',Sys.Date( ),sep='_'),'rdata',sep='.')
save(results, file=here("results","rf results","raw longbow results",filename1))
save(obs_counts, file=here("results","rf results","raw longbow results",filename2))
