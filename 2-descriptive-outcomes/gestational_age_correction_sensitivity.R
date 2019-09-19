


#-----------------------------------
# Check anthropometry measure quality
#-----------------------------------

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(growthstandards)

d <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds"))
