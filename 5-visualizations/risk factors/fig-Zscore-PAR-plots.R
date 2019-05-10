


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
d <- dfull %>% filter(type=="PAR")

#mark unadjusted
d$adjusted <- ifelse(d$adjustment_set!="unadjusted" & d$adjustment_set!="", 1, 0)

#Drop unadjusted estimates
d <- d %>% filter((adjusted==1) | ((intervention_variable=="sex"  | intervention_variable=="month"  | intervention_variable=="brthmon") & adjusted==0))


                  
#Subset to stunting prevalence
unique(d$outcome_variable)
d <- d %>% filter(outcome_variable=="y_rate_haz"|outcome_variable=="y_rate_len"|
                    outcome_variable=="y_rate_wtkg"|outcome_variable=="haz"|
                    outcome_variable=="whz")

#Subset agecat
# unique(d$agecat)
# d <- d %>% filter(agecat %in% c("Birth","6 months","24 months"))

table(d$studyid, d$intervention_variable)

#Temp: drop father's age:
#d <- d %>% filter(intervention_variable!="fage")

d <- droplevels(d)

pool.Zpar <- function(d){
  nstudies <- d %>% summarize(N=n())
  
  fit<-NULL
  try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="REML", measure="GEN"))
  if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="ML", measure="GEN"))}
  if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="DL", measure="GEN"))}
  if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="HE", measure="GEN"))}
  
  if(is.null(fit)){
    est<-data.frame(PAR=NA, CI1=NA,  CI2=NA)
  }else{
    est<-data.frame(fit$b, fit$ci.lb, fit$ci.ub)
    colnames(est)<-c("PAR","CI1","CI2")    
  }
  est$Nstudies <- nstudies$N
  rownames(est) <- NULL
  return(est)
}

RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.Zpar(.)) %>% as.data.frame()
RMAest$region <- "Pooled"

RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.Zpar(.)) %>% as.data.frame()

RMAest_raw <- rbind(RMAest, RMAest_region)

RMAest_raw <- RMAest_raw %>% filter(!is.na(PAR))

# #Re-order so increasing risk for all comparisons
# reorder_fun <- function(df){
#   df_sub <- df[df$PAR >= 0,]
#   df <- df[df$PAR < 0,]
#   new_ref <- df$intervention_level
#   df$intervention_level <- df$baseline_level
#   df$baseline_level <- new_ref
#   df$PAR <- (-1) * df$PAR
#   df$CI1 <- (-1) * df$CI1
#   df$CI2 <- (-1) * df$CI2
#   df <- bind_rows(df_sub, df)
#   return(df)
# }
# RMAest <- reorder_fun(RMAest_raw)

#Flip reference for binary variables where reference is high risk
unique(RMAest_raw$intervention_variable)

# relevel_vars <- c( "cleanck",          
# "exclfeed3",     "exclfeed36",    "exclfeed6",              
# "impfloor",      "impsan",            
# "perdiar24",     "perdiar6",            "predexfd6",     "predfeed3",     "predfeed36",   
# "predfeed6",     "safeh20","trth2o")
# 
# 
# RMAest_raw$PAR[RMAest_raw$intervention_variable %in% relevel_vars] <- RMAest_raw$PAR[RMAest_raw$intervention_variable %in% relevel_vars] * (-1)
# RMAest_raw$CI1[RMAest_raw$intervention_variable %in% relevel_vars] <- RMAest_raw$CI1[RMAest_raw$intervention_variable %in% relevel_vars] * (-1)
# RMAest_raw$CI2[RMAest_raw$intervention_variable %in% relevel_vars] <- RMAest_raw$CI2[RMAest_raw$intervention_variable %in% relevel_vars] * (-1)
# RMAest_raw$intervention_level[RMAest_raw$intervention_variable %in% relevel_vars] <- "Yes"
# 

#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest_raw, outcome="continuous")
table(is.na(RMAest_clean$intervention_level))

#Add reference level to label
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$intervention_level)




yticks <- c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)

#hbgdki pallet
tableau10 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
scaleFUN <- function(x) sprintf("%.1f", x)

df <- RMAest_clean
unique(df$outcome_variable)
df$outcome_variable <- gsub("y_rate_haz", "HAZ velocity", df$outcome_variable)
df$outcome_variable <- gsub("y_rate_len", "Length velocity", df$outcome_variable)
df$outcome_variable <- gsub("y_rate_wtkg", "Weight velocity", df$outcome_variable)
df$outcome_variable <- gsub("haz", "LAZ", df$outcome_variable)
df$outcome_variable <- gsub("whz", "WLZ", df$outcome_variable)


i <- unique(df$region)[1]
j <- unique(df$outcome_variable)[5]
k <- unique(df$agecat)[6]

for(i in unique(df$region)){
  for(j in unique(df$outcome_variable)){
    for(k in unique(df$agecat)){
      
      dpool <- df %>% 
        filter(region==i,
               outcome_variable==j,
               agecat == k) %>%
        filter(!is.na(intervention_variable))
      
      ppar <-  ggplot(dpool, aes(x=reorder(RFlabel_ref, -PAR))) + 
        geom_point(aes(y=-PAR,  color=RFtype), size = 4) +
        geom_linerange(aes(ymin=-CI1, ymax=-CI2, color=RFtype)) +
        coord_flip() +
        labs(x = "Exposure", y = "Difference in outcome after setting\nwhole population exposure to reference level") +
        geom_hline(yintercept = 0) +
        scale_colour_manual(values=tableau10, name = "Exposure\nCategory") +
        theme(strip.background = element_blank(),
              legend.position="right",
              axis.text.y = element_text(hjust = 1),
              strip.text.x = element_text(size=12),
              axis.text.x = element_text(size=12, 
                                         margin = margin(t = -20)),
              axis.title.x = element_text(margin = margin(t = 20))) +
        ggtitle(paste0("Population attributable difference\n", dpool$outcome_variable[1]," - ", dpool$agecat[1],", ", dpool$region[1])) + 
        guides(color=FALSE, shape=FALSE)
      
      ggsave(ppar, file=paste0("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/Zscore-PAR/fig-",dpool$region[1], "-", dpool$outcome_variable[1], "-", gsub(" ","",dpool$agecat[1]), "-Z-PAR.png"), height=10, width=8)
    }    
  }
}






