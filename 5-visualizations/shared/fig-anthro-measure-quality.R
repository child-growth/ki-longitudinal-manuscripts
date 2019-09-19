
#-----------------------------------
# Check anthropometry measure quality
#-----------------------------------

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(growthstandards)

d <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds"))

d <- d %>% subset(., select=c(studyid, subjid, country, region, measurefreq, tr, sex, agedays, haz, whz, waz, muaz,lencm,  wtkg, htcm ))

head(d)

#https://stackoverflow.com/questions/7714677/scatterplot-with-too-many-points

ggplot(d,aes(x=lencm, y=wtkg)) + geom_point(alpha = 0.1)

ggplot(d,aes(x=lencm, y=wtkg)) + stat_binhex()
