
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

#load muac results
muac <- readRDS(paste0(here::here(),"/results/rf results/raw longbow results/muac_mortality_2020-05-02.RDS"))
muac$adjusted<-1

#subset primary results to studies measuring muac
dfull <- dfull %>% filter(studyid %in% unique(muac$studyid), intervention_variable %in% c("ever_wasted06", "ever_swasted06"), !(studyid=="JiVitA-4" & intervention_variable=="ever_swasted06"))

#bind together
dfull <- bind_rows(dfull, muac)


unique(dfull$type)
d <- dfull %>% filter(type=="RR", adjusted==1, outcome_variable=="dead")

#drop reference levels
d <- d %>% filter( ci_lower !=  ci_upper)


d <- droplevels(d)
table(d$outcome_variable)




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

RMAest$studyid <- "Pooled"


d <- d %>% rename(RR=estimate, RR.CI1=ci_lower, RR.CI2=ci_upper)
plotdf <- bind_rows(d, RMAest)
plotdf$severe <- factor(ifelse(grepl("ever_s", plotdf$intervention_variable), "Severe wasting\nunder 6mo", "Moderate wasting\nunder 6mo"))
plotdf$muac <- factor(ifelse(grepl("mwast", plotdf$intervention_variable), "MUAC", "WLZ"))




table(plotdf$outcome_variable)
plotdf$outcome_variable <- factor(plotdf$outcome_variable, levels=c("dead",  "dead0plus", "dead624", "dead6plus"))
levels(plotdf$outcome_variable) <- c("Relative risk of\nmortality by 24 months",
                                "Relative risk of\nany mortality",
                                "Relative risk of\nmortality 6-24 months",
                                "Relative risk of\nmortality after 6 months")


plotdf$studyid <- factor(plotdf$studyid, levels=rev(c("Keneba", "JiVitA-3", "JiVitA-4", "Pooled")))

pmuac <- ggplot(plotdf,aes(y=RR,x=studyid)) +
  geom_errorbar(aes(color=muac, ymin=RR.CI1, ymax=RR.CI2, group=muac), width = 0, position = position_dodge(0.4)) +
  geom_point(aes(color=muac, shape=muac, group=muac), size =3, position = position_dodge(0.4)) +
  scale_fill_manual(values=tableau11, guide = guide_legend(reverse = TRUE)) +
  scale_color_manual(values=tableau11, guide = guide_legend(reverse = TRUE)) +
  xlab("Cohort")+
  ylab("Relative risk of\nmortality by 24 months") +
  scale_shape_manual(values = c(4, 16), guide = guide_legend(reverse = TRUE)) +
  geom_hline(yintercept = 1, linetype = "dashed") +
  scale_x_discrete(expand = expand_scale(add = 1)) +
  scale_y_continuous(breaks=c(1, 2, 4, 8, 16, 32), trans='log10', labels=scaleFUN) +
  coord_flip() +
  theme(axis.title.y = element_text(size = 14)) +
  ggtitle("") + 
  facet_grid(~severe) +
  scale_linetype_manual( guide = guide_legend(reverse = TRUE) ) +
  theme(strip.text = element_text(size=12, margin = margin(t = 0)),
        legend.position = "right",
        axis.text.y = element_text( hjust = 0)) +
  labs(shape="Anthropometric\nmeasure used to\nclassify wasting",
       color="Anthropometric\nmeasure used to\nclassify wasting")

ggsave(pmuac, file=here("/figures/risk-factor/fig-muac-wast-mort.png"), width=5, height=3.5)

