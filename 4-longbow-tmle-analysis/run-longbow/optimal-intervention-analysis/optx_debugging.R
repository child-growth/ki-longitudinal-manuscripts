

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

analyses <- analyses %>% filter(Y %in% c("haz","whz"))
analyses <- analyses[!sapply(analyses$W,is.null),] # Drop unadjusted estimates

enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

enumerated_analyses <- enumerated_analyses[[17]]
nodes <- enumerated_analyses$nodes
params<-enumerated_analyses$script_params

parallelize<-params$parallelize
count_A<-params$count_A
count_Y<-params$count_Y
baseline_level<-params$baseline_level
baseline_level<-NULL
maximize<-params$maximize

# 2. run batch

configure_cluster(here("0-project-functions","cluster_credentials.json"))

rmd_filename <- here("4-longbow-tmle-analysis/run-longbow/longbow_OptTX.Rmd")

inputs <- "single_analysis.json"



library(knitr)
knitr::opts_chunk$set(echo = FALSE, message=FALSE, eval.after = 'fig.cap')
options(scipen=999)

set.seed(12345)
library(longbowtools)
library(longbowOptTX)
library(sl3)
library(tmle3)
library(tmle3mopttx)
library(data.table)
library(stringr)
data <- get_tl_data(enumerated_analyses)



nodes <- get_tl_nodes(enumerated_analyses)
library(future)
tl_params <- get_tl_params(enumerated_analyses)

message(nodes)
message(tl_params)
tl_params$parallelize<-TRUE
if(tl_params$parallelize){
  
  workers=availableCores()/2
  future::plan(multicore, workers=workers)
} else {
  workers = 1
  future::plan(sequential)
}

if(length(nodes$W)==0){
  nodes$W=NULL
}

# drop strata variables not present in data
nodes$strata <- intersect(nodes$strata[[1]], names(data))

# drop missing values
processed <- process_missing(data, nodes,complete_nodes = c("id","strata","A","Y"))
data <- processed$data
nodes <- processed$node_list

data <- data %>% filter(agecat=="6 months", studyid %in% c("IRC","NIH-Crypto")) %>% droplevels(.)
table(data$nchldlt5, data$studyid)

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
                             "Lrnr_glm_fast"#,
                             #"Lrnr_glmnet",
                             #"Lrnr_gam",
                             #list("Lrnr_xgboost", nthread=1)
                             )
  glib <- make_learner_stack("Lrnr_mean"#,
                             #"Lrnr_glmnet",
                             #list("Lrnr_xgboost", nthread=1)
                             )
  
  
  # qlib <- glib <- make_learner_stack("Lrnr_mean")
  mn_metalearner <- make_learner(Lrnr_solnp, loss_function = loss_loglik_multinomial, learner_function = metalearner_linear_multinomial)
  qb_metalearner <- make_learner(Lrnr_solnp, loss_function = loss_loglik_binomial, learner_function = metalearner_logistic_binomial)
  
  metalearner <- make_learner(Lrnr_nnls)
  Q_learner <- make_learner(Lrnr_sl, qlib, qb_metalearner)
  g_learner <- make_learner(Lrnr_sl, glib, mn_metalearner)
  B_learner <- create_mv_learners(qlib$params$learners)
} else {
  Q_learner <- make_learner(Lrnr_glm)
  g_learner <- make_learner(Lrnr_mean)
  B_learner <- make_learner(Lrnr_cv,
                            make_learner(Lrnr_multivariate,make_learner(Lrnr_mean)),
                            full_fit=TRUE)
}

learner_list <- list(Y=Q_learner, A=g_learner, B=B_learner)

# **Outcome Variable:** `r nodes$Y`
# 
# ## Predictor Variables
# 
# **Intervention Variable:** `r nodes$A`
# 
# **Adjustment Set:**
  
cat("Outcome:", nodes$Y,"\n")
cat("Exposure:", nodes$A,"\n")


if(length(nodes$W)==0){
  cat("unadjusted\n")
} else {
  for(covariate in nodes$W){
    cat(sprintf("* %s\n",covariate))
  }
}

## Stratifying Variables


for(strata_variable in nodes$strata){
  cat(sprintf("* %s\n",strata_variable))
}

strata <- collapse_strata(data, nodes)

#strata <- data[, nodes$strata, with = FALSE]
strata <- unique(strata)
set(strata, , "strata_id", 1:nrow(strata))
suppressWarnings({
  long <- melt(strata, id.vars = "strata_id", measure.vars = c())
})
set(long, , "label", sprintf("%s: %s", long$variable, long$value))
collapsed <- long[, list(strata_label = paste(label, collapse = ", ")), 
                  by = list(strata_id)]
strata_map <- merge(strata, collapsed, by = "strata_id")
strata_map$strata_id <- NULL
strata_map <- setkey(strata_map, "strata_label")
strata_labels <- strata_map[data, strata_label, on = eval(nodes$strata)]
#data$strata_label <- strata_labels

set(data, , "strata_label", strata_labels)
set(strata, , "strata_label", strata_labels)
#return(strata_map)

## Data Summary
obs_counts <- get_obs_counts(data, nodes, tl_params)
kable(obs_counts)
obs_counts$outcome_variable <- nodes$Y

# if(params$output_directory!=""){
#   counts_file <- file.path(params$output_directory, "obs_counts.rdata")
#   
#   save(obs_counts, file=counts_file)
# }

obs_counts <- subset(obs_counts, select = -c(outcome_variable))


strata_levels <- sort(unique(strata$strata_label))
# for(stratum in strata_levels){
#   cat(sprintf("* %s\n",stratum))
# }

count_cols <- setdiff(names(obs_counts), unlist(nodes))
min_counts <- obs_counts[,list(min_cell=min(unlist(.SD))), .SDcols=count_cols,
                         by=eval(nodes$strata)]

strata <- merge(strata,min_counts, by=nodes$strata)
#strata$min_cell[1] <- 4
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

if(nrow(data)==0){
  cat("\n\nALL STRATA DROPPED. JOB FINISHED\n")
  knit_exit()
}


options(sl3.pcontinuous = 0)
# CF_Likelihood$undebug("enumerate_cf_tasks")
# tmle3mopttx:::Optimal_Rule_Revere$debug("fit_blip")
# tmle3mopttx:::Optimal_Rule_Revere$debug("rule")
# tmle_for_stratum(strata[1,],data,nodes,learner_list, tl_params$maximize)

stratified_tmle <- function(data, nodes, learner_list, strata, maximize){
  results <- strata[, tmle_for_stratum(.SD, data, nodes, learner_list, 
                                       maximize), by = seq_len(nrow(strata))]
  return(results)
}


table(data$nchldlt5, data$studyid)

results <- stratified_tmle(data, nodes, learner_list, strata, tl_params$maximize)


strata_row <- strata[1, ]
results <- strata[, tmle_for_stratum(.SD, data, nodes, baseline_level, 
                                     learner_list), by = seq_len(nrow(strata))]

temp<- tmle_for_stratum(strata[1,],data,nodes,learner_list, tl_params$maximize)

strata_row<- strata[1, ]
stratum_label <- strata_row$strata_label
message("tmle for:\t", stratum_label)
stratum_data <- data[strata_label == stratum_label]
if ((length(unique(unlist(stratum_data[, nodes$Y, with = FALSE]))) <= 
     1) || (length(unique(unlist(stratum_data[, nodes$A, with = FALSE]))) <= 
            1)) {
  message("outcome or treatment is constant. Skipping")
  print(table(stratum_data[, c(nodes$A, nodes$Y), with = FALSE]))
  return(NULL)
}
max_covariates <- floor(strata_row$min_cell/10)
stratum_nodes_reduced <- reduce_covariates(stratum_data, 
                                           nodes, max_covariates)
tmle_spec <- tmle_risk(baseline_level = baseline_level)
if (length(stratum_nodes_reduced$W) == 0) {
  learner_list <- list(Y = make_learner(Lrnr_glm), A = make_learner(Lrnr_mean))
}
tmle_fit <- tmle3(tmle_spec, stratum_data, stratum_nodes_reduced, 
                  learner_list)
results <- tmle_fit$summary
stratum_ids <- stratum_data[1, c(nodes$strata, "strata_label"), 
                            with = FALSE]
results <- cbind(stratum_ids, results)
node_data <- as.data.table(lapply(stratum_nodes_reduced[c("W", 
                                                          "A", "Y")], paste, collapse = ", "))
if (is.null(node_data$W)) {
  node_data$W = "unadjusted"
}
set(results, , names(node_data), node_data)


return(results)

knitr::kable(results)

formatted_results <- format_results(results, data, nodes)

if(params$output_directory!=""){
  results_file <- file.path(params$output_directory, "results.rdata")
  
  save(formatted_results, file=results_file)
}














strata_row <- strata[2, ]

# function (strata_row, data, nodes, learner_list, maximize) 
# {
  strata_row
  stratum_label <- strata_row$strata_label
  message("tmle for:\t", stratum_label)
  stratum_data <- data[strata_label == stratum_label]
  if ((length(unique(unlist(stratum_data[, nodes$Y, with = FALSE]))) <= 
       1) || (length(unique(unlist(stratum_data[, nodes$A, with = FALSE]))) <= 
              1)) {
    message("outcome or treatment is constant. Skipping")
    print(table(stratum_data[, c(nodes$A, nodes$Y), with = FALSE]))
    return(NULL)
  }
  max_covariates <- floor(strata_row$min_cell/10)
  stratum_nodes_reduced <- reduce_covariates(stratum_data, 
                                             nodes, max_covariates)
  if (length(stratum_nodes_reduced$W) == 0) {
    mn_metalearner <- make_learner(Lrnr_solnp, loss_function = loss_loglik_multinomial, 
                                   learner_function = metalearner_linear_multinomial)
    qb_metalearner <- make_learner(Lrnr_solnp, loss_function = loss_loglik_binomial, 
                                   learner_function = metalearner_logistic_binomial)
    qlib <- make_learner_stack("Lrnr_glm", "Lrnr_mean")
    glib <- make_learner_stack("Lrnr_mean")
    Q_learner <- make_learner(Lrnr_sl, qlib, qb_metalearner)
    g_learner <- make_learner(Lrnr_sl, glib, mn_metalearner)
    B_learner <- make_learner(Lrnr_cv, make_learner(Lrnr_multivariate, 
                                                    make_learner(Lrnr_mean)), full_fit = TRUE)
    learner_list <- list(Y = Q_learner, A = g_learner, B = B_learner)
  }
  tmle_spec_opttx <- tmle_opttx_risk(V = stratum_nodes_reduced$W, 
                                     type = "blip2", learners = learner_list, contrast = "linear", #needed to 
                                     maximize = maximize)
  tmle_fit <-   tmle3(tmle_spec_opttx, stratum_data, stratum_nodes_reduced,  learner_list)

  tmle_spec = tmle_spec_opttx
  data = stratum_data
  node_list = stratum_nodes_reduced
  
  
  start_time <- proc.time()
  tmle_task <- tmle_spec$make_tmle_task(data, node_list)
  task_time <- proc.time()
  initial_likelihood <- tmle_spec$make_initial_likelihood(tmle_task, 
                                                          learner_list)
  likelihood_time <- proc.time()
  updater <- tmle_spec$make_updater()
  targeted_likelihood <- tmle_spec$make_targeted_likelihood(initial_likelihood, 
                                                            updater)
  tmle_params <- tmle_spec$make_params(tmle_task, targeted_likelihood)
  
  updater$tmle_params <- tmle_params
  params_time <- proc.time()
  fit <- fit_tmle3(tmle_task, targeted_likelihood, tmle_params, 
                   updater)
  fit_time <- proc.time()
  fit$set_timings(start_time, task_time, likelihood_time, params_time, 
                  fit_time)
  
  
  
  
  
  
  
  
  
  
  
  if (inherits(tmle_fit, "try-error")) {
    return(NULL)
  }
  results <- tmle_fit$summary
  stratum_ids <- stratum_data[1, c(nodes$strata, "strata_label"), 
                              with = FALSE]
  results <- cbind(stratum_ids, results)
  node_data <- as.data.table(lapply(stratum_nodes_reduced[c("W", 
                                                            "A", "Y")], paste, collapse = ", "))
  if (is.null(node_data$W)) {
    node_data$W = "unadjusted"
  }
  set(results, , names(node_data), node_data)
  rule_fun <- tmle_spec_opttx$return_opt$rule
  rule_count = function(opttx) {
    treatment_dt <- as.data.table(as.list(table(opttx)))
    paste(sprintf("n_%s:%s", names(treatment_dt), unlist(treatment_dt)), 
          collapse = " ")
  }
  opttx_val <- rule_fun(tmle_fit$tmle_task, "validation")
  results$opttx_val = rule_count(opttx_val)
  opttx_full <- rule_fun(tmle_fit$tmle_task, "full")
  results$opttx_full = rule_count(opttx_full)
  return(results)
}