



rm(list=ls())
source(paste0(here::here(), "/0-config.R"))



#read csv file
dfull <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds"))
gc()

d <- subset(dfull, select= c(studyid, country, subjid, agedays, dead, agedth, causedth, haz, waz))
gc()


#Mortality rate under 2 for reviewer response
#Note: need to mark as not dead any deaths occuring after agedays 730
tab2 <- d %>% 
  group_by(studyid, country, subjid) %>%
  mutate(dead=pmax(dead, na.rm=T),
         dead=ifelse(!is.na(agedth) & agedth>730 | max(agedays)>730,0,dead)) %>% 
  filter( agedays < 730) %>%
  slice(1) %>%
  group_by(studyid, country) %>%
  summarise(mort_rate=round(sum(dead, na.rm=T)/n() * 100,2), nummort=sum(dead,  na.rm=T), 
            notNAmort=sum(!is.na(dead),  na.rm=T), country_rate=NA) %>%
  as.data.frame()
tab2 <- tab2 %>% filter(nummort!=0)
knitr::kable(tab2[,-c(5:6)])  

tab2<-tab2 %>% filter(nummort>10)
knitr::kable(tab2)  

#under 1
#Note: need to mark as not dead any deaths occuring after agedays 365
tab1 <- d %>% 
  group_by(studyid, country, subjid) %>%
  mutate(dead=pmax(dead, na.rm=T),
         dead=ifelse(!is.na(agedth) & agedth>365 | max(agedays)>365,0,dead)) %>%
  filter(agedays < 365) %>% slice(1) %>%
  group_by(studyid, country) %>%
  summarise(mort_rate=round(sum(dead, na.rm=T)/n() * 100,2), nummort=sum(dead,  na.rm=T), 
            notNAmort=sum(!is.na(dead),  na.rm=T), country_rate=NA) %>%
  as.data.frame()
tab1<-tab1 %>% filter(nummort>10)
knitr::kable(tab1)  

# df <- d %>% filter(studyid=="Burkina Faso Zn")
# temp<-df %>% 
#   group_by(studyid, country, subjid) %>%
#   mutate(dead=pmax(dead, na.rm=T),
#          dead=ifelse(!is.na(agedth) & agedth>730 | max(agedays)>730,0,dead)) %>% 
#   filter( agedays < 730) %>%
#   slice(1) %>%
#   group_by(studyid, country) %>%
#   summarise(mort_rate=round(sum(dead, na.rm=T)/n() * 100,2), nummort=sum(dead,  na.rm=T), 
#             notNAmort=sum(!is.na(dead),  na.rm=T), country_rate=NA) %>%
#   as.data.frame()


#Studies missing any death data
dmiss <- d %>% group_by(studyid, country) %>% mutate(Ntot=n(), Ndeath=sum(dead, na.rm=T)) %>%
  filter(Ndeath==0 & is.na(agedth) & causedth=="") %>%
  mutate(Nno_death=n()) %>%
  filter(Ntot==Nno_death)
head(dmiss)
unique(paste0(dmiss$studyid," ", dmiss$country))

table(dmiss$studyid, dmiss$Ndeath)

dim(d)
d <- d %>% filter(!is.na(dead) | !is.na(agedth) | !is.na(causedth))
dim(d)

#Get maximum age recorded
d <- d %>% group_by(studyid, country, subjid) %>% mutate(maxage = max(agedays))
summary(d$maxage)

table(d$dead)
table(paste0(d$studyid," ", d$country),d$dead)

table(d$causedth)

table(1*!is.na(d$dead),is.na(d$agedth))
table(1*!is.na(d$dead),(d$causedth==""))

df <- d %>% group_by(studyid, subjid) %>% slice(1)
table(1*!is.na(df$dead),(df$causedth==""))
table(df$causedth)

#mark dead if have a cause or age death
d$agedth[!is.na(d$agedth) & is.na(d$dead)]
d$dead[!is.na(d$agedth) & is.na(d$dead)] <- 1


table(d$studyid, d$agedth>0)
table(d$studyid, d$dead)
table(d$dead)

#save longform for kaplan-meier curves
saveRDS(d, file=paste0(paste0(ghapdata_dir, "stuntwast_mort.rds")))

#make sure dead is time-static and subset to 1 observation
d <- d %>% 
  group_by(studyid, country, subjid) %>%
  mutate(dead=1*(max(dead)>0 | (agedth>0) | (!is.na(causedth) & causedth!="")), agedth=max(agedth)) %>% 
  slice(1)
dim(d)
table(d$dead)
table(d$studyid, d$dead)


#Drop mortality after 24 months
summary(d$maxage)
dim(d)
table(d$dead)

#Mark deaths not over 24 months to keep
d <- d %>% mutate(keep=1*(agedth <= 730 | is.na(agedth) & ((maxage <= 730 & dead==1) | dead!=1)))
dim(d)
table(d$dead)
table(d$keep)



#Create a mortality after 6 month variable
d$dead624 <- d$dead 
d$dead624[d$agedth < 6*30.4167 | (is.na(d$agedth) & d$maxage<6*30.4167)] <- 2
table(d$dead)
table(d$dead624)

d$subjid <- as.character(d$subjid)


mort <- d
mort$dead[is.na(mort$dead)] <-0
mort$dead624[is.na(mort$dead624)] <-0
mort$dead624[mort$dead624==2] <- NA
#keep variable with mortality after 24 months
mort$dead0plus <- mort$dead
mort$dead6plus <- mort$dead624
#mark death as 0 if child died after 24 months
mort$dead[mort$keep==0] <- 0
mort$dead624[mort$keep==0] <- 0

prop.table(table(mort$dead))

mort$cohort <- paste0(mort$studyid," ", mort$country)

#drop cohorts with no mortality info
mort <- mort %>% group_by(cohort) %>% mutate(tot_dead=sum(dead, na.rm=T)) %>% filter(tot_dead>0)
prop.table(table(mort$dead))
table(mort$cohort, mort$dead)
table(mort$cohort, mort$dead624)
table(mort$cohort, mort$dead0plus)
table(mort$cohort, mort$dead6plus)


mort <- subset(mort, select = c(studyid, country, subjid, maxage, dead, agedth, causedth, dead624, dead0plus, dead6plus))

saveRDS(mort, mortality_path)

#check which studies don't have mortality info
unique(dfull$studyid)[!(unique(dfull$studyid) %in% unique(mort$studyid))]

#mortality within studies measuring anthro before 6 months and had sufficient mortality to be in the primary analysis
table(mort$dead[mort$studyid %in% c("iLiNS-DOSE", "iLiNS-DYAD-M","JiVitA-3","JiVitA-4","Keneba", "SAS-CompFeed","VITAMIN-A","ZVITAMBO")])
prop.table(table(mort$dead[mort$studyid %in% c("iLiNS-DOSE", "iLiNS-DYAD-M","JiVitA-3","JiVitA-4","Keneba", "SAS-CompFeed","VITAMIN-A","ZVITAMBO")]))





