



rm(list=ls())
source(paste0(here::here(), "/0-config.R"))



#read csv file
d <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds"))
gc()

d <- subset(d, select= c(studyid, country, subjid, agedays, dead, agedth, causedth))
gc()


dim(d)
d <- d %>% filter(!is.na(dead) | !is.na(agedth) | !is.na(causedth))
dim(d)

#Get maximum age recorded
d <- d %>% group_by(studyid, country, subjid) %>% mutate(maxage = max(agedays))
summary(d$maxage)

table(d$dead)
table(d$causedth)


table(d$studyid, d$dead)
table(d$studyid, d$agedth>0)


d <- d %>% group_by(studyid, country, subjid) %>% mutate(dead=1*(max(dead)>0 | (agedth>0) | (!is.na(causedth) & causedth!="")), agedth=max(agedth)) %>% slice(1)
dim(d)
table(d$studyid, d$dead)


#Drop mortality after 24 months
summary(d$maxage)
dim(d)
d <- d %>% filter(agedth <= 730 | is.na(agedth))
d <- d %>% filter(maxage <= 730 | is.na(dead))
dim(d)

summary(d$maxage)
summary(d$maxage[d$dead==1])


d$subjid <- as.character(d$subjid)


mort <- d
mort$dead[is.na(mort$dead)] <-0
mort$cohort <- paste0(mort$studyid," ", mort$country)

#drop cohorts with no mortality info
mort <- mort %>% group_by(cohort) %>% mutate(tot_dead=sum(dead, na.rm=T)) %>% filter(tot_dead>0)
table(mort$cohort, mort$dead)


saveRDS(mort, mortality_path)











