

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))



stunt <- readRDS(stunting_data_path)
cc_tab1 <- stunt %>% filter(agedays < 24 * 30.4167) %>%
  group_by(studyid, country) %>% 
  summarize(nobs=n(), nchild=length(unique(paste0(subjid)))) %>%
  as.data.frame()
cc_tab1


stunt_tab1 <- stunt %>% filter(agedays < 24 * 30.4167) %>%
  filter(measurefreq!="yearly") %>%
  group_by(studyid, country) %>% 
  summarize(nobs=n(), nchild=length(unique(paste0(subjid)))) %>%
  as.data.frame()
stunt_tab1


wast <- readRDS(wasting_data_path)
wast_tab1 <- wast %>% filter(agedays < 24 * 30.4167) %>%
  filter(measurefreq=="monthly") %>%
  group_by(studyid, country) %>% 
  summarize(nobs=n(), nchild=length(unique(paste0(subjid))))%>%
  as.data.frame()
wast_tab1

saveRDS(cc_tab1, file=here("/results/cc_table1.rds"))
saveRDS(stunt_tab1, file=here("/results/stunt_table1.rds"))
saveRDS(wast_tab1, file=here("/results/wast_table1.rds"))
