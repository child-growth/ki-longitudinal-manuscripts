##########################################
# ki longitudinal manuscripts
# stunting analysis

# For Harriet Torless WHO ask
# What percent of children stunted at 2yrs were
# -stunted at birth
# stunted before 6 months
##########################################


#----------------------------------------
# Load functions and data
#----------------------------------------

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# reloading because some overlap with stunting
source(paste0(here::here(), "/0-project-functions/0_descriptive_epi_shared_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_descriptive_epi_stunt_functions.R"))

d <- readRDS(paste0(ghapdata_dir, "stunting_data.rds"))

# check included cohorts
assert_that(setequal(unique(d$studyid), monthly_and_quarterly_cohorts),
            msg = "Check data. Included cohorts do not match.")

head(d)
d <- d %>% subset(., select = -c(tr))

#TEMP
#subset to those with birth measures
d <- d %>% group_by(studyid, subjid) %>% filter(min(agedays) < 8) %>% filter(agedays < 24 * 30.4167) 

#drop one LA and European study
d <- d %>% filter(region=="Africa" | region=="South Asia")


# 
colnames(d)
d <- d %>% select(studyid, country, region, subjid, agedays, haz, measid)
d <- calc.ci.agecat(d, range = 3, birth="no")
table(d$agecat)
d$agecat <- as.character(d$agecat)
d$agecat[(d$agecat %in% c("8 days-3 months","3-6 months"))] <- "8 days-6 months"
d$agecat[!(d$agecat %in% c("Birth", "8 days-6 months"))] <- "6-24 months"
d$agecat <- factor(d$agecat, levels = c("Birth", "8 days-6 months","6-24 months"))
table(d$agecat)

#----------------------------------------
#Subset to stunted by 2 years
#----------------------------------------

#subset to children stunted at 2 years
dim(d)
d <- d %>% 
  group_by(studyid,country,subjid) %>%
  arrange(studyid,subjid,agedays) %>%
  filter(min(haz, na.rm=T) < (-2)) %>%
  group_by(studyid,country,subjid, agecat) %>%
  mutate(minhaz = min(haz, na.rm=T))
dim(d)


#subset to at lest 10 obs per age
d <- d %>% group_by(studyid, country, agecat) %>% mutate(N=length(unique(paste0(studyid,"-",subjid)))) %>%
  group_by(studyid, country) %>% filter(min(N) > 10) %>% group_by(studyid, country, subjid) %>% mutate(Nmeas=length(unique(agecat))) %>% filter(Nmeas>2)



table(d$Nmeas)
length(unique(paste0(d$studyid,"-",d$country)))
length(unique(paste0(d$studyid,"-",d$subjid)))

#----------------------------------------
# Helper functions
#----------------------------------------

# agelst3 = list(
#   "Birth",
#   "8 days-3 months",
#   "3-6 months",
#   "6-9 months",
#   "9-12 months",
#   "12-15 months",
#   "15-18 months",
#   "18-21 months",
#   "21-24 months"
# )

agelst3 = list(
  "Birth",
  "8 days-6 months",
  "6-24 months"
)


# d=datatable=dstunt
# age_list=agelst3
# birth_strat = TRUE
# severe = FALSE
# birthstrat = birth_strat
# agelist = age_list
# severe.stunted = severe
# method = "REML"

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
    
    # evs = d %>%
    #   filter(!is.na(agecat)) %>%
    #   group_by(studyid,country,subjid) %>%
    #   arrange(studyid,subjid) %>%
    #   #create variable with minhaz by age category, cumulatively
    #   mutate(minhaz=ifelse(agecat=="Birth",min(haz[agecat=="Birth"]),
    #                        ifelse(agecat=="8 days-3 months",min(haz[agecat=="Birth" | agecat=="8 days-3 months"]),
    #                               ifelse(agecat=="3-6 months",min(haz[agecat=="Birth" | agecat=="8 days-3 months" | agecat=="3-6 months"]),
    #                                      ifelse(agecat=="6-9 months",min(haz[agecat=="Birth" | agecat=="8 days-3 months" | agecat=="3-6 months"|agecat=="6-9 months"]),
    #                                             ifelse(agecat=="9-12 months",min(haz[agecat=="Birth" | agecat=="8 days-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"]),
    #                                                    ifelse(agecat=="12-15 months",min(haz[agecat=="Birth" | agecat=="8 days-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"]),
    #                                                           ifelse(agecat=="15-18 months",min(haz[agecat=="Birth" | agecat=="8 days-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"|agecat=="15-18 months"]),
    #                                                                  ifelse(agecat=="18-21 months",min(haz[agecat=="Birth" | agecat=="8 days-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"|agecat=="15-18 months"|agecat=="18-21 months"]),
    #                                                                         ifelse(agecat=="21-24 months",min(haz[agecat=="Birth" | agecat=="8 days-3 months" | agecat=="3-6 months"|agecat=="6-9 months"|agecat=="9-12 months"|agecat=="12-15 months"|agecat=="15-18 months"|agecat=="18-21 months"|agecat=="21-24 months"]),
    #                                                                                min(haz)))))))))))
    
    evs = d %>%
      filter(!is.na(agecat)) %>%
      group_by(studyid,country,subjid) %>%
      arrange(studyid,subjid) %>%
      #create variable with minhaz by age category, cumulatively
      mutate(minhaz=ifelse(agecat=="Birth",min(haz[agecat=="Birth"]),
                           ifelse(agecat=="8 days-6 months",min(haz[agecat=="Birth" | agecat=="8 days-6 months"]),
                                         ifelse(agecat=="6-24 months",min(haz[agecat=="Birth" | agecat=="8 days-6 months" | agecat=="6-24 months"]), min(haz)))))
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
    filter(N>=10)
  
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
  ci.res=as.data.frame(rbindlist(ci.res, fill=TRUE))
  ci.res = ci.res %>%
    mutate(est=est*100, lb=lb*100, ub=ub*100)
  ci.res$ptest.f=sprintf("%0.0f",ci.res$est)
  ci.res$agecat=levels(cuminc.data$agecat)
  
  return(list(evs=evs, cuminc.data=cuminc.data, ci.res=ci.res, ci.cohort=ci.cohort))
}





calc_ci = function(datatable, age_list, birth_strat, severe){
  ci.data <- summary.ci(datatable, birthstrat = birth_strat, agelist = age_list, severe.stunted = severe, method = "REML")
  ci.region <- datatable %>% group_by(region) %>% do(summary.ci(., agelist = age_list,  birthstrat = birth_strat, severe.stunted = severe, method = "REML")$ci.res)
  ci.cohort <-
    ci.data$ci.cohort %>% subset(., select = c(cohort, region, agecat, nchild,  yi,  ci.lb,  ci.ub)) %>%
    rename(est = yi,  lb = ci.lb,  ub = ci.ub, nmeas=nchild)
  
  cuminc <- bind_rows(
    data.frame(cohort = "pooled", region = "Overall", ci.data$ci.res),
    data.frame(cohort = "pooled", ci.region),
    ci.cohort
  )
  return(list(ci.data=ci.data, cuminc=cuminc))
}





dstunt <- d
head(dstunt)

summary(dstunt$haz)

# df <- dstunt %>% filter(studyid=="CMC-V-BCS-2002", country=="INDIA", subjid=="10")
# df  
# 
# cuminc3 = calc_ci(df, age_list=agelst6, birth_strat = FALSE, severe = FALSE)
# res <- cuminc3$ci.data$ci.res
# res


cuminc3 = calc_ci(dstunt, age_list=agelst3, birth_strat = TRUE, severe = FALSE)
cuminc3.region <- dstunt %>% group_by(region) %>% do(summary.ci(., agelist = agelst3,  birthstrat = TRUE, severe.stunted = FALSE, method = "REML")$ci.res)


res <- bind_rows(cuminc3$ci.data$ci.res, cuminc3.region)
res$region <- as.character(res$region)
res$region[is.na(res$region)] <- "Overall"
res <- res %>% filter(region!="N.America & Europe", agecat %in% c("Birth", "8 days-6 months"))

res2 <- res %>% select(region, agecat, nstudy.f, nmeas.f, est, lb, ub)
knitr::kable(res2, digits=2)


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
    filter(N>=10)
  
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
  ci.res=as.data.frame(rbindlist(ci.res, fill=TRUE))
  ci.res = ci.res %>%
    mutate(est=est*100, lb=lb*100, ub=ub*100)
  ci.res$ptest.f=sprintf("%0.0f",ci.res$est)
  ci.res$agecat=levels(cuminc.data$agecat)
  
  
  return(list(ip.data=cuminc.data, ip.res=ci.res, ip.cohort=ci.cohort))
}


calc_ip = function(datatable, age_list, severe){
  ip.data <- summary.stunt.incprop(datatable, agelist = age_list, severe.stunted = severe, method = calc_method)
  ip.region <- datatable %>% group_by(region) %>% do(summary.stunt.incprop(., agelist = age_list, severe.stunted = severe, method = calc_method)$ip.res)
  ip.cohort <-
    ip.data$ip.cohort %>% 
    subset(., select = c(cohort, region, agecat, nchild,  yi,  ci.lb,  ci.ub)) %>%
    rename(est = yi,  lb = ci.lb,  ub = ci.ub, nmeas=nchild)
  
  
  ip <- bind_rows(
    data.frame(cohort = "pooled", region = "Overall", ip.data$ip.res),
    data.frame(cohort = "pooled", ip.region),
    ip.cohort
  )
  return(ip)
}


calc_method="REML"
ip3 = calc_ip(dstunt, age_list=agelst3, severe = FALSE)
res3<- ip3 %>% filter(cohort=="pooled") %>% select(region, agecat, nstudy.f, nmeas.f, est, lb, ub)
knitr::kable(res3, digits=2)

table(dstunt$country)
table(dstunt$studyid, dstunt$country)
