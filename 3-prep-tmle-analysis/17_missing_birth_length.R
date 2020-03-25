
source(paste0(here::here(), "/0-config.R"))
library(epiR)

dfull <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds"))
d <- dfull %>% 
  group_by(studyid, country, subjid) %>%
  filter(agedays < 731) %>% 
  mutate(dead=max(dead)) %>%
  filter(agedays < 8) %>% 
  arrange(agedays) %>% 
  slice(1)

dim(d)
table(d$lencm < 45)
prop.table(table(d$lencm < 45))*100

table(d$lencm < 45, is.na(d$whz))
table(d$lencm < 45, is.na(d$haz))

df <- d %>% filter(lencm < 45 | !is.na(whz))
table(df$dead, df$lencm < 45)

dat=table(-df$dead, -(df$lencm < 45))

epi.2by2(dat, method = "cross.sectional", conf.level = 0.95, units = 100, 
         #homogeneity = "breslow.day", 
         outcome = "as.columns")

#percent missing WLZ at birth wasted before 6 months
df2 <- dfull %>% 
  group_by(studyid, country, subjid) %>%
  arrange(agedays) %>% 
  filter(agedays < 6*30.467, first(lencm) < 45, !is.na(whz)) %>% 
  mutate(minwhz= min(whz), anywast=1*(minwhz < -2), maxage=max(agedays), N=n()) %>%
  filter(maxage > 7) %>%
  slice(1)

summary(df2$N)
summary(df2$maxage)
table(df2$anywast)
prop.table(table(df2$anywast))*100




