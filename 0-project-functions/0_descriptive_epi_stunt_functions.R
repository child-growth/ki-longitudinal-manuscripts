##############################################
# summary.prev.haz
##############################################
# Documentation: summary.prev.haz
# Usage: summary.prev.haz(d, severe.stunted = F)
# Description: Provides summary of studies, including count of measurements, estimate of random effects, and cohort specific results.
# Arguments/Options:
# d: a data set that contains the following attributes:
#   - agecat
#   - studyid
#   - country
#   - subjid
#   - haz
# severe.stunted: a boolean, with default value FALSE. 
#   - When set to FALSE, individuals are considered stunted when HAZ is less than 2. 
#   - When set to TRUE, individuals are considered students when HAZ is less than 3.
# method: a string indicating the pooling method used by the rma function.
#   - REML is for random effects
#   - FE is for fixed effects
#
# Output: A list of tables:
#   - prev.data: includes the number of measurements, proportion/count of stunted children in each study for each age category
#   - prev.res: estimated random effects and CI bounds of studies grouped by age category
#   - prev.cohort: estimated random effects and CI bounds for each specific cohort

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
  prev.cohort=as.data.frame(rbindlist(prev.cohort))
  prev.cohort=cohort.format(prev.cohort,y=prev.cohort$yi,
                            lab=  levels(prev.data$agecat))
  
  # estimate random effects, format results
  prev.res=lapply((levels(prev.data$agecat)), function(x)
    fit.rma(data=prev.data, ni="nmeas", xi="nxprev",age=x ,measure="PLO",nlab="children", method=method))
  prev.res=as.data.frame(rbindlist(prev.res))
  prev.res$est=as.numeric(prev.res$est)
  prev.res$lb=as.numeric(prev.res$lb)
  prev.res$ub=as.numeric(prev.res$ub)
  prev.res = prev.res %>%
    mutate(est=est*100,lb=lb*100,ub=ub*100)
  
  prev.res$agecat=factor(levels(prev.data$agecat))
  prev.res$ptest.f=sprintf("%0.0f",prev.res$est)
  
  return(list(prev.data=prev.data, prev.res=prev.res, prev.cohort=prev.cohort))
}

##############################################
# summary.ci
##############################################
# Documentation: summary.ci
# Usage: summary.ci(d, severe.stunted=F, 
#                      agelist=list("0-3 months","3-6 months","6-9 months","9-12 months",
#                                   "12-15 months","15-18 months","18-21 months","21-24 months"))
# Description: Provides summary for cummulative indicidence of studies, including number of incident cases, estimate of random effeects, and results from specific cohorts
# Arguments/Options:
# d: a data set that contains the following attributes:
#   - agecat
#   - studyid
#   - country
#   - subjid
#   - haz
# severe.stunted: a boolean, with default value FALSE. 
#   - When set to FALSE, individuals are considered stunted when HAZ is less than 2. 
#   - When set to TRUE, individuals are considered students when HAZ is less than 3.
# agelist: a list of strings that describe the ranges of each age category.
# method: a string indicating the pooling method used by the rma function.
#   - REML is for random effects
#   - FE is for fixed effects
#
# Output: A list of tables:
#   - cuminc.data: includes the number of measurements, number of incident cases in each study for each age category
#   - ci.res: estimated random effects and CI bounds of studies grouped by age category
#   - ci.cohort: estimated random effects and CI bounds for each specific cohort

summary.ci <- function(d,  severe.stunted=F, birthstrat=F,
                       agelist=list("0-3 months","3-6 months","6-9 months","9-12 months",
                                    "12-15 months","15-18 months","18-21 months","21-24 months"), method="REML"){
  
  
  # identify ever stunted children
  if(!birthstrat){
    
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
                                                                            min(haz))))))))))
  }
  
  if(birthstrat){
    
    evs = d %>%
      filter(!is.na(agecat)) %>%
      group_by(studyid,country,subjid) %>%
      arrange(studyid,subjid) %>%
      #create variable with minhaz by age category, cumulatively
      mutate(minhaz=ifelse(agecat=="Birth",min(haz[agecat=="Birth"]),
                           ifelse(agecat=="8 days-3 months",min(haz[agecat=="Birth" | agecat=="8 days-3 months"]),
                                  ifelse(agecat=="3-6 months",min(haz[agecat=="Birth" | agecat=="8 days-3 months" | agecat=="3-6 months"]),
                                         ifelse(agecat=="6-9 months",min(haz[agecat=="Birth" | agecat=="8 days-3 months" | agecat=="3-6 months"|agecat=="6-9 months"]),
                                                ifelse(agecat=="9-12 months",min(haz[agecat=="Birth" | agecat=="8 days-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"]),
                                                       ifelse(agecat=="12-15 months",min(haz[agecat=="Birth" | agecat=="8 days-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"]),
                                                              ifelse(agecat=="15-18 months",min(haz[agecat=="Birth" | agecat=="8 days-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"|agecat=="15-18 months"]),
                                                                     ifelse(agecat=="18-21 months",min(haz[agecat=="Birth" | agecat=="8 days-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"|agecat=="15-18 months"|agecat=="18-21 months"]),
                                                                            ifelse(agecat=="21-24 months",min(haz[agecat=="Birth" | agecat=="8 days-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"|agecat=="15-18 months"|agecat=="18-21 months"|agecat=="21-24 months"]),
                                                                                   min(haz)))))))))))
  }
  
  
  # create indicator for whether the child was ever stunted
  # by age category
  evs = evs %>%  
    group_by(studyid,country,agecat,subjid) %>%
    summarise(minhaz=min(minhaz)) 
  
  
  if(!severe.stunted){
    evs = evs %>% mutate(ever_stunted=ifelse(minhaz< -2,1,0))
  }
  if(severe.stunted){
    evs = evs %>% mutate(ever_stunted=ifelse(minhaz< -3,1,0))
  }
  
  
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
  
  # estimate random effects, format results
  ci.res=lapply((agelist),function(x)
    fit.rma(data=cuminc.data,ni="N", xi="ncases",age=x,measure="PLO",nlab=" measurements", method=method))
  ci.res=as.data.frame(rbindlist(ci.res))
  ci.res = ci.res %>%
    mutate(est=est*100, lb=lb*100, ub=ub*100)
  ci.res$ptest.f=sprintf("%0.0f",ci.res$est)
  ci.res$agecat=levels(cuminc.data$agecat)
  
  return(list(cuminc.data=cuminc.data, ci.res=ci.res, ci.cohort=ci.cohort))
}


##############################################
# summary.haz
##############################################
# Documentation: summary.haz
# Usage: summary.haz(d)
# Description: Provides summary of studies, including count of measurements, mean HAZ, estimate of random effects, and cohort specific results.
# Arguments/Options:
# d: a data set that contains the following attributes:
#   - agecat
#   - studyid
#   - country
#   - subjid
#   - haz
# method: a string indicating the pooling method used by the rma function.
#   - REML is for random effects
#   - FE is for fixed effects
#
# Output: A list of tables:
#   - haz.data: includes the number of measurements, mean HAZ in each study for each age category
#   - haz.res: estimated random effects and CI bounds of studies grouped by age category
#   - haz.cohort: estimated random effects and CI bounds for each specific cohort

summary.haz <- function(d, method="REML", nmeas_threshold = 50){
  
  # take mean of multiple measurements within age window
  dmn <- d %>%
    filter(!is.na(agecat)) %>%
    group_by(studyid,country,subjid,agecat) %>%
    summarise(haz=mean(haz))
  
  # count measurements per study by age
  # exclude time points if number of measurements per age
  # in a study is < nmeans_threshold
  haz.data = dmn %>%
    filter(!is.na(agecat)) %>%
    group_by(studyid,country,agecat) %>%
    summarise(nmeas=sum(!is.na(haz)),
              meanhaz=mean(haz),
              varhaz=var(haz)) %>%
    filter(nmeas>=nmeas_threshold) 
  
  haz.data <- droplevels(haz.data)
  
  # cohort specific results
  haz.cohort=lapply(as.list(levels(haz.data$agecat)),function(x) 
    fit.escalc(data=haz.data, ni="nmeas", yi="meanhaz", vi="varhaz", measure="GEN",age=x))
  haz.cohort=as.data.frame(rbindlist(haz.cohort))
  haz.cohort=cohort.format(haz.cohort,y=haz.cohort$yi,
                           lab=  levels(haz.data$agecat), est="mean")
  
  
  # estimate random effects, format results
  haz.res=lapply(as.list(levels(haz.data$agecat)),function(x) 
    fit.rma(data=haz.data, ni="nmeas", yi="meanhaz", vi="varhaz", nlab="children",age=x, measure = "GEN", method=method))
  haz.res=as.data.frame(rbindlist(haz.res))
  haz.res$agecat=factor(levels(haz.data$agecat))
  haz.res$ptest.f=sprintf("%0.2f",haz.res$est)
  
  
  return(list(haz.data=haz.data, haz.res=haz.res, haz.cohort=haz.cohort))
}

##############################################
# summary.haz.age.sex
##############################################
# Documentation: summary.haz.age.sex
# Usage: summary.haz.age.sex(d)
# Description: Provides summary of studies with age and sex categories, including count of measurements, mean HAZ, estimate of random effects, and cohort specific results.
# Arguments/Options:
# d: a data set that contains the following attributes:
#   - agecat
#   - studyid
#   - country
#   - subjid
#   - haz
# method: a string indicating the pooling method used by the rma function.
#   - REML is for random effects
#   - FE is for fixed effects
#
# Output: A list of tables:
#   - haz.data: includes the number of measurements, mean HAZ in each study for each pair of sex and age category
#   - haz.res: estimated random effects and CI bounds of studies grouped by sex and age category
#   - haz.cohort: estimated random effects and CI bounds for each specific cohort


# summarize mean within age and sex categories
summary.haz.age.sex <- function(d, method="REML"){
  
  # take mean of multiple measurements within age window
  dmn <- d %>%
    filter(!is.na(agecat)) %>%
    group_by(studyid,country,subjid,agecat, sex) %>%
    summarise(haz=mean(haz))
  
  # count measurements per study by age
  # exclude time points if number of measurements per age
  # in a study is <50
  haz.data = dmn %>%
    filter(!is.na(agecat)) %>%
    group_by(studyid,country,agecat, sex) %>%
    summarise(nmeas=sum(!is.na(haz)),
              meanhaz=mean(haz),
              varhaz=var(haz)) %>%
    filter(nmeas>=50) 
  
  haz.data <- droplevels(haz.data)
  
  # cohort specific results stratified within grouping variables
  haz.cohort.female=lapply(levels(haz.data$agecat),function(x) 
    fit.escalc(data=haz.data %>% filter(sex == "Female"),
               ni="nmeas",yi="meanhaz", vi="varhaz", age=x, measure = "GEN"))
  
  haz.cohort.male=lapply(levels(haz.data$agecat),function(x) 
    fit.escalc(data=haz.data %>% filter(sex == "Male"),
               ni="nmeas",yi="meanhaz", vi="varhaz", age=x, measure = "GEN"))
  
  haz.cohort.female.df = as.data.frame(rbindlist(haz.cohort.female)) %>%
    mutate(sex = "Female")
  
  haz.cohort.male.df = as.data.frame(rbindlist(haz.cohort.male)) %>%
    mutate(sex = "Male")
  
  haz.cohort=rbind(haz.cohort.female.df, haz.cohort.male.df)
  
  haz.cohort=cohort.format(haz.cohort,y=haz.cohort$yi,
                           lab=  levels(haz.cohort$agecat), est="mean")
  
  
  # estimate random effects, format results
  haz.res.female=lapply((levels(haz.data$agecat)),function(x) 
    fit.rma(data=haz.data %>% filter(sex == "Female"), 
            ni="nmeas", yi="meanhaz", vi="varhaz", nlab="children",age=x, 
            measure = "GEN", method = method))
  
  haz.res.male=lapply((levels(haz.data$agecat)),function(x) 
    fit.rma(data=haz.data %>% filter(sex == "Male"), 
            ni="nmeas", yi="meanhaz", vi="varhaz", nlab="children",age=x, 
            measure = "GEN", method=method))
  
  haz.df.female = as.data.frame(rbindlist(haz.res.female)) %>%
    mutate(sex = "Female")
  
  haz.df.male = as.data.frame(rbindlist(haz.res.male)) %>%
    mutate(sex = "Male")
  
  haz.res=rbind(haz.df.female, haz.df.male)
  haz.res$agecat=levels(haz.data$agecat)
  haz.res$sex=factor(haz.res$sex)
  
  haz.res$ptest.f=sprintf("%0.0f",haz.res$est)
  
  
  return(list(haz.data=haz.data, haz.res=haz.res, haz.cohort=haz.cohort))
  
  return(out)
  
}



##############################################
# summary.stunt.incprop
##############################################
# Documentation: summary.stunt.incprop
# Usage: summary.stunt.incprop(d, 
#                              severe.stunted=F, 
#                              agelist=list("0-3 months","3-6 months","6-9 months","9-12 months",
#                                           "12-15 months","15-18 months","18-21 months","21-24 months"))
# Description: Provides summary of studies for incidence proportions, including count of measurements, incidence proportions, estimate of random effects, and cohort specific results.
# Arguments/Options:
# d: a data set that contains the following attributes:
#   - agecat
#   - studyid
#   - country
#   - subjid
#   - haz
# severe.stunted: a boolean, with default value FALSE. 
#   - When set to FALSE, individuals are considered stunted when HAZ is less than 2. 
#   - When set to TRUE, individuals are considered students when HAZ is less than 3.
# agelist: a list of strings that describe the ranges of each age category.
# method: a string indicating the pooling method used by the rma function.
#   - REML is for random effects
#   - FE is for fixed effects
#
# Output: A list of tables:
#   - ip.data: includes the number of measurements, incidence proportions in each study for each age category
#   - ip.res: estimated random effects and CI bounds of studies grouped by age category
#   - ip.cohort: estimated random effects and CI bounds for each specific cohort

summary.stunt.incprop <- function(d, severe.stunted=F, agelist=list("0-3 months","3-6 months","6-9 months","9-12 months","12-15 months","15-18 months","18-21 months","21-24 months"), method="REML"){
  
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
  
  # estimate random effects, format results
  ci.res=lapply((agelist),function(x)
    fit.rma(data=cuminc.data,ni="N", xi="ncases",age=x,measure="PLO",nlab=" measurements",method=method))
  ci.res=as.data.frame(rbindlist(ci.res))
  ci.res = ci.res %>%
    mutate(est=est*100, lb=lb*100, ub=ub*100)
  ci.res$ptest.f=sprintf("%0.0f",ci.res$est)
  ci.res$agecat=levels(cuminc.data$agecat)
  
  
  return(list(ip.data=cuminc.data, ip.res=ci.res, ip.cohort=ci.cohort))
}


##############################################
# summary.stunt.incprop
##############################################
# Documentation: create_stunting_age_indicators
# Usage: create_stunting_age_indicators(data)
# Description: Adds a column to a dataframe with an indicator for 
#              whether the child was stunted at birth, had an incident
#              stunting episode after birth but by 3 months, 
#              had an incident stunting episode after birth but by 6 months, 
#              or was never stunted 
# Arguments/Options:
# d: a data set that contains the following attributes:
#   - agedays OR agecat
#   - studyid
#   - country
#   - subjid
#   - haz
#
# Output: A data frame with the indicator described above

create_stunting_age_indicators = function(data, create_agecats = TRUE){
  # create age categories, if needed
  if (create_agecats){
    data = create_age_categories(data)
  } else {
    data = data %>% 
      group_by(studyid, country, subjid, sex, agecat) %>%
      mutate(haz = t1y) %>% 
      select(c(studyid, country, subjid, sex, agecat, haz, region, tr, measurefreq))
  }

  #Calculate onset of stunting
  data_processed <- data %>% group_by(studyid, country, subjid) %>% 
    # create id for each measurement within child
    mutate(measid = seq(subjid)) %>%
    # create indicator for stunting
    mutate(stunt= haz < (-2), 
           stuntid = ifelse(stunt, measid, 9999),
           stunt_inc = 1 * (stunt & stuntid==min(stuntid)))
  
  data_processed <- data_processed[,-which(colnames(data_processed) %in% c("stunt", "stuntid", "whz", "measid"))]

  # check that incident stunting only occurs 
  # once per child
  test_inc = data_processed %>% group_by(studyid, country, subjid) %>%
    summarise(max_inc = sum(stunt_inc))
  assert_that(max(test_inc$max_inc)==1, 
              msg = "Check coding of incidence; some children have 
                     more than one incident stunting episode")
  
  # create age-specific stunting indicators
  data_st <- data_processed %>% 
    filter(stunt_inc==1) %>%
    mutate(
      stunt_inc_birth = ifelse(stunt_inc == 1 & agecat == "Birth", 1, 0),
      stunt_inc_3m = ifelse(stunt_inc == 1 & agecat == "0-3 months", 1, 0),
      stunt_inc_6m = ifelse(stunt_inc == 1 & agecat == "3-6 months", 1, 0),
      stunt_inc_9m = ifelse(stunt_inc == 1 & agecat == "6-9 months", 1, 0),
      stunt_inc_12m = ifelse(stunt_inc == 1 & agecat == "9-12 months", 1, 0),
      stunt_inc_15m = ifelse(stunt_inc == 1 & agecat == "12-15 months", 1, 0)
    ) %>% 
    select(c("studyid", "subjid", "country", "region", "measurefreq", "tr", "sex", "stunt_inc_birth", "stunt_inc_3m", "stunt_inc_6m", "stunt_inc_9m", "stunt_inc_12m", "stunt_inc_15m"))

  # create never stunted category
  data_never_st <- data_processed %>%
    group_by(studyid, country, subjid) %>%
    mutate(min_haz = min(haz)) %>%
    mutate(stunt_never = ifelse(min_haz >= -2, 1, 0)) %>%
    select(-c(min_haz, stunt_inc))
  
  # merge data frames with stunting indicators
  data_st_ind <- left_join(data_never_st, data_st, by = c("studyid", "subjid", "country", "region", "measurefreq", "tr", "sex"))

  # check that incident stunting categories do not overlap
  test_inc_cat <- data_st_ind %>% 
    mutate(sum_cats = stunt_inc_birth + stunt_inc_3m + stunt_inc_6m + stunt_inc_9m + stunt_inc_12m + stunt_never) 
  
  assert_that(max(test_inc_cat$sum_cats[!is.na(test_inc_cat$sum_cats)]) == 1,
              msg = "Check coding of incidence; some children have
                     more than one incident stunting indicator variable")
  
  data_st_ind = data_st_ind %>% 
    mutate(stunt_inc_age = case_when(
      stunt_inc_birth == 1 ~ "Birth",
      stunt_inc_3m == 1 ~ "0-3 months",
      stunt_inc_6m == 1 ~ "3-6 months",
      stunt_inc_9m == 1 ~ "6-9 months",
      stunt_inc_12m == 1 ~ "9-12 months",
      stunt_inc_15m == 1 ~ "12-15 months",
      stunt_never == 1 ~ "Never"
    )) %>%
    select(-c(agecat, stunt_inc_birth,
              stunt_inc_3m, stunt_inc_6m, stunt_inc_9m, stunt_inc_12m, stunt_inc_15m, stunt_never))

  return(data_st_ind)
}

create_age_categories = function(data){
  data_with_agecat = data %>% group_by(studyid, country, subjid) %>% 
    # create age categories
    mutate(agecat = case_when(
      agedays <= 7 ~ "Birth",
      agedays >7 & agedays<= 30.4167*3 ~ "0-3 months",
      agedays >30.4167*3 & agedays<= 30.4167*6 ~ "3-6 months",
      agedays >30.4167*6 & agedays<= 30.4167*9 ~ "6-9 months",
      agedays >30.4167*9 & agedays<= 30.4167*12 ~ "9-12 months",
      agedays >30.4167*12 & agedays<= 30.4167*15 ~ "12-15 months",
      TRUE ~ ""
    ))
  return (data_with_agecat)
}




