


rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))


load(paste0(ghapdata_dir, "Wasting_inc_data.RData"))
d <- d %>% filter(measurefreq == "monthly")


# #NOTE: Meta-analysis now in separate script
# #Subset to monthly
# 
# #duration
# df <- d %>% group_by(studyid, subjid, episode_id) %>% slice(1) %>% filter(!is.na(wasting_duration)) %>% filter(agedays < 30.6417 * 24)
# calc_dur_ci <- function(df){
#   dur <- median(df$wasting_duration, na.rm=T)
#   #Quantile CI's'
#   ci <- sort(df$wasting_duration)[qbinom(c(.025,.975), length(df$wasting_duration), 0.5)]
#   return(data.frame(dur=dur, ci.lb=ci[1], ci.ub=ci[2]))
# }
# calc_dur_ci(df)
# d6 <- calc.ci.agecat(df, range=6, birth="no")
# df2 <- d6 %>% group_by(studyid, subjid, agecat,episode_id) %>% slice(1) %>% filter(!is.na(wasting_duration)) %>% filter(agedays < 30.6417 * 24)
# df2 %>% group_by(agecat) %>% do(calc_dur_ci(.))
# df2$agecat <- as.character(df2$agecat)
# df2$agecat[df2$agecat!="Birth" & df2$agecat!="8 days-6 months"] <- "6-24 months"
# df2 %>% group_by(agecat) %>% do(calc_dur_ci(.))


#age at first, second, third episode
d %>% select(wasting_episode,episode_id)
df <- d %>% filter(wasting_episode=="Wasted") %>% filter(agedays < 730)
df %>% group_by(episode_id/2) %>% summarize(min(agedays), mean(agedays), median(agedays), max(agedays))

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




