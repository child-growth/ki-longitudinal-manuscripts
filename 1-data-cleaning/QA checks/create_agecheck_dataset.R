
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

d <- readRDS(ki_manuscript_dataset_path)

#Calc number of children in each study
d <- d %>% group_by(studyid, country) %>% mutate(n_children = length(unique(subjid)))

d <- d  %>% mutate(cohort = paste0(studyid, " ", country))  %>% 
  subset(., select = c(cohort, studyid, country, subjid, n_children, agedays)) %>%
  ungroup()

d$id <- d %>% group_indices(.,  subjid)
d <- d %>% select(-subjid)
head(d)

saveRDS(d, file=here("results/study_age_check_data.RDS"))