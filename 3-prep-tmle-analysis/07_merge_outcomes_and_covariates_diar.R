



#merge outcomes with covariates

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#load covariates
cov<-readRDS(paste0(ghapdata_dir,"FINAL_clean_covariates.rds"))

#Drop wasting risk factors
#cov <- cov %>% subset(., select=c(studyid, subjid, country,perdiar6_2, perdiar24_2))

setwd(ghapdata_dir)


#load outcomes
load("st_meanZ_outcomes.RData")
load("wast_meanZ_outcomes.RData")



#convert subjid to character for the merge with covariate dataset
# cuminc$subjid <- as.character(cuminc$subjid)
# cuminc_nobirth$subjid <- as.character(cuminc_nobirth$subjid)
# cuminc_sev$subjid <- as.character(cuminc_sev$subjid)
# cuminc_nobirth_sev$subjid <- as.character(cuminc_nobirth_sev$subjid)



#merge in covariates
d <- left_join(meanHAZ, cov, by=c("studyid", "subjid", "country"))
d <- d %>% filter(!is.na(perdiar6_2) & !is.na(perdiar24_2))
head(d)




save(d,  file="st_meanZ_rf2.Rdata")


d <- left_join(meanWHZ, cov, by=c("studyid", "subjid", "country"))
d <- d %>% filter(!is.na(perdiar6_2) & !is.na(perdiar24_2))
head(d)




save(d,  file="wast_meanZ_rf2.Rdata")



#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# Create list of adjustment variables
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX



adjustment_sets <- list( 
  
  perdiar6_2=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
             "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
             "vagbrth","hdlvry",
             "W_gagebrth","W_birthwt","W_birthlen",
             "single",
             "W_nrooms","W_nhh","W_nchldlt5",
             "month","brthmon","W_parity",
             "trth2o","cleanck","impfloor","impsan","safeh20"), 
  
  perdiar24_2=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
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

Avars <- c( names(adjustment_sets))


haz <- specify_rf_analysis(A=Avars, Y="haz", file="st_meanZ_rf2.Rdata")
whz <- specify_rf_analysis(A=Avars, Y="whz", file="wast_meanZ_rf2.Rdata")


#primary outcomes 
analyses <- rbind(haz, whz)


#Save analysis specification
save(analyses, file=paste0(here("/4-longbow-tmle-analysis/analysis specification/adjusted_continuous_diar2.rdata")))


#Make unadjusted analysis set
analyses$W <- NULL
save(analyses, file=paste0(here("/4-longbow-tmle-analysis/analysis specification/unadjusted_continuous_diar2.rdata")))


