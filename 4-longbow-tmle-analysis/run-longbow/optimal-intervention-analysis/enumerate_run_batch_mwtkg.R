
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
analyses <- analyses %>% filter(Y=="haz" | Y=="whz", A %in% c("mwtkg","mhtcm","fhtcm","mbmi"))

analyses$file <- gsub("_rf","_optx",analyses$file)

load("/data/KI/UCB-SuperLearner/Manuscript analysis data/wast_meanZ_optx.Rdata")
table(d$mbmi)
table(d$mhtcm)
table(d$fhtcm)

load("/data/KI/UCB-SuperLearner/Manuscript analysis data/st_meanZ_optx.Rdata")
table(d$mbmi)
table(d$mhtcm)
table(d$fhtcm)

enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)


paste0(BV_dir,"/tmle/","opttx_vim_mwtkg","/")
run_ki_tmle(enumerated_analyses, results_folder="opttx_vim_mwtkg", overwrite = F, skip_failed=F,
            rmd_filename = here("4-longbow-tmle-analysis/run-longbow/longbow_OptTX.Rmd"))


