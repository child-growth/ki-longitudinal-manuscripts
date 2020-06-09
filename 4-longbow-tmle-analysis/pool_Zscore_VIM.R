


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))



#Load data
#results_full <- readRDS(here("results/rf results/raw longbow results/opttx_vim_results_2020-05-31.RDS"))
results_full <- readRDS(here("results/rf results/raw longbow results/opttx_vim_results_2020-03-11.RDS"))


#Load subset run after full longbow job errored 80% of the way through
#results_sub <-readRDS(here("results/rf results/raw longbow results/opttx_vim_results_subset_2020-06-01.RDS"))
results_sub <-readRDS(here("results/rf results/raw longbow results/opttx_vim_results_subset_2020-03-13.RDS"))


#load seasonal VIM
results_season <-readRDS(here("results/rf results/raw longbow results/opttx_vim_season_results_2020-05-29.RDS"))
 

results <- rbind(results_full, results_sub, results_season)


#load seasonal VIM
results_diar <-readRDS(here("results/rf results/raw longbow results/opttx_vim_diar_2020-06-08.RDS"))

results <- results %>% filter(intervention_variable!="perdiar24" & intervention_variable!="perdiar6")
results <- bind_rows(results, results_diar)



#drop EE gestational age
dim(results)
results <- results %>% filter(!(studyid=="EE" & intervention_variable=="gagebrth"))
dim(results)


saveRDS(results, paste0(here::here(),"/results/rf results/full_VIM_results.rds"))



unique(results$type)
d <- results %>% filter(type=="PAR")

#Subset to stunting prevalence
unique(d$outcome_variable)
d <- d %>% filter(outcome_variable=="haz"|
                    outcome_variable=="whz")



#Harmonize agecat names for variables excluding faltering at birth
d$agecat <- as.character(d$agecat)
d$agecat[grepl("0-24 months",d$agecat)] <- "0-24 months"
d$agecat[grepl("0-6 months",d$agecat)] <- "0-6 months"


#Keep only primary breastfeeding exposure and trth20
d <- d %>% filter(!(intervention_variable %in% c("predfeed3","predfeed6","predfeed36","exclfeed3","exclfeed6","exclfeed36", "trth2o")) )

# Drop non-sensical combinations
unique(d$intervention_variable)
atbirth <- c("vagbrth", "hdlvry", "trth2o", "safeh20", "cleanck", "impfloor", "impsan", "earlybf",  "enstunt", "enwast")
postnatal <- c("anywast06", "pers_wast", "perdiar6","predexfd6")
full2years <- "perdiar24"
wastingvars <- c("anywast06", "pers_wast", "enwast")
wasting_outcomevars <- c("wasted", "swasted", "wast_rec90d", "ever_wasted", "ever_swasted", "pers_wast", "ever_co" )



dim(d)
d <- d %>% filter(!(intervention_variable %in% atbirth & agecat=="Birth"))
d <- d %>% filter(!(intervention_variable %in% postnatal & agecat %in% c("Birth", "0-6 months",  "0-24 months")))
d <- d %>% filter(!(intervention_variable %in% full2years & agecat!="24 months"))
d <- d %>% filter(!(intervention_variable %in% wastingvars & outcome_variable %in% wasting_outcomevars))
dim(d)


#Seperate adjusted and unadjusted
#mark unadjusted
d$adjusted <- ifelse(d$adjustment_set!="unadjusted" , 1, 0)

#Seperate unadjusted estimates
d_unadj <- d %>% filter(adjusted==0)
d <- d %>% filter((adjusted==1) | ((intervention_variable=="sex"  | intervention_variable=="month"  | intervention_variable=="brthmon" | intervention_variable=="rain_quartile") & adjusted==0))


d <- droplevels(d)

#Mark region
d <- mark_region(d)


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




#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest_raw, outcome="continuous")
table(is.na(RMAest_clean$intervention_level))

#Add reference level to label
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$intervention_level)

#Save cleaned data
saveRDS(RMAest_clean, paste0(here::here(),"/results/rf results/pooled_Zscore_VIM_results.rds"))
