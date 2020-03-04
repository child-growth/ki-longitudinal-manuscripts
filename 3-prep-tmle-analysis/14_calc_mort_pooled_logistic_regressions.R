







rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#read in data
mort <- readRDS(mortality_path)
wast <- readRDS(rf_wasting_data_path)



d <- left_join(wast, mort, by = c("studyid", "country", "subjid"))


# Subset to children under 2 years and children with an age of death (among child mortality)
d <- d %>% filter(agedays < 730) %>%
           filter(dead==0 | !is.na(agedth))

# Calculate exposures
d <- d %>% mutate(wast = 1*(whz) < -2)

#Mark person-time
d <- d %>% group_by(studyid, subjid) %>%
  mutate(Nobs = n(),
         min_age = min(agedays),
         max_age = max(agedays),
         person_time = max_age - min_age
         ) %>%
  filter(Nobs > 1)

#TEMP
#d <- d %>% filter(studyid=="Keneba")


# --------------------------------------
# Robust clustered SE function
# http://people.su.se/~ma/mcluster.R
# R (www.r-project.org) codes for computing multi-way clustered-standard errors
# Mahmood Arai, Jan 21, 2008. 
# See: Thompson (2006), Cameron, Gelbach and Miller (2006) and Petersen (2006).
#
# slightly modified to have it return the vcovCL object
# rather than the updated fit (since might need the VC matrix)
# --------------------------------------
cl   <- function(dat,fm, cluster){
  # dat: data used to fit the model
  # fm : model fit (object)
  # cluster : vector of cluster IDs
  require(sandwich, quietly = TRUE)
  require(lmtest, quietly = TRUE)
  M <- length(unique(cluster))
  N <- length(cluster)
  K <- fm$rank
  dfc <- (M/(M-1))*((N-1)/(N-K))
  uj  <- apply(estfun(fm),2, function(x) tapply(x, cluster, sum));
  vcovCL <- dfc*sandwich(fm, meat=crossprod(uj)/N)
  return(vcovCL)
}

# --------------------------------------
# function to estimate poisson models
# with robust SEs
# --------------------------------------
poissonRB <- function(fmla,dat,print=TRUE) {
  # poisson regression with robust SEs
  # fmla : formula for the model fit
  # dat  : data used to fit the model (has to include "subjid" for individuals)
  # print: print results ?
  
  # restrict to complete cases
  dat <- dat[complete.cases(dat[,c(all.vars(fmla))]),] 
  
  # fit model
  fmla<-paste0(fmla, " + offset(log(person_time))")
  #fit <- glm(wast/period_length~MEDUCYRS,family=quasipoisson,data=dat,model=FALSE,x=TRUE, weights=period_length)
  fit <- glm(fmla,family=poisson,data=dat,model=FALSE,x=TRUE)
  
  vcovCL <- cl(dat=dat,fm=fit,cluster=dat$subjid)
  rfit <- coeftest(fit, vcovCL)
  if(print==TRUE) {
    cat(paste("N obs=",nrow(dat)))
    print(rfit)
  }
  list(fit=fit,rfit=rfit,vcovCL=vcovCL)
}



irr <- poissonRB(fmla="dead~wast",dat=d)
irr

# library(tmle)
# library(SuperLearner)
# 
# 
# lib=c("SL.glm") 
# test<-tmle(Y=dat$wast, A=dat$ELEC, W=data.frame(W1=rep(1, nrow(dat)),W2=rep(1, nrow(dat))), Q.SL.library=lib , g.SL.library=lib)
# test