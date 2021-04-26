


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))



#Load data
dfull <- readRDS(paste0(BV_dir,"/results/rf results/full_RF_unadj_results.rds"))
head(dfull)


unique(dfull$type)
d <- dfull %>% filter(type=="PAR")

#Subset to stunting prevalence
unique(d$outcome_variable)
d <- d %>% filter(outcome_variable=="y_rate_haz"|outcome_variable=="y_rate_len"|
                    outcome_variable=="y_rate_wtkg"|outcome_variable=="haz"|
                    outcome_variable=="whz")


d <- droplevels(d)


df <- d %>% filter(outcome_variable=="haz"| outcome_variable=="whz",
                   agecat=="24 months")

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

RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable,n_cell,n) %>%
  do(pool.Zpar(.)) %>% as.data.frame()
RMAest$region <- "Pooled"

RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable,n_cell,n) %>%
  do(pool.Zpar(.)) %>% as.data.frame()

RMAest_raw <- rbind(RMAest, RMAest_region)

RMAest_raw <- RMAest_raw %>% filter(!is.na(PAR))




#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest_raw, outcome="continuous")
table(is.na(RMAest_clean$intervention_level))

#Add reference level to label
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$intervention_level)

#Save cleaned data
saveRDS(RMAest_clean, paste0(BV_dir,"/results/rf results/pooled_Zscore_PAR_results_unadj.rds"))
