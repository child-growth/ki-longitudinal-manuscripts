



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



summary.ci <- function(d,  
                       agelist=list("0-3 months","3-6 months","6-9 months","9-12 months",
                                    "12-15 months","15-18 months","18-21 months","21-24 months")){
  
  
  # identify ever stunted children
  evs = d %>%
    filter(!is.na(agecat)) %>%
    group_by(studyid,country,subjid) %>%
    arrange(studyid,subjid) %>%
    #create variable with minhaz by age category, cumulatively
    mutate(minhaz=ifelse(agecat=="0-3 months",min(haz[agecat=="0-3 months"]),
                         ifelse(agecat=="3-6 months",min(haz[agecat=="0-3 months" | agecat=="3-6 months"]),
                                ifelse(agecat=="6-9 months",min(haz[agecat=="0-3 months" | agecat=="3-6 months"|agecat=="6-9 months"]),
                                       ifelse(agecat=="9-12 months",min(haz[agecat=="0-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"]),
                                              ifelse(agecat=="12-15 months",min(haz[agecat=="0-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"]),
                                                     ifelse(agecat=="15-18 months",min(haz[agecat=="0-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"|agecat=="15-18 months"]),
                                                            ifelse(agecat=="18-21 months",min(haz[agecat=="0-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"|agecat=="15-18 months"|agecat=="18-21 months"]),
                                                                   ifelse(agecat=="21-24 months",min(haz[agecat=="0-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"|agecat=="15-18 months"|agecat=="18-21 months"|agecat=="21-24 months"]),
                                                                          min(haz)))))))))) %>%
    # create indicator for whether the child was ever stunted
    # by age category
    group_by(studyid,country,agecat,subjid) %>%
    summarise(minhaz=min(minhaz)) %>%
    mutate(ever_stunted=ifelse(minhaz< -2,1,0))
  
  
  # count incident cases per study by age
  # exclude time points if number of measurements per age
  # in a study is <50  
  cuminc.data= evs%>%
    group_by(studyid,country,agecat) %>%
    summarise(
      nchild=length(unique(subjid)),
      nstudy=length(unique(studyid)),
      ncases=sum(ever_stunted),
      N=sum(length(ever_stunted))) %>%
    filter(N>=5)
  
  cuminc.data <- droplevels(cuminc.data)
  agelist <- agelist[agelist %in% levels(cuminc.data$agecat)]
  
  if(class(agelist)!="list"){
    agelist=list(agelist)
  }
  
  # cohort specific results
  ci.cohort=lapply(agelist,function(x) 
    fit.escalc(data=cuminc.data,ni="N", xi="ncases",age=x,meas="PLO"))
  ci.cohort=as.data.frame(do.call(rbind, ci.cohort))
  ci.cohort=cohort.format(ci.cohort,y=ci.cohort$yi,
                          lab=  agelist)
  
  # estimate random effects, format results
  ci.res=lapply((agelist),function(x)
    fit.rma(data=cuminc.data,ni="N", xi="ncases",age=x,measure="PLO",nlab=" measurements"))
  ci.res=as.data.frame(rbindlist(ci.res))
  ci.res[,4]=as.numeric(ci.res[,4])
  ci.res[,6]=as.numeric(ci.res[,6])
  ci.res[,7]=as.numeric(ci.res[,7])
  ci.res = ci.res %>%
    mutate(est=est*100, lb=lb*100, ub=ub*100)
  ci.res$ptest.f=sprintf("%0.0f",ci.res$est)
  
  
  return(list(cuminc.data=cuminc.data, ci.res=ci.res, ci.cohort=ci.cohort))
}




summary.haz <- function(d){
  
  # take mean of multiple measurements within age window
  dmn <- d %>%
    filter(!is.na(agecat)) %>%
    group_by(studyid,country,subjid,agecat) %>%
    summarise(haz=mean(haz))
  
  # count measurements per study by age
  # exclude time points if number of measurements per age
  # in a study is <50
  haz.data = dmn %>%
    filter(!is.na(agecat)) %>%
    group_by(studyid,country,agecat) %>%
    summarise(nmeas=sum(!is.na(haz)),
              meanhaz=mean(haz),
              varhaz=var(haz)) %>%
    filter(nmeas>=50) 
  
  haz.data <- droplevels(haz.data)
  
  # cohort specific results
  haz.cohort=lapply((levels(haz.data$agecat)),function(x) 
    fit.escalc.cont(data=haz.data,yi="meanhaz", vi="varhaz",age=x))
  haz.cohort=as.data.frame(rbindlist(haz.cohort))
  haz.cohort=cohort.format(haz.cohort,y=haz.cohort$yi,
                           lab=  levels(haz.data$agecat), est="mean")
  
  
  # estimate random effects, format results
  haz.res=lapply((levels(haz.data$agecat)),function(x) 
    fit.cont.rma(data=haz.data, ni="nmeas", yi="meanhaz", vi="varhaz", nlab="children",age=x))
  haz.res=as.data.frame(rbindlist(haz.res))
  haz.res[,4]=as.numeric(haz.res[,4])
  haz.res[,6]=as.numeric(haz.res[,6])
  haz.res[,7]=as.numeric(haz.res[,7])
  haz.res$agecat=factor(haz.res$agecat,levels=levels(haz.data$agecat))
  haz.res$ptest.f=sprintf("%0.0f",haz.res$est)
  
  
  return(list(haz.data=haz.data, haz.res=haz.res, haz.cohort=haz.cohort))
}






summary.rec.stunt <- function(d){
  
  # subset to stunted between birth and 3 months
  stunt.24 <- d %>%
    filter(agedays<=25*30.4167) %>%
    # identify last two measurements prior to 24 months
    group_by(studyid,country,subjid) %>%
    mutate(rank=min_rank(-agedays)) %>%
    # drop last 2 measurements prior to 24 m
    filter(rank> 2) %>%
    # create stunting indicator
    mutate(measid=seq_along(subjid))  %>%
    mutate(stunted=ifelse(haz< -2,1,0),
           lagstunted=lag(stunted),
           leadstunted=lead(stunted))  %>%
    # unique stunting episode
    mutate(sepisode=ifelse(lagstunted==0 & stunted==1 & leadstunted==1 |
                             stunted==1 & measid==1,1,0)) %>%
    # identify whether child had stunting episode by 24 months 
    summarise(stunted24=max(sepisode,na.rm=TRUE))
  
  rec.24 <- d %>%
    filter(agedays<=25*30.4167) %>%
    # identify last two measurements prior to 24 months
    group_by(studyid,country,subjid) %>%
    mutate(rank=min_rank(-agedays)) %>%
    # keep last two measurements 
    filter(rank<= 2) %>%
    # flag kids with 2 measurements not stunted
    mutate(rec=ifelse(haz>= -2,1,0)) %>%
    mutate(recsum=cumsum(rec)) %>%
    # one row for each kid, indicator for recovered
    summarise(maxrec=max(recsum)) %>%
    mutate(rec24=ifelse(maxrec==2,1,0)) %>%
    select(-c(maxrec))
  
  
  rev <- full_join(stunt.24, rec.24,by=c("studyid","country","subjid")) %>%
    # subset to kids who were stunted
    filter(stunted24==1) %>%
    mutate(srec24=ifelse(stunted24==1 & rec24==1,1,0)) %>%
    mutate(snorec24=ifelse(stunted24==1 & rec24==0,1,0)) 
  
  rev = rev %>% mutate(stunted24s=ifelse(stunted24==1,"Stunted","Not stunted"))
  rev = rev %>% mutate(rec24s=ifelse(rec24==1,"Recover","Not recover"))
  
  # prepare data for pooling 
  rev.data <- rev %>%
    group_by(studyid,country) %>%
    summarise(mn.r=mean(srec24,na.rm=TRUE),
              n.r=sum(srec24,na.rm=TRUE),
              N.r=sum(!is.na(srec24)),
              mn.s=mean(snorec24,na.rm=TRUE),
              n.s=sum(snorec24,na.rm=TRUE),
              N.s=sum(!is.na(snorec24))) %>%
    mutate(agecat=as.factor("24 months")) %>%
    filter(n.r!=0 & N.r!=0)
  
  
  # estimate random effects, format results
  fit.r=fit.rma(data=rev.data,ni="N.r", xi="n.r",age="24 months",measure="PLO",nlab="stunted children")
  fit.r = fit.r %>%
    mutate(est=est*100,lb=lb*100,ub=ub*100)
  fit.r$ptest.f=sprintf("%0.0f",fit.r$est)
  
  # cohort specific results
  rec.cohort=fit.escalc(data=rev.data,ni="N.r", xi="n.r",age="24 months",meas="PLO")
  rec.cohort=cohort.format(rec.cohort, y=rec.cohort$yi,lab="24 months")
  
  return(list(rev.data=rev.data, rev.res=fit.r, rec.cohort=rec.cohort))
}


summary.stunt.incprop <- function(d, severe.stunted=F, agelist=list("0-3 months","3-6 months","6-9 months","9-12 months","12-15 months","15-18 months","18-21 months","21-24 months")){
  
  threshold <- if_else(severe.stunted, -3, -2)
  
  #Calculate onset of stunting
  d <- d %>% group_by(studyid, country, subjid) %>% 
    mutate(stunt= haz < threshold, 
           stuntid = ifelse(stunt, measid, 9999),
           stunt_inc = 1 * (stunt & stuntid==min(stuntid))) 
  
  evs <- d %>%
    group_by(studyid, country, agecat, subjid) %>%
    filter(!is.na(agecat)) %>%
    summarise(numstunt = sum(stunt_inc, na.rm=T)) %>%
    mutate(ever_stunted = 1*(numstunt>0))
  
  # count incident cases per study by age
  # exclude time points if number of measurements per age
  # in a study is <50  
  cuminc.data= evs%>%
    group_by(studyid,country,agecat) %>%
    summarise(
      nchild=length(unique(subjid)),
      nstudy=length(unique(studyid)),
      ncases=sum(ever_stunted),
      N=sum(length(ever_stunted))) %>%
    filter(N>=50)
  
  cuminc.data <- droplevels(cuminc.data)
  agelist <- agelist[agelist %in% levels(cuminc.data$agecat)]
  
  if(class(agelist)!="list"){
    agelist=list(agelist)
  }
  
  # cohort specific results
  ci.cohort=lapply(agelist,function(x) 
    fit.escalc(data=cuminc.data,ni="N", xi="ncases",age=x,meas="PLO"))
  ci.cohort=as.data.frame(do.call(rbind, ci.cohort))
  ci.cohort=cohort.format(ci.cohort,y=ci.cohort$yi,
                          lab=  agelist)
  
  
  #fit.rma(data=cuminc.data,ni="N", xi="ncases",age="0-3 months",measure="PLO",nlab=" measurements")
  
  # estimate random effects, format results
  ci.res=lapply((agelist),function(x)
    fit.rma(data=cuminc.data,ni="N", xi="ncases",age=x,measure="PLO",nlab=" measurements"))
  ci.res=as.data.frame(rbindlist(ci.res))
  ci.res[,4]=as.numeric(ci.res[,4])
  ci.res[,6]=as.numeric(ci.res[,6])
  ci.res[,7]=as.numeric(ci.res[,7])
  ci.res = ci.res %>%
    mutate(est=est*100, lb=lb*100, ub=ub*100)
  ci.res$ptest.f=sprintf("%0.0f",ci.res$est)
  
  
  return(list(cuminc.data=cuminc.data, ci.res=ci.res, ci.cohort=ci.cohort))
}


# Stunting incidence person-time calculation
summary.stunt.ir <- function(d, agelist, sev_stunt=F){
  
  Cutoff= ifelse(sev_stunt, -3, -2)
  
  inc.prep = d %>%
    filter(!is.na(agecat) & agedays>1) %>%
    group_by(studyid,subjid) %>%
    arrange(studyid,subjid,agedays) %>%
    
    # create id for measurement within person
    mutate(measid=seq_along(subjid)) %>%
    # duration between measurements 
    mutate(agedayslag=lag(agedays)) %>%
    mutate(agedayslag=ifelse(is.na(agedayslag),0,agedayslag)) %>%
    mutate(deltat=ifelse(measid==1 & agecat=="Birth",0,agedays-agedayslag)) %>%
    
    # create indicator for whether haz at t < haz at t-1
    mutate(hazlag=lag(haz)) %>%
    mutate(newcase=ifelse(measid==1,ifelse(haz< Cutoff, 1,0),
                          ifelse(hazlag>= Cutoff & haz< Cutoff,1,0))) %>%
    mutate(newcaselag=lag(newcase))%>%
    mutate(newcaselag=ifelse(measid==1,0,newcaselag))%>%
    mutate(cnewcaselag=cumsum(newcaselag)) %>%
    
    # create at risk variable
    mutate(atrisk=ifelse(cnewcaselag>=1,0,1)) %>%
    # create inc case variable
    mutate(inccase=ifelse(cnewcaselag>=1,0,newcase)) %>%
    
    # create delta t with half interval for row
    # with incident case assuming it occurred halfway through
    # the follow-up period
    mutate(deltat_half=deltat/2) %>%
    mutate(deltat2=ifelse(inccase==0,deltat,deltat_half)) %>%
    
    # create person days
    mutate(pdays=atrisk*deltat2) %>%
    
    # clean up
    select(-c(hazlag,newcase,newcaselag, cnewcaselag,agedayslag,
              deltat,deltat_half))
  
  # manually calculate incident cases, person-time at risk at each time point
  inc.prep %>%
    group_by(agecat) %>%
    summarise(inc.case=sum(inccase),ptar=sum(pdays)) %>%
    mutate(cruderate=inc.case/ptar)
  
  
  # count incident cases and sum person time at risk per study by age
  # exclude time points if number of children per age
  # in a study is <50  
  inc.data = inc.prep %>%
    group_by(studyid,country,agecat) %>%
    summarise(ptar=sum(pdays),
              ncase=sum(inccase),
              nchild=length(unique(subjid)),
              nstudy=length(unique(studyid))) %>%
    filter(nchild>=50 & !is.na(agecat))
  
  
  # cohort specific results
  inc.cohort=lapply((agelist),function(x) 
    fit.escalc(data=inc.data,ni="ptar", xi="ncase",age=x,meas="IR"))
  inc.cohort=as.data.frame(rbindlist(inc.cohort))
  inc.cohort$agecat=factor(inc.cohort$agecat,levels=
                             c(agelist))
  inc.cohort$yi.f=sprintf("%0.0f",inc.cohort$yi)
  inc.cohort$cohort=paste0(inc.cohort$studyid,"-",inc.cohort$country)
  inc.cohort = inc.cohort %>% mutate(region = ifelse(country=="BANGLADESH" | country=="INDIA"|
                                                       country=="NEPAL" | country=="PAKISTAN"|
                                                       country=="PHILIPPINES" ,"Asia",
                                                     ifelse(country=="BURKINA FASO"|
                                                              country=="GUINEA-BISSAU"|
                                                              country=="MALAWI"|
                                                              country=="SOUTH AFRICA"|
                                                              country=="TANZANIA, UNITED REPUBLIC OF"|
                                                              country=="ZIMBABWE"|
                                                              country=="GAMBIA","Africa",
                                                            ifelse(country=="BELARUS","Europe",
                                                                   "Latin America"))))
  
  
  # estimate random effects, format results
  ir.res=lapply((agelist),function(x)
    fit.rma(data=inc.data,ni="ptar", xi="ncase",age=x,measure="IR",nlab=" person-days"))
  ir.res=as.data.frame(rbindlist(ir.res))
  ir.res[,4]=as.numeric(ir.res[,4])
  ir.res[,6]=as.numeric(ir.res[,6])
  ir.res[,7]=as.numeric(ir.res[,7])
  
  ir.res$pt.f=paste0("N=",format(ir.res$nmeas,big.mark=",",scientific=FALSE),
                     " person-days")
  ir.res$ptest.f=sprintf("%0.02f",ir.res$est*1000)
  
  return(list(ir.data=inc.data, ir.res=ir.res, ir.cohort=inc.cohort))
  
}




# inputs:
rec.age=function(s.agem,r.agem,data){
  # subset to stunted between birth and 3 months
  stunt <- data %>%
    filter(agem<=s.agem) 
  
  if(s.agem>1){
    # identify last two measurements prior to 24 months
    stunt <- stunt %>%
      group_by(studyid,country,subjid) %>%
      mutate(rank=min_rank(-agedays)) %>%
      # drop last 2 measurements prior to 24 m
      filter(rank> 2) 
  }
  # create stunting indicator
  stunt <- stunt %>%
    mutate(measid=seq_along(subjid))  %>%
    mutate(stunted=ifelse(haz< -2,1,0),
           lagstunted=lag(stunted),
           leadstunted=lead(stunted))  %>%
    # unique stunting episode
    mutate(sepisode=ifelse(lagstunted==0 & stunted==1 & leadstunted==1 |
                             stunted==1 & measid==1,1,0)) %>%
    # identify whether child had stunting episode by 24 months 
    group_by(studyid,country,subjid) %>%
    summarise(stunted=max(sepisode,na.rm=TRUE))
  
  rec.prev <- data %>%
    filter(agem<=s.agem) %>%
    # identify last two measurements prior to 24 months
    group_by(studyid,country,subjid) %>%
    mutate(rank=min_rank(-agedays)) %>%
    # keep last two measurements 
    filter(rank<= 2) %>%
    # flag kids with 2 measurements not stunted
    mutate(rec=ifelse(haz>= -2,1,0)) %>%
    mutate(recsum=cumsum(rec)) %>%
    # one row for each kid, indicator for recovered
    summarise(maxrec=max(recsum)) %>%
    mutate(rec.prev=ifelse(maxrec==2,1,0)) %>%
    select(-c(maxrec))
  
  rec <- data %>%
    filter(agem>s.agem & agem<=r.agem) %>%
    # identify last two measurements prior to 24 months
    group_by(studyid,country,subjid) %>%
    mutate(rank=min_rank(-agedays)) %>%
    # keep last two measurements 
    filter(rank<= 2) %>%
    # flag kids with 2 measurements not stunted
    mutate(rec=ifelse(haz>= -2,1,0)) %>%
    mutate(recsum=cumsum(rec)) %>%
    # one row for each kid, indicator for recovered
    summarise(maxrec=max(recsum)) %>%
    mutate(rec=ifelse(maxrec==2,1,0)) %>%
    select(-c(maxrec))
  
  rev <- full_join(stunt, rec,by=c("studyid","country","subjid")) 
  rev <- full_join(rev, rec.prev,by=c("studyid","country","subjid")) %>%
    # subset to kids who were stunted
    filter(stunted==1) %>%
    mutate(recovered=ifelse(stunted==1 & rec==1 & rec.prev==0,1,0)) %>%
    select(-c(stunted,rec,rec.prev))
  
  return(rev)
}


#Recovery summary measures pooling function
summary_rev_df <- function(d, Age="0-3 months"){
  res=d %>%
    group_by(studyid,country) %>%
    summarise(mn=mean(recovered,na.rm=TRUE),
              n=sum(recovered,na.rm=TRUE),
              N=sum(!is.na(recovered))) %>%
    mutate(agecat=Age)
  return(res)
}





