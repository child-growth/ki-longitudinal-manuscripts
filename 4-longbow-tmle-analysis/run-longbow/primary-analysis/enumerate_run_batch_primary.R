
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
analyses <- analyses %>% filter(A!="pers_wast",A!="anywast06", A!="enstunt", A!="enwast")
analyses <- analyses %>% filter(A!="fage_rf",A!="fhtcm_rf") %>% mutate(Y=factor(Y, levels=rev(c("pers_wast", "ever_wasted","ever_swasted" ,   "ever_stunted", "ever_sstunted" )))) %>%
  arrange(Y) %>% mutate(Y=as.character(Y))
head(analyses)
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

enumerated_analyses[[1]]  
load("/data/KI/UCB-SuperLearner/Manuscript analysis data/sst_cuminc_nobirth_rf_primary.rdata")
table(d$birthlen , d$ever_sstunted)

run_ki_tmle(enumerated_analyses, results_folder="results_bin_primary", overwrite = F, skip_failed=T)
