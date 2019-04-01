
#-----------------------------------------
# Process data for wasting traj figures
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))

source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())





d <- readRDS("U:/ucb-superlearner/data/seasonality_data.rds")

d$region[d$region=="Asia"] <- "South Asia"
d$region <- factor(d$region, levels=c("Africa", "Latin America", "South Asia"))


d$cohort <- paste0(d$studyid, " ", d$country)

d$month <- floor(d$jday/30.417) + 1
table(d$month)

#Monsoon is assumed to be June-September 
d$monsoon <- factor(ifelse(d$month > 5 & d$month < 10, "Monsoon", "Not monsoon"))


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


ggsave(p1, file=paste0(here(),"/figures/wasting/season_WLZ_trajectories.png"), width=12, height=8)




d <- d %>% filter(region=="South Asia")
d <- calc.prev.agecat(d)
d$birthcat <- cut(d$birthday+1, breaks=c(0, 91, 182, 273, 365), labels=c("Born Jan-Mar","Born Apr-June","Born Jul-Sept","Born Oct-Dec"))
d <- d %>% group_by(birthcat) %>% mutate(meanZ=mean(whz), prev=mean(whz < -2))

#Mark each year and season
d$studyyear <- factor(floor(d$studyday/365) + 1, labels = c("Year 1","Year 2","Year 3"))
d$studyseason <- factor(interaction(d$studyyear, d$monsoon))

# d2 <- d %>% filter(monsoon == "Monsoon") %>% arrange(studyday)
# unique(d2$studyday)

#Annotation dataframe
ann_text <- data.frame(studyday = c(1,3,5)*182, whz = -1.2, fit = -1.2, lab = c("Year 1","Year 2", "Year 3"),
                       birthcat = factor("Born Oct-Dec",
                                         levels = c("Born Jan-Mar","Born Apr-June","Born Jul-Sept","Born Oct-Dec")))

# Note: need to calculate WLZ change over seasons 
# (Summarize in boxplots)
d$season_change <- NA
d$season_change[d$monsoon=="Not monsoon"] <- "Entering monsoon season"
d$season_change[d$monsoon=="Monsoon"] <- "Leaving monsoon season"
d$season_change <- factor(d$season_change, levels=c("Entering monsoon season", "Leaving monsoon season"))

#Make sure the inter-monsoon periods have the same category
monsoon_timing <- d %>% group_by(monsoon, studyyear) %>% summarize(mean_age = mean(studyday))

d$studyseason <- as.character(d$studyseason)
d$studyseason[d$studyseason=="Year 1.Not monsoon" & d$studyday > monsoon_timing$mean_age[1]] <- "Year 2.Not monsoon"
d$studyseason[d$studyseason=="Year 2.Not monsoon" & d$studyday > monsoon_timing$mean_age[2]] <- "Year 3.Not monsoon"
d$studyseason <- factor(d$studyseason)

#Create category to summarize mean WLZ based on season and birthcat
d$studyseason_birthcat <- factor(interaction(d$studyseason, d$birthcat))
table(d$studyseason_birthcat)
table(d$birthcat, d$studyseason)

df <- d %>% group_by(birthcat, studyseason_birthcat) %>% summarize(age1=mean(agedays), wlz1=mean(whz), season_change=season_change[1]) %>%
     group_by(birthcat) %>% arrange(birthcat,age1) %>%
     mutate(age2=lead(age1), wlz2=lead(wlz1))
df


ggplot(df, aes(color=birthcat)) + geom_segment(aes(x=age1, y=wlz1, xend=age2, yend=wlz2), size=2) +
  scale_color_manual(values=tableau10) + facet_wrap(~season_change) + theme(legend.position = "right")

ggplot(df, aes(color=birthcat)) + geom_point(aes(x=age1, y=wlz2-wlz1), size=3) +
  scale_color_manual(values=tableau10) + facet_wrap(~season_change) + theme(legend.position = "right")


XXXXXXXXX
#Why is there only 1 red recovery?





#test if the pooled means are significantly different
pvals <- ki.ttest(data=d, y="whz", levels="studyseason", ref="Year 1.Not monsoon", comp=c("Year 1.Monsoon", "Year 2.Not monsoon"))
pvals

pvals <- ki.ttest(data=d, y="whz", levels="studyseason_birthcat", ref="Year 1.Monsoon.Born Jan-Mar",  comp=c("Year 2.Monsoon.Born Jan-Mar","Year 1.Monsoon.Born Apr-June"))
pvals



res <- ki.glm(data=d, y="whz", levels="studyseason_birthcat", ref="Year 1.Monsoon.Born Jan-Mar",  comp=c("Year 2.Monsoon.Born Jan-Mar","Year 1.Monsoon.Born Apr-June"))
res


#Note: need to write function to test if change in means between time of birth varies. 

# p2 <- ggplot(df2[df2$agedays<730,], aes(x=studyday, y=whz)) + facet_wrap(~birthcat, ncol=1) + 
#   #geom_point(alpha=0.1, shape=19) + 
#   geom_smooth(aes(color=birthcat), span=1, se=F, size=2) +
#   geom_vline(xintercept=c(365,730)) +
#   geom_hline(aes(yintercept=meanZ), linetype="dashed") +
#   scale_color_manual(values=tableau10) + ylab("WLZ") + xlab("Month of the year") +
#   scale_x_continuous(limits=c(1,1086), expand = c(0, 0),
#                       breaks = 1:18*30.41*2-50, labels = rep(c("Jan.", "Mar.", "May", "Jul.", "Sep.", "Nov."),3)) +
#   geom_text(data = ann_text,label =  c("Year 1","Year 2", "Year 3"), color="grey30") 
#                                       
# p2

shade="grey80"
df <- d[d$agedays<730,]


#Add points at 6, 12, and 18 months
# estimate a pooled fit, over all birthcats
plotdf <- NULL
for(i in 1:length(levels(df$birthcat))){
    cat=levels(df$birthcat)[i]
    di <- filter(df, birthcat==cat)
    fiti <- mgcv::gam(whz~s(studyday,bs="cr", k=10),data=di)
    range=min(di$studyday):max(di$studyday)
    agedays=1:(diff(range(range))+1)
    newd <- data.frame(studyday=range)
    fitci <- gamCI(m=fiti,newdata=newd,nreps=1000)
    dfit <- data.frame(birthcat=cat,studyday=range, agedays=agedays,
                       fit=fitci$fit,fit_se=fitci$se.fit,
                       fit_lb=fitci$lwrS,fit_ub=fitci$uprS)
    plotdf<-rbind(plotdf,dfit)
  }




# p2 <- ggplot(df, aes(x=studyday, y=whz, group=birthcat)) +
#   geom_rect(aes(xmin = 30.4617*5, xmax = 30.4617*10 , ymin = -1.25, ymax = 1), fill = shade, color = shade, alpha=0.3) +
#   geom_rect(aes(xmin = 30.4617*17, xmax = 30.4617*22 , ymin = -1.25, ymax = 1), fill = shade, color = shade, alpha=0.3) +
#   geom_rect(aes(xmin = 30.4617*29, xmax = 30.4617*34 , ymin = -1.25, ymax = 1), fill = shade, color = shade, alpha=0.3) +
#   #geom_point(alpha=0.1, shape=19) +
#   geom_smooth(aes(color=birthcat), span=1, se=F, size=2) +
#   geom_vline(xintercept=c(365,730)) +
#   #geom_hline(aes(yintercept=meanZ), linetype="dashed") +
#   scale_color_manual(values=tableau10) + ylab("WLZ") + xlab("Month of the year") +
#   scale_y_continuous(expand = c(0, 0)) +
#   scale_x_continuous(limits=c(1,1086), expand = c(0, 0),
#                      breaks = 1:18*30.41*2-50, labels = rep(c("Jan.", "Mar.", "May", "Jul.", "Sep.", "Nov."),3)) +
#   geom_text(data = ann_text,label =  c("Year 1","Year 2", "Year 3"), color="grey30") +
#   coord_cartesian(ylim=c(-1.25, -0.25))
# 
# print(p2)

plotdf$xpos <- plotdf$agem <- NA
plotdf$xpos[plotdf$agedays %in% c(182, 365,548)] <- plotdf$studyday[plotdf$agedays %in% c(182, 365,548)]
plotdf$agem[plotdf$agedays==182] <- "6 months"
plotdf$agem[plotdf$agedays==365] <- "12 months"
plotdf$agem[plotdf$agedays==548] <- "18 months"

table(plotdf$xpos)

p2 <- ggplot(plotdf, aes(x=studyday, y=fit, group=birthcat, color=birthcat,  fill=birthcat)) +
  geom_rect(aes(xmin = 30.4617*5, xmax = 30.4617*10 , ymin = -1.25, ymax = 0), fill = shade, color = shade, alpha=0.1) +
  geom_rect(aes(xmin = 30.4617*17, xmax = 30.4617*22 , ymin = -1.25, ymax = 0), fill = shade, color = shade, alpha=0.1) +
  geom_rect(aes(xmin = 30.4617*29, xmax = 30.4617*34 , ymin = -1.25, ymax = 0), fill = shade, color = shade, alpha=0.1) +
  #geom_smooth(aes(color=birthcat), span=1, se=F, size=2) +
  geom_line(size=2) +
  geom_ribbon(aes(ymin=fit_lb, ymax=fit_ub), alpha=0.1, color=NA) +
  geom_point(aes(x=xpos, y=fit, shape=agem), size=4) +
  geom_vline(xintercept=c(365,730)) +
  scale_color_manual(values=tableau10[c(7:10)]) + 
  scale_fill_manual(values=tableau10[c(7:10)]) + 
  ylab("WLZ") + xlab("Month of the year") +
  scale_y_continuous(expand = c(0, 0)) +
  scale_x_continuous(limits=c(1,1086), expand = c(0, 0),
                     breaks = 1:18*30.41*2-50, labels = rep(c("Jan.", "Mar.", "May", "Jul.", "Sep.", "Nov."),3)) +
  geom_text(data = ann_text,label =  c("Year 1","Year 2", "Year 3"), color="grey30") +
  coord_cartesian(ylim=c(-1.25, 0)) + guides(shape=guide_legend(ncol=2), color=guide_legend(ncol=2)) + #guides(color = FALSE) + 
  theme(legend.position = c(.9,.85),
         legend.title = element_blank(),
         legend.background = element_blank(),
         legend.box.background = element_rect(colour = "black"),
         legend.text=element_text(size=rel(0.5)))

print(p2)




p3 <- ggplot(df2[df2$agedays==1,], aes(x=birthday, y=whz)) + geom_smooth(aes(color=region), span=1, se=T, size=2) + 
        ylab("WLZ") + xlab("Birthday") +
  scale_x_continuous(limits=c(1,364), expand = c(0, 0),
                     breaks = 1:6*30.41*2-50, labels = rep(c("Jan.", "Mar.", "May", "Jul.", "Sep.", "Nov."),1)) 
p3

ggsave(p2, file=paste0(here(),"/figures/wasting/seasonal_trajectories_birthstrat.png"), width=8, height=5)
ggsave(p3, file=paste0(here(),"/figures/wasting/season_WLZ_at_birth.png"), width=8, height=5)









