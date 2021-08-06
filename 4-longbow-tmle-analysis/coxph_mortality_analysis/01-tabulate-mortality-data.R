

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(janitor)


d <- readRDS(mortality_age_path)
d <- d %>% filter(!(studyid %in% c("iLiNS-DYAD-G","VITALPAK-Pregnancy", "DIVIDS")))


table(d$studyid)
d %>% group_by(studyid) %>% distinct(subjid) %>% summarize(N=n())

table(d$studyid, d$causedth=="")

#Included studies
tab1 <- d %>% distinct(studyid, manuscript_cohort)


#Get number of observations in different age categories

table(d$agecat)

table(d$studyid, d$agecat)
tabyl(dat= d, studyid, agecat)
tab2 <- tabyl(dat= d, studyid, agecat)
tab3 <- tabyl(dat= d, studyid, agecat, dead)$`1`


#subset to primary dataset- has age of death, deaths before 2 years, last measure at least a week prior
tab4 <- d %>% group_by(studyid, subjid) %>% 
  filter(agedays <= 730) %>%
  filter(agedays==last(agedays)) %>%
  group_by(studyid, country) %>%
  mutate(N_children= length(unique(subjid)),
         mortality_rate= round(mean(dead)*100,1),
         wasting_rate= round(mean(whz < -2, na.rm=T)*100,1),
         wasting_rate_muac= round(mean(muaz < -2, na.rm=T)*100,1),
         stunting_rate= round(mean(haz < -2, na.rm=T)*100,1),
         underweight_rate= round(mean(waz < -2, na.rm=T)*100,1),
         sev_wasting_rate= round(mean(whz < -3, na.rm=T)*100,1),
         sev_wasting_rate_muac= round(mean(muaz < -3, na.rm=T)*100,1),
         sev_stunting_rate= round(mean(haz < -3, na.rm=T)*100,1),
         sev_underweight_rate= round(mean(waz < -3, na.rm=T)*100,1),
         deaths= sum(dead)) %>%
  filter(imp_agedth ==0, agedth < 730, agedth- agedays > 6 & agedth- agedays < 6*30.4167) %>%
  mutate(N_with_age_of_death=sum(dead),
         mean_age_death = round(mean(agedth, na.rm=T),0)) %>%
  filter(agedays >30) %>%
  mutate(postnatal_N=sum(dead),
         mean_age_postnatal_death = round(mean(agedth, na.rm=T),0)) %>%
  slice(1) %>%
  select(studyid, country, N_children,mortality_rate, 
         N_with_age_of_death, postnatal_N, mean_age_death, mean_age_postnatal_death,
         wasting_rate, wasting_rate_muac,
         sev_wasting_rate, sev_wasting_rate_muac) %>%
  arrange(mortality_rate)
tab4


#Sparsity between death and wasting measures
df <- d %>% filter(agecat!="(0,30]" & agecat!="(730,7e+03]", 
                   dead==1, imp_agedth==0, agedth < 730,
                   agedth- agedays > 6 & agedth- agedays < 6*30.4167)

tab5 <- df %>% group_by(studyid, country) %>% 
  summarize(wast=sum(wast, na.rm = T),
            swast=sum(swast, na.rm = T),
            wast_muac=sum(wast_muac, na.rm = T),
            swast_muac=sum(swast_muac, na.rm = T))
            
save(tab1, tab2, tab3, tab4, tab5, file=here("results/summary_tables.Rdata"))