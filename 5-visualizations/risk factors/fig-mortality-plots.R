
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

#Plot themes
theme_set(theme_ki())

#Plot parameters
yticks <- c( 0.50, 1.00, 2.00, 4.00, 8.00)
tableau10 <- c("#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
tableau11 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
Ylab <- "Relative Risk"
scaleFUN <- function(x) sprintf("%.2f", x)
theme_set(theme_bw())


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
d <- dfull %>% filter(type=="RR")

#keep only morbidity and mortality analysis
d <- d %>% filter(outcome_variable=="dead" | outcome_variable=="dead624" | outcome_variable=="co_occurence" | outcome_variable=="pers_wasted624")
table(d$outcome_variable)
d <- droplevels(d)


poolRR <- function(d){
  #nstudies=length(unique(d$studyid))
  nstudies <- d %>% summarize(N=n())
  
  if(d$intervention_level[1] == d$baseline_level[1]){
    est <- data.frame(logRR.psi=1, logSE=0, RR=1, RR.CI1=1, RR.CI2=1, Nstudies= nstudies$N)
  }else{
    
    fit<-NULL
    try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="REML", measure="RR"))
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="ML", measure="RR"))}
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="DL", measure="RR"))}
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="HE", measure="RR"))}
    
    if(is.null(fit)){
      est<-data.frame(logRR.psi=NA, logSE=NA, RR=NA, RR.CI1=NA,  RR.CI2=NA)
    }else{
      
      est<-data.frame(fit$b, fit$se)
      colnames(est)<-c("logRR.psi","logSE")
      
      est$RR<-exp(est$logRR)
      est$RR.CI1<-exp(est$logRR - 1.96 * est$logSE)
      est$RR.CI2<-exp(est$logRR + 1.96 * est$logSE)
      
      est$Nstudies <- nstudies$N
    }
  }
  
  return(est)
}

RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(poolRR(.)) %>% as.data.frame()

#Save cleaned data
saveRDS(RMAest, paste0(here::here(),"/results/rf results/pooled_mortality_RR_results.rds"))


RMAest <- readRDS(paste0(here::here(),"/results/rf results/pooled_mortality_RR_results.rds"))

d <- RMAest %>% filter( intervention_level != baseline_level)




# d <- d %>% filter(intervention_level==1) %>% 
#   filter(unadjusted==0 | intervention_variable=="ever_wasted024" | intervention_variable=="ever_sstunted024") %>%
#   filter(pooled == 1)
# d$pooled <- factor(d$pooled)
d <- droplevels(d)

table(d$outcome_variable)
d$outcome_variable <- factor(d$outcome_variable, levels=c("dead","dead524","pers_wasted624","co_occurence"))
levels(d$outcome_variable) <- c("Mortality","Mortality 6-24mo","Persistently wasted from 6-24 months","Wasted and stunted at 18 months")
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

d$agerange <- factor(ifelse(grepl("24",d$RFlabel),"0-24 months","0-6 months"))
table(d$agerange)

d$type <- paste0(d$severe, " ", d$agerange)
d$type <- factor(d$type, levels=c("No 0-6 months", "Yes 0-6 months", "No 0-24 months", "Yes 0-24 months"))

d$BW <- factor(ifelse(grepl("birth",d$RFlabel),"*",""))
table(d$BW)

d$intervention_variable <- factor(d$RFlabel)



i<- levels(d$outcome_variable)[1]

d2 <- d %>% filter(outcome_variable==i, BW=="")
d2<-droplevels(d2)

d2$intervention_variable <- as.character(d2$intervention_variable)
d2 <- d2 %>% arrange(RR)
d2$intervention_variable <- factor(d2$intervention_variable, levels=unique(d2$intervention_variable))

d2 = d2 %>% mutate(type = gsub("No", "Moderate", type)) %>% mutate(type = gsub("Yes", "Severe", type))
d2 = d2 %>% mutate(outcome_label = paste(Measure, ", ", type, sep = ""))

p1 <- ggplot(d2, aes(x=outcome_label)) +
  geom_point(aes(y=RR, color=Measure), size=4, stroke = 1.5) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Measure)) +
  #geom_text(aes(x=as.numeric(intervention_variable)+0.1, y=RR+0.1, label=BW), size=8) +
  labs(x = "", y = "Relative risk") +
  geom_hline(yintercept = 1) +
  scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN) +
  scale_colour_manual(values=tableau10[c(4,1,3,2,7)]) +
  scale_fill_manual(values=tableau10[c(4,1,3,2,7)]) +
  scale_size_manual(values=c(4,5)) +
  theme(plot.title = element_text(hjust = 0.5),
        strip.background = element_blank(),
        text = element_text(size=16), 
        legend.position = "none") + 
  ggtitle("Outcome: mortality") + coord_cartesian(ylim=c(1,9)) + 
  coord_flip()

p1
ggsave(p1, file="figures/risk factor/fig-mortality-RR.png", width=10, height=5.2)






i<- levels(d$outcome_variable)[2]

d2 <- d %>% filter(outcome_variable==i, BW=="")
d2<-droplevels(d2)

d2$intervention_variable <- as.character(d2$intervention_variable)
d2 <- d2 %>% arrange(RR)
d2$intervention_variable <- factor(d2$intervention_variable, levels=unique(d2$intervention_variable))

p_mortsens <- ggplot(d2, aes(x=as.numeric(intervention_variable))) +
  geom_point(aes(y=RR, color=Measure, shape=factor(type)), size=4, stroke = 1.5) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Measure)) +
  geom_text(aes(x=as.numeric(intervention_variable)+0.1, y=RR+0.1, label=BW), size=8) +
  labs(x = "", y = "Relative risk") +
  geom_hline(yintercept = 1) +
  scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN) +
  scale_colour_manual(values=tableau10[c(4,1,3,2,7)]) +
  scale_fill_manual(values=tableau10[c(4,1,3,2,7)]) +
  scale_size_manual(values=c(4,5)) +
  scale_shape_manual(name = "Shape", 
                     labels = c("Moderate 0-6 months", 
                                "Severe 0-6 months",
                                "Moderate 0-24 months", 
                                "Severe 0-24 months"),
                     values=c(16,21,17,24)) +
  theme(plot.title = element_text(hjust = 0.5),
        strip.background = element_blank(),
        legend.position=c(0.3, 0.82),
        axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank(),
        text = element_text(size=16),
        legend.title = element_text(size = 8),
        legend.text = element_text(size = 8),
        legend.key.size = unit(0.3, "cm"),
        legend.key.width = unit(0.3,"cm"),
        legend.spacing = unit(0.1, 'cm')) + 
  guides(shape=guide_legend(ncol=2), color=guide_legend(ncol=2))+
  ggtitle("Outcome: mortality") + coord_cartesian(ylim=c(1,9))

ggsave(p_mortsens, file="C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/fig-mortality-RR-sensitivity.png", width=6, height=5.2)





i<-levels(d$outcome_variable)[3]

d2 <- d %>% filter(outcome_variable==i) %>% filter(BW=="")

d2<-droplevels(d2)

d2$intervention_variable <- as.character(d2$intervention_variable)
d2 <- d2 %>% arrange(RR)
d2$intervention_variable <- factor(d2$intervention_variable, levels=unique(d2$intervention_variable))

d2 = d2 %>% mutate(type = gsub("No", "Moderate", type)) %>% mutate(type = gsub("Yes", "Severe", type))
d2 = d2 %>% mutate(outcome_label = paste(Measure, ", ", type, sep = ""))


p2 <- ggplot(d2, aes(x=outcome_label)) +
  geom_point(aes(y=RR, color=Measure), size=4, stroke = 1.5) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Measure)) +
  #geom_text(aes(x=as.numeric(intervention_variable)+0.1, y=RR+0.1, label=BW), size=8) +
  labs(x = "", y = "Relative Risk") +
  geom_hline(yintercept = 1) +
  scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN) +
  scale_colour_manual(values=tableau10[c(4,1,3,2,7)]) +
  scale_fill_manual(values=tableau10[c(4,1,3,2,7)]) +
  scale_size_manual(values=c(4,5)) +
  theme(plot.title = element_text(hjust = 0.5),
        strip.background = element_blank(),
        legend.position="none",
        text = element_text(size=16)) + 
  ggtitle("Outcome: persistent wasting from 6-24 months")+ 
  coord_cartesian(ylim=c(1,8))+
  coord_flip()

ggsave(p2, file="/figures/risk factor/fig-morbidity-perswast-RR.png", width=10, height=5.2)




i<-levels(d$outcome_variable)[4]

d2 <- d %>% filter(outcome_variable==i) %>% filter(BW=="")
d2<-droplevels(d2)

d2$intervention_variable <- as.character(d2$intervention_variable)
d2 <- d2 %>% arrange(RR)
d2$intervention_variable <- factor(d2$intervention_variable, levels=unique(d2$intervention_variable))

d2 = d2 %>% mutate(type = gsub("No", "Moderate", type)) %>% mutate(type = gsub("Yes", "Severe", type))
d2 = d2 %>% mutate(outcome_label = paste(Measure, ", ", type, sep = ""))

p3 <- ggplot(d2, aes(x=outcome_label)) +
  geom_point(aes(y=RR, color=Measure), size=4, stroke = 1.5) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Measure)) +
  #geom_text(aes(x=as.numeric(intervention_variable)+0.1, y=RR+0.1, label=BW), size=8) +
  labs(x = "", y = "Relative Risk") +
  geom_hline(yintercept = 1) +
  scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN) +
  scale_colour_manual(values=tableau10[c(4,1,3,2,7)]) +
  scale_fill_manual(values=tableau10[c(4,1,3,2,7)]) +
  #scale_fill_manual(values=tableau11[c(5,1)]) +
  scale_size_manual(values=c(4,5)) +
  theme(plot.title = element_text(hjust = 0.5),
        strip.background = element_blank(),
        legend.position = "none",
        text = element_text(size=16))+
  ggtitle("Outcome: wasted and stunted at 18 months") + coord_cartesian(ylim=c(1,8)) +
  coord_flip()

ggsave(p3, file="figures/risk factor/fig-morbidity-co-RR.png", width=10, height=5.2)


#Save plot objects
save(p1, p2, p3, file="results/rf_mortality_plot_objects.Rdata")
