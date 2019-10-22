
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

d <- readRDS(ki_manuscript_dataset_path)

#Calc number of children in each study
d <- d %>% group_by(studyid, country) %>% mutate(n_children = length(unique(subjid)))

d <- d %>% subset(., select = c(studyid, country, n_children, agedays))

saveRDS(d, file=here("results/study_age_check_data.RDS"))