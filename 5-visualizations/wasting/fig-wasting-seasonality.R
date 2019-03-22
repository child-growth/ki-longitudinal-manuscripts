
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

# p1 <- ggplot(d, aes(x=jday, y=whz, group=region, color=region))  + geom_smooth(span=1, se=F)
# p1
# 
# p2 <- ggplot(d, aes(x=studyday, y=whz, group=region, color=region))  + geom_smooth(span=1, se=F)
# p2

d$cohort <- paste0(d$studyid, " ", d$country)

library(ggrepel)

p3 <- ggplot(d, aes(x=jday, y=whz)) + facet_wrap(~region) + geom_smooth(aes(color=region), span=1, se=F, size=2) +
  geom_smooth(aes(group=cohort), color="grey20", span=1, se=F,linetype=3, size=1) + xlab("Julian day") +
  scale_color_manual(values=tableau10, drop=TRUE, limits = levels(d$region)) #+
  #geom_label_repel(aes(label=region))
p3
ggsave(p3, file=paste0(here(),"/figures/wasting/season_WLZ_trajectories.png"), width=12, height=8)


# p4 <- ggplot(d, aes(x=jday, y=100*(whz< -2))) + facet_wrap(~region) + geom_smooth(aes(color=region), span=1, se=F, size=2) +
#   geom_smooth(aes(group=cohort, color=country), span=1, se=F,linetype=3, size=1) + xlab("Julian day") + ylab("Wasting prevalence")
# p4
# 
# 
# 
# p5 <- ggplot(d, aes(x=jday, y=waz)) + facet_wrap(~region) + geom_smooth(aes(color=region), span=1, se=F, size=2) +
#   geom_smooth(aes(group=cohort, color=country), span=1, se=F,linetype=3, size=1) + xlab("Julian day")
# p5
# 
# 
# 
# p6 <- ggplot(d, aes(x=jday, y=haz)) + facet_wrap(~region) + geom_smooth(aes(color=region), span=1, se=F, size=2) +
#   geom_smooth(aes(group=cohort, color=country), span=1, se=F,linetype=3, size=1) + xlab("Julian day")
# p6



#Seasonality by age
p7 <- ggplot(d[d$agedays < 12*30.4167,], aes(x=jday, y=whz)) + facet_wrap(~region) + geom_smooth(aes(color=region), span=1, se=F, size=2) +
  geom_smooth(aes(group=cohort), color="grey20", span=1, se=F,linetype=3, size=1) + xlab("Julian day") +
  scale_color_manual(values=tableau10, drop=TRUE, limits = levels(d$region)) #+
#geom_label_repel(aes(label=region))
p7

p8 <- ggplot(d[d$agedays >= 12*30.4167,], aes(x=jday, y=whz)) + facet_wrap(~region) + geom_smooth(aes(color=region), span=1, se=F, size=2) +
  geom_smooth(aes(group=cohort), color="grey20", span=1, se=F,linetype=3, size=1) + xlab("Julian day") +
  scale_color_manual(values=tableau10, drop=TRUE, limits = levels(d$region)) #+
#geom_label_repel(aes(label=region))
p8



p9 <- ggplot(d[d$agedays < 6*30.4167,], aes(x=jday, y=whz)) + facet_wrap(~region) + geom_smooth(aes(color=region), span=1, se=F, size=2) +
  geom_smooth(aes(group=cohort), color="grey20", span=1, se=F,linetype=3, size=1) + xlab("Julian day") +
  scale_color_manual(values=tableau10, drop=TRUE, limits = levels(d$region)) #+
#geom_label_repel(aes(label=region))
p9


p9 <- ggplot(d[d$agedays >= 6*30.4167,], aes(x=jday, y=whz)) + facet_wrap(~region) + geom_smooth(aes(color=region), span=1, se=F, size=2) +
  geom_smooth(aes(group=cohort), color="grey20", span=1, se=F,linetype=3, size=1) + xlab("Julian day") +
  scale_color_manual(values=tableau10, drop=TRUE, limits = levels(d$region)) #+
#geom_label_repel(aes(label=region))
p9



d$agecat <- NA 
d$agecat[d$agedays < 12*30.4167] <- "0-6" 
d$agecat[d$agedays >= 12*30.4167] <- "6-24" 

df <- d %>% group_by(region, agecat, month) %>% summarize(N=n(), mn=mean(whz)) %>% filter(N>50)

ggplot(df[df$region=="South Asia",], aes(x=month, y=mn)) + facet_wrap(~agecat) + geom_smooth(aes(color=region), span=1, se=F, size=2) 
ggplot(df[df$region=="Africa",], aes(x=month, y=mn)) + facet_wrap(~agecat) + geom_smooth(aes(color=region), span=1, se=F, size=2) 

df %>% group_by(region, agecat) %>% summarize(diff=max(mn)-min(mn)) %>%
  as.data.frame()


df2 <- d %>% filter(region=="South Asia")
ggplot(df2, aes(x=studyday, y=whz)) + facet_wrap(~brthmon) + geom_smooth(aes(color=region), span=1, se=F, size=2) 

df2$x <- (df2$brthmon-1)*30.4167 - 30.4167/2 + df2$agedays
ggplot(df2, aes(x=x, y=whz)) + facet_wrap(~brthmon) + geom_smooth(aes(color=region), span=1, se=F, size=2) 
ggplot(df2[df2$agedays==1,], aes(x=birthday, y=whz)) + geom_smooth(aes(color=region), span=1, se=F, size=2) 

df2 <- calc.prev.agecat(df2)
ggplot(df2, aes(x=birthday, y=whz)) + facet_wrap(~agecat) + stat_smooth(method = "gam", formula = y ~ s(x, k = 5), se=F, size = 1)
ggplot(df2, aes(x=birthday, y=1*(whz < -2))) + facet_wrap(~agecat) + stat_smooth(method = "gam", formula = y ~ s(x, k = 3), se=F, size = 1)

ggplot(df2, aes(x=jday, y=whz)) + facet_wrap(~brthmon) + geom_smooth(aes(color=region), span=1, se=F, size=2) 

# 
# df2$agecat[df2$agedays < 12*30.4167] <- "0-12" 
# df2$agecat[df2$agedays >= 12*30.4167] <- "12-24" 
# ggplot(df2, aes(x=jday, y=whz)) + facet_wrap(brthmon~agecat) + geom_smooth(aes(color=region), span=1, se=F, size=2) 


df2$birthcat <- cut(df2$birthday+1, breaks=c(0, 91, 182, 273, 365), labels=c("Jan-Mar","Apr-June","Jul-Sept","Oct-Dec"))
ggplot(df2, aes(x=jday, y=whz)) + facet_wrap(~birthcat) + geom_smooth(aes(color=region), span=1, se=F, size=2) 

ggplot(df2[df2$agedays<730,], aes(x=studyday, y=whz)) + facet_wrap(~birthcat) + geom_smooth(aes(color=region), span=1, se=F, size=2) 


df2 <- df2 %>% group_by(birthcat) %>% mutate(meanZ=mean(whz), prev=mean(whz < -2))
p1 <- ggplot(df2[df2$agedays<730,], aes(x=studyday, y=whz)) + facet_wrap(~birthcat, ncol=1) + 
  #geom_point(alpha=0.1, shape=19) + 
  geom_smooth(aes(color=birthcat), span=1, se=F, size=2) +
  geom_vline(xintercept=c(365,730)) +
  geom_hline(aes(yintercept=meanZ), linetype="dashed") +
  scale_color_manual(values=tableau10) + ylab("WLZ") + xlab("Month of the year") +
  scale_x_continuous(limits=c(1,1086), expand = c(0, 0),
                      breaks = 1:18*30.41*2-50, labels = rep(c("Jan.", "Mar.", "May", "Jul.", "Sep.", "Nov."),3)) +
  #annotate(geom = "text", x = 1:3 * 180, y = 32, aes(label = rep(c("Year 1", "Year 2", "Year 3"),1)), size = 6)
  #geom_text(x = 1:3 * 180, y = -1, label = c("Year 1", "Year 2", "Year 3"), size = 6)
#geom_text(x = 180, y = -1, label = c("Year 1"), size = 6)  
geom_text(x = 180, y = -1.2, label = c("Year 1"), size = 4) +
  geom_text(x = 180*3, y = -1.2, label = c("Year 2"), size = 4) +
  geom_text(x = 180*5, y = -1.2, label = c("Year 3"), size = 4) 

p1

p2 <- ggplot(df2[df2$agedays==1,], aes(x=birthday, y=whz)) + geom_smooth(aes(color=region), span=1, se=T, size=2) + 
        ylab("WLZ") + xlab("Birthday")

ggsave(p1, file=paste0(here(),"/figures/wasting/seasonal_trajectories_birthstrat.png"), width=8, height=5)
ggsave(p2, file=paste0(here(),"/figures/wasting/season_WLZ_at_birth.png"), width=8, height=5)

df2 %>% group_by(studyid, subjid, birthcat) %>% summarize(meanZ=mean(whz), sdZ=sd(whz, na.rm=T)) %>%
  group_by(birthcat) %>% summarize(meanZ=mean(meanZ), sdZ=mean(sdZ, na.rm=T))


ggplot(df2[df2$agedays==1,], aes(x=birthday, y=1*(whz< (-2)))) + geom_smooth(aes(color=region), span=1, se=T, size=2) 


ggplot(df2[df2$agedays<730,], aes(x=studyday, y=1*(whz< -2))) + facet_wrap(~birthcat, ncol=1) + 
  #geom_point(alpha=0.1, shape=19) + 
  geom_smooth(aes(color=birthcat), span=1, se=F, size=2) +
  scale_color_manual(values=tableau10) + ylab("Wasting Prevalence") +
  geom_hline(aes(yintercept=prev), linetype="dashed") 
#coord_cartesian(ylim=c(-2,1))

df2$studymonth <- ceiling(df2$studyday/30.4167)
df3 <- df2 %>% filter(df3$agedays<730) %>% group_by(birthcat, studymonth) %>% summarize(mn=mean(whz), se =sd(whz))
ggplot(df3, aes(x=studymonth, y=mn)) + facet_wrap(~birthcat, ncol=1) + 
  geom_line(aes(color=birthcat)) +
  #geom_hline(aes(yintercept=meanZ), linetype="dashed") +
  scale_color_manual(values=tableau10) + ylab("WLZ")

df4 <- df2
df4$birthcat <- cut(df4$birthday+1, breaks=c(30.4167 * 0:12))
df4 <- df4 %>% group_by(birthcat) %>% mutate(meanZ=mean(whz), prev=mean(whz < -2))
ggplot(df4[df4$agedays<730,], aes(x=studyday, y=whz)) + facet_wrap(~birthcat, nrow=1) + 
  #geom_point(alpha=0.1, shape=19) + 
  geom_smooth(aes(color=birthcat), span=1, se=F, size=2) +
  geom_hline(aes(yintercept=meanZ), linetype="dashed") +
  scale_color_manual(values=c(tableau10,tableau10)) + ylab("WLZ")


