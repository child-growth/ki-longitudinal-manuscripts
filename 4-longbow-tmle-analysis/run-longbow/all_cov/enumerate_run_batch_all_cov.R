
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

#load analyses
load(here("4-longbow-tmle-analysis","analysis specification","adjusted_continuous.rdata"))
#Drop growth velocity
dim(analyses)
analyses <- analyses %>% filter(Y=="haz" | Y=="whz", A=="fhtcm")
dim(analyses)


#check data
load("/data/KI/UCB-SuperLearner/Manuscript analysis data/wast_meanZ_rf.Rdata")
head(d)
load("/data/KI/UCB-SuperLearner/Manuscript analysis data/st_meanZ_rf.Rdata")
head(d)
table(d$studyid, !is.na(d$fhtcm))
#replace covariates
load(paste0(BV_dir,"/results/adjustment_sets_list_all_cov.Rdata"))
for(i in 1:nrow(analyses)){
  analyses$W[[i]] <- gsub("W_bmi", "W_mbmi", analyses$W[[i]])
  analyses$W[[i]] <- adjustment_sets_all_cov[[1]][!(adjustment_sets_all_cov[[1]] %in% c(analyses$A[[i]],"enwast", "anywast06"))]
}

unique(unlist(analyses$W))
unique(unlist(analyses$W))[!(unique(unlist(analyses$W)) %in% colnames(d))]
colnames(d)[!(colnames(d) %in% unique(unlist(analyses$W)))]

#specify analyses
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)


writeLines(toJSON(enumerated_analyses),"all_cont_analyses.json")


# 2. run batch
configure_cluster(here("0-project-functions","cluster_credentials.json"))
rmd_filename <- here("4-longbow-tmle-analysis/run-longbow/longbow_RiskFactors.Rmd")


# send the batch to longbow (with provisioning disabled)
batch_inputs <- "all_cont_analyses.json"
batch_id_cont <- run_on_longbow(rmd_filename, batch_inputs, provision = FALSE)
batch_id_cont

# wait for the batch to finish and track progress
wait_for_batch(batch_id_cont)

# download the longbow outputs
get_batch_results(batch_id_cont, results_folder="results_full_cov")
length(dir("results_full_cov"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "results_full_cov")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "results_full_cov")

# save concatenated results
filename1 <- paste(paste('results_full_cov',Sys.Date( ),sep='_'),'RDS',sep='.')
filename2 <- paste(paste('results_full_cov_obs_counts',Sys.Date( ),sep='_'),'RDS',sep='.')
saveRDS(results, file=paste0(res_dir,"rf results/raw longbow results/",filename1))
saveRDS(obs_counts, file=paste0(res_dir,"rf results/raw longbow results/",filename2))

