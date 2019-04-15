
##########################################
# ki longitudinal manuscripts
# ki rma function testing 
# run "summarize outcomes" functions on 
# simulated longitudinal growth data
##########################################

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_descriptive_epi_shared_functions.R"))

d <- readRDS(paste0(here::here(),"/data/simulated test data/testdata.rds"))


#Create dataset with different age categories marked
dprev <- calc.prev.agecat(d)


#----------------------------------------
# Stunting Prevalence and WHZ  - not including yearly studies
#----------------------------------------

# create new function that preps child-specific longitudinal growth data 
# into cohort-specific summary of cases and N's for input into rma function
prep.prev.haz <- function(d, severe.stunted=F){
 
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
}

prev.data <- prep.prev.haz(dprev)


# estimate random effects, format results
prev.res=lapply((levels(prev.data$agecat)),function(x) 
  fit.rma(data=prev.data,ni="nmeas", xi="nxprev",age=x,measure="PLO",nlab="children"))

#Bind into dataframe and clean up
prev.res=as.data.frame(rbindlist(prev.res))
prev.res$est=as.numeric(prev.res$est)
prev.res$lb=as.numeric(prev.res$lb)
prev.res$ub=as.numeric(prev.res$ub)
prev.res = prev.res %>%
  mutate(est=est*100,lb=lb*100,ub=ub*100)
prev.res$agecat=factor(prev.res$agecat,levels=levels(prev.data$agecat))
prev.res$ptest.f=sprintf("%0.0f",prev.res$est)


# cohort specific results
prev.cohort=lapply((levels(prev.data$agecat)),function(x) 
  fit.escalc(data=prev.data,ni="nmeas", xi="nxprev",age=x,meas="PLO"))
prev.cohort=as.data.frame(rbindlist(prev.cohort))
prev.cohort=cohort.format(prev.cohort,y=prev.cohort$yi,
                          lab=  levels(prev.data$agecat))


#return list of underlying data, and overall and cohort-specific estimates
res <- list(prev.data=prev.data, prev.res=prev.res, prev.cohort=prev.cohort)












