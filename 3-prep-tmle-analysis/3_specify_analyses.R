
#---------------------------------------------
#Adjustment sets
#---------------------------------------------
rm(list=ls())
setwd("U:/UCB-SuperLearner/Wasting rallies")
load("adjustment_sets_list.Rdata")

#---------------------------------------------
#Adjustment specifying function
#---------------------------------------------


specify_rf_analysis <- function(A=names(adjustment_sets), Y, file,  W=NULL, V= c("agecat","studyid","country"), id="id", adj_sets=adjustment_sets){
  
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
# Specify the binary analyses
#---------------------------------------------

Avars <- c( "sex",  "brthmon", "month", names(adjustment_sets))

prev <- specify_rf_analysis(A=Avars, Y=c("wasted","swasted"), file="wast_prev_rf.Rdata")

cuminc <- specify_rf_analysis(A=c( "sex",               "mage",          "mhtcm",         "mwtkg",        
                                   "mbmi",          "single",        "fage",          "fhtcm",       
                                   "nrooms",      "nchldlt5",    "nhh",              
                                   "hhwealth_quart", "brthmon", "parity",   "meducyrs", 
                                   "feducyrs", "hfoodsec"),
                              Y="ever_wasted", file="wast_cuminc_rf.Rdata")

cuminc_nobirth <- specify_rf_analysis(A=c( "gagebrth",      "birthwt",    
                                           "birthlen",       "vagbrth",       "hdlvry",    
                                           "enstunt", 
                                           "trth2o", "cleanck", "impfloor",  
                                           "impsan", "safeh20",
                                           "perdiar6", "perdiar24", 
                                           "predfeed3", "exclfeed3", "predfeed6", "exclfeed6", "predfeed36", "exclfeed36",
                                           "predexfd6", "earlybf", "month"),
                                      Y="ever_wasted", file="wast_cuminc_nobirth_rf.Rdata")


rec <- specify_rf_analysis(A=Avars, id="subjid", Y="wast_rec90d", file="wast_rec_rf.Rdata")
pers_wast <- specify_rf_analysis(A=Avars, Y="pers_wast", file="pers_wast_rf.Rdata")


#Birthweight stratified
prev_BWstrat <- specify_rf_analysis(A=Avars, Y=c("wasted","swasted"), V= c("agecat","studyid","country", "birthwt"), file="wast_prev_rf.Rdata")

cuminc_BWstrat  <- specify_rf_analysis(A=c( "sex",               "mage",          "mhtcm",         "mwtkg",        
                                            "mbmi",          "single",        "fage",          "fhtcm",       
                                            "nrooms",      "nchldlt5",    "nhh",              
                                            "hhwealth_quart", "brthmon", "parity",   "meducyrs", 
                                            "feducyrs", "hfoodsec"),
                                       Y="ever_wasted",  V= c("agecat","studyid","country", "birthwt"), file="wast_cuminc_rf.Rdata")


rec_BWstrat  <- specify_rf_analysis(A=Avars, id="subjid", Y="wast_rec90d", V= c("agecat","studyid","country", "birthwt"), file="wast_rec_rf.Rdata")
pers_wast_BWstrat  <- specify_rf_analysis(A=Avars, Y="pers_wast", V= c("agecat","studyid","country", "birthwt"), file="pers_wast_rf.Rdata")



#Specify the mortality analyses
load("mortality_adjustment_sets_list.Rdata")

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

mortality <- specify_rf_analysis(A=Avars, Y=c("dead"), 
                                 V= c("studyid","country"), id="id", adj_sets=adjustment_sets_mortality, 
                                 file="stuntwast_mort.Rdata")

Avars_morbidity <- c("ever_wasted06",
                     "ever_swasted06",
                     "pers_wasted06",
                     "ever_stunted06",
                     "ever_wasted06_noBW",
                     "ever_swasted06_noBW",
                     "ever_underweight06",
                     "ever_co06")

morbidity <- specify_rf_analysis(A=Avars_morbidity,
                                 Y=c("co_occurence", "pers_wasted624"),
                                 V= c("studyid","country"), id="id", adj_sets=adjustment_sets_mortality,
                                 file="stuntwast_morbidity.Rdata")


mortality_BWstrat <- specify_rf_analysis(A=Avars, Y=c("dead"), 
                                 V= c("studyid","country", "birthwt"), id="id", adj_sets=adjustment_sets_mortality, 
                                 file="stuntwast_mort.Rdata")

morbidity_BWstrat <- specify_rf_analysis(A=Avars_morbidity,
                                 Y=c("co_occurence", "pers_wasted624"),
                                 V= c("studyid","country", "birthwt"), id="id", adj_sets=adjustment_sets_mortality,
                                 file="stuntwast_morbidity.Rdata")

#Birthweight stratified


#bind together datasets
analyses <- rbind(prev, cuminc, cuminc_nobirth, rec, pers_wast, mortality, morbidity,
                  prev_BWstrat, cuminc_BWstrat, rec_BWstrat, pers_wast_BWstrat, mortality_BWstrat, morbidity_BWstrat)

analyses  <- rbind(mortality, morbidity, mortality_BWstrat, morbidity_BWstrat)

table(analyses$file)

#Save analysis specification
#setwd("C:/Users/andre/Documents/HBGDki/Results/")
save(analyses, file="wasting_adjusted_binary_analyses.rdata")
save(analyses, file="U:/sprint_7D_longbow/wasting_analyses/wasting_adjusted_binary_analyses.rdata")


#Make unadjusted analysis set
analyses$W <- NULL
save(analyses, file="wasting_unadjusted_binary_analyses.rdata")
save(analyses, file="U:/sprint_7D_longbow/wasting_analyses/wasting_unadjusted_binary_analyses.rdata")





