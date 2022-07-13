


rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))


load(paste0(ghapdata_dir, "Wasting_inc_data.RData"))




#Subset to monthly
d <- d %>% filter(measurefreq == "monthly")


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


#Percent of all wasted kids in the first 3 months
df <- d %>% filter(agedays < 24 * 30.4167) %>% 
  filter(whz < -2) %>%
  group_by(studyid, country, subjid) %>% 
  arrange(studyid, country, subjid, agedays) %>% 
  slice(1)
prop.table(table(df$agedays < (3 * 30.4167))) * 100




