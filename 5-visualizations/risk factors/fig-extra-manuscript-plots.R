
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())



#Load data
dfull <- readRDS(paste0(here::here(),"/results/rf results/full_RF_results.rds"))
head(dfull)

#Mark region
dfull <- mark_region(dfull)

unique(dfull$type)
d <- dfull %>% filter(type=="RR")

#mark unadjusted estimates
d$adjusted <- ifelse(d$adjustment_set=="unadjusted", 0, 1)

unique(d$outcome_variable)
d <- d %>% filter(outcome_variable=="ever_stunted"| outcome_variable=="stunted")

unique(d$intervention_variable)
d <- d %>% filter(intervention_variable %in% c("pers_wast","enwast","anywast06","lag_WHZ_quart"))

#Subset agecat
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

RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable, adjusted) %>%
  do(poolRR(.)) %>% as.data.frame()
RMAest$region <- "Pooled"

RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable, adjusted) %>%
  do(poolRR(.)) %>% as.data.frame()

RMAest_raw <- rbind(RMAest, RMAest_region)



#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest_raw)


#Add reference level to label
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$intervention_level)


yticks <- c(0.25, 0.5, 0.75, 1, 1.5, 2)

#hbgdki pallet
tableau10 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
scaleFUN <- function(x) sprintf("%.1f", x)



df <- RMAest_clean
df <- droplevels(df)
unique(df$outcome_variable)
df$outcome_variable <- gsub("ever_stunted", "Ever Stunted", df$outcome_variable)
df$outcome_variable <- gsub("ever_wasted", "Ever wasted", df$outcome_variable)
df$outcome_variable <- gsub("pers_wast", "Persistenly wasted", df$outcome_variable)
df$outcome_variable <- gsub("stunted", "Stunted", df$outcome_variable)



unique(df$region)
unique(df$outcome_variable)
unique(df$intervention_variable)

plotdf <- df %>% 
  filter(region=="Pooled",
         outcome_variable=="Stunted",
         intervention_variable == "lag_WHZ_quart",
         adjusted==1) %>%
  filter(!is.na(intervention_variable))

#plotdf$agecat <- factor(plotdf$agecat, levels = c("3-6 months", "6-9 months", "9-12 months", "12-15 months", "15-18 months"))
plotdf$agecat <- factor(plotdf$agecat, levels = c("3 months", "6 months", "9 months", "12 months", "15 months", "18 months", "21 months"))

        p <- ggplot(plotdf, aes(x=intervention_level)) + 
          geom_point(aes(y=RR, fill=intervention_variable, color=intervention_variable), size = 3) +
          geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=intervention_variable),
                         alpha=0.5, size = 1) +
          facet_wrap(~agecat, scales="free_x", nrow=1) +   #,  labeller = label_wrap) +
          labs(x = "Quartile of mean WLZ in the prior 3 months", y = "Relative risk of stunting") +
          geom_hline(yintercept = 1) +
          geom_text(aes(x=1.2, y=(max(plotdf$RR.CI2))-.1, label=paste0("N studies: ",Nstudies)), size=3,  hjust=0) +
          scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN) +
          scale_fill_manual(values=rep(tableau10,4)) +
          scale_colour_manual(values=rep(tableau10,4)) +
          theme(strip.background = element_blank(),
                legend.position="none",
                axis.text.y = element_text(size=12),
                strip.text.x = element_text(size=10),
                axis.text.x = element_text(size=10), #, angle = 20, hjust = 1),
                panel.spacing = unit(0, "lines")) #+
         # ggtitle(paste0("Outcome:", dpool$outcome_variable[1], "\nExposure:", dpool$intervention_variable[1],"\nRegion: ", dpool$region[1])) 
        
        
        #ggsave(p, file=paste0("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/RR/fig-",dpool$region[1], "-", dpool$outcome_variable[1], "-", gsub(" ","",dpool$intervention_variable[1]), "-RR.png"), height=8, width=10)

        plotdf <- df %>% 
          filter(region=="Pooled",
                 outcome_variable=="Ever Stunted",
                 intervention_variable == "lag_WHZ_quart",
                 adjusted==1) %>%
          filter(!is.na(intervention_variable))
        
        plotdf$agecat <- factor(plotdf$agecat, levels = c("3-6 months", "6-9 months", "9-12 months", "12-15 months", "15-18 months"))
        #plotdf$agecat <- factor(plotdf$agecat, levels = c("3 months", "6 months", "9 months", "12 months", "15 months", "18 months", "21 months"))
        
        p <- ggplot(plotdf, aes(x=intervention_level)) + 
          geom_point(aes(y=RR, fill=intervention_level, color=intervention_level), size = 3) +
          geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=intervention_level),
                         alpha=0.5, size = 1) +
          facet_wrap(~agecat, scales="free_x", nrow=1) +   #,  labeller = label_wrap) +
          labs(x = "Quartile of mean WLZ in the prior 3 months", y = "Relative risk of stunting") +
          geom_hline(yintercept = 1) +
          geom_text(aes(x=1.2, y=(max(plotdf$RR.CI2))-.1, label=paste0("N studies: ",Nstudies)), size=3,  hjust=0) +
          scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN) +
          scale_fill_manual(values=rep(tableau10,4)) +
          scale_colour_manual(values=rep(tableau10,4)) +
          theme(strip.background = element_blank(),
                legend.position="none",
                axis.text.y = element_text(size=12),
                strip.text.x = element_text(size=10),
                axis.text.x = element_text(size=10), #, angle = 20, hjust = 1),
                panel.spacing = unit(0, "lines")) +
          ggtitle("Age-specific relative risk of stunting onset by prior mean WLZ")
        p
ggsave(p, file=paste0("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/fig-WLZ-quart-stunt-CI.png"), height=4, width=10)
        




plotdf <- df %>% 
  filter(region=="Pooled",
         outcome_variable=="Ever Stunted",
         intervention_variable %in% c("enwast","anywast06", "pers_wast"),
         adjusted==1 | intervention_variable=="anywast06",
         agecat=="6-24 months") %>%
  filter(!is.na(intervention_variable))
plotdf$intervention_variable <- factor(plotdf$intervention_variable, levels = c("enwast","anywast06", "pers_wast"))

yticks <- c(1, 1.1, 1.2, 1.3, 1.4, 1.5, 2)
p <- ggplot(plotdf, aes(x=intervention_level)) + 
  geom_point(aes(y=RR, fill=intervention_variable, color=intervention_variable), size = 3) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=intervention_variable),
                 alpha=0.5, size = 1) +
  facet_wrap(~RFlabel, scales="free_x", nrow=1) +   #,  labeller = label_wrap) +
  labs(x = "Level of exposure", y = "Relative risk of stunting") +
  geom_hline(yintercept = 1) +
  geom_text(aes(x=1.2, y=(max(plotdf$RR.CI2))-.1, label=paste0("N studies: ",Nstudies)), size=3,  hjust=0) +
  scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN) +
  scale_fill_manual(values=rep(tableau10[-1],4)) +
  scale_colour_manual(values=rep(tableau10[-1],4)) +
  theme(strip.background = element_blank(),
        legend.position="none",
        axis.text.y = element_text(size=12),
        strip.text.x = element_text(size=10),
        axis.text.x = element_text(size=10), #, angle = 20, hjust = 1),
        panel.spacing = unit(0, "lines")) +
  ggtitle("Relative risk of stunting onset by measure of early wasting")
p
ggsave(p, file=paste0("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/fig-wasting-prior-to-stunting.png"), height=4, width=10)








