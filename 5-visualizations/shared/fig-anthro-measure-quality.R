
#-----------------------------------
# Check anthropometry measure quality
#-----------------------------------

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(growthstandards)

d <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds"))

d <- d %>% subset(., select=c(studyid, subjid, country, region, measurefreq, tr, sex, agedays, haz, whz, waz, muaz,lencm,  wtkg, htcm ))


#https://stackoverflow.com/questions/7714677/scatterplot-with-too-many-points
ggplot(d,aes(x=lencm, y=wtkg)) + geom_point(alpha = 0.1)
ggplot(d,aes(x=lencm, y=wtkg)) + stat_binhex()



p <- ggplot(data = subset(d, subjid == 8), aes(x = agedays, y = htcm)) +
  geom_who(x_seq = seq(0, 2600, by = 10), y_var = "htcm") +
  geom_point()
p


p <- ggplot(data = subset(cpp, subjid == 8), aes(x = htcm, y = wtkg)) +
  geom_who(x_seq = seq(50, 120, by = 1), x_var = "htcm", y_var = "wtkg") +
  geom_point()
p




p <- ggplot(d,aes(x=lencm, y=wtkg)) + geom_point(alpha = 0.05) +
  geom_who(x_seq = seq(0, 120, by = 1), x_var = "htcm", y_var = "wtkg") 
ggsave(p, file = here::here("/figures/shared/wlz_QA.png"), width=8, height=4)




p <- ggplot(d,aes(x=agedays, y=lencm)) + geom_point(alpha = 0.05) +
  geom_who(x_seq = seq(0, 730, by = 1),  y_var = "htcm") +
  coord_cartesian(xlim=c(0, 730)) + facet_wrap(~sex)
ggsave(p, file = here::here("/figures/shared/laz_QA.png"), width=8, height=4)




p <- ggplot(d,aes(x=agedays, y=wtkg)) + geom_point(alpha = 0.05) +
  geom_who(x_seq = seq(0, 730, by = 1),  y_var = "wtkg")  +
  coord_cartesian(xlim=c(0, 730))+ facet_wrap(~sex)
ggsave(p, file = here::here("/figures/shared/waz_QA.png"), width=8, height=4)



#Cohort-stratified plots
d$cohort <- paste0(d$studyid, " ", d$country)
p <- ggplot(d,aes(x=agedays, y=lencm)) + geom_point(alpha = 0.05) +
  geom_who(x_seq = seq(0, 730, by = 1),  y_var = "htcm") +
  coord_cartesian(xlim=c(0, 730)) + facet_wrap(cohort~sex)
ggsave(p, file = here::here("/figures/shared/laz_QA_cohort.png"), width=8, height=4)




p <- ggplot(d,aes(x=agedays, y=wtkg)) + geom_point(alpha = 0.05) +
  geom_who(x_seq = seq(0, 730, by = 1),  y_var = "wtkg")  +
  coord_cartesian(xlim=c(0, 730))+ facet_wrap(cohort~sex)
ggsave(p, file = here::here("/figures/shared/waz_QA_cohort.png"), width=8, height=4)

