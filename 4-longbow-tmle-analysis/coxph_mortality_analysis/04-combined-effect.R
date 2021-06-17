

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(caret)
library(lmtest)

#Set adjustment covariates
Wvars <- c("sex", "tr", "brthmon", "vagbrth", "hdlvry", "single", "trth2o",       
           "cleanck",       "impfloor",      "hfoodsec",      "hhwealth_quart","W_mage",        "W_mhtcm",       "W_mwtkg",      
           "W_mbmi",        "W_fage",        "W_fhtcm",       "W_meducyrs",    "W_feducyrs",    "W_nrooms",      "W_nhh",        
           "W_nchldlt5",    "W_parity",      "impsan",        "safeh20")     

#load data
d <- readRDS(mortality_age_path)

d$subjid <- as.numeric(d$subjid)
d <- d %>% arrange(studyid, subjid, agedays)
table(d$studyid)


#Steps for each analysis:
#1) drop imputed agedth if needed
#2) drop observations other than the age category of interest
#3) Create survival outcome
summary(d$agedays)
table(d$agecat)
d <- d %>% filter(agedays <= 730)
#d <- d %>% filter(studyid=="ZVITAMBO")
d <- droplevels(d)

#Drop imputed age of death and studies with only imputed age of death
df <- d %>% filter(dead==1)
table(df$studyid, df$imp_agedth)

d <- d %>% filter(imp_agedth==0,
                  !(studyid %in% c("GMS-Nepal","SAS-CompFeed","SAS-FoodSuppl")))

d <- d %>% mutate(cohort=paste0(studyid,"-",country))
d$agedays <- ifelse(d$dead==1, d$agedth, d$agedays)
d$event <- with(d, Surv(agedays, dead == 1))

format_HR <- function(fit){
  fit <- summary(fit)
  res <- as.data.frame(fit$conf.int[,c(1,3,4)])
  res$p <- coef(fit)[3,6]
  colnames(res) <- c("HR", "ci.lb", "ci.ub","Pval")
  res$est <- as.data.frame(fit$coefficients)$coef
  res$se <- as.data.frame(fit$coefficients)$`se(coef)`
  res$Y <- rownames(res)
  rownames(res) <- NULL
  return(res)
}


fullres=NULL
for(i in unique(d$cohort)){
  fit1 <- coxph(event ~ haz + whz + waz,  data =  d, cluster=subjid, id=subjid)
  fit1 <- format_HR(fit1)
  
  fit2 <- coxph(event ~ stunt+wast+underwt,  data =  d, cluster=subjid, id=subjid)
  fit2 <- format_HR(fit2)
  
  fit3 <- coxph(event ~ ever_stunt+ever_wast+ever_uwt,  data =  d, cluster=subjid, id=subjid)
  fit3 <- format_HR(fit3)
  
  res <- bind_rows(fit1, fit2, fit3)
  res$cohort <- i
  fullres <- bind_rows(fullres, res)
}
fullres

fullres$sparseN <- 1
pooled <- fullres %>% group_by(Y) %>%
  do(poolHR(.)) %>% mutate(pooled=1, method="RE")

pooled <- pooled %>% mutate(HR=round(HR,2), ci.lb=round(ci.lb,2), ci.ub=round(ci.ub,2))

knitr::kable(pooled[,c(1,4,5,6)])


fullres