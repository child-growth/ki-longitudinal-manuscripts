


rm(list=ls())
library(tidyverse)
library(reshape2)

#merge outcomes with covariates

# setwd("U:/UCB-SuperLearner/Stunting rallies/")
setwd("U:/UCB-SuperLearner/Wasting rallies/")

#load covariates
cov<-readRDS("U:/ucb-superlearner/stunting rallies/FINAL_clean_covariates.rds")

#load outcomes
#load outcomes
load("wast_prev.RData")
load("wast_cuminc.rdata")
load("wast_cuminc_nobirth.rdata")
load("pers_wast.rdata")
load("wast_rec.rdata")

dim(prev)
dim(cuminc)
dim(rev)
dim(vel_haz)


colnames(prev)
colnames(cuminc)
colnames(rev)
colnames(vel_haz)


head(prev)
head(cuminc)
head(rev)
head(vel_haz)

#convert subjid to character for the merge with covariate dataset
cov$subjid <- as.character(cov$subjid)
prev$subjid <- as.character(prev$subjid)
cuminc$subjid <- as.character(cuminc$subjid)
rev$subjid <- as.character(rev$subjid)
pers_wast$subjid <- as.character(pers_wast$subjid)


#------------------------------------
# Create tabulation function
#------------------------------------


A<-c( "sex", "gagebrth",      "birthwt",      
      "birthlen",      "enstunt",       "vagbrth",       "hdlvry",        "mage",          "mhtcm",         "mwtkg",        
      "mbmi",          "single",        "fage",          "fhtcm",         "nrooms",        "nhh",           "nchldlt5",     
      "hhwealth_quart", "month", "brthmon", "parity",   "meducyrs", 
      "feducyrs", "hfoodsec",  
      "enwast", "anywast06", "pers_wast", 
      "trth2o", "cleanck", "impfloor",  "impsan", "safeh20",
      "perdiar6", "perdiar24", "predexfd6", "earlybf")  

dfull <- d

#Create a risk factor tabulation function
RF_tab <- function(d, Yvar="ever_stunted", statistic="N", A=c( "sex",              "gagebrth",      "birthwt",      
                                  "birthlen",      "enstunt",       "vagbrth",       "hdlvry",        "mage",          "mhtcm",         "mwtkg",        
                                  "mbmi",          "single",        "fage",          "fhtcm",         "nrooms",        "nhh",           "nchldlt5",     
                                  "hhwealth_quart", "month", "brthmon", "parity",   "meducyrs", 
                                  "feducyrs", "hfoodsec",  
                                  "trth2o", "cleanck", "impfloor",  "impsan", "safeh20",
                                  "perdiar6", "perdiar24", "predexfd6", "earlybf")){
  
  agecat <- d$agecat[1]    

  
  d <- d %>% subset(., select=c("studyid",  "country", Yvar, A))
  colnames(d)[3] <-"Y"
  
  for(i in 4:ncol(d)){
      df <-d[,c(1:3,i)]
      Avariable <- colnames(df)[4] 
      colnames(df)[4] <- "Avar"
      res <- df %>% group_by(studyid, country, Avar) %>%
        filter(!is.na(Avar)) %>%
      summarize(N=n(), N_cases=sum(Y), Mean=mean(Y, na.rm=T))
      if(statistic=="N"){
        res <- subset(res, select = -c(N_cases, Mean))
      }
      if(statistic=="N_cases"){
        res <- subset(res, select = -c(N, Mean))
      }
      if(statistic=="mean"){
        res <- subset(res, select = -c(N, N_cases))
      }
      colnames(res)[4] <- Avariable
      
      res <- res %>%
        gather(key, value, -studyid, -country, -Avar) %>%
        unite(col, key, Avar, sep = "__") %>%
        spread(col, value)
      
      if(i==4){
        resdf<-res
      }else{
        resdf<-merge(resdf, res, by=c("studyid", "country"), all.x=T, all.y=T)
      }
  }
  
  
  resdf <- melt(resdf, id.vars = c("studyid","country"))
  resdf$agecat <- agecat
  resdf$intervention_variable <- sapply(strsplit(as.character(resdf$variable), "__", fixed=T), `[`, 1)
  resdf$intervention_level <- sapply(strsplit(as.character(resdf$variable), "__", fixed=T), `[`, 2)
  resdf <- resdf %>% subset(., select = -c(variable))
  
 
  if(statistic=="N_cases"){
    resdf <- resdf %>% rename(N_cases = value)
  }else{
    resdf <- resdf %>% rename(N = value)
  }
   return(resdf) 
}

#------------------------------------
# Create outcome dataframes
#------------------------------------


#merge in covariates
prev <- left_join(prev, cov, by=c("studyid", "subjid", "country"))
cuminc <- left_join(cuminc, cov, by=c("studyid", "subjid", "country"))
rev <- left_join(rev, cov, by=c("studyid", "subjid", "country"))
pers_wast <- left_join(pers_wast, cov, by=c("studyid", "subjid", "country"))




#------------------------------------
# Tabulate N's and n cases
#------------------------------------

table(cuminc$agecat)
cumincN_024 <- RF_tab(cuminc[cuminc$agecat=="0-24 months",])
cumincCase_024 <- RF_tab(cuminc[cuminc$agecat=="0-24 months",], statistic="N_cases")
cumincN_624 <- RF_tab(cuminc[cuminc$agecat=="6-24 months",])
cumincCase_624 <- RF_tab(cuminc[cuminc$agecat=="6-24 months",], statistic="N_cases")
cumincN_06 <- RF_tab(cuminc[cuminc$agecat=="0-6 months",])
cumincCase_06 <- RF_tab(cuminc[cuminc$agecat=="0-6 months",], statistic="N_cases")


table(prev$agecat)
prevN_birth <- RF_tab(prev[prev$agecat=="Birth",], Yvar="stunted")
prevCase_birth <- RF_tab(prev[prev$agecat=="Birth",], Yvar="stunted", statistic="N_cases")
prevN_6 <- RF_tab(prev[prev$agecat=="6 months",], Yvar="stunted")
prevCase_6 <- RF_tab(prev[prev$agecat=="6 months",], Yvar="stunted", statistic="N_cases")
prevN_24 <- RF_tab(prev[prev$agecat=="24 months",], Yvar="stunted")
prevCase_24 <- RF_tab(prev[prev$agecat=="24 months",], Yvar="stunted", statistic="N_cases")

table(vel_haz$agecat)
vel_hazN_03 <- RF_tab(vel_haz[vel_haz$agecat=="0-3 months",], Yvar="y_rate")
vel_hazMean_03 <- RF_tab(vel_haz[vel_haz$agecat=="0-3 months",], Yvar="y_rate", statistic="mean")
vel_hazN_36 <- RF_tab(vel_haz[vel_haz$agecat=="3-6 months",], Yvar="y_rate")
vel_hazMean_36 <- RF_tab(vel_haz[vel_haz$agecat=="3-6 months",], Yvar="y_rate", statistic="mean")
vel_hazN_612 <- RF_tab(vel_haz[vel_haz$agecat=="6-12 months",], Yvar="y_rate")
vel_hazMean_612 <- RF_tab(vel_haz[vel_haz$agecat=="6-12 months",], Yvar="y_rate", statistic="mean")
vel_hazN_1224 <- RF_tab(vel_haz[vel_haz$agecat=="12-24 months",], Yvar="y_rate")
vel_hazMean_1224 <- RF_tab(vel_haz[vel_haz$agecat=="12-24 months",], Yvar="y_rate", statistic="mean")


table(pers_wast$agecat)
pers_wastN_024 <- RF_tab(pers_wast[pers_wast$agecat=="0-24 months",], Yvar="pers_wast.x")
pers_wastCase_024 <- RF_tab(pers_wast[pers_wast$agecat=="0-24 months",], statistic="N_cases", Yvar="pers_wast.x")
pers_wastN_624 <- RF_tab(pers_wast[pers_wast$agecat=="6-24 months",], Yvar="pers_wast.x")
pers_wastCase_624 <- RF_tab(pers_wast[pers_wast$agecat=="6-24 months",], statistic="N_cases", Yvar="pers_wast.x")
pers_wastN_06 <- RF_tab(pers_wast[pers_wast$agecat=="0-6 months",], Yvar="pers_wast.x")
pers_wastCase_06 <- RF_tab(pers_wast[pers_wast$agecat=="0-6 months",], statistic="N_cases", Yvar="pers_wast.x")

#------------------------------------
# Convert to long form
#------------------------------------

#------------------------------------
# Save tabulated objects
#------------------------------------
ls()
save(cumincN_024, 
     cumincCase_024, 
     cumincN_624, 
     cumincCase_624, 
     cumincN_06, 
     cumincCase_06, 
     prevN_birth, 
     prevCase_birth, 
     prevN_6, 
     prevCase_6, 
     prevN_24, 
     prevCase_24, 
     vel_hazN_03, 
     vel_hazMean_03, 
     vel_hazN_36, 
     vel_hazMean_36, 
     vel_hazN_612,
     vel_hazMean_612, 
     vel_hazN_1224,
     vel_hazMean_1224, 
     file="U:/ucb-superlearner/Stunting rallies/wast_RiskFactor_Ns.Rdata")






