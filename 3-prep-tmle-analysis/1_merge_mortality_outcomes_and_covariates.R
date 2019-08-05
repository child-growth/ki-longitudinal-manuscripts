

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
load("mort_exposures.rdata")

stunt_ci_0_6 <- stunt_ci_0_6 %>% subset(., select=c(studyid,country,subjid,ever_stunted06, ever_sstunted06)) 
stunt_ci_6_24 <- stunt_ci_6_24 %>% subset(., select=c(studyid,country,subjid,ever_stunted624, ever_sstunted624))
wast_ci_0_6 <- wast_ci_0_6 %>% subset(., select=c(studyid,country,subjid,ever_wasted06, ever_swasted06, pers_wasted06)) 
wast_ci_6_24 <- wast_ci_6_24 %>% subset(., select=c(studyid,country,subjid,ever_wasted624, ever_swasted624, pers_wasted624))
wast_ci_0_6_no_birth <- wast_ci_0_6_no_birth %>% subset(., select=c(studyid,country,subjid,ever_wasted06_noBW, ever_swasted06_noBW)) 
underweight_ci_0_6 <- underweight_ci_0_6 %>% subset(., select=c(studyid,country,subjid,ever_underweight06, ever_sunderweight06)) 
underweight_ci_6_24 <- underweight_ci_6_24 %>% subset(., select=c(studyid,country,subjid,ever_underweight624, ever_sunderweight624))
co_ci_0_6 <- co_ci_0_6 %>% subset(., select=c(studyid,country,subjid,ever_co06)) 
co_ci_6_24 <- co_ci_6_24 %>% subset(., select=c(studyid,country,subjid,ever_co624))

#convert subjid to character for the merge with mortality dataset
mort$subjid <- as.character(mort$subjid)
stunt_ci_0_6$subjid <- as.character(stunt_ci_0_6$subjid)
stunt_ci_6_24$subjid <- as.character(stunt_ci_6_24$subjid)
wast_ci_0_6$subjid <- as.character(wast_ci_0_6$subjid)
wast_ci_6_24$subjid <- as.character(wast_ci_6_24$subjid)
wast_ci_0_6_no_birth$subjid <- as.character(wast_ci_0_6_no_birth$subjid)
underweight_ci_0_6$subjid <- as.character(underweight_ci_0_6$subjid)
underweight_ci_6_24$subjid <- as.character(underweight_ci_6_24$subjid)
co_ci_0_6$subjid <- as.character(co_ci_0_6$subjid)
co_ci_6_24$subjid <- as.character(co_ci_6_24$subjid)

dim(wast_ci_0_6)
dim(wast_ci_6_24)
d <- full_join(wast_ci_0_6, wast_ci_6_24, by=c("studyid","country","subjid"))
dim(d)
head(d)


#Join in no birth wasting measures
d <- full_join(d, wast_ci_0_6_no_birth, by=c("studyid","country","subjid"))
dim(d)
head(d)

#Join in stunting measures
d <- full_join(d, stunt_ci_0_6, by=c("studyid","country","subjid"))
d <- full_join(d, stunt_ci_6_24, by=c("studyid","country","subjid"))
dim(d)
head(d)



#Join in underweight measures
d <- full_join(d, underweight_ci_0_6, by=c("studyid","country","subjid"))
d <- full_join(d, underweight_ci_6_24, by=c("studyid","country","subjid"))
dim(d)
head(d)

#sanity check measures
table(d$ever_wasted06)
table(d$ever_wasted06_noBW)


table(d$ever_underweight06)
table(d$ever_underweight624)


#merge co-occurrence measures
d <- full_join(d, co_ci_0_6, by=c("studyid","subjid"))
d <- full_join(d, co_ci_6_24, by=c("studyid","subjid"))
dim(d)

#Merge in covariates
cov <- cov %>% subset(., select = -c(dead, agedth, causedth))
dim(d)
df <- merge(as.data.frame(d), cov, by=c("studyid", "subjid", "country"), all.x = T, all.y = F)
dim(df)
head(df)


# Merge in mortality information
dim(df)
dim(mort)
d <- left_join(df, mort, by=c("studyid",  "country", "subjid"))
dim(d)

#Check mortality variation for all exposures
table(d$ever_wasted06, d$dead)
table(d$ever_swasted06, d$dead)
table(d$pers_wasted06, d$dead)
table(d$ever_wasted624, d$dead)
table(d$ever_swasted624, d$dead)
table(d$pers_wasted624, d$dead)

table(d$ever_stunted06, d$dead)
table(d$ever_sstunted06, d$dead)
table(d$ever_stunted624, d$dead)
table(d$ever_sstunted624, d$dead)

table(d$ever_wasted06_noBW, d$dead)
table(d$ever_swasted06_noBW, d$dead)

table(d$ever_underweight06, d$dead)
table(d$ever_sunderweight06, d$dead)
table(d$ever_underweight624, d$dead)
table(d$ever_sunderweight624, d$dead)

table(d$ever_co06, d$dead)
table(d$ever_co624, d$dead)


calc_RR <- function(d1, d2){
  tab <- table(d1, d2)
  (tab[1,1] * tab[2*2])/(tab[1,2] * tab[2*1])
}

calc_RR(d$ever_wasted06, d$dead)
calc_RR(d$ever_swasted06, d$dead)
calc_RR(d$pers_wasted06, d$dead)
calc_RR(d$ever_wasted624, d$dead)
calc_RR(d$ever_swasted624, d$dead)
calc_RR(d$pers_wasted624, d$dead)

calc_RR(d$ever_stunted06, d$dead)
calc_RR(d$ever_sstunted06, d$dead)
calc_RR(d$ever_stunted624, d$dead)
calc_RR(d$ever_sstunted624, d$dead)

calc_RR(d$ever_wasted06_noBW, d$dead)
calc_RR(d$ever_swasted06_noBW, d$dead)

calc_RR(d$ever_underweight06, d$dead)
calc_RR(d$ever_sunderweight06, d$dead)
calc_RR(d$ever_underweight624, d$dead)
calc_RR(d$ever_sunderweight624, d$dead)

calc_RR(d$ever_co06, d$dead)
calc_RR(d$ever_co624, d$dead)


#Drop studies with no mortality information
d <- d %>% filter(tot_dead>0)

#Set exposures to factors
Avars <- c("ever_wasted06",
           "ever_swasted06",
           "pers_wasted06",
           "ever_stunted06",
           "ever_sstunted06",
           "ever_wasted624",
           "ever_swasted624",
           "pers_wasted624",
           "ever_stunted624",
           "ever_sstunted624",
           "ever_wasted06_noBW",
           "ever_swasted06_noBW",
           "ever_underweight06",
           "ever_sunderweight06",
           "ever_underweight624",
           "ever_sunderweight624",
           "ever_co06",
           "ever_co624")

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


#Drop the exposures (24 months) that aren't needed
df2 <- df %>% subset(., select = -c(country.x, country.y, pers_wasted624,
  ever_wasted624,      ever_swasted624,     ever_stunted624,     ever_sstunted624, 
  ever_underweight624, ever_sunderweight624, ever_co624))

dim(d)
dim(df2)
d <- full_join(d, df2, by=c("studyid","country","subjid"))
dim(d)




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

d <- as.data.frame(d)
for(i in Avars_morbidity){
  print(i)
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
  ever_wasted624=cov,
  ever_swasted624=cov,
  pers_wasted624=cov,
  ever_stunted624=cov,
  ever_sstunted624=cov,
  ever_wasted06_noBW=cov,
  ever_swasted06_noBW=cov,
  ever_underweight06=cov,
  ever_sunderweight06=cov,
  ever_underweight624=cov,
  ever_sunderweight624=cov,
  ever_co06=cov,
  ever_co624=cov)


save(adjustment_sets_mortality, file=here("data/mortality_adjustment_sets_list.Rdata"))


