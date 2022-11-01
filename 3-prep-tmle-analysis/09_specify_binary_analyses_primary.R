

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


load(paste0(BV_dir,"/results/adjustment_sets_list.Rdata"))
A <- names(adjustment_sets)

Avars <- c( "sex",   names(adjustment_sets))

load(file=paste0(ghapdata_dir,"/wast_cuminc.rdata"))
cuminc_sev <- cuminc %>% filter(agecat=="0-24 months")
load(file=paste0(ghapdata_dir,"/wast_cuminc_nobirth.rdata"))
cuminc_nobirth_sev <- cuminc_nobirth %>% filter(agecat=="0-24 months (no birth wast)")
load(file=paste0(ghapdata_dir,"/pers_wast.rdata"))

save(cuminc, file=paste0(ghapdata_dir,"/wast_cuminc_primary.rdata"))
save(cuminc_nobirth, file=paste0(ghapdata_dir,"/wast_cuminc_nobirth_primary.rdata"))
save(cuminc_sev, file=paste0(ghapdata_dir,"/swast_cuminc_primary.rdata"))
save(cuminc_nobirth_sev, file=paste0(ghapdata_dir,"/swast_cuminc_nobirth_primary.rdata"))
save(pers_wast, file=paste0(ghapdata_dir,"/pers_wast_primary.rdata"))

load(file=paste0(ghapdata_dir,"/st_cuminc_outcomes.rdata"))
cuminc_sev <- cuminc %>% filter(agecat=="0-24 months")
table(cuminc_sev$ever_sstunted)

load(file=paste0(ghapdata_dir,"/st_cuminc_outcomes_nobirth.rdata"))
cuminc_nobirth_sev <- cuminc_nobirth %>% filter(agecat=="0-24 months (no birth st.)")

save(cuminc, file=paste0(ghapdata_dir,"/st_cuminc_outcomes_primary.rdata"))
save(cuminc_nobirth, file=paste0(ghapdata_dir,"/st_cuminc_outcomes_nobirth_primary.rdata"))
save(cuminc_sev, file=paste0(ghapdata_dir,"/sst_cuminc_outcomes_primary.rdata"))
save(cuminc_nobirth_sev, file=paste0(ghapdata_dir,"/sst_cuminc_outcomes_nobirth_primary.rdata"))

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


st_cuminc <- specify_rf_analysis(A=c( "sex",               "mage",          "mhtcm",         "mwtkg",        
                                      "mbmi",          "single",        "fage","fage_rf",          "fhtcm",    
                                      "nrooms",      "nchldlt5",    "nhh",              
                                      "hhwealth_quart", "brthmon", "parity",   "meducyrs", 
                                      "feducyrs", "hfoodsec"),
                                 Y=c("ever_stunted"), file="st_cuminc_rf_primary.rdata")

st_cuminc_nobirth <- specify_rf_analysis(A=c( "gagebrth",      "birthwt",    
                                              "birthlen",       "vagbrth","sga",       "hdlvry",    
                                              "enwast", "anywast06", "pers_wast", 
                                              "trth2o", "cleanck", "impfloor",  
                                              "impsan", "safeh20",
                                              "perdiar6", "perdiar24", 
                                              "predfeed3", "exclfeed3", "predfeed6", "exclfeed6", "predfeed36", "exclfeed36",
                                              "predexfd6", "earlybf", "month"),
                                         Y=c("ever_stunted"), file="st_cuminc_nobirth_rf_primary.rdata")
sst_cuminc <- specify_rf_analysis(A=c( "sex",               "mage",          "mhtcm",         "mwtkg",        
                                      "mbmi",          "single",        "fage","fage_rf",          "fhtcm",    
                                      "nrooms",      "nchldlt5",    "nhh",              
                                      "hhwealth_quart", "brthmon", "parity",   "meducyrs", 
                                      "feducyrs", "hfoodsec"),
                                 Y=c("ever_sstunted"), file="sst_cuminc_rf_primary.rdata")

sst_cuminc_nobirth <- specify_rf_analysis(A=c( "gagebrth",      "birthwt",    
                                              "birthlen",       "vagbrth","sga",       "hdlvry",    
                                              "enwast", "anywast06", "pers_wast", 
                                              "trth2o", "cleanck", "impfloor",  
                                              "impsan", "safeh20",
                                              "perdiar6", "perdiar24", 
                                              "predfeed3", "exclfeed3", "predfeed6", "exclfeed6", "predfeed36", "exclfeed36",
                                              "predexfd6", "earlybf", "month"),
                                         Y=c("ever_sstunted"), file="sst_cuminc_nobirth_rf_primary.rdata")



cuminc <- specify_rf_analysis(A=c( "sex",               "mage",          "mhtcm",         "mwtkg",        
                                   "mbmi",          "single",        "fage","fage_rf",          "fhtcm",    
                                   "nrooms",      "nchldlt5",    "nhh",              
                                   "hhwealth_quart", "brthmon", "parity",   "meducyrs", 
                                   "feducyrs", "hfoodsec"),
                              Y=c("ever_wasted"), file="wast_cuminc_rf_primary.rdata")

cuminc_nobirth <- specify_rf_analysis(A=c( "gagebrth",      "birthwt",    
                                           "birthlen",       "vagbrth","sga",       "hdlvry",    
                                           "enstunt", 
                                           "trth2o", "cleanck", "impfloor",  
                                           "impsan", "safeh20",
                                           "perdiar6", "perdiar24", 
                                           "predfeed3", "exclfeed3", "predfeed6", "exclfeed6", "predfeed36", "exclfeed36",
                                           "predexfd6", "earlybf", "month"),
                                      Y=c("ever_wasted"), file="wast_cuminc_nobirth_rf_primary.rdata")

swast_cuminc <- specify_rf_analysis(A=c( "sex",               "mage",          "mhtcm",         "mwtkg",        
                                   "mbmi",          "single",        "fage","fage_rf",          "fhtcm",    
                                   "nrooms",      "nchldlt5",    "nhh",              
                                   "hhwealth_quart", "brthmon", "parity",   "meducyrs", 
                                   "feducyrs", "hfoodsec"),
                              Y=c("ever_swasted"), file="swast_cuminc_rf_primary.rdata")

swast_cuminc_nobirth <- specify_rf_analysis(A=c( "gagebrth",      "birthwt",    
                                           "birthlen",       "vagbrth","sga",       "hdlvry",    
                                           "enstunt", 
                                           "trth2o", "cleanck", "impfloor",  
                                           "impsan", "safeh20",
                                           "perdiar6", "perdiar24", 
                                           "predfeed3", "exclfeed3", "predfeed6", "exclfeed6", "predfeed36", "exclfeed36",
                                           "predexfd6", "earlybf", "month"),
                                      Y=c("ever_swasted"), file="swast_cuminc_nobirth_rf_primary.rdata")



pers_wast <- specify_rf_analysis(A=Avars, Y="pers_wast", file="pers_wast_rf_primary.rdata")

#bind together datasets
analyses <- rbind(st_cuminc, st_cuminc_nobirth, sst_cuminc, sst_cuminc_nobirth, swast_cuminc, swast_cuminc_nobirth, cuminc, cuminc_nobirth, pers_wast)



#Save analysis specification
saveRDS(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/adjusted_binary_analyses_primary.rds"))



