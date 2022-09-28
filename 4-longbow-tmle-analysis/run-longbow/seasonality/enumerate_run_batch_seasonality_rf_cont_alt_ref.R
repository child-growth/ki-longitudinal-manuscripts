
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
setwd(here("4-longbow-tmle-analysis","run-longbow","seasonality"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)

#Set to continious
default_params$script_params$count_Y <- FALSE

load(here("4-longbow-tmle-analysis","analysis specification","seasonality_rf_Zscore_analyses.rdata"))
analyses


load("/data/KI/UCB-SuperLearner/Manuscript analysis data/seasonality_rf_whz.Rdata")
head(meanWHZ)

d <- meanWHZ %>% filter(agecat=="24 months") %>% 
  mutate(rain_quartile=case_when(rain_quartile==1 ~  "Opposite max rain",
                                 rain_quartile==2 ~  "Pre-max rain",
                                 rain_quartile==3 ~  "Max rain",
                                 rain_quartile==4 ~  "Post-max rain"),
         rain_quartile=factor(rain_quartile, levels=c(  "Post-max rain","Opposite max rain",  "Pre-max rain","Max rain"))) %>%
  droplevels()
levels(d$rain_quartile)
table(d$rain_quartile)

table(d$studyid)

save(d, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/seasonality_rf_whz_alt_ref.Rdata")


load("/data/KI/UCB-SuperLearner/Manuscript analysis data/seasonality_rf_haz.Rdata")
head(meanHAZ)

d <- meanHAZ %>% filter(agecat=="24 months") %>% 
  mutate(rain_quartile=case_when(rain_quartile==1 ~  "Opposite max rain",
                                 rain_quartile==2 ~  "Pre-max rain",
                                 rain_quartile==3 ~  "Max rain",
                                 rain_quartile==4 ~  "Post-max rain"),
         rain_quartile=factor(rain_quartile, levels=c("Opposite max rain",  "Pre-max rain",  "Max rain","Post-max rain"))) %>%
  droplevels()
levels(d$rain_quartile)
table(d$rain_quartile)

table(d$studyid)

save(d, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/seasonality_rf_haz_alt_ref.Rdata")


analyses$file <- c("seasonality_rf_whz_alt_ref.Rdata","seasonality_rf_haz_alt_ref.Rdata")
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)


run_ki_tmle(enumerated_analyses, results_folder="seasonality_rf_cont_alt_ref", overwrite = T, skip_failed = F)

