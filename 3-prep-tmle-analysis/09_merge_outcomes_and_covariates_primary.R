



#merge outcomes with covariates

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#load covariates
cov<-readRDS(paste0(ghapdata_dir,"FINAL_clean_covariates.rds"))

#Drop wasting risk factors
#cov <- cov %>% subset(., select=-c(pers_wast, enwast, anywast06))

#Check reference levels
for(i in 3:ncol(cov)){
  cat(colnames(cov)[i],":\n")
  print(levels(cov[,i]))
}

#Set reference level to the lowest
cov$trth2o <- relevel(cov$trth2o, ref="1")
cov$cleanck <- relevel(cov$cleanck, ref="1")
cov$impfloor <- relevel(cov$impfloor, ref="1")
cov$earlybf <- relevel(cov$earlybf, ref="1")

cov$impsan <- relevel(cov$impsan, ref="1")
cov$safeh20 <- relevel(cov$safeh20, ref="1")
cov$predfeed3 <- relevel(cov$predfeed3, ref="1")
cov$exclfeed3 <- relevel(cov$exclfeed3, ref="1")
cov$predfeed6 <- relevel(cov$predfeed6, ref="1")
cov$exclfeed6 <- relevel(cov$exclfeed6, ref="1")
cov$predfeed36 <- relevel(cov$predfeed36, ref="1")
cov$exclfeed36 <- relevel(cov$exclfeed36, ref="1")
cov$predexfd6 <- relevel(cov$predexfd6, ref="1")



cov$perdiar6 <- relevel(cov$perdiar6, ref="[0%, 2%]")
cov$perdiar24 <- relevel(cov$perdiar24, ref="[0%, 2%]")


#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
#Stunting
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

setwd(ghapdata_dir)


#load outcomes
load("st_cuminc_outcomes_primary.rdata")
load("st_cuminc_outcomes_nobirth_primary.rdata")
load("sst_cuminc_outcomes_primary.rdata")
load("sst_cuminc_outcomes_nobirth_primary.rdata")




#convert subjid to character for the merge with covariate dataset
cuminc$subjid <- as.character(cuminc$subjid)
cuminc_nobirth$subjid <- as.character(cuminc_nobirth$subjid)
cuminc_sev$subjid <- as.character(cuminc_sev$subjid)
cuminc_nobirth_sev$subjid <- as.character(cuminc_nobirth_sev$subjid)


#------------------------------------
# Create cumulative incidence dataset
#------------------------------------

#merge in covariates

d <- left_join(cuminc, cov[, c("studyid", "subjid", "country", setdiff(colnames(cov),colnames(cuminc)))], 
               by=c("studyid", "subjid", "country"))

save(d,  file="st_cuminc_rf_primary.rdata")


d <- left_join(cuminc_sev, cov[, c("studyid", "subjid", "country", setdiff(colnames(cov),colnames(cuminc_sev)))], 
               by=c("studyid", "subjid", "country"))

save(d,  file="sst_cuminc_rf_primary.rdata")


d <- left_join(cuminc_nobirth, cov[, c("studyid", "subjid", "country", setdiff(colnames(cov),colnames(cuminc_nobirth)))], 
               by=c("studyid", "subjid", "country"))

save(d,  file="st_cuminc_nobirth_rf_primary.rdata")


d <- left_join(cuminc_nobirth_sev, cov[, c("studyid", "subjid", "country", setdiff(colnames(cov),colnames(cuminc_nobirth)))], 
               by=c("studyid", "subjid", "country"))

save(d,  file="sst_cuminc_nobirth_rf_primary.rdata")


#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
#WASTING
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX



#load outcomes
load("wast_cuminc_primary.rdata")
load("wast_cuminc_nobirth_primary.rdata")
load("swast_cuminc_primary.rdata")
load("swast_cuminc_nobirth_primary.rdata")
load("pers_wast_primary.rdata")



#convert subjid to character for the merge with covariate dataset
cuminc$subjid <- as.character(cuminc$subjid)
cuminc_nobirth$subjid <- as.character(cuminc_nobirth$subjid)
cuminc_sev$subjid <- as.character(cuminc_sev$subjid)
cuminc_nobirth_sev$subjid <- as.character(cuminc_nobirth_sev$subjid)
pers_wast$subjid <- as.character(pers_wast$subjid)


#merge in covariates
d <- left_join(cuminc, cov[, c("studyid", "subjid", "country", setdiff(colnames(cov),colnames(cuminc)))], 
               by=c("studyid", "subjid", "country"))

save(d,  file="wast_cuminc_rf_primary.rdata")


d <- left_join(cuminc_sev, cov[, c("studyid", "subjid", "country", setdiff(colnames(cov),colnames(cuminc_sev)))], 
               by=c("studyid", "subjid", "country"))

save(d,  file="swast_cuminc_rf_primary.rdata")


d <- left_join(cuminc_nobirth, cov[, c("studyid", "subjid", "country", setdiff(colnames(cov),colnames(cuminc_nobirth)))], 
               by=c("studyid", "subjid", "country"))

save(d,  file="wast_cuminc_nobirth_rf_primary.rdata")


d <- left_join(cuminc_nobirth_sev, cov[, c("studyid", "subjid", "country", setdiff(colnames(cov),colnames(cuminc_nobirth)))], 
               by=c("studyid", "subjid", "country"))

save(d,  file="swast_cuminc_nobirth_rf_primary.rdata")


#------------------------------------
# Create persistant wasting dataset
#------------------------------------

#merge in covariates
d <- left_join(pers_wast, cov[, c("studyid", "subjid", "country", setdiff(colnames(cov),colnames(pers_wast)))], 
               by=c("studyid", "subjid", "country"))


#Add empty columns for wasting outcomes to help longbow run
d$enwast <- d$anywast06 <- NA 


save(d,  file="pers_wast_rf_primary.rdata")









