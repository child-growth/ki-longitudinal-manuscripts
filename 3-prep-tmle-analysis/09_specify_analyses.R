

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


load(paste0(BV_dir,"/results/adjustment_sets_list.Rdata"))
A <- names(adjustment_sets)

Avars <- c( "sex",  "brthmon", "month", names(adjustment_sets))


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
# Specify the binary analyses
#---------------------------------------------

st_prev <- specify_rf_analysis(A=Avars, Y=c("stunted","sstunted"), file="st_prev_rf.Rdata")
#st_rec <- specify_rf_analysis(A=Avars, Y="s03rec24", file="st_rec_rf.Rdata")

st_cuminc <- specify_rf_analysis(A=c( "sex",               "mage",          "mhtcm",         "mwtkg",        
                                      "mbmi",          "single",        "fage","fage_rf",          "fhtcm","fhtcm_rf",       
                                      "nrooms",      "nchldlt5",    "nhh",              
                                      "hhwealth_quart", "brthmon", "parity",   "meducyrs", 
                                      "feducyrs", "hfoodsec"),
                                 Y=c("ever_stunted","ever_sstunted"), file="st_cuminc_rf.Rdata")

st_cuminc_nobirth <- specify_rf_analysis(A=c( "gagebrth",      "birthwt",    
                                              "birthlen",       "vagbrth",       "hdlvry",    
                                              "enwast", "anywast06", "pers_wast", 
                                              "trth2o", "cleanck", "impfloor",  
                                              "impsan", "safeh20",
                                              "perdiar6", "perdiar24", 
                                              "predfeed3", "exclfeed3", "predfeed6", "exclfeed6", "predfeed36", "exclfeed36",
                                              "predexfd6", "earlybf", "month"),
                                         Y=c("ever_stunted","ever_sstunted"), file="st_cuminc_nobirth_rf.Rdata")


prev <- specify_rf_analysis(A=Avars, Y=c("wasted","swasted"), file="wast_prev_rf.Rdata")

cuminc <- specify_rf_analysis(A=c( "sex",               "mage",          "mhtcm",         "mwtkg",        
                                   "mbmi",          "single",        "fage","fage_rf",          "fhtcm","fhtcm_rf",       
                                   "nrooms",      "nchldlt5",    "nhh",              
                                   "hhwealth_quart", "brthmon", "parity",   "meducyrs", 
                                   "feducyrs", "hfoodsec"),
                              Y=c("ever_wasted", "ever_swasted"), file="wast_cuminc_rf.Rdata")

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

co_cuminc <- specify_rf_analysis(A=Avars,
                              Y="ever_co", file="co_cuminc_rf.Rdata")


#bind together datasets
analyses <- rbind(st_prev, st_cuminc, st_cuminc_nobirth, prev, rec, cuminc, cuminc_nobirth, pers_wast, co_cuminc)



#Save analysis specification
save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/adjusted_binary_analyses.rdata"))


#Make unadjusted analysis set
analyses$W <- NULL
save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/unadjusted_binary_analyses.rdata"))



#Save stunting recovery analysis specification
stunt_rec <- specify_rf_analysis(A=Avars, Y="s03rec24", file="st_rec_rf.Rdata")
stunt_rev <- specify_rf_analysis(A=Avars, Y="s06rec1824", file="st_inc_rec_rf.Rdata")


stunt_rec_analyses <- rbind(stunt_rec, stunt_rev)
save(stunt_rec_analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/adjusted_stunt_rec_analyses.rdata"))


#---------------------------------------------
# Specify the continuous analyses
#---------------------------------------------

Avars <- c( "sex",  "brthmon", "month", names(adjustment_sets))


vel_haz <- specify_rf_analysis(A=Avars, Y="y_rate_haz", file="st_haz_vel_rf.Rdata")
vel_lencm <- specify_rf_analysis(A=Avars, Y="y_rate_len", file="st_len_vel_rf.Rdata")
vel_waz <- specify_rf_analysis(A=Avars, Y="y_rate_waz", file="wy_rate_waz_vel_rfRdata")
vel_wtkg <- specify_rf_analysis(A=Avars, Y="y_rate_wtkg", file="y_rate_wtkg_vel_rf.Rdata")
haz <- specify_rf_analysis(A=Avars, Y="haz", file="st_meanZ_rf.Rdata")
whz <- specify_rf_analysis(A=Avars, Y="whz", file="wast_meanZ_rf.Rdata")


#WLZ preceding growth velocity
WHZ_quart_vel <- specify_rf_analysis(A="lag_WHZ_quart", Y="y_rate", W=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
                                                                                 "vagbrth","hdlvry",
                                                                                 "single",
                                                                                 "W_nrooms","W_nhh","W_nchldlt5",
                                                                                 "month","brthmon","W_parity",
                                                                                 "trth2o","cleanck","impfloor","impsan","safeh20"),
                                        file="laz_vel_whz_rf.Rdata")

WHZ_quart_lenvel <- specify_rf_analysis(A="lag_WHZ_quart", Y="y_rate", W=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
                                                                        "vagbrth","hdlvry",
                                                                        "single",
                                                                        "W_nrooms","W_nhh","W_nchldlt5",
                                                                        "month","brthmon","W_parity",
                                                                        "trth2o","cleanck","impfloor","impsan","safeh20"),
                                        file="len_vel_whz_rf.Rdata")


#primary outcomes 
analyses <- rbind(vel_haz, vel_lencm, vel_waz, vel_wtkg, haz, whz)


#Save analysis specification
save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/adjusted_continuous.rdata"))


#Make unadjusted analysis set
analyses$W <- NULL
save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/unadjusted_continuous.rdata"))




#lagged WLZ analysis -continious
analyses <- rbind(WHZ_quart_lenvel, WHZ_quart_vel)
save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/adjusted_continuous_lagwhz.rdata"))

#lagged WLZ analysis -binary
analyses <- rbind(WHZ_quart_prev, WHZ_quart_cuminc)
save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/adjusted_binary_lagwhz.rdata"))

