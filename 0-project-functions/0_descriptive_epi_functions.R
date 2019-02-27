

mean_sd <- function(x){
  cat("\n", round(mean(x, na.rm=T),3),
      "  ", round(sd(x, na.rm=T),3),"\n") 
}
N_perc <- function(x){
  print(table(x))
  cat("\n")
  for(i in unique(x)){
    cat(i,":     ")
    y<-ifelse(x==i,1,0)
    cat(sum(y, na.rm=T),
        " (", round(mean(y*100, na.rm=T),3),")\n", sep = "") 
  }
}




calc.prev.agecat <- function(d){
  
  d = d %>% 
    arrange(studyid,subjid,agedays) %>%
    mutate(agecat=ifelse(agedays==1,"Birth",
                         ifelse(agedays>2*30.4167 & agedays<4*30.4167,"3 months",
                                ifelse(agedays>5*30.4167 & agedays<7*30.4167,"6 months",
                                       ifelse(agedays>8*30.4167 & agedays<10*30.4167,"9 months",
                                              ifelse(agedays>11*30.4167 & agedays<13*30.4167,"12 months",
                                                     ifelse(agedays>14*30.4167 & agedays<16*30.4167,"15 months",
                                                            ifelse(agedays>17*30.4167 & agedays<19*30.4167,"18 months",
                                                                   ifelse(agedays>20*30.4167 & agedays<22*30.4167,"21 months",
                                                                          ifelse(agedays>23*30.4167& agedays<25*30.4167,"24 months","")))))))))) %>%
    mutate(agecat=factor(agecat,levels=c("Birth","3 months","6 months","9 months",
                                         "12 months","15 months","18 months","21 months","24 months"))) 
}


calc.monthly.agecat <- function(d){
  
  d$agecat <- cut(d$agedays, breaks=c(0:25)*30.4167-30.4167/2, include.lowest = F,
              labels =paste0(0:24, " months"))
  levels(d$agecat)[1] <- "Two weeks"
  levels(d$agecat)[2] <- "One month"
  table(d$agecat)
return(d)
}

calc.ci.agecat <- function(d, range=3){
  if(range==3){
  d = d %>% 
    mutate(agecat=ifelse(agedays<=3*30.4167,"0-3 months",
                         ifelse(agedays>3*30.4167 & agedays<=6*30.4167,"3-6 months",
                                ifelse(agedays>6*30.4167 & agedays<=9*30.4167,"6-9 months",
                                       ifelse(agedays>9*30.4167 & agedays<=12*30.4167,"9-12 months",
                                              ifelse(agedays>12*30.4167 & agedays<=15*30.4167,"12-15 months",
                                                     ifelse(agedays>15*30.4167 & agedays<=18*30.4167,"15-18 months",
                                                            ifelse(agedays>18*30.4167 & agedays<=21*30.4167,"18-21 months",
                                                                   ifelse(agedays>21*30.4167& agedays<=24*30.4167,"21-24 months",""))))))))) %>%
    mutate(agecat=factor(agecat,levels=c("0-3 months","3-6 months","6-9 months","9-12 months","12-15 months","15-18 months","18-21 months","21-24 months")))
  }
  if(range==6){
    d = d %>% 
      mutate(agecat=ifelse(agedays<=6*30.4167,"0-6 months",
                                         ifelse(agedays>6*30.4167 & agedays<=12*30.4167,"6-12 months",
                                                       ifelse(agedays>12*30.4167 & agedays<=18*30.4167,"12-18 months",
                                                                     ifelse(agedays>18*30.4167& agedays<=24*30.4167,"18-24 months",""))))) %>%
      mutate(agecat=factor(agecat,levels=c("0-6 months","6-12 months","12-18 months","18-24 months")))
  }
  return(d)
}




#---------------------------------------
# fit.rma function
#---------------------------------------

# random effects function, save results nicely
fit.rma=function(data,age,ni,xi,measure,nlab){
  data=filter(data,agecat==age)
  
  if(measure=="PLO"){
    if(nrow(data)==1){
      data<-escalc(data=data, ni=data[[ni]], xi=data[[xi]], method="REML", measure="PLO", append=T)
      data$se <- sqrt(data$vi)
      
      out=data %>% 
        ungroup() %>%
        mutate(nstudies=1, nmeas=data[[ni]]) %>%
        mutate(agecat=age,est=plogis(yi), lb=plogis(yi-1.96*se), ub=plogis(yi+1.96*se),
               nmeas.f=paste0("N=",format(sum(data[[ni]]),big.mark=",",scientific=FALSE),  " ",nlab),
               nstudy.f=paste0("N=",nstudies," studies")) %>%
        select(nstudies, nmeas,    agecat ,     est,        se,        lb,        ub ,          nmeas.f,     nstudy.f) %>%
        as.tibble()
      rownames(out) <- NULL
    }else{
      if(sum(data[[xi]])==0){
        fit<-rma(ni=data[[ni]], xi=data[[xi]], 
                 method="FE", measure="PLO") #Use FE model if all 0 counts because no heterogeneity and rma.glmm fails
      }else{
        fit<-rma.glmm(ni=data[[ni]], xi=data[[xi]], measure="PLO") 
      }
      out=data %>%
        ungroup() %>%
        summarise(nstudies=length(unique(studyid)),
                  nmeas=sum(data[[ni]][agecat==age])) %>%
        #mutate(agecat=age,est=exp(fit$beta), se=fit$se, lb=exp(fit$beta-1.96*fit$se), ub=exp(fit$beta+1.96*fit$se),
        mutate(agecat=age,est=plogis(fit$beta), se=fit$se, lb=plogis(fit$beta-1.96*fit$se), ub=plogis(fit$beta+1.96*fit$se),
               nmeas.f=paste0("N=",format(sum(data[[ni]]),big.mark=",",scientific=FALSE),  " ",nlab),
               nstudy.f=paste0("N=",nstudies," studies")) %>% as.tibble()
      rownames(out) <- NULL
    }
  }else{
    if(measure!="IR"){
      fit<-rma(ni=data[[ni]], xi=data[[xi]], 
               method="REML", measure=measure)
    }else{
      fit<-rma(ti=data[[ni]], xi=data[[xi]], 
               method="REML", measure=measure, to="if0all")
    }
    out=data %>%
      ungroup() %>%
      summarise(nstudies=length(unique(studyid)),
                nmeas=sum(data[[ni]][agecat==age])) %>%
      mutate(agecat=age,est=fit$beta, se=fit$se, lb=fit$ci.lb, ub=fit$ci.ub,
             nmeas.f=paste0("N=",format(sum(data[[ni]]),big.mark=",",scientific=FALSE),
                            " ",nlab),
             nstudy.f=paste0("N=",nstudies," studies"))
  }
  return(out)
  
}



# random effects function, save results nicely
fit.cont.rma=function(data,age,yi,vi,ni,nlab){
  
  data=filter(data,agecat==age)
  
  fit <- NULL
  try(fit <- rma(yi=data[[yi]], vi=data[[vi]], method="REML", measure = "GEN"))
  if(is.null(fit)){try(fit <- rma(yi=data[[yi]], vi=data[[vi]], method="ML", measure = "GEN"))}
  if(is.null(fit)){try(fit <- rma(yi=data[[yi]], vi=data[[vi]], method="DL", measure = "GEN"))}
  if(is.null(fit)){try(fit <- rma(yi=data[[yi]], vi=data[[vi]], method="HE", measure = "GEN"))}
  
  out = data %>%
    ungroup() %>%
    summarise(nstudies=length(unique(studyid)),
              nmeas=sum(data[[ni]][agecat==age])) %>%
    mutate(agecat=age,est=fit$beta, se=fit$se, lb=fit$ci.lb, ub=fit$ci.ub,
           nmeas.f=paste0("N=",format(sum(data[[ni]]),big.mark=",",scientific=FALSE),
                          " ",nlab),
           nstudy.f=paste0("N=",nstudies," studies"))
  return(out)
}





sem<-function(x){
  sd(x)/sqrt(length(x))
}





#---------------------------------------
# fit.escalc function
#---------------------------------------

# calc individual cohort PR variances, standard errors, and 95% CI from the rma() arguements, and append to dataset
# Input:
# meas: PR for prevalence, CI for cumulative incidence, and IR for incidence rate
# PLO for log transformed prevalence (to prevent 95% CI outside 0 and 1).

#Returns:
# Inputted dataframe with appended columns
# yi = outcome of interest
# vi = variance of outcome
# se = standard error
# ci.lb = lower bound of 95% confidence interval
# ci.ub = upper bound of 95% confidence interval

fit.escalc<-function(data,age,ni,xi, meas){
  data=filter(data,agecat==age)
  
  if(meas=="PLO"){
    data<-escalc(data=data, ni=data[[ni]], xi=data[[xi]], method="REML", measure="PLO", append=T)
    data$se <- sqrt(data$vi)
    data$ci.lb <- plogis(data$yi - 1.96 * data$se)
    data$ci.ub <- plogis(data$yi + 1.96 * data$se)
    data$yi <- plogis(data$yi)
    
  }else{
    
    if(meas=="PR"){
      data<-escalc(data=data, ni=data[[ni]], xi=data[[xi]], method="REML", measure="PLO", append=T)
    }
    
    if(meas=="IR"){
      data<-escalc(data=data, ti=data[[ni]], xi=data[[xi]], method="REML", measure="IR", append=T)
    }
    
    data$se <- sqrt(data$vi)
    data$ci.lb <- data$yi - 1.96 * data$se
    data$ci.ub <- data$yi + 1.96 * data$se
  }
  return(data)
}


fit.escalc.cont <- function(data,age,yi,vi, meas){
  data=filter(data,agecat==age)
  
  data <- data.frame(data, escalc(yi=data[[yi]], vi=data[[vi]], method="REML", measure="GEN"))
  
  data$se <- sqrt(data$vi)
  data$ci.lb <- data$yi - 1.96 * data$se 
  data$ci.ub <- data$yi + 1.96 * data$se 
  
  return(data)
}


#---------------------------------------
# cohort-specific output formatting
#---------------------------------------
# if percentage, multiply est and ci by 100
# create cohort name for plotting
# create region variable 
# add age labels for x-axis

# Input:
# data frame with fit.escalc output 
# vector of labels for plotting

#Returns:
# data frame formatted for plotting cohort specific results
cohort.format=function(df, lab, y, est="percent"){
  y = as.numeric(y)
  
  # rescale percentages
  if(est=="percent"){
    df = df %>% mutate(y=y*100,ci.lb=ci.lb*100,ci.ub=ci.ub*100)
  }
  if(est=="rate"){
    df = df %>% mutate(y=y*1000,ci.lb=ci.lb*1000,ci.ub=ci.ub*1000)
  }
  
  # cohort name
  df = df %>% mutate(cohort=paste0(studyid,"-",country)) %>%
    mutate(cohort=gsub("ki[^-]*-","",cohort))
  
  # region variable
  df <- df %>% mutate(region = case_when(
    country=="BANGLADESH" | country=="INDIA"|
      country=="NEPAL" | country=="PAKISTAN"|
      country=="PHILIPPINES"                   ~ "Asia", 
    country=="KENYA"|
      country=="GHANA"|
      country=="BURKINA FASO"|
      country=="GUINEA-BISSAU"|
      country=="MALAWI"|
      country=="SOUTH AFRICA"|
      country=="TANZANIA, UNITED REPUBLIC OF"|
      country=="ZIMBABWE"|
      country=="GAMBIA"                       ~ "Africa",
    country=="BELARUS"                      ~ "Europe",
    country=="BRAZIL" | country=="GUATEMALA" |
      country=="PERU"                         ~ "Latin America",
    TRUE                                    ~ "Other"
  ))
  
  # create formatted age categories for plotting 
  df <- df %>%  mutate(agecat=droplevels(as.factor(agecat)))
  df <- df %>%  mutate(age.f = factor(agecat,levels=levels(df$agecat),
                                      labels=lab))
  
  return(df)
}













#---------------------------------------
# fit.rma function
#---------------------------------------

# random effects function, save results nicely
fit.rma=function(data,age,ni,xi,measure,nlab){
  if(!is.na(age)){
    data=filter(data,agecat==age)
  }
  if(measure=="PLO"){
    if(nrow(data)==1){
      data<-escalc(data=data, ni=data[[ni]], xi=data[[xi]], method="REML", measure="PLO", append=T)
      data$se <- sqrt(data$vi)
      
      out=data %>% 
        ungroup() %>%
        mutate(nstudies=1, nmeas=data[[ni]]) %>%
        mutate(agecat=age,est=plogis(yi), lb=plogis(yi-1.96*se), ub=plogis(yi+1.96*se),
               nmeas.f=paste0("N=",format(sum(data[[ni]]),big.mark=",",scientific=FALSE),  " ",nlab),
               nstudy.f=paste0("N=",nstudies," studies")) %>%
        select(nstudies, nmeas,    agecat ,     est,        se,        lb,        ub ,          nmeas.f,     nstudy.f) %>%
        as.tibble()
      rownames(out) <- NULL
    }else{
      if(sum(data[[xi]])==0){
        fit<-rma(ni=data[[ni]], xi=data[[xi]], 
                 method="FE", measure="PLO") #Use FE model if all 0 counts because no heterogeneity and rma.glmm fails
      }else{
        fit<-rma.glmm(ni=data[[ni]], xi=data[[xi]], measure="PLO") 
      }
      out=data %>%
        ungroup() %>%
        summarise(nstudies=length(unique(studyid)),
                  nmeas=sum(data[[ni]][agecat==age])) %>%
        #mutate(agecat=age,est=exp(fit$beta), se=fit$se, lb=exp(fit$beta-1.96*fit$se), ub=exp(fit$beta+1.96*fit$se),
        mutate(agecat=age,est=plogis(fit$beta), se=fit$se, lb=plogis(fit$beta-1.96*fit$se), ub=plogis(fit$beta+1.96*fit$se),
               nmeas.f=paste0("N=",format(sum(data[[ni]]),big.mark=",",scientific=FALSE),  " ",nlab),
               nstudy.f=paste0("N=",nstudies," studies")) %>% as.tibble()
      rownames(out) <- NULL
    }
  }else{
    if(measure!="IR"){
      fit<-rma(ni=data[[ni]], xi=data[[xi]], 
               method="REML", measure=measure)
    }else{
      fit<-rma(ti=data[[ni]], xi=data[[xi]], 
               method="REML", measure=measure, to="if0all")
    }
    out=data %>%
      ungroup() %>%
      summarise(nstudies=length(unique(studyid)),
                nmeas=sum(data[[ni]][agecat==age])) %>%
      mutate(agecat=age,est=fit$beta, se=fit$se, lb=fit$ci.lb, ub=fit$ci.ub,
             nmeas.f=paste0("N=",format(sum(data[[ni]]),big.mark=",",scientific=FALSE),
                            " ",nlab),
             nstudy.f=paste0("N=",nstudies," studies"))
  }
  return(out)
  
}



# random effects function, save results nicely
fit.cont.rma=function(data,age,yi,vi,ni,nlab){
  
  data=filter(data,agecat==age)
  
  fit <- NULL
  try(fit <- rma(yi=data[[yi]], vi=data[[vi]], method="REML", measure = "GEN"))
  if(is.null(fit)){try(fit <- rma(yi=data[[yi]], vi=data[[vi]], method="ML", measure = "GEN"))}
  if(is.null(fit)){try(fit <- rma(yi=data[[yi]], vi=data[[vi]], method="DL", measure = "GEN"))}
  if(is.null(fit)){try(fit <- rma(yi=data[[yi]], vi=data[[vi]], method="HE", measure = "GEN"))}
  
  out = data %>%
    ungroup() %>%
    summarise(nstudies=length(unique(studyid)),
              nmeas=sum(data[[ni]][agecat==age])) %>%
    mutate(agecat=age,est=fit$beta, se=fit$se, lb=fit$ci.lb, ub=fit$ci.ub,
           nmeas.f=paste0("N=",format(sum(data[[ni]]),big.mark=",",scientific=FALSE),
                          " ",nlab),
           nstudy.f=paste0("N=",nstudies," studies"))
  return(out)
}





sem<-function(x){
  sd(x)/sqrt(length(x))
}





#---------------------------------------
# fit.escalc function
#---------------------------------------

# calc individual cohort PR variances, standard errors, and 95% CI from the rma() arguements, and append to dataset
# Input:
# meas: PR for prevalence, CI for cumulative incidence, and IR for incidence rate
# PLO for log transformed prevalence (to prevent 95% CI outside 0 and 1).

#Returns:
# Inputted dataframe with appended columns
# yi = outcome of interest
# vi = variance of outcome
# se = standard error
# ci.lb = lower bound of 95% confidence interval
# ci.ub = upper bound of 95% confidence interval

fit.escalc<-function(data,age,ni,xi, meas){
  data=filter(data,agecat==age)
  
  if(meas=="PLO"){
    data<-escalc(data=data, ni=data[[ni]], xi=data[[xi]], method="REML", measure="PLO", append=T)
    data$se <- sqrt(data$vi)
    data$ci.lb <- plogis(data$yi - 1.96 * data$se)
    data$ci.ub <- plogis(data$yi + 1.96 * data$se)
    data$yi <- plogis(data$yi)
    
  }else{
    
    if(meas=="PR"){
      data<-escalc(data=data, ni=data[[ni]], xi=data[[xi]], method="REML", measure="PLO", append=T)
    }
    
    if(meas=="IR"){
      data<-escalc(data=data, ti=data[[ni]], xi=data[[xi]], method="REML", measure="IR", append=T)
    }
    
    data$se <- sqrt(data$vi)
    data$ci.lb <- data$yi - 1.96 * data$se
    data$ci.ub <- data$yi + 1.96 * data$se
  }
  return(data)
}


fit.escalc.cont <- function(data,age,yi,vi, meas){
  data=filter(data,agecat==age)
  
  data <- data.frame(data, escalc(yi=data[[yi]], vi=data[[vi]], method="REML", measure="GEN"))
  
  data$se <- sqrt(data$vi)
  data$ci.lb <- data$yi - 1.96 * data$se 
  data$ci.ub <- data$yi + 1.96 * data$se 
  
  return(data)
}


#---------------------------------------
# cohort-specific output formatting
#---------------------------------------
# if percentage, multiply est and ci by 100
# create cohort name for plotting
# create region variable 
# add age labels for x-axis

# Input:
# data frame with fit.escalc output 
# vector of labels for plotting

#Returns:
# data frame formatted for plotting cohort specific results
cohort.format=function(df, lab, y, est="percent"){
  y = as.numeric(y)
  
  # rescale percentages
  if(est=="percent"){
    df = df %>% mutate(y=y*100,ci.lb=ci.lb*100,ci.ub=ci.ub*100)
  }
  if(est=="rate"){
    df = df %>% mutate(y=y*1000,ci.lb=ci.lb*1000,ci.ub=ci.ub*1000)
  }
  
  # cohort name
  df = df %>% mutate(cohort=paste0(studyid,"-",country)) %>%
    mutate(cohort=gsub("ki[^-]*-","",cohort))
  
  # region variable
  df <- df %>% mutate(region = case_when(
    country=="BANGLADESH" | country=="INDIA"|
      country=="NEPAL" | country=="PAKISTAN"|
      country=="PHILIPPINES"                   ~ "Asia", 
    country=="KENYA"|
      country=="GHANA"|
      country=="BURKINA FASO"|
      country=="GUINEA-BISSAU"|
      country=="MALAWI"|
      country=="SOUTH AFRICA"|
      country=="TANZANIA, UNITED REPUBLIC OF"|
      country=="ZIMBABWE"|
      country=="GAMBIA"                       ~ "Africa",
    country=="BELARUS"                      ~ "Europe",
    country=="BRAZIL" | country=="GUATEMALA" |
      country=="PERU"                         ~ "Latin America",
    TRUE                                    ~ "Other"
  ))
  
  # create formatted age categories for plotting 
  df <- df %>%  mutate(agecat=droplevels(as.factor(agecat)))
  df <- df %>%  mutate(age.f = factor(agecat,levels=levels(df$agecat),
                                      labels=lab))
  
  return(df)
}










summary.prev <- function(d, severe.wasted=F){
  
  # take mean of multiple measurements within age window
  dmn <- d %>%
    filter(!is.na(agecat)) %>%
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
    #create variable with minwhz by age category, cumulatively
    mutate(minwhz=ifelse(agecat=="0-3 months",min(whz[agecat=="0-3 months"]),
                         ifelse(agecat=="3-6 months",min(whz[agecat=="0-3 months" | agecat=="3-6 months"]),
                                ifelse(agecat=="6-9 months",min(whz[agecat=="0-3 months" | agecat=="3-6 months"|agecat=="6-9 months"]),
                                       ifelse(agecat=="9-12 months",min(whz[agecat=="0-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"]),
                                              ifelse(agecat=="12-15 months",min(whz[agecat=="0-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"]),
                                                     ifelse(agecat=="15-18 months",min(whz[agecat=="0-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"|agecat=="15-18 months"]),
                                                            ifelse(agecat=="18-21 months",min(whz[agecat=="0-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"|agecat=="15-18 months"|agecat=="18-21 months"]),
                                                                   ifelse(agecat=="21-24 months",min(whz[agecat=="0-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"|agecat=="15-18 months"|agecat=="18-21 months"|agecat=="21-24 months"]),
                                                                          min(whz)))))))))) %>%
    # create indicator for whether the child was ever stunted
    # by age category
    group_by(studyid,country,agecat,subjid) %>%
    summarise(minwhz=min(minwhz)) %>%
    mutate(ever_wasted=ifelse(minwhz< -2,1,0))
  
  
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




summary.whz <- function(d){
  
  # take mean of multiple measurements within age window
  dmn <- d %>%
    filter(!is.na(agecat)) %>%
    group_by(studyid,country,subjid,agecat) %>%
    summarise(whz=mean(whz))
  
  # count measurements per study by age
  # exclude time points if number of measurements per age
  # in a study is <50
  whz.data = dmn %>%
    filter(!is.na(agecat)) %>%
    group_by(studyid,country,agecat) %>%
    summarise(nmeas=sum(!is.na(whz)),
              meanwhz=mean(whz),
              varwhz=var(whz)) %>%
    filter(nmeas>=50) 
  
  whz.data <- droplevels(whz.data)
  
  # cohort specific results
  whz.cohort=lapply((levels(whz.data$agecat)),function(x) 
    fit.escalc.cont(data=whz.data,yi="meanwhz", vi="varwhz",age=x))
  whz.cohort=as.data.frame(rbindlist(whz.cohort))
  whz.cohort=cohort.format(whz.cohort,y=whz.cohort$yi,
                           lab=  levels(whz.data$agecat), est="mean")
  
  
  # estimate random effects, format results
  whz.res=lapply((levels(whz.data$agecat)),function(x) 
    fit.cont.rma(data=whz.data, ni="nmeas", yi="meanwhz", vi="varwhz", nlab="children",age=x))
  whz.res=as.data.frame(rbindlist(whz.res))
  whz.res[,4]=as.numeric(whz.res[,4])
  whz.res[,6]=as.numeric(whz.res[,6])
  whz.res[,7]=as.numeric(whz.res[,7])
  whz.res$agecat=factor(whz.res$agecat,levels=levels(whz.data$agecat))
  whz.res$ptest.f=sprintf("%0.0f",whz.res$est)
  
  
  return(list(whz.data=whz.data, whz.res=whz.res, whz.cohort=whz.cohort))
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


summary.incprop <- function(d, recovery=F, severe.wasted=F, agelist=list("0-3 months","3-6 months","6-9 months","9-12 months","12-15 months","15-18 months","18-21 months","21-24 months")){
  
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

summary.rec60 <- function(d, length=60, agelist=as.list(c("0-3 months","3-6 months","6-9 months","9-12 months","12-15 months","15-18 months","18-21 months","21-24 months"))){
  
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
      N=sum(length(ever_wasted)))# %>%
  #  filter(N>=50)
  
  
  
  # cohort specific results
  ci.cohort=lapply((agelist),function(x) 
    fit.escalc(data=cuminc.data,ni="N", xi="ncases",age=x,meas="PLO"))
  ci.cohort=as.data.frame(rbindlist(ci.cohort))
  ci.cohort=cohort.format(ci.cohort,y=ci.cohort$yi,
                          lab=  c(agelist))
  
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



summary.perswast <- function(d, agelist=c("0-3 months","3-6 months","6-9 months","9-12 months","12-15 months","15-18 months","18-21 months","21-24 months")){
  

  pers <- d %>%
    group_by(studyid, country, agecat, subjid) %>%
    filter(!is.na(agecat)) %>%
    summarise(perc_wast = mean(whz < (-2))) %>%
    mutate(pers_wast = 1*(perc_wast>=.5))
  
  # count incident cases per study by age
  # exclude time points if number of measurements per age
  # in a study is <50  
  pers.data= pers %>%
    group_by(studyid,country,agecat) %>%
    summarise(
      nchild=length(unique(subjid)),
      nstudy=length(unique(studyid)),
      ncases=sum(pers_wast),
      N=sum(length(pers_wast))) %>%
    filter(N>=50)
  
  
  
  # cohort specific results
  pers.cohort=lapply((agelist),function(x) 
    fit.escalc(data=pers.data,ni="N", xi="ncases",age=x,meas="PLO"))
  pers.cohort=as.data.frame(rbindlist(pers.cohort))
  pers.cohort=cohort.format(pers.cohort,y=pers.cohort$yi,
                          lab=  c(agelist))
  
  # estimate random effects, format results
  pers.res=lapply((agelist),function(x)
    fit.rma(data=pers.data,ni="N", xi="ncases",age=x,measure="PLO",nlab=" measurements"))
  pers.res=as.data.frame(rbindlist(pers.res))
  pers.res[,4]=as.numeric(pers.res[,4])
  pers.res[,6]=as.numeric(pers.res[,6])
  pers.res[,7]=as.numeric(pers.res[,7])
  pers.res = pers.res %>%
    mutate(est=est*100, lb=lb*100, ub=ub*100)
  pers.res$ptest.f=sprintf("%0.0f",pers.res$est)
  
  
  return(list(pers.data=pers.data, pers.res=pers.res, pers.cohort=pers.cohort))
  
}


summary.ir <- function(d, recovery=F, sev.wasting=F, agelist=list("0-3 months","3-6 months","6-9 months","9-12 months","12-15 months","15-18 months","18-21 months","21-24 months")){
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
              nstudy=length(unique(studyid))) %>%
    filter(nchild>=5 & ptar>125 & !is.na(agecat))
  
  
  
  
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


summary.dur <- function(d, agelist){
  
  df <- d %>% 
    group_by(studyid, region, country, agecat) %>% 
    summarize(mean=mean(wasting_duration, na.rm=T), var=var(wasting_duration, na.rm=T), n=n()) %>%
    mutate(se=sqrt(var), ci.lb=mean - 1.96 * se, ci.ub=mean + 1.96 * se,
           nmeas.f=paste0("N=",n," children"))
  
  pooled.vel=lapply(agelist,function(x) 
    fit.cont.rma(data=df,yi="mean", vi="var", ni="n",age=x, nlab="children"))
  pooled.vel=as.data.frame(rbindlist(pooled.vel))
  
    pooled.vel$est <- as.numeric(pooled.vel$est)
    pooled.vel <- pooled.vel %>% 
    mutate(country_cohort="pooled", pooled=1) %>% 
  subset(., select = -c(se)) %>%
  rename(strata=agecat, Mean=est, N=nmeas, Lower.95.CI=lb, Upper.95.CI=ub) %>% as.data.frame()
    print(pooled.vel)
     
    cohort.df <- df %>% subset(., select = c(studyid, country, region, agecat, n, nmeas.f, mean, ci.lb, ci.ub)) %>%
      rename(N=n, Mean=mean, Lower.95.CI=ci.lb, Upper.95.CI=ci.ub,
             strata=agecat) %>%
      mutate(pooled=0, nstudies=1)
    
    return(list(dur.data=df, dur.res=pooled.vel))
}


#stunting reversal

summary.stunt.rev <- function(d){
  
  d <- d %>% mutate(agem=round(agedays/30.4167))
  
  
  # stunted by age x, recovered by age y
  # children with recovery=NA didn't have 2 measurements
  # in the age window, so recovery could not be assessed
  rec.03=rec.age(data=d,s.agem=1,r.agem=3)
  rec.36=rec.age(data=d,s.agem=3,r.agem=6)
  rec.69=rec.age(data=d,s.agem=6,r.agem=9)
  rec.912=rec.age(data=d,s.agem=9,r.agem=12)
  rec.1215=rec.age(data=d,s.agem=12,r.agem=15)
  rec.1518=rec.age(data=d,s.agem=15,r.agem=18)
  rec.1821=rec.age(data=d,s.agem=18,r.agem=21)
  rec.2124=rec.age(data=d,s.agem=21,r.agem=24)

  
  # prepare data for pooling 
  rec.03.sum=summary_rev_df(rec.03, Age="0-3 months")
  rec.36.sum=summary_rev_df(rec.36, Age="3-6 months")
  rec.69.sum=summary_rev_df(rec.69, Age="6-9 months")
  rec.912.sum=summary_rev_df(rec.912, Age="9-12 months")
  rec.1215.sum=summary_rev_df(rec.1215, Age="12-15 months")
  rec.1518.sum=summary_rev_df(rec.1518, Age="15-18 months")
  rec.1821.sum=summary_rev_df(rec.1821, Age="18-21 months")
  rec.2124.sum=summary_rev_df(rec.2124, Age="21-24 months")
  
  rev.data=bind_rows(rec.03.sum,rec.36.sum,rec.69.sum,
                     rec.912.sum, rec.1215.sum, rec.1518.sum,
                     rec.1821.sum, rec.2124.sum) 
  rev.data = rev.data %>%mutate(agecat=as.factor(agecat))
  
  # cohort specific results
  rec.cohort=lapply(list("0-3 months","3-6 months","6-9 months",
                         "9-12 months","12-15 months","15-18 months",
                         "18-21 months", "21-24 months"),function(x) 
                           fit.escalc(data=rev.data,ni="N", xi="n",age=x,meas="PLO"))
  rec.cohort=as.data.frame(do.call(rbind, rec.cohort))
  rec.cohort=cohort.format(rec.cohort,y=rec.cohort$yi,
                           lab=  c("0-3 months","3-6 months","6-9 months",
                                   "9-12 months","12-15 months","15-18 months",
                                   "18-21 months", "21-24 months"))
  
  
  # estimate random effects, format results
  rev.res=lapply(list("0-3 months","3-6 months","6-9 months",
                      "9-12 months","12-15 months","15-18 months",
                      "18-21 months", "21-24 months"),function(x) 
                        fit.rma(rev.data,ni="N", xi="n",age=x,measure="PLO",
                                nlab="children"))
  rev.res=as.data.frame(do.call(rbind, rev.res))
  rev.res[,4]=as.numeric(rev.res[,4])
  rev.res[,5]=as.numeric(rev.res[,5])
  rev.res[,6]=as.numeric(rev.res[,6])
  rev.res[,7]=as.numeric(rev.res[,7])
  rev.res = rev.res %>%
    mutate(est=est*100,lb=lb*100,ub=ub*100)
  rev.res$agecat=factor(rev.res$agecat,levels=c("0-3 months","3-6 months","6-9 months",
                                                "9-12 months","12-15 months","15-18 months",
                                                "18-21 months", "21-24 months"))
  
  rev.res$ptest.f=sprintf("%0.1f",rev.res$est)
  
  return(list(rev.data=rev.data, rev.res=rev.res, rev.cohort=rec.cohort))
}



#----------------------------------------------
# mark the start of wasted of not wasted episodes 
#----------------------------------------------

mark_episodes <- function(d){
  
  d$wasting_episode = ifelse(d$agedays==min(d$agedays) & d$wast==0, "Not Wasted", d$wasting_episode)
  d$wasting_episode = ifelse(d$agedays==min(d$agedays) & d$wast==1, "Wasted", d$wasting_episode)
  d$born_wast_inc= 0
  d$wasting_episode = na.locf(d$wasting_episode, fromLast=F)#Last observation carried forward
  
  return(d)
}

mark_sevepisodes <- function(d){
  
  d$born_sevwast_inc= ifelse(d$agedays==min(d$agedays) & d$sevwast==1,1,0)
  d$sevwasting_episode = ifelse(d$agedays==min(d$agedays) & d$sevwast==0, "Not Severe Wasted", d$sevwasting_episode)
  d$sevwasting_episode = ifelse(d$agedays==min(d$agedays) & d$sevwast==1, "Born Severe Wasted", d$sevwasting_episode)
  d$sevwasting_episode = na.locf(d$sevwasting_episode, fromLast=F)
  d$sevwasting_episode_lag=lag(d$sevwasting_episode)
  
  return(d)
}

#----------------------------------------------
#create functions for rolling sum windows 
#----------------------------------------------

roll_sum_fun <-  function(v, len){ sapply(1:(length(v)),function(x){sum(v[(x+1):(x+len+1)], na.rm=T)})}
lag_sum_fun <-  function(v, len){ sapply(1:(length(v)),function(x){ifelse((x-1-len)<0,
                                                                          sum(v[0:(x-1)], na.rm=T),
                                                                          sum(v[(x-1-len):(x-1)], na.rm=T))})}
#function to always round 0.5 up
round2 = function(x, n) {
  posneg = sign(x)
  z = abs(x)*10^n
  z = z + 0.5
  z = trunc(z)
  z = z/10^n
  z*posneg
}


#----------------------------------------------
# Mean and 95% CI function 
#----------------------------------------------
mean95CI <- function(Y, id=rep(1:length(Y)), persontime=NULL, proportion=F, percent=F, count=F){
  
  if(proportion==F){
    if(count==T){
      IR.CI <- pois.exact(Y, pt = persontime, conf.level = 0.95)[3:5] 
      mean_ci <- data.frame(N=Y, Mean=IR.CI[1], SD=NA, Robust.SE=NA ,  Lower.95.CI=IR.CI[2] ,  Upper.95.CI=IR.CI[3] )
      colnames(mean_ci) <- c("N","Mean","SD","Robust SE", "Lower 95%CI", "Upper 95%CI") 
    }else{
      if(!is.na(mean(Y[complete.cases(Y)]))){
        mudat <- data.frame(id = id, Y = Y)
        mudat <- mudat[complete.cases(mudat), ]
        n.sub <- dim(mudat)[1]
        fit <- glm(Y ~ 1, family = gaussian, data = mudat)
        vcovCL <- sandwichSE(mudat, fm = fit, cluster = mudat$id)
        rfit <- coeftest(fit, vcovCL)
        lb <- rfit[1, 1] - 1.96 * rfit[1, 2]
        ub <- rfit[1, 1] + 1.96 * rfit[1, 2]
        mean_ci <- matrix(c(n.sub, rfit[1, 1], sd(mudat$Y), rfit[1, 
                                                                 2], lb, ub), nrow = 1, ncol = 6)
        colnames(mean_ci) <- c("N", "Mean", "SD", "Robust SE", "Lower 95%CI", 
                               "Upper 95%CI")
        
      }else{
        mean_ci <- data.frame(N=NA, Mean=NA, SD=NA, `Robust SE`=NA, `Lower 95%CI`=NA, `Upper 95%CI`=NA)
        colnames(mean_ci) <- c("N", "Mean", "SD", "Robust SE", "Lower 95%CI", "Upper 95%CI")  
      }
    }
  }else{
    
    require(binom)
    # Find the number of obs
    n = length(Y[!is.na(Y)])
    if(percent==T){
      CR.res<-binom.confint(sum(Y/100, na.rm = T), n, method="exact")
    }else{
      CR.res<-binom.confint(sum(Y, na.rm = T), n, method="exact")
    }
    mean_ci <- data.frame(N=n, Mean=CR.res[4], SD=NA, `Robust SE`=NA, `Lower 95%CI`=CR.res[5], `Upper 95%CI`=CR.res[6])
    colnames(mean_ci) <- c("N", "Mean", "SD", "Robust SE", "Lower 95%CI", "Upper 95%CI")  
  }
  return(mean_ci)
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


#Recovery summary measures ooling function
summary_rev_df <- function(d, Age="0-3 months"){
  res=d %>%
    group_by(studyid,country) %>%
    summarise(mn=mean(recovered,na.rm=TRUE),
              n=sum(recovered,na.rm=TRUE),
              N=sum(!is.na(recovered))) %>%
    mutate(agecat=Age)
  return(res)
}








#Function to calculate the robust SEs
sandwichSE <- function (dat, fm, cluster) 
{
  require(sandwich, quietly = TRUE)
  require(lmtest, quietly = TRUE)
  if (is.factor(cluster)) {
    cluster <- droplevels(cluster)
  }
  M <- length(unique(cluster))
  N <- length(cluster)
  K <- fm$rank
  dfc <- (M/(M - 1)) * ((N - 1)/(N - K))
  uj <- apply(estfun(fm), 2, function(x) tapply(x, cluster, 
                                                sum))
  vcovCL <- dfc * sandwich(fm, meat = crossprod(uj)/N)
  return(vcovCL)
}


#----------------------------------------------
#create function to calc unstrat and age stat incidence
#----------------------------------------------
WastIncCalc<-function(d, washout=60, dropBornWasted=F, stunt=F){
  
  require(tidyverse)
  require(zoo)  
  
  #Filter out extreme or missing whz values
  if(stunt==F){
  d <- d %>%  ungroup() %>% filter(!is.na(whz)) %>%
    filter(whz > (-5) & whz < 5)
  }else{
    d$whz <- d$haz
    d <- d %>%  ungroup() %>% filter(!is.na(whz)) %>%
      filter(whz >= (-6) & whz <= 6)    
  }
  #Remove duplicate ages
  ndropped <- nrow(d[duplicated(cbind(d$subjid, d$agedays)), ])
  d <- d[!duplicated(cbind(d$subjid, d$agedays)), ]
  if(ndropped>0) cat("\n-----------------------------------\n",ndropped," observations dropped due to duplicate ages\n_----------------------------------\n")
  
  
  #Extract required columns and save others to merge back in later
  othercolumns <- d %>% subset(., select= -c(whz)) 
  d <- d %>% subset(., select= c(subjid, whz, agedays)) 
  
  
  #generate wasting and severe wasting indicators
  d$wast= ifelse(d$whz < (-2),1,0)
  d$sevwast= ifelse(d$whz < (-3),1,0)
  
  # #Generate variables for length of period in days between prior observation and current observations
  # #and the next observations and current observations. Also generate variables for if child changed from
  # #not wasted to wasted (or severe wasted) between the last observation and the current observation.
  d <- d %>%
    arrange(subjid, agedays) %>%
    group_by(subjid) %>%
    mutate(
      agelag=lag(agedays),
      wastlag=lag(wast),
      sevwastlag=lag(sevwast),
      midpoint_age = agedays - (agedays - agelag)/2,
      wastchange = wast - lag(wast),
      sevwastchange = sevwast - lag(sevwast),
      delta_age = agedays-agelag,
      firstmeasure = agedays==min(agedays)
    ) %>%
    as.data.frame()
  
  d$agelag[d$firstmeasure] <- 0
  d$wastlag[d$firstmeasure] <- 0
  d$sevwastlag[d$firstmeasure] <- 0
  d$wastchange[d$firstmeasure] <- d$wast[d$firstmeasure]
  d$sevwastchange[d$firstmeasure] <- d$sevwast[d$firstmeasure]
  d$midpoint_age[is.na(d$midpoint_age)] <- d$agedays[is.na(d$midpoint_age)]/2
  d <- d %>% group_by(subjid) %>% mutate(next_midpoint = lead(midpoint_age), last_midpoint = lag(midpoint_age))
  #                                        delta_age = next_midpoint-midpoint_age)
  d$delta_age[d$firstmeasure] <-d$agedays[d$firstmeasure]
  
  #Length of each observation period
  # d <- d %>% group_by(subjid) %>% 
  #   mutate(
  #     next_midpoint = lead(midpoint_age)
  #   )
  
  #Assume 30 day period after final measurement (so midpoint will be 15 days after final measure)
  d$last_midpoint[d$firstmeasure] <- 0
  d$next_midpoint[is.na(d$next_midpoint)] <- d$agedays[is.na(d$next_midpoint)] + 15
  d$period_length <- (d$next_midpoint - d$midpoint_age)
  
  
  
  N <- nrow(d)
  d$washout_period_lead <- d$washout_period_lag <- rep(T, N)
  d$future_sevwast <- d$future_wast <-  d$past_sevwast <- d$past_wast <- rep(0, N)
  
  for(i in 1:washout){
    
    d <- d %>% group_by(subjid) %>%
      mutate(
        wast_lag_i  = lag(wastlag, i),
        sevwast_lag_i  = lag(sevwast, i),
        days_lag_i = abs(lag(midpoint_age, i) - midpoint_age),
        wast_lead_i  = lead(wast, i),
        sevwast_lead_i  = lead(sevwast, i),
        days_lead_i = abs(lead(midpoint_age, i) - midpoint_age)
      )
    
    d$washout_period_lag[d$days_lag_i > washout] <- F
    d$washout_period_lead[d$days_lead_i > washout] <- F
    
    if(i==1){d$past_wast[(d$wastlag==1 | d$wast_lag_i==1) & d$washout_period_lag==T] <- 1}else{
      d$past_wast[d$wast_lag_i==1 & d$washout_period_lag==T] <- 1
    }
    d$past_sevwast[d$sevwast_lag_i==1 & d$washout_period_lag==T] <- 1              
    d$future_wast[d$wast_lead_i==1 & d$washout_period_lead==T] <- 1
    d$future_sevwast[d$sevwast_lead_i==1 & d$washout_period_lead==T] <- 1
    
    #Stop for loop if all current leading and lagging observations are beyond washout period
    if(min(d$days_lead_i, na.rm=T) & min(d$days_lag_i, na.rm=T) > washout) break
  }
  
  d <- d %>% 
    subset(., select= -c(washout_period_lag, washout_period_lead, 
                         wast_lag_i, sevwast_lag_i, days_lag_i, 
                         wast_lead_i, sevwast_lead_i, days_lead_i)) %>% 
    ungroup() %>% as.data.frame()
  
  head(d,30)
  
  #---------------------------------------------------------
  #Calculate wasting and wasting recovery incidence and risk
  #---------------------------------------------------------
  d$wast_rec_inc <- d$sevwast_rec_inc <- d$wast_inc <- d$sevwast_inc <- rep(0, N)
  d$sevwast_rec_risk <- d$wast_rec_risk <- d$sevwast_risk <- d$wast_risk <-  rep(0, N)
  
  d$wast_inc[d$wastchange==1 & d$past_wast==0] <- 1 #Wasting incidence if at risk of wasting and change in status between prior and current observation
  d$wast_rec_inc[d$wastchange== -1 & d$future_wast==0] <- 1 #Recovery from wasting if status change to not wasted and no new wasting in the future washout period
  
  d$wast_inc[d$wastchange!=1 | d$past_wast==1] <- 0 
  d$wast_rec_inc[d$wastchange!= -1 | d$future_wast==1] <- 0  
  
  #FIXED!
  
  #Remove incidences of wasting if there has not been recovery from prior wasting episode
  #Is there a cleaner way of preventing recording the incidences earlier?
  #In a few rare cases, recovery hasn't occured yet, but d$wastchange==1 & d$past_wast==0
  #This happens if, for the first nonwasted measure after a series of wasted ones, the next
  #wasting episode is within 60 days (so no recovery), but from that wasting episode, it looks
  #like there has been 60 days without wasting (so incident episode), because the last wasted measure
  #is beyond the 60 day period.
  # table(d$wast_inc)
  # table(d$wast_rec_inc)
  # 
  # d <- d %>% group_by(subjid) %>% 
  #   mutate(sum_wast_inc=cumsum(wast_inc),
  #          sum_wast_rec=cumsum(wast_rec_inc))
  # for(i in 1:nrow(d)){
  #   if(d$wast_inc[i]==1 & (d$sum_wast_inc[i]-d$sum_wast_rec[i] > 1)){
  #     d$wast_inc[i] <- 0 
  #     d$past_wast[i] <- 1
  #     d <- d %>% group_by(subjid) %>% 
  #       mutate(sum_wast_inc=cumsum(wast_inc),
  #              sum_wast_rec=cumsum(wast_rec_inc))        
  #   }
  #   if(d$wast_rec_inc[i]==1 & (d$sum_wast_inc[i]-d$sum_wast_rec[i] < 0)){
  #     d$wast_rec_inc[i] <- 0 
  #     d$future_wast[i] <- 1
  #     d <- d %>% group_by(subjid) %>% 
  #       mutate(sum_wast_inc=cumsum(wast_inc),
  #              sum_wast_rec=cumsum(wast_rec_inc))  
  #   }
  # }
  # table(d$wast_inc)
  
  
  #d <- subset(d, select = -c(sum_wast_inc,sum_wast_rec))
  
  #Indicate length of incident episodes
  d$wasting_episode <- rep(NA, nrow(d))
  d$wasting_episode[d$wast_inc==1] <- "Wasted"
  d$wasting_episode[d$wast_rec_inc==1] <- "Not Wasted"
  d <- d %>% group_by(subjid) %>%  arrange(subjid, agedays)
  
  #Have to mark first observations as wasted or not wasted if dropBornWasted=F
  if(dropBornWasted==F){
    d <- d %>% group_by(subjid) %>%
      do(mark_episodes(.))
  }else{
    d <- d %>% group_by(subjid) %>% arrange(subjid, agedays) %>%
      mutate(wasting_episode = ifelse(agedays==min(agedays) & wast==0, "Not Wasted", wasting_episode),
             wasting_episode = ifelse(agedays==min(agedays) & wast==1, "Born Wasted", wasting_episode),
             born_wast_inc= ifelse(agedays==min(agedays) & wasting_episode=="Born Wasted",1,0),
             wasting_episode = na.locf(wasting_episode, fromLast=F),  #Last observation carried forward 
             wast_inc = ifelse(wasting_episode=="Born Wasted",0, wast_inc)) %>%
      ungroup() 
  }
  
  
  
  #Indicate risk of wasting or recovery 
  d$wast_risk[(d$wasting_episode=="Not Wasted" & d$past_wast==0) | d$wast_inc==1] <- 1 
  d$wast_rec_risk[(d$wasting_episode!="Not Wasted" & d$wast_inc!=1) | d$wast_rec_inc==1] <- 1 
  d$wast_washout <- 0
  d$wast_washout[(d$wasting_episode=="Not Wasted" & d$past_wast==1 & d$wast_rec_inc!=1)] <-1 
  
  #Check that all obs fit in one category
  table(d$wast_risk, d$wast_rec_risk, d$wast_washout)
  
  #Calculate duration of wasting and non-wasted episodes
  d <- d %>%  group_by(subjid) %>%
    mutate(episode_ID = cumsum(born_wast_inc+wast_inc+wast_rec_inc) + 1) %>% #Create unique episode ID
    ungroup() %>% group_by(subjid, episode_ID) %>%
    mutate(incident_age = min(midpoint_age),
           maxage=max(agedays))
  
  #Calculate duration for each episode
  #Note: this code implicitly censors the final epsiode as the lead(incident_age) will be NA
  d_episode <- d %>% 
    subset(., select=c(subjid,
                       episode_ID, incident_age)) %>%
    group_by(subjid, episode_ID) %>%
    slice(1) %>% ungroup() %>% group_by(subjid) %>%
    mutate(duration=lead(incident_age)-incident_age) %>%
    subset(., select= -incident_age)
  
  d <- left_join(d, d_episode, by=c("subjid","episode_ID"))
  
  
  
  #Variable for duration of only wasting episodes
  d$wasting_duration <- NA
  d$wasting_duration[d$wasting_episode=="Wasted"] <- d$duration[d$wasting_episode=="Wasted"]
  
  #View duration calculations
  # df <- d %>% subset(., select=c(subjid, agedays, whz, wast_rec_inc, wasting_episode, episode_ID, duration))
  # View(df)
  
  #---------------------------------------------------------
  #Calculate severe wasting and severe wasting recovery incidence and risk
  #---------------------------------------------------------    
  
  #Mark severe wasting changes
  d$sevwast_falter <- NA
  d$sevwast_falter[d$sevwastchange==1 & d$past_sevwast==0] <- 1
  d$sevwast_falter[d$sevwastchange!=1 | d$past_sevwast==1] <- 0
  
  d$born_sevwast_inc<-0
  d$sevwasting_episode <- rep(NA, N)
  d$sevwasting_episode[d$sevwast_falter==1] <- "Severe Wasted"
  d$sevwasting_episode[d$wast_rec_inc==1] <- "Not Severe Wasted"
  
  
  #Have to mark first observations as wasted or not wasted if dropBornWasted=F
  if(dropBornWasted==T){
    
    d <- d %>% group_by(subjid) %>%
      do(mark_sevepisodes(.))
    
  }else{
    d <- d %>% group_by(subjid) %>% 
      mutate(
        sevwasting_episode = ifelse
        (agedays==min(agedays) & sevwast==0, "Not Severe Wasted", sevwasting_episode),
        sevwasting_episode = ifelse(agedays==min(agedays) & sevwast==1, "Severe Wasted", sevwasting_episode),
        sevwasting_episode = na.locf(sevwasting_episode, fromLast=F),
        sevwasting_episode_lag=lag(sevwasting_episode)) %>% #Last observation carried forward 
      ungroup()     
  }
  
  #Indicate incidence of severe wasting and recovery
  d$sevwasting_episode_lag[is.na(d$sevwasting_episode_lag)]<-"Not Severe Wasted"
  d$sevwast_inc <- d$sevwast_rec_inc <- 0
  d$sevwast_inc[d$sevwasting_episode=="Severe Wasted" & (d$sevwasting_episode_lag=="Not Severe Wasted")] <- 1
  d$sevwast_rec_inc[d$sevwasting_episode=="Not Severe Wasted" & (d$sevwasting_episode_lag!="Not Severe Wasted")] <- 1
  
  
  #Create unique severe wasting episode IDs
  d <- d %>%  group_by(subjid) %>%
    mutate(sev_episode_ID = cumsum(sevwast_inc+born_sevwast_inc+sevwast_rec_inc) + 1) %>% #Create unique episode ID
    ungroup() 
  
  #Mark risk of severe wasting and severe wasting recovery 
  d$sevwast_risk[(d$sevwasting_episode!="Severe Wasted" & d$sevwasting_episode!="Born Severe Wasted" & d$past_sevwast==0) | d$sevwast_inc==1] <- 1 
  d$sevwast_rec_risk[((d$sevwasting_episode=="Severe Wasted" | d$sevwasting_episode=="Born Severe Wasted") & d$sevwast_inc!=1) | d$sevwast_rec_inc==1] <- 1 
  
  
  #Calculate duration of severe wasting episodes
  d <- d  %>% group_by(subjid, sev_episode_ID) %>%
    mutate(sev_incident_age = min(midpoint_age),
           sev_maxage=max(agedays))
  
  
  
  d_sev_episode <- d %>% 
    subset(., select=c(subjid, sev_episode_ID, sev_incident_age)) %>%
    group_by(subjid, sev_episode_ID) %>%
    slice(1) %>% ungroup() %>% group_by(subjid) %>%
    mutate(sevduration=lead(sev_incident_age)-sev_incident_age) %>%
    subset(., select= -sev_incident_age)
  
  d <- left_join(d, d_sev_episode, by=c("subjid","sev_episode_ID"))
  
  #Set duration of any censored episode to NA
  d <- d %>% group_by(subjid) %>%
    mutate(sevduration = ifelse(sev_maxage==max(sev_maxage), NA, sevduration)) %>% 
    ungroup()
  
  
  #Variable for duration of only severe wasting episodes
  d$sevwasting_duration <- NA
  if(dropBornWasted==F){
    d$sevwasting_duration[d$sevwasting_episode=="Severe Wasted"] <- d$sevduration[d$sevwasting_episode=="Severe Wasted"]
  }else{
    d$sevwasting_duration[d$sevwasting_episode=="Severe Wasted" | d$sevwasting_episode=="Born Severe Wasted"] <- d$sevduration[d$sevwasting_episode=="Severe Wasted" | d$sevwasting_episode=="Born Severe Wasted"]
  }
  
  
  #Calculate 30,60, 90 day recovery and faltering into severe wasting
  d$period_30d <- d$period_60d <- d$period_90d <- T
  d$wast_rec30d <- d$wast_rec60d <- d$wast_rec90d <- NA
  d$wast_rec30d[d$wast_inc==1]  <- d$wast_rec60d[d$wast_inc==1] <- d$wast_rec90d[d$wast_inc==1] <- 0
  d$sevwast_inc30d <- d$sevwast_inc60d <- d$sevwast_inc90d <- NA
  d$sevwast_inc30d[d$wast_inc==1] <- d$sevwast_inc60d[d$wast_inc==1] <- d$sevwast_inc90d[d$wast_inc==1] <- 0
  for(i in 1:90){
    d <- d %>% group_by(subjid) %>%
      mutate(
        rec_inc_lead_i = lead(wast_rec_inc, i),
        sev_inc_lead_i = lead(sevwast_inc, i),
        days_lead_i = abs(lead(midpoint_age, i) - midpoint_age)
      )
    
    d$period_30d[d$days_lead_i > 30] <- F
    d$period_60d[d$days_lead_i > 60] <- F
    d$period_90d[d$days_lead_i > 90] <- F
    
    d$wast_rec30d[d$wast_inc==1 & d$period_30d & d$rec_inc_lead_i==1] <- 1
    d$wast_rec60d[d$wast_inc==1 & d$period_60d & d$rec_inc_lead_i==1] <- 1
    d$wast_rec90d[d$wast_inc==1 & d$period_90d & d$rec_inc_lead_i==1] <- 1
    
    d$sevwast_inc30d[d$wast_inc==1 & d$period_30d & d$sev_inc_lead_i==1] <- 1
    d$sevwast_inc60d[d$wast_inc==1 & d$period_60d & d$sev_inc_lead_i==1] <- 1
    d$sevwast_inc90d[d$wast_inc==1 & d$period_90d & d$sev_inc_lead_i==1] <- 1
    
    d$wast_rec30d[d$wast_inc==1 & d$period_30d & d$rec_inc_lead_i==0 & d$wast_rec30d!=1] <- 0
    d$wast_rec60d[d$wast_inc==1 & d$period_60d & d$rec_inc_lead_i==0 & d$wast_rec60d!=1] <- 0
    d$wast_rec90d[d$wast_inc==1 & d$period_90d & d$rec_inc_lead_i==0 & d$wast_rec90d!=1] <- 0
    
    d$sevwast_inc30d[d$wast_inc==1 & d$period_30d & d$sev_inc_lead_i==0 & d$sevwast_inc30d!=1] <- 0
    d$sevwast_inc60d[d$wast_inc==1 & d$period_60d & d$sev_inc_lead_i==0 & d$sevwast_inc60d!=1] <- 0
    d$sevwast_inc90d[d$wast_inc==1 & d$period_90d & d$sev_inc_lead_i==0 & d$sevwast_inc90d!=1] <- 0
    
    #Stop for loop if all current leading observations are beyond 90 days
    if(min(d$days_lead_i, na.rm=T) > 90) break
  }
  
  d <- d %>% group_by(subjid) %>% arrange(subjid, agedays) %>% mutate(end_recovery=1*(last(wast_rec_inc)==1))
  
  #d$incident_time_into_period <- d$delta_age/2
  d$incident_time_into_period <- d$period_length/2
  #d$incident_time_into_period <- 0
  d$delta_age <- d$midpoint_age - d$last_midpoint
  
  #calculate person time for each incidence outcome
  d$pt_wast <- d$delta_age * d$wast_risk #- d$incident_time_into_period * d$wast_inc + d$incident_time_into_period * d$wast_rec_inc + d$delta_age * d$wast_washout 
  d$pt_sevwast <- d$delta_age * d$sevwast_risk #- d$incident_time_into_period * d$sevwast_inc  + d$incident_time_into_period * d$sevwast_rec_inc
  d$pt_wast_rec <- d$delta_age * d$wast_rec_risk #- d$incident_time_into_period * d$wast_rec_inc + d$incident_time_into_period * (d$wast_inc + d$born_wast_inc)
  d$pt_sevwast_rec <- d$delta_age * d$sevwast_rec_risk #- d$incident_time_into_period * d$sevwast_rec_inc + d$incident_time_into_period * (d$sevwast_inc + d$born_sevwast_inc)
  d$pt_washout <- d$delta_age * d$wast_washout 
  #pt_washout <- ifelse(d$end_recovery==0, sum(d$wast_rec_inc) * 60, (sum(d$wast_rec_inc)-1) * 60)
  sum(d$pt_wast, na.rm=T) 
  sum(d$pt_wast_rec, na.rm=T) 
  #sum(d$pt_wast + d$pt_wast_rec + d$pt_washout, na.rm=T) #Should be 35800 in the test data.
  #sum(d$pt_wast + d$pt_wast_rec + pt_washout, na.rm=T) #Should be 35800 in the test data.
  sum(d$pt_wast + d$pt_wast_rec, na.rm=T) #Should be 35800 in the test data.
  
  # df<- d %>% subset(., select=c(subjid,whz,agedays,midpoint_age,delta_age,next_midpoint,period_length,past_wast,future_wast,wast_inc,wast_rec_inc,wast_risk,wast_rec_risk,wasting_episode,born_wast_inc,wast_washout,episode_ID,pt_wast,pt_wast_rec,pt_washout))
  # write.table(df, "C:/Users/andre/Downloads/mydata.txt", sep="\t")
  #df <- d %>% subset(., select=c(agedays, midpoint_age, pt_wast, pt_wast_rec, pt_washout))
  
  #Drop intermediate variables
  d <- subset(d, select = -c(agelag, wastlag, sevwastlag, midpoint_age, wastchange, sevwastchange, past_wast, past_sevwast,
                             future_wast, future_sevwast,  sevwast_falter, sevwasting_episode_lag, sev_incident_age, sev_maxage,
                             sevduration, rec_inc_lead_i, sev_inc_lead_i, days_lead_i, period_30d,period_60d,period_90d, next_midpoint,
                             incident_time_into_period, delta_age
  )) %>%
    ungroup() %>% as.data.frame()
  # if(dropBornWasted==T){
  #   d <- subset(d, select = -c(born_wast_inc, born_sevwast_inc)) %>%
  #     ungroup() %>% as.data.frame()      
  # }
  
  #merge back in other columns
  d <- merge(d, othercolumns, by=c("subjid", "agedays"))
  
  #rename columns to match other functions
  d <- d %>% rename(wast_rec = wast_rec_inc,
                    sevwast_rec = sevwast_rec_inc) 
  
  colnames(d) <- tolower(colnames(d))
  
  d <- d %>% arrange(subjid, agedays)
  
  return(d)
}  




