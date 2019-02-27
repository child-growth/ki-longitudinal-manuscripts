




rm(list=ls())
library(tidyverse)
library(metafor)
library(EValue)

load("C:/Users/andre/Documents/HBGDki/Results/sprint_7D_longbow-master/sprint_7D_longbow-master/adjusted_binary/adjusted_binary_results.Rdata")
#load("C:/Users/andre/Downloads/sprint_7D_longbow-master/sprint_7D_longbow-master/unadjusted_binary/unadjusted_binary_results.rdata")

d <- results
unique(d$intervention_variable)


#Subset to relative risks
d <- d %>% filter(type=="RR")


#Subset to primary outcomes
table(d$agecat)
table(is.na(d$agecat))

#d <- d %>% filter(agecat=="0-6 months"| agecat=="6 months"| agecat=="6-24 months"| agecat=="24 months")
#d <- d %>% filter(!is.na(agecat) & agecat!="Birth")

#Drop enrolled stunted as a RF for stunting
d <- d %>% filter(intervention_variable!="enstunt")

#Keep significant estimates
d <- d %>% filter((ci_upper <1 & ci_lower <1) | (ci_upper >1 & ci_lower >1))



head(d)

evalues.RRvec <- function(d, pointest=T){
  vec<-NULL
  
  if(pointest){
    for(i in 1:nrow(d)){
      if(d$intervention_level[i]== d$baseline_level[i]){
        res<-NA
      }else{
      suppressMessages(res <- evalues.RR( d$estimate[i], d$ci_lower[i], d$ci_upper[i]))
      res<-res[2,1]
      }
    vec<-c(vec,res)
    }
  }else{
    for(i in 1:nrow(d)){
      if(d$ci_lower[i] <= 1  & d$ci_upper[i] >= 1){
        res<-NA
      }else{
        ci <- d$ci_lower[i]
        if(1/d$ci_lower[i]>1/d$ci_upper[i]){ ci <- d$ci_upper[i]}
        suppressMessages(res <- evalues.RR(ci))
        res<-res[2,1]
      }
      vec<-c(vec,res)}
  }
  return(vec)
}

d$EVals<-evalues.RRvec(d)
d$EVals_lb<-evalues.RRvec(d, pointest=F)

mean(d$EVals, na.rm=T)
mean(d$EVals_lb, na.rm=T)

summary(d$EVals, na.rm=T)
summary(d$EVals_lb, na.rm=T)

mean(d$estimate[!(d$ci_lower <= 1  & d$ci_upper >= 1)])

2.2/1.52 #Need on average 50% stronger unmeasured confounding than point estimate to move estimates to null
3.997/1.92 #Need on average 160% stronger unmeasured confounding than point estimate to make significant estimates insignificant

#Flip RR
d$estimate <- ifelse(d$estimate>1, d$estimate, 1/d$estimate )


p <- ggplot(d, aes(x=estimate, y=EVals)) + geom_point(alpha=0.1) + #geom_smooth(color="red") +
  #geom_abline(slope=1, intercept=0) +
  geom_vline(aes(xintercept=1)) + geom_hline(aes(yintercept=1)) + 
  #coord_equal(xlim = c(0.25,15), ylim = c(0.25,15)) +
  scale_x_continuous(trans='log10') +
  scale_y_continuous(trans='log10') +
  xlab("Adjusted RR") + ylab("E value") +
  theme(
    strip.text.x = element_text(size=12),
    axis.text.x = element_text(size=12)) 
p





d <- d %>% filter(!is.na(EVals_lb))
gm_mean = function(x, na.rm=TRUE){
  exp(sum(log(x[x > 0]), na.rm=na.rm) / length(x))
}
mean <- gm_mean(d$EVals_lb)


median<-exp(median(log(d$EVals_lb)))

mean(d$EVals_lb/d$estimate)
gm_mean(d$EVals_lb/d$estimate)
median(d$EVals_lb/d$estimate)


labs<-data.frame(points_pos=rep(NA,2))
labs$points_pos <-c(median, mean)
labs$points_posy <-c(1.29, 1.14)
labs$points_pos_labels <- c("Median: 2.5","Geometric Mean: 3.0")

scaleFUN <- function(x) sprintf("%.2f", x)
yticks <- c(1,2,4,8,16,32,64)
#Plot themes
theme_set(theme_bw())

#hbgdki pallet
tableau10 <- c("black","#1F77B4","#FF7F0E","#2CA02C","#D62728", 
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")

p <- ggplot(data=d) +  geom_density(aes(x=EVals_lb, color=T, fill=T), size=2, alpha=0.5) + coord_cartesian(xlim = c(1, 64),ylim = c(0, 1.4), expand = c(0, 0)) +
  geom_point(data=labs, aes(x=points_pos, y=points_posy), size=4, shape=25, fill="black") +
  geom_text(data=labs, aes(x=points_pos, y=points_posy, label=points_pos_labels ), hjust=-0.3) +
  scale_x_continuous(breaks=yticks, trans='log10') + theme_bw() + xlab("E-Value (RR between exposure and confounder,\nand between confounder and outcome)") + ylab("Density") + ggtitle("E-Values required to remove significance of\nassociations with stunting outcomes") +
  scale_fill_manual(values=tableau10[2]) + scale_color_manual(values=tableau10[2]) +
  #scale_x_continuous( trans='log10', labels=scaleFUN) +
  theme(strip.background = element_blank(),
        legend.position="none",
        strip.text.x = element_text(size=12),
        axis.text.x = element_text(size=12))
p


ggsave(p, file="C:/Users/andre/Dropbox/HBGDki figures/Stunting Webinar/EValue_density.png", width=6, height=5)




fivenum(d$EVals_lb)


p <-  ggplot(df, aes(x=studyid)) + 
  #geom_point(aes(y=RR, fill=region, color=region), size = 4, shape= ifelse(df$pooled==1,5,6)) +
  geom_point(aes(shape=pooled, y=RR, fill=region, color=region), size = 4) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=region)) +
  coord_flip(ylim=range(yticks)) +
  labs(x = "Risk factor level", y = "Relative risk") +
  geom_hline(yintercept = 1) +
  geom_vline(xintercept = 2.5, linetype=2) +
  geom_vline(xintercept = 5.5) +
  geom_text(aes(y=0.12, label=Nstudies), size=3,  hjust=0) +
  geom_text(aes(y=8, label=adjustment_set), size=2,  hjust=0) +
  scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN) +
  scale_shape_manual(values=c(21, 23)) +
  scale_fill_manual(values=rep(tableau10,4), drop=TRUE, limits = levels(df$region)) +
  scale_colour_manual(values=rep(tableau10,4), drop=TRUE, limits = levels(df$region)) +
  scale_size_continuous(range = c(0.5, 1))+
  theme(strip.background = element_blank(),
        legend.position="bottom",
        strip.text.x = element_text(size=12),
        axis.text.x = element_text(size=12, angle = 45, hjust = 1)) +
  facet_wrap(~intervention_level, ncol=1) +
  ggtitle(paste0("Risk factor: ", df$RFlabel[1], "\n",
                 "Ref. level: ", df$baseline_level[!is.na(df$baseline_level)], "\n", 
                 "Outcome: ", df$agecat))
p
