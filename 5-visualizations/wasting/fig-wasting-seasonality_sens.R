
#-----------------------------------------
# Process data for wasting traj figures
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))



d <- readRDS(paste0(ghapdata_dir,"/seasonality_data.rds"))
d <- d %>% filter(measurefreq=="monthly")


d$region <- factor(d$region, levels=c("Africa", "Latin America", "South Asia"))

#Count number of children
d %>% filter(agedays < 24 * 30.4167) %>%
  group_by(studyid, country, subjid) %>% 
  group_by(region) %>%
  summarize(nobs=n(), nchild=length(unique(paste0(studyid, country, subjid))), nstudies = length(unique(paste0(studyid, country))))


d$cohort <- paste0(d$studyid, " ", d$country)
length(unique(d$cohort))

d$month <- floor(d$jday/30.417) + 1
table(d$month)

#Monsoon is assumed to be May-October 
d$monsoon <- factor(ifelse(d$month > 5 & d$month < 10, "Monsoon", "Not monsoon"))



d <- d %>% filter(region=="South Asia")
d <- d[d$agedays<=7,]


p2 <- ggplot(d, aes(x=birthday, y=whz)) + geom_smooth(color="grey20", span=1, se=T, size=2) + 
  ylab("Mean WLZ") + xlab("Birth month") +
  scale_x_continuous(limits=c(1,364), expand = c(0, 0),
                     breaks = 1:6*30.4167*2-50, labels = rep(c("Jan.", "Mar.", "May", "Jul.", "Sep.", "Nov."),1)) 
p2


