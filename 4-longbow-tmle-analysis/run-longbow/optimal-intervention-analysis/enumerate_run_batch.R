
rm(list=ls())

source(paste0(here::here(), "/0-config.R"))
#.libPaths( "~/rlibs" )
library(data.table)
library(longbowtools)
#library(jsonlite)
library(progress)
library(longbowRiskFactors)
library(longbowOptTX)



# 1. enumerate analysis

setwd(here("4-longbow-tmle-analysis","run-longbow","optimal-intervention-analysis"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)

# # Binary
# load('../Manuscript analysis/adjusted_binary_analyses_sub.rdata')
# analyses$count_Y <- TRUE
# analyses_1 <- analyses

# # Continious
#load(here("sprint_7D_longbow","Manuscript analysis","adjusted_continuous.rdata"))
load(here("4-longbow-tmle-analysis","analysis specification","adjusted_continuous.rdata"))
default_params$script_params$maximize <- TRUE
default_params$script_params$count_Y <- FALSE

#Subset to just optx estimates
load(paste0(ghapdata_dir,"st_meanZ_optx.Rdata"))
Avars <-c( "gagebrth",      "birthwt",      
           "birthlen",      "vagbrth",       "hdlvry",        "mage",          "mhtcm",         "mwtkg",        
           "mbmi",          "single",        "fage",          "fhtcm",         "nrooms",        "nhh",           "nchldlt5",     
           "hhwealth_quart", "month", "brthmon", "parity",   "meducyrs", 
           "feducyrs", "hfoodsec",  
           "cleanck", "impfloor",  "impsan", "safeh20",
           "perdiar6", "perdiar24", "predexfd6", 
           "earlybf")  

analyses <- analyses %>% filter(Y %in% c("haz","whz"), A %in% Avars)
analyses$file <- gsub("_rf","_optx",analyses$file)
analyses <- analyses[!sapply(analyses$W,is.null),] # Drop unadjusted estimates

enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

writeLines(jsonlite::toJSON(enumerated_analyses[[17]]),"single_analysis.json")
writeLines(jsonlite::toJSON(enumerated_analyses),"all_analyses.json")




# 2. run batch

configure_cluster(here("0-project-functions","cluster_credentials.json"))

rmd_filename <- here("4-longbow-tmle-analysis/run-longbow/longbow_OptTX.Rmd")

inputs <- "single_analysis.json"

#run test/provisioning job
#run_on_longbow(rmd_filename, inputs, provision = TRUE)

# send the batch to longbow (with provisioning disabled)
batch_inputs <- "all_analyses.json"
batch_id <- run_on_longbow(rmd_filename, batch_inputs, provision = FALSE)
batch_id

# wait for the batch to finish and track progress
wait_for_batch(batch_id)

# download the longbow outputs
get_batch_results(batch_id, results_folder="results_optx")
length(dir("results_optx"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata","results_optx")
obs_counts <- load_batch_results("obs_counts.rdata","results_optx")

# save concatenated results
filename1 <- paste(paste('opttx_vim_results',Sys.Date( ),sep='_'),'RDS',sep='.')
filename2 <- paste(paste('opttx_vim_obs_counts',Sys.Date( ),sep='_'),'RDS',sep='.')
saveRDS(results, file=paste0(res_dir,"rf results/raw longbow results/",filename1))
saveRDS(obs_counts, file=paste0(res_dir,"rf results/raw longbow results/",filename2))



