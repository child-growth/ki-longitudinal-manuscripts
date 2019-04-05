
#ttest function across agecats
ki.ttest <- function(data, y, levels, ref, comp){
  pval <- NULL
  for(i in 1:length(comp)){
    colnames(data)[colnames(data)==y] <- "y"
    colnames(data)[colnames(data)==levels] <- "levels"
    datasub =data[data$levels %in% c(ref, comp[i]),]
    pval <- rbind(pval, t.test(y ~ levels, data = datasub)$p.value)
  }
  pval=data.frame(comp=comp, pval)
  colnames(pval)[2] <- "pval"
  pval$pvalcat <- ""
  pval$pvalcat[pval$pval<0.05] <- "*"
  pval$pvalcat[pval$pval<0.01] <- "**"
  pval$pvalcat[pval$pval<0.001] <- "***"
  return(pval)
}


#glm function across agecats
ki.glm<- function(data, y, levels, ref, comp){
  diffdf <- NULL
  for(i in 1:length(comp)){
    colnames(data)[colnames(data)==y] <- "y"
    colnames(data)[colnames(data)==levels] <- "levels"
    datasub =data[data$levels %in% c(ref, comp[i]),]
    datasub$levels <- relevel(datasub$levels, ref=ref)
    
    res <- glm(y ~ levels, data = datasub)
    se <- summary(res)$coefficients[2,2]
    resdf <- data.frame(diff=res$coefficients[2])
    resdf$lb <- resdf$dif - 1.96 * se
    resdf$ub <- resdf$dif + 1.96 * se
    resdf$pval <- summary(res)$coefficients[2,4]
    rownames(resdf) <- NULL
    diffdf <- rbind(diffdf, resdf)
  }
  diffdf=data.frame(comp=comp, diffdf)
  diffdf$pvalcat <- ""
  diffdf$pvalcat[diffdf$pval<0.05] <- "*"
  diffdf$pvalcat[diffdf$pval<0.01] <- "**"
  diffdf$pvalcat[diffdf$pval<0.001] <- "***"
  return(diffdf)
}


gamCI <- function(m,newdata,nreps=10000) {
  require(mgcv)
  require(dplyr)
  Vb <- vcov(m,unconditional = TRUE)
  pred <- predict(m, newdata, se.fit = TRUE)
  fit <- pred$fit
  se.fit <- pred$se.fit
  BUdiff <- MASS::mvrnorm(n=nreps, mu = rep(0, nrow(Vb)), Sigma = Vb)
  Cg <- predict(m, newdata, type = "lpmatrix")
  simDev <- Cg %*% t(BUdiff)
  absDev <- abs(sweep(simDev, 1, se.fit, FUN = "/"))
  masd <- apply(absDev, 2L, max)
  crit <- quantile(masd, prob = 0.95, type = 8)
  pred <- data.frame(newdata,fit=pred$fit,se.fit=pred$se.fit)
  pred <- mutate(pred,
                 uprP = fit + (2 * se.fit),
                 lwrP = fit - (2 * se.fit),
                 uprS = fit + (crit * se.fit),
                 lwrS = fit - (crit * se.fit)
  )
  return(pred)
}


mean_sd <- function(x){
  cat("\n", round(mean(x, na.rm=T),3),
      "  ", round(sd(x, na.rm=T),3),"\n")
}
N_perc <- function(x){
  print(table(x))
  cat("\n")
  for(i in unique(x)){
    cat(i,":     ")
    y<-ifelse(x==i,1,0)
    cat(sum(y, na.rm=T),
        " (", round(mean(y*100, na.rm=T),3),")\n", sep = "")
  }
}




calc.prev.agecat <- function(d){

  d = d %>%
    arrange(studyid,subjid,agedays) %>%
    mutate(agecat=ifelse(agedays==1,"Birth",
                         ifelse(agedays>2*30.4167 & agedays<4*30.4167,"3 months",
                                ifelse(agedays>5*30.4167 & agedays<7*30.4167,"6 months",
                                       ifelse(agedays>8*30.4167 & agedays<10*30.4167,"9 months",
                                              ifelse(agedays>11*30.4167 & agedays<13*30.4167,"12 months",
                                                     ifelse(agedays>14*30.4167 & agedays<16*30.4167,"15 months",
                                                            ifelse(agedays>17*30.4167 & agedays<19*30.4167,"18 months",
                                                                   ifelse(agedays>20*30.4167 & agedays<22*30.4167,"21 months",
                                                                          ifelse(agedays>23*30.4167& agedays<25*30.4167,"24 months","")))))))))) %>%
    mutate(agecat=factor(agecat,levels=c("Birth","3 months","6 months","9 months",
                                         "12 months","15 months","18 months","21 months","24 months")))
}


calc.monthly.agecat <- function(d){

  d$agecat <- cut(d$agedays, breaks=c(0:25)*30.4167-30.4167/2, include.lowest = F,
                  labels =paste0(0:24, " months"))
  levels(d$agecat)[1] <- "Two weeks"
  levels(d$agecat)[2] <- "One month"
  table(d$agecat)
  return(d)
}

calc.ci.agecat <- function(d, range=3){
  if(range==3){
    d = d %>%
      mutate(agecat=ifelse(agedays<=3*30.4167,"0-3 months",
                           ifelse(agedays>3*30.4167 & agedays<=6*30.4167,"3-6 months",
                                  ifelse(agedays>6*30.4167 & agedays<=9*30.4167,"6-9 months",
                                         ifelse(agedays>9*30.4167 & agedays<=12*30.4167,"9-12 months",
                                                ifelse(agedays>12*30.4167 & agedays<=15*30.4167,"12-15 months",
                                                       ifelse(agedays>15*30.4167 & agedays<=18*30.4167,"15-18 months",
                                                              ifelse(agedays>18*30.4167 & agedays<=21*30.4167,"18-21 months",
                                                                     ifelse(agedays>21*30.4167& agedays<=24*30.4167,"21-24 months",""))))))))) %>%
      mutate(agecat=factor(agecat,levels=c("0-3 months","3-6 months","6-9 months","9-12 months","12-15 months","15-18 months","18-21 months","21-24 months")))
  }
  if(range==6){
    d = d %>%
      mutate(agecat=ifelse(agedays<=6*30.4167,"0-6 months",
                           ifelse(agedays>6*30.4167 & agedays<=12*30.4167,"6-12 months",
                                  ifelse(agedays>12*30.4167 & agedays<=18*30.4167,"12-18 months",
                                         ifelse(agedays>18*30.4167& agedays<=24*30.4167,"18-24 months",""))))) %>%
      mutate(agecat=factor(agecat,levels=c("0-6 months","6-12 months","12-18 months","18-24 months")))
  }
  return(d)
}






#---------------------------------------
# cohort-specific output formatting
#---------------------------------------
# if percentage, multiply est and ci by 100
# create cohort name for plotting
# create region variable
# add age labels for x-axis

# Input:
# data frame with fit.escalc output
# vector of labels for plotting

#Returns:
# data frame formatted for plotting cohort specific results
cohort.format=function(df, lab, y, est="NA"){
  y = as.numeric(y)

  # rescale percentages
  if(est=="percent"){
    df = df %>% mutate(y=y*100,ci.lb=ci.lb*100,ci.ub=ci.ub*100)
  }
  if(est=="rate"){
    df = df %>% mutate(y=y*1000,ci.lb=ci.lb*1000,ci.ub=ci.ub*1000)
  }

  # cohort name
  df = df %>% mutate(cohort=paste0(studyid,"-",country)) %>%
    mutate(cohort=gsub("ki[^-]*-","",cohort))

  # region variable
  df <- df %>% mutate(region = case_when(
    country=="BANGLADESH" | country=="INDIA"|
      country=="NEPAL" | country=="PAKISTAN"|
      country=="PHILIPPINES"                   ~ "Asia",
    country=="KENYA"|
      country=="GHANA"|
      country=="BURKINA FASO"|
      country=="GUINEA-BISSAU"|
      country=="MALAWI"|
      country=="SOUTH AFRICA"|
      country=="TANZANIA, UNITED REPUBLIC OF"|
      country=="ZIMBABWE"|
      country=="GAMBIA"                       ~ "Africa",
    country=="BELARUS"                      ~ "Europe",
    country=="BRAZIL" | country=="GUATEMALA" |
      country=="PERU"                         ~ "Latin America",
    TRUE                                    ~ "Other"
  ))

  # create formatted age categories for plotting
  df <- df %>%  mutate(agecat=droplevels(as.factor(agecat)))
  df <- df %>%  mutate(age.f = factor(agecat,levels=levels(df$agecat),
                                      labels=lab))

  return(df)
}




#---------------------------------------
# rma wrapper function across a list of ages
#---------------------------------------
run_rma = function(data, n_name, x_name, label, method){

  # create age list
  agelist = as.list(levels(data$agecat))

  # apply fit.rma across age list
  res.list=lapply(agelist,function(x)
    fit.rma(data=data,ni=n_name, xi=x_name,age=x,measure="PLO",nlab="children",
            method=method))

  # unlist output
  res=as.data.frame(do.call(rbind, res.list))

  # tidy up output
  res[,4]=as.numeric(res[,4])
  res[,6]=as.numeric(res[,6])
  res[,7]=as.numeric(res[,7])
  res = res %>% mutate(est=est*100,lb=lb*100,ub=ub*100)
  res$agecat=factor(res$agecat,levels=levels(data$agecat))
  res$ptest.f=sprintf("%0.0f",res$est)
  res$label = label

  return(res)
}


#---------------------------------------
# rma wrapper function across a list of ages
# for age in months
#---------------------------------------
run_rma_agem = function(data, n_name, x_name, label, method){

  # create age list
  agelist = as.list(levels(data$agem))

  # apply fit.rma across age list
  res.list=lapply(agelist,function(x)
    fit.rma.rec.cohort(data=data %>% filter(agem==x),
                       ni=n_name, xi=x_name, measure="PLO", nlab="children",
            method=method))

  # unlist output
  res=as.data.frame(do.call(rbind, res.list))

  # tidy up output
  res[,3]=as.numeric(res[,3])
  res[,5]=as.numeric(res[,5])
  res[,6]=as.numeric(res[,6])
  res = res %>% mutate(est=est*100,lb=lb*100,ub=ub*100)
  res$agem=factor(levels(data$agem),levels=levels(data$agem))
  res$ptest.f=sprintf("%0.0f",res$est)
  res$label = label

  res = res %>% select(label, agem, nstudies, nmeas, everything())

  return(res)
}





#---------------------------------------
# fit.rma function
#---------------------------------------

# random effects function, save results nicely
fit.rma=function(data,age,ni,xi,measure,nlab, method = "REML"){
  data=filter(data,agecat==age)

  if(measure=="PLO"){
    if(nrow(data)==1){
      fit <- NULL
      try(fit<-escalc(data=data, ni=data[[ni]], xi=data[[xi]], method=method, measure="PLO", append=T))
      if(is.null(fit)){try(fit <- rma(data=data, ni=data[[ni]], xi=data[[xi]], method="ML", measure = measure))}
      if(is.null(fit)){try(fit <- rma(data=data, ni=data[[ni]], xi=data[[xi]], method="DL", measure = measure))}
      if(is.null(fit)){try(fit <- rma(data=data, ni=data[[ni]], xi=data[[xi]], method="HE", measure = measure))}
      data<-fit
      data$se <- sqrt(data$vi)
      out=data %>%
        ungroup() %>%
        mutate(nstudies=1, nmeas=data[[ni]]) %>%
        mutate(agecat=age,est=plogis(yi), lb=plogis(yi-1.96*se), ub=plogis(yi+1.96*se),
               nmeas.f=paste0("N=",format(sum(data[[ni]]),big.mark=",",scientific=FALSE),  " ",nlab),
               nstudy.f=paste0("N=",nstudies," studies")) %>%
        select(nstudies, nmeas,    agecat ,     est,        se,        lb,        ub ,          nmeas.f,     nstudy.f) %>%
        as.tibble()
      rownames(out) <- NULL
    }else{
      if(sum(data[[xi]])==0){
        fit<-rma(data=data, ni=data[[ni]], xi=data[[xi]],
                 method="FE", measure="PLO") #Use FE model if all 0 counts because no heterogeneity and rma.glmm fails
      }else{
        fit <- NULL
        try(fit <- rma(data=data, ni=data[[ni]], method=method, xi=data[[xi]], measure="PLO"))
        if(is.null(fit)){
          method="ML"
          try(fit <- rma(data=data, ni=data[[ni]], xi=data[[xi]], method=method, measure = measure))
        }
        if(is.null(fit)){
          method="DL"
          try(fit <- rma(data=data, ni=data[[ni]], xi=data[[xi]], method=method, measure = measure))
        }
        if(is.null(fit)){
          method="HE"
          try(fit <- rma(data=data, ni=data[[ni]], xi=data[[xi]], method=method, measure = measure))
        }
        cat("\nMethod chosen to fit RE model:", method, "\n")
      }
      out=data %>%
        ungroup() %>%
        summarise(nstudies=length(unique(studyid)),
                  nmeas=sum(data[[ni]][agecat==age])) %>%
        #mutate(agecat=age,est=exp(fit$beta), se=fit$se, lb=exp(fit$beta-1.96*fit$se), ub=exp(fit$beta+1.96*fit$se),
        mutate(agecat=age,est=plogis(fit$beta), se=fit$se, lb=plogis(fit$beta-1.96*fit$se), ub=plogis(fit$beta+1.96*fit$se),
               nmeas.f=paste0("N=",format(sum(data[[ni]]),big.mark=",",scientific=FALSE),  " ",nlab),
               nstudy.f=paste0("N=",nstudies," studies")) %>% as.tibble()
      rownames(out) <- NULL
    }
  }else{
    if(measure!="IR"){
      fit<-rma(ni=data[[ni]], xi=data[[xi]],
               method="REML", measure=measure)
    }else{
      fit<-rma(ti=data[[ni]], xi=data[[xi]],
               method="REML", measure=measure, to="if0all")
    }
    out=data %>%
      ungroup() %>%
      summarise(nstudies=length(unique(studyid)),
                nmeas=sum(data[[ni]][agecat==age])) %>%
      mutate(agecat=age,est=fit$beta, se=fit$se, lb=fit$ci.lb, ub=fit$ci.ub,
             nmeas.f=paste0("N=",format(sum(data[[ni]]),big.mark=",",scientific=FALSE),
                            " ",nlab),
             nstudy.f=paste0("N=",nstudies," studies"))
  }
  return(out)

}




# random effects function, save results nicely
# customized for stunting recovery cohort analysis
# since it does not use age categories
fit.rma.rec.cohort=function(data,ni,xi,measure,nlab, method = "REML"){

  fit <- NULL
  try(fit <- rma(data=data, ni=data[[ni]], method=method,
                 xi=data[[xi]], measure="PLO"))
  if(is.null(fit)){
    method="ML"
    try(fit <- rma(data=data, ni=data[[ni]], xi=data[[xi]],
                   method=method, measure = measure))
  }
  if(is.null(fit)){
    method="DL"
    try(fit <- rma(data=data, ni=data[[ni]], xi=data[[xi]],
                   method=method, measure = measure))
  }
  if(is.null(fit)){
    method="HE"
    try(fit <- rma(data=data, ni=data[[ni]], xi=data[[xi]],
                   method=method, measure = measure))
  }
  cat("\nMethod chosen to fit RE model:", method, "\n")

  out=data %>%
    ungroup() %>%
    summarise(nstudies=length(unique(studyid)),
              nmeas=sum(data[[ni]])) %>%
    mutate(
      est = plogis(fit$beta),
      se = fit$se,
      lb = plogis(fit$beta-qnorm(0.975)*fit$se),
      ub = plogis(fit$beta+qnorm(0.975)*fit$se),
      nmeas.f = paste0("N=", format(
        sum(data[[ni]]), big.mark = ",",
        scientific = FALSE
      ),
      " ", nlab),
      nstudy.f = paste0("N=", nstudies, " studies")
    )

  return(out)

}





# random effects function, save results nicely
fit.cont.rma=function(data,age,yi,vi,ni,nlab, method = "REML"){

  data=filter(data,agecat==age)

  fit <- NULL
  try(fit <- rma(yi=data[[yi]], vi=data[[vi]], method=method, measure = "GEN"))
  if(is.null(fit)){try(fit <- rma(yi=data[[yi]], vi=data[[vi]], method="ML", measure = "GEN"))}
  if(is.null(fit)){try(fit <- rma(yi=data[[yi]], vi=data[[vi]], method="DL", measure = "GEN"))}
  if(is.null(fit)){try(fit <- rma(yi=data[[yi]], vi=data[[vi]], method="HE", measure = "GEN"))}

  out = data %>%
    ungroup() %>%
    summarise(nstudies=length(unique(studyid)),
              nmeas=sum(data[[ni]][agecat==age])) %>%
    mutate(agecat=age,est=fit$beta, se=fit$se, lb=fit$ci.lb, ub=fit$ci.ub,
           nmeas.f=paste0("N=",format(sum(data[[ni]]),big.mark=",",scientific=FALSE),
                          " ",nlab),
           nstudy.f=paste0("N=",nstudies," studies"))
  return(out)
}





#---------------------------------------
# fit.escalc function
#---------------------------------------

# calc individual cohort PR variances, standard errors, and 95% CI from the rma() arguements, and append to dataset
# Input:
# meas: PR for prevalence, CI for cumulative incidence, and IR for incidence rate
# PLO for log transformed prevalence (to prevent 95% CI outside 0 and 1).

#Returns:
# Inputted dataframe with appended columns
# yi = outcome of interest
# vi = variance of outcome
# se = standard error
# ci.lb = lower bound of 95% confidence interval
# ci.ub = upper bound of 95% confidence interval

fit.escalc<-function(data,age,ni,xi, meas){
  data=filter(data,agecat==age)

  if(meas=="PLO"){
    data<-escalc(data=data, ni=data[[ni]], xi=data[[xi]], method="REML", measure="PLO", append=T)
    data$se <- sqrt(data$vi)
    data$ci.lb <- plogis(data$yi - 1.96 * data$se)
    data$ci.ub <- plogis(data$yi + 1.96 * data$se)
    data$yi <- plogis(data$yi)

  }else{

    if(meas=="PR"){
      data<-escalc(data=data, ni=data[[ni]], xi=data[[xi]], method="REML", measure="PLO", append=T)
    }

    if(meas=="IR"){
      data<-escalc(data=data, ti=data[[ni]], xi=data[[xi]], method="REML", measure="IR", append=T)
    }

    data$se <- sqrt(data$vi)
    data$ci.lb <- data$yi - 1.96 * data$se
    data$ci.ub <- data$yi + 1.96 * data$se
  }
  return(data)
}


fit.escalc.cont <- function(data,age,yi,vi, meas){
  data=filter(data,agecat==age)

  data <- data.frame(data, escalc(yi=data[[yi]], vi=data[[vi]], method="REML", measure="GEN"))

  data$se <- sqrt(data$vi)
  data$ci.lb <- data$yi - 1.96 * data$se
  data$ci.ub <- data$yi + 1.96 * data$se

  return(data)
}


sem<-function(x){
  sd(x)/sqrt(length(x))
}




#----------------------------------------------
# Mean and 95% CI function
#----------------------------------------------
mean95CI <- function(Y, id=rep(1:length(Y)), persontime=NULL, proportion=F, percent=F, count=F){

  if(proportion==F){
    if(count==T){
      IR.CI <- pois.exact(Y, pt = persontime, conf.level = 0.95)[3:5]
      mean_ci <- data.frame(N=Y, Mean=IR.CI[1], SD=NA, Robust.SE=NA ,  Lower.95.CI=IR.CI[2] ,  Upper.95.CI=IR.CI[3] )
      colnames(mean_ci) <- c("N","Mean","SD","Robust SE", "Lower 95%CI", "Upper 95%CI")
    }else{
      if(!is.na(mean(Y[complete.cases(Y)]))){
        mudat <- data.frame(id = id, Y = Y)
        mudat <- mudat[complete.cases(mudat), ]
        n.sub <- dim(mudat)[1]
        fit <- glm(Y ~ 1, family = gaussian, data = mudat)
        vcovCL <- sandwichSE(mudat, fm = fit, cluster = mudat$id)
        rfit <- coeftest(fit, vcovCL)
        lb <- rfit[1, 1] - 1.96 * rfit[1, 2]
        ub <- rfit[1, 1] + 1.96 * rfit[1, 2]
        mean_ci <- matrix(c(n.sub, rfit[1, 1], sd(mudat$Y), rfit[1,
                                                                 2], lb, ub), nrow = 1, ncol = 6)
        colnames(mean_ci) <- c("N", "Mean", "SD", "Robust SE", "Lower 95%CI",
                               "Upper 95%CI")

      }else{
        mean_ci <- data.frame(N=NA, Mean=NA, SD=NA, `Robust SE`=NA, `Lower 95%CI`=NA, `Upper 95%CI`=NA)
        colnames(mean_ci) <- c("N", "Mean", "SD", "Robust SE", "Lower 95%CI", "Upper 95%CI")
      }
    }
  }else{

    require(binom)
    # Find the number of obs
    n = length(Y[!is.na(Y)])
    if(percent==T){
      CR.res<-binom.confint(sum(Y/100, na.rm = T), n, method="exact")
    }else{
      CR.res<-binom.confint(sum(Y, na.rm = T), n, method="exact")
    }
    mean_ci <- data.frame(N=n, Mean=CR.res[4], SD=NA, `Robust SE`=NA, `Lower 95%CI`=CR.res[5], `Upper 95%CI`=CR.res[6])
    colnames(mean_ci) <- c("N", "Mean", "SD", "Robust SE", "Lower 95%CI", "Upper 95%CI")
  }
  return(mean_ci)
}


#----------------------------------------------
# standardized naming convention for figures
# and associated tables

# inputs are string descriptors of results features

# returns a string with a standardized naming convention
#----------------------------------------------
create_name = function(outcome, cutoff, measure, population, 
                          location, age, analysis){
    
  # define short versions of each feature
    outcome_s = case_when(
      outcome == "stunting" ~ "stunt",
      outcome == "wasting" ~ "wast",
      outcome == "LAZ" ~ "laz",
      outcome == "laz" ~ "laz",
      outcome == "WHZ" ~ "wlz",
      outcome == "whz" ~ "wlz",
      outcome == "wlz" ~ "wlz",
      outcome == "stunting and laz" ~ "stunt_laz"
      
    )
    
    cutoff_s = cutoff
        
    measure_s = case_when(
      measure == "prevalence" ~ "prev",
      measure == "incidence" ~ "inc",
      measure == "cumulative incidence" ~ "cuminc",
      measure == "incidence rate" ~ "ir",
      measure == "mean" ~ "mean",
      measure == "growth velocity" ~ "vel",
      measure == "LAZ velocity" ~ "laz_vel",
      measure == "laz velocity" ~ "laz_vel",
      measure == "length velocity" ~ "length_vel",
      measure == "heatmap" ~ "heatmap",
      measure == "distribution after laz >= -2" ~ "rec_dist",
      measure == "mean after LAZ rose above -2" ~ "rec_laz",
      measure == "prevalence after LAZ rose above -2" ~ "rec_prev",
      measure == "quantile" ~ "quant",
      measure == "map" ~ "map",
      measure == "change in stunting status" ~ "flow"
    )
        
    population_s = case_when(
      population == "overall" ~ "overall",
      population == "overall and region-stratified" ~ "overall_region",
      population == "region-stratified" ~ "region",
      population == "cohort-stratified" ~ "cohort"
    )
        
    location_s = case_when(
      location == "" ~ "",
      location == "South Asia" ~ "asia",
      location == "Europe" ~ "eur",
      location == "Latin America" ~ "latamer",
      location == "Africa" ~ "africa"
      
    )
        
    age_s = case_when(
      age == "All ages" ~ "allage"
    )
        
    analysis_s = case_when(
      analysis == "primary" ~ "primary",
      analysis == "monthly cohorts measured each month from 0 to 24" ~ "month24",
      analysis == "monthly cohorts" ~ "monthly",
      analysis == "exclude excluding COHORTS Guatemala and Content" ~ "exc_male_eff"
    )
    
    # create figure name string using short versions of each feature
    name = paste(outcome_s ,cutoff_s, measure_s, population_s, 
                    location_s, age_s, analysis_s, sep = "-")
    
    assert_that(length(grep("NA", name))==0,
                msg = "check name inputs, NA returned for at least one")
    
    return(name)

}


