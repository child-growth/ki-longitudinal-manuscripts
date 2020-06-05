

#-----------------------------------
# Check age of child enrollment
#-----------------------------------

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(growthstandards)

d <- readRDS(stunting_data_path)

d <- d %>% subset(., select=c(studyid, subjid, country, region, measurefreq, tr, sex, agedays, haz ))

#remove grant identifier
d$studyid<- gsub("^k.*?-" , "", d$studyid)

#Histogram of ages <= 30 days (all ages, not first enrollment)
df1 <- d %>% filter(agedays < 31, measurefreq!="yearly")

p1 <- ggplot(df1, aes(x=agedays)) + geom_histogram() 
p2 <- ggplot(df1, aes(x=agedays)) + geom_histogram() + facet_wrap(~studyid, scales = "free")

ggsave(p1, file = here::here("/figures/shared/age_histogram_first_month.png"), width=8, height=4)
ggsave(p2, file = here::here("/figures/shared/age_histogram_first_month_cohort.png"), width=11, height=6)



#Histogram of first measures in children not measured at birth (first 7 days)
df2 <- d %>% group_by(studyid, country, subjid) %>% 
  filter(agedays < 730, measurefreq!="yearly") %>%
  arrange(studyid, country, subjid, agedays) %>%
  mutate(firstage = min(agedays)) %>% slice(1) %>%
  filter(firstage >7) 

p3 <- ggplot(df2, aes(x=firstage/30.4167)) + geom_histogram(binwidth=1) + xlab("Age of enrollment (months)") + coord_cartesian(xlim = c(0, 24))
p4 <- ggplot(df2, aes(x=firstage/30.4167)) + geom_histogram(binwidth=1) + facet_wrap(~studyid, scales = "free_y") + xlab("Age of enrollment (months)") + coord_cartesian(xlim = c(0, 24))

ggsave(p3, file = here::here("/figures/shared/enrollment_age_histogram_over_7d.png"), width=8, height=4)
ggsave(p4, file = here::here("/figures/shared/enrollment_age_histogram_over_7d_cohort.png"), width=11, height=6)


