

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library("googlesheets")

#Load in dataset of ages for all studyid
d <- readRDS(here("results/study_age_check_data.RDS"))

#Examine all study names
unique(d$studyid)




#------------------------------------------------------------------------------------
# Check LCNI-5 cohort
#------------------------------------------------------------------------------------

df <- d %>% filter(studyid == "ki1148112-LCNI-5")









