##########################################
# ki longitudinal manuscripts
# stunting analysis

# analyze mortality proportion by age
##########################################
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# Load data -----------------------------------
mort_data <- readRDS(paste0(ghapdata_dir,"mortality.rds"))
d <- readRDS(paste0(ghapdata_dir, "stunting_data.rds"))

# subset mortality data to included cohorts
mort <- mort_data %>% filter(studyid %in% monthly_and_quarterly_cohorts)

# check included cohorts
assert_that(setequal(unique(d$studyid), monthly_and_quarterly_cohorts),
            msg = "Check data. Included cohorts do not match.")

assert_that(setequal(unique(mort$studyid), monthly_and_quarterly_cohorts),
            msg = "Check data. Included cohorts do not match.")

# START HERE: WHY so many cohorts missing? 

# Generate age categories -----------------------------------
make_agecat <- function(data, agevarName){
  
  wrapr::let(
    alias=list(agevar=agevarName),
    expr={
      data_out <- data %>% 
        mutate(agevar=ifelse(agevar<3*30.4167,"0-3",
                             ifelse(agevar>=3*30.4167 & agevar<6*30.4167,"3-6",
                                    ifelse(agevar>=6*30.4167 & agevar<9*30.4167,"6-9",
                                           ifelse(agevar>=9*30.4167 & agevar<12*30.4167,"9-12",
                                                  ifelse(agevar>=12*30.4167 & agevar<15*30.4167,"12-15",
                                                         ifelse(agevar>=15*30.4167 & agevar<18*30.4167,"15-18",
                                                                ifelse(agevar>=18*30.4167 & agevar<21*30.4167,"18-21",
                                                                       ifelse(agevar>=21*30.4167& agevar<24*30.4167,"21-24",""))))))))) %>%
        mutate(agevar=factor(agevar,levels=c("0-3","3-6","6-9","9-12",
                                             "12-15","15-18","18-21","21-24"))) 
    })
  
  return(data_out)
}

d <- d %>% make_agecat(agevarName = "agedays")
mort <- mort %>% make_agecat(agevarName = "agedth")

# Merge stunting data and mortality data -----------------------------------
dmort <- left_join(d, mort, by = c("studyid", "country", "subjid"))

dmort <- dmort %>% mutate(temp = ifelse(maxage==agedth, 1, 0))

# WHY ONLY 3 STUDIES WITH MATCHING MAXAGE AND AGEDTH? 

# Summarize mortality by cohort and age -----------------------------------
cohort_mort <- mort %>% group_by(studyid, country, agecat) %>% 
  summarise(Ndead = sum(dead, na.rm=T))








