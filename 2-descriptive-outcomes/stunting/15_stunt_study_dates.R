##########################################
# ki longitudinal manuscripts
# stunting analysis
#
# dates of study inclusion 
##########################################
#-----------------------------------
# preamble
#-----------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

dates = readRDS(paste0(data_dir, "study_start_years.rds"))

stunt_dates = dates %>% filter(studyid %in% monthly_and_quarterly_cohorts)

min(stunt_dates$start_year)
max(stunt_dates$max_yr)
