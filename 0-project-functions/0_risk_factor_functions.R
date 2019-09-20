
#-----------------------------------------------------------------------------------------
# Plotting functions
#-----------------------------------------------------------------------------------------
scaleFUN <- function(x) sprintf("%.2f", x)

label_wrap <- function(variable, value) {
  lapply(strwrap(as.character(value), width=20, simplify=FALSE), 
         paste, collapse="\n")
}  



#-----------------------------------------------------------------------------------------
# Meta-analysis function
#-----------------------------------------------------------------------------------------

poolRR <- function(d, method="REML"){
  #nstudies=length(unique(d$studyid))
  nstudies <- d %>% summarise(N=n())
  
  if(d$intervention_level[1] == d$baseline_level[1]){
    est <- data.frame(logRR.psi=1, logSE=0, RR=1, RR.CI1=1, RR.CI2=1, Nstudies= nstudies$N)
  }else{
    
    fit<-NULL
    try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method=method, measure="RR"))
    if(method=="REML"){
      if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="ML", measure="RR"))}
      if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="DL", measure="RR"))}
      if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="HE", measure="RR"))}
    }
    if(is.null(fit)){
      est<-data.frame(logRR.psi=NA, logSE=NA, RR=NA, RR.CI1=NA,  RR.CI2=NA)
    }else{
      
      est<-data.frame(fit$b, fit$se)
      colnames(est)<-c("logRR.psi","logSE")
      
      est$RR<-exp(est$logRR)
      est$RR.CI1<-exp(est$logRR - 1.96 * est$logSE)
      est$RR.CI2<-exp(est$logRR + 1.96 * est$logSE)
      
      est$Nstudies <- nstudies$N
    }
  }
  
  return(est)
}


pool.par <- function(d, method="REML"){
  nstudies <- d %>% summarise(N=n())
  
  fit<-NULL
  try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method=method, measure="GEN"))
  if(method=="REML"){
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="ML", measure="GEN"))}
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="DL", measure="GEN"))}
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="HE", measure="GEN"))}
  }
  if(is.null(fit)){
    est<-data.frame(PAR=NA, CI1=NA,  CI2=NA)
  }else{
    est<-data.frame(fit$b, fit$ci.lb, fit$ci.ub)
    colnames(est)<-c("PAR","CI1","CI2")    
  }
  est$Nstudies <- nstudies$N
  rownames(est) <- NULL
  return(est)
}


pool.prev <- function(d, method="REML"){
  nstudies <- d %>% summarise(N=n())
  
  fit<-NULL
  try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method=method, measure="GEN"))
  if(method=="REML"){
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="ML", measure="GEN"))}
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="DL", measure="GEN"))}
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="HE", measure="GEN"))}
  }
  if(is.null(fit)){
    est<-data.frame(prev=NA, CI1=NA,  CI2=NA)
  }else{
    est<-data.frame(fit$b, fit$ci.lb, fit$ci.ub)
    colnames(est)<-c("prev","CI1","CI2")    
  }
  est$Nstudies <- nstudies$N
  rownames(est) <- NULL
  return(est)
}



pool.Zpar <- function(d, method="REML"){
  nstudies <- d %>% summarise(N=n())
  
  fit<-NULL
  try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method=method, measure="GEN"))
  if(method=="REML"){
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="ML", measure="GEN"))}
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="DL", measure="GEN"))}
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="HE", measure="GEN"))}
  }
  if(is.null(fit)){
    est<-data.frame(PAR=NA, CI1=NA,  CI2=NA)
  }else{
    est<-data.frame(fit$b, fit$ci.lb, fit$ci.ub)
    colnames(est)<-c("PAR","CI1","CI2")    
  }
  est$Nstudies <- nstudies$N
  rownames(est) <- NULL
  return(est)
}


#Pooled continious estimate function
pool.cont <- function(d, method="REML"){
  #nstudies=length(unique(d$studyid))
  nstudies <- d %>% summarise(N=n())
  
  if(d$intervention_level[1] == d$baseline_level[1]){
    est <- data.frame(ATE=0, CI1=0, CI2=0, Nstudies= nstudies$N)
  }else{
    
    fit<-NULL
    try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method=method, measure="GEN"))
    if(method=="REML"){
      if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="ML", measure="GEN"))}
      if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="DL", measure="GEN"))}
      if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="HE", measure="GEN"))}
    }
    est<-data.frame(fit$b, fit$ci.lb, fit$ci.ub)
    colnames(est)<-c("ATE","CI1","CI2")
    est$Nstudies <- nstudies$N
  }
  rownames(est) <- NULL
  return(est)
}



#-----------------------------------------------------------------------------------------
# Clean Longbow output
#-----------------------------------------------------------------------------------------

RMA_clean <- function(RMAest, outcome="binary",
                      agecatlevels=c("3 months prevalence", "3-6 months\ncumulative incidence", "0-6 months (no birth st.)\ncumulative incidence","0-6 months\ncumulative incidence",
                                     "6 months prevalence","6-9 months\ncumulative incidence","9 months prevalence","9-12 months\ncumulative incidence","12 months prevalence",
                                     "12-15 months\ncumulative incidence","15 months prevalence","15-18 months\ncumulative incidence","18 months prevalence",
                                     "0-24 months (no birth st.)","6-24 months\ncumulative incidence","0-24 months (no birth st.)\ncumulative incidence","0-24 months\ncumulative incidence","24 months prevalence")){
  
  
  # #Make sure Nstudies is constant across RF levels
  # RMAest <- RMAest %>% group_by(agecat, intervention_variable) %>%
  #   mutate(Nstudies=paste0("N studies: ",max(Nstudies)),
  #          Nstudies=ifelse(intervention_level==first(intervention_level),Nstudies,"")) %>% ungroup()
  
  
  #Order factors for plotting
  table(RMAest$agecat)
  
  RMAest <- droplevels(RMAest)
  # RMAest$agecat <- as.character(RMAest$agecat)
  # 
  # if(outcome=="velocity"){
  #   RMAest$agecat[grepl("-",RMAest$agecat)] <- paste0(RMAest$agecat[grepl("-",RMAest$agecat)],"\nvelocity")
  # }else{
  #   if(outcome=="pers_wasted"){
  #     RMAest$agecat[grepl("-",RMAest$agecat)] <- paste0(RMAest$agecat[grepl("-",RMAest$agecat)],"\npersistant wasting")
  #   }else{
  #     RMAest$agecat[grepl("-",RMAest$agecat)] <- paste0(RMAest$agecat[grepl("-",RMAest$agecat)],"\ncumulative incidence")
  #     RMAest$agecat[!grepl("-",RMAest$agecat)] <- paste0(RMAest$agecat[!grepl("-",RMAest$agecat)]," prevalence")
  #   }
  # }
  # #RMAest$agecat[grepl(" \\(no birth st\\.\\)\\\ncumulative incidence",RMAest$agecat)] <- "cumulative incidence\n(no birth stunting)"
  # 
  # 
  # RMAest$agecat <- factor(RMAest$agecat, levels=agecatlevels)
  
  RMAest$RFlabel <- NA
  
  #Fix WHZ quartile RF levels
  RMAest$RFlabel[RMAest$RFlabel=="1" & RMAest$intervention_variable=="lag_WHZ_quart"] <- "WHZ Q1"
  RMAest$RFlabel[RMAest$RFlabel=="2" & RMAest$intervention_variable=="lag_WHZ_quart"] <- "WHZ Q2"
  RMAest$RFlabel[RMAest$RFlabel=="3" & RMAest$intervention_variable=="lag_WHZ_quart"] <- "WHZ Q3"
  RMAest$RFlabel[RMAest$RFlabel=="4" & RMAest$intervention_variable=="lag_WHZ_quart"] <- "WHZ Q4"
  
  #Change binary variables into yes/no
  binvars <- c("hdlvry","vagbrth", "enwast","anywast06","pers_wast", "earlybf","predexfd6",
               "predfeed3","predfeed36","predfeed6","exclfeed3","exclfeed36","exclfeed6",
               "perdiar6","perdiar24","impsan","safeh20","trth2o","impfloor","cleanck")
  RMAest$intervention_level[RMAest$intervention_level=="0" & RMAest$intervention_variable %in% binvars] <- "No"
  RMAest$intervention_level[RMAest$intervention_level=="1" & RMAest$intervention_variable %in% binvars] <- "Yes"
  RMAest$baseline_level[RMAest$baseline_level=="0" & RMAest$intervention_variable %in% binvars] <- "No"
  RMAest$baseline_level[RMAest$baseline_level=="1" & RMAest$intervention_variable %in% binvars] <- "Yes"
  
  #Att birthweight grams
  RMAest$intervention_level[RMAest$intervention_level=="Low birth weight"] <- "< 2500 g"
  RMAest$intervention_level[RMAest$intervention_level=="Normal or high birthweight"] <- ">= 2500 g"
  RMAest$baseline_level[RMAest$baseline_level=="Low birth weight"] <- "< 2500 g"
  RMAest$baseline_level[RMAest$baseline_level=="Normal or high birthweight"] <- ">= 2500 g"
  
  unique(RMAest$intervention_level)
  RMAest$intervention_level <- gsub("Wealth ","",RMAest$intervention_level)
  RMAest$intervention_level <- factor(RMAest$intervention_level, 
                                      levels=c("0","1", "No", "Yes",
                                               "<48 cm" , "[48-50) cm",  ">=50 cm",                                  
                                               "< 2500 g",">= 2500 g", 
                                               "2","3","4","5","6","7","8","9",  "10" , "11","12" ,
                                               "<32" , "[32-38)", ">=38",
                                               "<20","[20-30)","<25","[25-30)",">=30",
                                               "Low", "Medium", "High",                    
                                               "<162 cm", "[162-167) cm" , ">=167 cm",
                                               "Preterm", "Early term", "Full or late term",           
                                               "Food Insecure", "Mildly Food Insecure", "Food Secure",               
                                               "Q1", "Q2", "Q3", "Q4",
                                               "Underweight", "Normal weight", "Overweight or Obese",
                                               "<151 cm", "[151-155) cm", ">=155 cm",
                                               "<52 kg", "[52-58) kg", ">=58 kg",
                                               "2+","3 or less","4-5","6-7","8+","3+","4+",                                                 
                                               "0%","(0%, 5%]",">5%","Female","Male",
                                               "WHZ Q1", "WHZ Q2", "WHZ Q3", "WHZ Q4"))
  
  
  
  unique(RMAest$intervention_variable)
  RMAest$intervention_variable <- factor(RMAest$intervention_variable,
                                         levels=c("sex","birthlen","birthwt", "gagebrth",
                                                  "hdlvry","vagbrth",
                                                  "enwast","enstunt","anywast06","pers_wast",
                                                  "earlybf","predexfd6",
                                                  "predfeed3","predfeed36","predfeed6",
                                                  "exclfeed3","exclfeed36","exclfeed6",
                                                  "perdiar6","perdiar24",
                                                  "mage","fage","mhtcm","fhtcm",
                                                  "mwtkg","mbmi","single",
                                                  "meducyrs","feducyrs",
                                                  "parity",
                                                  "nchldlt5","nhh","nrooms",
                                                  "hhwealth_quart","hfoodsec",
                                                  "impsan","safeh20","trth2o",
                                                  "impfloor","cleanck",
                                                  "brthmon" ,"month",
                                                  "lag_WHZ_quart"))   
  
  
  #Add variable labels
  unique(RMAest$intervention_variable)
  
  RMAest$RFlabel[RMAest$intervention_variable=="sex"] <-  "Sex"
  RMAest$RFlabel[RMAest$intervention_variable=="enwast"] <-  "Enrolled wasted"
  RMAest$RFlabel[RMAest$intervention_variable=="enstunt"] <-  "Enrolled stunted"
  RMAest$RFlabel[RMAest$intervention_variable=="gagebrth"] <-  "Gestational age at birth"
  RMAest$RFlabel[RMAest$intervention_variable=="predexfd6"] <-  "Excl/Pred breastfed <6mo."
  RMAest$RFlabel[RMAest$intervention_variable=="mage"] <- "Mother's age" 
  RMAest$RFlabel[RMAest$intervention_variable=="mhtcm"] <- "Mother's height" 
  RMAest$RFlabel[RMAest$intervention_variable=="mwtkg"] <- "Mother's weight" 
  RMAest$RFlabel[RMAest$intervention_variable=="mbmi"] <- "Mother's BMI" 
  RMAest$RFlabel[RMAest$intervention_variable=="meducyrs"] <- "Mother's education" 
  RMAest$RFlabel[RMAest$intervention_variable=="feducyrs"] <- "Father's education" 
  RMAest$RFlabel[RMAest$intervention_variable=="parity"] <-  "Birth order" 
  RMAest$RFlabel[RMAest$intervention_variable=="hfoodsec"] <- "HH food security" 
  RMAest$RFlabel[RMAest$intervention_variable=="nchldlt5"] <-   "# of children <5 in HH"
  RMAest$RFlabel[RMAest$intervention_variable=="hhwealth_quart"] <-  "HH wealth" 
  RMAest$RFlabel[RMAest$intervention_variable=="fage"] <- "Father's age" 
  RMAest$RFlabel[RMAest$intervention_variable=="fhtcm"] <- "Father's height" 
  RMAest$RFlabel[RMAest$intervention_variable=="birthwt"] <- "Birthweight (kg)" 
  RMAest$RFlabel[RMAest$intervention_variable=="birthlen"] <- "Birth length (cm)" 
  RMAest$RFlabel[RMAest$intervention_variable=="vagbrth"] <- "Vaginal birth" 
  RMAest$RFlabel[RMAest$intervention_variable=="hdlvry"] <- "Child delivered at home" 
  RMAest$RFlabel[RMAest$intervention_variable=="single"] <- "Single parent" 
  RMAest$RFlabel[RMAest$intervention_variable=="nrooms"] <- "# of rooms in HH" 
  RMAest$RFlabel[RMAest$intervention_variable=="nhh"] <- "# of people in HH" 
  RMAest$RFlabel[RMAest$intervention_variable=="anywast06"] <- "Any wasting  <6 mo." 
  RMAest$RFlabel[RMAest$intervention_variable=="pers_wast"] <- "Persistent wasting  <6 mo." 
  RMAest$RFlabel[RMAest$intervention_variable=="trth2o"] <- "Treats drinking water" 
  RMAest$RFlabel[RMAest$intervention_variable=="cleanck"] <- "Clean cooking fuel usage" 
  RMAest$RFlabel[RMAest$intervention_variable=="impfloor"] <- "Improved floor" 
  RMAest$RFlabel[RMAest$intervention_variable=="impsan"] <- "Improved sanitation" 
  RMAest$RFlabel[RMAest$intervention_variable=="safeh20"] <- "Safe water source" 
  RMAest$RFlabel[RMAest$intervention_variable=="perdiar6"] <- "Diarrhea <6 mo. (% days)" 
  RMAest$RFlabel[RMAest$intervention_variable=="perdiar24"] <- "Diarrhea <24 mo.  (% days" 
  RMAest$RFlabel[RMAest$intervention_variable=="earlybf"] <- "Breastfed hour after birth" 
  RMAest$RFlabel[RMAest$intervention_variable=="predfeed3"] <-  "Predominant breastfeeding under 3 mo."
  RMAest$RFlabel[RMAest$intervention_variable=="predfeed36"] <-  "Predominant breastfeeding from 3-6 mo."
  RMAest$RFlabel[RMAest$intervention_variable=="predfeed6"] <-  "Predominant breastfeeding under 6 mo."
  RMAest$RFlabel[RMAest$intervention_variable=="exclfeed3"] <-  "Exclusive breastfeeding under 3 mo."
  RMAest$RFlabel[RMAest$intervention_variable=="exclfeed36"] <-  "Exclusive breastfeeding from 3-6 mo."
  RMAest$RFlabel[RMAest$intervention_variable=="exclfeed6"] <-  "Exclusive breastfeeding under 6 mo."
  RMAest$RFlabel[RMAest$intervention_variable=="month"] <-  "Month of measurement"
  RMAest$RFlabel[RMAest$intervention_variable=="brthmon"] <-  "Birth month"
  RMAest$RFlabel[RMAest$intervention_variable=="lag_WHZ_quart"] <-  "Mean WHZ in the prior 3 mo."
  
  RMAest$intervention_variable <- factor(RMAest$intervention_variable)
  
  
  RMAest$RFtype <- NA
  RMAest$RFtype[RMAest$intervention_variable=="sex"] <-  "Birth characteristics"
  RMAest$RFtype[RMAest$intervention_variable=="enwast"] <-  "Wasting" 
  RMAest$RFtype[RMAest$intervention_variable=="gagebrth"] <-  "Birth characteristics"
  RMAest$RFtype[RMAest$intervention_variable=="predexfd6"] <-  "Breastfeeding"
  RMAest$RFtype[RMAest$intervention_variable=="mage"] <- "Parent background" 
  RMAest$RFtype[RMAest$intervention_variable=="mhtcm"] <- "Parent anthro" 
  RMAest$RFtype[RMAest$intervention_variable=="mwtkg"] <- "Parent anthro" 
  RMAest$RFtype[RMAest$intervention_variable=="mbmi"] <- "Parent anthro" 
  RMAest$RFtype[RMAest$intervention_variable=="parity"] <-  "Birth characteristics" 
  RMAest$RFtype[RMAest$intervention_variable=="hfoodsec"] <- "SES" 
  RMAest$RFtype[RMAest$intervention_variable=="nchldlt5"] <-   "Household"
  RMAest$RFtype[RMAest$intervention_variable=="hhwealth_quart"] <-  "SES" 
  RMAest$RFtype[RMAest$intervention_variable=="fage"] <- "Parent background" 
  RMAest$RFtype[RMAest$intervention_variable=="fhtcm"] <- "Parent anthro" 
  RMAest$RFtype[RMAest$intervention_variable=="birthwt"] <- "Birth characteristics"
  RMAest$RFtype[RMAest$intervention_variable=="birthlen"] <- "Birth characteristics"
  RMAest$RFtype[RMAest$intervention_variable=="vagbrth"] <- "Birth characteristics"
  RMAest$RFtype[RMAest$intervention_variable=="hdlvry"] <- "Birth characteristics" 
  RMAest$RFtype[RMAest$intervention_variable=="single"] <- "Parent background"
  RMAest$RFtype[RMAest$intervention_variable=="nrooms"] <- "Household"
  RMAest$RFtype[RMAest$intervention_variable=="nhh"] <- "Household"
  RMAest$RFtype[RMAest$intervention_variable=="meducyrs"] <- "Parent background" 
  RMAest$RFtype[RMAest$intervention_variable=="feducyrs"] <- "Parent background" 
  RMAest$RFtype[RMAest$intervention_variable=="anywast06"] <- "Wasting" 
  RMAest$RFtype[RMAest$intervention_variable=="pers_wast"] <- "Wasting" 
  RMAest$RFtype[RMAest$intervention_variable=="trth2o"] <- "WASH" 
  RMAest$RFtype[RMAest$intervention_variable=="cleanck"] <- "Household"
  RMAest$RFtype[RMAest$intervention_variable=="impfloor"] <- "WASH" 
  RMAest$RFtype[RMAest$intervention_variable=="impsan"] <- "WASH" 
  RMAest$RFtype[RMAest$intervention_variable=="safeh20"] <- "WASH" 
  RMAest$RFtype[RMAest$intervention_variable=="perdiar6"] <-  "Postnatal child health"
  RMAest$RFtype[RMAest$intervention_variable=="perdiar24"] <-  "Postnatal child health"
  RMAest$RFtype[RMAest$intervention_variable=="earlybf"] <-"Breastfeeding"
  RMAest$RFtype[RMAest$intervention_variable=="predfeed3"] <- "Breastfeeding"
  RMAest$RFtype[RMAest$intervention_variable=="predfeed36"] <-  "Breastfeeding"
  RMAest$RFtype[RMAest$intervention_variable=="predfeed6"] <-  "Breastfeeding"
  RMAest$RFtype[RMAest$intervention_variable=="exclfeed3"] <-  "Breastfeeding"
  RMAest$RFtype[RMAest$intervention_variable=="exclfeed36"] <- "Breastfeeding"
  RMAest$RFtype[RMAest$intervention_variable=="exclfeed6"] <-  "Breastfeeding"
  RMAest$RFtype[RMAest$intervention_variable=="month"] <-  "Time"
  RMAest$RFtype[RMAest$intervention_variable=="brthmon"] <-  "Time"
  RMAest$RFtype[RMAest$intervention_variable=="enwast"] <-  "Postnatal child health"
  RMAest$RFtype[RMAest$intervention_variable=="anywast06"] <-  "Postnatal child health"
  RMAest$RFtype[RMAest$intervention_variable=="pers_wast"] <-  "Postnatal child health"
  
  return(RMAest)
}



