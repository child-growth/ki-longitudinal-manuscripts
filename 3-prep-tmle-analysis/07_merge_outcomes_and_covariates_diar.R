



#merge outcomes with covariates

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#load covariates
cov<-readRDS(paste0(ghapdata_dir,"FINAL_clean_covariates.rds"))

#Drop wasting risk factors
#cov <- cov %>% subset(., select=c(studyid, subjid, country,perdiar6, perdiar24))

setwd(ghapdata_dir)


#load outcomes
load("st_meanZ_outcomes.RData")
load("wast_meanZ_outcomes.RData")

meanHAZ$subjid <- as.character(meanHAZ$subjid)
meanWHZ$subjid <- as.character(meanWHZ$subjid)


#convert subjid to character for the merge with covariate dataset
# cuminc$subjid <- as.character(cuminc$subjid)
# cuminc_nobirth$subjid <- as.character(cuminc_nobirth$subjid)
# cuminc_sev$subjid <- as.character(cuminc_sev$subjid)
# cuminc_nobirth_sev$subjid <- as.character(cuminc_nobirth_sev$subjid)



#merge in covariates
d <- left_join(meanHAZ, cov, by=c("studyid", "subjid", "country"))
d <- d %>% filter(!is.na(perdiar6) | !is.na(perdiar24))
head(d)
table(d$studyid, d$perdiar24)



save(d,  file="st_meanZ_rf2.Rdata")


d <- left_join(meanWHZ, cov, by=c("studyid", "subjid", "country"))
d <- d %>% filter(!is.na(perdiar6) | !is.na(perdiar24))
head(d)




save(d,  file="wast_meanZ_rf2.Rdata")



#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# Create list of adjustment variables
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX



adjustment_sets <- list( 
  
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
              "trth2o","cleanck","impfloor","impsan","safeh20")
)
save(adjustment_sets, file=here("/results/adjustment_sets_list2.Rdata"))



A <- names(adjustment_sets)

Avars <- c( names(adjustment_sets))


#---------------------------------------------
#Adjustment specifying function
#---------------------------------------------


specify_rf_analysis <- function(A, Y, file,  W=NULL, V= c("agecat","studyid","country"), id="id", adj_sets=adjustment_sets){
  
  analyses <- expand.grid(A=A,Y=Y, stringsAsFactors = FALSE, KEEP.OUT.ATTRS = FALSE)
  analyses$id <- id
  analyses$strata <- list(V)
  if(is.null(W)){analyses$W <- adj_sets[analyses$A]}else{
    analyses$W <- list(W)
  }
  names(analyses$W) <- NULL
  analyses$file <- file
  
  return(analyses)
}


#---------------------------------------------
# Specify the continuous analyses
#---------------------------------------------



haz <- specify_rf_analysis(A=Avars, Y="haz", file="st_meanZ_rf2.Rdata")
whz <- specify_rf_analysis(A=Avars, Y="whz", file="wast_meanZ_rf2.Rdata")


#primary outcomes 
analyses <- rbind(haz, whz)


#Save analysis specification
save(analyses, file=paste0(here("/4-longbow-tmle-analysis/analysis specification/adjusted_continuous_diar2.Rdata")))


#Make unadjusted analysis set
analyses$W <- NULL
save(analyses, file=paste0(here("/4-longbow-tmle-analysis/analysis specification/unadjusted_continuous_diar2.Rdata")))





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
load("st_vel_outcomes.RData")
load("waz_vel_outcomes.RData")



#convert subjid to character for the merge with covariate dataset
cov$subjid <- as.character(cov$subjid)
prev$subjid <- as.character(prev$subjid)
cuminc$subjid <- as.character(cuminc$subjid)
cuminc_nobirth$subjid <- as.character(cuminc_nobirth$subjid)
rev$subjid <- as.character(rev$subjid)
vel_haz$subjid <- as.character(vel_haz$subjid)
vel_lencm$subjid <- as.character(vel_lencm$subjid)
vel_waz$subjid <- as.character(vel_waz$subjid)
vel_wtkg$subjid <- as.character(vel_wtkg$subjid)




#------------------------------------
# Create cumulative incidence dataset
#------------------------------------

#merge in covariates
cuminc <- cuminc %>% subset(., select = -c(tr))

d <- left_join(cuminc, cov[, c("studyid", "subjid", "country", setdiff(colnames(cov),colnames(cuminc)))], 
               by=c("studyid", "subjid", "country"))

save(d,  file="st_cuminc_rf_diar.Rdata")


#------------------------------------
# Create cumulative incidence dataset
# - no birth incidence
#------------------------------------

#merge in covariates
cuminc_nobirth <- cuminc_nobirth %>% subset(., select = -c(tr))
cuminc_nobirth <- bind_rows(cuminc_nobirth, cuminc[cuminc$agecat=="6-24 months",])

d <- left_join(cuminc_nobirth, cov[, c("studyid", "subjid", "country", setdiff(colnames(cov),colnames(cuminc_nobirth)))], 
               by=c("studyid", "subjid", "country"))

save(d,  file="st_cuminc_nobirth_rf_diar.Rdata")


#------------------------------------
# Create prevalence dataset
#------------------------------------


#merge in covariates
d <- left_join(prev, cov, by=c("studyid", "subjid", "country"))


save(d,  file="st_prev_rf_diar.Rdata")



#------------------------------------
# Create recovery dataset
#------------------------------------

#merge in covariates
d <- left_join(rev, cov, by=c("studyid", "subjid", "country"))
head(d)


save(d, file="st_rec_rf_diar.Rdata")






#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
#WASTING
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

#Drop wasting risk factors
cov <- cov %>% subset(., select=-c(pers_wast, enwast, anywast06))


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




#------------------------------------
# Create cumulative incidence dataset
#------------------------------------

#merge in covariates
dim(cuminc)
dim(cov)
d <- left_join(cuminc, cov[, c("studyid", "subjid", "country", setdiff(colnames(cov),colnames(cuminc)))], 
               by=c("studyid", "subjid", "country"))

save(d,  file="wast_cuminc_rf_diar.Rdata")


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



save(d,  file="wast_cuminc_nobirth_rf_diar.Rdata")


#------------------------------------
# Create prevalence dataset
#------------------------------------


#merge in covariates
dim(prev)
d <- left_join(prev, cov, by=c("studyid", "subjid", "country"))



save(d,  file="wast_prev_rf_diar.Rdata")


#------------------------------------
# Create recovery dataset
#------------------------------------

#merge in covariates
dim(rec)
d <- left_join(rec, cov, by=c("studyid", "subjid", "country"))



save(d,  file="wast_rec_rf_diar.Rdata")



#------------------------------------
# Create persistant wasting dataset
#------------------------------------

#merge in covariates
dim(pers_wast)
d <- left_join(pers_wast, cov[, c("studyid", "subjid", "country", setdiff(colnames(cov),colnames(pers_wast)))], 
               by=c("studyid", "subjid", "country"))


save(d, file="pers_wast_rf_diar.Rdata")




#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# Co-occurrence
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

load("co_cuminc.rdata")


#merge in covariates
dim(cuminc)
dim(cov)
d <- left_join(cuminc, cov[, c("studyid", "subjid", "country", setdiff(colnames(cov),colnames(cuminc)))], 
               by=c("studyid", "subjid", "country"))





save(d,  file="co_cuminc_rf_diar.Rdata")




#---------------------------------------------
# Specify the binary analyses
#---------------------------------------------


st_cuminc <- specify_rf_analysis(A=Avars,
                                 Y=c("ever_stunted", "ever_sstunted"), file="st_cuminc_rf_diar.Rdata")

st_cuminc_nobirth <- specify_rf_analysis(A=Avars,
                                         Y=c("ever_stunted", "ever_sstunted"), file="st_cuminc_nobirth_rf_diar.Rdata")



cuminc <- specify_rf_analysis(A=Avars,
                              Y=c("ever_wasted", "ever_swasted"), file="wast_cuminc_rf_diar.Rdata")

cuminc_nobirth <- specify_rf_analysis(A=Avars,
                                      Y=c("ever_wasted","ever_swasted"), file="wast_cuminc_nobirth_rf_diar.Rdata")



pers_wast <- specify_rf_analysis(A=Avars, Y="pers_wast", file="pers_wast_rf_diar.Rdata")


st_prev <- specify_rf_analysis(A=Avars, Y=c("stunted","sstunted"), file="st_prev_rf_diar.Rdata")

prev <- specify_rf_analysis(A=Avars, Y=c("wasted","swasted"), file="wast_prev_rf_diar.Rdata")

rec <- specify_rf_analysis(A=Avars, id="subjid", Y="wast_rec90d", file="wast_rec_rf_diar.Rdata")

co <- specify_rf_analysis(A=Avars, id="subjid", Y="ever_co", file="co_cuminc_rf_diar.Rdata")


#bind together datasets
analyses <- rbind(st_prev, prev, st_cuminc, st_cuminc_nobirth, cuminc, cuminc_nobirth, pers_wast, rec, co)



#Save analysis specification
saveRDS(analyses, file=paste0(here("/4-longbow-tmle-analysis/analysis specification/adjusted_binary_analyses_diar.rds")))


