
rm(list=ls())
try(.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/3.6/" , .libPaths() ) ))

source(paste0(here::here(), "/0-config.R"))
try(.libPaths( "~/rlibs" ))
library(data.table)
library(longbowtools)
#library(jsonlite)
library(progress)
library(longbowRiskFactors)


# 1. enumerate analysis

setwd(here("4-longbow-tmle-analysis","run-longbow","primary-analysis"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)


load(here("4-longbow-tmle-analysis","analysis specification","adjusted_binary_analyses.rdata"))

#Load existing results
results <- readRDS(here("results/rf results/raw longbow results/results_bin_2020-05-03.RDS"))   
results_sub <- readRDS(here("results/rf results/raw longbow results/results_bin_sub_2020-05-19.RDS"))   
results_sub2 <- readRDS(here("results/rf results/raw longbow results/results_bin_sub_2020-05-20.RDS"))   
results <- bind_rows(results, results_sub, results_sub2)
#63738

#Subset analysis to jobs not yet run
analyses <- analyses %>% filter((Y == "stunted" & !(A %in% results$intervention_variable[results$outcome_variable=="stunted"])) |
                                  (Y == "sstunted" & !(A %in% results$intervention_variable[results$outcome_variable=="sstunted"])) |
                                  (Y == "ever_stunted" & !(A %in% results$intervention_variable[results$outcome_variable=="ever_stunted"])) |
                                  (Y == "ever_sstunted" & !(A %in% results$intervention_variable[results$outcome_variable=="ever_sstunted"])) |
                                  (Y == "wasted" & !(A %in% results$intervention_variable[results$outcome_variable=="wasted"])) |
                                  (Y == "swasted" & !(A %in% results$intervention_variable[results$outcome_variable=="swasted"])) |
                                  (Y == "wast_rec90d" & !(A %in% results$intervention_variable[results$outcome_variable=="wast_rec90d"])) |
                                  (Y == "ever_wasted" & !(A %in% results$intervention_variable[results$outcome_variable=="ever_wasted"])) |
                                  (Y == "ever_swasted" & !(A %in% results$intervention_variable[results$outcome_variable=="ever_swasted"])) |
                                  (Y == "pers_wast" & !(A %in% results$intervention_variable[results$outcome_variable=="pers_wast"])) |
                                  (Y == "ever_co" & !(A %in% results$intervention_variable[results$outcome_variable=="ever_co"])) )
                                  
table(analyses$A, analyses$Y)

enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

writeLines(jsonlite::toJSON(enumerated_analyses),"sub_analyses.json")



# 2. run batch

configure_cluster(here("0-project-functions","cluster_credentials.json"))

rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")
# inputs <- "inputs_template.json"

#run test/provisioning job
#run_on_longbow(rmd_filename, inputs, provision = TRUE)

# send the batch to longbow (with provisioning disabled)
bin_batch_inputs <- "sub_analyses.json"
bin_batch_id <-  run_on_longbow(rmd_filename, bin_batch_inputs, provision = FALSE)
bin_batch_id

# wait for the batch to finish and track progress
wait_for_batch(bin_batch_id)

# download the longbow outputs
get_batch_results(bin_batch_id, results_folder="results_bin_sub")
length(dir("results_bin_sub"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "results_bin_sub")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "results_bin_sub")

# save concatenated results
filename1 <- paste(paste('results_bin_sub',Sys.Date( ),sep='_'),'RDS',sep='.')
filename2 <- paste(paste('results_bin_sub_obs_counts',Sys.Date( ),sep='_'),'RDS',sep='.')
saveRDS(results, file=here("results","rf results","raw longbow results",filename1))
saveRDS(obs_counts, file=here("results","rf results","raw longbow results",filename2))
