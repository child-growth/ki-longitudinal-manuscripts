##########################################
# ki longitudinal manuscripts
# stunting analysis

# calculate mean LAZ by age
# by strata of age of incident stunting

# Inputs:
#   - 0-config.R
#   - 0_descriptive_epi_shared_functions.R
#   - 0_descriptive_epi_stunt_functions.R
#   - stunting_data.rds

# Outputs:
#   - meanlaz_age_incage.RDS
#   - meanlaz_age_incage_monthly.RDS
##########################################

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_shared_functions.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_stunt_functions.R"))

#######################################################################
# Load and process data
#######################################################################
#-------------------------------------------
# Load and pre-process raw stunting data
#-------------------------------------------

d <- readRDS(paste0(ghapdata_dir, "stunting_data.rds"))

#----------------------------------------
# subset to monthly cohorts, drop data after 15 months
#----------------------------------------

d_st <- d %>% filter(measurefreq == "monthly") %>% filter(agedays <= 30.4167*15.5)

#----------------------------------------
# Create indicator for incident stunting
# at birth, after birth to 3 months, 
# after 3 months to 6 months, never
#----------------------------------------

d_st = create_stunting_age_indicators(data = d_st)

#----------------------------------------
# subset to studies that have monthly measurement
# up to 24 months
#----------------------------------------
study24 = c("MAL-ED", "CMC-V-BCS-2002", "IRC", 
            "Keneba", "GMS-Nepal", "CMIN", 
            "CONTENT", "PROVIDE")

d_st_monthly <- d_st %>% filter(studyid %in% study24)

#Proportion of children in each category 
d_st_monthly %>% group_by(studyid, subjid) %>% slice(1) %>% 
  filter(!is.na(stunt_inc_age)) %>%
  ungroup() %>% mutate(tot_N=n()) %>%
  group_by(stunt_inc_age) %>% summarize(N=n(), tot_N=tot_N[1]) %>%
  mutate(prop=N/tot_N*100)

#######################################################################
# Analyze data
#######################################################################

#----------------------------------------
# monthly mean haz within incident age categories
#----------------------------------------
age_list = list("Never", "Birth", "0-3 months", "3-6 months", "6-9 months","9-12 months", "12-15 months")

meanlaz = function(data, age){ 
  dmon = calc.monthly.agecat(d = data %>% filter(stunt_inc_age == age))
  dmon <- droplevels(dmon)
  
  monthly.haz.data   <-  summary.haz(d = dmon)
  monthly.haz.region <-  dmon  %>% group_by(region) %>% do(summary.haz(., nmeas_threshold = 5)$haz.res)
  monthly.haz.cohort <-  monthly.haz.data$haz.cohort %>% 
    subset(., select = c(cohort, region, agecat, nmeas,  meanhaz,  ci.lb,  ci.ub)) %>%
    rename(est = meanhaz,  lb = ci.lb,  ub = ci.ub)
  
  monthly.haz <- bind_rows(
    data.frame(cohort = "pooled", region = "Overall", monthly.haz.data$haz.res),
    data.frame(cohort = "pooled", monthly.haz.region),
    monthly.haz.cohort
  )
  
  monthly.haz$stunt_inc_age = age
  
  return (monthly.haz)
}

#######################################################################
# generate and save data
#######################################################################

meanlaz_age_incage = lapply(age_list, function(x) meanlaz(data = d_st, age=x))
meanlaz_age_incage = as.data.frame(do.call(rbind, meanlaz_age_incage))
saveRDS(meanlaz_age_incage, file = paste0(res_dir, "meanlaz_age_incage.RDS"))

meanlaz_age_incage_monthly = lapply(age_list, function(x) meanlaz(data = d_st_monthly, age=x))
meanlaz_age_incage_monthly = as.data.frame(do.call(rbind, meanlaz_age_incage_monthly))
saveRDS(meanlaz_age_incage_monthly, file = paste0(res_dir, "meanlaz_age_incage_monthly.RDS"))
 