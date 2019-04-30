
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
d <- d %>% filter(adjustment_set!="" | intervention_variable=="sex"  | intervention_variable=="month"  | intervention_variable=="brthmon")

#Subset to stunting prevalence
unique(d$outcome_variable)
d <- d %>% filter(outcome_variable=="stunted"|outcome_variable=="wasted"|
                    outcome_variable=="ever_stunted"|outcome_variable=="ever_wasted"|
                    outcome_variable=="pers_wast")

#Subset agecat
unique(d$agecat)
d <- d %>% filter(agecat %in% c("Birth","6 months","24 months",
                                "0-24 months", "0-6 months", "6-24 months",
                                "0-24 months (no birth st.)","0-6 months (no birth st.)",           
                                "0-24 months (no birth wast)",
                                "0-6 months (no birth wast)" ))
d$agecat[grepl("0-24 months",d$agecat)] <- "0-24 months"
d$agecat[grepl("0-6 months",d$agecat)] <- "0-6 months"


#Temp: drop father's age:
#d <- d %>% filter(intervention_variable!="fage")

d <- droplevels(d)


poolRR <- function(d){
  #nstudies=length(unique(d$studyid))
  nstudies <- d %>% summarize(N=n())
  
  if(d$intervention_level[1] == d$baseline_level[1]){
    est <- data.frame(logRR.psi=1, logSE=0, RR=1, CI1=1, CI2=1, Nstudies= nstudies$N)
  }else{
    
    fit<-NULL
    try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="REML", measure="RR"))
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="ML", measure="RR"))}
    
    if(is.null(fit)){
      est<-data.frame(logRR.psi=NA, logSE=NA, RR=NA, CI1=NA,  CI2=NA)
    }else{
      est<-data.frame(fit$b, fit$se)
      colnames(est)<-c("logRR.psi","logSE")
      est$RR<-exp(est$logRR)
      est$CI1<-exp(est$logRR - 1.96 * est$logSE)
      est$CI2<-exp(est$logRR + 1.96 * est$logSE)   
    }
    
    est$Nstudies <- nstudies$N
  }
  
  return(est)
}


RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(poolRR(.)) %>% as.data.frame()
RMAest$region <- "Pooled"

RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(poolRR(.)) %>% as.data.frame()

RMAest_raw <- rbind(RMAest, RMAest_region)

#Merge in prevalences
prev <- readRDS("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/stunting_rf_prevs.rds")
prev <- prev %>% subset(., select = -c(CI1, CI2, outcome_variable)) %>% mutate(exp_prev = 1 - prev)

dim(RMAest_raw)
df <- left_join(RMAest_raw, prev, by = c("intervention_variable", "agecat","intervention_level","region"))
dim(df)

#temp
dim(df)
df <- df %>% filter(!is.na(prev))
dim(df)

#df <- df %>% filter(intervention_level != baseline_level)

df2 <- df %>% group_by(intervention_variable, agecat, outcome_variable, region) %>%
  mutate(prevxRR=RR*prev, prevxRR.lb=CI1*prev, prevxRR.ub=CI2*prev, 
         bl_prev=ifelse(intervention_level == baseline_level,prev,NA), 
         bl_prev=sum(bl_prev, na.rm=T)) %>% 
  filter(intervention_level != baseline_level) %>%
  group_by(intervention_variable, agecat, outcome_variable, region) %>%
  summarise(paf = (sum(prevxRR)-sum(bl_prev[1]*RR))/sum(prevxRR) * 100,
            #NOTE: need to figure out proper CI calculation
            paf.lb = (sum(prevxRR.lb)-sum(bl_prev[1]*CI1))/sum(prevxRR.lb) * 100,
            paf.ub = (sum(prevxRR.ub)-sum(bl_prev[1]*CI2))/sum(prevxRR.ub) * 100,
            N=n()) %>%
  filter(!is.na(region))
            
head(as.data.frame(df2))



#Re-order so increasing risk for all comparisons
# reorder_fun <- function(df){
#   df_sub <- df[df$PAF >= 0,]
#   df <- df[df$PAF < 0,]
#   new_ref <- df$intervention_level
#   df$intervention_level <- df$baseline_level
#   df$baseline_level <- new_ref
#   df$PAF <- (-1) * df$PAF
#   df$CI1 <- (-1) * df$CI1
#   df$CI2 <- (-1) * df$CI2
#   df <- bind_rows(df_sub, df)
#   return(df)
# }
# RMAest <- reorder_fun(RMAest_raw)
# RMAest <- RMAest_raw

#Clean up dataframe for plotting
df2$intervention_level <- NA
RMAest_clean <- RMA_clean(df2)


#Add reference level to label
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$intervention_level)


# select only pooled
# dpool <- RMAest_clean %>% 
#   filter(region=="Pooled",
#          agecat == '24 months') 


#Region-specific
# dhaz_region <- RMAest_max %>% 
#   filter(outcome_variable == 'haz',
#          region!="Pooled",
#          agecat == '24 months') 
# dwhz_region <- RMAest_max %>% 
#   filter(outcome_variable == 'whz',
#          region!="Pooled",
#          agecat == '24 months') 

yticks <- c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)

#hbgdki pallet
tableau10 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
scaleFUN <- function(x) sprintf("%.1f", x)



df <- RMAest_clean
unique(df$outcome_variable)
df$outcome_variable <- gsub("ever_stunted", "Ever stunted", df$outcome_variable)
df$outcome_variable <- gsub("ever_wasted", "Ever wasted", df$outcome_variable)
df$outcome_variable <- gsub("pers_wast", "Persistenly wasted", df$outcome_variable)
df$outcome_variable <- gsub("stunted", "Stunted", df$outcome_variable)
df$outcome_variable <- gsub("wasted", "Wasted", df$outcome_variable)

i <- unique(df$region)[3]
j <- unique(df$outcome_variable)[4]
k <- unique(df$agecat)[4]

for(i in unique(df$region)){
  for(j in unique(df$outcome_variable)){
    for(k in unique(df$agecat)){
      
      dpool <- df %>% 
        filter(region==i,
               outcome_variable==j,
               agecat == k) %>%
        filter(!is.na(intervention_variable))
      
      ppar <-  ggplot(dpool, aes(x=reorder(RFlabel, paf))) + 
        geom_point(aes(y=paf,  color=RFtype), size = 4) +
        geom_linerange(aes(ymin=paf.lb, ymax=paf.ub, color=RFtype)) +
        coord_flip(ylim=c(-100, 100)) +
        labs(x = "Exposure", y = "Attributable Fraction") +
        geom_hline(yintercept = 0) +
        #scale_y_continuous(breaks=yticks, labels=scaleFUN) +
        scale_shape_manual(values=c(21, 23)) +
        scale_colour_manual(values=tableau10, name = "Exposure\nCategory") +
        # scale_size_continuous(range = c(0, 0.5))+
        theme(strip.background = element_blank(),
              legend.position="right",
              axis.text.y = element_text(hjust = 1),
              strip.text.x = element_text(size=12),
              axis.text.x = element_text(size=12, 
                                         margin = margin(t = -20)),
              axis.title.x = element_text(margin = margin(t = 20))) +
        ggtitle(paste0("Population attributable fractions (%)\n", dpool$outcome_variable[1]," - ", dpool$agecat[1],", ", dpool$region[1])) + 
        guides(color=FALSE, shape=FALSE)
      
      ggsave(ppar, file=paste0("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/PAF/fig-",dpool$region[1], "-", dpool$outcome_variable[1], "-", gsub(" ","",dpool$agecat[1]), "-PAF.png"), height=10, width=8)
    }    
  }
}











