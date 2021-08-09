

#-----------------------------------
# Wasting Outcomes - Risk factor analysis
# Repeat sections of descriptive epi
# scripts to calculate the outcomes on
# the risk factor dataset (monthly and
# quarterly, all arms of RCTs)
#-----------------------------------
rm(list=ls())

source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))


load(paste0(ghapdata_dir,"Wasting_inc_rf_data.RData"))


#Drop TR so it doesn't affect merge with covariates
d <- d %>% subset(., select= -c(tr))
d_noBW <- d_noBW %>% subset(., select= -c(tr))

#--------------------------------------
# Calculate monthly mean WHZ for the
# risk factor analysis
#--------------------------------------
# monthly_whz <- calc.monthly.agecat(d)
# monthly_whz <- monthly_whz %>% subset(., select=c(subjid,studyid,country,agecat,region, measurefreq, whz))
# monthly_whz <- monthly_whz %>%
#   filter(!is.na(agecat)) %>%
#   group_by(studyid,country,subjid,agecat,measurefreq) %>%
#   summarise(whz=mean(whz))
# save(monthly_whz, file="/home/andrew.mertens/data/KI/UCB-SuperLearner/Manuscript analysis data/monthly_whz.rdata")

#--------------------------------------
# Calculate prevalence of
# Wasting in certain age ranges for the
# risk factor analysis
#--------------------------------------

# define age windows
dprev <- calc.prev.agecat(d)


# take mean of multiple measurements within age window
dmn <- dprev %>%
  filter(!is.na(agecat)) %>%
  group_by(studyid,country,subjid,agecat) %>%
  summarise(whz=mean(whz)) %>%
  mutate(wasted=ifelse(whz< -2, 1,0),swasted=ifelse(whz< -3, 1,0))


# export
prev = dmn %>% 
  filter(agecat=="Birth" | agecat=="6 months" | agecat=="24 months") %>% 
  select(studyid,subjid,country,agecat, wasted, swasted)

# save mean Z scores at each age
meanWHZ = dmn %>% 
  filter(agecat=="Birth" | agecat=="6 months" | agecat=="24 months") %>%
  select(studyid,subjid,country,agecat,
         whz)

#--------------------------------------
# Calculate cumulative incidence of
# wasting in certain age ranges for the
# risk factor analysis
#--------------------------------------


# define age windows
d6 <- calc.ci.agecat(d, range = 6, birth="yes")


#calculate any wasting from 0-6
wast_ci_0_6 = d6 %>% ungroup() %>%
  filter(agecat=="0-6 months") %>%
  group_by(studyid,country,subjid) %>%
  #create variable with minhaz by age category, cumulatively
  mutate(agecat="0-6 months", ever_wasted= 1*(sum(wast_inc, na.rm=T)>0), ever_swasted= 1*(sum(sevwast_inc, na.rm=T)>0), Nobs=n()) %>% slice(1) %>%
  mutate(N=n()) %>%
  ungroup() 

# #calculate any wasting from 6-24
wast_ci_6_24 = d6 %>% ungroup() %>% 
  group_by(studyid,country,subjid) %>%
  arrange(studyid,country,subjid, agedays) %>% 
  filter(agecat!="0-6 months") %>%
  mutate(agecat="6-24 months",  ever_wasted=1*(sum(wast_inc, na.rm=T)>0), ever_swasted= 1*(sum(sevwast_inc, na.rm=T)>0), Nobs=n()) %>% slice(1) %>%
  mutate(N=n()) %>%
  ungroup() 

#calculate any wasting from 0-24
wast_ci_0_24 = d6 %>% ungroup() %>%
  filter(!is.na(agecat)) %>%
  group_by(studyid,country,subjid) %>%
  #create variable with minhaz by age category, cumulatively
  mutate(agecat="0-24 months", ever_wasted=1*(sum(wast_inc, na.rm=T)>0),  ever_swasted= 1*(sum(sevwast_inc, na.rm=T)>0), Nobs=n()) %>% slice(1) %>%
  mutate(N=n()) %>%
  ungroup() 

cuminc <- bind_rows(wast_ci_0_6, wast_ci_6_24, wast_ci_0_24)


#--------------------------------------
# Calculate cumulative incidence, excluding
# wasting at birth
#--------------------------------------

# define age windows
d6_nobirth <- calc.ci.agecat(d_noBW, range = 6, birth="yes")


wast_ci_0_6_no_birth = d6_nobirth %>% ungroup() %>% 
  arrange(studyid,country,subjid, agedays) %>% 
  filter(agecat=="0-6 months" & !is.na(agecat)) %>%
  group_by(studyid,country,subjid) %>%
  arrange(studyid,country,subjid, agedays) %>% 
  filter(wasting_episode!="Born Wasted") %>% #drop children born wasted
  mutate(agecat="0-6 months (no birth wast)", ever_wasted=1*(sum(wast_inc, na.rm=T)>0),  ever_swasted= 1*(sum(sevwast_inc, na.rm=T)>0), Nobs=n()) %>% slice(1) %>%
  mutate(N=n()) %>%
  ungroup() 

wast_ci_0_24_no_birth = d6_nobirth %>% ungroup() %>% 
  filter(!is.na(agecat)) %>%
  group_by(studyid,country,subjid) %>%
  arrange(studyid,country,subjid, agedays) %>% 
  filter(wasting_episode!="Born Wasted") %>% #drop children born wasted
  mutate(agecat="0-24 months (no birth wast)", ever_wasted=1*(sum(wast_inc, na.rm=T)>0),  ever_swasted= 1*(sum(sevwast_inc, na.rm=T)>0), Nobs=n()) %>% slice(1) %>%
  mutate(N=n()) %>%
  ungroup()

cuminc_nobirth <- rbind(wast_ci_0_6_no_birth, wast_ci_0_24_no_birth, wast_ci_6_24)


table(cuminc$ever_wasted[cuminc$agecat=="0-6 months"])
table(cuminc_nobirth$ever_wasted[cuminc_nobirth$agecat=="0-6 months (no birth wast)"])

table(cuminc$ever_wasted[cuminc$agecat=="0-24 months"])
table(cuminc_nobirth$ever_wasted[cuminc_nobirth$agecat=="0-24 months (no birth wast)"])


#--------------------------------------
# Calculate persistant wasting
#--------------------------------------

pers_wast_0_6 <- d6 %>% 
  filter(agecat=="0-6 months") %>%
  group_by(studyid,country,subjid) %>%
  arrange(studyid,country,subjid, agedays) %>% 
  mutate(N=n()) %>% filter(N>=4) %>%
  mutate(perc_wasting=mean(whz < (-2)), mean_age_gap=mean(agedays-lag(agedays),na.rm=T)) %>% 
  slice(1) %>%
  mutate(pers_wast = 1*(perc_wasting >= 0.5)) %>%
  mutate(agecat="0-6 months") %>% ungroup() 

summary(pers_wast_0_6$perc_wasting)
table(pers_wast_0_6$pers_wast)

pers_wast_0_24 <- d6 %>% 
  filter(!is.na(agecat)) %>%
  group_by(studyid,country,subjid) %>%
  arrange(studyid,country,subjid, agedays) %>% 
  mutate(N=n()) %>% filter(N>=4) %>%
  mutate(perc_wasting=mean(whz < (-2)), mean_age_gap=mean(agedays-lag(agedays),na.rm=T)) %>%
  slice(1) %>%
  mutate(pers_wast = 1*(perc_wasting >= 0.5)) %>%
  mutate(agecat="0-24 months") %>% ungroup() 

pers_wast_6_24 <- d6 %>% 
  filter(agecat!="6 months" & !is.na(agecat)) %>%
  group_by(studyid,country,subjid) %>%
  arrange(studyid,country,subjid, agedays) %>% 
  mutate(N=n()) %>% filter(N>=4) %>%
  mutate(perc_wasting=mean(whz < (-2)), mean_age_gap=mean(agedays-lag(agedays),na.rm=T)) %>%
  slice(1) %>%
  mutate(pers_wast = 1*(perc_wasting >= 0.5)) %>%
  mutate(agecat="6-24 months") %>% ungroup() 

table(pers_wast_0_6$pers_wast)
table(pers_wast_6_24$pers_wast)
table(pers_wast_0_24$pers_wast)

mean(pers_wast_0_6$pers_wast)
mean(pers_wast_6_24$pers_wast)
mean(pers_wast_0_24$pers_wast)

mean(pers_wast_0_6$mean_age_gap)
mean(pers_wast_6_24$mean_age_gap)
mean(pers_wast_0_24$mean_age_gap)

summary(pers_wast_0_6$mean_age_gap)
summary(pers_wast_6_24$mean_age_gap)
summary(pers_wast_0_24$mean_age_gap)

summary(pers_wast_0_6$perc_wasting)
summary(pers_wast_6_24$perc_wasting)
summary(pers_wast_0_24$perc_wasting)

pers_wast <- bind_rows(pers_wast_0_6, pers_wast_6_24, pers_wast_0_24)


#--------------------------------------
# Calculate wasting recovery
#--------------------------------------

#calculate any wasting from 0-6
wast_rec_0_6 = d6 %>% ungroup() %>%
  filter(agecat=="0-6 months" & !is.na(wast_rec90d)) %>%
  group_by(studyid,country,subjid) %>%
  #create variable with minhaz by age category, cumulatively
  mutate(agecat="0-6 months") %>% ungroup() 

# #calculate any wasting from 6-24
wast_rec_6_24 = d6 %>% ungroup() %>% 
  group_by(studyid,country,subjid) %>%
  arrange(studyid,country,subjid, agedays) %>% 
  filter(agecat!="0-6 months" & !is.na(wast_rec90d)) %>%
  mutate(agecat="6-24 months") %>% ungroup() 

#calculate any wasting from 0-24
wast_rec_0_24 = d6 %>% ungroup() %>%
  filter(!is.na(agecat) & !is.na(wast_rec90d)) %>%
  group_by(studyid,country,subjid) %>%
  mutate(agecat="0-24 months") %>% ungroup() 

rec <- bind_rows(wast_rec_0_6, wast_rec_6_24, wast_rec_0_24)


#--------------------------------------
# save datasets
#--------------------------------------


save(prev, file=paste0(ghapdata_dir,"wast_prev.RData"))
save(meanWHZ, file=paste0(ghapdata_dir,"wast_meanZ_outcomes.RData"))
save(cuminc, file=paste0(ghapdata_dir,"wast_cuminc.rdata"))
save(cuminc_nobirth, file=paste0(ghapdata_dir,"wast_cuminc_nobirth.rdata"))
save(pers_wast, file=paste0(ghapdata_dir,"pers_wast.rdata"))
save(rec, file=paste0(ghapdata_dir,"wast_rec.rdata"))









