


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))
library(EValue)



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

