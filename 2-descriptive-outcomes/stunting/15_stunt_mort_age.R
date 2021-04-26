##########################################
# ki longitudinal manuscripts
# stunting analysis

# analyze mortality proportion by age
##########################################
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

mort <- readRDS(paste0(ghapdata_dir,"mortality.rds"))
