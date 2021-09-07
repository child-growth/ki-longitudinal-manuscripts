

#-----------------------------------
# Stunting Outcomes - Risk factor analysis
# Repeat sections of descriptive epi
# scripts to calculate the outcomes on
# the risk factor dataset (monthly and
# quarterly, all arms of RCTs)
#-----------------------------------

rm(list=ls())

source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))


d <- readRDS(rf_stunting_data_path)

#--------------------------------------
# Calculate cumulative incidence of
# Stunting in certain age ranges for the
# risk factor analysis
#--------------------------------------


# define age windows
d6 <- calc.ci.agecat(d, range = 6, birth="yes")


d6 <- d6 %>% ungroup() %>% arrange(studyid,country,subjid, agedays) %>%
  group_by(studyid,country,subjid, agecat) %>% 
  mutate(minhaz=min(haz)) %>% 
  ungroup() 


#calculate any stunting from 0-6
stunt_ci_0_6 = d6 %>% ungroup() %>%
  filter(agecat=="0-6 months") %>%
  group_by(studyid,country,subjid) %>%
  #create variable with minhaz by age category, cumulatively
  mutate(agecat="0-6 months", minhaz=min(haz), ever_stunted=ifelse(minhaz< (-2),1,0), ever_sstunted=ifelse(minhaz< (-3),1,0), Nobs=n()) %>% slice(1) %>%
  mutate(N=n()) %>%
  ungroup() 


stunt_ci_6_24 = d6 %>% ungroup() %>% 
  group_by(studyid,country,subjid) %>%
  arrange(studyid,country,subjid, agedays) %>% 
  mutate(anystunt06 = 1*(agecat=="0-6 months" & minhaz < -2),
         anystunt06 = anystunt06[1]) %>% 
  filter(agecat!="0-6 months" & !is.na(agecat) & anystunt06==0) %>%
  mutate(agecat="6-24 months", minhaz=min(haz), ever_stunted=ifelse(minhaz< -2,1,0), ever_sstunted=ifelse(minhaz< (-3),1,0), Nobs=n()) %>% slice(1) %>%
  mutate(N=n()) %>%
  ungroup() %>%
  select(studyid,subjid, country,tr,agedays,haz, measurefreq, measid, agecat,minhaz, ever_stunted,ever_sstunted,Nobs, N)


#calculate any stunting from 0-24
stunt_ci_0_24 = d6 %>% ungroup() %>%
  filter(!is.na(agecat)) %>%
  group_by(studyid,country,subjid) %>%
  #create variable with minhaz by age category, cumulatively
  mutate(agecat="0-24 months", minhaz=min(haz), ever_stunted=ifelse(minhaz< -2,1,0), ever_sstunted=ifelse(minhaz< (-3),1,0), Nobs=n()) %>% slice(1) %>%
  mutate(N=n()) %>%
  ungroup() 

#calculate stunting reversal
stunt_rec = d6 %>% ungroup() %>%
  filter(agecat %in% c("0-6 months", "18-24 months")) %>%
  group_by(studyid,country,subjid, agecat) %>%
  summarise(N=n(), stunt_inc = 1*!(min(haz) < -2)) %>% #flip so 0 is still stunted and 1 is recovered
  ungroup()  %>%
  filter((N>=2 & agecat=="18-24 months") |  
           (N>=2 & agecat=="0-6 months" & stunt_inc==0)) %>% 
  group_by(studyid,country,subjid) %>% 
  mutate(Nagecats=n()) %>% filter(Nagecats==2) %>%
  filter(agecat=="18-24 months") %>%
  droplevels()


stunt_ci_6_24 <- stunt_ci_6_24 %>% subset(., select = -c(anystunt06))
cuminc <- bind_rows(stunt_ci_0_6, stunt_ci_6_24, stunt_ci_0_24)
cuminc <- cuminc  %>% subset(., select = -c(sex))


#--------------------------------------
# Calculate cumulative incidence, excluding
# stunting at birth
#--------------------------------------


stunt_ci_0_6_no_birth = d6 %>% ungroup() %>% 
  arrange(studyid,country,subjid, agedays) %>% 
  filter(agecat=="0-6 months" & !is.na(agecat)) %>%
  group_by(studyid,country,subjid) %>%
  arrange(studyid,country,subjid, agedays) %>% 
  #mark if children were born stunted and drop
  mutate(start_stunt= as.numeric(first(haz) < -2)) %>%
  filter(start_stunt==0) %>% #drop children born wasted
  mutate(agecat="0-6 months (no birth st.)", minhaz=min(haz), ever_stunted=ifelse(minhaz< -2,1,0), ever_sstunted=ifelse(minhaz< (-3),1,0), Nobs=n()) %>% slice(1) %>%
  mutate(N=n()) %>%
  ungroup() %>%
  select(studyid,subjid, country,tr,agedays,haz, measurefreq, measid, agecat,minhaz, ever_stunted,ever_sstunted,Nobs,N)

stunt_ci_0_24_no_birth = d6 %>% ungroup() %>% 
  filter(!is.na(agecat)) %>%
  group_by(studyid,country,subjid) %>%
  arrange(studyid,country,subjid, agedays) %>% 
  #mark if children were born stunted and drop
  mutate(start_stunt= as.numeric(first(haz) < -2)) %>% 
  filter(start_stunt==0) %>% #drop children born wasted
  mutate(agecat="0-24 months (no birth st.)", minhaz=min(haz), ever_stunted=ifelse(minhaz< -2,1,0), ever_sstunted=ifelse(minhaz< (-3),1,0), Nobs=n()) %>% slice(1) %>%
  mutate(N=n()) %>%
  ungroup() %>%
  select(studyid,subjid, country,tr,agedays,haz, measurefreq, measid, agecat,minhaz, ever_stunted,ever_sstunted,Nobs,N)

cuminc_nobirth <- bind_rows(stunt_ci_0_6_no_birth, stunt_ci_0_24_no_birth, stunt_ci_6_24)


table(cuminc$ever_stunted[cuminc$agecat=="0-6 months"])
table(cuminc_nobirth$ever_stunted[cuminc_nobirth$agecat=="0-6 months (no birth st.)"])

table(cuminc$ever_stunted[cuminc$agecat=="0-24 months"])
table(cuminc_nobirth$ever_stunted[cuminc_nobirth$agecat=="0-24 months (no birth st.)"])

head(cuminc)
head(cuminc_nobirth)


#--------------------------------------
# Calculate prevalence of
# Stunting in certain age ranges for the
# risk factor analysis
#--------------------------------------

# define age windows
dprev <- calc.prev.agecat(d)


# take mean of multiple measurements within age window
dmn <- dprev %>%
  filter(!is.na(agecat)) %>%
  group_by(studyid,country,subjid,agecat) %>%
  summarise(haz=mean(haz)) %>%
  mutate(stunted=ifelse(haz< -2, 1,0),sstunted=ifelse(haz< -3, 1,0))


# export
prev = dmn %>% 
  filter(agecat=="Birth" | agecat=="6 months" | agecat=="24 months") %>%
  select(studyid,subjid,country,agecat,
         stunted, sstunted)

# save mean Z scores at each age
meanHAZ = dmn %>% 
  filter(agecat=="Birth" | agecat=="6 months" | agecat=="24 months") %>%
  select(studyid,subjid,country,agecat,
         haz)


#--------------------------------------
# Calculate recovery from
# Stunting in certain age ranges for the
# risk factor analysis
#--------------------------------------

# subset to monthly data
d <- d %>% filter(measurefreq=="monthly")

# create age in months
d <- d %>% mutate(agem=agedays/30.4167)

# sort data
d <- d %>% arrange(studyid, country, subjid, agedays)

# define age windows with 2 week buffer around age point
# (ie, for 6 months, consider recovery in the window  up to 7 months)
d = d %>% 
  mutate(agecat=ifelse(agedays==1,"Birth",
                       ifelse(agedays>1 & agedays<=3.5*30.4167,"3 months",
                              ifelse(agedays>3.5*30.4167 & agedays<=6.5*30.4167,"6 months",
                                     ifelse(agedays>6.5*30.4167 & agedays<=9.5*30.4167,"9 months",
                                            ifelse(agedays>9.5*30.4167 & agedays<=12.5*30.4167,"12 months",
                                                   ifelse(agedays>12.5*30.4167 & agedays<=18.5*30.4167,"18 months",
                                                          ifelse(agedays>18.5*30.4167& agedays<=24.5*30.4167,"24 months","")))))))) %>%
  mutate(agecat=factor(agecat,levels=c("Birth","3 months","6 months","9 months","12 months","18 months","24 months")))

# check age categories
d %>%
  group_by(agecat) %>%
  summarise(n=sum(!is.na(agedays)),
            min=min(agedays/30.4167),
            mean=mean(agedays/30.4167,na.rm=TRUE),
            max=max(agedays/30.4167))

# subset to stunted between birth and 3 months
stunt.03 <- d %>%
  filter(agecat=="Birth" | agecat=="3 months") %>%
  group_by(studyid,country,subjid) %>%
  mutate(measid=seq_along(subjid))  %>%
  mutate(stunted=ifelse(haz< -2,1,0),
         lagstunted=lag(stunted),
         leadstunted=lead(stunted))  %>%
  # unique stunting episode
  mutate(sepisode=ifelse(lagstunted==0 & stunted==1 & leadstunted==1 |
                           stunted==1 & measid==1,1,0)) %>%
  # identify whether child had stunting episode between 0 and 3 months 
  summarise(stunted03=max(sepisode,na.rm=TRUE))

rec.24 <- d %>%
  filter(agecat=="24 months") %>%
  # identify last two measurements prior to 24 months
  group_by(studyid,country,subjid) %>%
  mutate(rank=min_rank(-agedays)) %>%
  filter(rank<= 2) %>%
  # flag kids with 2 measurements not stunted
  mutate(rec=ifelse(haz>= -2,1,0)) %>%
  mutate(recsum=cumsum(rec)) %>%
  # one row for each kid, indicator for recovered
  summarise(maxrec=max(recsum)) %>%
  mutate(rec24=ifelse(maxrec==2,1,0)) %>%
  select(-c(maxrec))

rev <- full_join(stunt.03, rec.24,by=c("studyid","country","subjid")) %>%
  mutate(s03rec24=ifelse(stunted03==1 & rec24==1,1,0), agecat="0-24 months") %>%
  select(studyid, country,subjid, s03rec24, agecat)

#--------------------------------------
# Format and subset the growth velocity dataset
#--------------------------------------
vel <- readRDS(file=paste0(ghapdata_dir,"velocity_longfmt_rf.rds"))

#Drop yearly studies
vel <- vel[!vel$studyid %in% c(
  "WASH-Bangladesh",       
  "WASH-Kenya",  
  "iLiNS-DOSE",     
  "iLiNS-DYAD-M", 
  "iLiNS-DYAD-G",
  "AgaKhanUniv",           
  "Burkina Faso Zn",    
  "VITAMIN-A",  
  "Vitamin-B12",
  "Serrinha-VitA",   
  "EU",        
  "ZnMort"),]

vel <- vel[!(vel$studyid=="COHORTS" & vel$country=="BRAZIL"),] #Drop because yearly 
vel <- vel[!(vel$studyid=="COHORTS" & vel$country=="SOUTH AFRICA"),] #Drop because yearly 

class(vel$subjid)

#Get only HAZ change from growth velocity dataset, and format names
vel_haz <- vel %>% filter(ycat=="haz") %>% subset(., select=c(studyid, country, subjid, y_rate, diffcat)) %>%
  rename(agecat = diffcat)

#Get only height in cm change from growth velocity dataset, and format names
vel_lencm <- vel %>% filter(ycat=="lencm") %>% subset(., select=c(studyid, country, subjid, y_rate, diffcat)) %>%
  rename(agecat = diffcat)


#Get only HAZ change from growth velocity dataset, and format names
vel_waz <- vel %>% filter(ycat=="waz") %>% subset(., select=c(studyid, country, subjid, y_rate, diffcat)) %>%
  rename(agecat = diffcat)

#Get only height in cm change from growth velocity dataset, and format names
vel_wtkg <- vel %>% filter(ycat=="wtkg") %>% subset(., select=c(studyid, country, subjid, y_rate, diffcat)) %>%
  rename(agecat = diffcat)


#--------------------------------------
# save datasets
#--------------------------------------


save(prev, file=paste0(ghapdata_dir,"st_prev_outcomes.RData"))
save(meanHAZ, file=paste0(ghapdata_dir,"st_meanZ_outcomes.RData"))
save(cuminc, file=paste0(ghapdata_dir,"st_cuminc_outcomes.rdata"))
save(cuminc_nobirth, file=paste0(ghapdata_dir,"st_cuminc_outcomes_nobirth.rdata"))
save(rev, file=paste0(ghapdata_dir,"st_rec_outcomes.RData"))
save(stunt_rec, file=paste0(ghapdata_dir,"st_inc_recovery_outcomes.RData"))
save(vel_haz, file=paste0(ghapdata_dir,"haz_vel_outcomes.RData"))
save(vel_waz, file=paste0(ghapdata_dir,"waz_vel_outcomes.RData"))
save(vel_lencm, file=paste0(ghapdata_dir,"len_vel_outcomes.RData"))
save(vel_wtkg, file=paste0(ghapdata_dir,"weight_vel_outcomes.RData"))

