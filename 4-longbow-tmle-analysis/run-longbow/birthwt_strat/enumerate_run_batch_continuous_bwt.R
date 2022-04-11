
rm(list=ls())
try(.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/4.0/" , .libPaths() ) ))

source(paste0(here::here(), "/0-config.R"))
try(.libPaths( "~/rlibs" ))
library(data.table)
library(longbowtools)
library(progress)
library(longbowRiskFactors)


# 1. enumerate analysis
setwd(here("4-longbow-tmle-analysis","run-longbow","primary-analysis"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)

#Set to continious
default_params$script_params$count_Y <- FALSE

#load analyses
load(here("4-longbow-tmle-analysis","analysis specification","adjusted_continuous.rdata"))

#Drop growth velocity
dim(analyses)
analyses <- analyses %>% filter(Y=="haz" | Y=="whz", !(A %in% c("perdiar24","predfeed3","predfeed6","predfeed36","exclfeed3",
                                                                 "exclfeed6","exclfeed36", "anywast06","pers_wast","fhtcm","brthmon","month","gagebrth","birthwt","birthlen","enstunt","enwast")))
dim(analyses)

analyses$strata

unique(analyses$A)

#drop birth size as RF, and drop birth size from covariate set
for(i in 1:nrow(analyses)){
  if(!is.null(analyses$W[[i]])){
    analyses$W[[i]] <- analyses$W[[i]][!(analyses$W[[i]] %in% c("gagebrth","birthwt","birthlen","enstunt","enwast"))]
  }
  analyses$strata[[i]] <- c("agecat","studyid","country","birthwt")
}


load("/data/KI/UCB-SuperLearner/Manuscript analysis data/wast_meanZ_rf.Rdata")
d <- d %>% filter(!is.na(birthwt)) %>% filter(agecat=="24 months") %>% droplevels()
save(d, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/wast_meanZ_rf_bwt_strat.Rdata")

load("/data/KI/UCB-SuperLearner/Manuscript analysis data/st_meanZ_rf.Rdata")
d <- d %>% filter(!is.na(birthwt)) %>% filter(agecat=="24 months") %>% droplevels()
save(d, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/st_meanZ_rf_bwt_strat.Rdata")

analyses$strata
#specify analyses
analyses$file <- gsub("rf.Rdata","rf_bwt_strat.Rdata",analyses$file)
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)



run_ki_tmle(enumerated_analyses, results_folder="results_cont_bwt_strat", overwrite = F, skip_failed = F)


