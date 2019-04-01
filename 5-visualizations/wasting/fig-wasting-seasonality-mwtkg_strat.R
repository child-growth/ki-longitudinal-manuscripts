
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




#load covariates
cov<-readRDS("U:/ucb-superlearner/Stunting rallies/FINAL_clean_covariates.rds")
cov$subjid <- as.character(cov$subjid)
d$subjid <- as.character(as.numeric(d$subjid))

df <- left_join(d, cov, by=c("studyid","subjid", "country"))



p <- ggplot(df[df$region=="South Asia",], aes(x=jday, y=whz)) + geom_smooth(aes(color=region), span=1, se=F, size=2) +
  facet_wrap(~mwtkg) 
p






df2 <- df %>% filter(region=="South Asia")
df2 <- calc.prev.agecat(df2)
df2$birthcat <- cut(df2$birthday+1, breaks=c(0, 91, 182, 273, 365), labels=c("Born Jan-Mar","Born Apr-June","Born Jul-Sept","Born Oct-Dec"))
df2 <- df2 %>% group_by(birthcat,mwtkg) %>% mutate(meanZ=mean(whz), prev=mean(whz < -2))

ann_text <- data.frame(studyday = c(1,3,5)*182, whz = -1.2,lab = c("Year 1","Year 2", "Year 3"),
                       birthcat = factor("Born Oct-Dec",
                                         levels = c("Born Jan-Mar","Born Apr-June","Born Jul-Sept","Born Oct-Dec")))

df2$mwtkg <- factor(df2$mwtkg, levels=c("<52 kg","[52-58) kg",">=58 kg","<NA>"))
p2 <- ggplot(df2[df2$agedays<730,], aes(x=studyday, y=whz)) + facet_grid(birthcat~mwtkg) + 
  #geom_point(alpha=0.1, shape=19) + 
  geom_smooth(aes(color=birthcat), span=1, se=F, size=2) +
  geom_vline(xintercept=c(365,730)) +
  geom_hline(aes(yintercept=meanZ), linetype="dashed") +
  scale_color_manual(values=tableau10) + ylab("WLZ") + xlab("Month of the year") +
  scale_x_continuous(limits=c(1,1086), expand = c(0, 0),
                     breaks = 1:18*30.41*2-50, labels = rep(c("Jan.", "Mar.", "May", "Jul.", "Sep.", "Nov."),3)) #+
 # geom_text(data = ann_text,label =  c("Year 1","Year 2", "Year 3"), color="grey30") 

p2

