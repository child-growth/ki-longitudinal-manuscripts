


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))
library(EValue)

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())



#Load data
d <- readRDS(paste0(here::here(),"/results/rf results/pooled_RR_results.rds"))
#d <- readRDS(paste0(here::here(),"/6-shiny-app/RF app/shiny_rf_results.rds"))
#d <- d %>% filter(type=="RR")

#Drop reference levels
d <- d %>% filter(!(logRR.psi==1 & logSE==0 & RR==1)) %>% rename(estimate = RR, ci_lower = RR.CI1, ci_upper = RR.CI2)
#d <- d %>% filter(intervention_level != baseline_level)


#Keep significant estimates
#d <- d %>% filter((ci_upper <1 & ci_lower <1) | (ci_upper >1 & ci_lower >1))

#d <- d %>% filter(outcome_variable %in% c("ever_stunted",   "ever_wasted"))

# head(d)
# d<-d %>% filter(ci_upper<1)
# d<-d[1,]

evalues.RRvec <- function(d, pointest=T){
  vec<-NULL
  
  if(pointest){
    for(i in 1:nrow(d)){
      if(d$intervention_level[i]== d$baseline_level[i]){
        res<-NA
      }else{
      suppressMessages(res <- evalues.RR(d$estimate[i], d$ci_lower[i], d$ci_upper[i]))
      res<-res[2,1]
      }
    vec<-c(vec,res)
    }
  }else{
    for(i in 1:nrow(d)){
      if(d$ci_lower[i] <= 1  & d$ci_upper[i] >= 1){
        res<-NA
      }else{
        
        ci <-ifelse(abs(log(d$ci_upper[i]))<abs(log(d$ci_lower[i])), d$ci_upper[i], d$ci_lower[i])
        
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

df <- d %>% filter(!is.na(EVals_lb))
table(df$EVals_lb < df$EVals)

#mean(d$RR[!(d$RR.CI1 <= 1  & d$RR.CI2 >= 1)])

#d$EVals_lb[is.na(d$EVals_lb)] <- 1

#Flip RR
#d$estimate <- ifelse(d$estimate>1, d$estimate, 1/d$estimate )


# d <- d %>% group_by(RFlabel) %>% mutate(medianEval_lb = median(EVals_lb, na.rm=T)) %>% ungroup() %>% arrange(-medianEval_lb) %>%
#   mutate(RFlabel = factor(RFlabel, levels=unique(RFlabel)))
# d <- d %>% filter(!is.na(RFlabel))

df <- d 

df <- df %>% group_by(RFlabel) %>% mutate(medianEval_lb = median(EVals_lb, na.rm=T)) %>% ungroup() %>% arrange(-medianEval_lb) %>%
  mutate(RFlabel = factor(RFlabel, levels=unique(RFlabel)))
df <- df %>% filter(!is.na(RFlabel))

df$EVals_lb[is.na(df$EVals_lb)] <- 1




p <- ggplot(df, aes(x=RFlabel, y=EVals_lb)) + geom_point(alpha=0.1) + #geom_smooth(color="red") +
  geom_point(aes(y=medianEval_lb), color=tableau10[2], size=2) +
  geom_hline(aes(yintercept=1)) + 
  coord_cartesian(ylim = c(1, 16)) +
  scale_y_continuous(trans='log10') +
  xlab("Exposure") + ylab("E value") +
  theme(
    axis.text.x = element_text(size=12, angle=90)) 
p



ggsave(p, file=paste0("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/fig-Evalues.png"), height=10, width=8)



#Compare point estimates to the Evalues

#Flip protective point estimates
d <- df %>% filter(EVals_lb!=1)
d$estimate[d$estimate < 1] <- 1/d$estimate[d$estimate < 1]
summary(d$estimate)


pRR <- ggplot(d, aes(x=estimate, y=EVals)) + geom_point(alpha=0.1) + 
  scale_x_continuous(trans='log10') +
  scale_y_continuous(trans='log10') 

table(d$estimate > d$EVals)
prop.table(table(d$estimate > d$EVals_lb))
summary(d$EVals_lb/d$estimate)
summary(d$EVals_lb)


# #Drop regionally pooled estimates, color pooled estimate
# head(d)
# 
# #Make variable for level of 
# 
# #Set NA EVals_lb to 1
# d$EVals_lb[is.na(d$EVals_lb)] <- 1
# 
# 
# 
# d <- d %>% filter(!is.na(EVals_lb))
# gm_mean = function(x, na.rm=TRUE){
#   exp(sum(log(x[x > 0]), na.rm=na.rm) / length(x))
# }
# mean <- gm_mean(d$EVals_lb)
# 
# 
# median<-exp(median(log(d$EVals_lb)))
# 
# mean(d$EVals_lb/d$estimate)
# gm_mean(d$EVals_lb/d$estimate)
# median(d$EVals_lb/d$estimate)
# 
# 
# labs<-data.frame(points_pos=rep(NA,2))
# labs$points_pos <-c(median, mean)
# labs$points_posy <-c(1.29, 1.14)
# labs$points_pos_labels <- c("Median: 2.5","Geometric Mean: 3.0")
# 
# scaleFUN <- function(x) sprintf("%.2f", x)
# yticks <- c(1,2,4,8,16,32,64)
# #Plot themes
# theme_set(theme_bw())
# 
# #hbgdki pallet
# tableau10 <- c("black","#1F77B4","#FF7F0E","#2CA02C","#D62728", 
#                "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
# 
# p <- ggplot(data=d) +  geom_density(aes(x=EVals_lb, color=T, fill=T), size=2, alpha=0.5) + coord_cartesian(xlim = c(1, 64),ylim = c(0, 1.4), expand = c(0, 0)) +
#   geom_point(data=labs, aes(x=points_pos, y=points_posy), size=4, shape=25, fill="black") +
#   geom_text(data=labs, aes(x=points_pos, y=points_posy, label=points_pos_labels ), hjust=-0.3) +
#   scale_x_continuous(breaks=yticks, trans='log10') + theme_bw() + xlab("E-Value (RR between exposure and confounder,\nand between confounder and outcome)") + ylab("Density") + ggtitle("E-Values required to remove significance of\nassociations with stunting outcomes") +
#   scale_fill_manual(values=tableau10[2]) + scale_color_manual(values=tableau10[2]) +
#   #scale_x_continuous( trans='log10', labels=scaleFUN) +
#   theme(strip.background = element_blank(),
#         legend.position="none",
#         strip.text.x = element_text(size=12),
#         axis.text.x = element_text(size=12))
# p
# 
# 
# ggsave(p, file="C:/Users/andre/Dropbox/HBGDki figures/Stunting Webinar/EValue_density.png", width=6, height=5)
# 
# 
# 
# 
# fivenum(d$EVals_lb)
# 
# 
# p <-  ggplot(d, aes(x=studyid)) + 
#   #geom_point(aes(y=RR, fill=region, color=region), size = 4, shape= ifelse(df$pooled==1,5,6)) +
#   geom_point(aes(shape=pooled, y=RR, fill=region, color=region), size = 4) +
#   geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=region)) +
#   coord_flip(ylim=range(yticks)) +
#   labs(x = "Risk factor level", y = "Relative risk") +
#   geom_hline(yintercept = 1) +
#   geom_vline(xintercept = 2.5, linetype=2) +
#   geom_vline(xintercept = 5.5) +
#   geom_text(aes(y=0.12, label=Nstudies), size=3,  hjust=0) +
#   geom_text(aes(y=8, label=adjustment_set), size=2,  hjust=0) +
#   scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN) +
#   scale_shape_manual(values=c(21, 23)) +
#   scale_fill_manual(values=rep(tableau10,4), drop=TRUE, limits = levels(df$region)) +
#   scale_colour_manual(values=rep(tableau10,4), drop=TRUE, limits = levels(df$region)) +
#   scale_size_continuous(range = c(0.5, 1))+
#   theme(strip.background = element_blank(),
#         legend.position="bottom",
#         strip.text.x = element_text(size=12),
#         axis.text.x = element_text(size=12, angle = 45, hjust = 1)) +
#   facet_wrap(~intervention_level, ncol=1) +
#   ggtitle(paste0("Risk factor: ", df$RFlabel[1], "\n",
#                  "Ref. level: ", df$baseline_level[!is.na(df$baseline_level)], "\n", 
#                  "Outcome: ", df$agecat))
# p
