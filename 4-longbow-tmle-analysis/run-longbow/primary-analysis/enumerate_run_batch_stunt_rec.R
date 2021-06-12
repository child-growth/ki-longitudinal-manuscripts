
rm(list=ls())
try(.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/4.0/" , .libPaths() ) ))

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

load(here("4-longbow-tmle-analysis","analysis specification","adjusted_stunt_rec_analyses.rdata"))
analyses<-stunt_rec_analyses
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)
writeLines(jsonlite::toJSON(enumerated_analyses),"stunt_rec_bin_analyses.json")

#check data
load("/data/KI/UCB-SuperLearner/Manuscript analysis data/st_rec_rf.Rdata")
table(d$studyid, d$s03rec24 )
table(d$agecat, d$s03rec24 )
load("/data/KI/UCB-SuperLearner/Manuscript analysis data/st_inc_rec_rf.Rdata")
table(d$studyid, d$s06rec1824)
table(d$agecat, d$s06rec1824)
prop.table(table(d$s06rec1824))

# 2. run batch
configure_cluster(here("0-project-functions","cluster_credentials.json"))
rmd_filename <- here("4-longbow-tmle-analysis/run-longbow/longbow_RiskFactors.Rmd")

bin_batch_inputs <- "stunt_rec_bin_analyses.json"
bin_batch_id <-  run_on_longbow(rmd_filename, bin_batch_inputs, provision = FALSE)
bin_batch_id


# wait for the batch to finish and track progress
wait_for_batch(bin_batch_id)

# download the longbow outputs
get_batch_results(bin_batch_id, results_folder="results_bin_stunt_rec")
length(dir("results_bin_stunt_rec"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "results_bin_stunt_rec")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "results_bin_stunt_rec")

# save concatenated results
filename1 <- paste(paste('results_bin_stunt_rec',Sys.Date( ),sep='_'),'RDS',sep='.')
filename2 <- paste(paste('results_bin_stunt_rec_obs_counts',Sys.Date( ),sep='_'),'RDS',sep='.')

saveRDS(results, file=paste0(res_dir,"rf results/raw longbow results/",filename1))
saveRDS(obs_counts, file=paste0(res_dir,"rf results/raw longbow results/",filename2))


