



summary.prev.co <- function(d, severe=F, N_filter=50, method="REML"){
  
  # take mean of multiple measurements within age window
  dmn <- d %>%
    filter(!is.na(agecat)) %>%
    group_by(studyid,country,subjid,agecat) %>%
    summarise(whz=mean(whz),
              haz=mean(haz)) %>%
    mutate(wasted=ifelse(whz< -2, 1,0),swasted=ifelse(whz< -3, 1,0)) %>%
    mutate(stunted=ifelse(haz< -2, 1,0),sstunted=ifelse(haz< -3, 1,0))
  
  if(severe==T){
    dmn$wasted <- dmn$swasted
    dmn$stunted <- dmn$sstunted
  }
  
  # count measurements per study by age
  # exclude time points if number of measurements per age
  # in a study is <50
  prev.data = dmn %>%
    filter(!is.na(agecat)) %>%
    group_by(studyid,country,agecat) %>%
    summarise(nmeas=sum(!is.na(whz)),
              prev=mean(wasted==1 & stunted==1, na.rm=T),
              nxprev=sum(wasted==1 & stunted==1, na.rm=T)) %>%
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
  prev.res$agecat=levels(prev.data$agecat)
  prev.res$ptest.f=sprintf("%0.0f",prev.res$est)
  
  
  return(list(prev.data=prev.data, prev.res=prev.res,  prev.cohort=prev.cohort))
}



summary.prev.haz <- function(d, severe.stunted=F, method="REML"){
  
  # take mean of multiple measurements within age window
  dmn <- d %>%
    filter(!is.na(agecat)) %>%
    group_by(studyid,country,subjid,agecat) %>%
    summarise(haz=mean(haz)) %>%
    mutate(stunted=ifelse(haz< -2, 1,0),sstunted=ifelse(haz< -3, 1,0))
  
  if(severe.stunted==T){
    dmn$stunted <- dmn$sstunted
  }
  
  # count measurements per study by age
  # exclude time points if number of measurements per age
  # in a study is <50
  prev.data = dmn %>%
    filter(!is.na(agecat)) %>%
    group_by(studyid,country,agecat) %>%
    summarise(nmeas=sum(!is.na(haz)),
              prev=mean(stunted),
              nxprev=sum(stunted==1)) %>%
    filter(nmeas>=50) 
  
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
  prev.res$agecat=levels(prev.data$agecat)
  prev.res$ptest.f=sprintf("%0.0f",prev.res$est)
  

  return(list(prev.data=prev.data, prev.res=prev.res, prev.res.birthcohorts=prev.res.birthcohorts))
}



summary.prev.muaz <- function(d, severe=F, method="REML"){
  
  d <- d %>% filter(!is.na(muaz)) %>% filter(muaz > (-5) & muaz < 5)
  
  d <- droplevels(d)

  # take mean of multiple measurements within age window
  dmn <- d %>%
    filter(!is.na(agecat)) %>%
    group_by(studyid,country,subjid,agecat) %>%
    summarise(whz=mean(whz),
              muaz=mean(muaz)) %>%
    mutate(wasted=ifelse(whz< -2, 1,0),swasted=ifelse(whz< -3, 1,0)) %>%
    mutate(m.wasted=ifelse(muaz< -2, 1,0),m.swasted=ifelse(muaz< -3, 1,0))
  
  if(severe==T){
    dmn$wasted <- dmn$swasted
    dmn$m.wasted <- dmn$m.swasted
  }
  
  # count measurements per study by age
  # exclude time points if number of measurements per age
  # in a study is <50
  prev.data = dmn %>%
    filter(!is.na(agecat)) %>%
    group_by(studyid,country,agecat) %>%
    summarise(nmeas=sum(!is.na(whz)),
              prev=mean(wasted==1),
              nxprev=sum(wasted==1),
              m.prev=mean(m.wasted==1),
              m.nxprev=sum(m.wasted==1)) %>%
    filter(nmeas>=50) 
  
  prev.data <- droplevels(prev.data)
  
  
  # cohort specific results
  prev.cohort=lapply((levels(prev.data$agecat)),function(x) 
    fit.escalc(data=prev.data,ni="nmeas", xi="nxprev",age=x,meas="PLO"))
  m.prev.cohort=lapply((levels(prev.data$agecat)),function(x) 
    fit.escalc(data=prev.data,ni="nmeas", xi="m.nxprev",age=x,meas="PLO"))
  prev.cohort=as.data.frame(rbindlist(prev.cohort, use.names=TRUE, fill=T))
  m.prev.cohort=as.data.frame(rbindlist(m.prev.cohort, use.names=TRUE, fill=T))
  prev.cohort=cohort.format(prev.cohort,y=prev.cohort$yi,
                            lab=  levels(prev.data$agecat))
  m.prev.cohort=cohort.format(m.prev.cohort,y=m.prev.cohort$yi,
                            lab=  levels(m.prev.cohort$agecat))
  
  # estimate random effects, format results
  prev.res=lapply((levels(prev.data$agecat)),function(x) 
    fit.rma(data=prev.data,ni="nmeas", xi="nxprev",age=x,measure="PLO",nlab="children", method=method))
  prev.res=as.data.frame(rbindlist(prev.res, use.names=TRUE, fill=T))
  prev.res$est=as.numeric(prev.res$est)
  prev.res$lb=as.numeric(prev.res$lb)
  prev.res$ub=as.numeric(prev.res$ub)
  prev.res = prev.res %>%
    mutate(est=est*100,lb=lb*100,ub=ub*100)
  prev.res$agecat=levels(prev.data$agecat)
  prev.res$ptest.f=sprintf("%0.0f",prev.res$est)
  
  m.prev.res=lapply((levels(prev.data$agecat)),function(x) 
    fit.rma(data=prev.data,ni="nmeas", xi="m.nxprev",age=x,measure="PLO",nlab="children", method=method))
  m.prev.res=as.data.frame(rbindlist(m.prev.res, use.names=TRUE, fill=T))
  m.prev.res$est=as.numeric(m.prev.res$est)
  m.prev.res$lb=as.numeric(m.prev.res$lb)
  m.prev.res$ub=as.numeric(m.prev.res$ub)
  m.prev.res = m.prev.res %>%
    mutate(est=est*100,lb=lb*100,ub=ub*100)
  m.prev.res$agecat=levels(prev.data$agecat)
  m.prev.res$ptest.f=sprintf("%0.0f",m.prev.res$est)
  
  return(list(prev.data=prev.data, prev.res=prev.res, prev.cohort=prev.cohort, m.prev.res=m.prev.res, m.prev.cohort=m.prev.cohort))
}



summary.waz <- function(d, method="REML"){
  
  # take mean of multiple measurements within age window
  dmn <- d %>%
    filter(!is.na(agecat)) %>%
    group_by(studyid,country,subjid,agecat) %>%
    summarise(waz=mean(waz))
  
  # count measurements per study by age
  # exclude time points if number of measurements per age
  # in a study is <50
  waz.data = dmn %>%
    filter(!is.na(agecat)) %>%
    group_by(studyid,country,agecat) %>%
    summarise(nmeas=sum(!is.na(waz)),
              meanwaz=mean(waz),
              varwaz=var(waz)) %>%
    filter(nmeas>=50)
  
  waz.data$agecat = factor(waz.data$agecat)
  
  waz.data <- droplevels(waz.data)
  
  # cohort specific results
  waz.cohort=lapply((levels(waz.data$agecat)),function(x) 
    fit.escalc(data=waz.data, ni="nmeas", yi="meanwaz", vi="varwaz",age=x, measure = "MN"))
  waz.cohort=as.data.frame(rbindlist(waz.cohort, use.names=TRUE, fill=T))
  waz.cohort=cohort.format(waz.cohort,y=waz.cohort$yi,
                           lab=  levels(waz.data$agecat), est="mean")
  
  
  # estimate random effects, format results
  waz.res=lapply((levels(waz.data$agecat)),function(x) 
    fit.rma(data=waz.data, ni="nmeas", yi="meanwaz", vi="varwaz", nlab="children",age=x, method=method))
  waz.res=as.data.frame(rbindlist(waz.res, use.names=TRUE, fill=T))
  waz.res$est=as.numeric(waz.res$est)
  waz.res$lb=as.numeric(waz.res$lb)
  waz.res$ub=as.numeric(waz.res$ub)
  waz.res$agecat=levels(waz.data$agecat)
  waz.res$ptest.f=sprintf("%0.0f",waz.res$est)
  
  
  return(list(waz.data=waz.data, waz.res=waz.res, waz.cohort=waz.cohort))
}





summary.co.ci <- function(d, severe = F, method="REML", N_filter=50){
  cutoff <- ifelse(severe,-3,-2)
  
 
      # identify ever wasted children
      evs = d %>%
        filter(!is.na(agecat) & !is.na(haz) & !is.na(whz)) %>%
        # create indicator for whether the child was ever co
        # by age category
        mutate(co = 1*(whz < cutoff & haz < cutoff)) %>%
        group_by(studyid,country,agecat,subjid) %>%
        summarise(ever_co=max(co)) %>% ungroup() %>%
        mutate(agecat=factor(agecat))
    
  
  # count incident cases per study by age
  # exclude time points if number of measurements per age
  # in a study is <50
  cuminc.data= evs%>%
    group_by(studyid,country,agecat) %>%
    summarise(
      nchild=length(unique(subjid)),
      nstudy=length(unique(studyid)),
      ncases=sum(ever_co),
      N=sum(length(ever_co))) %>%
    filter(N>=N_filter)
  
  cuminc.data <- droplevels(cuminc.data)
  
  # cohort specific results
  ci.cohort=lapply(levels(cuminc.data$agecat),function(x)
    fit.escalc(data=cuminc.data,ni="N", xi="ncases",age=x,meas="PLO"))
  ci.cohort=as.data.frame(rbindlist(ci.cohort, use.names=TRUE, fill=T))
  ci.cohort=cohort.format(ci.cohort,y=ci.cohort$yi,
                          lab=  levels(cuminc.data$agecat))
  ci.cohort = mark_region(ci.cohort)
  
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






