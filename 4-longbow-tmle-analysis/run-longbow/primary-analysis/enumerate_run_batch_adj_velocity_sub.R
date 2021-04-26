

rm(list=ls())
try(.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/4.0/" , .libPaths() ) ))

source(paste0(here::here(), "/0-config.R"))
try(.libPaths( "~/rlibs" ))
library(data.table)
library(longbowtools)
library(jsonlite)
library(progress)
library(longbowRiskFactors)

# 1. enumerate analysis

setwd(here("4-longbow-tmle-analysis","run-longbow","primary-analysis"))
inputs <- "inputs_template.json"
default_params <- fromJSON(inputs)

#Set to continious
default_params$script_params$count_Y <- FALSE

load(here("4-longbow-tmle-analysis","analysis specification","adjusted_continuous.rdata"))

#Load existing results
results <- readRDS(paste0(res_dir,"rf results/longbow results/results_vel.RDS"))   


analyses <- analyses %>% filter(Y!="haz" & Y!="whz")
dim(analyses)
analyses <- analyses %>% filter((Y == "y_rate_haz" & !(A %in% results$intervention_variable[results$outcome_variable=="y_rate_haz"])) |
                                (Y == "y_rate_len" & !(A %in% results$intervention_variable[results$outcome_variable=="y_rate_len"])) |
                                (Y == "y_rate_waz" & !(A %in% results$intervention_variable[results$outcome_variable=="y_rate_waz"])) |
                                (Y == "y_rate_wtkg" & !(A %in% results$intervention_variable[results$outcome_variable=="y_rate_wtkg"])) 
                                )


      
dim(analyses)
table(analyses$A, analyses$Y)


enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

writeLines(toJSON(enumerated_analyses[[1]]),"single_cont_analysis_sub.json")
writeLines(toJSON(enumerated_analyses),"all_cont_analyses_sub.json")


# 2. run batch

configure_cluster(here("0-project-functions","cluster_credentials.json"))

rmd_filename <- here("4-longbow-tmle-analysis/run-longbow/longbow_RiskFactors.Rmd")
# inputs <- "single_cont_analysis.json"
# 
# #run test/provisioning job
# run_on_longbow(rmd_filename, inputs, provision = TRUE)

# send the batch to longbow (with provisioning disabled)
batch_inputs <- "all_cont_analyses_sub.json"
batch_id_cont <- run_on_longbow(rmd_filename, batch_inputs, provision = FALSE)
batch_id_cont

# wait for the batch to finish and track progress
wait_for_batch(batch_id_cont)

# download the longbow outputs
get_batch_results(batch_id_cont, results_folder="results_vel_sub")
length(dir("results_vel_sub"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "results_vel_sub")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "results_vel_sub")

# save concatenated results
filename1 <- paste(paste('results_vel_sub',Sys.Date( ),sep='_'),'RDS',sep='.')
filename2 <- paste(paste('results_vel_obs_counts_sub',Sys.Date( ),sep='_'),'RDS',sep='.')
saveRDS(results, file=paste0(res_dir,"rf results/raw longbow results/",filename1))
saveRDS(obs_counts, file=paste0(res_dir,"rf results/raw longbow results/",filename2))

