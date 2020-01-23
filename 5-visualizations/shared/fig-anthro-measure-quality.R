
#-----------------------------------
# Check anthropometry measure quality
#-----------------------------------

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(growthstandards)

d <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds"))

d <- d %>% subset(., select=c(studyid, subjid, country, region, measurefreq, tr, sex, agedays, haz, whz, waz, muaz,lencm,  wtkg, htcm ))

#Remove grant identifiers and clean countries
d$studyid <- gsub("^k.*?-" , "", d$studyid)
d$country <- tolower(d$country)
d$country[d$country=="tanzania, united republic of"] <- "tanzania"
d$country <- str_to_title(d$country)



p <- ggplot(data = subset(d, subjid == 8), aes(x = agedays, y = htcm)) +
  geom_who(x_seq = seq(0, 2600, by = 10), y_var = "htcm", shade=tableau10[1]) +
  geom_point()+
  xlab("Age in days") + 
  ylab("Height in cm")


p <- ggplot(data = subset(cpp, subjid == 8), aes(x = htcm, y = wtkg)) +
  geom_who(x_seq = seq(50, 120, by = 1), x_var = "htcm", y_var = "wtkg") +
  geom_point()+
  xlab("Height in cm") + 
  ylab("Weight in kg")


p <- ggplot(d,aes(x=lencm, y=wtkg)) + geom_point(alpha = 0.05) +
  geom_who(x_seq = seq(0, 120, by = 1), x_var = "htcm", y_var = "wtkg") +
  xlab("Height in cm") + 
  ylab("Weight in kg")
ggsave(p, file = here::here("/figures/shared/wlz_QA.png"),  width=25, height=20)


p <- ggplot(d,aes(x=agedays, y=lencm)) + geom_point(alpha = 0.05) +
  geom_who(x_seq = seq(0, 730, by = 1),  y_var = "htcm") +
  coord_cartesian(xlim=c(0, 730)) + facet_wrap(~sex) +
  xlab("Age in days") + 
  ylab("Weight in kg")
ggsave(p, file = here::here("/figures/shared/laz_QA.png"), width=8, height=4)


colors = c("green", "blue", "red", "orange", "purple")
p <- ggplot(d,aes(x=agedays, y=wtkg)) + geom_point(alpha = 0.05) +
  geom_who(x_seq = seq(0, 730, by = 1),  y_var = "wtkg", shade = "green") +
  coord_cartesian(xlim=c(0, 730))+ 
  facet_wrap(~sex) +
  xlab("Age in days") + 
  ylab("Weight in kg")
ggsave(p, file = here::here("/figures/shared/waz_QA.png"), width=8, height=4)



#Cohort-stratified plots
d$cohort <- paste0(d$studyid, "\n", d$country)
p <- ggplot(d,aes(x=agedays, y=lencm)) + geom_point(alpha = 0.05) +
  geom_who(x_seq = seq(0, 730, by = 1),  y_var = "htcm") +
  coord_cartesian(xlim=c(0, 730)) + facet_wrap(cohort~sex) +
  xlab("Age in days") + 
  ylab("Height in CM")
ggsave(p, file = here::here("/figures/shared/laz_QA_cohort.png"),  width=25, height=20)

pWlz <-  ggplot(d,aes(x=lencm, y=wtkg)) + geom_point(alpha = 0.05) +
  geom_who(x_seq = seq(0, 120, by = 1), x_var = "htcm", y_var = "wtkg") + facet_wrap(~cohort) +
  xlab("Height in CM") + 
  ylab("Weight in KG")
ggsave(pWlz, file = here::here("/figures/shared/wlz_QA_cohort.png"), width=25, height=20)




pWaz <- ggplot(d,aes(x=agedays, y=wtkg)) + geom_point(alpha = 0.05) +
  geom_who(x_seq = seq(0, 730, by = 1),  y_var = "wtkg")  +
  coord_cartesian(xlim=c(0, 730), ylim=c(0,25))+ facet_wrap(cohort~sex) +
  xlab("Age in days") + 
  ylab("Weight in KG")
ggsave(pWaz, file = here::here("/figures/shared/waz_QA_cohort.png"), width=25, height=20)



#Monthly plots
d <- d %>% filter(measurefreq=="monthly")

p <- ggplot(d,aes(x=lencm, y=wtkg)) + geom_point(alpha = 0.05) +
  geom_who(x_seq = seq(0, 120, by = 1), x_var = "htcm", y_var = "wtkg") +
  xlab("Height in cm") + 
  ylab("Weight in kg")
ggsave(p, file = here::here("/figures/shared/wlz_QA_monthly.png"),  width=25, height=20)




p <- ggplot(d,aes(x=agedays, y=lencm)) + geom_point(alpha = 0.05) +
  geom_who(x_seq = seq(0, 730, by = 1),  y_var = "htcm") +
  coord_cartesian(xlim=c(0, 730)) + 
  facet_wrap(~sex) +
  xlab("Age in days") + 
  ylab("Height in cm")
ggsave(p, file = here::here("/figures/shared/laz_QA_monthly.png"), width=8, height=4)




p <- ggplot(d,aes(x=agedays, y=wtkg)) + geom_point(alpha = 0.05) +
  geom_who(x_seq = seq(0, 730, by = 1),  y_var = "wtkg")  +
  coord_cartesian(xlim=c(0, 730))+ facet_wrap(~sex)
ggsave(p, file = here::here("/figures/shared/waz_QA_monthly.png"), width=8, height=4)



#Cohort-stratified plots
d$cohort <- paste0(d$studyid, "\n", d$country)
p <- ggplot(d,aes(x=agedays, y=lencm)) + geom_point(alpha = 0.05) +
  geom_who(x_seq = seq(0, 730, by = 1),  y_var = "htcm") +
  coord_cartesian(xlim=c(0, 730)) + facet_wrap(cohort~sex) +
  xlab("Age in days") + ylab("Height in cm")
ggsave(p, file = here::here("/figures/shared/laz_QA_cohort_monthly.png"),  width=25, height=20)

pWlz <-  ggplot(d,aes(x=lencm, y=wtkg)) + geom_point(alpha = 0.05) +
  geom_who(x_seq = seq(0, 120, by = 1), x_var = "htcm", y_var = "wtkg") + facet_wrap(~cohort) +
  xlab("Height in cm") + 
  ylab("Weight in kg")
ggsave(pWlz, file = here::here("/figures/shared/wlz_QA_cohort_monthly.png"), width=25, height=20)




pWaz <- ggplot(d,aes(x=agedays, y=wtkg)) + geom_point(alpha = 0.05) +
  geom_who(x_seq = seq(0, 730, by = 1),  y_var = "wtkg")  +
  coord_cartesian(xlim=c(0, 730), ylim=c(0,25))+ facet_wrap(cohort~sex) +
  xlab("Age in days") + 
  ylab("Weight in KG")
ggsave(pWaz, file = here::here("/figures/shared/waz_QA_cohort_monthly.png"), width=25, height=20)




