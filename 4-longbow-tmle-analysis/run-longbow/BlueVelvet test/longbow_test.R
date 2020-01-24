
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

library(longbowtools)
library(progress)
library(longbowRiskFactors)

#get IP address
system("ifconfig", intern=TRUE)

#setwd('~/Desktop/sprint_7D_longbow/adjusted_binary/')
# setwd("~/Dropbox/gates/sprint_7D_longbow/adjusted_binary/")
setwd(here("4-longbow-tmle-analysis","run-longbow","primary-analysis"))
inputs <- "inputs_template.json"
default_params <- fromJSON(inputs)
#Set to continious
default_params$script_params$count_Y <- FALSE

load(here("4-longbow-tmle-analysis","analysis specification","adjusted_continuous.rdata"))

analyses$file <- "data/birthwt_data.csv"

#Drop growth velocity
analyses <- analyses %>% filter(Y=="haz" | Y=="whz")

i=1
enumerated_analyses <- lapply(seq_len(nrow(analyses)),function(i){
  analysis <- analyses[i,]
  analysis_params <- default_params
  analysis_nodes <- as.list(analysis)[c("W","A","Y","strata","id")]
  analysis_nodes$W <- NULL
  analysis_nodes$strata <- NULL
  analysis_nodes$Y <- "haz"
  analysis_nodes$A <- "sex"
  analysis_nodes$id <- "subjid"
  analysis_params$nodes <- analysis_nodes
  analysis_params$data$repository_path <- analysis$file
  return(analysis_params)
})


rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")

inputs <- "inputs_template.json"



writeLines(toJSON(enumerated_analyses[[1]]),"single_cont_analysis.json")


# 2. run batch

configure_cluster(here("0-project-functions","cluster_credentials.json"))

rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")
# inputs <- "inputs_template.json"
inputs <- "single_cont_analysis.json"

#run test/provisioning job
run_on_longbow(rmd_filename, inputs, provision = TRUE)