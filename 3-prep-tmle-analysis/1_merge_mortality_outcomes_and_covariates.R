

rm(list=ls())
library(tidyverse)
library(reshape2)

#merge outcomes with covariates

setwd("U:/UCB-SuperLearner/Manuscript analysis data/")

#Load mortality outcomes
mort <- readRDS("U:/UCB-SuperLearner/Manuscript analysis data/mortality.rds")


#load covariates
cov <- readRDS("U:/ucb-superlearner/Manuscript analysis data/FINAL_clean_covariates.rds")
cov$country <- as.character(cov$country)
#Drop wasting risk factors
cov <- cov %>% subset(., select= -c(pers_wast, enwast, anywast06))


#Load wasting measures
load("wast_int_outcomes.rdata")

wast_ci_0_6 <- wast_ci_0_6 %>% subset(., select=c(studyid,country,subjid,ever_wasted06, ever_swasted06, pers_wasted06, ever_stunted06, ever_sstunted06)) 
wast_ci_0_24 <- wast_ci_0_24 %>% subset(., select=c(studyid,country,subjid,ever_wasted024, ever_swasted024, pers_wasted024, ever_stunted024, ever_sstunted024))
wast_ci_0_6_no_birth <- wast_ci_0_6_no_birth %>% subset(., select=c(studyid,country,subjid,ever_wasted06_noBW, ever_swasted06_noBW)) 
wast_ci_0_24_no_birth <- wast_ci_0_24_no_birth %>% subset(., select=c(studyid,country,subjid,ever_wasted024_noBW, ever_swasted024_noBW))
underweight_ci_0_6 <- underweight_ci_0_6 %>% subset(., select=c(studyid,country,subjid,ever_underweight06, ever_sunderweight06)) 
underweight_ci_0_24 <- underweight_ci_0_24 %>% subset(., select=c(studyid,country,subjid,ever_underweight024, ever_sunderweight024))

#convert subjid to character for the merge with mortality dataset
mort$subjid <- as.character(mort$subjid)
wast_ci_0_6$subjid <- as.character(wast_ci_0_6$subjid)
wast_ci_0_24$subjid <- as.character(wast_ci_0_24$subjid)
wast_ci_0_6_no_birth$subjid <- as.character(wast_ci_0_6_no_birth$subjid)
wast_ci_0_24_no_birth$subjid <- as.character(wast_ci_0_24_no_birth$subjid)
underweight_ci_0_6$subjid <- as.character(underweight_ci_0_6$subjid)
underweight_ci_0_24$subjid <- as.character(underweight_ci_0_24$subjid)

dim(wast_ci_0_6)
dim(wast_ci_0_24)
d <- full_join(wast_ci_0_6, wast_ci_0_24, by=c("studyid","country","subjid"))
dim(d)
head(d)

#Join in no birth wasting measures
d <- full_join(d, wast_ci_0_6_no_birth, by=c("studyid","country","subjid"))
d <- full_join(d, wast_ci_0_24_no_birth, by=c("studyid","country","subjid"))
dim(d)
head(d)

#sanity check measures
table(d$ever_wasted06)
table(d$ever_wasted06_noBW)

table(d$ever_wasted024)
table(d$ever_wasted024_noBW)


#Join in underweight measures
d <- full_join(d, underweight_ci_0_6, by=c("studyid","country","subjid"))
d <- full_join(d, underweight_ci_0_24, by=c("studyid","country","subjid"))
dim(d)
head(d)

#sanity check measures
table(d$ever_wasted06)
table(d$ever_wasted06_noBW)

table(d$ever_wasted024)
table(d$ever_wasted024_noBW)

table(d$ever_underweight06)
table(d$ever_underweight024)


#Load co-occurrence measures
load("U:/ucb-superlearner/Manuscript analysis data/co_prev_mortality.RData")
dim(d)
d <- full_join(d, CI_06, by=c("studyid","subjid"))
d <- full_join(d, CI_024, by=c("studyid","subjid"))
dim(d)

#Merge in covariates
dim(d)
df <- merge(as.data.frame(d), cov, by=c("studyid", "subjid", "country"), all.x = T, all.y = F)
dim(df)
head(df)


# Merge in mortality information
dim(d)
d <- left_join(df, mort, by=c("studyid",  "country", "subjid"))
dim(d)

#Check mortality variation for all exposures
table(d$ever_wasted06, d$dead)
table(d$ever_swasted06, d$dead)
table(d$pers_wasted06, d$dead)
table(d$ever_wasted024, d$dead)
table(d$ever_swasted024, d$dead)
table(d$pers_wasted024, d$dead)

table(d$ever_stunted06, d$dead)
table(d$ever_sstunted06, d$dead)
table(d$ever_stunted024, d$dead)
table(d$ever_sstunted024, d$dead)

table(d$ever_wasted06_noBW, d$dead)
table(d$ever_swasted06_noBW, d$dead)
table(d$ever_wasted024_noBW, d$dead)
table(d$ever_swasted024_noBW, d$dead)

table(d$ever_underweight06, d$dead)
table(d$ever_sunderweight06, d$dead)
table(d$ever_underweight024, d$dead)
table(d$ever_sunderweight024, d$dead)

table(d$ever_co06, d$dead)
table(d$ever_co024, d$dead)


#Drop studies with no mortality information
d <- d %>% filter(tot_dead>0)

#Set exposures to factors
Avars <- c("ever_wasted06",
           "ever_swasted06",
           "pers_wasted06",
           "ever_stunted06",
           "ever_sstunted06",
           "ever_wasted024",
           "ever_swasted024",
           "pers_wasted024",
           "ever_stunted024",
           "ever_sstunted024",
           "ever_wasted06_noBW",
           "ever_swasted06_noBW",
           "ever_wasted024_noBW",
           "ever_swasted024_noBW",
           "ever_underweight06",
           "ever_sunderweight06",
           "ever_underweight024",
           "ever_sunderweight024",
           "ever_co06",
           "ever_co024")

for(i in Avars){
  d[,i] <- factor(d[,i])
}


saveRDS(d, file="U:/UCB-SuperLearner/Manuscript analysis data/stuntwast_mort.rds")
save(d, file="U:/UCB-SuperLearner/Manuscript analysis data/stuntwast_mort.Rdata")


#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# Create morbidity datasets
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

co_prev18 <- co_prev18 %>% subset(., select = c( studyid, subjid, country, co_occurence))
pers_wast_6_24 <- pers_wast_6_24 %>% subset(., select = c( studyid, subjid, country, pers_wasted624))

dim(co_prev18)
dim(pers_wast_6_24)
d <- full_join(co_prev18, pers_wast_6_24, by=c("studyid","country","subjid"))
dim(d)
dim(df)
d <- full_join(d, df, by=c("studyid","country","subjid"))
dim(d)

#Drop the exposures (24 months) that aren't needed
d <- d %>% subset(., select = -c(
  ever_wasted024,      ever_swasted024,     pers_wasted024,      ever_stunted024,     ever_sstunted024, 
  ever_wasted024_noBW, ever_swasted024_noBW, ever_underweight024, ever_sunderweight024, ever_co024))


#Check mortality variation for all exposures
table(d$ever_wasted06, d$pers_wasted624)
table(d$ever_swasted06, d$pers_wasted624)
table(d$pers_wasted06, d$pers_wasted624)
table(d$ever_stunted06, d$pers_wasted624)
table(d$ever_wasted06_noBW, d$pers_wasted624)
table(d$ever_underweight06, d$pers_wasted624)
table(d$ever_co06, d$pers_wasted624)


table(d$ever_wasted06, d$co_occurence)
table(d$ever_swasted06, d$co_occurence)
table(d$pers_wasted06, d$co_occurence)
table(d$ever_stunted06, d$co_occurence)
table(d$ever_wasted06_noBW, d$co_occurence)
table(d$ever_underweight06, d$co_occurence)
table(d$ever_co06, d$co_occurence)



#Set exposures to factors
Avars_morbidity <- c("ever_wasted06",
                     "ever_swasted06",
                     "pers_wasted06",
                     "ever_stunted06",
                     "ever_sstunted06",
                     "ever_wasted06_noBW",
                     "ever_swasted06_noBW",
                     "ever_underweight06",
                     "ever_sunderweight06",
                     "ever_co06",
                     "pers_wasted06")

for(i in Avars_morbidity){
  d[,i] <- factor(d[,i])
}


save(d, file="U:/UCB-SuperLearner/Manuscript analysis data/stuntwast_morbidity.Rdata")


#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# Create list of adjustment variables
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

cov=c(
  "sex","month",
  "arm","brthmon","vagbrth","hdlvry","single","trth2o","cleanck",
  "impfloor","earlybf","hfoodsec","enstunt","hhwealth_quart",
  "W_gagebrth",          
  "W_birthwt","W_birthlen","W_mage","W_mhtcm","W_mwtkg",
  "W_mbmi","W_fage","W_fhtcm","W_meducyrs","W_feducyrs",          
  "W_nrooms","W_nhh","W_nchldlt5","W_parity",
  "impsan","safeh20",
  "W_perdiar24","predexfd6"  )

adjustment_sets_mortality <- list( 
  ever_wasted06=cov,
  ever_swasted06=cov,
  pers_wasted06=cov,
  ever_stunted06=cov,
  ever_sstunted06=cov,
  ever_wasted024=cov,
  ever_swasted024=cov,
  pers_wasted024=cov,
  ever_stunted024=cov,
  ever_sstunted024=cov,
  ever_wasted06_noBW=cov,
  ever_swasted06_noBW=cov,
  ever_wasted024_noBW=cov,
  ever_swasted024_noBW=cov,
  ever_underweight06=cov,
  ever_sunderweight06=cov,
  ever_underweight024=cov,
  ever_sunderweight024=cov,
  ever_co06=cov,
  ever_co024=cov)


save(adjustment_sets_mortality, file="mortality_adjustment_sets_list.Rdata")


