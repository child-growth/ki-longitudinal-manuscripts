

#-----------------------------------
# coing Outcomes - Risk factor analysis
# Repeat sections of descriptive epi
# scripts to calculate the outcomes on
# the risk factor dataset (monthly and
# quarterly, all arms of RCTs)
#-----------------------------------
rm(list=ls())

source(paste0(here::here(), "/0-config.R"))


d <- readRDS(rf_co_occurrence_path)


#Drop TR so it doesn't affect merge with covariates
d <- d %>% subset(., select= -c(tr))




#--------------------------------------
# Calculate cumulative incidence of
# co-occurrence in certain age ranges for the
# risk factor analysis
#--------------------------------------


# define age windows
d6 <- calc.ci.agecat(d, range = 6, birth="yes")

#Mark co-occurrence
d6$co <- ifelse(d6$whz < (-2) & d6$haz < (-2), 1, 0)
table(d6$co)

#calculate any coing from 0-6
co_ci_0_6 = d6 %>% ungroup() %>%
  filter(agecat=="0-6 months") %>%
  group_by(studyid,country,subjid) %>%
  #create variable with minhaz by age category, cumulatively
  mutate(agecat="0-6 months", ever_co= 1*(sum(co, na.rm=T)>0), Nobs=n()) %>% slice(1) %>%
  mutate(N=n()) %>%
  ungroup() 

# #calculate any coing from 6-24
co_ci_6_24 = d6 %>% ungroup() %>% 
  group_by(studyid,country,subjid) %>%
  arrange(studyid,country,subjid, agedays) %>% 
  filter(agecat!="0-6 months") %>%
  mutate(agecat="6-24 months", ever_co= 1*(sum(co, na.rm=T)>0), Nobs=n()) %>% slice(1) %>%
  mutate(N=n()) %>%
  ungroup() 

#calculate any coing from 0-24
co_ci_0_24 = d6 %>% ungroup() %>%
  filter(!is.na(agecat)) %>%
  group_by(studyid,country,subjid) %>%
  #create variable with minhaz by age category, cumulatively
  mutate(agecat="0-24 months", ever_co= 1*(sum(co, na.rm=T)>0), Nobs=n()) %>% slice(1) %>%
  mutate(N=n()) %>%
  ungroup() 

cuminc <- bind_rows(co_ci_0_6, co_ci_6_24, co_ci_0_24)




#--------------------------------------
# save datasets
#--------------------------------------


save(cuminc, file=paste0(ghapdata_dir,"co_cuminc.rdata"))








