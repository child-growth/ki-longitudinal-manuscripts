
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


d$cohort <- paste0(d$studyid, " ", d$country)

d$month <- floor(d$jday/30.417) + 1
table(d$month)
#Monsoon is May-October in Bangladesh
d$monsoon <- factor(ifelse(d$month > 4 & d$month < 11, 1, 0))


#Check if children are measured spread throughout the year by cohort
# p <- ggplot(d, aes(x=jday, y=agedays)) + geom_smooth(aes(color=region), span=1, se=F, size=2) +
#   facet_wrap(~cohort) 
# p
#Only GMS nepal has a group of children all measured at the same age throughout the year.


p1 <- ggplot(d, aes(x=jday, y=whz)) + facet_wrap(~region) + geom_smooth(aes(color=region), span=1, se=F, size=2) +
  geom_smooth(aes(group=cohort), color="grey20", span=1, se=F,linetype=3, size=1) + xlab("Month") +
  scale_color_manual(values=tableau10, drop=TRUE, limits = levels(d$region)) +
  scale_x_continuous(limits=c(1,364), expand = c(0, 0),
                     breaks = 1:6*30.41*2-50, labels = rep(c("Jan.", "Mar.", "May", "Jul.", "Sep.", "Nov."),1)) 
p1


p1 <- ggplot(d, aes(x=jday, y=whz)) + facet_wrap(~region) + geom_smooth(aes(color=region), span=1, se=F, size=2) +
  geom_smooth(aes(group=cohort), color="grey20", span=1, se=F,linetype=3, size=1) + xlab("Month") +
  scale_color_manual(values=tableau10, drop=TRUE, limits = levels(d$region)) +
  scale_x_continuous(limits=c(1,364), expand = c(0, 0),
                     breaks = 1:6*30.41*2-50, labels = rep(c("Jan.", "Mar.", "May", "Jul.", "Sep.", "Nov."),1)) 
p1

ggsave(p1, file=paste0(here(),"/figures/wasting/season_WLZ_trajectories.png"), width=12, height=8)




df2 <- d %>% filter(region=="South Asia")
df2 <- calc.prev.agecat(df2)
df2$birthcat <- cut(df2$birthday+1, breaks=c(0, 91, 182, 273, 365), labels=c("Born Jan-Mar","Born Apr-June","Born Jul-Sept","Born Oct-Dec"))
df2 <- df2 %>% group_by(birthcat) %>% mutate(meanZ=mean(whz), prev=mean(whz < -2))

ann_text <- data.frame(studyday = c(1,3,5)*182, whz = -1.2,lab = c("Year 1","Year 2", "Year 3"),
                       birthcat = factor("Born Oct-Dec",
                                         levels = c("Born Jan-Mar","Born Apr-June","Born Jul-Sept","Born Oct-Dec")))


p2 <- ggplot(df2[df2$agedays<730,], aes(x=studyday, y=whz)) + facet_wrap(~birthcat, ncol=1) + 
  #geom_point(alpha=0.1, shape=19) + 
  geom_smooth(aes(color=birthcat), span=1, se=F, size=2) +
  geom_vline(xintercept=c(365,730)) +
  geom_hline(aes(yintercept=meanZ), linetype="dashed") +
  scale_color_manual(values=tableau10) + ylab("WLZ") + xlab("Month of the year") +
  scale_x_continuous(limits=c(1,1086), expand = c(0, 0),
                      breaks = 1:18*30.41*2-50, labels = rep(c("Jan.", "Mar.", "May", "Jul.", "Sep.", "Nov."),3)) +
  geom_text(data = ann_text,label =  c("Year 1","Year 2", "Year 3"), color="grey30") 
                                      
p2


p3 <- ggplot(df2[df2$agedays==1,], aes(x=birthday, y=whz)) + geom_smooth(aes(color=region), span=1, se=T, size=2) + 
        ylab("WLZ") + xlab("Birthday") +
  scale_x_continuous(limits=c(1,364), expand = c(0, 0),
                     breaks = 1:6*30.41*2-50, labels = rep(c("Jan.", "Mar.", "May", "Jul.", "Sep.", "Nov."),1)) 
p3

ggsave(p2, file=paste0(here(),"/figures/wasting/seasonal_trajectories_birthstrat.png"), width=8, height=5)
ggsave(p3, file=paste0(here(),"/figures/wasting/season_WLZ_at_birth.png"), width=8, height=5)




shade="grey90"


p2 <- ggplot(df2[df2$agedays<730,], aes(x=studyday, y=whz, group=birthcat)) + 
  geom_rect(aes(xmin = 30.4617*5, xmax = 30.4617*10 , ymin = -1.25, ymax = 1, fill = shade, color = shade), alpha=0.3) +
  #geom_point(alpha=0.1, shape=19) + 
  geom_smooth(aes(color=birthcat), span=1, se=F, size=2) +
  geom_vline(xintercept=c(365,730)) +
  #geom_hline(aes(yintercept=meanZ), linetype="dashed") +
  scale_color_manual(values=tableau10) + ylab("WLZ") + xlab("Month of the year") +
  scale_x_continuous(limits=c(1,1086), expand = c(0, 0),
                     breaks = 1:18*30.41*2-50, labels = rep(c("Jan.", "Mar.", "May", "Jul.", "Sep.", "Nov."),3)) +
  geom_text(data = ann_text,label =  c("Year 1","Year 2", "Year 3"), color="grey30") + 
  coord_cartesian(ylim=c(-1.25, 1))

p2


