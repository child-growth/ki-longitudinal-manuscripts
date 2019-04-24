
#-----------------------------------------
# Process data for wasting traj figures
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source("U:/Wasting/1-outcomes/0_wast_incfunctions.R")


load("U:/ucb-superlearner/data/wasting_data.RData")

d <- d %>% filter(measurefreq=="monthly")

d <- d %>% filter(agedays < 24 * 30.4167)

#Filter to children measured at birth
d <- d %>% group_by(studyid, subjid) %>% arrange(studyid, subjid, agedays) %>% mutate(first_meas = first(agedays)) %>%
  filter(first_meas==1)


#mark children born wasted
d <- d %>% group_by(studyid, subjid) %>% arrange(studyid, subjid, agedays) %>% mutate(born_wast = 1*(first(whz < (-2))))
table(d$born_wast)

#duplicate data to make an "overall" region
d2 <- d %>% mutate(region="Overall")
d <- bind_rows(d2, d)
d$region <- factor(d$region, levels=unique(d$region))

p1 <- ggplot(d, aes(x=agedays, y=whz, group=born_wast, color=born_wast)) + facet_wrap(~region) + geom_smooth()
p1

#Subset to only children ever wasted
df <- d %>% group_by(studyid, subjid) %>% mutate(wast = 1*(whz < (-2)), any_wast=max(wast)) %>%
            filter(any_wast==1)


p2 <- ggplot(df, aes(x=agedays, y=whz, group=born_wast, color=born_wast)) + facet_wrap(~region) + geom_smooth()
p2





#----------------------------------------------
# Histogram of WLZ change after birth 
# (next measurement and over 6 months)
#----------------------------------------------
