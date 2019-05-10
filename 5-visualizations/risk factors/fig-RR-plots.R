
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

#Drop unadjusted estimates
#mark unadjusted
d$adjusted <- ifelse(d$adjustment_set=="unadjusted", 0, 1)
d <- d %>% filter(adjusted == 1)

#drop morbidity and mortality analysis
d <- d %>% filter(outcome_variable!="dead" & outcome_variable!="co_occurence" & outcome_variable!="pers_wasted624")
  
  
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

RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(poolRR(.)) %>% as.data.frame()
RMAest$region <- "Pooled"

RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(poolRR(.)) %>% as.data.frame()

RMAest_raw <- rbind(RMAest, RMAest_region)



#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest_raw)


#Add reference level to label
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$intervention_level)

#Save cleaned data
saveRDS(RMAest_clean, paste0(here::here(),"/results/rf results/pooled_RR_results.rds"))



yticks <- c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)

#hbgdki pallet
tableau10 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
scaleFUN <- function(x) sprintf("%.1f", x)



df <- RMAest_clean
df <- droplevels(df)
unique(df$outcome_variable)
df$outcome_variable <- gsub("ever_stunted", "Ever stunted", df$outcome_variable)
df$outcome_variable <- gsub("ever_wasted", "Ever wasted", df$outcome_variable)
df$outcome_variable <- gsub("pers_wast", "Persistenly wasted", df$outcome_variable)
df$outcome_variable <- gsub("stunted", "Stunted", df$outcome_variable)
df$outcome_variable <- gsub("wasted", "Wasted", df$outcome_variable)
df$outcome_variable <- gsub("sstunted", "Severely stunted", df$outcome_variable)
df$outcome_variable <- gsub("swasted", "Severely wasted", df$outcome_variable)
df$outcome_variable <- gsub("s03rec24", "Stunting recovery", df$outcome_variable)
df$outcome_variable <- gsub("wast_rec90d", "Wasting recovery", df$outcome_variable)


i <- unique(df$region)[1]
j <- unique(df$outcome_variable)[1]
k <- unique(df$intervention_variable)[1]
#l <- unique(df$intervention_variable)[1]

dpool <- df %>% 
  filter(region==i,
         outcome_variable==j,
         intervention_variable == k) %>%
  filter(!is.na(intervention_variable))

p <-  ggplot(dpool, aes(x=intervention_level)) + 
  geom_point(aes(y=RR, fill=intervention_variable, color=intervention_variable), size = 3) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=intervention_variable),
                 alpha=0.5, size = 1) +
  facet_wrap(~agecat, scales="free_x", nrow=1) +   #,  labeller = label_wrap) +
  labs(x = "Exposure level", y = "Relative risk") +
  geom_hline(yintercept = 1) +
  geom_text(aes(x=1.2, y=(max(dpool$RR.CI2))-.1, label=paste0("N studies: ",Nstudies)), size=3,  hjust=0) +
  scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN) +
  scale_fill_manual(values=rep(tableau10,4)) +
  scale_colour_manual(values=rep(tableau10,4)) +
  theme(strip.background = element_blank(),
        legend.position="none",
        axis.text.y = element_text(size=12),
        strip.text.x = element_text(size=10),
        axis.text.x = element_text(size=10, angle = 20, hjust = 1),
        panel.spacing = unit(0, "lines")) +
  ggtitle(paste0("Outcome:", dpool$outcome_variable[1], "\nExposure:", dpool$intervention_variable[1],"\nRegion: ", dpool$region[1])) 
print(p)


for(i in unique(df$region)){
  for(j in unique(df$outcome_variable)){
    for(k in unique(df$intervention_variable)){

      dpool <- df %>%
        filter(region==i,
               outcome_variable==j,
               intervention_variable == k) 
      
      if(nrow(dpool)>1){
      
      p <-  ggplot(dpool, aes(x=intervention_level)) + 
        geom_point(aes(y=RR, fill=intervention_variable, color=intervention_variable), size = 3) +
        geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=intervention_variable),
                       alpha=0.5, size = 1) +
        facet_wrap(~agecat, scales="free_x", nrow=1) +   #,  labeller = label_wrap) +
        labs(x = "Exposure level", y = "Relative risk") +
        geom_hline(yintercept = 1) +
        geom_text(aes(x=1.2, y=(max(dpool$RR.CI2))-.1, label=paste0("N studies: ",Nstudies)), size=3,  hjust=0) +
        scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN) +
        scale_fill_manual(values=rep(tableau10,4)) +
        scale_colour_manual(values=rep(tableau10,4)) +
        theme(strip.background = element_blank(),
              legend.position="none",
              axis.text.y = element_text(size=12),
              strip.text.x = element_text(size=10),
              axis.text.x = element_text(size=10), #, angle = 20, hjust = 1),
              panel.spacing = unit(0, "lines")) +
        ggtitle(paste0("Outcome:", dpool$outcome_variable[1], "\nExposure:", dpool$intervention_variable[1],"\nRegion: ", dpool$region[1])) 
      

      ggsave(p, file=paste0("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/RR/fig-",dpool$region[1], "-", dpool$outcome_variable[1], "-", gsub(" ","",dpool$intervention_variable[1]), "-RR.png"), height=8, width=10)
      
      }
    }
  }
}











