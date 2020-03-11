
rm(list=ls())
.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/3.6/" , .libPaths() ) )

source(paste0(here::here(), "/0-config.R"))
.libPaths( "~/rlibs" )
library(data.table)
library(longbowtools)
library(jsonlite)
library(progress)
library(longbowRiskFactors)
library(longbowOptTX)

# 1. enumerate analysis

setwd(here("4-longbow-tmle-analysis","run-longbow","optimal-intervention-analysis"))
inputs <- "inputs_template.json"
default_params <- fromJSON(inputs)


# # Continious
#load(here("sprint_7D_longbow","Manuscript analysis","adjusted_continuous.rdata"))
load(here("4-longbow-tmle-analysis","analysis specification","seasonality_rf_Zscore_analyses.rdata"))
default_params$script_params$maximize <- TRUE
default_params$script_params$count_Y <- FALSE

analyses <- analyses %>% filter(Y %in% c("haz","whz"))

enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

writeLines(toJSON(enumerated_analyses),"season_analyses.json")




# 2. run batch
configure_cluster(here("0-project-functions","cluster_credentials.json"))


rmd_filename <- system.file("templates/longbow_OptTX.Rmd", package="longbowOptTX")


# send the batch to longbow (with provisioning disabled)
batch_inputs <- "season_analyses.json"
batch_id <- run_on_longbow(rmd_filename, batch_inputs, provision = FALSE)
batch_id

# wait for the batch to finish and track progress
wait_for_batch(batch_id)

# download the longbow outputs
get_batch_results(batch_id, results_folder="results_season")
length(dir("results_season"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata","results_season")
obs_counts <- load_batch_results("obs_counts.rdata","results_season")

# save concatenated results
filename1 <- paste(paste('opttx_vim_season_results',Sys.Date( ),sep='_'),'RDS',sep='.')
filename2 <- paste(paste('opttx_vim_season_obs_counts',Sys.Date( ),sep='_'),'RDS',sep='.')
saveRDS(results, file=here("results","rf results","raw longbow results",filename1))
saveRDS(obs_counts, file=here("results","rf results","raw longbow results",filename2))


