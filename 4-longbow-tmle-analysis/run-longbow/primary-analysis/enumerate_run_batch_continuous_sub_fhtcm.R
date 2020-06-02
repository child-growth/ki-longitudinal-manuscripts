
rm(list=ls())
.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/3.6/" , .libPaths() ) )

source(paste0(here::here(), "/0-config.R"))
.libPaths( "~/rlibs" )
library(data.table)
library(longbowtools)
#library(jsonlite)
library(progress)
library(longbowRiskFactors)

# 1. enumerate analysis

setwd(here("4-longbow-tmle-analysis","run-longbow","primary-analysis"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)



# # Continious
#load(here("sprint_7D_longbow","Manuscript analysis","adjusted_continuous.rdata"))
load(here("4-longbow-tmle-analysis","analysis specification","adjusted_continuous.rdata"))
default_params$script_params$count_Y <- FALSE


#Subset analysis to jobs not yet run
analyses <- analyses %>% filter(Y %in% c("haz"), A=="fhtcm")
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)


writeLines(jsonlite::toJSON(enumerated_analyses),"fhtcm_analyses.json")




# 2. run batch
configure_cluster(here("0-project-functions","cluster_credentials.json"))


rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")




# send the batch to longbow (with provisioning disabled)
batch_inputs <- "fhtcm_analyses.json"
batch_id <- run_on_longbow(rmd_filename, batch_inputs, provision = FALSE)
batch_id

# wait for the batch to finish and track progress
wait_for_batch(batch_id)

# download the longbow outputs
get_batch_results(batch_id, results_folder="results_fhtcm")
length(dir("results_fhtcm"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata","results_fhtcm")
obs_counts <- load_batch_results("obs_counts.rdata","results_fhtcm")

df <- results %>% filter(type=="PAR", agecat=="24 months")
pool.Zpar(df) %>% as.data.frame()

# save concatenated results
filename1 <- paste(paste('results_cont_fhtcm',Sys.Date( ),sep='_'),'RDS',sep='.')
filename2 <- paste(paste('results_cont_obs_count_fhtcms',Sys.Date( ),sep='_'),'RDS',sep='.')
saveRDS(results, file=here("results","rf results","raw longbow results",filename1))
saveRDS(obs_counts, file=here("results","rf results","raw longbow results",filename2))


