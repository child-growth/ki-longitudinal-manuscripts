
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
           "birthlen",  "sga",  #    "vagbrth",       
           "hdlvry",        "mage",          "mhtcm",         "mwtkg",        
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



run_ki_tmle(enumerated_analyses, results_folder="opttx_vim", overwrite = F, skip_failed=F,
            rmd_filename = here("4-longbow-tmle-analysis/run-longbow/longbow_OptTX.Rmd"))


