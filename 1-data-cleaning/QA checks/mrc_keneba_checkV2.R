
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


d <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds"))


d <- d %>% filter(studyid == "ki1101329-Keneba")

table(d$agedays==1)
table(d$agedays > 1 & d$agedays < 8)
table(d$agedays > 1 & d$agedays < 32)


summary(d$haz[d$agedays==1])
summary(d$haz[d$agedays>1  & d$agedays < 32])

summary(d$whz[d$agedays==1])
summary(d$whz[d$agedays>1  & d$agedays < 32])

summary(d$lencm[d$agedays==1])
summary(d$lencm[d$agedays>1  & d$agedays < 32])

summary(d$wtkg[d$agedays==1])
summary(d$wtkg[d$agedays>1  & d$agedays < 32])


ggplot(d, aes(x=agedays)) + geom_histogram(bins=750)
ggplot(d, aes(x=agedays)) + geom_histogram(bins=75)


length(unique(d$subjid[d$agedays==1]))
length(unique(d$subjid[d$agedays!=1]))

d %>% group_by(subjid) %>% summarize(N=n()) %>%
      ungroup() %>% summarize(mean(N))






