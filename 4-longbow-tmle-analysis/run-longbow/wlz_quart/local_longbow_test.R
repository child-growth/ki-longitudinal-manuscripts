

rm(list=ls())
.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/4.0/" , .libPaths() ) )

source(paste0(here::here(), "/0-config.R"))
.libPaths( "~/rlibs" )
library(data.table)
library(longbowtools)
#library(jsonlite)
library(progress)
library(longbowRiskFactors)


# 1. enumerate analysis

setwd(here("4-longbow-tmle-analysis","run-longbow","wlz_quart"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)

#Set to binary
default_params$script_params$count_Y <- TRUE

#load(here("sprint_7D_longbow","Manuscript analysis","adjusted_continuous.rdata"))
load(here("4-longbow-tmle-analysis","analysis specification","adjusted_binary_lagwhz.rdata"))

#Add in a non-age stratified version
analyses_unstrat <- analyses
analyses_unstrat$strata[[1]] <- c("studyid", "country")
analyses_unstrat$strata[[2]] <- c("studyid", "country")

analyses <- rbind(analyses, analyses_unstrat)

#Change analyses to list form
ghapdata_dir <-"C:/Users/andre/Downloads/"
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

"/data/KI/UCB-SuperLearner/Manuscript analysis data/stuntCI_whz_rf.Rdata"

BV_dir <- res_dir <- paste0(here(),"/results")


#run_ki_tmle(enumerated_analyses, results_folder="stunt_bin_wlz_quart", overwrite = T)
params <- enumerated_analyses[[1]]

set.seed(12345)
library(longbowtools)
library(longbowRiskFactors)
library(sl3)
library(tmle3)
library(data.table)
library(stringr)
data <- get_tl_data()
nodes <- get_tl_nodes()
library(future)
tl_params <- get_tl_params()

message(nodes)
message(tl_params)
if(tl_params$parallelize){
  
  workers=availableCores()/2
  plan(multicore, workers=workers)
} else {
  workers = 1
  plan(sequential)
}

if(length(nodes$W)==0){
  nodes$W=NULL
}


# drop strata variables not present in data
nodes$strata <- intersect(nodes$strata, names(data))

# drop missing values
processed <- process_missing(data, nodes,complete_nodes = c("id","strata","A","Y"))
data <- processed$data
nodes <- processed$node_list

#list of studies included in the data
print(paste(data$studyid, sep=", "))

# convert character columns to factors
char_to_factor <-function(data){
  classes <- sapply(data,data.class)
  char_cols <- names(classes)[which(classes=="character")]
  set(data, , char_cols, data[,lapply(.SD, as.factor), .SDcols = char_cols])
}

char_to_factor(data)

#define learners
if(length(nodes$W)>0){
  qlib <- make_learner_stack("Lrnr_mean",
                             "Lrnr_glm_fast",
                             "Lrnr_glmnet",
                             "Lrnr_gam",
                             list("Lrnr_xgboost", nthread=1)
  )
  glib <- make_learner_stack("Lrnr_mean",
                             "Lrnr_glmnet",
                             list("Lrnr_xgboost", nthread=1)
  )
  
  
  
  # qlib <- glib <- make_learner_stack("Lrnr_mean")
  mn_metalearner <- make_learner(Lrnr_solnp, loss_function = loss_loglik_multinomial, learner_function = metalearner_linear_multinomial)
  qb_metalearner <- make_learner(Lrnr_solnp, loss_function = loss_loglik_binomial, learner_function = metalearner_logistic_binomial)
  
  metalearner <- make_learner(Lrnr_nnls)
  Q_learner <- make_learner(Lrnr_sl, qlib, qb_metalearner)
  g_learner <- make_learner(Lrnr_sl, glib, mn_metalearner)
} else {
  Q_learner <- make_learner(Lrnr_glm)
  g_learner <- make_learner(Lrnr_mean)
}

learner_list <- list(Y=Q_learner, A=g_learner)


if(length(nodes$W)==0){
  cat("unadjusted\n")
} else {
  for(covariate in nodes$W){
    cat(sprintf("* %s\n",covariate))
  }
}

## Stratifying Variables

#The analysis was stratified on these variable(s):
  
for(strata_variable in nodes$strata){
  cat(sprintf("* %s\n",strata_variable))
}


strata <- collapse_strata(data, nodes)


## Data Summary
obs_counts <- get_obs_counts(data, nodes, tl_params)
knitr::kable(obs_counts)
obs_counts$outcome_variable <- nodes$Y

if(params$output_directory!=""){
  counts_file <- file.path(params$output_directory, "obs_counts.rdata")
  
  save(obs_counts, file=counts_file)
}

obs_counts <- subset(obs_counts, select = -c(outcome_variable))




strata_levels <- sort(unique(strata$strata_label))
for(stratum in strata_levels){
  cat(sprintf("* %s\n",stratum))
}


count_cols <- setdiff(names(obs_counts), unlist(nodes))
min_counts <- obs_counts[,list(min_cell=min(unlist(.SD))), .SDcols=count_cols,
                         by=eval(nodes$strata)]

strata <- merge(strata,min_counts, by=nodes$strata)

#todo: this could be a script parameter
cell_cutoff <- 5
dropped_strata <- strata[min_cell < cell_cutoff]

if(nrow(dropped_strata)>0){
  cat("### Dropped Strata\n\nSome strata were dropped due to rare outcomes:\n\n")
  # get strata labels for dropped_strata
  dropped_labels <- strata[dropped_strata, strata_label, on=eval(nodes$strata)]
  dropped_labels <- dropped_labels[!is.na(dropped_labels)]
  
  for(stratum in dropped_labels){
    cat(sprintf("* %s\n",stratum))
  }
  
  #actually drop these strata
  data <- data[!(strata_label%in%dropped_labels)]
  strata <- strata[!(strata_label%in%dropped_labels)]
}

if(nrow(data)!=0){


baseline_level <- tl_params$baseline_level
if(is.null(baseline_level)||is.na(baseline_level)){
  baseline_level = NULL
}
#results <- try(stratified_tmle(data, nodes, baseline_level, learner_list, strata))

strata_row <- strata[1, ]
results <- strata[, tmle_for_stratum(.SD, data, nodes, baseline_level, 
                                     learner_list), by = seq_len(nrow(strata))]
return(results)


print(head(results))
formatted_results <- format_results(results, data, nodes)

if(params$output_directory!=""){
  results_file <- file.path(params$output_directory, "results.rdata")
  
  save(formatted_results, file=results_file)
}
}


