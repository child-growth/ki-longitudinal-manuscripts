
library(data.table)
library(longbowtools)
library(jsonlite)
library(progress)
library(longbowRiskFactors)
library(longbowOptTX)
library(tidyverse)
library(here)
#note: every "here" in this script is the working directory where all the repos live on your laptop
#for example: here = "C:/Users/rolan/Documents/repos"



# 1. enumerate analysis

setwd(here("4-longbow-tmle-analysis","run-longbow","optimal-intervention-analysis"))
inputs <- "inputs_template.json"
default_params <- fromJSON(inputs)

#Load existing results
load(here("results/rf results/raw longbow results/opttx_vim_results_2019-11-18.rdata"))   


# # Continious
#load(here("sprint_7D_longbow","Manuscript analysis","adjusted_continuous.rdata"))
load(here("4-longbow-tmle-analysis","analysis specification","adjusted_continuous.rdata"))
analyses$count_Y <- FALSE
analyses$maximize <- TRUE


#Subset analysis to jobs not yet run
analyses <- analyses %>% filter(Y %in% c("whz","haz"))
analyses <- analyses %>% filter((Y == "whz" & !(A %in% results$intervention_variable[results$outcome_variable=="whz"])) |
                                (Y == "haz" & !(A %in% results$intervention_variable[results$outcome_variable=="haz"])))
table(analyses$A, analyses$Y)

#analyses_2 <- analyses
#analyses <- rbindlist(list(analyses_2, analyses_1), fill=TRUE)
analyses$file <- sprintf("Manuscript analysis data/%s",analyses$file)
analyses <- analyses %>% filter(!(A %in% c("sex","brthmon", "month","gagebrth","birthwt","birthlen", "enstunt", "vagbrth")))




i=1
enumerated_analyses <- lapply(seq_len(nrow(analyses)),function(i){
  analysis <- analyses[i,]
  analysis_params <- default_params
  analysis_nodes <- as.list(analysis)[c("W","A","Y","strata","id")]
  analysis_nodes$W <- gsub("W_bmi", "W_mbmi", analysis_nodes$W[[1]])
  analysis_params$nodes <- analysis_nodes
  analysis_params$data$repository_path <- analysis$file
  analysis_params$script_params$count_Y <- analysis$count_Y
  analysis_params$script_params$maximize <- analysis$maximize
  return(analysis_params)
})

writeLines(toJSON(enumerated_analyses),"sub_analyses.json")




# 2. run batch

configure_cluster(here("0-project-functions","cluster_credentials.json"))


rmd_filename <- system.file("templates/longbow_OptTX.Rmd", package="longbowOptTX")




# send the batch to longbow (with provisioning disabled)
batch_inputs <- "sub_analyses.json"
batch_id <- run_on_longbow(rmd_filename, batch_inputs, provision = FALSE)

# wait for the batch to finish and track progress
wait_for_batch(batch_id)

# download the longbow outputs
get_batch_results(batch_id, results_folder="results_subset")
length(dir("results_subset"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata","results_subset")
obs_counts <- load_batch_results("obs_counts.rdata","results_subset")

# save concatenated results
filename1 <- paste(paste('opttx_vim_results_subset',Sys.Date( ),sep='_'),'rdata',sep='.')
filename2 <- paste(paste('opttx_vim_obs_count_subsets',Sys.Date( ),sep='_'),'rdata',sep='.')
save(results, file=here("results","rf results","raw longbow results",filename1))
save(obs_counts, file=here("results","rf results","raw longbow results",filename2))


