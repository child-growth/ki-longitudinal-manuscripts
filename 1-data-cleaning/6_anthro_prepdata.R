
#-----------------------------------
# Stunting analysis
# Objective 1a
# Import data, subset to relevant variables
#-----------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#--------------------------------------------
# Read in master data file
#--------------------------------------------

d <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds"))
dim(d)
length(unique(paste0(d$studyid,d$country,d$subjid)))


#--------------------------------------------
# Subset to  just identifying and anthro data
#--------------------------------------------

d <- d %>% subset(., select=c(studyid, subjid, country, region, measurefreq, tr, sex, agedays, haz, whz, waz, muaz, latitude, longitud))

#Check for duplicate agedays
dup_age <- d %>% group_by(studyid, subjid, agedays) %>%
  summarize(N=n())
mean(dup_age$N)

# count number of studies
length(names(table(d$studyid)))

# table of studies
table(d$studyid)
table(d$studyid,d$country)

#--------------------------------------------
# order data, create measurement id, and 
# drop unrealistic measures depending on 
# anthropometry measure
#--------------------------------------------
nobs <- nrow(d)
stunt_mort <- d %>% filter(haz >= -6 & haz <=6) %>%
  subset(., select = - c(whz, waz, muaz)) %>%
  arrange(studyid,subjid,agedays) %>%
  group_by(studyid,subjid) %>%
  arrange(studyid,subjid,agedays) %>%
  mutate(measid=seq_along(subjid)) 
#Observations dropped
nobs - nrow(stunt_mort)
nobs - nrow(stunt_mort[stunt_mort$measure_freq!="yearly",])

wast_mort <- d %>% filter(whz >= -5 & whz <=5) %>%
  subset(., select = - c(haz, waz, muaz)) %>%
  arrange(studyid,subjid,agedays) %>%
  group_by(studyid,subjid) %>%
  arrange(studyid,subjid,agedays) %>%
  mutate(measid=seq_along(subjid)) 
nobs - nrow(wast_mort)
nobs - nrow(wast_mort[wast_mort$measure_freq!="yearly",])

waz_mort <- d %>% filter(waz >= -5 & waz <=5) %>%
  arrange(studyid,subjid,agedays) %>%
  group_by(studyid,subjid) %>%
  arrange(studyid,subjid,agedays) %>%
  mutate(measid=seq_along(subjid)) 
nobs - nrow(waz_mort)
nobs - nrow(waz_mort[waz_mort$measure_freq!="yearly",])

co_mort <- d %>% filter(haz >= -6 & haz <=6 & whz >= -5 & whz <=5) %>%
  arrange(studyid,subjid,agedays) %>%
  group_by(studyid,subjid) %>%
  arrange(studyid,subjid,agedays) %>%
  mutate(measid=seq_along(subjid)) 
nobs - nrow(co_mort)
nobs - nrow(co_mort[co_mort$measure_freq!="yearly",])


#--------------------------------------------
# Save datasets with yearly studies for 
# mortality analysis
#--------------------------------------------

save(stunt_mort, wast_mort, waz_mort, co_mort, file=paste0(ghapdata_dir, "mortality_anthro_data.RData"))



#--------------------------------------------
# Subset to non-yearly and save risk factor data
#--------------------------------------------

#Keep monthly and quarterly studies
stunt_rf <- stunt_mort %>% filter(measurefreq!="yearly")
wast_rf <- wast_mort %>% filter(measurefreq!="yearly")
waz_rf <- waz_mort %>% filter(measurefreq!="yearly")
co_rf <- co_mort %>% filter(measurefreq!="yearly")


saveRDS(stunt_rf, rf_stunting_data_path)
saveRDS(wast_rf, rf_wasting_data_path)
saveRDS(waz_rf, rf_underweight_path)
saveRDS(co_rf, rf_co_occurrence_path)

#--------------------------------------------
# Subset to and save descriptive epi data
#--------------------------------------------

#--------------------------------------------
# drop trial arms with intervention impact on HAZ
# -either based on published literature or analysis
# of effects on CI of stunting by 24months of age
#--------------------------------------------

drop_int_arms <- function(d){
  d=d[-which(d$studyid=="kiGH5241-JiVitA-4" & d$tr!="Control"),]
  d=d[-which(d$studyid=="ki1119695-PROBIT" & d$tr!="Control"),]
  d=d[-which(d$studyid=="ki1000304b-SAS-FoodSuppl" & d$tr!="Control"),]
  d=d[-which(d$studyid=="ki1112895-iLiNS-Zinc" & d$tr!="Control"),]
  d=d[-which(d$studyid=="ki1000304b-SAS-CompFeed" & d$tr!="Control"),]
  d=d[-which(d$studyid=="kiGH5241-JiVitA-3" & d$tr!="Control"),]
  d=d[-which(d$studyid=="ki1135781-COHORTS" & d$tr=="Other"),]
  return(d)
}


stunt <- drop_int_arms(stunt_rf) 
wast <- drop_int_arms(wast_rf) 
waz <- drop_int_arms(waz_rf) 
co <- drop_int_arms(co_rf) 

stunt <- droplevels(stunt)
wast <- droplevels(wast)
waz <- droplevels(waz)
co <- droplevels(co)

saveRDS(stunt, stunting_data_path)
saveRDS(wast, wasting_data_path)
saveRDS(waz, underweight_data_path)
saveRDS(co, co_occurrence_data_path)

