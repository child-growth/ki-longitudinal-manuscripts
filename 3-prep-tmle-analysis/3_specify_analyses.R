

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(here)


load("U:/ucb-superlearner/Wasting rallies/adjustment_sets_list.Rdata")
A <- names(adjustment_sets)

Avars <- c( "sex",  "brthmon", "month", names(adjustment_sets))


#---------------------------------------------
#Adjustment specifying function
#---------------------------------------------


specify_rf_analysis <- function(A, Y, file,  W=NULL, V= c("agecat","studyid","country"), id="id", adj_sets=adjustment_sets){
  
  analyses <- expand.grid(A=Avars,Y=Y, stringsAsFactors = FALSE, KEEP.OUT.ATTRS = FALSE)
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
setwd("U:/ucb-superlearner/Manuscript analysis data/")
load("st_prev_rf.Rdata")

st_prev <- specify_rf_analysis(A=Avars, Y=c("stunted","sstunted"), file="st_prev_rf.Rdata")
st_rec <- specify_rf_analysis(A=Avars, Y="s03rec24", file="st_rec_rf.Rdata")

st_cuminc <- specify_rf_analysis(A=c( "sex",               "mage",          "mhtcm",         "mwtkg",        
                                      "mbmi",          "single",        "fage",          "fhtcm",       
                                      "nrooms",      "nchldlt5",    "nhh",              
                                      "hhwealth_quart", "brthmon", "parity",   "meducyrs", 
                                      "feducyrs", "hfoodsec"),
                                 Y="ever_stunted", file="st_cuminc_rf.Rdata")

st_cuminc_nobirth <- specify_rf_analysis(A=c( "gagebrth",      "birthwt",    
                                              "birthlen",       "vagbrth",       "hdlvry",    
                                              "enwast", "anywast06", "pers_wast", 
                                              "trth2o", "cleanck", "impfloor",  
                                              "impsan", "safeh20",
                                              "perdiar6", "perdiar24", 
                                              "predfeed3", "exclfeed3", "predfeed6", "exclfeed6", "predfeed36", "exclfeed36",
                                              "predexfd6", "earlybf", "month"),
                                         Y="ever_stunted", file="st_cuminc_nobirth_rf.Rdata")


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
                                      Y=c("ever_wasted", "ever_swasted"), file="wast_cuminc_nobirth_rf.Rdata")


rec <- specify_rf_analysis(A=Avars, id="subjid", Y="wast_rec90d", file="wast_rec_rf.Rdata")
pers_wast <- specify_rf_analysis(A=Avars, Y="pers_wast", file="pers_wast_rf.Rdata")
pers_wast <- specify_rf_analysis(A=Avars, Y="ever_co", file="co_cuminc_rf.rdata")


WHZ_quart_prev <- specify_rf_analysis(A="lag_WHZ_quart", Y="stunted", W=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
                                                                          "vagbrth","hdlvry",
                                                                          "single",
                                                                          "W_nrooms","W_nhh","W_nchldlt5",
                                                                          "month","brthmon","W_parity",
                                                                          "trth2o","cleanck","impfloor","impsan","safeh20"),
                                      file="stuntprev_whz_rf.Rdata")

WHZ_quart_cuminc <- specify_rf_analysis(A="lag_WHZ_quart", Y="ever_stunted", W=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
                                                                                 "vagbrth","hdlvry",
                                                                                 "single",
                                                                                 "W_nrooms","W_nhh","W_nchldlt5",
                                                                                 "month","brthmon","W_parity",
                                                                                 "trth2o","cleanck","impfloor","impsan","safeh20"),
                                        file="stuntCI_whz_rf.Rdata")

co_cuminc <- specify_rf_analysis(A=c( "sex",               "mage",          "mhtcm",         "mwtkg",        
                                   "mbmi",          "single",        "fage",          "fhtcm",       
                                   "nrooms",      "nchldlt5",    "nhh",              
                                   "hhwealth_quart", "brthmon", "parity",   "meducyrs", 
                                   "feducyrs", "hfoodsec"),
                              Y="ever_co", file="co_cuminc_rf.Rdata")

#bind together datasets
analyses <- rbind(st_prev, st_cuminc, st_cuminc_nobirth, st_rec, prev, rec, cuminc, cuminc_nobirth, WHZ_quart_prev, WHZ_quart_cuminc, co_cuminc)

#TEMP
analyses <- st_prev[c(1,2,5,10,11),]
table(analyses$file)

#Save analysis specification
save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/adjusted_binary_analyses.rdata"))
save(analyses, file="U:/sprint_7D_longbow/Manuscript analysis/adjusted_binary_analyses.rdata")


#Make unadjusted analysis set
analyses$W <- NULL
save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/unadjusted_binary_analyses.rdata"))
save(analyses, file="U:/sprint_7D_longbow/Manuscript analysis/unadjusted_binary_analyses.rdata")



#---------------------------------------------
# Specify the continuous analyses
#---------------------------------------------

vel_haz <- specify_rf_analysis(A=Avars, Y="y_rate_haz", file="st_haz_vel_rf.Rdata")
vel_lencm <- specify_rf_analysis(A=Avars, Y="y_rate_len", file="st_len_vel_rf.Rdata")
vel_waz <- specify_rf_analysis(A=Avars, Y="y_rate_waz", file="wast_waz_vel_rf.Rdata")
vel_wtkg <- specify_rf_analysis(A=Avars, Y="y_rate_wtkg", file="wast_wtkg_vel_rf.Rdata")
haz <- specify_rf_analysis(A=Avars, Y="haz", file="st_meanZ_rf.Rdata")
whz <- specify_rf_analysis(A=Avars, Y="whz", file="wast_meanZ_rf.Rdata")


analyses <- rbind(vel_haz, vel_lencm, vel_waz, vel_wtkg, haz, whz)

#TEMP
analyses <- haz[c(1,2,5,10,11),]

#Save analysis specification
save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/adjusted_continuous.rdata"))
save(analyses, file="U:/sprint_7D_longbow/Manuscript analysis/adjusted_continuous.rdata")


#Make unadjusted analysis set
analyses$W <- NULL
save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/unadjusted_continuous.rdata"))
save(analyses, file="U:/sprint_7D_longbow/Manuscript analysis/unadjusted_continuous.rdata")


