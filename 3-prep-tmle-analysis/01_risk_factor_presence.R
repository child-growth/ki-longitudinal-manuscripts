



rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#load covariates
cov <- readRDS("U:/ucb-superlearner/Manuscript analysis data/FINAL_clean_covariates.rds")

sum_not_na <- function(x){sum(!is.na(x))}
ifelse_present <- function(x){ifelse(x>0, 1, 0)}

#Calculate presence by study
cov_presence <- cov %>% select(-starts_with('W_'), -id, -subjid, -arm, -tr) %>%
  group_by(studyid, country) %>%
  summarise_all(., funs(sum_not_na)) %>%
  group_by(studyid, country) %>%
  mutate_all(ifelse_present)


#Calculate N's by study
cov_N <- cov %>% select(-starts_with('W_'), -id, -subjid, -arm, -tr) %>%
  group_by(studyid, country) %>%
  summarise_all(., funs(sum_not_na))# %>%
  #group_by(studyid, country) %>%
  #mutate_all(ifelse_present)

saveRDS(cov_presence, file = paste0(here(),"/results/cov_presence.rds"))
saveRDS(cov_N, file = paste0(here(),"/results/cov_N.rds"))





