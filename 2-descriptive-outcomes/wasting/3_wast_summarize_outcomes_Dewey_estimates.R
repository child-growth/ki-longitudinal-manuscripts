



rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))

load(paste0(ghapdata_dir, "Wasting_inc_data.RData"))
load(file=paste0(ghapdata_dir, "Wasting_inc_sens_data.RData"))


#Subset to monthly
d <- d %>% filter(measurefreq == "monthly")

length(unique(paste0(d$studyid,d$country)))
d %>% ungroup() %>% distinct(region, studyid, country) %>% group_by(region) %>% summarise(N=n())

#Overall absolute counts
df <- d %>% filter(agedays < 24 *30.4167) %>%
            mutate(wast = 1*(whz < -2),
                   sevwast = 1*(whz < -3))
table(df$wast)
prop.table(table(df$wast))*100
table(df$sevwast)
prop.table(table(df$sevwast))*100


#Number wasted by 3 months
df2 <- df %>% filter(agedays < 3 *30.4167) %>% group_by(studyid, country, subjid) %>% mutate(anywast = 1*(min(whz) < -2)) %>% slice(1)
table(df2$anywast)
prop.table(table(df2$anywast))


#Wasting recovery
df2 <- d %>% group_by(studyid, country, subjid) %>% mutate(wast=max(wast_inc), rec=max(wast_rec)) %>% 
              filter(wast==1)
table(df2$rec)
prop.table(table(df2$rec))


#Severe wasting recovery
df2 <- d %>% group_by(studyid, country, subjid) %>% mutate(wast=max(sevwast_inc), rec=max(sevwast_rec)) %>% 
  filter(wast==1)
table(df2$rec)
prop.table(table(df2$rec))



# We realized that it is a very important resource for estimating the number needed to treat (NNT) to prevent a case of severe wasting.  
# So far, we have been basing those estimates only on cross-sectional estimated prevalence of severe wasting (0.5-3% in the control group), 
# but we plan to add some rows to the NNT table for estimates based on longitudinal data – either longitudinal prevalence or longitudinal incidence.

# The challenge is that all of the numbers you provide below start at birth, whereas the SQ-LNS intervention starts at 6 mo.  
# Also, you have listed the percentage of children who experienced one or more episodes, which is not quite the same as something like average number of episodes or 
# longitudinal prevalence of severe wasting.  So we are wondering if you can generate estimates that exclude the 0-6 mo age interval, basically “starting over” at 6 mo 
# to start counting whether the child experiences an episode of severe wasting.  Ideally, this would be for a 12-mo period between 6 and 18 mo, as duration of SQ-LNS in 
# most of the trials was ~12 mo.  Cumulative incidence (% of children with at least one episode) would be good, but even better would be average number of episodes or 
# longitudinal prevalence, if possible.
# 
#  Longitudinal prevalence (and cumulative incidence) from 6-18 months would be straightforward for me to calculate. So this estimate would ignore the <6 month period and
#  just count the total proportion of measurements <-3 from 6-18 months? (i.e. it doesn't matter if a child was already severely wasted based on prior measurements when 
# measured as severely wasted at 6 months versus the 6-month measurement being a new incidence of severe wasting). For the average number of episodes, do you have a working 
# definition of an episode? We've been imposing a rule that a child needs to be above the cutoff for at least 60 days to be considered recovered and at risk for a new episode, 
# but I could also calculate it such that any measurement > -3 counts as recovery to separate out unique episodes. Best,

# #Done:
# -Prev
# -CI of any episode
# 
# #To add
# -longitudinal prevalence
# -number of new episodes -60 day recovery
# -number of new episodes -30 day recovery

                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                              

#Prevalence


#Severe wasting prevalence
d <- calc.prev.agecat(d)
sev.prev.data <- summary.prev.whz(d, severe.wasted = T)
sev.prev.region <- d %>% group_by(region) %>% do(summary.prev.whz(., severe.wasted = T)$prev.res)

sev.prev.cohort <-
  sev.prev.data$prev.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub)

sev.prev <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", sev.prev.data$prev.res),
  data.frame(cohort = "pooled", sev.prev.region),
  sev.prev.cohort
)


#Longitudinal prevalence: 6-18 months
#6-18 cumulative inc of severe wasting
df<- d %>% filter(agedays >= 6 * 30.41867, agedays <= 18 * 30.41867) %>% mutate(agecat=factor("6-18 months"))
prop.table(table(df$whz < -3)) *100

evs = df %>%
  filter(!is.na(whz)) %>%
  group_by(studyid,country,subjid) %>%
  arrange(studyid,subjid) %>%
  mutate(swast=whz < -3) 

table(evs$studyid, evs$swast)
prop.table(table(evs$studyid, evs$swast),1) * 100

# count measurements per study by age
# exclude time points if number of measurements per age
# in a study is <50
prev.data = evs %>%
  group_by(studyid,country,region, agecat) %>%
  summarise(nmeas=sum(!is.na(swast)),
            prev=mean(swast),
            nxprev=sum(swast==1)) %>%
  filter(nmeas>=50) 

prev.data$prev *100

prev.data <- droplevels(prev.data)


# cohort specific results
prev.cohort=lapply((levels(prev.data$agecat)),function(x)
  fit.escalc(data=prev.data,ni="nmeas", xi="nxprev",age=x,meas="PLO"))
prev.cohort=as.data.frame(rbindlist(prev.cohort, use.names=TRUE, fill=T))
prev.cohort=cohort.format(prev.cohort,y=prev.cohort$yi,
                          lab=  levels(prev.data$agecat))

# estimate random effects, format results
prev.res=lapply((levels(prev.data$agecat)),function(x)
  fit.rma(data=prev.data,ni="nmeas", xi="nxprev",age=x,measure="PLO",nlab="children", method="REML"))
prev.res=as.data.frame(rbindlist(prev.res, use.names=TRUE, fill=T))
prev.res$est=as.numeric(prev.res$est)
prev.res$lb=as.numeric(prev.res$lb)
prev.res$ub=as.numeric(prev.res$ub)
prev.res = prev.res %>%
  mutate(est=est*100,lb=lb*100,ub=ub*100)
prev.res$agecat=factor(levels(prev.data$agecat))
prev.res$ptest.f=sprintf("%0.0f",prev.res$est)

prev.res_FE=lapply((levels(prev.data$agecat)),function(x)
  fit.rma(data=prev.data,ni="nmeas", xi="nxprev",age=x,measure="PLO",nlab="children", method="FE"))
prev.res_FE=as.data.frame(rbindlist(prev.res_FE, use.names=TRUE, fill=T))
prev.res_FE$est=as.numeric(prev.res_FE$est)
prev.res_FE$lb=as.numeric(prev.res_FE$lb)
prev.res_FE$ub=as.numeric(prev.res_FE$ub)
prev.res_FE = prev.res_FE %>%
  mutate(est=est*100,lb=lb*100,ub=ub*100)
prev.res_FE$agecat=factor(levels(prev.data$agecat))
prev.res_FE$ptest.f=sprintf("%0.0f",prev.res_FE$est)

# prev.res6_18_region=lapply((levels(prev.data$region)),function(x)
#   fit.rma(data=prev.data,ni="nmeas", xi="nxprev",age=x,measure="PLO",nlab="children", method="REML"))
# names(prev.res6_18_region) <- levels(prev.data$region)

#Cumulative inc 

#6-18 cumulative inc of severe wasting
df<- d %>% filter(agedays >= 6 * 30.41867, agedays <= 18 * 30.41867) %>% mutate(agecat="6-18 months")
evs = df %>%
  group_by(studyid,country,subjid) %>%
  arrange(studyid,subjid) %>%
  mutate(minwhz=min(whz, na.rm=T)) %>%
  mutate(ever_swasted=ifelse(minwhz< -3,1,0),
         agecat=factor(agecat))

cuminc.data= evs%>%
  group_by(studyid,region, country,agecat) %>%
  summarise(
    nchild=length(unique(subjid)),
    nstudy=length(unique(studyid)),
    ncases=sum(ever_swasted),
    N=sum(length(ever_swasted))) %>%
  filter(N>=50) %>% droplevels()

ci.data6_18 <-  lapply(levels(cuminc.data$agecat),function(x)
  fit.rma(data=cuminc.data,ni="N", xi="ncases",age=x,measure="PLO",nlab=" measurements", method="REML"))
ci.data6_18=as.data.frame(rbindlist(ci.data6_18, use.names=TRUE, fill=T))
ci.data6_18$est=as.numeric(ci.data6_18$est)
ci.data6_18$lb=as.numeric(ci.data6_18$lb)
ci.data6_18$ub=as.numeric(ci.data6_18$ub)
ci.data6_18 = ci.data6_18 %>%
  mutate(est=est*100,lb=lb*100,ub=ub*100)
ci.data6_18$ptest.f=sprintf("%0.0f",ci.data6_18$est)


ci.data6_18_region <-  lapply(levels(cuminc.data$region),function(x)
  fit.rma(data=cuminc.data[cuminc.data$region==x,],ni="N", xi="ncases",age="6-18 months",measure="PLO",nlab=" measurements", method="REML"))
ci.data6_18_region=as.data.frame(rbindlist(ci.data6_18_region, use.names=TRUE, fill=T))
ci.data6_18_region$region <- levels(cuminc.data$region)
ci.data6_18_region = ci.data6_18_region %>%
  mutate(est=est*100,lb=lb*100,ub=ub*100)


ci.data6_18_FE <-  lapply(levels(cuminc.data$agecat),function(x)
  fit.rma(data=cuminc.data,ni="N", xi="ncases",age=x,measure="PLO",nlab=" measurements", method="FE"))
ci.data6_18_FE=as.data.frame(rbindlist(ci.data6_18_FE, use.names=TRUE, fill=T))
ci.data6_18_FE$est=as.numeric(ci.data6_18_FE$est)
ci.data6_18_FE$lb=as.numeric(ci.data6_18_FE$lb)
ci.data6_18_FE$ub=as.numeric(ci.data6_18_FE$ub)
ci.data6_18_FE = ci.data6_18_FE %>%
  mutate(est=est*100,lb=lb*100,ub=ub*100)
ci.data6_18_FE$ptest.f=sprintf("%0.0f",ci.data6_18_FE$est)

ci.data6_18_region_FE <-  lapply(levels(cuminc.data$region),function(x)
  fit.rma(data=cuminc.data[cuminc.data$region==x,],ni="N", xi="ncases",age="6-18 months",measure="PLO",nlab=" measurements", method="FE"))
ci.data6_18_region_FE=as.data.frame(rbindlist(ci.data6_18_region_FE, use.names=TRUE, fill=T))
ci.data6_18_region_FE$region <- levels(cuminc.data$region)
ci.data6_18_region_FE = ci.data6_18_region_FE %>%
  mutate(est=est*100,lb=lb*100,ub=ub*100)



#6-18 cumulative inc of severe wasting - dropping those severly wasted at 6 months
df2 <- d30 %>% filter(measurefreq=="monthly" ,agedays >= 6 * 30.41867, agedays <= 18 * 30.41867) %>% mutate(agecat="6-18 months") %>% 
  group_by(studyid, country, subjid) %>% arrange(agedays) %>% filter(first(sevwasting_episode)=="Not Severe Wasted" | sev_episode_id!=first(sev_episode_id))
df3 <- d %>% filter(agedays >= 6 * 30.41867, agedays <= 18 * 30.41867) %>% mutate(agecat="6-18 months") %>% 
  group_by(studyid, country, subjid) %>% arrange(agedays) %>% filter(first(sevwasting_episode)=="Not Severe Wasted")
df4 <- d %>% filter(agedays >= 6 * 30.41867, agedays <= 18 * 30.41867) %>% mutate(agecat="6-18 months") %>% 
  group_by(studyid, country, subjid) %>% arrange(agedays) %>% filter(first(sevwasting_episode)=="Not Severe Wasted"| sev_episode_id!=first(sev_episode_id))
table(df$sevwasting_episode)
table(df2$sevwasting_episode)
table(df3$sevwasting_episode)
table(df4$sevwasting_episode)
table(df$sevwast_inc)
table(df2$sevwast_inc)
table(df3$sevwast_inc)
table(df4$sevwast_inc)
prop.table(table(df$sevwast_inc)) * 100
prop.table(table(df2$sevwast_inc)) * 100
prop.table(table(df3$sevwast_inc)) * 100
prop.table(table(df4$sevwast_inc)) * 100

evs_no_start_inc = df2 %>%
  group_by(studyid,country,subjid) %>%
  arrange(studyid,subjid) %>%
  mutate(minwhz=min(whz, na.rm=T)) %>%
  mutate(ever_swasted=ifelse(minwhz< -3,1,0),
         agecat=factor(agecat))

cuminc.data_no_start_inc= evs_no_start_inc%>%
  group_by(studyid,region, country,agecat) %>%
  summarise(
    nchild=length(unique(subjid)),
    nstudy=length(unique(studyid)),
    ncases=sum(ever_swasted),
    N=sum(length(ever_swasted))) %>%
  filter(N>=50) %>% droplevels()

ci.data6_18_no_start_inc <-  lapply(levels(cuminc.data_no_start_inc$agecat),function(x)
  fit.rma(data=cuminc.data_no_start_inc,ni="N", xi="ncases",age=x,measure="PLO",nlab=" measurements", method="REML"))
ci.data6_18_no_start_inc=as.data.frame(rbindlist(ci.data6_18_no_start_inc, use.names=TRUE, fill=T))
ci.data6_18_no_start_inc$est=as.numeric(ci.data6_18_no_start_inc$est)
ci.data6_18_no_start_inc$lb=as.numeric(ci.data6_18_no_start_inc$lb)
ci.data6_18_no_start_inc$ub=as.numeric(ci.data6_18_no_start_inc$ub)
ci.data6_18_no_start_inc = ci.data6_18_no_start_inc %>%
  mutate(est=est*100,lb=lb*100,ub=ub*100)
ci.data6_18_no_start_inc$ptest.f=sprintf("%0.0f",ci.data6_18_no_start_inc$est)


ci.data6_18_no_start_inc_region <-  lapply(levels(cuminc.data_no_start_inc$region),function(x)
  fit.rma(data=cuminc.data_no_start_inc[cuminc.data_no_start_inc$region==x,],ni="N", xi="ncases",age="6-18 months",measure="PLO",nlab=" measurements", method="REML"))
ci.data6_18_no_start_inc_region=as.data.frame(rbindlist(ci.data6_18_no_start_inc_region, use.names=TRUE, fill=T))
ci.data6_18_no_start_inc_region$region <- levels(cuminc.data_no_start_inc$region)
ci.data6_18_no_start_inc_region = ci.data6_18_no_start_inc_region %>%
  mutate(est=est*100,lb=lb*100,ub=ub*100)

ci.data6_18_no_start_inc_FE <-  lapply(levels(cuminc.data_no_start_inc$agecat),function(x)
  fit.rma(data=cuminc.data_no_start_inc,ni="N", xi="ncases",age=x,measure="PLO",nlab=" measurements", method="FE"))
ci.data6_18_no_start_inc_FE=as.data.frame(rbindlist(ci.data6_18_no_start_inc_FE, use.names=TRUE, fill=T))
ci.data6_18_no_start_inc_FE$est=as.numeric(ci.data6_18_no_start_inc_FE$est)
ci.data6_18_no_start_inc_FE$lb=as.numeric(ci.data6_18_no_start_inc_FE$lb)
ci.data6_18_no_start_inc_FE$ub=as.numeric(ci.data6_18_no_start_inc_FE$ub)
ci.data6_18_no_start_inc_FE = ci.data6_18_no_start_inc_FE %>%
  mutate(est=est*100,lb=lb*100,ub=ub*100)
ci.data6_18_no_start_inc_FE$ptest.f=sprintf("%0.0f",ci.data6_18_no_start_inc_FE$est)

ci.data6_18_no_start_inc_region_FE <-  lapply(levels(cuminc.data_no_start_inc$region),function(x)
  fit.rma(data=cuminc.data_no_start_inc[cuminc.data_no_start_inc$region==x,],ni="N", xi="ncases",age="6-18 months",measure="PLO",nlab=" measurements", method="FE"))
ci.data6_18_no_start_inc_region_FE=as.data.frame(rbindlist(ci.data6_18_no_start_inc_region_FE, use.names=TRUE, fill=T))
ci.data6_18_no_start_inc_region_FE$region <- levels(cuminc.data_no_start_inc$region)
ci.data6_18_no_start_inc_region_FE = ci.data6_18_no_start_inc_region_FE %>%
  mutate(est=est*100,lb=lb*100,ub=ub*100)


ci_res <- bind_rows(bind_rows(ci.data6_18, ci.data6_18_region, ci.data6_18_FE, ci.data6_18_region_FE) %>% mutate(analysis="All episodes"),
                    bind_rows(ci.data6_18_no_start_inc, ci.data6_18_no_start_inc_region, ci.data6_18_no_start_inc_FE, ci.data6_18_no_start_inc_region_FE)%>% mutate(analysis="Excluding episodes starting before 6 months"))
ci_res$region[is.na(ci_res$region)] <- "Overall"
ci_res$method.used[ci_res$method.used=="REML"] <- "Random Effects"
ci_res$method.used[ci_res$method.used=="FE"] <- "Fixed Effects"
ci_res <- ci_res %>% select(est, lb,ub,nmeas.f,nstudy.f,method.used,region,analysis ) %>%
  rename(Estimate=est, `Lower bound`=lb, `Upper bound`=ub)

knitr::kable(ci_res )

#----------------------------------------------------------------------------
#Incidence rate
#----------------------------------------------------------------------------
df<- d %>% filter(agedays >= 6 * 30.41867, agedays <= 18 * 30.41867) %>% mutate(agecat=factor("6-18 months"))
prop.table(table(df$whz < -3)) *100
prop.table(table(df$sevwast_inc)) *100

# manually calculate incident cases, person-time at risk at each time point
cruderate<-df %>%
  summarise(inc.case=sum(sevwast_inc, na.rm=T),ptar=sum(pt_sevwast, na.rm=T)) %>%
  mutate(cruderate=inc.case/ptar)
print(cruderate)

# count incident cases and sum person time at risk per study by age
# exclude time points if number of children per age
# in a study is <50
inc.data = df %>%
  group_by(studyid,country,agecat) %>%
  summarise(ptar=sum(pt_sevwast, na.rm=T),
            n_swast_meas=sum(whz < -3, na.rm=T),
            ncase=sum(sevwast_inc, na.rm=T),
            nchild=length(unique(subjid)),
            nstudy=length(unique(paste0(studyid, country)))) %>%
  filter(nchild>=50 & ptar>100 & !is.na(agecat))
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
  fit.rma(data=inc.data,ni="ptar", xi="ncase",age=x,measure="IR",nlab=" person-days", method="REML"))
ir.res=as.data.frame(rbindlist(ir.res, use.names=TRUE, fill=T))
ir.res$est=as.numeric(ir.res$est)
ir.res$lb=as.numeric(ir.res$lb)
ir.res$ub=as.numeric(ir.res$ub)
ir.res$agecat=levels(inc.data$agecat)

ir.res$pt.f=paste0("N=",format(ir.res$nmeas,big.mark=",",scientific=FALSE),
                   " person-days")
ir.res$ptest.f=sprintf("%0.02f",ir.res$est*12*30.4167) #per 12 months

sum(inc.data$ncase)/sum(inc.data$nchild)

inc.data$ptar2 <- inc.data$nchild #* 12*30.4167
ir.res2=lapply(levels(inc.data$agecat),function(x) fit.rma(data=inc.data,ni="ptar2", xi="ncase",age=x,measure="IR",nlab=" person-days", method="FE"))
ir.res2=as.data.frame(rbindlist(ir.res2, use.names=TRUE, fill=T))
ir.res2
ir.res2$est <- ir.res2$est  #*12*30.4167
ir.res2$lb <- ir.res2$lb  *12*30.4167
ir.res2$ub <- ir.res2$ub  *12*30.4167
ir.res2$ptest.f=sprintf("%0.02f",ir.res2$est*12*30.4167) #per 12 months


#Do now with 30 day recovery
df2<- d30 %>% filter(measurefreq=="monthly") %>%
  filter(agedays >= 6 * 30.41867, agedays <= 18 * 30.41867) %>% mutate(agecat=factor("6-18 months"))
inc.data2 = df2 %>%
  group_by(studyid,country,agecat) %>%
  summarise(ptar=sum(pt_sevwast, na.rm=T),
            ncase=sum(sevwast_inc, na.rm=T),
            nchild=length(unique(subjid)),
            nstudy=length(unique(paste0(studyid, country)))) %>%
  filter(nchild>=50 & ptar>100 & !is.na(agecat))
inc.data2 <- droplevels(inc.data2)
print(inc.data2)



# cohort specific results
inc.cohort=lapply(levels(inc.data2$agecat),function(x)
  fit.escalc(data=inc.data2,ni="ptar", xi="ncase",age=x,meas="IR"))
inc.cohort=as.data.frame(rbindlist(inc.cohort, use.names=TRUE, fill=T))
inc.cohort$agecat=factor(inc.cohort$agecat,levels=
                           levels(inc.data2$agecat))
inc.cohort$yi.f=sprintf("%0.0f",inc.cohort$yi)
inc.cohort$cohort=paste0(inc.cohort$studyid,"-",inc.cohort$country)


# estimate random effects, format results
ir.res3=lapply(levels(inc.data2$agecat),function(x)
  fit.rma(data=inc.data2,ni="ptar", xi="ncase",age=x,measure="IR",nlab=" person-days", method="REML"))
ir.res3=as.data.frame(rbindlist(ir.res3, use.names=TRUE, fill=T))
ir.res3$est=as.numeric(ir.res3$est)
ir.res3$lb=as.numeric(ir.res3$lb)
ir.res3$ub=as.numeric(ir.res3$ub)
ir.res3$agecat=levels(inc.data2$agecat)

ir.res3$pt.f=paste0("N=",format(ir.res3$nmeas,big.mark=",",scientific=FALSE),
                   " person-days")
ir.res3$ptest.f=sprintf("%0.02f",ir.res3$est*12*30.4167) #per 12 months


inc.data2$ptar2 <- inc.data2$nchild *  12*30.4167
ir.res4=lapply(levels(inc.data2$agecat),function(x) fit.rma(data=inc.data2,ni="ptar2", xi="ncase",age=x,measure="IR",nlab=" person-days", method="REML"))
ir.res4=as.data.frame(rbindlist(ir.res4, use.names=TRUE, fill=T))
ir.res4
ir.res4$est <- ir.res4$est  *12*30.4167
ir.res4$lb <- ir.res4$lb  *12*30.4167
ir.res4$ub <- ir.res4$ub  *12*30.4167
ir.res4$ptest.f=sprintf("%0.02f",ir.res4$est*12*30.4167) #per 12 months

ir.res
ir.res2
ir.res3
ir.res4





# count incident cases and sum person time at risk per study by age
# exclude time points if number of children per age
# in a study is <50
inc.data = df %>%
  group_by(studyid,country,agecat) %>%
  summarise(ptar=sum(pt_sevwast, na.rm=T),
            ncase=sum(sevwast_inc, na.rm=T),
            nchild=length(unique(subjid)),
            nstudy=length(unique(paste0(studyid, country)))) %>%
  filter(nchild>=50 & ptar>100 & !is.na(agecat))
inc.data <- droplevels(inc.data)
print(inc.data)




# estimate random effects, format results
ir.res_FE=lapply(levels(inc.data$agecat),function(x)
  fit.rma(data=inc.data,ni="ptar", xi="ncase",age=x,measure="IR",nlab=" person-days", method="FE"))
ir.res_FE=as.data.frame(rbindlist(ir.res_FE, use.names=TRUE, fill=T))
ir.res_FE$est=as.numeric(ir.res_FE$est)
ir.res_FE$lb=as.numeric(ir.res_FE$lb)
ir.res_FE$ub=as.numeric(ir.res_FE$ub)
ir.res_FE$agecat=levels(inc.data$agecat)

ir.res_FE$pt.f=paste0("N=",format(ir.res_FE$nmeas,big.mark=",",scientific=FALSE),
                   " person-days")
ir.res_FE$ptest.f=sprintf("%0.02f",ir.res_FE$est*12*30.4167) #per 12 months


inc.data$ptar2 <- inc.data$nchild *12*30.4167
ir.res2_FE=lapply(levels(inc.data$agecat),function(x) fit.rma(data=inc.data,ni="ptar2", xi="ncase",age=x,measure="IR",nlab=" person-days", method="FE"))
ir.res2_FE=as.data.frame(rbindlist(ir.res2_FE, use.names=TRUE, fill=T))
ir.res2_FE
ir.res2_FE$est <- ir.res2_FE$est  *12*30.4167
ir.res2_FE$lb <- ir.res2_FE$lb  *12*30.4167
ir.res2_FE$ub <- ir.res2_FE$ub  *12*30.4167
ir.res2_FE$ptest.f=sprintf("%0.02f",ir.res2_FE$est*12*30.4167) #per 12 months


#Do now with 30 day recovery
df2<- d30 %>% filter(measurefreq=="monthly") %>%
  filter(agedays >= 6 * 30.41867, agedays <= 18 * 30.41867) %>% mutate(agecat=factor("6-18 months"))
inc.data2 = df2 %>%
  group_by(studyid,country,agecat) %>%
  summarise(ptar=sum(pt_sevwast, na.rm=T),
            ncase=sum(sevwast_inc, na.rm=T),
            nchild=length(unique(subjid)),
            nstudy=length(unique(paste0(studyid, country)))) %>%
  filter(nchild>=50 & ptar>100 & !is.na(agecat))
inc.data2 <- droplevels(inc.data2)
print(inc.data2)



# cohort specific results
inc.cohort=lapply(levels(inc.data2$agecat),function(x)
  fit.escalc(data=inc.data2,ni="ptar", xi="ncase",age=x,meas="IR"))
inc.cohort=as.data.frame(rbindlist(inc.cohort, use.names=TRUE, fill=T))
inc.cohort$agecat=factor(inc.cohort$agecat,levels=
                           levels(inc.data2$agecat))
inc.cohort$yi.f=sprintf("%0.0f",inc.cohort$yi)
inc.cohort$cohort=paste0(inc.cohort$studyid,"-",inc.cohort$country)


# estimate random effects, format results
ir.res3_FE=lapply(levels(inc.data2$agecat),function(x)
  fit.rma(data=inc.data2,ni="ptar", xi="ncase",age=x,measure="IR",nlab=" person-days", method="FE"))
ir.res3_FE=as.data.frame(rbindlist(ir.res3_FE, use.names=TRUE, fill=T))
ir.res3_FE$est=as.numeric(ir.res3_FE$est)
ir.res3_FE$lb=as.numeric(ir.res3_FE$lb)
ir.res3_FE$ub=as.numeric(ir.res3_FE$ub)
ir.res3_FE$agecat=levels(inc.data2$agecat)

ir.res3_FE$pt.f=paste0("N=",format(ir.res3_FE$nmeas,big.mark=",",scientific=FALSE),
                    " person-days")
ir.res3_FE$ptest.f=sprintf("%0.02f",ir.res3_FE$est*12*30.4167) #per 12 months


inc.data2$ptar2 <- inc.data2$nchild *12*30.4167
ir.res4_FE=lapply(levels(inc.data2$agecat),function(x) fit.rma(data=inc.data2,ni="ptar2", xi="ncase",age=x,measure="IR",nlab=" person-days", method="FE"))
ir.res4_FE=as.data.frame(rbindlist(ir.res4_FE, use.names=TRUE, fill=T))
ir.res4_FE
ir.res4_FE$est <- ir.res4_FE$est  *12*30.4167
ir.res4_FE$lb <- ir.res4_FE$lb  *12*30.4167
ir.res4_FE$ub <- ir.res4_FE$ub  *12*30.4167
ir.res4_FE$ptest.f=sprintf("%0.02f",ir.res4_FE$est*12*30.4167) #per 12 months

ir.res_FE
ir.res2_FE
ir.res3_FE
ir.res4_FE



table(df2$studyid, df2$sevwast_inc)
prop.table(table(df2$studyid, df2$sevwast_inc),1) * 100

#raw longitudinal prevalence
#1.9%



wasting_desc_data <- bind_rows(
  data.frame(measure= "Cumulative Incidence", ci.data6_18),
  data.frame(measure= "Cumulative Incidence - Fixed Effects", ci.data6_18_FE),
  data.frame(measure= "Longitudinal Prevalence", prev.res),  
  data.frame(measure= "Longitudinal Prevalence - Fixed Effects", prev.res_FE),
  #data.frame(measure= "Incidence rate per 1000 days at risk- 60 day recovery",  ir.res),
  data.frame(measure= "Episodes per year - 60 day recovery",  ir.res2),
  #data.frame(measure= "Incidence rate per 1000 days at risk - 30 day recovery",  ir.res3),
  data.frame(measure= "Episodes per year - 30 day recovery",  ir.res4),
  #data.frame(measure= "Incidence rate per 1000 days at risk- 60 day recovery, Fixed Effects",  ir.res_FE),
  data.frame(measure= "Episodes per year - 60 day recovery, Fixed Effects",  ir.res2_FE),
  #data.frame(measure= "Incidence rate per 1000 days at risk - 30 day recovery, Fixed Effects",  ir.res3_FE),
  data.frame(measure= "Episodes per year - 30 day recovery, Fixed Effects",  ir.res4_FE)
)

wasting_desc_data <- wasting_desc_data %>% subset(., select = -c(nstudies,   nmeas, se, nmeas.f,  ptest.f, agecat, method.used,nstudy.f)) %>%
  rename(Estimate=est, `Lower bound`=lb, `Upper bound`=ub)
knitr::kable(wasting_desc_data)
        

saveRDS(wasting_desc_data, file = paste0(BV_dir,"/results/sev_wasting_desc_data_6_18.RDS"))



