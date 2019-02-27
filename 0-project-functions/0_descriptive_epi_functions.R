

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



