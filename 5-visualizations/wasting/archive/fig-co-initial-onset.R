


rm(list = ls())

source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_co_functions.R"))

load("U://ucb-superlearner/data/co-occurrence_data.RData")


#Subset to monthly
d <- d %>% filter(measurefreq == "monthly")

d <- d %>% filter(agedays < 24 * 30.4167)

#Subset to children with multiple measurements under 6 months
d <- d %>% group_by(studyid, subjid) %>% 
    mutate(minage=min(agedays)) %>% 
    filter(minage < 1 * 30.4167)


#Subset to children who ever experience co-occurrent wasting and stunting
dim(d)
d <- d %>% group_by(studyid, subjid) %>% 
  arrange(studyid, subjid, agedays) %>%
  mutate(wast=1*(whz < (-2)),
         stunt = 1*(haz < (-2)),
         co =1*(whz< (-2) & haz< (-2)),
         anyco=max(co),
         anywast=max(wast),
         anystunt=max(stunt),
         numwast=cumsum(wast),
         numstunt=cumsum(stunt),
         numco=cumsum(co),
         lag_numwast=lag(numwast),
         lag_numstunt=lag(numstunt),
         lag_numco=lag(numco),
         lag_numwast=ifelse(is.na(lag_numwast),0,lag_numwast),
         lag_numstunt=ifelse(is.na(lag_numstunt),0,lag_numstunt),
         lag_numco=ifelse(is.na(lag_numco),0,lag_numco),
         firstwast=ifelse(numwast==1 & lag_numwast==0, 1, 0),
         firststunt=ifelse(numstunt==1 & lag_numstunt==0, 1, 0),
         firstco=ifelse(numco==1 & lag_numco==0, 1, 0)
         ) %>%
  filter(anyco==1)
table(d$anyco)
table(d$anywast)
table(d$anystunt)

table(d$co)
table(d$firstwast)
table(d$firststunt)
table(d$firstco)
table(d$numwast)
table(d$numstunt)
dim(d)


d$id <- paste0(d$studyid,"-",d$subjid)
d$age_onset <- ifelse(d$firstwast==1 | d$firststunt==1 | d$firstco==1, d$agedays, NA)
d <- d %>%
  mutate(type_onset=case_when(
    firstwast==1 & firststunt==1 & firstco==1~"all",
    firstwast==1 & firststunt==0 & firstco==0~"wast",
    firstwast==0 & firststunt==1 & firstco==0~"stunt",
    firstwast==0 & firststunt==0 & firstco==1~"co",
    firstwast==1 & firststunt==0 & firstco==1~"wast+co",
    firstwast==0 & firststunt==1 & firstco==1~"stunt+co",
    TRUE ~ ""
  ))
table(d$type_onset)

d %>% group_by(type_onset) %>% summarize(mean(age_onset))

ggplot(d, aes(x=id, y=age_onset, color=type_onset)) + geom_point(size=5, alpha=0.5) + coord_flip() +
  scale_color_manual(values=tableau10) + theme(legend.position = "right")


#Calculate cumulative incidence of wasting and stunting
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))

d <- calc.prev.agecat(d)
# ci.data <- summary.ci(d)
# ci.data$ci.res

table(d$agecat, d$firstwast)
table(d$agecat, d$firststunt)



# take max of multiple measurements within age window
dmn <- d %>%
  filter(!is.na(agecat)) %>%
  group_by(studyid,country,subjid,agecat) %>%
  summarise(firststunt=max(firststunt, na.rm=T),
            firstwast=max(firstwast, na.rm=T)) 


# count measurements per study by age
# exclude time points if number of measurements per age
# in a study is <50
prev.data = dmn %>%
  filter(!is.na(agecat)) %>%
  group_by(studyid,country,agecat) %>%
  summarise(nmeas=n(),
            stunt_nxprev=sum(firststunt==1),
            wast_nxprev=sum(firstwast==1))
            


prev.data <- droplevels(prev.data)

table(prev.data$agecat, prev.data$stunt_nxprev)
table(prev.data$agecat, prev.data$wast_nxprev)

# estimate random effects, format results
prev.res=lapply((levels(prev.data$agecat)),function(x) 
  fit.rma(data=prev.data,ni="nmeas", xi="stunt_nxprev",age=x,measure="PLO",nlab="children"))
prev.res=as.data.frame(rbindlist(prev.res))
prev.res



prev.res[,4]=as.numeric(prev.res[,4])
prev.res[,6]=as.numeric(prev.res[,6])
prev.res[,7]=as.numeric(prev.res[,7])
prev.res = prev.res %>%
  mutate(est=est*100,lb=lb*100,ub=ub*100)
prev.res$agecat=factor(prev.res$agecat,levels=levels(prev.data$agecat))
prev.res$ptest.f=sprintf("%0.0f",prev.res$est)



