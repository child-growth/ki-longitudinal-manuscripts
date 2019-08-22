
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

# # Binary
# load('../Manuscript analysis/adjusted_binary_analyses_sub.rdata')
# analyses$count_Y <- TRUE
# analyses_1 <- analyses

# # Continious
#load(here("sprint_7D_longbow","Manuscript analysis","adjusted_continuous.rdata"))
load(here("4-longbow-tmle-analysis","analysis specification","adjusted_continuous.rdata"))
analyses$count_Y <- FALSE
analyses$maximize <- TRUE

analyses <- analyses %>% filter(Y %in% c("haz","whz"))
analyses <- analyses %>% filter(A=="nchldlt5")

#analyses_2 <- analyses
#analyses <- rbindlist(list(analyses_2, analyses_1), fill=TRUE)
analyses$file <- sprintf("Manuscript analysis data/%s",analyses$file)




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

writeLines(toJSON(enumerated_analyses),"child_analyses.json")




# 2. run batch

configure_cluster(here("0-project-functions","cluster_credentials.json"))


rmd_filename <- system.file("templates/longbow_OptTX.Rmd", package="longbowOptTX")

# send the batch to longbow (with provisioning disabled)
batch_inputs <- "child_analyses.json"
batch_id <- run_on_longbow(rmd_filename, batch_inputs, provision = FALSE)

# wait for the batch to finish and track progress
wait_for_batch(batch_id)

# download the longbow outputs
get_batch_results(batch_id, results_folder="results_nchild")
length(dir("results_nchild"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata","results_nchild")
obs_counts <- load_batch_results("obs_counts.rdata","results_nchild")

# save concatenated results
filename1 <- paste(paste('opttx_vim_nchild_results',Sys.Date( ),sep='_'),'rdata',sep='.')
filename2 <- paste(paste('opttx_vim_nchild_obs_counts',Sys.Date( ),sep='_'),'rdata',sep='.')
save(results, file=here("results","rf results","raw longbow results",filename1))
save(obs_counts, file=here("results","rf results","raw longbow results",filename2))


