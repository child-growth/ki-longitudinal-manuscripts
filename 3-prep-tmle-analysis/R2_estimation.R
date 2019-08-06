


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library("tlverse")
library("sl3")
library("tmle3")
library("skimr")
library("data.table")
library("SuperLearner")



#Load and clean data
load(paste0(ghapdata_dir, "st_meanZ_rf.Rdata"))
haz <- d %>% filter(agecat=="24 months", !is.na(haz)) 
load(paste0(ghapdata_dir, "wast_meanZ_rf.Rdata"))
whz <- d %>% filter(agecat=="24 months", !is.na(whz))




#Pick prediction variables and subset to studies that measure all variables
covars <- c("parity", "W_birthlen", "W_meducyrs", "W_nrooms", "W_mwtkg")

haz <- haz %>% group_by(studyid, country) %>% 
  mutate(N=n(),
         miss_parity = 1*(sum(is.na(parity))==N),
         miss_birthlen = 1*(sum(is.na(birthlen))==N),
         miss_meducyrs = 1*(sum(is.na(meducyrs))==N),
         miss_nrooms = 1*(sum(is.na(nrooms))==N),
         miss_mwtkg = 1*(sum(is.na(mwtkg))==N),
         sum_miss= miss_parity + miss_birthlen + miss_meducyrs + miss_nrooms + miss_mwtkg 
         )

whz <- whz %>% group_by(studyid, country) %>% 
  mutate(N=n(),
         miss_parity = 1*(sum(is.na(parity))==N),
         miss_birthlen = 1*(sum(is.na(birthlen))==N),
         miss_meducyrs = 1*(sum(is.na(meducyrs))==N),
         miss_nrooms = 1*(sum(is.na(nrooms))==N),
         miss_mwtkg = 1*(sum(is.na(mwtkg))==N),
         sum_miss= miss_parity + miss_birthlen + miss_meducyrs + miss_nrooms + miss_mwtkg 
  )


haz <- haz %>% filter(sum_miss<2) %>% subset(., select = c("studyid", "subjid", "country", "haz",  covars))
whz <- whz %>% filter(sum_miss<2) %>% subset(., select = c("studyid", "subjid", "country", "whz",  covars))

#Add NA's to factors
haz$parity <- addNA(haz$parity)
whz$parity <- addNA(whz$parity)

#Impute median by cohort and add missingness indicator to continious
haz <- haz %>% group_by(studyid, country) %>%
  mutate(
    birthlen_miss=ifelse(is.na(W_birthlen),1,0),
    meducyrs_miss=ifelse(is.na(W_meducyrs),1,0),
    nrooms_miss=ifelse(is.na(W_nrooms),1,0),
    mwtkg_miss=ifelse(is.na(W_mwtkg),1,0),
    W_birthlen=ifelse(is.na(W_birthlen),median(W_birthlen, na.rm=T),W_birthlen),
    W_meducyrs=ifelse(is.na(W_meducyrs),median(W_meducyrs, na.rm=T),W_meducyrs),
    W_nrooms=ifelse(is.na(W_nrooms),median(W_nrooms, na.rm=T),W_nrooms),
    W_mwtkg=ifelse(is.na(W_mwtkg),median(W_mwtkg, na.rm=T),W_mwtkg)) %>% ungroup() %>%
  mutate(
    W_birthlen=ifelse(is.na(W_birthlen),median(W_birthlen, na.rm=T),W_birthlen),
    W_meducyrs=ifelse(is.na(W_meducyrs),median(W_meducyrs, na.rm=T),W_meducyrs),
    W_nrooms=ifelse(is.na(W_nrooms),median(W_nrooms, na.rm=T),W_nrooms),
    W_mwtkg=ifelse(is.na(W_mwtkg),median(W_mwtkg, na.rm=T),W_mwtkg)    
  )

whz <- whz %>% group_by(studyid, country) %>%
  mutate(
    birthlen_miss=ifelse(is.na(W_birthlen),1,0),
    meducyrs_miss=ifelse(is.na(W_meducyrs),1,0),
    nrooms_miss=ifelse(is.na(W_nrooms),1,0),
    mwtkg_miss=ifelse(is.na(W_mwtkg),1,0),
    W_birthlen=ifelse(is.na(W_birthlen),median(W_birthlen, na.rm=T),W_birthlen),
    W_meducyrs=ifelse(is.na(W_meducyrs),median(W_meducyrs, na.rm=T),W_meducyrs),
    W_nrooms=ifelse(is.na(W_nrooms),median(W_nrooms, na.rm=T),W_nrooms),
    W_mwtkg=ifelse(is.na(W_mwtkg),median(W_mwtkg, na.rm=T),W_mwtkg)) %>% ungroup() %>%
  mutate(
    W_birthlen=ifelse(is.na(W_birthlen),median(W_birthlen, na.rm=T),W_birthlen),
    W_meducyrs=ifelse(is.na(W_meducyrs),median(W_meducyrs, na.rm=T),W_meducyrs),
    W_nrooms=ifelse(is.na(W_nrooms),median(W_nrooms, na.rm=T),W_nrooms),
    W_mwtkg=ifelse(is.na(W_mwtkg),median(W_mwtkg, na.rm=T),W_mwtkg)    
  )


#Add missing indicators to covariates
covars <- c("parity", "W_birthlen", "W_meducyrs", "W_nrooms", "W_mwtkg", "birthlen_miss", "meducyrs_miss", "nrooms_miss", "mwtkg_miss")


#Set up SL components
lrnr_glm <- make_learner(Lrnr_glm)
lrnr_mean <- make_learner(Lrnr_mean)
lrnr_glmnet <- make_learner(Lrnr_glmnet)
lrnr_ranger100 <- make_learner(Lrnr_ranger, num.trees = 100)
lrnr_hal_simple <- make_learner(Lrnr_hal9001, degrees = 1, n_folds = 2)
lrnr_gam <- Lrnr_pkg_SuperLearner$new("SL.gam")
lrnr_bayesglm <- Lrnr_pkg_SuperLearner$new("SL.bayesglm")




stack <- make_learner(
  Stack,
  lrnr_glm, lrnr_mean, lrnr_ranger100, lrnr_glmnet,
  lrnr_gam, lrnr_bayesglm
)

screen_cor <- Lrnr_pkg_SuperLearner_screener$new("screen.corP")

cor_pipeline <- make_learner(Pipeline, screen_cor, stack)

fancy_stack <- make_learner(Stack, cor_pipeline, stack)


metalearner <- make_learner(Lrnr_nnls)


sl <- make_learner(Lrnr_sl,
                   learners = fancy_stack,
                   metalearner = metalearner
)




## Function to estimate R2 within each cohort and outcome

SL_R2 <- function(dat, outcome="haz", covars){
  
  Y_index = which(colnames(dat) == outcome)
  
  #Drop missingness
  node_list <- list(
    W=covars,
    A=NULL,
    Y=outcome
  )
  processed <- process_missing(data=dat, node_list,  max_p_missing = 0.5)
  dat <- processed$data
  
  # define covars
  covars <- colnames(dat)[which(names(dat) %in% covars)]
  
  # create the sl3 task
  washb_task <- make_sl3_Task(
    data = dat,
    covariates = covars,
    outcome = outcome
  )
  
  
  ##3. Fit the full model
  sl_fit <- sl$train(washb_task)
  yhat_full <- sl_fit$predict_fold(washb_task,"validation")
  

  n= nrow(dat)
  y= dat[,Y_index]
  
  mse_full <- 1/n * sum((yhat_full-y)^2)
  
  
  ##4. Fit the null model
  lrnr_cv_null <- make_learner(Lrnr_cv, make_learner(Lrnr_mean))
  fit_null <- lrnr_cv_null$train(washb_task)
  
  
  yhat_null <- fit_null$predict_fold(washb_task,"validation")
  
  mse_null <- 1/n * sum((yhat_null-y)^2)
  
  
  
  
  ##5. Construct CI for mse_full/mse_null
  IC <- 1/mse_null * ((yhat_full-y)^2 - mse_full) - mse_full/(mse_null)^2 * ((yhat_null-y)^2- mse_null)
  
  # check if the mean of IC is about 0
  cat("mean IC: ",mean(IC))
  
  
  
  psi <- mse_full/mse_null
  se <- sqrt(var(IC)/n)
  CI_up <- psi + 1.96*se
  CI_low <- psi - 1.96*se
  
  R2 <- 1 - psi
  R2.ci1 <- 1 - CI_up
  R2.ci2 <- 1 - CI_low
  
  return(data.frame(r2=R2, r2.ci1=R2.ci1, r2.ci2=R2.ci2, mse=psi, mse.ci1=CI_low, mse.ci2=CI_up))

}


#Apply function to all cohorts that measure the covariates of interest
# res_haz <- d %>% group_by(studyid, country) %>% do(res = SL_R2(dat=.,  outcome="haz", covars=c("parity", "birthlen", "meducyrs", "nrooms", "mwtkg")))
# res_whz <- d %>% group_by(studyid, country) %>% do(res = SL_R2(dat=.,  outcome="whz", covars=c("parity", "birthlen", "meducyrs", "nrooms", "mwtkg")))

res_haz <- haz %>% group_by(studyid, country) %>% do(SL_R2(dat=.,  outcome="haz", covars=c("parity", "birthlen", "meducyrs", "nrooms", "mwtkg")))
res_whz <- whz %>% group_by(studyid, country) %>% do(SL_R2(dat=.,  outcome="whz", covars=c("parity", "birthlen", "meducyrs", "nrooms", "mwtkg")))


#Save results
save(res_haz, res_whz, file=here("results/R2_results.rdata"))