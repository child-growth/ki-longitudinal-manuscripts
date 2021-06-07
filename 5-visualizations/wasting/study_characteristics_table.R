

rm(list=ls())
source(here::here("/0-config.R"))
#remotes::install_github("benjaminrich/table1") #install dev version for missing package
library(table1)

#load covariates
cov<-readRDS(paste0(ghapdata_dir,"FINAL_clean_covariates.rds"))

d <- cov %>% filter(studyid %in% monthly_cohorts)
colnames(d)
d <- d %>% 
  mutate(country=str_to_title(country),
         cohort=paste0(studyid,", ",country)) %>%
  select(cohort, sex, W_birthwt, W_mage, W_mwtkg, W_meducyrs,  nrooms, nchldlt5, impsan, hfoodsec)
head(d)

colnames(d)
d <- d %>% rename(Sex=sex,
                  Birthweight=W_birthwt,
                  `Maternal age`=W_mage,
                  `Maternal weight`=W_mwtkg,
                  `Maternal education\n(years)`=W_meducyrs,
                  `Number of rooms`=nrooms,
                  `Improved sanitation`=impsan,
                  `Number of children <5yrs`=nchldlt5,
                  `Food security level`=hfoodsec)


table1(~ .| cohort, data=d, 
       # transpose=TRUE,
       # overall=F, 
       # droplevels=T,
       render.missing=NULL,
       render.categorical="FREQ (PCTnoNA%)")


table1(~ .| cohort, data=d, 
       transpose=TRUE,
       droplevels=T,
       # render.missing=NULL, #note these arguements don't work with transposing
       # render.categorical="FREQ (PCTnoNA%)"
       )

#Open in new window, select all, then ctrl+Alt+V to paste special in Word