
#-----------------------------------------
# Process data for wasting traj figures
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))

source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())

d <- readRDS("U:/ucb-superlearner/data/seasonality_data.rds")

d <- study_label_transformation(d)
d$region[d$region=="Asia"] <- "South Asia"
d$region <- factor(d$region, levels=c("Africa", "Latin America", "South Asia"))


# #Filter to children measured at birth
# d <- d %>% group_by(studyid, subjid) %>% arrange(studyid, subjid, agedays) %>% mutate(first_meas = first(agedays)) %>%
#   filter(first_meas==1)
# 
# 
# #mark children born wasted
# d <- d %>% group_by(studyid, subjid) %>% arrange(studyid, subjid, agedays) %>% mutate(born_wast = 1*(first(whz < (-2))))
# table(d$born_wast)
# 
# #duplicate data to make an "overall" region
# d2 <- d %>% mutate(region="Overall")
# d <- bind_rows(d2, d)
# d$region <- factor(d$region, levels=unique(d$region))

p1 <- ggplot(d, aes(x=jday, y=whz, group=region, color=region))  + geom_smooth(span=1, se=F)
p1

p2 <- ggplot(d, aes(x=studyday, y=whz, group=region, color=region))  + geom_smooth(span=1, se=F)
p2

d$cohort <- paste0(d$studyid, " ", d$country)

library(ggrepel)

p3 <- ggplot(d, aes(x=jday, y=whz)) + facet_wrap(~region) + geom_smooth(aes(color=region), span=1, se=F, size=2) +
  geom_smooth(aes(group=cohort), color="grey20", span=1, se=F,linetype=3, size=1) + xlab("Julian day") +
  scale_color_manual(values=tableau10, drop=TRUE, limits = levels(d$region)) #+
  #geom_label_repel(aes(label=region))
p3
ggsave(p3, file=paste0(here(),"/figures/wasting/season_WLZ_trajectories.png"), width=12, height=8)


p4 <- ggplot(d, aes(x=jday, y=100*(whz< -2))) + facet_wrap(~region) + geom_smooth(aes(color=region), span=1, se=F, size=2) +
  geom_smooth(aes(group=cohort, color=country), span=1, se=F,linetype=3, size=1) + xlab("Julian day") + ylab("Wasting prevalence")
p4



p5 <- ggplot(d, aes(x=jday, y=waz)) + facet_wrap(~region) + geom_smooth(aes(color=region), span=1, se=F, size=2) +
  geom_smooth(aes(group=cohort, color=country), span=1, se=F,linetype=3, size=1) + xlab("Julian day")
p5



p6 <- ggplot(d, aes(x=jday, y=haz)) + facet_wrap(~region) + geom_smooth(aes(color=region), span=1, se=F, size=2) +
  geom_smooth(aes(group=cohort, color=country), span=1, se=F,linetype=3, size=1) + xlab("Julian day")
p6


