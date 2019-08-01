

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

mort <- readRDS(paste0(ghapdata_dir,"mortality.rds"))


#load outcomes
load(paste0(ghapdata_dir,"wast_prev.RData"))
load(paste0(ghapdata_dir,"wast_cuminc.rdata"))
load(paste0(ghapdata_dir,"wast_cuminc_nobirth.rdata"))
load(paste0(ghapdata_dir,"pers_wast.rdata"))


cuminc_nobirth <- cuminc_nobirth %>% 
  rename(ever_wasted_no_birth=ever_wasted) %>% mutate(agecat=as.character(agecat)) %>%
  subset(., select=c(studyid,country,subjid,agecat,ever_wasted_no_birth))
cuminc_nobirth$agecat[cuminc_nobirth$agecat=="0-24 months (no birth wast)"] <- "0-24 months"
cuminc_nobirth$agecat[cuminc_nobirth$agecat=="0-6 months (no birth wast)"] <- "0-6 months"
cuminc <- cuminc %>% subset(., select=c(studyid,country,subjid,agecat,ever_wasted))
pers_wast <- pers_wast %>% subset(., select=c(studyid,country,subjid,agecat,pers_wast))

#convert subjid to character for the merge with mortality dataset
mort$subjid <- as.character(mort$subjid)
prev$subjid <- as.character(prev$subjid)
cuminc$subjid <- as.character(cuminc$subjid)
cuminc_nobirth$subjid <- as.character(cuminc_nobirth$subjid)
pers_wast$subjid <- as.character(pers_wast$subjid)

dim(cuminc)
dim(cuminc_nobirth)
d <- full_join(cuminc, cuminc_nobirth, by=c("studyid","country","subjid","agecat"))
dim(d)
d <- full_join(d, pers_wast, by=c("studyid","country","subjid","agecat"))
dim(d)
d <- bind_rows(d, prev)




setwd("U:/ucb-superlearner/Manuscript analysis data/")

#load outcomes
load("st_prev_outcomes.rdata")
load("st_cuminc_outcomes.rdata")
load("st_cuminc_outcomes_nobirth.rdata")


prev$subjid <- as.character(prev$subjid)
cuminc$subjid <- as.character(cuminc$subjid)
cuminc_nobirth$subjid <- as.character(cuminc_nobirth$subjid)

cuminc <- cuminc %>% subset(., select = -c(tr)) %>% subset(., select=c(studyid,country,subjid,agecat,ever_stunted))
cuminc_nobirth <- cuminc_nobirth %>% rename(ever_stunted_no_birth=ever_stunted) %>% subset(., select=c(studyid,country,subjid,agecat,ever_stunted_no_birth))
cuminc_nobirth$agecat[cuminc_nobirth$agecat=="0-24 months (no birth st.)"] <- "0-24 months"
cuminc_nobirth$agecat[cuminc_nobirth$agecat=="0-6 months (no birth st.)"] <- "0-6 months"

dim(d)
d <- full_join(d, cuminc, by=c("studyid","country","subjid","agecat"))
d <- full_join(d, cuminc_nobirth, by=c("studyid","country","subjid","agecat"))
d <- full_join(d, prev, by=c("studyid","country","subjid","agecat"))
dim(d)


colnames(d)
d <- d %>% select(studyid, country, subjid, agecat, ever_wasted, ever_wasted_no_birth,  wasted,               
                  swasted, pers_wast, ever_stunted, ever_stunted_no_birth, stunted, sstunted)

dim(d)
d <- left_join(d, mort, by=c("studyid",  "country", "subjid"))
dim(d)
head(d)

d$dead[is.na(d$dead)] <- 0
table(d$dead)
d <- d %>% group_by(studyid, country, subjid) %>% mutate(dead=max(dead))
table(d$dead)

#Merge in covariates
cov <- readRDS("U:/ucb-superlearner/Manuscript analysis data/FINAL_clean_covariates.rds")
cov$country <- as.character(cov$country)
cov <- cov %>% subset(., select = -c(pers_wast)) 
dim(d)
d <- left_join(as.data.frame(d), cov, by=c("studyid", "subjid", "country"))
dim(d)
head(d)

dim(d)
d <- merge(as.data.frame(d), cov, by=c("studyid", "subjid", "country"), all.x = T, all.y = F)
d <- distinct(d, .keep_all=T )
dim(d)
head(d)


#Drop studies with no mortality information
d <- d %>% filter(tot_dead>0)


saveRDS(d, file="U:/UCB-SuperLearner/Manuscript analysis data/stuntwast_mort.rds")

table(d$ever_stunted, d$dead)
table(d$ever_wasted, d$dead)

