
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
analyses <- analyses %>% filter(Y=="haz" | Y=="whz", A %in% c("gagebrth"))
analyses$A <-"SGA"
dim(analyses)

#check data
load("/data/KI/UCB-SuperLearner/Manuscript analysis data/st_meanZ_rf.Rdata")
d <- d %>% filter( !is.na(gagebrth), !is.na(W_birthwt)) %>% droplevels()

#remotes::install_github("ki-tools/growthstandards")
library(growthstandards)

summary(d$W_gagebrth)
summary(d$W_birthwt)

SGA <- igb_value2zscore(gagebrth=d$W_gagebrth, val=d$W_birthwt/1000, var = "wtkg", sex = d$sex)
summary(SGA)
prop.table(table(SGA < (-1.282)))

#NOTE: check NA's and inf in SGA

d$SGA <- ifelse(SGA < (-1.282),"SGA","Not SGA")
d$SGA[is.na(SGA)] <- NA
d$SGA[is.infinite(SGA)] <- NA
table(d$SGA)

save(d, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/st_meanZ_rf_sga.Rdata")


load("/data/KI/UCB-SuperLearner/Manuscript analysis data/wast_meanZ_rf.Rdata")
d <- d %>% filter( !is.na(gagebrth), !is.na(W_birthwt)) %>% droplevels()

SGA <- igb_value2zscore(gagebrth=d$W_gagebrth, val=d$W_birthwt/1000, var = "wtkg", sex = d$sex)
summary(SGA)
prop.table(table(SGA < (-1.282)))

d$SGA <- ifelse(SGA < (-1.282),"SGA","Not SGA")
d$SGA[is.na(SGA)] <- NA
d$SGA[is.infinite(SGA)] <- NA
table(d$SGA)

save(d, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/wast_meanZ_rf_sga.Rdata")


#specify analyses
analyses$file <- c("st_meanZ_rf_sga.Rdata","wast_meanZ_rf_sga.Rdata")
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

paste0(BV_dir,"/tmle/","results_cont_sga","/")
run_ki_tmle(enumerated_analyses, results_folder="results_cont_sga", overwrite = F, skip_failed = F)

