


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


#load covariate dataset (one row per child)
cov <- readRDS(clean_covariates_path)

cov <- cov %>% filter(studyid %in% monthly_cohorts)

ptb <- cov %>% filter(!is.na(gagebrth))
lbw <- cov %>% filter(!is.na(birthwt))

prop.table(table(ptb$studyid,ptb$gagebrth))
prop.table(table(lbw$studyid,ptb$gagebrth))