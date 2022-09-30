
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

analyses <- readRDS(here("4-longbow-tmle-analysis","analysis specification","adjusted_binary_analyses_primary.rds"))

unique(analyses$Y)
analyses <- analyses %>% filter(A!="pers_wast",A!="anywast06", A!="enstunt", A!="enwast", Y %in% c("ever_stunted","ever_wasted"))
analyses <- analyses %>% filter(A!="fage_rf",A!="fhtcm_rf") %>% mutate(Y=factor(Y, levels=rev(c("pers_wast", "ever_wasted","ever_swasted" ,   "ever_stunted", "ever_sstunted" )))) %>%
  arrange(Y) %>% mutate(Y=as.character(Y))
head(analyses)

specify_longbow_cc <- function(j, analyses_df=analyses, params=default_params){
  params$data$uri <- ghapdata_dir
  params$data$repository_path <- NULL
  
  analysis <- analyses_df[j,]
  analysis_params <- params
  analysis_nodes <- as.list(analysis)[c("W","A","Y","strata","id")]
  analysis_nodes$W[[1]] <- gsub("W_bmi", "W_mbmi", analysis_nodes$W[[1]])
  #analysis_nodes$W <- gsub("W_", "", analysis_nodes$W[[1]]) #use categorical where possible
  analysis_nodes$strata <- analysis$strata[[1]]
  analysis_params$nodes <- analysis_nodes
  analysis_params$data$uri <- paste0(analysis_params$data$uri, analysis$file)
  analysis_params$script_params$parallelize <- TRUE
  return(analysis_params)
}

enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow_cc)


enumerated_analyses <- enumerated_analyses[15:16]

#update to use categorical variables

paste0(BV_dir,"/tmle/","results_bin_CC","/")
run_ki_tmle(enumerated_analyses, results_folder="results_bin_CC", overwrite = T, skip_failed=F, rmd_filename = here("4-longbow-tmle-analysis/run-longbow/longbow_RiskFactors_CC.Rmd"))


# results_folder="results_bin_CC"
# overwrite = T
# skip_failed=F
# rmd_filename = here("4-longbow-tmle-analysis/run-longbow/longbow_RiskFactors_CC.Rmd")
# 
# 
# 
# 
# Sys.getenv("RSTUDIO_PANDOC")
# Sys.setenv(RSTUDIO_PANDOC="/usr/lib/rstudio-server/bin/pandoc")
# rmarkdown::pandoc_available()
# rmarkdown::pandoc_version()
# 
# 
# base_directory = paste0(BV_dir,"/tmle/",results_folder,"/")
# for(i in 1:length(enumerated_analyses)){
#   cat(i," out of ",length(enumerated_analyses),"\n")
#   output_directory = paste0(base_directory,
#                             enumerated_analyses[[i]]$nodes$A,"_",
#                             enumerated_analyses[[i]]$nodes$Y)
#   enumerated_analyses[[i]]$output_directory <- output_directory
#   cat(i,"; ", enumerated_analyses[[i]]$nodes$A,"; ", enumerated_analyses[[i]]$nodes$Y,"; res exists: ",file.exists(paste0(output_directory,"/results.rdata")),"\n")
#   
#   
#   if(overwrite==TRUE | !file.exists(paste0(output_directory,"/results.rdata"))){
#     time_run <- "fail"
#     if(skip_failed==F| !file.exists(paste0(output_directory,"/obs_counts.rdata"))){
#       try(time_run<-system.time(rmarkdown::render(rmd_filename,
#                                                   params = (enumerated_analyses[[i]]),
#                                                   output_file = file.path( output_directory, "/REPORT.html"),
#                                                   output_dir = output_directory,
#                                                   quiet=TRUE,
#                                                   output_format = rmarkdown::html_document(self_contained = TRUE,
#                                                                                            keep_md = F),
#                                                   knit_root_dir = output_directory)))
#       
#       cat("\nruntime: ",time_run,"\n")
#     }
#   }
# }
# 
# # # load and concatenate the rdata from the jobs
# results <- load_batch_results("results.rdata", results_folder = base_directory)
# obs_counts <- load_batch_results("obs_counts.rdata", results_folder = base_directory)
# 
# print(head(results))
# 
# # save concatenated results
# filename1 <- paste(paste('results',results_folder,Sys.Date( ),sep='_'),'RDS',sep='.')
# filename2 <- paste(paste('results',results_folder,'obs_counts',Sys.Date( ),sep='_'),'RDS',sep='.')
# saveRDS(results, file=paste0(res_dir,"rf results/raw longbow results/",filename1))
# saveRDS(obs_counts, file=paste0(res_dir,"rf results/raw longbow results/",filename2))
# 
# 
# 
# 
# 
# 
# load("/data/KI/UCB-SuperLearner/Manuscript analysis data/st_cuminc_rf_primary.rdata")
# data=d
# 
# 
# 
# set.seed(12345)
# library(longbowtools)
# library(longbowRiskFactors)
# library(sl3)
# library(tmle3)
# library(data.table)
# library(stringr)
# nodes <- enumerated_analyses[[1]]$nodes
# library(future)
# tl_params <- enumerated_analyses[[1]]$script_params
# 
# message(nodes)
# message(tl_params)
# if(tl_params$parallelize){
#   
#   workers=availableCores()/2
#   plan(multicore, workers=workers)
# } else {
#   workers = 1
#   plan(sequential)
# }
# 
# if(length(nodes$W)==0){
#   nodes$W=NULL
# }
# 
# nodes$strata <- intersect(nodes$strata, names(data))
# 
# node_list=nodes
# complete_nodes = c("A", "Y")
# impute_nodes = NULL
# max_p_missing = 0.1
# 
# dim(data)
# processed <- process_missing_CC(data, nodes,complete_nodes = c("id","strata","A","Y"))
# data2 <- processed$data[complete.cases(processed$data),]
# nodes2 <- processed$node_list
# dim(data2)
# table(is.na(data2))
# 
# 
# impute_by_type_CC <- function(x){
#   
#   return(x)
# }
# 
# 
# process_missing_CC <- function (data, node_list, complete_nodes = c("A", "Y"), impute_nodes = NULL, max_p_missing = 0.1) 
# {
#   data <- as.data.table(data)
#   if (is.null(impute_nodes)) {
#     impute_nodes <- setdiff(names(node_list), complete_nodes)
#   }
#   drop_vars <- unlist(node_list[complete_nodes])
#   drop_rows <- data[, apply(is.na(.SD), 1, any), .SDcols = drop_vars]
#   filtered <- data[!drop_rows]
#   n_dropped <- sum(drop_rows)
#   impute_vars <- unlist(node_list[impute_nodes])
#   p_missing <- sapply(filtered[, impute_vars, with = FALSE], function(x) mean(is.na(x)))
#   no_missing <- names(p_missing[p_missing == 0])
#   no_missing <- c(no_missing, drop_vars)
#   processed <- filtered[, no_missing, with = FALSE]
#   
#   to_impute <- names(p_missing[(0 < p_missing) & (p_missing < max_p_missing)])
#   if (length(to_impute) > 0) {
#     # missing_indicators <- filtered[, lapply(.SD, function(x) as.numeric(is.na(x))), 
#     #     .SDcols = to_impute]
#     #missing_names <- sprintf("delta_%s", to_impute)
#     #setnames(missing_indicators, missing_names)
#     imputed <- filtered[, lapply(.SD, impute_by_type_CC), .SDcols = to_impute]
#     processed <- cbind(processed, imputed #, missing_indicators
#     )
#     missing_names <- c()
#   }else {
#     missing_names <- c()
#   }
#   
#   to_drop <- names(p_missing[(max_p_missing < p_missing)])
#   updated_nodes <- lapply(node_list, function(node) {
#     node_no_missing <- intersect(no_missing, node)
#     node_imputed <- c(to_impute, missing_names)[to_impute %in% 
#                                                   node]
#     return(c(node_no_missing, node_imputed))
#   })
#   return(list(data = processed, node_list = updated_nodes, 
#               n_dropped = n_dropped, dropped_cols = to_drop))
# }
# 
# 
# 
