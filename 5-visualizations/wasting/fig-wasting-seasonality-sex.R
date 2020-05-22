
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


#Check if children are measured spread throughout the year by cohort
# p <- ggplot(d, aes(x=jday, y=agedays)) + geom_smooth(aes(color=region), span=1, se=F, size=2) +
#   facet_wrap(~cohort) 
# p
#Only GMS nepal has a group of children all measured at the same age throughout the year.


p1 <- ggplot(d, aes(x=jday, y=whz)) + facet_wrap(region~sex, ncol=2) + geom_smooth(aes(color=region), span=1, se=F, size=2) +
  #geom_smooth(aes(group=cohort), color="grey20", span=1, se=F,linetype=3, size=1) + xlab("Month of the year") + ylab("Mean WLZ") +
  scale_color_manual(values=rep("grey20",3), drop=TRUE, limits = levels(d$region)) +
  scale_x_continuous(limits=c(1,364), expand = c(0, 0),
                     breaks = 1:6*30.41*2-50, labels = rep(c("Jan.", "Mar.", "May", "Jul.", "Sep.", "Nov."),1)) 

#-----------------------------------------
# define standardized plot names
#-----------------------------------------
p1_name = create_name(
  outcome = "wasting",
  cutoff = 2,
  measure = "mean",
  population = "region-stratified",
  location = "",
  age = "All ages",
  analysis = "seasonality"
)

# save plot and underlying data
ggsave(p1, file=paste0(here(),"/figures/wasting/fig-",p1_name,"_sex.png"), width=6, height=3)



d <- d %>% filter(region=="South Asia")
d <- d[d$agedays<730,]

#Count number of children
d %>% filter(agedays<=7) %>%
  group_by(studyid, country, subjid) %>% slice(1) %>%
  group_by(region) %>%
  summarize(nchild=n(), nstudies = length(unique(paste0(studyid, country))))

# 
# # estimate spline fit to mean z-scores by day of the year
# dsub = d[d$agedays<=7,]
# fiti <- mgcv::gam(whz ~ s(birthday, bs = "cr"), data = dsub)
# newd <- data.frame(birthday = 1:364)
# # estimate approximate simultaneous confidence intervals
# fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000)
# dfit <- data.frame(birthday = 1:364,  fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS)
# 
# p2 <- ggplot(data=dfit, aes(x=birthday, y=fit), color="grey20",  fill="grey20") +
#   geom_line(size=2) +
#   facet_wrap(~sex) +
#   geom_ribbon(aes(ymin=fit_lb, ymax=fit_ub), alpha=0.3, color=NA) +
#   ylab("Mean WLZ") + xlab("Birth month") +
#   scale_y_continuous(breaks = c(-16:0)/10) +
#   scale_x_continuous(limits=c(1,364), expand = c(0, 0),
#                      breaks = 1:6*30.4167*2-50, labels = rep(c("Jan.", "Mar.", "May", "Jul.", "Sep.", "Nov."),1)) 
# p2
# 
# p2_name = create_name(
#   outcome = "wasting",
#   cutoff = 2,
#   measure = "mean",
#   population = "birth-stratified",
#   location = "South Asia",
#   age = "Birth",
#   analysis = "seasonality"
# )
# 
# # save plot and underlying data
# ggsave(p2, file=paste0(here(),"/figures/wasting/fig-",p2_name,"_sex.png"), width=6, height=3)



#mlen <- 30.417
#d$birthcat <- cut(d$birthday+1, breaks=c(0, mlen*6, mlen*10, 365), labels=c("Born Jan-May","Born June-September","Born Oct-Dec"))
#d$birthcat <- cut(d$birthday+1, breaks=c(0, 91, 182, 273, 365), labels=c("Born Jan-Mar","Born Apr-June","Born Jul-Sept","Born Oct-Dec"))
d$birthcat <- factor(d$sex)
d <- d %>% group_by(birthcat) %>% mutate(meanZ=mean(whz), prev=mean(whz < -2))

#Mark each year and season
d$studyyear <- factor(floor(d$studyday/365) + 1, labels = c("Year 1","Year 2","Year 3"))
d$studyseason <- factor(interaction(d$studyyear, d$monsoon))


#Annotation dataframe
ann_text <- data.frame(studyday = c(1,3,5)*182, whz = -1.2, fit = -1.2, lab = c("Year 1","Year 2", "Year 3"),
                       birthcat = factor("Born Oct-Dec",
                                         #levels = c("Born Jan-Mar","Born Apr-June","Born Jul-Sept","Born Oct-Dec")))
                                         levels = c("Born Jan-May","Born June-September","Born Oct-Dec")))

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



# estimate a pooled fit, over all birthcats
plotdf <- NULL
for(i in 1:length(levels(d$birthcat))){
  cat=levels(d$birthcat)[i]
  di <- filter(d, birthcat==cat)
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




#Add points at 6, 12, and 18 months
plotdf$xpos <- plotdf$agem <- NA
plotdf$xpos[plotdf$agedays %in% c(182, 365,548)] <- plotdf$studyday[plotdf$agedays %in% c(182, 365,548)]
plotdf$agem[plotdf$agedays==182] <- "6 months"
plotdf$agem[plotdf$agedays==365] <- "12 months"
plotdf$agem[plotdf$agedays==548] <- "18 months"
table(plotdf$xpos)

#Add monsoon indicator to plot dataframe
plotdf$month <- floor(plotdf$studyday/30.417) + 1
plotdf$month[plotdf$month>12] <- plotdf$month[plotdf$month>12] - 12
plotdf$month[plotdf$month>12] <- plotdf$month[plotdf$month>12] -12
table(plotdf$month)

#Monsoon is assumed to be May-October 
plotdf$monsoon <- factor(ifelse(plotdf$month > 5 & plotdf$month < 10, "Monsoon", "Not monsoon"))



shade="grey80"

rectd=data.frame(x1=30.4617*c(5,17,29), x2=30.4617*c(10,22,34), y1=rep(-1.25, 3), y2=rep(0, 3))

p3 <- ggplot() +
  geom_rect(data=rectd, mapping=aes(xmin=x1, xmax=x2, ymin=y1, ymax=y2), fill=shade, color=shade, alpha=1) +
  geom_line(data=plotdf, aes(x=studyday, y=fit, group=birthcat, color=birthcat,  fill=birthcat), size=2) +
  geom_ribbon(data=plotdf, aes(x=studyday, y=fit, ymin=fit_lb, ymax=fit_ub, group=birthcat, color=birthcat,  fill=birthcat), alpha=0.3, color=NA) +
  scale_shape_manual(values=c(0,1,2), na.translate = F) +
  scale_color_manual(values=tableau10[c(5,7,9,10)], na.translate = F) + 
  scale_fill_manual(values=tableau10[c(5,7,9,10)], na.translate = F) + 
  ylab("Mean WLZ") + xlab("Month of the year") +
  scale_y_continuous(expand = c(0, 0)) +
  scale_x_continuous(limits=c(1,1086), expand = c(0, 0),
                     breaks = 1:18*30.41*2-50, labels = rep(c("Jan.", "Mar.", "May", "Jul.", "Sep.", "Nov."),3)) +
  coord_cartesian(ylim=c(-1.25, 0)) +
  guides(color=guide_legend(ncol=2)) + 
  theme(legend.position = c(.78,.9),
        legend.title = element_blank(),
        legend.background = element_blank(),
        legend.box.background = element_rect(colour = "black"),
        legend.text=element_text(size=rel(1)))


# save plot and underlying data
ggsave(p3, file=paste0(here(),"/figures/wasting/fig-birthmont-strat-seasonality-by-month_sex.png"), width=8, height=5)



#Compare birth trajectories by child age rather than calendar time
p4 <- ggplot() +
  geom_line(data=plotdf, aes(x=agedays, y=fit, group=birthcat, color=birthcat,  fill=birthcat), size=2, linetype="solid") +
  geom_ribbon(data=plotdf, aes(x=agedays, y=fit, ymin=fit_lb, ymax=fit_ub, group=birthcat, color=birthcat,  fill=birthcat), alpha=0.3, color=NA) +
  scale_shape_manual(values=c(0,1,2), na.translate = F) +
  scale_color_manual(values=tableau10[c(5,7,9,10)], na.translate = F) + 
  scale_fill_manual(values=tableau10[c(5,7,9,10)], na.translate = F) + 
  ylab("Mean WLZ") + xlab("Child age in months") +
  scale_y_continuous(expand = c(0, 0)) +
  scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                     breaks = 0:24*30.41, labels = 0:24) +
  coord_cartesian(ylim=c(-1.25, 0)) +
  guides(color=guide_legend(ncol=2)) + 
  theme(legend.position = c(.78,.9),
        legend.title = element_blank(),
        legend.background = element_blank(),
        legend.box.background = element_rect(colour = "black"),
        legend.text=element_text(size=rel(1)))

# save plot and underlying data
ggsave(p4, file=paste0(here(),"/figures/wasting/fig-birthmont-strat-seasonality-by-age_sex.png"), width=8, height=5)


#Save plot-objects
#saveRDS(list(p1, p2, p3, p4), file=here("/figures/plot-objects/season_plots_sex.rds"))


