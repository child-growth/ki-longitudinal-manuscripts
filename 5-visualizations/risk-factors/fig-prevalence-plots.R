
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())



#Load data
load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/stunting_rf_Ns.rdata")

#Mark region
Ndf <- Ndf %>% ungroup()
d <- mark_region(Ndf)


#Subset to primary outcomes
unique(d$outcome_variable)
d <- d %>% filter(outcome_variable=="stunted" | outcome_variable=="ever_stunted")

#Subset agecat
unique(d$agecat)
d <- d %>% filter(agecat %in% c("Birth","6 months","24 months",
                                "0-24 months", "0-6 months", "6-24 months",
                                "0-24 months (no birth st.)","0-6 months (no birth st.)",           
                                "0-24 months (no birth wast)",
                                "0-6 months (no birth wast)" ))
d$agecat[grepl("0-24 months",d$agecat)] <- "0-24 months"
d$agecat[grepl("0-6 months",d$agecat)] <- "0-6 months"

d <- d %>% ungroup()
d <- droplevels(d)

pool.prev <- function(d){
  nstudies <- d %>% summarize(N=n())
  
  fit<-NULL
  try(fit<-rma(ni=n, xi=n_cell, data=d, method="REML", measure="PLO"))
  if(is.null(fit)){try(fit<-rma(ni=n, xi=n_cell,  data=d, method="ML", measure="GEN"))}
  if(is.null(fit)){try(fit<-rma(ni=n, xi=n_cell,  data=d, method="DL", measure="GEN"))}
  if(is.null(fit)){try(fit<-rma(ni=n, xi=n_cell,  data=d, method="HE", measure="GEN"))}
  
  if(is.null(fit)){
    est<-data.frame(prev=NA, CI1=NA,  CI2=NA)
  }else{
    est<-data.frame(plogis(fit$b), plogis(fit$b-1.96*fit$se),  plogis(fit$b+1.96*fit$se))
    colnames(est)<-c("prev","CI1","CI2")    
  }
  est$Nstudies <- nstudies$N
  rownames(est) <- NULL
  return(est)
}

# df <- d %>% filter(agecat=="Birth",outcome_variable=="stunted", intervention_variable=="anywast06")
# pool.prev(df)
RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, outcome_variable) %>%
  do(pool.prev(.)) %>% as.data.frame()
RMAest$region <- "Pooled"

RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, outcome_variable) %>%
  do(pool.prev(.)) %>% as.data.frame()

RMAest_raw <- rbind(RMAest, RMAest_region)

#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest_raw)


#Add reference level to label
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$intervention_level)

#Save pooled prevalences
saveRDS(RMAest_clean, file="C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/stunting_rf_prevs.rds")


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

i <- unique(df$region)[1]
j <- unique(df$outcome_variable)[1]
k <- unique(df$agecat)[1]

for(i in unique(df$region)){
  for(j in unique(df$outcome_variable)){
    for(k in unique(df$agecat)){
      
      dpool <- df %>% 
        filter(region==i,
               outcome_variable==j,
               agecat == k) %>%
        filter(!is.na(intervention_variable))
      
      ppar <-  ggplot(dpool, aes(x=reorder(RFlabel, PAF))) + 
        geom_point(aes(y=PAF,  color=RFtype), size = 4) +
        geom_linerange(aes(ymin=CI1, ymax=CI2, color=RFtype)) +
        coord_flip(ylim=c(0, 100)) +
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











