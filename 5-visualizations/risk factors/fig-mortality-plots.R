
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))



#Plot parameters
yticks <- c( 0.50, 1.00, 2.00, 4.00, 8.00)
tableau10 <- c("#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
tableau11 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
Ylab <- "Relative Risk"
scaleFUN <- function(x) sprintf("%.0f", x)


clean_nmeans<-function(nmeas){
  nmeas <- round(nmeas/1000)
  nmeas.f <- paste0("N=",nmeas,"K children")
  return(nmeas.f)
}

clean_agecat<-function(agecat){
  agecat <- as.character(agecat)
  agecat <- gsub("months","mo.", agecat)
  agecat <- factor(agecat, levels=unique(agecat))
  return(agecat)
}


#Load data
dfull <- readRDS(paste0(here::here(),"/results/rf results/full_RF_results.rds"))
head(dfull)


unique(dfull$type)
d <- dfull %>% filter(type=="RR", adjusted==1)

#keep only morbidity and mortality analysis
d <- d %>% filter(outcome_variable=="dead" | outcome_variable=="co_occurence" | outcome_variable=="pers_wasted624")

table(d$outcome_variable)
d <- droplevels(d)

#drop reference levels
d <- d %>% filter( ci_lower !=  ci_upper)

df <- d %>% filter(outcome_variable=="dead")
table(paste0(df$studyid, df$country))

poolRR <- function(d, method="REML"){
  #nstudies=length(unique(d$studyid))
  nstudies <- d %>% summarise(N=n())
  
  if(d$intervention_level[1] == d$baseline_level[1]){
    est <- data.frame(logRR.psi=1, logSE=0, RR=1, RR.CI1=1, RR.CI2=1, Nstudies= nstudies$N)
  }else{
    
    fit<-NULL
    try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method=method, measure="RR"))
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="ML", measure="RR"))}
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="DL", measure="RR"))}
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="HE", measure="RR"))}
    
    if(is.null(fit)){
      est<-data.frame(logRR.psi=NA, logSE=NA, RR=NA, RR.CI1=NA,  RR.CI2=NA)
    }else{
      
      est<-data.frame(fit$b, fit$se)
      colnames(est)<-c("logRR.psi","logSE")
      
      est$RR<-exp(est$logRR.psi)
      est$RR.CI1<-exp(est$logRR.psi - 1.96 * est$logSE)
      est$RR.CI2<-exp(est$logRR.psi + 1.96 * est$logSE)
      
      est$Nstudies <- nstudies$N
    }
  }
  
  return(est)
}

RMAest <- d %>% group_by(intervention_variable, intervention_level, outcome_variable) %>%
  do(poolRR(.)) %>% as.data.frame()
RMAest_FE <- d %>% group_by(intervention_variable, intervention_level, outcome_variable) %>%
  do(poolRR(., method="FE")) %>% as.data.frame()
RMAest_region <- d %>% group_by(region, intervention_variable, intervention_level, outcome_variable) %>%
  do(poolRR(.)) %>% as.data.frame()

RMAest <- bind_rows(data.frame(RMAest, analysis="Random Effects"),
                    data.frame(RMAest_FE, analysis="Fixed Effects"),
                    data.frame(RMAest_region, analysis="Region")) %>%
  mutate(analysis = factor(analysis, levels=c("Random Effects", "Fixed Effects","Region")))



#Save cleaned data
saveRDS(RMAest, paste0(here::here(),"/results/rf results/pooled_mortality_RR_results.rds"))


d <- RMAest
d <- droplevels(d)

table(d$outcome_variable)
d$outcome_variable <- factor(d$outcome_variable, levels=c("dead", "pers_wasted624", "co_occurence"))
levels(d$outcome_variable) <- c("Relative risk of\nmortality by 24 months",
                                "Relative risk of\npersistent wasting from 6-24mo",  
                                "Relative risk of concurrent\nwasting and stunting at 18mo"
                                )
table(d$outcome_variable)


d$RFlabel <- NA
d$RFlabel[d$intervention_variable=="ever_wasted06"] <- "Wasted under 6mo" 
d$RFlabel[d$intervention_variable=="ever_wasted024"] <- "Wasted under 24mo" 
d$RFlabel[d$intervention_variable=="ever_swasted06"] <-  "Severely wasted under 6mo" 
d$RFlabel[d$intervention_variable=="ever_swasted024"] <-  "Severely wasted under 24mo" 
d$RFlabel[d$intervention_variable=="pers_wasted06"] <- "Persistently wasted under 6mo"
d$RFlabel[d$intervention_variable=="ever_stunted06"] <- "Stunted under 6mo" 
d$RFlabel[d$intervention_variable=="ever_sstunted06"] <- "Severely stunted under 6mo" 
d$RFlabel[d$intervention_variable=="pers_wasted024"] <- "Persistently wasted under 24mo"
d$RFlabel[d$intervention_variable=="ever_stunted024"] <- "Stunted under 24mo" 
d$RFlabel[d$intervention_variable=="ever_sstunted024"] <- "Severely stunted under 24mo"
d$RFlabel[d$intervention_variable=="ever_wasted06_noBW"] <- "Wasted under 6mo, excluding birth"  
d$RFlabel[d$intervention_variable=="ever_swasted06_noBW"] <-  "Severely wasted under 6mo, excluding birth"  
d$RFlabel[d$intervention_variable=="ever_wasted024_noBW"] <-  "Wasted under\n24mo, excluding birth"  
d$RFlabel[d$intervention_variable=="ever_swasted024_noBW"] <-  "Severely wasted under 24mo, excluding birth"  
d$RFlabel[d$intervention_variable=="ever_underweight06"] <-  "Underweight under 6mo"
d$RFlabel[d$intervention_variable=="ever_sunderweight06"] <-  "Severely underweight under 6mo"
d$RFlabel[d$intervention_variable=="ever_underweight024"] <-  "Underweight under 24mo"
d$RFlabel[d$intervention_variable=="ever_sunderweight024"] <-  "Severely underweight under 24mo"
d$RFlabel[d$intervention_variable=="ever_co06"] <-  "Wasted and stunted under 6mo"
d$RFlabel[d$intervention_variable=="ever_co024"] <-  "Wasted and stunted under 24mo"
d$RFlabel[d$intervention_variable=="ever_wasted624"] <- "Wasted 6 to 24mo" 
d$RFlabel[d$intervention_variable=="ever_swasted624"] <-  "Severely wasted 6 to 24mo" 
d$RFlabel[d$intervention_variable=="pers_wasted624"] <- "Persistently wasted 6 to 24mo"
d$RFlabel[d$intervention_variable=="ever_stunted624"] <- "Stunted 6 to 24mo" 
d$RFlabel[d$intervention_variable=="ever_sstunted624"] <- "Severely stunted 6 to 24mo" 
d$RFlabel[d$intervention_variable=="ever_underweight624"] <-  "Underweight 6 to 24mo"
d$RFlabel[d$intervention_variable=="ever_sunderweight624"] <-  "Severely underweight 6 to 24mo"
d$RFlabel[d$intervention_variable=="ever_co624"] <-  "Wasted and stunted 6 to 24mo"

d$Measure <- NA
d$Measure <- ifelse(grepl("nderweight",d$RFlabel),"Underweight",d$Measure)
d$Measure <- ifelse(grepl("tunted",d$RFlabel),"Stunted",d$Measure)
d$Measure <- ifelse(grepl("asted",d$RFlabel),"Wasted",d$Measure)
d$Measure <- ifelse(grepl("ersistently wasted",d$RFlabel),"Persistently wasted",d$Measure)
d$Measure <- ifelse(grepl("asted and stunted",d$RFlabel),"Wasted and stunted",d$Measure)
table(d$Measure)


d$severe <- factor(ifelse(grepl("evere",d$RFlabel),"Yes","No"))
table(d$severe)

d$agerange <- factor(ifelse(grepl("24",d$RFlabel),"6-24 months","0-6 months"))
table(d$agerange)

d$type <- paste0(d$severe, " ", d$agerange)
d$type <- factor(d$type, levels=c("No 0-6 months", "Yes 0-6 months", "No 6-24 months", "Yes 6-24 months"))

d$BW <- factor(ifelse(grepl("birth",d$RFlabel),"*",""))
table(d$BW)

d$intervention_variable <- factor(d$RFlabel)


#Drop 6-24 month outcomes
d <- d %>% filter(agerange!="6-24 months")

d<-droplevels(d)

d$intervention_variable <- as.character(d$intervention_variable)
d <- d %>% arrange(outcome_variable, RR)
d$intervention_variable <- factor(d$intervention_variable, levels=unique(d$intervention_variable))

d = d %>% mutate(Measure=tolower(Measure),
  type = gsub("No", "Moderately", type),
  type = gsub("Yes", "Severely", type),
  type = gsub(" 0-6 months", "", type))
  
d = d %>% mutate(outcome_label = paste(type, " ", Measure, sep = ""),
                   outcome_label = gsub("Moderately persistently wasted", "Persistently wasted", outcome_label), 
                   outcome_label = gsub("Moderately wasted and stunted", "Wasted and stunted", outcome_label),
                   outcome_label = factor(outcome_label, levels=unique(outcome_label)))

d$severe<-factor(ifelse(grepl("evere",d$RFlabel),1,0),levels=c("0","1"))

d2 <- d %>% filter(analysis=="Random Effects") %>% arrange(outcome_variable, RR) %>%
  mutate(outcome_label=factor(outcome_label, levels=unique(outcome_label))) 

pmort <- ggplot(d2, aes(x=outcome_label)) +
  geom_point(aes(y=RR, color=Measure, shape=severe), size=3, stroke = 1.5) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Measure)) +
  labs(y = "", x = "Exposure 0-6 months") +
  geom_hline(yintercept = 1, linetype = "dashed") +
  scale_y_continuous(breaks=c(1, 2, 4, 8), trans='log10', labels=scaleFUN) +
  scale_colour_manual(values=tableau10[c(4,1,3,2,7)]) +
  scale_fill_manual(values=tableau10[c(4,1,3,2,7)]) +
  scale_size_manual(values=c(4,5)) +
  scale_shape_manual(values=c(16,21)) +
  theme(strip.placement = "outside",
        panel.spacing = unit(0, "lines"),
        plot.title = element_text(hjust = 0.5),
        strip.background = element_blank(),
        text = element_text(size=16), 
        legend.position = "none") + 
  facet_wrap(~outcome_variable, ncol=3, strip.position = "bottom") +
  coord_flip(ylim=c(1,9))


ggsave(pmort, file=here("/figures/risk-factor/fig-mort+morb-RR.png"), width=14, height=5.2)

#Save plot object
saveRDS(pmort, file=here("results/rf_mort+morb_plot_object.RDS"))

#To do:
# Change the legend to refer to one plot
# Change plot references throughout the manuscript



#Save single plot
dsub <- d2[d2$outcome_variable=="Relative risk of\nmortality by 24 months",] %>% arrange(RR) %>%
  mutate(outcome_label=factor(outcome_label, levels=unique(outcome_label))) 
p1 <- ggplot(dsub, aes(x=outcome_label)) +
  geom_point(aes(y=RR, color=Measure, shape=severe), size=3, stroke = 1.5) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Measure)) +
  labs(y = "", x = "Exposure 0-6 months") +
  geom_hline(yintercept = 1, linetype = "dashed") +
  scale_y_continuous(breaks=c(1, 2, 4, 8), trans='log10', labels=scaleFUN) +
  scale_colour_manual(values=tableau10[c(4,1,3,2,7)]) +
  scale_fill_manual(values=tableau10[c(4,1,3,2,7)]) +
  scale_size_manual(values=c(4,5)) +
  scale_shape_manual(values=c(16,21)) +
  theme(strip.placement = "outside",
        panel.spacing = unit(0, "lines"),
        plot.title = element_text(hjust = 0.5),
        strip.background = element_blank(),
        text = element_text(size=16), 
        legend.position = "none") + 
  ggtitle(dsub$outcome_variable[1]) + 
  coord_flip(ylim=c(1,9))

ggsave(p1, file=here("/figures/risk-factor/fig-mort-RR.png"), width=5.2, height=5.2)


#Presentation plot for Jade
dsub <- dsub[grepl("tunt", dsub$outcome_label) ,]
p1 <- ggplot(dsub, aes(x=outcome_label)) +
  geom_point(aes(y=RR), size=3, stroke = 1.5) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2)) +
  labs(y = "Adjusted Relative Risk", x = "Exposure 0-6 months") +
  geom_hline(yintercept = 1, linetype = "dashed") +
  scale_y_continuous(breaks=c(1, 2, 4, 8), trans='log10', labels=scaleFUN) +
  scale_colour_manual(values=tableau10[c(4,1,3,2,7)]) +
  scale_fill_manual(values=tableau10[c(4,1,3,2,7)]) +
  scale_size_manual(values=c(4,5)) +
  scale_shape_manual(values=c(16,21)) +
  theme(strip.placement = "outside",
        panel.spacing = unit(0, "lines"),
        plot.title = element_text(hjust = 0.5),
        strip.background = element_blank(),
        text = element_text(size=16),
        legend.position = "none") +
  ggtitle(dsub$outcome_variable[1]) +
  coord_flip(ylim=c(1,9))

ggsave(p1, file=here("/figures/risk-factor/fig-mort-stunt-RR.png"), width=5.2, height=5.2)



dsub <- d2[d2$outcome_variable=="Relative risk of\npersistent wasting from 6-24mo",] %>% arrange(RR) %>% mutate(outcome_label=factor(outcome_label, levels=unique(outcome_label)))
p2 <- ggplot(dsub, aes(x=outcome_label)) +
  geom_point(aes(y=RR, color=Measure, shape=severe), size=3, stroke = 1.5) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Measure)) +
  labs(y = "", x = "Exposure 0-6 months") +
  geom_hline(yintercept = 1, linetype = "dashed") +
  scale_y_continuous(breaks=c(1, 2, 4, 8), trans='log10', labels=scaleFUN) +
  scale_colour_manual(values=tableau10[c(4,1,3,2,7)]) +
  scale_fill_manual(values=tableau10[c(4,1,3,2,7)]) +
  scale_size_manual(values=c(4,5)) +
  scale_shape_manual(values=c(16,21)) +
  theme(strip.placement = "outside",
        panel.spacing = unit(0, "lines"),
        plot.title = element_text(hjust = 0.5),
        strip.background = element_blank(),
        text = element_text(size=16), 
        legend.position = "none") + 
  ggtitle(dsub$outcome_variable[1]) + 
  coord_flip(ylim=c(1,9))

ggsave(p2, file=here("/figures/risk-factor/fig-pers-wast-RR.png"), width=5.2, height=5.2)

dsub <- d2[d2$outcome_variable=="Relative risk of concurrent\nwasting and stunting at 18mo",] %>% arrange(RR) %>% mutate(outcome_label=factor(outcome_label, levels=unique(outcome_label)))
p3 <- ggplot(dsub, aes(x=outcome_label)) +
  geom_point(aes(y=RR, color=Measure, shape=severe), size=3, stroke = 1.5) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Measure)) +
  labs(y = "", x = "Exposure 0-6 months") +
  geom_hline(yintercept = 1, linetype = "dashed") +
  scale_y_continuous(breaks=c(1, 2, 4, 8), trans='log10', labels=scaleFUN) +
  scale_colour_manual(values=tableau10[c(4,1,3,2,7)]) +
  scale_fill_manual(values=tableau10[c(4,1,3,2,7)]) +
  scale_size_manual(values=c(4,5)) +
  scale_shape_manual(values=c(16,21)) +
  theme(strip.placement = "outside",
        panel.spacing = unit(0, "lines"),
        plot.title = element_text(hjust = 0.5),
        strip.background = element_blank(),
        text = element_text(size=16), 
        legend.position = "none") + 
  ggtitle(dsub$outcome_variable[1]) + 
  coord_flip(ylim=c(1,9))

ggsave(p3, file=here("/figures/risk-factor/fig-co-RR.png"), width=5.2, height=5.2)










#Fixed effects
d3 <- d %>% filter(analysis=="Fixed Effects")

pmort <- ggplot(d3, aes(x=outcome_label)) +
  geom_point(aes(y=RR, color=Measure, shape=severe), size=3, stroke = 1.5) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Measure)) +
  #geom_tmext(aes(x=as.numeric(intervention_variable)+0.1, y=RR+0.1, label=BW), size=8) +
  labs(y = "", x = "Exposure 0-6 months") +
  geom_hline(yintercept = 1, linetype = "dashed") +
  scale_y_continuous(breaks=c(1, 2, 4, 8), trans='log10', labels=scaleFUN) +
  scale_colour_manual(values=tableau10[c(4,1,3,2,7)]) +
  scale_fill_manual(values=tableau10[c(4,1,3,2,7)]) +
  scale_size_manual(values=c(4,5)) +
  scale_shape_manual(values=c(16,21)) +
  theme(strip.placement = "outside",
        panel.spacing = unit(0, "lines"),
        plot.title = element_text(hjust = 0.5),
        strip.background = element_blank(),
        text = element_text(size=16), 
        legend.position = "none") + 
  facet_wrap(~outcome_variable, ncol=3, strip.position = "bottom") +
  #coord_cartesian(ylim=c(1,9)) + 
  coord_flip(ylim=c(1,9))
#expand=c(0,0)) 


ggsave(pmort, file=here("/figures/risk-factor/fig-mort+morb-RR_FE.png"), width=14, height=5.2)




d4 <- d %>% filter(analysis=="Region", region!="N.America & Europe")
d4 <- droplevels(d4)

pregion <- ggplot(d4, aes(x=outcome_label, group=region)) +
  geom_point(aes(y=RR, color=Measure, shape=region), size=3, stroke = 1.5, position = position_dodge(0.4)) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Measure), position = position_dodge(0.4)) +
  #geom_tmext(aes(x=as.numeric(intervention_variable)+0.1, y=RR+0.1, label=BW), size=8) +
  labs(y = "", x = "Exposure 0-6 months") +
  geom_hline(yintercept = 1, linetype = "dashed") +
  scale_y_continuous(breaks=c(1, 2, 4, 8, 16, 32), trans='log10', labels=scaleFUN) +
  scale_colour_manual(values=tableau10[c(4,1,3,2,7)]) +
  scale_fill_manual(values=tableau10[c(4,1,3,2,7)]) +
  scale_size_manual(values=c(4,5)) +
  scale_shape_manual(values=c(16,17, 25, 22)) +
  theme(strip.placement = "outside",
        panel.spacing = unit(0, "lines"),
        plot.title = element_text(hjust = 0.5),
        strip.background = element_blank(),
        text = element_text(size=16),
        legend.position = "right") +
  facet_wrap(~outcome_variable, ncol=3, strip.position = "bottom") +
  #guides(shape="Region") +
  coord_flip(ylim=c(1,20)) +
  guides(
    shape = guide_legend(reverse = TRUE))


ggsave(pregion, file=here("/figures/risk-factor/fig-mort+morb-RR_Region.png"), width=16, height=5.2)



