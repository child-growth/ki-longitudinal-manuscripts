

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())



#Load data
load("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/opttx_vim/adjusted_binary_results.rdata")
dfull <- results


#Mark region
dfull <- mark_region(dfull)

unique(dfull$type)
d <- dfull %>% filter(type=="PAR")

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
d <- d %>% filter(intervention_variable!="fage")

d <- droplevels(d)

pool.par <- function(d){
  nstudies <- d %>% summarize(N=n())
  
  fit<-NULL
  try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="REML", measure="GEN"))
  if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="ML", measure="GEN"))}
  if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="DL", measure="GEN"))}
  if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="HE", measure="GEN"))}
  
  if(is.null(fit)){
    est<-data.frame(PAR=NA, CI1=NA,  CI2=NA)
  }else{
    est<-data.frame(fit$b*100, fit$ci.lb*100, fit$ci.ub*100)
    colnames(est)<-c("PAR","CI1","CI2")    
  }
  est$Nstudies <- nstudies$N
  rownames(est) <- NULL
  return(est)
}

RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.par(.)) %>% as.data.frame()
RMAest$region <- "Pooled"

RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.par(.)) %>% as.data.frame()

RMAest_raw <- rbind(RMAest, RMAest_region)

RMAest_raw <- RMAest_raw %>% filter(!is.na(PAR))

#Re-order so increasing risk for all comparisons
reorder_fun <- function(df){
  df_sub <- df[df$PAR >= 0,]
  df <- df[df$PAR < 0,]
  new_ref <- df$intervention_level
  df$intervention_level <- df$baseline_level
  df$baseline_level <- new_ref
  df$PAR <- (-1) * df$PAR
  df$CI1 <- (-1) * df$CI1
  df$CI2 <- (-1) * df$CI2
  df <- bind_rows(df_sub, df)
  return(df)
}
RMAest <- reorder_fun(RMAest_raw)

#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest)


#Add reference level to label
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$intervention_level)


# select only pooled
# dpool <- RMAest_clean %>% 
#   filter(region=="Pooled",
#          outcome_variable=="stunted",
#          agecat == '24 months') %>%
#   filter(!is.na(intervention_variable))


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
df$outcome_variable <- gsub("ever_stunted", "Ever stunted", df$outcome_variable)
df$outcome_variable <- gsub("ever_wasted", "Ever wasted", df$outcome_variable)
df$outcome_variable <- gsub("pers_wast", "Persistenly wasted", df$outcome_variable)
df$outcome_variable <- gsub("stunted", "Stunted", df$outcome_variable)
df$outcome_variable <- gsub("wasted", "Wasted", df$outcome_variable)

for(i in unique(df$region)){
  for(j in unique(df$outcome_variable)){
    for(k in unique(df$agecat)){
      
      dpool <- df %>% 
        filter(region==i,
               outcome_variable==j,
               agecat == k) %>%
        filter(!is.na(intervention_variable))
      
      ppar <-  ggplot(dpool, aes(x=reorder(RFlabel, PAR))) + 
        geom_point(aes(y=PAR,  color=RFtype), size = 4) +
        geom_linerange(aes(ymin=CI1, ymax=CI2, color=RFtype)) +
        coord_flip(ylim=c(0, 20)) +
        labs(x = "Exposure", y = "Percent reduction associated\nwith assigning each variable optimally") +
        geom_hline(yintercept = 0) +
        #scale_y_continuous(breaks=yticks, labels=scaleFUN) +
        scale_shape_manual(values=c(21, 23)) +
        scale_colour_manual(values=tableau10, name = "Exposure\nCategory", drop=F) +
        # scale_size_continuous(range = c(0, 0.5))+
        theme(strip.background = element_blank(),
              legend.position="right",
              axis.text.y = element_text(hjust = 1),
              strip.text.x = element_text(size=12),
              axis.text.x = element_text(size=12, 
                                         margin = margin(t = -20)),
              axis.title.x = element_text(margin = margin(t = 20))) +
        ggtitle(paste0("Variable importance metric\n", dpool$outcome_variable[1]," - ", dpool$agecat[1],", ", dpool$region[1])) + 
        guides(color=FALSE, shape=FALSE)
      
      ggsave(ppar, file=paste0("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/VIM/fig-",dpool$region[1], "-", dpool$outcome_variable[1], "-", gsub(" ","",dpool$agecat[1]), "-PAR.png"), height=10, width=8)
    }    
  }
}







