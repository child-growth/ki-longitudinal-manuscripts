

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))




d <- readRDS(paste0(ghapdata_dir,"/ki-manuscript-dataset.rds"))



summaryd<-d %>% filter(agedays < 24 * 30.4167) %>%
  filter(haz < 6 & haz > -6) %>%
  group_by(studyid, country) %>% 
  summarize(nobs=n(), nchild=length(unique(paste0(subjid))))



