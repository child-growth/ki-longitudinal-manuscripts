

rm(list = ls())

source(paste0(here::here(), "/0-config.R"))

d <- readRDS(rf_co_occurrence_path) %>% filter(measurefreq == "monthly", agedays < 730)

#Only include children with at least 4 measures
d <- d %>% group_by(studyid, country, subjid) %>% mutate(N=n()) %>% filter(N >= 4)

#Proportion of measurements crossing -2 

#remove outliers
d <- d %>% mutate(
  haz=case_when(abs(haz)<6 ~ haz),
  whz=case_when(abs(whz)<5 ~ whz),
  waz=case_when(waz > -6 & waz < 5 ~ waz),
)
summary(d$waz)

#SD
df<- d %>% group_by(studyid, country, region, subjid) %>% 
  summarize(SDwhz=sd(whz),SDhaz=sd(haz),SDwaz=sd(waz)) %>% ungroup() 

ggplot(df, aes(x=SDwhz, group=region, fill=region, color=region)) +geom_density(alpha=0.5) +theme(legend.position = "right") #+ facet_wrap(~region)
ggplot(df, aes(x=SDwhz, group=country, fill=country, color=country)) +geom_density(alpha=0.5) +theme(legend.position = "right") + facet_wrap(~region)

df %>%
  summarize(mean(SDwhz, na.rm=T), mean(SDhaz, na.rm=T), mean(SDwaz, na.rm=T))

df2 <- d %>% group_by(studyid, country, region, subjid) %>% 
  mutate(change=whz-lag(whz)) %>% 
  summarize(change=mean(abs(change), na.rm=T)) %>%
  ungroup() 
ggplot(df2, aes(x=change, group=region, fill=region, color=region)) +geom_density(alpha=0.5) +theme(legend.position = "right") #+ facet_wrap(~region)


df3 <- d %>% group_by(studyid, country, region, subjid) %>% 
  summarize(whz=mean(whz, na.rm=T)) %>%
  group_by(studyid, country, region) %>%
  summarize(SDwhz=sd(whz)) %>% ungroup() 
ggplot(df3, aes(x=SDwhz, group=region, fill=region, color=region)) +geom_density(alpha=0.5) +theme(legend.position = "right") #+ facet_wrap(~region)


#Look at variability in wasting incidence by cohort/region
load(paste0(ghapdata_dir, "Wasting_inc_data.RData"))

#Subset to monthly
d <- d %>% filter(measurefreq == "monthly")
head(d)

#mean number of wasting episodes per child
df <- d %>% group_by(studyid, region, country, subjid) %>% 
  summarize(num_wast=sum(wast_inc)) 

#mean duration of wasting
ggplot(df, aes(x=num_wast, group=region, color=region, fill=region)) + 
  geom_histogram(aes(y=..density..), binwidth = 1) + 
  facet_wrap(~region)
#




