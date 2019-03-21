


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



#Over incidence rate excluding birth wasting







rm(list = ls())

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

  
