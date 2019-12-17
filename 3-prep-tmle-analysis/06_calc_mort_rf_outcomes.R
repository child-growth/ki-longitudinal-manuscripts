
#-----------------------------------
# Wasting Outcomes - Intervention 
# and mortality analysis
# Repeat sections of descriptive epi
# scripts to calculate the outcomes on
#-----------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load WHZ data
load(paste0(ghapdata_dir, "mortality_anthro_data.RData"))
load(paste0(ghapdata_dir, "Wasting_mort_inc_data.RData"))
d <- d_mort 
d_noBW <- d_mort_noBW




wast_ci_6_24<- wast_ci_0_24<- stunt_ci_6_24<- stunt_ci_0_24<- wast_ci_0_6_no_birth<- wast_ci_0_24_no_birth<- pers_wast_6_24 <-
  co_prev18<- co_ci_6_24<- co_ci_0_24<- underweight_ci_6_24<- underweight_ci_0_24 <- NULL


#--------------------------------------
# Calculate cumulative incidence of
# wasting in certain age ranges for the
# intervention and mortality analysis
#--------------------------------------


#calculate any wasting from 0-6
wast_ci_0_6 = d %>% 
  group_by(studyid,country,subjid) %>%
  mutate(mo6_obs = 1*(agedays = min(abs(agedays - 6*30.4167)))) %>% #Mark observation closest to 6 months (so that yearly trial data isn't dropped)
  filter(agedays<=max(mo6_obs*agedays) & agedays<=6.5*30.4167) %>% #14 day window around 6 months for SAS compfeed and vit A (most obs slightly above 30.4167*6)
  mutate(minwhz=min(whz), ever_wasted06=ifelse(minwhz< -2,1,0), ever_swasted06=ifelse(minwhz< -3,1,0),
         pers_wasted06=as.numeric(mean(whz < (-2)) >= 0.5)) %>% slice(1) %>%
  ungroup() 

table(wast_ci_0_6$ever_wasted06)
table(wast_ci_0_6$ever_swasted06)
table(d$wast_inc[d$agedays<=6*30.4167])
table(d$sevwast_inc[d$agedays<=6*30.4167])

# #calculate any wasting from 6-24
# wast_ci_6_24 = d %>% ungroup() %>%
#   filter(agedays<=24*30.4167 & agedays>6*30.4167) %>%
#   group_by(studyid,country,subjid) %>%
#   arrange(studyid,country,subjid, agedays) %>%
#   mutate(agecat="6-24 months",  ever_wasted624=1*(sum(wast_inc, na.rm=T)>0), ever_swasted624= 1*(sum(sevwast_inc, na.rm=T)>0),
#          pers_wasted624=as.numeric(mean(whz < (-2)) >= 0.5), Nobs=n()) %>%
#   slice(1) %>%
#   mutate(N=n()) %>%
#   ungroup()

#calculate any wasting from 0-24
wast_ci_0_24 = d %>% ungroup() %>%
  filter(agedays<=24*30.4167) %>%
  group_by(studyid,country,subjid) %>%
  mutate(minwhz=min(whz), ever_wasted024=ifelse(minwhz< -2,1,0), ever_swasted024=ifelse(minwhz< -3,1,0),
         pers_wasted024=as.numeric(mean(whz < (-2)) >= 0.5)) %>% slice(1) %>%
  ungroup()


#Persistent wasting outcome
pers_wast_6_24 = d %>% filter(measurefreq!="yearly") %>%
  group_by(studyid,country,subjid) %>%
  filter(agedays>6*30.4167 & agedays<=24*30.4167) %>% 
  mutate( pers_wasted624=as.numeric(mean(whz < (-2)) >= 0.5)) %>% slice(1) %>%
  ungroup() 

#--------------------------------------
# Calculate cumulative incidence, excluding
# wasting at birth
#--------------------------------------

# define age windows
d_noBW = d_noBW %>%
  mutate(agecat=ifelse(agedays<=6*30.4167,"6 months",
                       ifelse(agedays>6*30.4167 & agedays<=12*30.4167,"12 months",
                              ifelse(agedays>12*30.4167 & agedays<=18*30.4167,"18 months",
                                     ifelse(agedays>12*30.4167& agedays<=24*30.4167,"24 months",""))))) %>%
  mutate(agecat=factor(agecat,levels=c("6 months","12 months","18 months","24 months")))


wast_ci_0_6_no_birth = d_noBW %>% ungroup() %>%
  arrange(studyid,country,subjid, agedays) %>%
  filter(agecat=="6 months" & !is.na(agecat)) %>%
  group_by(studyid,country,subjid) %>%
  arrange(studyid,country,subjid, agedays) %>%
  filter(wasting_episode!="Born Wasted") %>% #drop children born wasted
  mutate(agecat="0-6 months (no birth wast)", ever_wasted06_noBW=1*(sum(wast_inc, na.rm=T)>0), ever_swasted06_noBW=1*(sum(sevwast_inc, na.rm=T)>0)) %>% slice(1) %>%
  mutate(N=n()) %>%
  ungroup()

wast_ci_0_24_no_birth = d_noBW %>% ungroup() %>%
  filter(!is.na(agecat)) %>%
  group_by(studyid,country,subjid) %>%
  arrange(studyid,country,subjid, agedays) %>%
  filter(wasting_episode!="Born Wasted") %>% #drop children born wasted
  mutate(agecat="0-24 months (no birth wast)", ever_wasted024_noBW=1*(sum(wast_inc, na.rm=T)>0), ever_swasted024_noBW=1*(sum(sevwast_inc, na.rm=T)>0)) %>% slice(1) %>%
  mutate(N=n()) %>%
  ungroup()

#--------------------------------------
# Calculate cumulative incidence of
# stunting in certain age ranges for the
# mortality analysis
#--------------------------------------


# define age windows
d6 <- calc.ci.agecat(stunt_mort, range = 6, birth="yes")

d6 <- d6 %>% ungroup() %>% arrange(studyid,country,subjid, agedays) %>%
  group_by(studyid,country,subjid, agecat) %>% 
  mutate(minhaz_agecat=min(haz)) %>% 
  ungroup() 


#calculate any stunting from 0-6
stunt_ci_0_6 = d6 %>% 
  group_by(studyid,country,subjid) %>%
  mutate(mo6_obs = 1*(agedays = min(abs(agedays - 6*30.4167)))) %>% #Mark observation closest to 6 months (so that yearly trial data isn't dropped)
  filter(agedays<=max(mo6_obs*agedays) & agedays<=6.5*30.4167) %>% #14 day window around 6 months for SAS compfeed and vit A (most obs slightly above 30.4167*6)
  mutate(minhaz=min(haz), ever_stunted06=ifelse(minhaz< -2,1,0), ever_sstunted06=ifelse(minhaz< -3,1,0)) %>% slice(1) %>%
  ungroup() 


# 
# #calculate any stunting from 0-6 - no birth
# stunt_ci_0_6_no_birth = d6 %>% 
#   group_by(studyid,country,subjid) %>% arrange(studyid,country,subjid,agedays) %>%
#   mutate(firsthaz=first(haz), haz=ifelse(firsthaz >= (-2), haz, NA)) %>% #Drop children born/enrolled stunted
#   mutate(mo6_obs = 1*(agedays = min(abs(agedays - 6*30.4167)))) %>% #Mark observation closest to 6 months (so that yearly trial data isn't dropped)
#   filter(agedays<=max(mo6_obs*agedays) & agedays<=6.5*30.4167) %>% #14 day window around 6 months for SAS compfeed and vit A (most obs slightly above 30.4167*6)
#   mutate(minhaz=min(haz), ever_stunted06=ifelse(minhaz< -2,1,0), ever_sstunted06=ifelse(minhaz< -3,1,0)) %>% slice(1) %>%
#   ungroup() 
# summary(stunt_ci_0_6_no_birth$firsthaz)
# summary(stunt_ci_0_6_no_birth$minhaz)
# summary(stunt_ci_0_6_no_birth$haz)
# 
# table(stunt_ci_0_6$ever_stunted06)
# table(stunt_ci_0_6_no_birth$ever_stunted06)
# 
# 
# table(stunt_ci_0_6$ever_sstunted06)
# table(stunt_ci_0_6_no_birth$ever_sstunted06)

# stunt_ci_6_24 = d6 %>% ungroup() %>%
#   group_by(studyid,country,subjid) %>%
#   arrange(studyid,country,subjid, agedays) %>%
#   mutate(anystunt06 = 1*(agecat=="0-6 months" & minhaz_agecat < -2),
#          anystunt06 = anystunt06[1]) %>%
#   filter(agecat!="0-6 months" & !is.na(agecat) & anystunt06==0) %>%
#   mutate(agecat="6-24 months", minhaz=min(haz), ever_stunted624=ifelse(minhaz< -2,1,0), ever_sstunted624=ifelse(minhaz< (-3),1,0), Nobs=n()) %>% slice(1) %>%
#   mutate(N=n()) %>%
#   ungroup() %>%
#   select(studyid,subjid, country,tr,agedays,haz, measurefreq, measid, agecat,minhaz, ever_sstunted624, ever_stunted624,Nobs, N, anystunt06)
# 

#calculate any stunting from 0-24
stunt_ci_0_24 = d6 %>% ungroup() %>%
  filter(!is.na(agecat)) %>%
  group_by(studyid,country,subjid) %>%
  #create variable with minhaz by age category, cumulatively
  mutate(agecat="0-24 months", minhaz=min(haz), ever_stunted024=ifelse(minhaz< -2,1,0), ever_sstunted024=ifelse(minhaz< (-3),1,0), Nobs=n()) %>% slice(1) %>%
  mutate(N=n()) %>%
  ungroup()

#--------------------------------------
# Calculate cumulative incidence of
# underweight in certain age ranges for the
# mortality analysis
#--------------------------------------


#calculate any underweight from 0-6
underweight_ci_0_6 = waz_mort %>% 
  group_by(studyid,country,subjid) %>%
  mutate(mo6_obs = 1*(agedays = min(abs(agedays - 6*30.4167)))) %>% #Mark observation closest to 6 months (so that yearly trial data isn't dropped)
  filter(agedays<=max(mo6_obs*agedays) & agedays<=6.5*30.4167) %>% #14 day window around 6 months for SAS compfeed and vit A (most obs slightly above 30.4167*6)
  mutate(minwaz=min(waz), ever_underweight06=ifelse(minwaz< -2,1,0), ever_sunderweight06=ifelse(minwaz< -3,1,0)) %>% 
  slice(1) %>%
  ungroup() 


# #calculate any underweight from 6-24
# underweight_ci_6_24 = waz_mort %>% ungroup() %>%
#   filter(agedays<=24*30.4167 & agedays>6*30.4167) %>%
#   group_by(studyid,country,subjid) %>%
#   arrange(studyid,country,subjid, agedays) %>%
#   mutate(agecat="6-24 months",  ever_underweight624=1*(sum(underweight_inc, na.rm=T)>0), ever_sunderweight624= 1*(sum(sunderweight_inc, na.rm=T)>0), Nobs=n()) %>% slice(1) %>%
#   mutate(N=n()) %>%
#   ungroup()

#calculate any underweight from 0-24
underweight_ci_0_24 = waz_mort %>% ungroup() %>%
  filter(agedays<=24*30.4167) %>%
  group_by(studyid,country,subjid) %>%
  mutate(minwaz=min(waz), ever_underweight024=ifelse(minwaz< -2,1,0), ever_sunderweight024=ifelse(minwaz< -3,1,0)) %>%
  slice(1) %>%
  ungroup()


#--------------------------------------
# Calculate co-occurrence exposures
# and outcomes
#--------------------------------------

#--------------------------------------------------------------
# identify children ever stunted + wasted at the same time -
# Cumulative incidence in different age ranges
#--------------------------------------------------------------



# define age windows
d6 <- calc.ci.agecat(co_mort, range = 6, birth="yes")

#Mark co-occurrence
d6$co <- ifelse(d6$whz < (-2) & d6$haz < (-2), 1, 0)
table(d6$co)

#calculate any co-occurrence from 0-6
co_ci_0_6 = d6 %>% group_by(studyid,country,subjid) %>%
  mutate(mo6_obs = 1*(agedays = min(abs(agedays - 6*30.4167)))) %>% #Mark observation closest to 6 months (so that yearly trial data isn't dropped)
  filter(agedays<=max(mo6_obs*agedays) & agedays<=6.5*30.4167) %>% #14 day window around 6 months for SAS compfeed and vit A (most obs slightly above 30.4167*6)
  mutate(ever_co06= 1*(sum(co, na.rm=T)>0), Nobs=n()) %>% 
  slice(1) %>%
  ungroup() 


# # #calculate any coing from 6-24
# co_ci_6_24 = d6 %>% ungroup() %>%
#   group_by(studyid,country,subjid) %>%
#   arrange(studyid,country,subjid, agedays) %>%
#   filter(agecat!="0-6 months") %>%
#   mutate(agecat="6-24 months", ever_co624= 1*(sum(co, na.rm=T)>0), Nobs=n()) %>% slice(1) %>%
#   mutate(N=n()) %>%
#   ungroup()

#calculate any coing from 0-24
co_ci_0_24 = d6 %>% ungroup() %>%
  filter(!is.na(agecat)) %>%
  group_by(studyid,country,subjid) %>%
  #create variable with minhaz by age category, cumulatively
  mutate(agecat="0-24 months", ever_co024= 1*(sum(co, na.rm=T)>0), Nobs=n()) %>% slice(1) %>%
  mutate(N=n()) %>%
  ungroup()

#--------------------------------------------------------------
# identify children ever stunted + wasted at the same time -
# Prevalence at 18 months
#--------------------------------------------------------------


#  get observations closest to 18 months and calculate co-occurence
co_prev18 <- co_mort %>%  filter(measurefreq!="yearly") %>%
  arrange(studyid,subjid,agedays) %>%
  filter(agedays>17*30.4167 & agedays<19*30.4167) %>%
  group_by(studyid,country,subjid) %>%
  filter(!is.na(haz) & !is.na(whz)) %>%
  filter(abs(agedays-18*30.4167)==min(abs(agedays-18*30.4167))) %>%
  mutate(co_occurence = as.numeric(whz < (-2) & haz < (-2)))
table(co_prev18$co_occurence)




#--------------------------------------
# save datasets
#--------------------------------------

save(wast_ci_0_6, wast_ci_6_24, wast_ci_0_24, pers_wast_6_24, stunt_ci_0_6, stunt_ci_6_24, stunt_ci_0_24, wast_ci_0_6_no_birth, wast_ci_0_24_no_birth, pers_wast_6_24,
     co_prev18, 
     co_ci_0_6, co_ci_6_24, co_ci_0_24,
     underweight_ci_0_6, underweight_ci_6_24, underweight_ci_0_24, file=paste0(ghapdata_dir,"mort_exposures.RData"))

