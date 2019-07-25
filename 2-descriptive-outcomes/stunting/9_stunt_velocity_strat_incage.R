##########################################
# ki longitudinal manuscripts
# stunting analysis

# calculate growth velocity by age and sex 
# by strata of age of incident stunting
##########################################

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_shared_functions.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_stunt_functions.R"))

#######################################################################
# Load and process data
#######################################################################
d <- readRDS(paste0(ghapdata_dir, "velocity_longfmt.rds"))


#######################################################################
# Analyze data
#######################################################################

#----------------------------------------
# Format results for pooling
#----------------------------------------
table(d$diffcat)

d <- d %>% rename(agecat = diffcat) %>%
  group_by(studyid, country, agecat, ycat, sex) %>%
  summarise(mean=mean(y_rate, na.rm=T), var=var(y_rate, na.rm=T), sd=sd(y_rate, na.rm=T), n=n()) %>%
  mutate(ci.lb=mean - 1.96 * sd, ci.ub=mean + 1.96 * sd) %>% 
  mutate(region = case_when(
    country=="BANGLADESH" | country=="INDIA"|
      country=="NEPAL" | country=="PAKISTAN"|
      country=="PHILIPPINES"                   ~ "Asia", 
    country=="BURKINA FASO"|
      country=="GUINEA-BISSAU"|
      country=="MALAWI"|
      country=="KENYA"|
      country=="GHANA"|
      country=="SOUTH AFRICA"|
      country=="TANZANIA, UNITED REPUBLIC OF"|
      country=="ZIMBABWE"|
      country=="GAMBIA"                       ~ "Africa",
    country=="BELARUS"                      ~ "Europe",
    country=="BRAZIL" | country=="GUATEMALA" |
      country=="PERU"                         ~ "Latin America",
    TRUE ~ "Other"
  ),
  country_cohort=paste0(studyid," ", country))


#----------------------------------------
# Create indicator for incident stunting
# at birth, after birth to 3 months, 
# after 3 months to 6 months, never
#----------------------------------------
# ANNA: This might be buggy...just FYI
d_st = create_stunting_age_indicators(data = d)

#----------------------------------------
# Random effects pooling within age and sex 
# length velocity
#----------------------------------------
# ANNA: please fill in 

#----------------------------------------
# Random effects pooling within age and sex 
# LAZ velocity
#----------------------------------------
# ANNA: please fill in 


#######################################################################
# save data
#######################################################################
# saveRDS(ANNA_ADD_NAME, file = paste0(res_dir, "stunt_velocity_incage.RDS"))
