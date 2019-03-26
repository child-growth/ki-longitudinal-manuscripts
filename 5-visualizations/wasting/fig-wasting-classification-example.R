

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))

source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())

load("U:/ucb-superlearner/data/Wasting_inc_data.RData")

#Subset to monthly
d <- d %>% filter(measurefreq == "monthly")

#Subset to under 2 years
d <- d %>% filter(agedays < 24 * 30.4167)








#------------------------------------------
# Individual trajectory plot function
#------------------------------------------
ind_traj_plot <- function(d){
  
  #set up colors
  colors <-  c("green", "orange", "red", "grey80", "grey40")
  names(colors) = c("Not wasted", "Wasted", "Severe wasted", "Born wasted", "Born severe wasted")
  
  tj <- d %>% arrange(agedays) %>% subset(., select=c(agedays, whz, wasting_episode, sevwasting_episode, wast_inc, sevwast_inc, wast_rec, sevwast_rec, period_length, wasting_duration))
  
  wastinc<-paste0("Wasting episodes: ",sum(tj$wast_inc, na.rm=T))
  sevwastinc<-paste0("Severe wasting episodes: ",sum(tj$sevwast_inc, na.rm=T))
  wastrec<-paste0("Wasting recoveries: ",sum(tj$wast_rec, na.rm=T))
  sevwastrec<-paste0("Severe wasting recoveries: ",sum(tj$sevwast_rec, na.rm=T))
  
  episode_durations <- NA
  episode_durations <- tj$wasting_duration[!is.na(tj$wasting_duration)]
  dur<-paste0("First episode duration: ",episode_durations[1])
  
  
  tj$`Wasting status`<-NA
  tj$`Wasting status`[tj$wasting_episode=="Not Wasted"]<-"Not wasted"
  tj$`Wasting status`[tj$wasting_episode=="Wasted"]<-"Wasted"
  tj$`Wasting status`[tj$wasting_episode=="Born Wasted"]<-"Born wasted"
  tj$`Wasting status`[tj$sevwasting_episode=="Born Severe Wasted"]<-"Born severe wasted"
  tj$`Wasting status`[tj$sevwasting_episode=="Severe Wasted"]<-"Severe wasted"
  tj$`Wasting status` <- factor(tj$`Wasting status`)                      
  table(tj$`Wasting status`)
  #tj <- tj %>% mutate(`Wasting status` = na.locf(`Wasting status`, fromLast=F), `Wasting status`=factor(`Wasting status`, levels=c("Not wasted","Wasted","Severe wasted")))
  
  tj$wasting_episode <- factor(tj$wasting_episode)
  tj$w1 <- tj$agedays-(tj$agedays-lag(tj$agedays))/2
  tj$w2 <- tj$agedays+(lead(tj$agedays)-tj$agedays)/2
  tj$w1[is.na(tj$w1)] <- tj$agedays[is.na(tj$w1)]
  tj$w2[is.na(tj$w2)] <- tj$agedays[is.na(tj$w2)]
  p <- ggplot(tj, aes(x=agedays, y=whz)) + 
    geom_line(lwd=2) +
    scale_fill_manual(values = colors) +   
    geom_rect(aes(xmin = w1, xmax = w2 , ymin = -4, ymax =1.5, fill = `Wasting status`, color = NULL), alpha=0.3) +
    guides(colour=FALSE) + xlab("Child Age (Days)") + theme(strip.background = element_blank()) +
    geom_hline(yintercept= -2, color="grey20", linetype=2) +
    geom_hline(yintercept= -3, color="grey20", linetype=2) +
    geom_text(aes(x=agedays, label=period_length), color="white") +
    #geom_text_repel(aes(x=agedays, label=period_length), color="white") +  
    geom_text(aes(x=300,y=1.2,label=wastinc))+#geom_text(aes(x=300,y=1,label=sevwastinc))+ 
    geom_text(aes(x=300,y=1,label=wastrec))+#geom_text(aes(x=300,y=0.6,label=sevwastrec))+ 
    #geom_text(aes(x=300,y=0.4,label=dur))+ 
    coord_cartesian(xlim=c(1,732), ylim=c(-4,1.5), expand = c(0,0)) +
    ylab("whz")  +
    geom_text(data=ann_text,label =  c("Year 1","Year 2"), color="grey30")+
    scale_x_continuous(limits=c(1,731), expand = c(0, 0),
                       breaks = 1:12*30.41*2-50, labels = rep(c("Jan.", "Mar.", "May", "Jul.", "Sep.", "Nov."),2)) 
    #+ aes(alpha=alpha, group=factor(subjid)) + guides(alpha=FALSE)
  p
  
  return(p)  
}

ann_text <- data.frame(agedays = c(1,3)*182, whz = -3.8,lab = c("Year 1","Year 2"))


#------------------------------------------
# Load incidence data and create a plot per individual
#------------------------------------------

df <- d %>% filter(studyid=="ki0047075b-MAL-ED")

p <- ind_traj_plot(df[df$subjid==unique(df$subjid)[i],])
print(p)





p2 <- ggplot(df2[df2$agedays<730,], aes(x=studyday, y=whz)) + facet_wrap(~birthcat, ncol=1) + 
  #geom_point(alpha=0.1, shape=19) + 
  geom_smooth(aes(color=birthcat), span=1, se=F, size=2) +
  geom_vline(xintercept=c(365,730)) +
  geom_hline(aes(yintercept=meanZ), linetype="dashed") +
  scale_color_manual(values=tableau10) + ylab("WLZ") + xlab("Month of the year") +
  scale_x_continuous(limits=c(1,1086), expand = c(0, 0),
                     breaks = 1:18*30.41*2-50, labels = rep(c("Jan.", "Mar.", "May", "Jul.", "Sep.", "Nov."),3)) +
  geom_text(x = c(1,3)*182, y = -4,label =  c("Year 1","Year 2", "Year 3"), color="grey30") 

p2



pdf(paste0(here(),"\figures\individual_traj.pdf"),width=10,height=8.5)    
for(i in 1:length(unique(df$subjid))){   
  p <- ind_traj_plot(df[df$subjid==unique(df$subjid)[i],])
  print(p)
  
}
dev.off()

