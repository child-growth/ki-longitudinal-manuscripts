
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))
require(ggmap)
require(cowplot)


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
table(d$outcome_variable)
d <- d %>% filter(outcome_variable=="dead" | outcome_variable=="dead0plus" | outcome_variable=="dead624"| outcome_variable=="dead6plus")



d <- droplevels(d)

#drop reference levels
d <- d %>% filter( ci_lower !=  ci_upper)


poolRR <- function(d, method="REML"){
  #nstudies=length(unique(d$studyid))
  nstudies=length(unique(paste0(d$studyid, d$country)))
  
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
      
      est$Nstudies <- nstudies
    }
  }
  
  return(est)
}

RMAest <- d %>% group_by(intervention_variable, intervention_level, outcome_variable) %>%
  do(poolRR(.)) %>% as.data.frame()
MAest_FE <- d %>% group_by(intervention_variable, intervention_level, outcome_variable) %>%
  do(poolRR(., method="FE")) %>% as.data.frame()

RMAest <- bind_rows(data.frame(RMAest, analysis="Random Effects"),
                    data.frame(MAest_FE, analysis="Fixed Effects")) %>%
          mutate(analysis = factor(analysis, levels=c("Random Effects", "Fixed Effects")))


#Save cleaned data
saveRDS(RMAest, paste0(here::here(),"/results/rf results/pooled_mortality_RR_results.rds"))


d <- RMAest
d <- droplevels(d)

table(d$outcome_variable)
d$outcome_variable <- factor(d$outcome_variable, levels=c("dead",  "dead0plus", "dead624", "dead6plus"))
levels(d$outcome_variable) <- c("Relative risk of\nmortality by 24 months",
                                "Relative risk of\nany mortality",
                                "Relative risk of\nmortality 6-24 months",
                                "Relative risk of\nmortality after 6 months")
                                
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

d<-droplevels(d)

d$intervention_variable <- as.character(d$intervention_variable)
d <- d %>% arrange(outcome_variable, RR)
d$intervention_variable <- factor(d$intervention_variable, levels=unique(d$intervention_variable))

d = d %>% mutate(Measure=tolower(Measure),
  type = gsub("No", "Moderately", type),
  type = gsub("Yes", "Severely", type),
  type = gsub(" 0-6 months", "", type))
  
d = d %>% arrange(analysis, outcome_variable, RR) %>%
  mutate(outcome_label = paste(type, " ", Measure, sep = ""),
                   outcome_label = gsub("Moderately persistently wasted", "Persistently wasted", outcome_label), 
                   outcome_label = gsub("Moderately wasted and stunted", "Wasted and stunted", outcome_label),
                   outcome_label = factor(outcome_label, levels=unique(outcome_label)))

d$severe<-factor(ifelse(grepl("evere",d$RFlabel),1,0),levels=c("0","1"))


d2 <- d %>% filter(intervention_level==1, analysis=="Random Effects")

pmort <- ggplot(d2, aes(x=outcome_label)) +
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
  ggtitle("") + 
  facet_wrap(~outcome_variable, ncol=1) +
  theme(plot.title = element_text(size = 12, face = "bold")) +
  coord_flip(ylim=c(1,9))
    #expand=c(0,0)) 
pmort

d3 <- d %>% filter(intervention_level==1, analysis=="Fixed Effects")

pmort_FE <- ggplot(d3, aes(x=outcome_label)) +
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
  ggtitle("") + 
  facet_wrap(~outcome_variable, ncol=1) +
  theme(plot.title = element_text(size = 12, face = "bold")) +
  coord_flip(ylim=c(1,9))
#expand=c(0,0)) 
pmort_FE

ggsave(pmort, file=here("/figures/risk-factor/fig-mort-RR-time-death.png"), width=5.2, height=10)

ggsave(pmort_FE, file=here("/figures/risk-factor/fig-mort-RR-time-death_FE.png"), width=5.2, height=10)

#Save plot object
saveRDS(pmort, file=here("results/fig-mort-RR-time-death.RDS"))

saveRDS(pmort_FE, file=here("results/fig-mort-RR-time-death.RDS"))



pmort <- pmort + ylab("Random-effects pooled\nrelative risks")
pmort_FE <- pmort_FE + ylab("Fixed-effects pooled\nrelative risks")



fig <- plot_grid(pmort, pmort_FE, ncol = 2, labels = c("a","b"), rel_widths = c(1, 1))
ggsave(fig, file=paste0(here(),"/figures/manuscript-figure-composites/risk-factor/mort_timing_comp.png"), width=16, height=8)


