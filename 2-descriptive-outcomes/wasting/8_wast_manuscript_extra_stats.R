


rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))


load("U:/ucb-superlearner/data/Wasting_inc_data.RData")
load("U:/ucb-superlearner/data/Wasting_inc_noRec_data.RData")


#Subset to monthly
d <- d %>% filter(measurefreq == "monthly")
d_noBW <- d_noBW %>% filter(measurefreq == "monthly")
d_noRec <- d_noRec %>% filter(measurefreq == "monthly")
d_noBW_noRec <- d_noBW_noRec %>% filter(measurefreq == "monthly")



#Number of episodes in persistently wasted kids

df <- d %>% filter(agedays < 24 * 30.4167) %>% 
  group_by(studyid, country, subjid) %>% 
  mutate(pers_wast = 1*(mean(whz < (-2)) >= 0.5)) %>%
  filter(pers_wast == 1)

df2 <- df %>% group_by(studyid, country, subjid) %>% 
      summarize(N=n(), num_inc=sum(wast_inc)) %>% ungroup() %>%
      filter(N>=4)
(table(df2$num_inc))
prop.table(table(df2$num_inc))

#Number of episodes in wasted kids
df <- d %>% filter(agedays < 24 * 30.4167) %>% 
  group_by(studyid, country, subjid) %>% 
  mutate(any_wast = max(1*(whz < (-2)))) %>%
  filter(any_wast == 1)

df2 <- df %>% group_by(studyid, country, subjid) %>% 
  summarize(N=n(), num_inc=sum(wast_inc)) %>% ungroup() 

table(df2$num_inc)
prop.table(table(df2$num_inc))







rm(list = ls())
library(epiR)

source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_co_functions.R"))

load("U://ucb-superlearner/data/co-occurrence_data.RData")

d <- d %>% filter(measurefreq=="monthly")

#Proportion of co-occurrent wasting and stunting among children wasted under 3 months
d <- calc.ci.agecat(d, range = 6)

df <- d %>% filter(agedays < 24 * 30.4167) %>% 
  group_by(studyid, country, subjid) %>% 
  mutate(wast=1*(whz < (-2)), co = 1*(whz < (-2) & haz < (-2))) %>%
  group_by(studyid, country, subjid, agecat) %>% 
  arrange(studyid, country, subjid, agecat) %>% 
  mutate(wast=max(wast), co=last(co)) %>%
  filter(agecat %in% c("0-6 months","18-24 months")) %>%
  group_by(studyid, country, subjid) %>% 
  mutate(wast=first(wast), co=last(co)) %>% slice(1)

table(df$wast, df$co)
a<-prop.table(table(df$co[df$wast==0]))
b<-prop.table(table(df$co[df$wast==1]))

b/a

dat=table(-df$wast, -df$co)
epi.2by2(dat, method = "cohort.count", conf.level = 0.95, units = 100, 
         homogeneity = "breslow.day", outcome = "as.columns")

epi.2by2(dat, method = "cross.sectional", conf.level = 0.95, units = 100, 
         homogeneity = "breslow.day", outcome = "as.columns")






d<-calc.ci.agecat(d, range=6)


df <- d %>% group_by(studyid, subjid, agecat) %>% mutate(anywast=1*(min(whz) < (-2)), anystunt=1*(min(haz) < (-2)))
df2 <- df %>% group_by(studyid, subjid) %>% filter(agecat %in% c("0-6 months", "18-24 months")) %>% arrange(agecat) %>% 
  mutate(wast06=first(anywast), stunt24=last(anystunt)) %>% slice(1)
table(df2$wast06, df2$stunt24)

prop.table(table(df2$stunt24[df2$wast06==0]))
prop.table(table(df2$stunt24[df2$wast06==1]))



dat=table(-df2$wast06, -df2$stunt24)
epi.2by2(dat, method = "cross.sectional", conf.level = 0.95, units = 100, 
         homogeneity = "breslow.day", outcome = "as.columns")



  
