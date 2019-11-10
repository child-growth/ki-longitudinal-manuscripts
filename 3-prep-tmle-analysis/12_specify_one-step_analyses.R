


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


load(here("/results/adjustment_sets_list.Rdata"))
A <- names(adjustment_sets)

Avars <- c( "sex",  "brthmon", "month","studyid","country", names(adjustment_sets))


#---------------------------------------------
#Adjustment specifying function
#---------------------------------------------

specify_rf_analysis <- function(A, Y, file,  W=NULL, V= c("agecat"), id="id", adj_sets=adjustment_sets){
  
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



haz <- specify_rf_analysis(A=Avars, Y="haz", file="st_meanZ_rf.Rdata")
whz <- specify_rf_analysis(A=Avars, Y="whz", file="wast_meanZ_rf.Rdata")

analyses <- rbind(haz, whz)


#Save analysis specification
save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/adjusted_continuous_one_step_sens.rdata"))

