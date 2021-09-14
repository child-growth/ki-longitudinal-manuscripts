




##############################################
#  wrapper function for Cox PH models
##############################################

ki_coxph <- function(d, Xvar, Yvar="dead", W=NULL){
  #cat(d$studyid[1])
  
  d$X <- d[[Xvar]]
  d$Y <- d[[Yvar]]
  
  
  # W=c("sex","tr")
  # W <- c("sex", "tr", "brthmon", "vagbrth", "hdlvry", "single", "trth2o",       
  #            "cleanck",       "impfloor",      "hfoodsec",      "hhwealth_quart","W_mage",        "W_mhtcm",       "W_mwtkg",      
  #            "W_mbmi",        "W_fage",        "W_fhtcm",       "W_meducyrs",    "W_feducyrs",    "W_nrooms",      "W_nhh",        
  #            "W_nchldlt5",    "W_parity",      "impsan",        "safeh20")     
  
  Wdf=NULL
  if(!is.null(W)){
    #cat("\n-----------------------------------------\nPre-screening the adjustment covariates:\n-----------------------------------------\n")
    
    Wdf <- d %>% ungroup() %>% select(W)
    #drop covariates with near zero variance
    if(length(nearZeroVar(Wdf))>0){
      Wdf<-Wdf[,-nearZeroVar(Wdf)]
    }
    
    #prescreen
    Wscreen <- NULL
    suppressWarnings(try(Wscreen <- 
                           cox_prescreen(d = d, 
                                         Ws = colnames(Wdf), 
                                         pval = 0.2, print = T)))
    
    
    #select n/10 covariates 
    if(!is.null(Wscreen)){
      nY <- floor(min(table(d$Y, d$X))/10) -1
      if(length(Wscreen)>nY & nY>0){
        Wscreen<-Wscreen[1:nY]
      }else{
        Wscreen<-NULL
      }
    }
    
    # #Drop sparse factor levels
    # if(!is.null(Wscreen)){
    #   Wdf <- d %>% subset(., select =c(Wscreen))
    #   Wdf <- droplevels(Wdf)
    #   options(na.action='na.pass')
    #   Wdf <- as.data.frame(model.matrix(~., Wdf)[,-1]) 
    #   #drop levels with near zero variance
    #   if(length(nearZeroVar(Wdf))>0){
    #     Wdf<-Wdf[,-nearZeroVar(Wdf)]
    #   }
    #   if(ncol(Wdf)==1){
    #     colnames(Wdf) <- "W"
    #   }
    #   
    # }else{
    #   Wdf=NULL
    # }
    
    Wdf <- NULL
    Wdf <- try(d %>% subset(., select =c(Wscreen)))
    if(ncol(Wdf)==0){Wdf <- NULL}
    
    if(!is.null(Wdf)){
      if(sum(is.na(Wdf))>0){
        Wdf <- imputeMissings::impute(Wdf, method = "median/mode")
      }
    }
    
    d <- bind_cols(d %>% subset(., select =c("Y","X","subjid","agedth","agedays")), Wdf)
    d <- d[complete.cases(d),]
    
  }
  
  
  d$agedays <- ifelse(d$Y==1, d$agedth, d$agedays)
  d$agewk <- ceiling(d$agedays/7)
    
  d$event <- with(d, Surv(agewk, Y == 1))
  
  #model formula
  f <- ifelse(is.null(Wdf),
              "event ~ X",
              paste0("event ~ X + ", paste(colnames(Wdf), collapse = " + ")))
  
  fit <- coxph(as.formula(f),  data =  d, cluster=subjid, id=subjid)
  fit <- summary(fit)
  res <- as.data.frame(t(fit$conf.int[1,c(1,3,4)]))
  colnames(res) <- c("HR", "ci.lb", "ci.ub")
  res$est <- as.data.frame(fit$coefficients)$coef[1]
  res$se <- as.data.frame(fit$coefficients)$`se(coef)`[1]
  
  res$N <- nrow(d)
  
  if(length(unique(d$X))>1){
    res$sparseN <- min(table(d$X, d$Y))
  }else{
    res$sparseN <- 0
  }
  res$W <- paste(colnames(Wdf), collapse = ", ") 
  #res$agecat <- d$agecat[1]
  
  return(res)
}


#---------------------------------------------------------
# Wrapper function for cox PH meta-analysis
#---------------------------------------------------------

cox_meta <- function(d=d, Xvar, Yvar="dead", W=NULL, V=c("studyid","region"), N_events=2){
  
  #Subset to last obs if using CI
  if(grepl("ever_",Xvar)){
    d <- d %>% group_by(studyid, subjid) %>% 
      filter(agedays==max(agedays)) %>%
      ungroup()
  }
  
  d$X <- d[[Xvar]]
  d$Y <- d[[Yvar]]
  
  if(!is.null(W)){
    W <- W[!(W %in% V)]
  }
  
  res <- d %>% 
    filter(!is.na(X) & !is.na(Y)) %>% 
    group_by_at(vars(one_of(!!(V)))) %>%
    mutate(Ndead=sum(Y)) %>% filter(Ndead>4) %>% droplevels(.) %>%
    do(ki_coxph(d=., Xvar=!!(Xvar), Yvar=!!(Yvar), W=all_of(W))) %>%
    mutate(pooled=0)
  
  #Drop estimates from sparse data
  #res1 <- res %>% filter(sparseN >= 5) %>% ungroup()
  res1 <- res %>% filter(sparseN >= N_events, !is.na(se)) %>% ungroup()
  #res1 <- mark_region(res1)
  
  if(sum(!(V %in% c("studyid","region")))==0){
    pooled <- poolHR(res1) %>% mutate(pooled=1, method="RE")
    pooledFE <- poolHR(res1, method="FE") %>% mutate(pooled=1, method="FE")
    
    #get regional estimates
    pooled_region <- res1 %>% group_by(region) %>%
      do(poolHR(.)) %>% mutate(pooled=1, method="RE")    
  }else{
    Vvars <- V[!(V %in% c("studyid","region"))]
    
    #Drop studies without both groups if
    res1 <- res1 %>% group_by(studyid) %>%
      mutate(N_est = n()) %>% filter(N_est!=1)
    
    pooled <- res1 %>% group_by_at(vars(one_of(!!(Vvars)))) %>%
      do(poolHR(.)) %>% mutate(pooled=1, method="RE")
    pooledFE <- res1 %>% group_by_at(vars(one_of(!!(Vvars)))) %>%
      do(poolHR(., method="FE")) %>% mutate(pooled=1, method="FE")
    
    #get regional estimates
    pooled_region <- res1 %>% group_by_at(vars(one_of(!!(c(Vvars,"region"))))) %>%
      do(poolHR(.)) %>% mutate(pooled=1, method="RE")  
  }
  
  fullres <- bind_rows(res, pooled, pooledFE, pooled_region) %>%
    mutate(X= !!(Xvar), Y= !!(Yvar))
  
  return(fullres)
}


run_cox_meta <- function(df=d, X_vector, Y="dead", Wvars, V=NULL, agecat=NULL, no_exp_overlap=F){
  
  if(is.null(V)){
    Vvars <- c("studyid","region")
  }else{
    Vvars <- c("studyid","region",V)
  }
  
  full_res_unadj <- NULL
  full_res <- NULL
  d<-df
  
  for(i in X_vector){
    if(no_exp_overlap){
      # drop <- X_vector[X_vector!=i]
      # for(j in drop){
      #   d<-d[d[j]==0,]
      # }
      d <- df 
      d$X <- d[[i]]
      # dim(d)
      # table(d$studyid, d$dead)
      d <- d %>% filter(X==1|ref==1)
      # d2 <- d %>% filter(X==1|ref==1)
      # dim(d2)
      # table(d2$studyid, d2$dead)
      # d3 <- d2 %>% filter(studyid=="ZVITAMBO")
      # prop.table(table(d3$X, d3$dead), 1)
      # summary(df$agedth[d3$X==0])
      # summary(df$agedth[d3$X==1])
    }
    
    if(sum(is.na(d[[i]]))!=nrow(d)){
      res_unadj <- cox_meta(d=d, Xvar=i, Yvar=Y, W=c("sex","tr"), V=Vvars)
      full_res_unadj <- bind_rows(full_res_unadj, res_unadj)
    }
  
    if(sum(is.na(d[[i]]))!=nrow(d)){
      res <- cox_meta(d=df, Xvar=i, Yvar=Y, W=Wvars, V=Vvars)
      full_res <- bind_rows(full_res, res) 
    }
  }
  
  full_res_unadj$adj <- 0
  full_res$adj <- 1
  
  full_res<- bind_rows(full_res, full_res_unadj)
  
  if(is.null(agecat)){
    full_res$agecat="overall"
  }else{
    full_res$agecat=agecat
  }
  
  return(full_res)
}



run_cox_meta_agestrat <- function(d=d, age_strat, X_vector, Y="dead", Wvars, V=NULL){
  
  fullres <- NULL
  for(i in 1:length(age_strat)){
    res <- NULL
    res <- run_cox_meta(df=d %>% filter(agecat %in% age_strat[1:i]), X_vector=X_vector, Y=Y, Wvars=Wvars, V=V, agecat=age_strat[i])
    fullres <- bind_rows(fullres, res)
  }
  
  return(fullres)
}









#-----------------------------------------------------------------------------------------
# Cox PH Prescreen function
#-----------------------------------------------------------------------------------------

cox_prescreen<-function (d, Ws, pval = 0.2, print = TRUE){
  require(lmtest)
  if (pval > 1 | pval < 0) {
    stop("P-value threshold not set between 0 and 1.")
  }
  Ws <- d %>% ungroup() %>% select(all_of(Ws))
  dat <- data.frame(Ws, Y=d$Y, agedays=d$agedays, agedth=d$agedth, subjid=d$subjid)
  
  nW <- ncol(Ws)
  LRp <- matrix(rep(NA, nW), nrow = nW, ncol = 1)
  rownames(LRp) <- names(Ws)
  colnames(LRp) <- "P-value"
  
  dat$agedays <- ifelse(dat$Y==1, dat$agedth, dat$agedays)
  dat$agewk <- ceiling(dat$agedays/7)
  
  dat$event <- with(dat, Surv(agewk, Y == 1))
  
  for (i in 1:nW) {
    #print(colnames(dat[i]))
    dat$W <- dat[, i]
    df <- data.frame(event=dat$event, W=dat$W)
    df <- df[complete.cases(df), ]
    
    
    # fit1 <- coxph(event ~ W, data = dat, cluster=subjid, id=subjid)
    # fit0 <- coxph(event ~ 1, data = dat, cluster=subjid, id=subjid)
    set.seed(12345)
    fit0 <- fit1 <- coxph(event ~ 1, data = df)
    try(fit1 <- coxph(event ~ W, data = df))
    
    LRp[i] <- lrtest(fit1, fit0)[2, 5]
  }
  
  
  p20 <- ifelse(LRp < pval, 1, 0)
  if (print == TRUE) {
    cat("\nLikelihood Ratio Test P-values:\n")
    print(round(LRp, 5))
    if (sum(p20) > 0) {
      LRp <- matrix(LRp[p20 == 1, ], ncol = 1)
      rownames(LRp) <- names(Ws)[p20 == 1]
      colnames(LRp) <- "P-value"
      LRp <- LRp %>% as.data.frame() %>% arrange(`P-value`)
      cat(paste("\n\nCovariates selected (P<", pval, 
                "):\n", sep = ""))
      print(LRp)
    }
    else {
      cat(paste("\nNo covariates were associated with the outcome at P<", 
                pval))
    }
  }
  if (sum(p20) > 0) {
    return(rownames(LRp))
  }else{
    return(NULL)
    
  }
}

#-----------------------------------------------------------------------------------------
# Meta-analysis function
#-----------------------------------------------------------------------------------------

poolHR <- function(d, method="REML"){
  d <- d %>% ungroup()
  
  #drop out studies with sparse strata
  d <- d %>% filter(sparseN >0, !is.na(se))
  
  nstudies <- d %>% summarise(N=n())
  
  
  fit<-NULL
  try(fit<-rma(yi=est, sei=se, data=d, method=method, measure="RR"), silent = TRUE)
  if(method=="REML"){
    if(is.null(fit)){try(fit<-rma(yi=est, sei=se, data=d, method="ML", measure="RR"), silent = TRUE)}
    if(is.null(fit)){try(fit<-rma(yi=est, sei=se, data=d, method="DL", measure="RR"), silent = TRUE)}
    if(is.null(fit)){try(fit<-rma(yi=est, sei=se, data=d, method="HE", measure="RR"), silent = TRUE)}
  }
  if(is.null(fit)){
    est<-data.frame(logHR.psi=NA, logSE=NA, HR=NA, HR.CI1=NA,  HR.CI2=NA)
  }else{
    
    est<-data.frame(fit$b, fit$se)
    colnames(est)<-c("est","se")
    
    est$HR<-exp(est$est)
    est$ci.lb<-exp(est$est - 1.96 * est$se)
    est$ci.ub<-exp(est$est + 1.96 * est$se)
    
    est$Nstudies <- nstudies$N
    est$studyid  <- "pooled"
    est$agecat <- d$agecat[1]
  }
  
  
  return(est)
}