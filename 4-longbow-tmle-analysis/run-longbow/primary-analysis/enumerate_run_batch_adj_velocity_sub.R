

rm(list=ls())
try(.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/4.0/" , .libPaths() ) ))

source(paste0(here::here(), "/0-config.R"))
# try(.libPaths( "~/rlibs" ))
# library(data.table)
# library(longbowtools)
# library(jsonlite)
# library(progress)
# library(longbowRiskFactors)

# 1. enumerate analysis

setwd(here("4-longbow-tmle-analysis","run-longbow","primary-analysis"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)

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

run_ki_tmle(enumerated_analyses, results_folder="results_vel_sub", overwrite = F)

