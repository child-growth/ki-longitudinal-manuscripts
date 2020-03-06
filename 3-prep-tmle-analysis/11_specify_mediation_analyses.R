

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


load(here("results/adjustment_sets_list.Rdata"))
A <- names(adjustment_sets)

Avars <- c("mage","fage","mhtcm","mwtkg","mbmi","single","fhtcm","meducyrs","feducyrs")


adjustment_sets <- list( 
  
  mage=c("arm","W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
         "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
         "single",
         "W_nrooms","W_nhh","W_nchldlt5",
         "trth2o","cleanck","impfloor","impsan","safeh20",
         "W_gagebrth","W_birthwt","W_birthlen","vagbrth","hdlvry","parity"),   
  
  fage=c("arm","W_mage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
         "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
         "single",
         "W_nrooms","W_nhh","W_nchldlt5",
         "brthmon",
         "trth2o","cleanck","impfloor","impsan","safeh20",
         "W_gagebrth","W_birthwt","W_birthlen","vagbrth","hdlvry","parity"),     
  
  mhtcm=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
          "W_fhtcm",
          "single",
          "W_nrooms",
          "trth2o","cleanck","impfloor","impsan","safeh20",
          "W_gagebrth","W_birthwt","W_birthlen","vagbrth","hdlvry","parity"),    
  
  mwtkg=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
          "W_fhtcm",
          "single",
          "W_nrooms","W_nhh","W_nchldlt5",
          "brthmon","W_parity",
          "trth2o","cleanck","impfloor","impsan","safeh20",
          "W_gagebrth","W_birthwt","W_birthlen","vagbrth","hdlvry","parity"),
  
  mbmi=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
         "W_fhtcm",
         "single",
         "W_nrooms","W_nhh","W_nchldlt5",
         "brthmon","W_parity",
         "trth2o","cleanck","impfloor","impsan","safeh20",
         "W_gagebrth","W_birthwt","W_birthlen","vagbrth","hdlvry","parity"),      
  
  single=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
           "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
           "W_nrooms","W_nhh","W_nchldlt5",
           "trth2o","cleanck","impfloor","impsan","safeh20",
           "W_gagebrth","W_birthwt","W_birthlen","vagbrth","hdlvry","parity"),    
  
  fhtcm=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
          "W_mhtcm","W_mwtkg","W_bmi",
          "single",
          "W_nrooms",
          "trth2o","cleanck","impfloor","impsan","safeh20",
          "W_gagebrth","W_birthwt","W_birthlen","vagbrth","hdlvry","parity"),     
  
  meducyrs=c("arm", "W_mage", "W_fage", "feducyrs", "hhwealth_quart",
             "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
             "single",
             "W_nrooms","W_nhh","W_nchldlt5",
             "trth2o","cleanck","impfloor","impsan","safeh20",
             "W_gagebrth","W_birthwt","W_birthlen","vagbrth","hdlvry","parity"),
  
  feducyrs=c("arm", "W_mage", "W_fage", "meducyrs",  "hhwealth_quart", 
             "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
             "single",
             "W_nrooms","W_nhh","W_nchldlt5",
             "trth2o","cleanck","impfloor","impsan","safeh20",
             "W_gagebrth","W_birthwt","W_birthlen","vagbrth","hdlvry","parity")
)


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



haz <- specify_rf_analysis(A=Avars, Y="haz", file="mediation_HAZ.Rdata")
whz <- specify_rf_analysis(A=Avars, Y="whz", file="mediation_WHZ.Rdata")



analyses <- rbind(haz, whz)


#Save analysis specification
save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/mediation.RData"))





