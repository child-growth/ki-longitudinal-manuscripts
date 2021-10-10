

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

load(here("4-longbow-tmle-analysis","analysis specification","adjusted_continuous.rdata"))

#Subset to growth velocity
unique(analyses$A)
analyses <- analyses %>% filter(Y!="haz" & Y!="whz", !(A %in% c("predfeed3","predfeed6","predfeed36","exclfeed3","exclfeed6","exclfeed36","enstunt", "enwast", "anywast06", "pers_wast")))
table(analyses$Y)
analyses <- analyses %>% 
  mutate(Y=factor(Y, levels=c("y_rate_wtkg","y_rate_waz","y_rate_haz","y_rate_len"))) %>% 
  arrange(Y) %>% mutate(Y=as.character(Y))
analyses$file <- gsub("wy_rate_waz_vel_rfRdata","waz_vel_rf.Rdata",analyses$file)
table(analyses$file)

#subset to maternal height
table(analyses$A)
analyses <- analyses %>% filter(A %in% c("mhtcm","mwtkg","mbmi","fhtcm"))
unique(analyses$file)

#check data - drop probit so it works
load("/data/KI/UCB-SuperLearner/Manuscript analysis data/st_haz_vel_rf.Rdata")
d <- d %>% mutate(mbmi=ifelse(studyid=="PROBIT", NA, mbmi))
save(d, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/st_haz_vel_rf.Rdata")

load("/data/KI/UCB-SuperLearner/Manuscript analysis data/y_rate_wtkg_vel_rf.Rdata")
d <- d %>% mutate(mbmi=ifelse(studyid=="PROBIT", NA, mbmi))
save(d, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/y_rate_wtkg_vel_rf.Rdata")

load("/data/KI/UCB-SuperLearner/Manuscript analysis data/waz_vel_rf.Rdata")
d <- d %>% mutate(mbmi=ifelse(studyid=="PROBIT", NA, mbmi))
save(d, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/waz_vel_rf.Rdata")

load("/data/KI/UCB-SuperLearner/Manuscript analysis data/st_len_vel_rf.Rdata")
d <- d %>% mutate(mbmi=ifelse(studyid=="PROBIT", NA, mbmi))
save(d, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/st_len_vel_rf.Rdata")


enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)
# params=enumerated_analyses[[1]]
# load("/data/KI/UCB-SuperLearner/Manuscript analysis data/waz_vel_rf.Rdata")
# head(d)

# run_ki_tmle(enumerated_analyses, results_folder="results_vel_glm", overwrite = F, skip_failed=F,
#             rmd_filename = here("4-longbow-tmle-analysis/run-longbow/longbow_RiskFactors_vel.Rmd"))

paste0(BV_dir,"/tmle/","results_vel_mwtkg","/")
run_ki_tmle(enumerated_analyses, results_folder="results_vel_mwtkg", overwrite = T, skip_failed=F)

