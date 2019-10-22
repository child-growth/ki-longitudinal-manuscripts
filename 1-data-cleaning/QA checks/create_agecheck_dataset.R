
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

d <- readRDS(ki_manuscript_dataset_path)

d <- d %>% subset(., select = c(studyid, country, agedays))

saveRDS(d, file=here("results/study_age_check_data.RDS"))