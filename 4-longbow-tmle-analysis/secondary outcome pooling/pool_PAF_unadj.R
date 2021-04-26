

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))


#Load data
dfull <- readRDS(paste0(BV_dir,"/results/rf results/full_RF_unadj_results.rds"))
head(dfull)

#Subset to primary outcomes
unique(dfull$outcome_variable)
d <- dfull %>% filter(outcome_variable=="stunted"|outcome_variable=="wasted"|
                        outcome_variable=="ever_stunted"|outcome_variable=="ever_wasted"|
                        outcome_variable=="pers_wast")

#Drop month and birthmonth until VIM results can be included
d <- d %>% filter(!(intervention_variable %in% c("month","brthmon")) )


#Subset agecat
unique(d$agecat)
d <- d %>% filter(agecat %in% c("Birth","6 months","24 months",
                                "0-24 months", "0-6 months", "6-24 months",
                                "0-24 months (no birth st.)","0-6 months (no birth st.)",           
                                "0-24 months (no birth wast)",
                                "0-6 months (no birth wast)" ))
d$agecat[grepl("0-24 months",d$agecat)] <- "0-24 months"
d$agecat[grepl("0-6 months",d$agecat)] <- "0-6 months"


#Drop duplicated (unadjusted sex and month variables)
dim(d)
d <- distinct(d)
dim(d)

d <- droplevels(d)


prev <- d %>% filter(type=="E(Y)")
dpaf <- d %>% filter(type=="PAF")
d <- d %>% filter(type=="PAR")






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
    est<-data.frame(fit$b, fit$ci.lb, fit$ci.ub)
    colnames(est)<-c("PAR","CI1","CI2")    
  }
  est$Nstudies <- nstudies$N
  rownames(est) <- NULL
  return(est)
}

RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable,n_cell,n) %>%
  do(pool.par(.)) %>% as.data.frame()
RMAest$region <- "Pooled"

RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable,n_cell,n) %>%
  do(pool.par(.)) %>% as.data.frame()

RMAest_raw <- rbind(RMAest, RMAest_region)








#Calculate pooled prevalences
pool.prev <- function(d){
  nstudies <- d %>% summarize(N=n())
  
  fit<-NULL
  try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="REML", measure="GEN"))
  if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="ML", measure="GEN"))}
  if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="DL", measure="GEN"))}
  if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="HE", measure="GEN"))}
  
  if(is.null(fit)){
    est<-data.frame(prev=NA, CI1=NA,  CI2=NA)
  }else{
    est<-data.frame(fit$b, fit$ci.lb, fit$ci.ub)
    colnames(est)<-c("prev","CI1","CI2")    
  }
  est$Nstudies <- nstudies$N
  rownames(est) <- NULL
  return(est)
}

Prev_est <- prev %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.prev(.)) %>% as.data.frame()
Prev_est$region <- "Pooled"

Prev_est_region <- prev %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.prev(.)) %>% as.data.frame()

Prev_est_raw <- rbind(Prev_est, Prev_est_region)
Prev_est_raw <- Prev_est_raw %>% subset(., select = - c(CI1, CI2, Nstudies, baseline_level, intervention_level))






dim(RMAest_raw)
df <- left_join(RMAest_raw, Prev_est_raw, by = c("outcome_variable","intervention_variable", "agecat","region"))
dim(df)


#temp
df <- df %>% filter(!is.na(prev))



#Calculate PAF 
df2 <- df %>% group_by(intervention_variable, agecat, outcome_variable, region) %>%
  mutate(PAF=PAR/prev*100, PAF.CI1=CI1/prev*100, PAF.CI2=CI2/prev*100)
summary(df2$PAR)
summary(df2$prev)
summary(df2$PAF)
summary(df2$PAF.CI1)
summary(df2$PAF.CI2)


RMAest <- df2


#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest)


#Add reference level to label
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$intervention_level)


# save pooled PAF's
saveRDS(RMAest_clean, paste0(BV_dir,"/results/rf results/pooled_PAF_results_unadj.rds"))