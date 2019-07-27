##########################################
# ki longitudinal manuscripts
# stunting analysis

# calculate mean LAZ by age
# by strata of age of incident stunting
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
# subset to monthly cohorts
#----------------------------------------
d <- d %>% filter(measurefreq == "monthly")

#######################################################################
# Analyze data
#######################################################################
#----------------------------------------
# Create indicator for incident stunting
# at birth, after birth to 3 months, 
# after 3 months to 6 months, never
#----------------------------------------

d_st = create_stunting_age_indicators(data = d)

#----------------------------------------
# monthly mean haz within incident age categories
#----------------------------------------
age_list = list("Birth", "3 months", "6 months", "Never")

meanlaz = function(age){ 
  dmon = calc.monthly.agecat(d = d_st %>% filter(stunt_inc_age == age))

  monthly.haz.data   <-  summary.haz(d = dmon)
  monthly.haz.region <-  dmon  %>% group_by(region) %>% do(summary.haz(., nmeas_threshold = 10)$haz.res)
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

meanlaz_age_incage = lapply(age_list, function(x) meanlaz(age=x))

meanlaz_age_incage = bind_rows(meanlaz_age_incage[1], meanlaz_age_incage[2], meanlaz_age_incage[3], meanlaz_age_incage[4])


#######################################################################
# save data
#######################################################################
saveRDS(meanlaz_age_incage, file = paste0(res_dir, "meanlaz_age_incage.RDS"))
 