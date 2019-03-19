



summary.prev.co <- function(d, severe=F){
  
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
              prev=mean(wasted==1 & stunted==1),
              nxprev=sum(wasted==1 & stunted==1)) %>%
    filter(nmeas>=50) 
  
  prev.data <- droplevels(prev.data)
  
  
  # cohort specific results
  prev.cohort=lapply((levels(prev.data$agecat)),function(x) 
    fit.escalc(data=prev.data,ni="nmeas", xi="nxprev",age=x,meas="PLO"))
  prev.cohort=as.data.frame(rbindlist(prev.cohort))
  prev.cohort=cohort.format(prev.cohort,y=prev.cohort$yi,
                            lab=  levels(prev.data$agecat))
  
  # estimate random effects, format results
  prev.res=lapply((levels(prev.data$agecat)),function(x) 
    fit.rma(data=prev.data,ni="nmeas", xi="nxprev",age=x,measure="PLO",nlab="children"))
  prev.res=as.data.frame(rbindlist(prev.res))
  prev.res[,4]=as.numeric(prev.res[,4])
  prev.res[,6]=as.numeric(prev.res[,6])
  prev.res[,7]=as.numeric(prev.res[,7])
  prev.res = prev.res %>%
    mutate(est=est*100,lb=lb*100,ub=ub*100)
  prev.res$agecat=factor(prev.res$agecat,levels=levels(prev.data$agecat))
  prev.res$ptest.f=sprintf("%0.0f",prev.res$est)
  
  
  # estimate random effects in birth cohorts only
  prev.res.birthcohorts=NULL
  if("Birth" %in% unique(prev.data$agecat)){
    birthcohorts<-prev.data$studyid[prev.data$agecat=="Birth"]
    prev.res.birthcohorts=lapply((levels(prev.data$agecat)),function(x) 
      fit.rma(data=prev.data[prev.data$studyid %in% birthcohorts, ],ni="nmeas", xi="nxprev",age=x,measure="PLO",nlab="children"))
    prev.res.birthcohorts=as.data.frame(rbindlist(prev.res.birthcohorts))
    
    prev.res.birthcohorts[,4]=as.numeric(prev.res.birthcohorts[,4])
    prev.res.birthcohorts[,6]=as.numeric(prev.res.birthcohorts[,6])
    prev.res.birthcohorts[,7]=as.numeric(prev.res.birthcohorts[,7])
    
    prev.res.birthcohorts = prev.res.birthcohorts %>%
      mutate(est=est*100,lb=lb*100,ub=ub*100)
    prev.res.birthcohorts$agecat=factor(prev.res.birthcohorts$agecat,levels=levels(prev.data$agecat))
    prev.res.birthcohorts$ptest.f=sprintf("%0.0f",prev.res.birthcohorts$est)
  }
  return(list(prev.data=prev.data, prev.res=prev.res, prev.res.birthcohorts=prev.res.birthcohorts, prev.cohort=prev.cohort))
}



summary.prev.haz <- function(d, severe.stunted=F){
  
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
  prev.cohort=as.data.frame(rbindlist(prev.cohort))
  prev.cohort=cohort.format(prev.cohort,y=prev.cohort$yi,
                            lab=  levels(prev.data$agecat))
  
  # estimate random effects, format results
  prev.res=lapply((levels(prev.data$agecat)),function(x) 
    fit.rma(data=prev.data,ni="nmeas", xi="nxprev",age=x,measure="PLO",nlab="children"))
  prev.res=as.data.frame(rbindlist(prev.res))
  prev.res[,4]=as.numeric(prev.res[,4])
  prev.res[,6]=as.numeric(prev.res[,6])
  prev.res[,7]=as.numeric(prev.res[,7])
  prev.res = prev.res %>%
    mutate(est=est*100,lb=lb*100,ub=ub*100)
  prev.res$agecat=factor(prev.res$agecat,levels=levels(prev.data$agecat))
  prev.res$ptest.f=sprintf("%0.0f",prev.res$est)
  
  
  # estimate random effects in birth cohorts only
  prev.res.birthcohorts=NULL
  if("Birth" %in% unique(prev.data$agecat)){
    birthcohorts<-prev.data$studyid[prev.data$agecat=="Birth"]
    prev.res.birthcohorts=lapply((levels(prev.data$agecat)),function(x) 
      fit.rma(data=prev.data[prev.data$studyid %in% birthcohorts, ],ni="nmeas", xi="nxprev",age=x,measure="PLO",nlab="children"))
    prev.res.birthcohorts=as.data.frame(rbindlist(prev.res.birthcohorts))
    
    prev.res.birthcohorts[,4]=as.numeric(prev.res.birthcohorts[,4])
    prev.res.birthcohorts[,6]=as.numeric(prev.res.birthcohorts[,6])
    prev.res.birthcohorts[,7]=as.numeric(prev.res.birthcohorts[,7])
    
    prev.res.birthcohorts = prev.res.birthcohorts %>%
      mutate(est=est*100,lb=lb*100,ub=ub*100)
    prev.res.birthcohorts$agecat=factor(prev.res.birthcohorts$agecat,levels=levels(prev.data$agecat))
    prev.res.birthcohorts$ptest.f=sprintf("%0.0f",prev.res.birthcohorts$est)
  }
  return(list(prev.data=prev.data, prev.res=prev.res, prev.res.birthcohorts=prev.res.birthcohorts, prev.cohort=prev.cohort))
}



summary.prev.muaz <- function(d, severe=F){
  
  d <- d %>% filter(!is.na(muaz))
  
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
              prev=mean(wasted==1 & stunted==1),
              nxprev=sum(wasted==1 & stunted==1)) %>%
    filter(nmeas>=50) 
  
  prev.data <- droplevels(prev.data)
  
  
  # cohort specific results
  prev.cohort=lapply((levels(prev.data$agecat)),function(x) 
    fit.escalc(data=prev.data,ni="nmeas", xi="nxprev",age=x,meas="PLO"))
  prev.cohort=as.data.frame(rbindlist(prev.cohort))
  prev.cohort=cohort.format(prev.cohort,y=prev.cohort$yi,
                            lab=  levels(prev.data$agecat))
  
  # estimate random effects, format results
  prev.res=lapply((levels(prev.data$agecat)),function(x) 
    fit.rma(data=prev.data,ni="nmeas", xi="nxprev",age=x,measure="PLO",nlab="children"))
  prev.res=as.data.frame(rbindlist(prev.res))
  prev.res[,4]=as.numeric(prev.res[,4])
  prev.res[,6]=as.numeric(prev.res[,6])
  prev.res[,7]=as.numeric(prev.res[,7])
  prev.res = prev.res %>%
    mutate(est=est*100,lb=lb*100,ub=ub*100)
  prev.res$agecat=factor(prev.res$agecat,levels=levels(prev.data$agecat))
  prev.res$ptest.f=sprintf("%0.0f",prev.res$est)
  
  
  # estimate random effects in birth cohorts only
  prev.res.birthcohorts=NULL
  if("Birth" %in% unique(prev.data$agecat)){
    birthcohorts<-prev.data$studyid[prev.data$agecat=="Birth"]
    prev.res.birthcohorts=lapply((levels(prev.data$agecat)),function(x) 
      fit.rma(data=prev.data[prev.data$studyid %in% birthcohorts, ],ni="nmeas", xi="nxprev",age=x,measure="PLO",nlab="children"))
    prev.res.birthcohorts=as.data.frame(rbindlist(prev.res.birthcohorts))
    
    prev.res.birthcohorts[,4]=as.numeric(prev.res.birthcohorts[,4])
    prev.res.birthcohorts[,6]=as.numeric(prev.res.birthcohorts[,6])
    prev.res.birthcohorts[,7]=as.numeric(prev.res.birthcohorts[,7])
    
    prev.res.birthcohorts = prev.res.birthcohorts %>%
      mutate(est=est*100,lb=lb*100,ub=ub*100)
    prev.res.birthcohorts$agecat=factor(prev.res.birthcohorts$agecat,levels=levels(prev.data$agecat))
    prev.res.birthcohorts$ptest.f=sprintf("%0.0f",prev.res.birthcohorts$est)
  }
  return(list(prev.data=prev.data, prev.res=prev.res, prev.res.birthcohorts=prev.res.birthcohorts, prev.cohort=prev.cohort))
}



summary.waz <- function(d){
  
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
  
  waz.data <- droplevels(waz.data)
  
  # cohort specific results
  waz.cohort=lapply((levels(waz.data$agecat)),function(x) 
    fit.escalc.cont(data=waz.data,yi="meanwaz", vi="varwaz",age=x))
  waz.cohort=as.data.frame(rbindlist(waz.cohort))
  waz.cohort=cohort.format(waz.cohort,y=waz.cohort$yi,
                           lab=  levels(waz.data$agecat), est="mean")
  
  
  # estimate random effects, format results
  waz.res=lapply((levels(waz.data$agecat)),function(x) 
    fit.cont.rma(data=waz.data, ni="nmeas", yi="meanwaz", vi="varwaz", nlab="children",age=x))
  waz.res=as.data.frame(rbindlist(waz.res))
  waz.res[,4]=as.numeric(waz.res[,4])
  waz.res[,6]=as.numeric(waz.res[,6])
  waz.res[,7]=as.numeric(waz.res[,7])
  waz.res$agecat=factor(waz.res$agecat,levels=levels(waz.data$agecat))
  waz.res$ptest.f=sprintf("%0.0f",waz.res$est)
  
  
  return(list(waz.data=waz.data, waz.res=waz.res, waz.cohort=waz.cohort))
}









