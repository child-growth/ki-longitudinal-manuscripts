##########################################
# ki longitudinal manuscripts
# stunting analysis

# figure: remission 

# inputs: 


# outputs: 


##########################################
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

d <- readRDS(paste0(ghapdata_dir, "stunting_data.rds"))
mort <- readRDS(paste0(ghapdata_dir,"mortality.rds"))

#-------------------------------------------
# process stunting data
#-------------------------------------------
d = d %>% ungroup() %>% mutate(studyid = as.character(studyid))

# drop variables we don't need
d = d %>% select(studyid, subjid, region, country, measid, agedays, haz)

# drop studies that are not in stunting dataset and subset
# to age <=24 m
st_studies = unique(d$studyid)

mort <- mort %>% 
  filter(dead==0) %>% 
  filter(studyid %in% st_studies) %>% 
  mutate(agemort= round(maxage / 30.4167)) %>% 
  filter(agemort <=24)

#--------------------------------------------------
# merge stunting and mortality data
#--------------------------------------------------
mort_merge <- mort %>% dplyr::select(studyid, country, subjid, agemort) %>% 
  filter(agemort<24) %>% 
  mutate(death = 1) 

dm <- left_join(d, mort_merge, by = c("studyid", "country", "subjid"))

## TO DO - X children in the mortality dataset are not merging with stunting data 
# is it because they did not have laz measured or had abs(laz)>6?

dm <- dm %>% mutate(death = ifelse(is.na(death), 0, death))
dm <- dm %>% mutate(deathf = as.factor(ifelse(death==1,
                                    "Died before age 24 months", 
                                    "Did not die before age 24 months")))

dm_nodeath = dm %>% filter(death==0) %>% 
  group_by(region, country, studyid, subjid, death, deathf) %>% 
  summarise(haz = mean(haz, na.rm=T))

dm_death = dm %>% filter(death==1) %>% 
  mutate(agemonths = agedays / 30.4167) %>% 
  mutate(diff_ages = abs(agemonths - agemort)) %>% 
  group_by(region, country, studyid, subjid) %>% 
  mutate(min_diff_ages = min(diff_ages)) %>% 
  filter(min_diff_ages == diff_ages) %>% 
  filter(diff_ages <= 1) %>% 
  dplyr::select(region, country, studyid, subjid, death, deathf, haz)

# cohorts that have any deaths
dcohorts = plot_data %>% filter(death==1) %>% ungroup() %>% 
  dplyr::select(studyid) %>% unique() %>% pull()

plot_data = bind_rows(dm_nodeath, dm_death) %>% 
  filter(studyid %in% dcohorts) %>% 
  filter(region!="N.America & Europe")


#--------------------------------------------------
# figure
#--------------------------------------------------
ggplot(plot_data, aes(x = haz)) +
  geom_density(aes(fill=deathf, col=deathf), alpha= 0.25) +
  scale_fill_manual("", values = c("gray", "red"))+
  scale_color_manual("", values = c("gray", "red")) +
  geom_vline(xintercept = mean(plot_data$haz[plot_data$death==1], na.rm=T), col = "red")+
  geom_vline(xintercept = mean(plot_data$haz[plot_data$death==0], na.rm=T), col = "gray")+
  theme(legend.position = "bottom") +
  facet_wrap(~region)

plot_data_d1 = plot_data %>% filter(death == 1)
plot_data_d0 = plot_data %>% filter(death == 0)

ggplot(plot_data, aes(x = haz)) +
  geom_density(data = plot_data_d1, aes(fill=deathf, col = deathf), 
               alpha= 0.1) +
  geom_density(data = plot_data_d0, aes(fill=deathf, col = deathf), 
               alpha= 0.1) +
  # geom_vline(xintercept = mean(pdata$haz[pdata$death==1], na.rm=T), col = "red")+
  # geom_vline(xintercept = mean(pdata$haz[pdata$death==0], na.rm=T), col = "gray")+
  scale_fill_manual("", values = c("#9B9898","#F93636"))+
  scale_color_manual("", values = c("#9B9898","#F93636"))+
  facet_wrap(~region +studyid) +
  scale_x_continuous(limits = c(-6,6), breaks = seq(-6,6,1), 
                     labels = seq(-6,6,1)) +
  theme(panel.grid.major.y = element_blank(),
        panel.grid.minor.y = element_blank())

#--------------------------------------------------
# figure - mean laz at each age
#--------------------------------------------------
dage = dm %>%
  filter(studyid %in% dcohorts) %>% 
  filter(region!="N.America & Europe") %>% 
  group_by(region )

ggplot(dm, aes(x = agedays, y = haz)) +
  geom_point() +
  geom_line() 
  scale_fill_manual("", values = c("gray", "red"))+
  scale_color_manual("", values = c("gray", "red")) +
  geom_vline(xintercept = mean(plot_data$haz[plot_data$death==1], na.rm=T), col = "red")+
  geom_vline(xintercept = mean(plot_data$haz[plot_data$death==0], na.rm=T), col = "gray")+
  theme(legend.position = "bottom")







