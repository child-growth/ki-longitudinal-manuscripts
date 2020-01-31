
##############################################
# cohort.summary
##############################################

# Documentation: cohort.summary
# Usage: cohort.summary(d, var, strata=c("region","studyid","country","agecat"), ci=F, continious=F, severe=F, minN=50, measure=NULL)
# Description: Take an input dataframe and summarize the N's and cases for each strata of each cohort
#   -Prepares data for meta-analysis pooling with fit_rma() function


# Args/Options:
# data: a data frame with variables studyid, country, agecat, and outcome measure of Z-score or indicator for wasting or stunting
# var: name of the variable that is used as or to calculate the outcome
# strata: list of variables used to define strata to summarize, normally c("region","studyid","country","agecat") to get age-specific summaries by cohort 
# ci: True if calculating summary over a range (cumulative incidence, incidence rate), false if calculating a point summary (prevalence, mean Z)
# continious: True is summarizing continious outcome, false otherwise
# severe: True to use -3, instead of -2 default, as the cutoff to define disease from a Z-score.
# minN: Number of children needed to keep a strata to use in the pooled estimation, defaults to 50
# measure: Optional character label to add to the output dataframe as a column of characters

cohort.summary <- function(d, var, strata=c("region","studyid","country","agecat"), ci=F, continious=F, severe=F, minN=50, measure=NULL){

  cutoff <- ifelse(severe, -3, -2)
  
  colnames(d)[colnames(d)==var] <- "Y"
  
  strata_sym <- syms(strata)
  
  if(!ci | continious){
    d <- d %>%
      filter(!is.na(agecat)) %>%
      group_by(!!!(strata_sym),subjid) %>%
      summarise(Y=mean(Y, na.rm=T))
  }else{
    #Check if Y is binary
    if(sum(!(d$Y %in% c(0,1)))>0){
    d <- d %>%
      filter(!is.na(agecat)) %>%
      group_by(!!!(strata_sym),subjid) %>%
      mutate(Y = ifelse(Y < cutoff, 1, 0)) %>%
      summarise(Y = ifelse(sum(Y)>0, 1, 0))
    }else{
      d <- d %>%
        filter(!is.na(agecat)) %>%
        group_by(!!!(strata_sym),subjid) %>%
        summarise(Y = ifelse(sum(Y)>0, 1, 0))
    }
  }
  
  # summarize measurements per study by age
  # exclude time points if number of measurements per age
  # in a study is < threshold
  if(continious){
    cohort.sum = d %>%
      filter(!is.na(agecat) & !is.na(Y)) %>%
      group_by(!!!(strata_sym)) %>%
      summarise(N=n(),
                Mean=mean(Y),
                Var=var(Y)) %>%
      filter(N>=minN)
    }else{
      if(ci){
      cohort.sum = d %>%
        group_by(!!!(strata_sym)) %>%
        summarise(N=n(),
                  Prop=mean(Y),
                  Ncases=sum(Y==1)) %>%
        filter(N>=minN) 
      }else{
        cohort.sum = d %>%
          filter(!is.na(agecat) & !is.na(Y)) %>%
          mutate(Y = ifelse(Y < cutoff, 1, 0)) %>%
          group_by(!!!(strata_sym)) %>%        
          summarise(N=n(),
                  Prop=mean(Y),
                  Ncases=sum(Y==1)) %>%
        filter(N>=minN) 
      }
    }
  
  cohort.sum$variable <- var
  
  #Add measure label
  if(!is.null(measure)){cohort.sum$measure <- measure}
  
  #Drop missing agecat levels
  cohort.sum <- droplevels(cohort.sum)
  return(cohort.sum)
}


##############################################
# pool_over_agecat
##############################################

# Documentation: pool_over_agecat
# Usage: pool_over_agecat(cohort.sum, strata=c("region","studyid","country","agecat"), proportion=F, continious=F, measure = "PLO",  method = "REML")
# Description: Primarily used as a function within summarize_over_strata() as a wrapper function to fit.rma(). Take an input dataframe with each row summarizing the N's and cases from a single
#             cohort and then calculated the parameter of interest specified by measure, pooled
#             across specific agecats over all cohorts. Generalized to use any strata, not just agecat. 


# Args/Options:
# cohort.sum: a data frame outputted from cohort.summary, with each row summarizing a child age within a cohort.
# strata: list of variables used to define strata to summarize, normally c("region","studyid","country","agecat") to get age-specific summaries by cohort 
# proportion: if outcome is proportion, set to true to multiply point estimate and ci by 100 to bound between 0-100%
# continious: True is summarizing continious outcome, false otherwise
# measure: type of outcome parameter using naming conventions from the escalc function from the metafor package. Defaults to "PLO" for logit transformed proportion,
#         other possible options GEN for general (used for means), or IR for incidence rate.
# method: pooling method, defaults to REML for random effects fit with restricted maximum likelihood


pool_over_agecat <- function(cohort.sum, strata=c("region","studyid","country","agecat"), proportion=F, continious=F, measure = "PLO",  method = "REML"){
 
  #set up strata
  strata_sym <- syms(strata)
  
  if(continious){
    overall.res=cohort.sum %>% group_by(!!!(strata_sym)) %>%
      do(fit.rma(data=., ni="N", yi="Mean", vi="Var", nlab="children",age=NULL, method = method, measure=measure)) %>%
      as.data.frame()
  }else{
    overall.res=cohort.sum %>% group_by(!!!(strata_sym)) %>%
      do(fit.rma(data=., ni="N", xi="Ncases", nlab="children",age=NULL, method = method, measure=measure)) %>%
      as.data.frame()
  }
  
  #format results
  if(proportion){
    overall.res = overall.res %>% mutate(est=est*100,lb=lb*100,ub=ub*100) 
  }
  overall.res$ptest.f = sprintf("%0.0f",overall.res$est)
  
  return(overall.res)
}

##############################################
# summarize_over_strata
##############################################

# Documentation: summarize_over_strata
# Usage: summarize_over_strata(cohort.sum, strata=c("region","studyid","country","agecat"), proportion=F, continious=F, measure = "PLO",  method = "REML",  region=T, cohort=T)
# Description: Primarily used as a function within summarize_over_strata() as a wrapper function to fit.rma(). Take an input dataframe with each row summarizing the N's and cases from a single
#             cohort and then calculated the parameter of interest specified by measure, pooled
#             across specific agecats over all cohorts. Generalized to use any strata, not just agecat. 


# Args/Options:
# cohort.sum: a data frame outputted from cohort.summary, with each row summarizing a child age within a cohort.
# strata: list of variables used to define strata to summarize, normally c("region","studyid","country","agecat") to get age-specific summaries by cohort 
# proportion: if outcome is proportion, set to true to multiply point estimate and ci by 100 to bound between 0-100%
# continious: True is summarizing continious outcome, false otherwise
# measure: type of outcome parameter using naming conventions from the escalc function from the metafor package. Defaults to "PLO" for logit transformed proportion,
#         other possible options GEN for general (used for means), or IR for incidence rate.
# method: pooling method, defaults to REML for random effects fit with restricted maximum likelihood
# region: If true, pool by region as well as overall, and add to returned results data.frame
# cohort: If true, calculate cohort-specific parameters, and add to returned results data.frame
  


summarize_over_strata <- function(cohort.sum, strata=c("region","studyid","country","agecat"), proportion=F, continious=F, measure = "PLO",  method = "REML",  region=T, cohort=T){
  
  region.res <- NULL
  cohort.res <- NULL
  
  #set up strata
  strata_sym <- syms(strata)
  
  #Overall summary
  overall.res <- pool_over_agecat(cohort.sum, proportion=proportion, strata=strata[!(strata %in% c("region","studyid","country"))], continious=continious, measure = measure,  method = method)
  overall.res$region <- "Overall"
  
  # region specific results
  if(region){
    region.res  <- pool_over_agecat(cohort.sum, proportion=proportion, strata=strata[!(strata %in% c("studyid","country"))], continious=continious, measure = measure,  method = method)
  }

  # cohort specific results
  if(cohort){
    if(continious){
      cohort.res=cohort.sum %>% 
        do(fit.escalc(data=., ni="N", yi="Mean", vi="Var",age=NULL, method = method, measure = measure)) %>%
        as.data.frame()
    }else{
      cohort.res=cohort.sum %>% 
        do(fit.escalc(data=., ni="N", xi="Ncases",age=NULL, method = method, measure = measure)) %>%
        as.data.frame()
    }
    cohort.res=cohort.format(cohort.res,y=cohort.res$yi,
                             lab=  levels(cohort.sum$agecat))
  }
  
 res <- bind_rows(overall.res, region.res, cohort.res)
  
 return(res)
}








summary.prev.whz <- function(d, severe.wasted=F, method="REML", N_filter=50){

  dmn <- d %>%
    filter(!is.na(agecat), !is.na(whz)) %>%
    group_by(studyid,country,subjid,agecat) %>%
    summarise(whz=mean(whz)) %>%
    mutate(wasted=ifelse(whz< -2, 1,0),swasted=ifelse(whz< -3, 1,0))
  
  if(severe.wasted==T){
    dmn$wasted <- dmn$swasted
  }
  
  # count measurements per study by age
  # exclude time points if number of measurements per age
  # in a study is <50
  prev.data = dmn %>%
    filter(!is.na(agecat)) %>%
    group_by(studyid,country,agecat) %>%
    summarise(nmeas=sum(!is.na(whz)),
              prev=mean(wasted),
              nxprev=sum(wasted==1)) %>%
    filter(nmeas>=N_filter) 
  
  prev.data <- droplevels(prev.data)

  # cohort specific results
  prev.cohort=lapply((levels(prev.data$agecat)),function(x)
    fit.escalc(data=prev.data,ni="nmeas", xi="nxprev",age=x,meas="PLO"))
  prev.cohort=as.data.frame(rbindlist(prev.cohort, use.names=TRUE, fill=T))
  prev.cohort=cohort.format(prev.cohort,y=prev.cohort$yi,
                            lab=  levels(prev.data$agecat))

  # estimate random effects, format results
  prev.res=lapply((levels(prev.data$agecat)),function(x)
    fit.rma(data=prev.data,ni="nmeas", xi="nxprev",age=x,measure="PLO",nlab="children", method=method))
  prev.res=as.data.frame(rbindlist(prev.res, use.names=TRUE, fill=T))
  prev.res$est=as.numeric(prev.res$est)
  prev.res$lb=as.numeric(prev.res$lb)
  prev.res$ub=as.numeric(prev.res$ub)
  prev.res = prev.res %>%
    mutate(est=est*100,lb=lb*100,ub=ub*100)
  prev.res$agecat=factor(levels(prev.data$agecat))
  prev.res$ptest.f=sprintf("%0.0f",prev.res$est)

  return(list(prev.data=prev.data, prev.res=prev.res, prev.cohort=prev.cohort))
}



summary.wast.ci <- function(d, severe.wasted = F, age.range, method="REML", N_filter=50, birthstrat=F){
  cutoff <- ifelse(severe.wasted,-3,-2)

  if(!is.null(age.range)){
    if(age.range == 3){
    # identify ever wasted children
      if(!birthstrat){
        
        evs = d %>%
          filter(!is.na(agecat)) %>%
          group_by(studyid,country,subjid) %>%
          arrange(studyid,subjid) %>%
          #create variable with minwhz by age category, cumulatively
          mutate(minwhz=ifelse(agecat=="0-3 months",min(whz[agecat=="0-3 months"]),
                               ifelse(agecat=="3-6 months",min(whz[agecat=="0-3 months" | agecat=="3-6 months"]),
                                      ifelse(agecat=="6-9 months",min(whz[agecat=="0-3 months" | agecat=="3-6 months"|agecat=="6-9 months"]),
                                             ifelse(agecat=="9-12 months",min(whz[agecat=="0-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"]),
                                                    ifelse(agecat=="12-15 months",min(whz[agecat=="0-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"]),
                                                           ifelse(agecat=="15-18 months",min(whz[agecat=="0-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"|agecat=="15-18 months"]),
                                                                  ifelse(agecat=="18-21 months",min(whz[agecat=="0-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"|agecat=="15-18 months"|agecat=="18-21 months"]),
                                                                         ifelse(agecat=="21-24 months",min(whz[agecat=="0-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"|agecat=="15-18 months"|agecat=="18-21 months"|agecat=="21-24 months"]),
                                                                                min(whz))))))))))
      }
      
      if(birthstrat){
        
        evs = d %>%
          filter(!is.na(agecat)) %>%
          group_by(studyid,country,subjid) %>%
          arrange(studyid,subjid) %>%
          #create variable with minwhz by age category, cumulatively
          mutate(minwhz=ifelse(agecat=="Birth",min(whz[agecat=="Birth"]),
                               ifelse(agecat=="8 days-3 months",min(whz[agecat=="Birth" | agecat=="8 days-3 months"]),
                                      ifelse(agecat=="3-6 months",min(whz[agecat=="Birth" | agecat=="8 days-3 months" | agecat=="3-6 months"]),
                                             ifelse(agecat=="6-9 months",min(whz[agecat=="Birth" | agecat=="8 days-3 months" | agecat=="3-6 months"|agecat=="6-9 months"]),
                                                    ifelse(agecat=="9-12 months",min(whz[agecat=="Birth" | agecat=="8 days-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"]),
                                                           ifelse(agecat=="12-15 months",min(whz[agecat=="Birth" | agecat=="8 days-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"]),
                                                                  ifelse(agecat=="15-18 months",min(whz[agecat=="Birth" | agecat=="8 days-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"|agecat=="15-18 months"]),
                                                                         ifelse(agecat=="18-21 months",min(whz[agecat=="Birth" | agecat=="8 days-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"|agecat=="15-18 months"|agecat=="18-21 months"]),
                                                                                ifelse(agecat=="21-24 months",min(whz[agecat=="Birth" | agecat=="8 days-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"|agecat=="15-18 months"|agecat=="18-21 months"|agecat=="21-24 months"]),
                                                                                       min(whz)))))))))))
      }
      
      
      # create indicator for whether the child was ever wasted
      # by age category
      evs <- evs %>%
      group_by(studyid,country,agecat,subjid) %>%
        summarise(minwhz=min(minwhz)) %>% ungroup() %>%
        mutate(ever_wasted=ifelse(minwhz< cutoff,1,0),
               agecat=factor(agecat))
    }
    
    if(age.range == 6){
      # identify ever wasted children
      evs = d %>%
        filter(!is.na(agecat) & !is.na(whz)) %>%
        group_by(studyid,country,subjid) %>%
        arrange(studyid,subjid) %>%
        #create variable with minwhz by age category, cumulatively
        mutate(minwhz=ifelse(agecat=="0-6 months",min(whz[agecat=="0-6 months"]),
                             ifelse(agecat=="6-12 months",min(whz[agecat=="0-6 months" | agecat=="6-12 months"]),
                                    ifelse(agecat=="12-18 months",min(whz[agecat=="0-6 months" | agecat=="6-12 months"|agecat=="12-18 months"]),
                                           ifelse(agecat=="18-24 months",min(whz[agecat=="0-6 months" | agecat=="6-12 months"|agecat=="12-18 months"|agecat=="18-24 months"]),
                                                                              min(whz)))))) %>%
        # create indicator for whether the child was ever wasted
        # by age category
        group_by(studyid,country,agecat,subjid) %>%
        summarise(minwhz=min(minwhz)) %>% ungroup() %>%
        mutate(ever_wasted=ifelse(minwhz< cutoff,1,0),
               agecat=factor(agecat))
    }
  }
  if(is.null(age.range)){
    # identify ever wasted children
    evs = d %>%
      filter(!is.na(agecat) & !is.na(whz)) %>%
      group_by(studyid,country,subjid) %>%
      arrange(studyid,subjid) %>%
      #create variable with minwhz by age category, cumulatively
      mutate(minwhz=min(whz)) %>%
      # create indicator for whether the child was ever wasted
      # by age category
      group_by(studyid,country,agecat,subjid) %>%
      summarise(minwhz=min(minwhz)) %>% ungroup() %>%
      mutate(ever_wasted=ifelse(minwhz< cutoff,1,0),
             agecat=factor(agecat))
  }

  # count incident cases per study by age
  # exclude time points if number of measurements per age
  # in a study is <50
  cuminc.data= evs%>%
    group_by(studyid,country,agecat) %>%
    summarise(
      nchild=length(unique(subjid)),
      nstudy=length(unique(studyid)),
      ncases=sum(ever_wasted),
      N=sum(length(ever_wasted))) %>%
    filter(N>=N_filter)

  cuminc.data <- droplevels(cuminc.data)

  # cohort specific results
  ci.cohort=lapply(levels(cuminc.data$agecat),function(x)
    fit.escalc(data=cuminc.data,ni="N", xi="ncases",age=x,meas="PLO"))
  ci.cohort=as.data.frame(rbindlist(ci.cohort, use.names=TRUE, fill=T))
  ci.cohort=cohort.format(ci.cohort,y=ci.cohort$yi,
                          lab=  levels(cuminc.data$agecat))

  # estimate random effects, format results
  ci.res=lapply(levels(cuminc.data$agecat),function(x)
    fit.rma(data=cuminc.data,ni="N", xi="ncases",age=x,measure="PLO",nlab=" measurements", method=method))
  ci.res=as.data.frame(rbindlist(ci.res, use.names=TRUE, fill=T))
  ci.res$est=as.numeric(ci.res$est)
  ci.res$lb=as.numeric(ci.res$lb)
  ci.res$ub=as.numeric(ci.res$ub)
  ci.res = ci.res %>%
    mutate(est=est*100,lb=lb*100,ub=ub*100)
  ci.res$agecat=factor(levels(cuminc.data$agecat))
  ci.res$ptest.f=sprintf("%0.0f",ci.res$est)

  return(list(cuminc.data=cuminc.data, ci.res=ci.res, ci.cohort=ci.cohort))
}




summary.whz <- function(d, N_filter=50, method="REML"){

  # take mean of multiple measurements within age window
  dmn <- d %>%
    filter(!is.na(agecat)) %>%
    group_by(studyid,country,subjid,agecat) %>%
    summarise(whz=mean(whz, na.rm=T))

  # count measurements per study by age
  # exclude time points if number of measurements per age
  # in a study is <50
  whz.data = dmn %>%
    filter(!is.na(agecat)) %>%
    group_by(studyid,country,agecat) %>%
    summarise(nmeas=sum(!is.na(whz)),
              meanwhz=mean(whz),
              varwhz=var(whz)) %>%
    filter(nmeas>=N_filter)

  whz.data <- droplevels(whz.data)

  # cohort specific results
  whz.cohort=lapply((levels(whz.data$agecat)),function(x)
    fit.escalc(data=whz.data, yi="meanwhz", vi="varwhz", ni="nmeas", measure="MN", age=x))
  whz.cohort=as.data.frame(rbindlist(whz.cohort, use.names=TRUE, fill=T))
  whz.cohort=cohort.format(whz.cohort,y=whz.cohort$yi,
                           lab=  levels(whz.data$agecat), est="mean")


  # estimate random effects, format results
  whz.res=lapply((levels(whz.data$agecat)),function(x)
    fit.rma(data=whz.data, ni="nmeas", yi="meanwhz", vi="varwhz", nlab="children", measure="MN",age=x, method=method))
  whz.res=as.data.frame(rbindlist(whz.res, use.names=TRUE, fill=T))
  whz.res$est=as.numeric(whz.res$est)
  whz.res$lb=as.numeric(whz.res$lb)
  whz.res$ub=as.numeric(whz.res$ub)
  whz.res$agecat = levels(whz.data$agecat)
  whz.res$ptest.f=sprintf("%0.0f",whz.res$est)


  return(list(whz.data=whz.data, whz.res=whz.res, whz.cohort=whz.cohort))
}





summary.incprop <- function(d, recovery=F, severe.wasted=F, method="REML"){

  if(recovery==T){
    d$wast_inc <- d$wast_rec
  }
  if(severe.wasted==T){
    d$wast_inc <- d$sevwast_inc
  }

  evs <- d %>%
    group_by(studyid, country, agecat, subjid) %>%
    filter(!is.na(agecat)) %>%
    summarise(numwast = sum(wast_inc, na.rm=T)) %>%
    mutate(ever_wasted = 1*(numwast>0))

  # count incident cases per study by age
  # exclude time points if number of measurements per age
  # in a study is <50
  cuminc.data= evs%>%
    group_by(studyid,country,agecat) %>%
    summarise(
      nchild=length(unique(subjid)),
      nstudy=length(unique(studyid)),
      ncases=sum(ever_wasted),
      N=sum(length(ever_wasted))) %>%
    filter(N>=50) %>% ungroup() %>%
    mutate(agecat=factor(agecat))

  cuminc.data <- droplevels(cuminc.data)


  # cohort specific results
  ci.cohort=lapply(levels(cuminc.data$agecat),function(x)
    fit.escalc(data=cuminc.data,ni="N", xi="ncases",age=x,meas="PLO"))
  ci.cohort=as.data.frame(rbindlist(ci.cohort, use.names=TRUE, fill=T))
  ci.cohort=cohort.format(ci.cohort,y=ci.cohort$yi,
                          lab=  levels(cuminc.data$agecat))

  # estimate random effects, format results
  ci.res=lapply(levels(cuminc.data$agecat),function(x)
    fit.rma(data=cuminc.data,ni="N", xi="ncases",age=x,measure="PLO",nlab=" measurements", method=method))
  ci.res=as.data.frame(rbindlist(ci.res, use.names=TRUE, fill=T))
  ci.res$est=as.numeric(ci.res$est)
  ci.res$lb=as.numeric(ci.res$lb)
  ci.res$ub=as.numeric(ci.res$ub)
  ci.res$agecat = levels(cuminc.data$agecat)
  ci.res = ci.res %>%
    mutate(est=est*100, lb=lb*100, ub=ub*100)
  ci.res$ptest.f=sprintf("%0.0f",ci.res$est)


  return(list(cuminc.data=cuminc.data, ci.res=ci.res, ci.cohort=ci.cohort))
}





summary.rec60 <- function(d, length=60, method="REML"){

  if(length==30){d$wast_inc <- d$wast_rec30d}
  if(length==60){d$wast_inc <- d$wast_rec60d}
  if(length==90){d$wast_inc <- d$wast_rec90d}


  evs <- d %>%
    group_by(studyid, country, agecat, subjid) %>%
    filter(!is.na(agecat) & !is.na(wast_inc)) %>%
    summarise(numwast = sum(wast_inc, na.rm=T)) %>%
    mutate(ever_wasted = 1*(numwast>0))

  # count incident cases per study by age
  # exclude time points if number of measurements per age
  # in a study is <50
  cuminc.data= evs%>%
    group_by(studyid,country,agecat) %>%
    summarise(
      nchild=length(unique(subjid)),
      nstudy=length(unique(studyid)),
      ncases=sum(ever_wasted),
      N=sum(length(ever_wasted))) %>%
    ungroup() %>%
    mutate(agecat=factor(agecat))# %>%
  #  filter(N>=50)



  # cohort specific results
  ci.cohort=lapply(levels(cuminc.data$agecat),function(x)
    fit.escalc(data=cuminc.data,ni="N", xi="ncases",age=x,meas="PLO"))
  ci.cohort=as.data.frame(rbindlist(ci.cohort, use.names=TRUE, fill=T))
  ci.cohort=cohort.format(ci.cohort,y=ci.cohort$yi,
                          lab=levels(cuminc.data$agecat))

  # estimate random effects, format results
  ci.res=lapply(levels(cuminc.data$agecat),function(x)
    fit.rma(data=cuminc.data,ni="N", xi="ncases",age=x,measure="PLO",nlab=" measurements", method=method))
  ci.res=as.data.frame(rbindlist(ci.res, use.names=TRUE, fill=T))
  ci.res$est=as.numeric(ci.res$est)
  ci.res$lb=as.numeric(ci.res$lb)
  ci.res$ub=as.numeric(ci.res$ub)
  ci.res$agecat = levels(cuminc.data$agecat)
  ci.res = ci.res %>%
    mutate(est=est*100, lb=lb*100, ub=ub*100)
  ci.res$ptest.f=sprintf("%0.0f",ci.res$est)


  return(list(cuminc.data=cuminc.data, ci.res=ci.res, ci.cohort=ci.cohort))

}



summary.perswast <- function(d, N_filter=50, method="REML"){


  pers <- d %>% group_by(studyid, country, subjid) %>%
    mutate(N=n()) %>% ungroup() %>%
    filter(N>=4) %>%
    group_by(studyid, country, agecat, subjid) %>%
    filter(!is.na(agecat)) %>%
    summarise(perc_wast = mean(whz < (-2)), na.rm=T) %>%
    mutate(pers_wast = 1*(perc_wast>=.5))

  # count incident cases per study by age
  # exclude time points if number of measurements per age
  # in a study is <50
  pers.data= pers %>%
    group_by(studyid,country,agecat) %>%
    summarise(
      nchild=length(unique(subjid)),
      nstudy=length(unique(studyid)),
      ncases=sum(pers_wast, na.rm=T),
      N=sum(length(pers_wast))) %>%
    filter(N>=N_filter) 
  
  pers.data$agecat = factor(pers.data$agecat)

  pers.data <- droplevels(pers.data)

  # cohort specific results
  pers.cohort=lapply(levels(pers.data$agecat),function(x)
    fit.escalc(data=pers.data,ni="N", xi="ncases",age=x,meas="PLO"))
  pers.cohort=as.data.frame(rbindlist(pers.cohort, use.names=TRUE, fill=T))
  pers.cohort=cohort.format(pers.cohort,y=pers.cohort$yi,
                            lab=  levels(pers.data$agecat))

  # estimate random effects, format results
  pers.res=lapply(levels(pers.data$agecat),function(x)
    fit.rma(data=pers.data,ni="N", xi="ncases",age=x,measure="PLO",nlab=" measurements", method=method))
  pers.res=as.data.frame(rbindlist(pers.res, use.names=TRUE, fill=T))
  pers.res$est=as.numeric(pers.res$est)
  pers.res$lb=as.numeric(pers.res$lb)
  pers.res$ub=as.numeric(pers.res$ub)
  pers.res$agecat=levels(pers.data$agecat)
  pers.res = pers.res %>%
    mutate(est=est*100, lb=lb*100, ub=ub*100)
  pers.res$ptest.f=sprintf("%0.0f",pers.res$est)


  return(list(pers.data=pers.data, pers.res=pers.res, pers.cohort=pers.cohort))

}







summary.ir <- function(d, recovery=F, sev.wasting=F, Nchild_filter=5, ptime_filter=125, method="REML"){
  
  if(recovery==T){
    d$wast_inc <- d$wast_rec
    d$pt_wast <- d$pt_wast_rec
  }
  if(sev.wasting==T){
    d$wast_inc <- d$sevwast_inc
    d$pt_wast <- d$pt_sevwast
  }

  # manually calculate incident cases, person-time at risk at each time point
  cruderate<-d %>%
    group_by(agecat) %>%
    summarise(inc.case=sum(wast_inc, na.rm=T),ptar=sum(pt_wast, na.rm=T)) %>%
    mutate(cruderate=inc.case/ptar)
  print(cruderate)

  # count incident cases and sum person time at risk per study by age
  # exclude time points if number of children per age
  # in a study is <50
  inc.data = d %>%
    group_by(studyid,country,agecat) %>%
    summarise(ptar=sum(pt_wast, na.rm=T),
              ncase=sum(wast_inc, na.rm=T),
              nchild=length(unique(subjid)),
              nstudy=length(unique(paste0(studyid, country)))) %>%
    filter(nchild>=Nchild_filter & ptar>ptime_filter & !is.na(agecat))
  inc.data <- droplevels(inc.data)
  print(inc.data)



  # cohort specific results
  inc.cohort=lapply(levels(inc.data$agecat),function(x)
    fit.escalc(data=inc.data,ni="ptar", xi="ncase",age=x,meas="IR"))
  inc.cohort=as.data.frame(rbindlist(inc.cohort, use.names=TRUE, fill=T))
  inc.cohort$agecat=factor(inc.cohort$agecat,levels=
                             levels(inc.data$agecat))
  inc.cohort$yi.f=sprintf("%0.0f",inc.cohort$yi)
  inc.cohort$cohort=paste0(inc.cohort$studyid,"-",inc.cohort$country)

  
  # estimate random effects, format results
  ir.res=lapply(levels(inc.data$agecat),function(x)
    fit.rma(data=inc.data,ni="ptar", xi="ncase",age=x,measure="IR",nlab=" person-days", method=method))
  ir.res=as.data.frame(rbindlist(ir.res, use.names=TRUE, fill=T))
  ir.res$est=as.numeric(ir.res$est)
  ir.res$lb=as.numeric(ir.res$lb)
  ir.res$ub=as.numeric(ir.res$ub)
  ir.res$agecat=levels(inc.data$agecat)
  
  ir.res$pt.f=paste0("N=",format(ir.res$nmeas,big.mark=",",scientific=FALSE),
                     " person-days")
  ir.res$ptest.f=sprintf("%0.02f",ir.res$est*1000)

  return(list(ir.data=inc.data, ir.res=ir.res, ir.cohort=inc.cohort))
}


