rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
library(rcompanion)
library(metamedian)

source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))
load(paste0(ghapdata_dir, "Wasting_inc_data.RData"))
co <- readRDS(paste0(ghapdata_dir, "rf_co_occurrence_data.rds"))
co <- co %>% select(studyid, subjid, agedays, haz, waz)
  
d <- calc.monthly.agecat(d)
d <- left_join(d, co, by=c("studyid", "subjid", "agedays"))

df <- d %>% filter(agedays<=730) %>%
  group_by(studyid, country, subjid) %>%
  arrange(agedays) %>%
  mutate(last_whz=ifelse(agedays==last(agedays), whz, -99999), last_whz=max(last_whz, na.rm=T)) %>%
  filter(wast_inc==1, episode_id==2)  %>% #subset to first episode
  group_by(studyid, country, subjid) %>% slice(1)
  

summary(df$agedays)
table(df$agecat)
df %>% group_by(agecat) %>% summarize(mean(last_whz)) %>% as.data.frame()

df$whz <- df$last_whz
res <- summary.whz(df, N_filter=5)$whz.res
res

df2 <- df %>%  filter(agecat %in% c("Two weeks","6 months")) %>% 
  group_by(studyid, country, agecat) %>% mutate(N=n()) %>% filter(N>=5) %>%
  group_by(studyid, country) %>% mutate(Nages=length(unique(agecat))) %>% filter(Nages==2)
  
res <- summary.whz(df2, N_filter=5)$whz.res
res  

#plot of WLZ by age of first onset
df <- d %>% filter(agedays<=730, episode_id>1) %>%
  group_by(studyid, country, subjid) %>%
  mutate(first_age_wast=first(agecat)) %>%
  group_by(first_age_wast)  %>% filter(n()>1000) %>% droplevels()

table(df$first_age_wast)

ggplot(df, aes(x=agedays, y=whz, color=first_age_wast, group=first_age_wast)) +geom_smooth(se=F)
ggplot(df, aes(x=agedays, y=haz, color=first_age_wast, group=first_age_wast)) +geom_smooth(se=F)


mean_whz_by_first_wast_age <- df %>% group_by(first_age_wast) %>% do(summary.whz(., N_filter=5)$whz.res)
mean_whz_by_first_wast_age
mean_whz_by_first_wast_age$agecat <- factor(mean_whz_by_first_wast_age$agecat, levels=unique(mean_whz_by_first_wast_age$agecat))
ggplot(mean_whz_by_first_wast_age, aes(x=agecat, y=est, color=first_age_wast, group=first_age_wast)) +geom_smooth(se=F)




#Get mean whz over full first 2 years by age of onset
d <- calc.prev.agecat(d)
d <- d %>%
  arrange(studyid, subjid, agedays) %>%
  mutate(agecat = ifelse(agedays <= 30.4167, "Birth",
                         ifelse(agedays > 1 * 30.4167 & agedays < 6 * 30.4167, "1-6 months",
                                ifelse(agedays > 6 * 30.4167 & agedays < 12 * 30.4167, "6-12 months",
                                       ifelse(agedays > 12 * 30.4167 & agedays < 24 * 30.4167, "12-24 months",NA)))
  )) %>%
  mutate(agecat = factor(agecat, levels = c(
    "Birth", "1-6 months", "6-12 months", "12-24 months"
  )))
df_mean_whz <- d %>% filter(agedays<=730) %>%
  group_by(studyid, country, subjid) %>%
  mutate(N=n(), whz=mean(whz, na.rm=T), haz=mean(haz, na.rm=T), waz=mean(waz, na.rm=T), ever_wast=max(wast_inc)) %>%
  group_by(studyid, country, subjid, episode_id) %>% slice(1) %>%
  filter(ever_wast==0 & episode_id==1 & agecat=="Birth" |(episode_id %% 2) == 0) %>%
  #filter((episode_id %% 2) == 0) %>%
  mutate(episode_id=floor(episode_id/2),
         cohort=paste0(studyid,"-",country)) %>%
  filter(episode_id<4)
  

#df_mean_whz <- df_mean_whz %>% filter(cohort %in% unique(df_mean_whz$cohort[df_mean_whz$agecat=="Birth"]))

lifemean_whz_by_wast_episode<- df_mean_whz %>% group_by(episode_id) %>% droplevels() %>% do(summary.whz(., N_filter=5)$whz.res)
lifemean_whz_by_wast_episode <- lifemean_whz_by_wast_episode %>% 
  #filter(episode_id!=0) %>%
  mutate(episode_id=factor(episode_id), agecat = factor(agecat, levels=unique(agecat))) %>% 
  droplevels()

ggplot(lifemean_whz_by_wast_episode, aes(x=agecat, y=est, color=episode_id, group=episode_id)) + 
  geom_point(position=position_dodge(0.5)) + 
  geom_linerange(aes(ymin = lb, ymax = ub), position=position_dodge(0.5)) +
  scale_color_manual(values=tableau10) +
  theme_ki() +
  theme(legend.position = "right")

lifemean_whz_by_wast_episode[lifemean_whz_by_wast_episode$episode_id==0|lifemean_whz_by_wast_episode$episode_id==1,]

lifemean_haz_by_wast_episode<- df_mean_whz %>% mutate(whz=haz) %>% group_by(episode_id) %>% droplevels() %>% do(summary.whz(., N_filter=5)$whz.res)
lifemean_haz_by_wast_episode <- lifemean_haz_by_wast_episode %>% 
  mutate(episode_id=factor(episode_id), agecat = factor(agecat, levels=unique(agecat))) %>% 
  droplevels()

ggplot(lifemean_haz_by_wast_episode, aes(x=agecat, y=est, color=episode_id, group=episode_id)) + 
  geom_point(position=position_dodge(0.5)) + 
  geom_linerange(aes(ymin = lb, ymax = ub), position=position_dodge(0.5)) +
  scale_color_manual(values=tableau10) +
  theme_ki() +
  theme(legend.position = "right")

# plotdf <- df_mean_whz %>% group_by(agecat, episode_id) %>% mutate(N=n()) %>% filter(N>20)
# 
# res_mean_whz <- df_mean_whz %>%  group_by(agecat, episode_id) %>%
#   summarise(mean(whz))
# 
# ggplot(df_mean_whz, aes(x=agecat, y=episode_id , fill=whz)) + geom_tile()
# 
# res_mean_whz <- df_mean_whz %>%
#   group_by(agecat, episode_id) %>%
#   summarise(mean(whz)) %>%
#   arrange(episode_id, agecat)