



#merge outcomes with covariates

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#load covariates
cov<-readRDS(paste0(ghapdata_dir,"FINAL_clean_covariates.rds"))
table(cov$studyid, cov$enstunt)

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
load("st_prev_outcomes.RData")
load("st_meanZ_outcomes.RData")
load("st_cuminc_outcomes.rdata")
load("st_cuminc_outcomes_nobirth.rdata")
load("st_rec_outcomes.RData")
load("st_inc_recovery_outcomes.RData")

load(paste0(ghapdata_dir,"haz_vel_outcomes.RData"))
load(paste0(ghapdata_dir,"len_vel_outcomes.RData"))
load(paste0(ghapdata_dir,"waz_vel_outcomes.RData"))
load(paste0(ghapdata_dir,"weight_vel_outcomes.RData"))



#convert subjid to character for the merge with covariate dataset
cov$subjid <- as.character(cov$subjid)
prev$subjid <- as.character(prev$subjid)
cuminc$subjid <- as.character(cuminc$subjid)
cuminc_nobirth$subjid <- as.character(cuminc_nobirth$subjid)
rev$subjid <- as.character(rev$subjid)
stunt_rec$subjid <- as.character(stunt_rec$subjid)
vel_haz$subjid <- as.character(vel_haz$subjid)
vel_lencm$subjid <- as.character(vel_lencm$subjid)
vel_waz$subjid <- as.character(vel_waz$subjid)
vel_wtkg$subjid <- as.character(vel_wtkg$subjid)
meanHAZ$subjid <- as.character(meanHAZ$subjid)




#------------------------------------
# Create cumulative incidence dataset
#------------------------------------

#merge in covariates
cuminc <- cuminc %>% subset(., select = -c(tr))

d <- left_join(cuminc, cov[, c("studyid", "subjid", "country", setdiff(colnames(cov),colnames(cuminc)))], 
               by=c("studyid", "subjid", "country"))

head(d)
table(d$agecat, d$sex)

#Vector of outcome names
Y<-c("ever_stunted")

#Vector of risk factor names
A<-c( "sex",               "mage",          "mhtcm",         "mwtkg",        
      "mbmi",          "single",        "fage",          "fhtcm",       
      "nrooms",      "nchldlt5",    "nhh",              
      "hhwealth_quart", "brthmon", "parity",   "meducyrs", 
      "feducyrs", "hfoodsec")  



#Vector of covariate names
W<-c("")

#Subgroup variable
V <- c("agecat")

#clusterid ID variable
id <- c("id")


save(d, Y, A,V, id,  file="st_cuminc_rf.Rdata")


#------------------------------------
# Create cumulative incidence dataset
# - no birth incidence
#------------------------------------

#merge in covariates
cuminc_nobirth <- cuminc_nobirth %>% subset(., select = -c(tr))
cuminc_nobirth <- bind_rows(cuminc_nobirth, cuminc[cuminc$agecat=="6-24 months",])

d <- left_join(cuminc_nobirth, cov[, c("studyid", "subjid", "country", setdiff(colnames(cov),colnames(cuminc_nobirth)))], 
               by=c("studyid", "subjid", "country"))
head(d)
table(d$agecat, d$sex)



#Vector of outcome names
Y<-c("ever_stunted")

#Vector of risk factor names
A<-c( "gagebrth",      "birthwt",    
      "birthlen",       "vagbrth",       "hdlvry",    
      "enwast", "anywast06", "pers_wast", 
      "trth2o", "cleanck", "impfloor",  
      "impsan", "safeh20",
      "perdiar6", "perdiar24", 
      "predfeed3", "exclfeed3", "predfeed6", "exclfeed6", "predfeed36", "exclfeed36",
      "predexfd6", "earlybf", "month")

#Vector of covariate names
W<-c("")

#Subgroup variable
V <- c("agecat")

#clusterid ID variable
id <- c("id")


save(d, Y, A,V, id,  file="st_cuminc_nobirth_rf.Rdata")


#------------------------------------
# Create prevalence dataset
#------------------------------------


#merge in covariates
d <- left_join(prev, cov, by=c("studyid", "subjid", "country"))
head(d)


#Vector of outcome names
Y<-c("stunted","sstunted")


A<-c( "sex",              "gagebrth",      "birthwt",      
      "birthlen",      "vagbrth",       "hdlvry",        "mage",          "mhtcm",         "mwtkg",        
      "mbmi",          "single",        "fage",          "fhtcm",         "nrooms",        "nhh",           "nchldlt5",     
      "hhwealth_quart", "month", "brthmon", "parity",   "meducyrs", 
      "feducyrs", "hfoodsec",  
      "enwast", "anywast06", "pers_wast", 
      "trth2o", "cleanck", "impfloor",  "impsan", "safeh20",
      "perdiar6", "perdiar24", "predexfd6", 
      "predfeed3", "exclfeed3", "predfeed6", "exclfeed6", "predfeed36", "exclfeed36",
      "earlybf")  



save(d, Y, A,V, id,  file="st_prev_rf.Rdata")

#------------------------------------
# Create mean Z dataset
#------------------------------------


#merge in covariates
d <- left_join(meanHAZ, cov, by=c("studyid", "subjid", "country"))
head(d)


#Vector of outcome names
Y<-c("haz")


A<-c( "sex",              "gagebrth",      "birthwt",      
      "birthlen",      "vagbrth",       "hdlvry",        "mage",          "mhtcm",         "mwtkg",        
      "mbmi",          "single",        "fage",          "fhtcm",         "nrooms",        "nhh",           "nchldlt5",     
      "hhwealth_quart", "month", "brthmon", "parity",   "meducyrs", 
      "feducyrs", "hfoodsec",  
      "enwast", "anywast06", "pers_wast", 
      "trth2o", "cleanck", "impfloor",  "impsan", "safeh20",
      "perdiar6", "perdiar24", "predexfd6", 
      "predfeed3", "exclfeed3", "predfeed6", "exclfeed6", "predfeed36", "exclfeed36",
      "earlybf")  



save(d, Y, A,V, id,  file="st_meanZ_rf.Rdata")

#save subset for the mediation analysis
d <- d %>% filter(agecat!="Birth")
d <- droplevels(d)
save(d, file="mediation_HAZ.Rdata")

#Save just 24 month outcomes for optx analysis
table(d$agecat)
d <- d %>% filter(agecat=="24 months") %>% droplevels()
A<-c( "gagebrth",      "birthwt",      
      "birthlen",      "vagbrth",       "hdlvry",        "mage",          "mhtcm",         "mwtkg",        
      "mbmi",          "single",        "fage",          "fhtcm",         "nrooms",        "nhh",           "nchldlt5",     
      "hhwealth_quart", "month", "brthmon", "parity",   "meducyrs", 
      "feducyrs", "hfoodsec",  
      "cleanck", "impfloor",  "impsan", "safeh20",
      "perdiar6", "perdiar24", "predexfd6", 
      "earlybf")  

#drop spaces for optx- has trouble with special characters
d$hfoodsec <- gsub(" ","",d$hfoodsec)
d$gagebrth <- gsub(" ","",d$gagebrth)
d$mwtkg <- gsub(" ","",d$mwtkg)
d$fhtcm <- gsub(" ","",d$fhtcm)
d$birthwt <- gsub(" ","",d$birthwt)
d$birthlen  <- gsub("[^A-Za-z0-9]","",d$birthlen )
d$mage <- gsub("[^A-Za-z0-9]","",d$mage)
d$mwtkg <- gsub("[^A-Za-z0-9]","",d$mwtkg)
d$mhtcm <- gsub("[^A-Za-z0-9]","",d$mhtcm)
d$fhtcm <- gsub("[^A-Za-z0-9]","",d$fhtcm)
d$fhtcm_rf <- gsub("[^A-Za-z0-9]","",d$fhtcm_rf)
d$fage <- gsub("[^A-Za-z0-9]","",d$fage)
d$mhtcm <- gsub(" ","",d$mhtcm)
d$mage <- gsub(" ","",d$mage)
d$mbmi <- gsub(" ","",d$mbmi)
d$nchldlt5 <- gsub("\\+","",d$nchldlt5)
d$nchldlt5 <- gsub("\\+","",d$nchldlt5)
d$nhh <- gsub("\\+","",d$nhh)
d$nhh <- gsub(" ","",d$nhh)
d$nhh <- gsub("-","",d$nhh)
d$parity <- gsub("\\+","",d$parity)
d$nrooms  <- gsub("\\+","",d$nrooms )
d$perdiar6 <- recode(d$perdiar6, `[0%, 2%]` = "0", `>2%` = "2")
d$perdiar24 <- recode(d$perdiar24, `[0%, 2%]` = "0", `>2%` = "2")
for(i in A){
  cat("\n",i,"\n")
  print(table(d[,i]))
}

save(d, Y, A,V, id,  file="st_meanZ_optx.Rdata")


#------------------------------------
# Create recovery dataset
#------------------------------------

#merge in covariates
d <- left_join(rev, cov, by=c("studyid", "subjid", "country"))
head(d)


#Vector of outcome names
Y<-c("s03rec24")

#Vector of covariate names
W<-c("")

#Subgroup variable
V <- c("agecat")

#clusterid ID variable
id <- c("id")


save(d, Y, A,V, id, file="st_rec_rf.Rdata")


#merge in covariates
stunt_rec <- stunt_rec %>% rename(s06rec1824=stunt_inc)
d <- left_join(stunt_rec, cov, by=c("studyid", "subjid", "country"))
head(d)


#Vector of outcome names
Y<-c("s06rec1824")

#Vector of covariate names
W<-c("")

#Subgroup variable
V <- c("agecat")

#clusterid ID variable
id <- c("id")


save(d, Y, A,V, id, file="st_inc_rec_rf.Rdata")





#------------------------------------
# Create growth velocity dataset
#------------------------------------

#HAZ

#merge in covariates
d <- left_join(vel_haz, cov, by=c("studyid", "subjid", "country"))
head(d)
Y<-c("y_rate_haz")
W<-c("")
V <- c("agecat")
id <- c("id")

d <- d %>% rename(y_rate_haz=y_rate)
save(d, Y, A,V, id, file="st_haz_vel_rf.Rdata")


# Height in cm

#merge in covariates
d <- left_join(vel_lencm, cov, by=c("studyid", "subjid", "country"))
Y<-c("y_rate_len")
d <- d %>% rename(y_rate_len=y_rate)
save(d, Y, A,V, id, file="st_len_vel_rf.Rdata")


#WHZ

#merge in covariates
d <- left_join(vel_waz, cov, by=c("studyid", "subjid", "country"))
head(d)
Y<-c("y_rate_waz")
W<-c("")
V <- c("agecat")
id <- c("id")

d <- d %>% rename(y_rate_waz=y_rate)
save(d, Y, A,V, id, file="waz_vel_rf.Rdata")


# Weight

#merge in covariates
d <- left_join(vel_wtkg, cov, by=c("studyid", "subjid", "country"))
Y<-c("y_rate_wtkg")
d <- d %>% rename(y_rate_wtkg=y_rate)
save(d, Y, A,V, id, file="y_rate_wtkg_vel_rf.Rdata")





#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
#WASTING
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

#Drop wasting risk factors
#cov <- cov %>% subset(., select=-c(pers_wast, enwast, anywast06))


#load outcomes
load("wast_prev.RData")
load("wast_meanZ_outcomes.RData")
load("wast_cuminc.rdata")
load("wast_cuminc_nobirth.rdata")
load("pers_wast.rdata")
load("wast_rec.rdata")



#convert subjid to character for the merge with covariate dataset
cov$subjid <- as.character(cov$subjid)
prev$subjid <- as.character(prev$subjid)
cuminc$subjid <- as.character(cuminc$subjid)
cuminc_nobirth$subjid <- as.character(cuminc_nobirth$subjid)
rec$subjid <- as.character(rec$subjid)
pers_wast$subjid <- as.character(pers_wast$subjid)
vel_waz$subjid <- as.character(vel_waz$subjid)
vel_wtkg$subjid <- as.character(vel_wtkg$subjid)
meanWHZ$subjid <- as.character(meanWHZ$subjid)



#------------------------------------
# Create cumulative incidence dataset
#------------------------------------

#merge in covariates
dim(cuminc)
dim(cov)
d <- left_join(cuminc, cov[, c("studyid", "subjid", "country", setdiff(colnames(cov),colnames(cuminc)))], 
               by=c("studyid", "subjid", "country"))
dim(d)



#Vector of outcome names
Y<-c("ever_wasted")

#Vector of risk factor names
A<-c( "sex",               "mage",          "mhtcm",         "mwtkg",        
      "mbmi",          "single",        "fage",          "fhtcm",       
      "nrooms",      "nchldlt5",    "nhh",              
      "hhwealth_quart", "brthmon", "parity",   "meducyrs", 
      "feducyrs", "hfoodsec")  



#Vector of covariate names
W<-c("")

#Subgroup variable
V <- c("agecat")

#clusterid ID variable
id <- c("id")


save(d, Y, A,V, id,  file="wast_cuminc_rf.Rdata")


#------------------------------------
# Create cumulative incidence dataset
# - no birth incidence
#------------------------------------

#merge in covariates
cuminc_nobirth <- bind_rows(cuminc_nobirth, cuminc[cuminc$agecat=="6-24 months",])

dim(cuminc_nobirth)
d <- left_join(cuminc_nobirth, cov[, c("studyid", "subjid", "country", setdiff(colnames(cov),colnames(cuminc_nobirth)))], 
               by=c("studyid", "subjid", "country"))
dim(d)



#Vector of outcome names
Y<-c("ever_wasted")

#Vector of risk factor names
A<-c( "gagebrth", "birthwt",    
      "birthlen", "vagbrth", "hdlvry",    
      "trth2o", "cleanck", "impfloor",  
      "impsan", "safeh20",
      "perdiar6", "perdiar24", 
      "predfeed3", "exclfeed3", "predfeed6", "exclfeed6", "predfeed36", "exclfeed36",
      "predexfd6", "earlybf", "month")

#Vector of covariate names
W<-c("")

#Subgroup variable
V <- c("agecat")

#clusterid ID variable
id <- c("id")


save(d, Y, A,V, id,  file="wast_cuminc_nobirth_rf.Rdata")


#------------------------------------
# Create prevalence dataset
#------------------------------------


#merge in covariates
dim(prev)
d <- left_join(prev, cov, by=c("studyid", "subjid", "country"))
dim(d)


#Vector of outcome names
Y<-c("wasted","swasted")


A<-c( "sex",              "gagebrth",      "birthwt",      
      "birthlen",      "vagbrth",       "hdlvry",        "mage",          "mhtcm",         "mwtkg",        
      "mbmi",          "single",        "fage",          "fhtcm",         "nrooms",        "nhh",           "nchldlt5",     
      "hhwealth_quart", "month", "brthmon", "parity",   "meducyrs", 
      "feducyrs", "hfoodsec",  
      "trth2o", "cleanck", "impfloor",  "impsan", "safeh20",
      "perdiar6", "perdiar24", "predexfd6", 
      "predfeed3", "exclfeed3", "predfeed6", "exclfeed6", "predfeed36", "exclfeed36",
      "earlybf")  



save(d, Y, A,V, id,  file="wast_prev_rf.Rdata")

#------------------------------------
# Create Z-score dataset
#------------------------------------


#merge in covariates
dim(meanWHZ)
d <- left_join(meanWHZ, cov, by=c("studyid", "subjid", "country"))
dim(d)

#Vector of outcome names
Y<-c("whz")


A<-c( "sex",              "gagebrth",      "birthwt",      
      "birthlen",      "vagbrth",       "hdlvry",        "mage",          "mhtcm",         "mwtkg",        
      "mbmi",          "single",        "fage",          "fhtcm",         "nrooms",        "nhh",           "nchldlt5",     
      "hhwealth_quart", "month", "brthmon", "parity",   "meducyrs", 
      "feducyrs", "hfoodsec",  
      "trth2o", "cleanck", "impfloor",  "impsan", "safeh20",
      "perdiar6", "perdiar24", "predexfd6", 
      "predfeed3", "exclfeed3", "predfeed6", "exclfeed6", "predfeed36", "exclfeed36",
      "earlybf")  



save(d, Y, A,V, id,  file="wast_meanZ_rf.Rdata")

#Save subset for mediation analysis
d <- d %>% filter(agecat!="Birth")
d <- droplevels(d)
save(d, file="mediation_WHZ.Rdata")

#Save just 24 month outcomes for optx analysis
table(d$agecat)
d <- d %>% filter(agecat=="24 months")
A<-c( "gagebrth",      "birthwt",      
      "birthlen",      "vagbrth",       "hdlvry",        "mage",          "mhtcm",         "mwtkg",        
      "mbmi",          "single",        "fage",          "fhtcm",         "nrooms",        "nhh",           "nchldlt5",     
      "hhwealth_quart", "month", "brthmon", "parity",   "meducyrs", 
      "feducyrs", "hfoodsec",  
      "cleanck", "impfloor",  "impsan", "safeh20",
      "perdiar6", "perdiar24", "predexfd6", 
      "earlybf")  

#drop spaces for optx- has trouble with special characters
d$hfoodsec <- gsub(" ","",d$hfoodsec)
d$gagebrth <- gsub(" ","",d$gagebrth)
d$mwtkg <- gsub(" ","",d$mwtkg)
d$fhtcm <- gsub(" ","",d$fhtcm)
d$birthwt <- gsub(" ","",d$birthwt)
d$birthlen  <- gsub("[^A-Za-z0-9]","",d$birthlen )
d$mage <- gsub("[^A-Za-z0-9]","",d$mage)
d$mwtkg <- gsub("[^A-Za-z0-9]","",d$mwtkg)
d$mhtcm <- gsub("[^A-Za-z0-9]","",d$mhtcm)
d$fhtcm <- gsub("[^A-Za-z0-9]","",d$fhtcm)
d$fage <- gsub("[^A-Za-z0-9]","",d$fage)
d$mhtcm <- gsub(" ","",d$mhtcm)
d$mage <- gsub(" ","",d$mage)
d$mbmi <- gsub(" ","",d$mbmi)
d$nchldlt5 <- gsub("\\+","",d$nchldlt5)
d$nchldlt5 <- gsub("\\+","",d$nchldlt5)
d$nhh <- gsub("\\+","",d$nhh)
d$nhh <- gsub(" ","",d$nhh)
d$nhh <- gsub("-","",d$nhh)
d$parity <- gsub("\\+","",d$parity)
d$nrooms  <- gsub("\\+","",d$nrooms )
d$perdiar6 <- recode(d$perdiar6, `[0%, 2%]` = "0", `>2%` = "2")
d$perdiar24 <- recode(d$perdiar24, `[0%, 2%]` = "0", `>2%` = "2")
for(i in A){
  cat("\n",i,"\n")
  print(table(d[,i]))
}


save(d, Y, A,V, id,  file="wast_meanZ_optx.Rdata")


#------------------------------------
# Create recovery dataset
#------------------------------------

#merge in covariates
dim(rec)
d <- left_join(rec, cov[, c("studyid", "subjid", "country", setdiff(colnames(cov),colnames(rec)))], 
               by=c("studyid", "subjid", "country"))
dim(d)


#Vector of outcome names
Y<-"wast_rec90d"


A<-c( "sex",              "gagebrth",      "birthwt",      
      "birthlen",      "vagbrth",       "hdlvry",        "mage",          "mhtcm",         "mwtkg",        
      "mbmi",          "single",        "fage",          "fhtcm",         "nrooms",        "nhh",           "nchldlt5",     
      "hhwealth_quart", "month", "brthmon", "parity",   "meducyrs", 
      "feducyrs", "hfoodsec",  
      "trth2o", "cleanck", "impfloor",  "impsan", "safeh20",
      "perdiar6", "perdiar24", "predexfd6", 
      "predfeed3", "exclfeed3", "predfeed6", "exclfeed6", "predfeed36", "exclfeed36",
      "earlybf")  

save(d, Y, A,V, id,  file="wast_rec_rf.Rdata")

#------------------------------------
# Create persistant wasting dataset
#------------------------------------

#merge in covariates
dim(pers_wast)
d <- left_join(pers_wast, cov[, c("studyid", "subjid", "country", setdiff(colnames(cov),colnames(pers_wast)))], 
               by=c("studyid", "subjid", "country"))


dim(d)

#Add empty columns for wasting outcomes to help longbow run
d$enwast <- d$anywast06 <- NA 


#Vector of outcome names
Y<-"pers_wast"

A<-c( "sex",              "gagebrth",      "birthwt",      
      "birthlen",      "vagbrth",       "hdlvry",        "mage",          "mhtcm",         "mwtkg",        
      "mbmi",          "single",        "fage",          "fhtcm",         "nrooms",        "nhh",           "nchldlt5",     
      "hhwealth_quart", "month", "brthmon", "parity",   "meducyrs", 
      "feducyrs", "hfoodsec",  
      "trth2o", "cleanck", "impfloor",  "impsan", "safeh20",
      "perdiar6", "perdiar24", "predexfd6", 
      "predfeed3", "exclfeed3", "predfeed6", "exclfeed6", "predfeed36", "exclfeed36",
      "earlybf") 


save(d, Y, A,V, id, file="pers_wast_rf.Rdata")




#------------------------------------
# Create growth velocity dataset
#------------------------------------

#WAZ

#merge in covariates
d <- left_join(vel_waz, cov, by=c("studyid", "subjid", "country"))
head(d)


#Vector of outcome names
Y<-c("y_rate_waz")


#Vector of covariate names
W<-c("")

#Subgroup variable
V <- c("agecat")

#clusterid ID variable
id <- c("id")

#Change outcome name to differentiate from lencm velocity outcome
d <- d %>% rename(y_rate_haz=y_rate)

save(d, Y, A,V, id, file="wast_waz_vel_rf.Rdata")


# Height in cm

#merge in covariates
d <- left_join(vel_wtkg, cov, by=c("studyid", "subjid", "country"))
head(d)


#Vector of outcome names
Y<-c("y_rate_wtkg")


#Vector of covariate names
W<-c("")

#Subgroup variable
V <- c("agecat")

#clusterid ID variable
id <- c("id")

d <- d %>% rename(y_rate_wtkg=y_rate)


save(d, Y, A,V, id, file="wast_wtkg_vel_rf.Rdata")



#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# Co-occurrence
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

load("co_cuminc.rdata")


#merge in covariates
dim(cuminc)
dim(cov)
d <- left_join(cuminc, cov[, c("studyid", "subjid", "country", setdiff(colnames(cov),colnames(cuminc)))], 
               by=c("studyid", "subjid", "country"))

dim(d)


#Vector of outcome names
Y<-c("ever_co")

#Vector of risk factor names
A<-c( "sex",               "mage",          "mhtcm",         "mwtkg",        
      "mbmi",          "single",        "fage",          "fhtcm",       
      "nrooms",      "nchldlt5",    "nhh",              
      "hhwealth_quart", "brthmon", "parity",   "meducyrs", 
      "feducyrs", "hfoodsec")  



#Vector of covariate names
W<-c("")

#Subgroup variable
V <- c("agecat")

#clusterid ID variable
id <- c("id")


save(d, Y, A,V, id,  file="co_cuminc_rf.Rdata")



#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# Create list of adjustment variables
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX


bf_covariates = c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
                  "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
                  "vagbrth","hdlvry",
                  "W_gagebrth","W_birthwt","W_birthlen",
                  "single",
                  "W_nrooms","W_nhh","W_nchldlt5",
                  "month","brthmon","W_parity",
                  "trth2o","cleanck","impfloor","impsan","safeh20")


adjustment_sets <- list( 
  
  gagebrth=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
             "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
             "single",
             "W_nrooms","W_nhh","W_nchldlt5",
             "brthmon","W_parity",
             "trth2o","cleanck","impfloor","impsan","safeh20"),         
  
  birthwt=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
            "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
            "vagbrth","hdlvry",
            "single",
            "W_nrooms","W_nhh","W_nchldlt5",
            "brthmon","W_parity",
            "trth2o","cleanck","impfloor","impsan","safeh20"),   
  
  birthlen=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
             "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
             "vagbrth","hdlvry",
             "single",
             "W_nrooms","W_nhh","W_nchldlt5",
             "brthmon","W_parity",
             "trth2o","cleanck","impfloor","impsan","safeh20"),   
  
  enstunt=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
            "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
            "vagbrth","hdlvry",
            "single",
            "W_nrooms","W_nhh","W_nchldlt5",
            "brthmon","W_parity",
            "trth2o","cleanck","impfloor","impsan","safeh20"),     
  
  enwast=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
           "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
           "vagbrth","hdlvry",
           "single",
           "W_nrooms","W_nhh","W_nchldlt5",
           "brthmon","W_parity",
           "trth2o","cleanck","impfloor","impsan","safeh20"),  
  
  vagbrth=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
            "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
            "hdlvry",
            "single",
            "W_nrooms","W_nhh","W_nchldlt5",
            "brthmon","W_parity",
            "trth2o","cleanck","impfloor","impsan","safeh20"),     
  
  hdlvry=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
           "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
           "single",
           "W_nrooms","W_nhh","W_nchldlt5",
           "brthmon","W_parity",
           "trth2o","cleanck","impfloor","impsan","safeh20"),      
  
  mage=c("arm","W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
         "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
         "single",
         "W_nrooms","W_nhh","W_nchldlt5",
         "trth2o","cleanck","impfloor","impsan","safeh20"),   
  
  fage=c("arm","W_mage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
         "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
         "single",
         "W_nrooms","W_nhh","W_nchldlt5",
         "brthmon",
         "trth2o","cleanck","impfloor","impsan","safeh20"), 
  
  mhtcm=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
          "W_fhtcm",
          "single",
          "W_nrooms",
          "trth2o","cleanck","impfloor","impsan","safeh20"),    
  
  mwtkg=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
          "W_fhtcm",
          "single",
          "W_nrooms","W_nhh","W_nchldlt5",
          "brthmon","W_parity",
          "trth2o","cleanck","impfloor","impsan","safeh20"),
  
  mbmi=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
         "W_fhtcm",
         "single",
         "W_nrooms","W_nhh","W_nchldlt5",
         "brthmon","W_parity",
         "trth2o","cleanck","impfloor","impsan","safeh20"),      
  
  single=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
           "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
           "W_nrooms","W_nhh","W_nchldlt5",
           "trth2o","cleanck","impfloor","impsan","safeh20"),    
  
  fhtcm=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
          "W_mhtcm","W_mwtkg","W_bmi",
          "single",
          "W_nrooms",
          "trth2o","cleanck","impfloor","impsan","safeh20"), 
  fhtcm_rf=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
          "W_mhtcm","W_mwtkg","W_bmi",
          "single",
          "W_nrooms",
          "trth2o","cleanck","impfloor","impsan","safeh20"), 
  
  nrooms=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
           "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
           "single",
           "W_nhh","W_nchldlt5",
           "W_parity",
           "trth2o","cleanck","impfloor","impsan","safeh20"),    
  
  nhh=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
        "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
        "single",
        "W_nrooms",
        "W_parity",
        "trth2o","cleanck","impfloor","impsan","safeh20"),    
  
  nchldlt5=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
             "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
             "single",
             "W_nrooms",
             "W_parity",
             "trth2o","cleanck","impfloor","impsan","safeh20"),
  
  hhwealth_quart=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", 
 "W_gagebrth","W_birthwt","W_birthlen",
 "single","W_nhh","W_nchldlt5",
 "W_parity"), 
  
  parity=c("arm","W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
           "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
           "vagbrth","hdlvry",
           "single",
           "W_nrooms",
           "trth2o","cleanck","impfloor","impsan","safeh20"),   
  
  meducyrs=c("arm", "W_mage", "W_fage", "feducyrs", "hhwealth_quart",
             "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
             "W_gagebrth","W_birthwt","W_birthlen",
             "single",
             "W_nrooms","W_nhh","W_nchldlt5",
             "trth2o","cleanck","impfloor","impsan","safeh20"),
  
  feducyrs=c("arm", "W_mage", "W_fage", "meducyrs",  "hhwealth_quart", 
             "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
             "W_gagebrth","W_birthwt","W_birthlen",
             "single",
             "W_nrooms","W_nhh","W_nchldlt5",
             "trth2o","cleanck","impfloor","impsan","safeh20"), 
  
  hfoodsec=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart",
             "vagbrth","hdlvry",
             "single",
             "W_nrooms","W_nhh","W_nchldlt5",
             "brthmon","W_parity",
             "trth2o","cleanck","impfloor","impsan","safeh20"),
  
  anywast06=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
              "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
              "vagbrth","hdlvry",
              "single",
              "W_nrooms","W_nhh","W_nchldlt5",
              "month","brthmon","W_parity",
              "trth2o","cleanck","impfloor","impsan","safeh20"),
  
  pers_wast=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
              "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
              "vagbrth","hdlvry",
              "single",
              "W_nrooms","W_nhh","W_nchldlt5",
              "month","brthmon","W_parity",
              "trth2o","cleanck","impfloor","impsan","safeh20"),
  
  trth2o=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
           "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
           "single",
           "W_nrooms","W_nhh","W_nchldlt5",
           "brthmon","W_parity",
           "cleanck","impfloor","impsan","safeh20"), 
  
  cleanck=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
            "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
            "single",
            "W_nrooms","W_nhh","W_nchldlt5",
            "W_parity",
            "trth2o","impfloor","impsan","safeh20"), 
  
  impfloor=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
             "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
             "single",
             "W_nrooms","W_nhh","W_nchldlt5",
             "W_parity",
             "trth2o","cleanck","impsan","safeh20"),  
  
  impsan=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
           "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
           "single",
           "W_nrooms","W_nhh","W_nchldlt5",
           "W_parity",
           "trth2o","cleanck","impfloor","safeh20"), 
  
  safeh20=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
            "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
            "single",
            "W_nrooms","W_nhh","W_nchldlt5",
            "W_parity",
            "trth2o","cleanck","impfloor","impsan"),
  
  perdiar6=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
             "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
             "vagbrth","hdlvry",
             "W_gagebrth","W_birthwt","W_birthlen",
             "single",
             "W_nrooms","W_nhh","W_nchldlt5",
             "month","brthmon","W_parity",
             "trth2o","cleanck","impfloor","impsan","safeh20"), 
  
  perdiar24=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
              "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
              "vagbrth","hdlvry",
              "W_gagebrth","W_birthwt","W_birthlen",
              "single",
              "W_nrooms","W_nhh","W_nchldlt5",
              "month","brthmon","W_parity",
              "trth2o","cleanck","impfloor","impsan","safeh20"), 
  
  predfeed3=bf_covariates,
  predfeed6=bf_covariates,
  predfeed36=bf_covariates,
  exclfeed3=bf_covariates,
  exclfeed6=bf_covariates, 
  exclfeed36=bf_covariates,
  predexfd6=bf_covariates,
  
  earlybf=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
            "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
            "vagbrth","hdlvry",
            "W_gagebrth","W_birthwt","W_birthlen",
            "single",
            "W_nrooms","W_nhh","W_nchldlt5",
            "brthmon","W_parity",
            "trth2o","cleanck","impfloor","impsan","safeh20")
)
save(adjustment_sets, file=paste0(BV_dir,"/results/adjustment_sets_list.Rdata"))





#save



covariates = c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
                  "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
                  "vagbrth","hdlvry","predexfd6",  "earlybf",
                  "W_gagebrth","W_birthwt","W_birthlen",
                  "single", "enstunt","enwast",
                  "W_nrooms","W_nhh","W_nchldlt5",
                  "month","brthmon","W_parity",
                  "trth2o","cleanck","impfloor","impsan","safeh20")


adjustment_sets_all_cov <- list( 
    gagebrth=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    birthwt=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    birthlen=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    enstunt=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    enwast=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    vagbrth=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    hdlvry=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    mage=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    fage=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    mhtcm=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",  "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    mwtkg=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",  "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    mbmi=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",  "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    single=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    fhtcm=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    nrooms=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    nhh=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    nchldlt5=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    hhwealth_quart=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    parity=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    meducyrs=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    feducyrs=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    hfoodsec=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    anywast06=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    pers_wast=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    cleanck=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    impfloor=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    impsan=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    safeh20=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    perdiar6=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    perdiar24=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"), 
    predexfd6=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"),
    earlybf=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec", "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm", "vagbrth","hdlvry","predexfd6",  "earlybf", "W_gagebrth","W_birthwt","W_birthlen", "single",  "W_nrooms","W_nhh","W_nchldlt5", "month","brthmon","W_parity", "cleanck","impfloor","impsan","safeh20","perdiar24"))

save(adjustment_sets_all_cov, file=paste0(BV_dir,"/results/adjustment_sets_list_all_cov.Rdata"))















