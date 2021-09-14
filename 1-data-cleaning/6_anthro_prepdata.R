
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


#Function to drop correct trial arms
drop_int_arms <- function(d){
  if(length(which(d$studyid=="JiVitA-4" & d$tr!="Control")) > 0){
    d=d[-which(d$studyid=="JiVitA-4" & d$tr!="Control"),]
    d=d[-which(d$studyid=="JiVitA-3" & d$tr!="Control"),]
  }
  d=d[-which(d$studyid=="PROBIT" & d$tr!="Control"),]
  d=d[-which(d$studyid=="iLiNS-Zinc" & d$tr!="Control"),]
  d=d[-which(d$studyid=="SAS-CompFeed" & d$tr!="Control"),]
  #d=d[-which(d$studyid=="COHORTS" & d$tr=="Other"),] #no longer included because < 1990
  return(d)
}


#--------------------------------------------
# Read in master data file
#--------------------------------------------

d <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds"))
dim(d)


unique(d$studyid)
unique(d$studyid[d$measurefreq!="yearly"])
unique(d$studyid[d$measurefreq=="monthly"])


unique(paste0(d$studyid,"-",d$country))
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



#C+C manuscript children dropped for outlier exclusions
df <- d %>% filter(!is.na(haz)|!is.na(whz)|!is.na(waz))
nchild_cc <- nrow(df %>% filter(measurefreq!="yearly" & agedays < 24*30.4167) %>% distinct(studyid, subjid))
no_outliers_df <- df %>% filter(haz >= -6 & haz <=6, 
                               whz >= -5 & whz <=5,
                               waz >= -6 & waz <=5) %>%
                        mutate(id=paste0(studyid, "_",subjid))
outliers_df <- df %>% filter( !(haz >= -6 & haz <=6 &
                               whz >= -5 & whz <=5 &
                               waz >= -6 & waz <=5)) %>%
                        mutate(id=paste0(studyid, "_",subjid))
outliers_df <- outliers_df[!(outliers_df$id %in% no_outliers_df$id),]
nrow(outliers_df %>% distinct(id))
outliers_df<- outliers_df %>% group_by(id) %>% summarise(N=n()) 
prop.table(table(outliers_df$N))
outliers_df %>%  ungroup() %>% summarise(mean(N), median(N))


dropped <- nchild_cc - nrow(no_outliers_df %>% filter(measurefreq!="yearly" & agedays < 24*30.4167) %>% distinct(studyid, subjid))
dropped
dropped/nchild_cc * 100

#--------------------------------------------
# order data, create measurement id, and 
# drop unrealistic measures depending on 
# anthropometry measure
#--------------------------------------------
nobs <- nrow(d)
nobsq_cc <- nrow(d %>% filter(measurefreq!="yearly" & agedays < 24*30.4167, !is.na(haz)))
nobsq <- nrow(d %>% filter(measurefreq!="yearly" & agedays < 24*30.4167, !is.na(haz)) %>% do(drop_int_arms(.)))
nobsm <- nrow(d %>% filter(measurefreq=="monthly" & agedays < 24*30.4167, !is.na(haz)))
stunt_mort <- d %>% filter(haz >= -6 & haz <=6, !is.na(haz)) %>%
  subset(., select = - c(whz, waz, muaz)) %>%
  arrange(studyid,subjid,agedays) %>%
  group_by(studyid,subjid) %>%
  arrange(studyid,subjid,agedays) %>%
  mutate(measid=seq_along(subjid)) 

#Observations dropped
nobs - nrow(stunt_mort)


#C+C manuscript dropped
dropped <- nobsq_cc - nrow(stunt_mort %>% filter(measurefreq!="yearly" & agedays < 24*30.4167, !is.na(haz)) %>% ungroup())
dropped
dropped/nobsq_cc * 100 #percentage dropped


#Stunting manuscript dropped
dropped <- nobsq - nrow(stunt_mort %>% ungroup() %>% filter(measurefreq!="yearly" & agedays < 24*30.4167) %>% do(drop_int_arms(.)))
dropped
dropped/nobsq * 100 #percentage dropped

#Wasting manuscript dropped
droppedm <- nobsm - nrow(stunt_mort %>% filter(measurefreq=="monthly" & agedays < 24*30.4167, !is.na(haz)))
droppedm
droppedm/nobsm * 100 #percentage dropped monthly



nobsq <- nrow(d %>% filter(measurefreq!="yearly" & agedays < 24*30.4167, !is.na(whz)))
nobsm <- nrow(d %>% filter(measurefreq=="monthly" & agedays < 24*30.4167, !is.na(whz)))
wast_mort <- d %>% filter(whz >= -5 & whz <=5) %>%
  subset(., select = - c(haz, waz, muaz)) %>%
  arrange(studyid,subjid,agedays) %>%
  group_by(studyid,subjid) %>%
  arrange(studyid,subjid,agedays) %>%
  mutate(measid=seq_along(subjid)) 
nobs - nrow(wast_mort)
dropped <- nobsq - nrow(wast_mort %>% filter(measurefreq!="yearly" & agedays < 24*30.4167, !is.na(whz)))
dropped
dropped/nobsq * 100 #percentage dropped - quarterly
droppedm <- nobsm - nrow(wast_mort %>% filter(measurefreq=="monthly" & agedays < 24*30.4167, !is.na(whz)))
droppedm
droppedm/nobsm * 100 #percentage dropped monthly


nobsq <- nrow(d %>% filter(measurefreq!="yearly" & agedays < 24*30.4167, !is.na(waz)))
nobsm <- nrow(d %>% filter(measurefreq=="monthly" & agedays < 24*30.4167, !is.na(waz)))
waz_mort <- d %>% filter(waz >= -6 & waz <=5) %>%
  arrange(studyid,subjid,agedays) %>%
  group_by(studyid,subjid) %>%
  arrange(studyid,subjid,agedays) %>%
  mutate(measid=seq_along(subjid)) 
nobs - nrow(waz_mort)
dropped <- nobsq - nrow(waz_mort %>% filter(measurefreq!="yearly" & agedays < 24*30.4167, !is.na(waz)))
dropped
dropped/nobsq * 100 #percentage dropped
droppedm <- nobsm - nrow(waz_mort %>% filter(measurefreq=="monthly" & agedays < 24*30.4167, !is.na(waz)))
droppedm
droppedm/nobsm * 100 #percentage dropped monthly


nobsq <- nrow(d %>% filter(measurefreq!="yearly" & agedays < 24*30.4167, !is.na(haz), !is.na(whz)))


#double check calculations above
co_mort <- d %>% filter(haz >= -6 & haz <=6 & whz >= -5 & whz <=5) %>%
  arrange(studyid,subjid,agedays) %>%
  group_by(studyid,subjid) %>%
  arrange(studyid,subjid,agedays) %>%
  mutate(measid=seq_along(subjid)) 
nobs - nrow(co_mort)
dropped <- nobsq - nrow(co_mort %>% filter(measurefreq!="yearly" & agedays < 24*30.4167, !is.na(haz), !is.na(whz)))
dropped
dropped/nobsq * 100 #percentage dropped



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
# Get C+C manuscript N's
#--------------------------------------------
Ndf <- rbind(stunt_rf, wast_rf, waz_rf) %>% filter(agedays < 24 * 30.4167)
length(unique(paste0(Ndf$studyid, Ndf$country))) #cohorts
length(unique(Ndf$country)) #Countries
length(unique(paste0(Ndf$studyid, "_", Ndf$subjid))) #Children
length(unique(paste0(Ndf$studyid, "_",Ndf$subjid, "_", Ndf$agedays))) #Observations


#Get N's for mortality studies
mort_Ndf <- rbind(stunt_mort, wast_mort, waz_mort) %>% filter(measurefreq=="yearly", agedays < 24 * 30.4167)
length(unique(paste0(mort_Ndf$studyid, mort_Ndf$country))) #cohorts
length(unique(mort_Ndf$country)) #Countries
length(unique(paste0(mort_Ndf$studyid, "_", mort_Ndf$subjid))) #Children
length(unique(paste0(mort_Ndf$studyid, "_", mort_Ndf$subjid, "_", mort_Ndf$agedays))) #Observations

mort_Ndf <- rbind(stunt_mort, wast_mort, waz_mort) %>% filter(agedays < 24 * 30.4167)
length(unique(paste0(mort_Ndf$studyid, mort_Ndf$country))) #cohorts
length(unique(mort_Ndf$country)) #Countries
length(unique(paste0(mort_Ndf$studyid, "_", mort_Ndf$subjid))) #Children
length(unique(paste0(mort_Ndf$studyid, "_", mort_Ndf$subjid, "_", mort_Ndf$agedays))) #Observations

mort_Ndf2 <- mort_Ndf %>% distinct(studyid, subjid, agedays)
length(unique(paste0(mort_Ndf2$studyid,"_", mort_Ndf2$subjid,"_", mort_Ndf2$agedays))) #Observations


#double check calculations above
cc_tab1 <- d %>% ungroup() %>% filter(agedays < 24 * 30.4167) %>%
  filter(!is.na(whz) | !is.na(waz) | !is.na(haz)) %>% 
  filter(abs(whz) <= 5 | abs(haz) <= 6 | (waz >= (-6) & waz <= 5)) %>% 
  distinct(studyid, subjid, agedays) %>%
  summarize(nobs=n(), nchild=length(unique(paste0(studyid, "_",subjid))))
cc_tab1

#children under 6
cc_tab_u6 <- d %>% ungroup() %>% filter(agedays < 6 * 30.4167) %>%
  filter(!is.na(whz) | !is.na(waz) | !is.na(haz)) %>% 
  filter(abs(whz) <= 5 | abs(haz) <= 6 | (waz >= (-6) & waz <= 5)) %>% 
  distinct(studyid, subjid, agedays) %>%
  summarize(nobs=n(), nchild=length(unique(paste0(studyid, "_",subjid))))
cc_tab_u6

#--------------------------------------------
# Subset to and save descriptive epi data
#--------------------------------------------

#--------------------------------------------
# drop trial arms with intervention impact on HAZ
# -either based on published literature or analysis
# of effects on CI of stunting by 24months of age
#--------------------------------------------

d %>% filter(tr!="", !is.na(haz)) %>% group_by(studyid, country, tr) %>% 
  summarize(mn_haz=mean(haz), sd=sd(haz)) %>% 
  mutate(ci.lb = mn_haz-1.96*sd, ci.ub = mn_haz+1.96*sd) %>%
  as.data.frame()


stunt <- drop_int_arms(stunt_rf) 
wast <- drop_int_arms(wast_rf) 
waz <- drop_int_arms(waz_rf) 
co <- drop_int_arms(co_rf) 

stunt <- droplevels(stunt)
wast <- droplevels(wast)
waz <- droplevels(waz)
co <- droplevels(co)

#Drop i-Lins Zinc as the control arm does not have quarterly measures
stunt <- stunt %>% filter(studyid!="iLiNS-Zinc")
wast <- wast %>% filter(studyid!="iLiNS-Zinc")
waz <- waz %>% filter(studyid!="iLiNS-Zinc")
co <- co %>% filter(studyid!="iLiNS-Zinc")

saveRDS(stunt, stunting_data_path)
saveRDS(wast, wasting_data_path)
saveRDS(waz, underweight_data_path)
saveRDS(co, co_occurrence_data_path)


#--------------------------------------------
# Get Stunting manuscript N's
#--------------------------------------------
Ndf <- stunt %>% filter(agedays < 24 * 30.4167)
length(unique(paste0(Ndf$studyid, Ndf$country))) #cohorts
length(unique(Ndf$country)) #Countries
length(unique(paste0(Ndf$studyid,"_", Ndf$subjid))) #Children
length(unique(paste0(Ndf$studyid, "_",Ndf$subjid, "_",Ndf$agedays))) #Observations
nrow(Ndf) #Observations

#Monthly N's
Ndf <- stunt %>% filter(agedays < 24 * 30.4167, measurefreq=="monthly")
length(unique(paste0(Ndf$studyid, Ndf$country))) #cohorts
length(unique(Ndf$country)) #Countries
length(unique(paste0(Ndf$studyid, "_", Ndf$subjid))) #Children
nrow(Ndf) #Observations


#--------------------------------------------
# Get Wasting manuscript N's
#--------------------------------------------
Ndf <- rbind(stunt, wast, waz) %>% filter(agedays < 24 * 30.4167, measurefreq=="monthly")
length(unique(paste0(Ndf$studyid, Ndf$country))) #cohorts
length(unique(Ndf$country)) #Countries
length(unique(paste0(Ndf$studyid,"_", Ndf$subjid))) #Children
length(unique(paste0(Ndf$studyid, "_", Ndf$subjid, "_", Ndf$agedays))) #Observations

