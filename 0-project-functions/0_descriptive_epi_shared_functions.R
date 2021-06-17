

##############################################
# cohort.summary
##############################################

# Documentation: cohort.summary
# Usage: cohort.summary(d, var, strata=c("region","studyid","country","agecat"), ci=F, continious=F, severe=F, minN=50, measure=NULL)
# Description: Take an input dataframe and summarize the N's and cases for each strata of each cohort
#   -Prepares data for meta-analysis pooling with fit_rma() function


# Args/Options:
# data: a data frame with variables studyid, country, agecat, and outcome measure of Z-score or indicator for wasting or stunting
# var: name of the variable that is used as or to calculate the outcome
# strata: list of variables used to define strata to summarize, normally c("region","studyid","country","agecat") to get age-specific summaries by cohort 
# ci: True if calculating summary over a range (cumulative incidence, incidence rate), false if calculating a point summary (prevalence, mean Z)
# continious: True is summarizing continious outcome, false otherwise
# severe: True to use -3, instead of -2 default, as the cutoff to define disease from a Z-score.
# minN: Number of children needed to keep a strata to use in the pooled estimation, defaults to 50
# measure: Optional character label to add to the output dataframe as a column of characters

cohort.summary <- function(d, var, strata=c("region","studyid","country","agecat"), ci=F, continious=F, severe=F, minN=50, measure=NULL){
  
  cutoff <- ifelse(severe, -3, -2)
  
  colnames(d)[colnames(d)==var] <- "Y"
  
  strata_sym <- syms(strata)
  
  if(!ci | continious){
    d <- d %>%
      filter(!is.na(agecat)) %>%
      group_by(!!!(strata_sym),subjid) %>%
      summarise(Y=mean(Y, na.rm=T))
  }else{
    #Check if Y is binary
    if(sum(!(d$Y %in% c(0,1)))>0){
      d <- d %>%
        filter(!is.na(agecat)) %>%
        group_by(!!!(strata_sym),subjid) %>%
        mutate(Y = ifelse(Y < cutoff, 1, 0)) %>%
        summarise(Y = ifelse(sum(Y)>0, 1, 0))
    }else{
      d <- d %>%
        filter(!is.na(agecat)) %>%
        group_by(!!!(strata_sym),subjid) %>%
        summarise(Y = ifelse(sum(Y)>0, 1, 0))
    }
  }
  
  # summarize measurements per study by age
  # exclude time points if number of measurements per age
  # in a study is < threshold
  if(continious){
    cohort.sum = d %>%
      filter(!is.na(agecat) & !is.na(Y)) %>%
      group_by(!!!(strata_sym)) %>%
      summarise(N=n(),
                Mean=mean(Y),
                Var=var(Y)) %>%
      filter(N>=minN)
  }else{
    if(ci){
      cohort.sum = d %>%
        group_by(!!!(strata_sym)) %>%
        summarise(N=n(),
                  Prop=mean(Y),
                  Ncases=sum(Y==1)) %>%
        filter(N>=minN) 
    }else{
      cohort.sum = d %>%
        filter(!is.na(agecat) & !is.na(Y)) %>%
        mutate(Y = ifelse(Y < cutoff, 1, 0)) %>%
        group_by(!!!(strata_sym)) %>%        
        summarise(N=n(),
                  Prop=mean(Y),
                  Ncases=sum(Y==1)) %>%
        filter(N>=minN) 
    }
  }
  
  cohort.sum$variable <- var
  
  #Add measure label
  if(!is.null(measure)){cohort.sum$measure <- measure}
  
  #Drop missing agecat levels
  cohort.sum <- droplevels(cohort.sum)
  return(cohort.sum)
}


##############################################
# pool_over_agecat
##############################################

# Documentation: pool_over_agecat
# Usage: pool_over_agecat(cohort.sum, strata=c("region","studyid","country","agecat"), proportion=F, continious=F, measure = "PLO",  method = "REML")
# Description: Primarily used as a function within summarize_over_strata() as a wrapper function to fit.rma(). Take an input dataframe with each row summarizing the N's and cases from a single
#             cohort and then calculated the parameter of interest specified by measure, pooled
#             across specific agecats over all cohorts. Generalized to use any strata, not just agecat. 


# Args/Options:
# cohort.sum: a data frame outputted from cohort.summary, with each row summarizing a child age within a cohort.
# strata: list of variables used to define strata to summarize, normally c("region","studyid","country","agecat") to get age-specific summaries by cohort 
# proportion: if outcome is proportion, set to true to multiply point estimate and ci by 100 to bound between 0-100%
# continious: True is summarizing continious outcome, false otherwise
# measure: type of outcome parameter using naming conventions from the escalc function from the metafor package. Defaults to "PLO" for logit transformed proportion,
#         other possible options GEN for general (used for means), or IR for incidence rate.
# method: pooling method, defaults to REML for random effects fit with restricted maximum likelihood


pool_over_agecat <- function(cohort.sum, strata=c("region","studyid","country","agecat"), proportion=F, continious=F, measure = "PLO",  method = "REML"){
  
  #set up strata
  strata_sym <- syms(strata)
  
  if(continious){
    overall.res=cohort.sum %>% group_by(!!!(strata_sym)) %>%
      do(fit.rma(data=., ni="N", yi="Mean", vi="Var", nlab="children",age=NULL, method = method, measure=measure)) %>%
      as.data.frame()
  }else{
    overall.res=cohort.sum %>% group_by(!!!(strata_sym)) %>%
      do(fit.rma(data=., ni="N", xi="Ncases", nlab="children",age=NULL, method = method, measure=measure)) %>%
      as.data.frame()
  }
  
  #format results
  if(proportion){
    overall.res = overall.res %>% mutate(est=est*100,lb=lb*100,ub=ub*100) 
  }
  overall.res$ptest.f = sprintf("%0.0f",overall.res$est)
  
  return(overall.res)
}

##############################################
# summarize_over_strata
##############################################

# Documentation: summarize_over_strata
# Usage: summarize_over_strata(cohort.sum, strata=c("region","studyid","country","agecat"), proportion=F, continious=F, measure = "PLO",  method = "REML",  region=T, cohort=T)
# Description: Primarily used as a function within summarize_over_strata() as a wrapper function to fit.rma(). Take an input dataframe with each row summarizing the N's and cases from a single
#             cohort and then calculated the parameter of interest specified by measure, pooled
#             across specific agecats over all cohorts. Generalized to use any strata, not just agecat. 


# Args/Options:
# cohort.sum: a data frame outputted from cohort.summary, with each row summarizing a child age within a cohort.
# strata: list of variables used to define strata to summarize, normally c("region","studyid","country","agecat") to get age-specific summaries by cohort 
# proportion: if outcome is proportion, set to true to multiply point estimate and ci by 100 to bound between 0-100%
# continious: True is summarizing continious outcome, false otherwise
# measure: type of outcome parameter using naming conventions from the escalc function from the metafor package. Defaults to "PLO" for logit transformed proportion,
#         other possible options GEN for general (used for means), or IR for incidence rate.
# method: pooling method, defaults to REML for random effects fit with restricted maximum likelihood
# region: If true, pool by region as well as overall, and add to returned results data.frame
# cohort: If true, calculate cohort-specific parameters, and add to returned results data.frame



summarize_over_strata <- function(cohort.sum, strata=c("region","studyid","country","agecat"), proportion=F, continious=F, measure = "PLO",  method = "REML",  region=T, cohort=T){
  
  region.res <- NULL
  cohort.res <- NULL
  
  #set up strata
  strata_sym <- syms(strata)
  
  #Overall summary
  overall.res <- pool_over_agecat(cohort.sum, proportion=proportion, strata=strata[!(strata %in% c("region","studyid","country"))], continious=continious, measure = measure,  method = method)
  overall.res$region <- "Overall"
  
  # region specific results
  if(region){
    region.res  <- pool_over_agecat(cohort.sum, proportion=proportion, strata=strata[!(strata %in% c("studyid","country"))], continious=continious, measure = measure,  method = method)
  }
  
  # cohort specific results
  if(cohort){
    if(continious){
      cohort.res=cohort.sum %>% 
        do(fit.escalc(data=., ni="N", yi="Mean", vi="Var",age=NULL, method = method, measure = measure)) %>%
        as.data.frame()
    }else{
      cohort.res=cohort.sum %>% 
        do(fit.escalc(data=., ni="N", xi="Ncases",age=NULL, method = method, measure = measure)) %>%
        as.data.frame()
    }
    cohort.res=cohort.format(cohort.res,y=cohort.res$yi,
                             lab=  levels(cohort.sum$agecat))
  }
  
  res <- bind_rows(overall.res, region.res, cohort.res)
  
  return(res)
}






##############################################
# fit.rma
##############################################

# Documentation: fit.rma
# Usage: fit.rma(data,age,ni,xi,measure,nlab, method = "REML")
# Description: Take an input dataframe with each row summarizing the N's and cases from a single
#             cohort and then calculated the parameter of interest specified by measure, pooled
#             across all cohorts
# age (optional): variable level to filter the data by, selecting a specific age category


# Args/Options:
# data: a data frame with variables studyid, country, agecat, and outcome-specific summary measures for ni and xi
# ni: name of the variable that is the total count of observations
# xi:  name of the variable
# measure: fed into rma() function; character string indicating the type of data supplied to the function. "PLO" by default for logit transformed proportion
# nlab: optional label of the count of observations i.e. "children" to be appended to the formatted counts/
# method: fed into rma() function; haracter string specifying whether a fixed- ("FE") or a random/mixed-effects model ("REML") should be fitted.

# random effects function, save results nicely

fit.rma <- function(data, ni, xi = NULL, yi = NULL, vi = NULL, measure = "PLO", nlab = "", method = "REML", age=NULL) {
  if(!is.null(age)){
    data <- data[data$agecat==age,]
    data$age <- age
  }
  
  mode_continuous <- !is.null(yi) | !is.null(vi)
  mode_binary <- !is.null(xi)
  if (mode_binary & mode_continuous) stop("can only do binary or continuous")
  # check if measure=="PLO" - default for all parameters bounded between 0 and 1 (prevalence, cumulative incidence)
  # because then output needs back transformation
  if (measure == "PLO" & mode_binary) {
    # If only one row of the data, no need for pooling (single study, often seens when looping over agecats),
    # so just use the escalc() function that underlies RMA to calculate the parameter for the single study
    if (nrow(data) == 1) {
      fit <- NULL
      try(fit <- escalc(data = data, ni = data[[ni]], xi = data[[xi]], method = method, measure = measure, append = T))
      data <- fit
      data$se <- sqrt(data$vi)
      out <- data %>%
        ungroup() %>%
        mutate(nstudies = 1, nmeas = data[[ni]]) %>%
        mutate(
          est = plogis(yi),
          lb = plogis(yi - 1.96 * se),
          ub = plogis(yi + 1.96 * se),
          nmeas.f = paste0("N=", format(sum(data[[ni]]), big.mark = ",", scientific = FALSE), " ", nlab),
          nstudy.f = paste0("N=", nstudies, " studies"),
          method.used=method,
          ptest.f = sprintf("%0.0f", est)
        ) %>%
        subset(., select =c(nstudies, nmeas, est, se, lb, ub, nmeas.f, nstudy.f, method.used, agecat, ptest.f)) %>%
        as.tibble()
      rownames(out) <- NULL
      # If input is more than 1 row (multiple studies), pool across studies with rma() function from metafor package
    } else {
      # Check if 0 cases of the outcome
      # Use FE model if all 0 counts because no heterogeneity and rma.glmm fails
      if(!is.null(xi)){
        if (sum(data[[xi]]) == 0) method <- "FE"
      }
      fit <- NULL
      method_fit <- method
        try(fit <- rma(
          data = data,
          ni = data[[ni]],
          method = method,
          xi = data[[xi]],
          measure = measure
        ))
     if(is.null(fit)){try(fit <- rma(
        data = data,
        ni = data[[ni]],
        method = "ML",
        xi = data[[xi]],
        measure = measure
     ))
       method_fit <- "ML"
       }
     if(is.null(fit)){try(fit <- rma(
        data = data,
        ni = data[[ni]],
        method = "DL",
        xi = data[[xi]],
        measure = measure
      ))
        method_fit <- "DL"
      }
      # Create formatted dataset to return
      out <- data %>%
        ungroup() %>%
        summarise(
          nstudies = length(unique(paste0(studyid," ",country))),
          nmeas = sum(data[[ni]])
        ) %>%
        mutate(
          est = plogis(fit$beta),
          se = fit$se,
          lb = plogis(fit$beta - 1.96 * fit$se),
          ub = plogis(fit$beta + 1.96 * fit$se),
          nmeas.f = paste0("N=", format(sum(data[[ni]]), big.mark = ",", scientific = FALSE), " ", nlab),
          nstudy.f = paste0("N=", nstudies, " studies"),
          method.used=method_fit
        ) %>%
        as.tibble()
      rownames(out) <- NULL
    }
  } else {
    
    if(measure == "IR"){
        # If measure if IR for incidence rate, use `to="if0all"` argument to add .5 to all cells of the 2x2 table if one is 0 so rma() works
        to <- "if0all"
        fit <- NULL
        method_fit <- method
        try(fit <- rma(
          data = data,
          ti = data[[ni]],
          method = method,
          xi = data[[xi]],
          measure = measure,
          to=to
        ))
        if(is.null(fit)){try(fit <- rma(
          data = data,
          ti = data[[ni]],
          method = "ML",
          xi = data[[xi]],
          measure = measure
        ))
          method_fit <- "ML"
        }
        if(is.null(fit)){try(fit <- rma(
          data = data,
          ti = data[[ni]],
          method = "DL",
          xi = data[[xi]],
          measure = measure
        ))
          method_fit <- "DL"
        }
      
    }else{
      
    
    # If measure other than PLO or IR is chosen:
    to <- "only0"

    fit <- NULL
    method_fit <- method
    
    if (mode_binary) {
      try(fit <- rma(
        data = data,
        ni = data[[ni]],
        method = method,
        xi = data[[xi]],
        measure = measure,
        to=to
      ))
      if(is.null(fit)){try(fit <- rma(
        data = data,
        ni = data[[ni]],
        method = "ML",
        xi = data[[xi]],
        measure = measure
      ))
        method_fit <- "ML"
      }
      if(is.null(fit)){try(fit <- rma(
        data = data,
        ni = data[[ni]],
        method = "DL",
        xi = data[[xi]],
        measure = measure
      ))
        method_fit <- "DL"
      }
    }
    if (mode_continuous) {
      try(fit <- rma(
        data = data,
        mi = data[[yi]],
        sdi = sqrt(data[[vi]]),
        ni = data[[ni]],
        method = method,
        measure = "MN"
      ))
      if(is.null(fit)){try(fit <- rma(
        data = data,
        mi = data[[yi]],
        sdi = sqrt(data[[vi]]),
        ni = data[[ni]],
        method = "ML",
        measure = "MN"))
        method_fit <- "ML"
      }
      if(is.null(fit)){try(fit <- rma(
        data = data,
        mi = data[[yi]],
        sdi = sqrt(data[[vi]]),
        ni = data[[ni]],
        method = "DL",
        measure = "MN"))
        method_fit <- "DL"
      }
    }
    }
    out <- data %>%
      ungroup() %>%
      summarise(
        nstudies = length(unique(studyid)),
        nmeas = sum(data[[ni]])
      ) %>%
      mutate(
        est = fit$beta,
        se = fit$se,
        lb = fit$ci.lb,
        ub = fit$ci.ub,
        nmeas.f = paste0(
          "N=", format(sum(data[[ni]]), big.mark = ",", scientific = FALSE),
          " ", nlab
        ),
        nstudy.f = paste0("N=", nstudies, " studies"),
        method.used=method_fit
      )
    
  }
  return(out)
}

# it automatically figures out if you input continous data or binary data.
# to recover the old continuous functionality
# fit.cont.rma = fit.rma(data, yi, vi, ni, nlab, method, measure = "GEN")

# fit.rma.rec.cohort is also combined into fit.rma
# fit.rma.rec.cohort = fit.rma(data, ni, xi, measure = "PLO", nlab, method = "REML")

# the original fit.rma
# fit.rma(data, xi, ni, nlab, method, measure = "GEN")

##############################################
# fit.escalc
##############################################


# calc individual cohort parameters, variances, standard errors, and 95% CI from the rma() arguements
# Input:
# meas: PR for prevalence, CI for cumulative incidence, and IR for incidence rate
# PLO for log transformed prevalence (to prevent 95% CI outside 0 and 1).
# age (optional): variable level to filter the data by, selecting a specific age category

# Returns:
# Inputted dataframe with appended columns
# yi = outcome of interest
# vi = variance of outcome
# se = standard error
# ci.lb = lower bound of 95% confidence interval
# ci.ub = upper bound of 95% confidence interval

fit.escalc <- function(data, ni, xi = NULL, yi = NULL, vi = NULL, measure, method = "REML", age=NULL) {
  if(!is.null(age)){data <- data[data$agecat==age,]}
  
  mode_continuous <- !is.null(yi) | !is.null(vi)
  mode_binary <- !is.null(xi)
  if (mode_binary & mode_continuous) stop("can only do binary or continuous")
  if(measure == "IR"){
    data <- escalc(data = data, ti = data[[ni]], xi = data[[xi]], method = method, measure = measure, append = TRUE)
  }
  if (mode_binary & measure!="IR") {
    data <- escalc(data = data, ni = data[[ni]], xi = data[[xi]], method = method, measure = measure, append = TRUE)
  }
  if (mode_continuous) {
    data <- data.frame(data, escalc(data = data, ni = data[[ni]], mi = data[[yi]], sdi = sqrt(data[[vi]]), method = method, measure = "MN"))
  }
  if (measure == "PLO") {
    data$se <- sqrt(data$vi)
    data$ci.lb <- plogis(data$yi - 1.96 * data$se)
    data$ci.ub <- plogis(data$yi + 1.96 * data$se)
    data$yi <- plogis(data$yi)
  } else {
    
    data$se <- sqrt(data$vi)
    data$ci.lb <- data$yi - 1.96 * data$se
    data$ci.ub <- data$yi + 1.96 * data$se
  }
  return(data)
}
# it automatically figures out if you input continous data or binary data.
# to recover the old continuous functionality
# fit.escalc.cont = fit.escalc(data, yi, vi, measure = "GEN", method = "REML")


##############################################
# run_rma
##############################################


# run fit.rma wrapper across a list of ages
# Input:
# data: 
# n_name:
# label:
# method:

# Returns:
# est:
# lb:
# ub:
# agecat:
# ptest.f:
# label:

run_rma <- function(data, n_name, x_name, label, method) {

  # create age list
  agelist <- as.list(levels(data$agecat))

  # apply fit.rma across age list
  res.list <- lapply(agelist, function(x)
    fit.rma(
      data = data, ni = n_name, xi = x_name, age = x, measure = "PLO", nlab = "children",
      method = method
    ))

  # unlist output
  res <- as.data.frame(do.call(rbind, res.list))

  # tidy up output
  res$est <- as.numeric(res$est)
  res$lb <- as.numeric(res$lb)
  res$ub <- as.numeric(res$ub)
  res <- res %>% mutate(est = est * 100, lb = lb * 100, ub = ub * 100)
  res$agecat <- factor(res$agecat, levels = levels(data$agecat))
  res$ptest.f <- sprintf("%0.0f", res$est)
  res$label <- label

  return(res)
}

##############################################
# run_rma_agem
##############################################


# run fit.rma wrapper across a list of ages for age in months
# Input:
# data: 
# n_name:
# label:
# method:

# Returns:
# est:
# lb:
# ub:
# agecat:
# ptest.f:
# label:

run_rma_agem <- function(data, n_name, x_name, label, method) {

  # create age list
  agelist <- as.list(levels(data$agem))

  # apply fit.rma across age list
  res.list <- lapply(agelist, function(x)
    fit.rma(
      data = data %>% filter(agem == x),
      ni = n_name, xi = x_name, measure = "PLO", nlab = "children",
      method = method
    ))

  # unlist output
  res <- as.data.frame(do.call(rbind, res.list))

  # tidy up output
  res[, 3] <- as.numeric(res[, 3])
  res[, 5] <- as.numeric(res[, 5])
  res[, 6] <- as.numeric(res[, 6])
  res <- res %>% mutate(est = est * 100, lb = lb * 100, ub = ub * 100)
  res$agem <- factor(levels(data$agem), levels = levels(data$agem))
  res$ptest.f <- sprintf("%0.0f", res$est)
  res$label <- label

  res <- res %>% dplyr::select(label, agem, nstudies, nmeas, everything())

  return(res)
}


##############################################
# run_rma_agem
##############################################

# runs a ttest across agecats
# Input
# data: 
# y:
# levels:
# ref:
# comp:

# Returns
# pval < 0.05:
# pval < 0.01:
# pval < 0.001:

ki.ttest <- function(data, y, levels, ref, comp) {
  pval <- NULL
  for (i in 1:length(comp)) {
    colnames(data)[colnames(data) == y] <- "y"
    colnames(data)[colnames(data) == levels] <- "levels"
    datasub <- data[data$levels %in% c(ref, comp[i]), ]
    pval <- rbind(pval, t.test(y ~ levels, data = datasub)$p.value)
  }
  pval <- data.frame(comp = comp, pval)
  colnames(pval)[2] <- "pval"
  pval$pvalcat <- ""
  pval$pvalcat[pval$pval < 0.05] <- "*"
  pval$pvalcat[pval$pval < 0.01] <- "**"
  pval$pvalcat[pval$pval < 0.001] <- "***"
  return(pval)
}

##############################################
# ki.glm
##############################################

# glm function across agecats
# Input
# data: 
# y:
# levels:
# ref:
# comp:

# Returns
# pval < 0.05:
# pval < 0.01:
# pval < 0.001:

ki.glm <- function(data, y, levels, ref, comp) {
  diffdf <- NULL
  for (i in 1:length(comp)) {
    colnames(data)[colnames(data) == y] <- "y"
    colnames(data)[colnames(data) == levels] <- "levels"
    datasub <- data[data$levels %in% c(ref, comp[i]), ]
    datasub$levels <- relevel(datasub$levels, ref = ref)

    res <- glm(y ~ levels, data = datasub)
    se <- summary(res)$coefficients[2, 2]
    resdf <- data.frame(diff = res$coefficients[2])
    resdf$lb <- resdf$dif - 1.96 * se
    resdf$ub <- resdf$dif + 1.96 * se
    resdf$pval <- summary(res)$coefficients[2, 4]
    rownames(resdf) <- NULL
    diffdf <- rbind(diffdf, resdf)
  }
  diffdf <- data.frame(comp = comp, diffdf)
  diffdf$pvalcat <- ""
  diffdf$pvalcat[diffdf$pval < 0.05] <- "*"
  diffdf$pvalcat[diffdf$pval < 0.01] <- "**"
  diffdf$pvalcat[diffdf$pval < 0.001] <- "***"
  return(diffdf)
}

##############################################
# gamCI
##############################################

# ?????????
# Input
# m:
# newdata:
# nreps: number of reps, default to 10000

# Returns
# uprP:
# lwrP:
# uprS:
# lwrS:

gamCI <- function(m, newdata, nreps = 10000) {
  require(mgcv)
  require(dplyr)
  Vb <- vcov(m, unconditional = TRUE)
  pred <- predict(m, newdata, se.fit = TRUE)
  fit <- pred$fit
  se.fit <- pred$se.fit
  BUdiff <- MASS::mvrnorm(n = nreps, mu = rep(0, nrow(Vb)), Sigma = Vb)
  Cg <- predict(m, newdata, type = "lpmatrix")
  simDev <- Cg %*% t(BUdiff)
  absDev <- abs(sweep(simDev, 1, se.fit, FUN = "/"))
  masd <- apply(absDev, 2L, max)
  crit <- quantile(masd, prob = 0.95, type = 8)
  pred <- data.frame(newdata, fit = pred$fit, se.fit = pred$se.fit)
  pred <- mutate(pred,
    uprP = fit + (2 * se.fit),
    lwrP = fit - (2 * se.fit),
    uprS = fit + (crit * se.fit),
    lwrS = fit - (crit * se.fit)
  )
  return(pred)
}

##############################################
# mean_sd
##############################################

# calculate the mean and standard deviation of set of data
# Input
# x: data

# Returns
# string of mean of sd separated by a newline

mean_sd <- function(x) {
  cat(
    "\n", round(mean(x, na.rm = T), 3),
    "  ", round(sd(x, na.rm = T), 3), "\n"
  )
}

##############################################
# mean_sd
##############################################

# calculate ??
# Input
# x: data

# Returns
# ???

N_perc <- function(x) {
  print(table(x))
  cat("\n")
  for (i in unique(x)) {
    cat(i, ":     ")
    y <- ifelse(x == i, 1, 0)
    cat(sum(y, na.rm = T),
      " (", round(mean(y * 100, na.rm = T), 3), ")\n",
      sep = ""
    )
  }
}




calc.prev.agecat <- function(d) {
  d <- d %>%
    arrange(studyid, subjid, agedays) %>%
    mutate(agecat = ifelse(agedays <= 7, "Birth",
      ifelse(agedays > 2 * 30.4167 & agedays < 4 * 30.4167, "3 months",
        ifelse(agedays > 5 * 30.4167 & agedays < 7 * 30.4167, "6 months",
          ifelse(agedays > 8 * 30.4167 & agedays < 10 * 30.4167, "9 months",
            ifelse(agedays > 11 * 30.4167 & agedays < 13 * 30.4167, "12 months",
              ifelse(agedays > 14 * 30.4167 & agedays < 16 * 30.4167, "15 months",
                ifelse(agedays > 17 * 30.4167 & agedays < 19 * 30.4167, "18 months",
                  ifelse(agedays > 20 * 30.4167 & agedays < 22 * 30.4167, "21 months",
                    ifelse(agedays > 23 * 30.4167 & agedays < 25 * 30.4167, "24 months", "")
                  )
                )
              )
            )
          )
        )
      )
    )) %>%
    mutate(agecat = factor(agecat, levels = c(
      "Birth", "3 months", "6 months", "9 months",
      "12 months", "15 months", "18 months", "21 months", "24 months"
    )))
}


calc.monthly.agecat <- function(d) {
  d$agecat <- cut(d$agedays,
    breaks = c(0:25) * 30.4167 - 30.4167 / 2, include.lowest = F,
    labels = paste0(0:24, " months")
  )
  levels(d$agecat)[1] <- "Two weeks"
  levels(d$agecat)[2] <- "One month"
  table(d$agecat)
  return(d)
}

calc.ci.agecat <- function(d, range = 3, birth = "yes") {
  # ----------------------------------------------
  # first age interval includes birth
  # ----------------------------------------------
  if (range == 3 & birth == "yes") {
    d <- d %>%
      mutate(agecat = ifelse(agedays <= 3 * 30.4167, "0-3 months",
        ifelse(agedays > 3 * 30.4167 & agedays <= 6 * 30.4167, "3-6 months",
          ifelse(agedays > 6 * 30.4167 & agedays <= 9 * 30.4167, "6-9 months",
            ifelse(agedays > 9 * 30.4167 & agedays <= 12 * 30.4167, "9-12 months",
              ifelse(agedays > 12 * 30.4167 & agedays <= 15 * 30.4167, "12-15 months",
                ifelse(agedays > 15 * 30.4167 & agedays <= 18 * 30.4167, "15-18 months",
                  ifelse(agedays > 18 * 30.4167 & agedays <= 21 * 30.4167, "18-21 months",
                    ifelse(agedays > 21 * 30.4167 & agedays <= 24 * 30.4167, "21-24 months", "")
                  )
                )
              )
            )
          )
        )
      )) %>%
      mutate(agecat = factor(agecat, levels = c("0-3 months", "3-6 months", "6-9 months", "9-12 months", "12-15 months", "15-18 months", "18-21 months", "21-24 months")))
  }
  if (range == 6 & birth == "yes") {
    d <- d %>%
      mutate(agecat = ifelse(agedays <= 6 * 30.4167, "0-6 months",
        ifelse(agedays > 6 * 30.4167 & agedays <= 12 * 30.4167, "6-12 months",
          ifelse(agedays > 12 * 30.4167 & agedays <= 18 * 30.4167, "12-18 months",
            ifelse(agedays > 18 * 30.4167 & agedays <= 24 * 30.4167, "18-24 months", "")
          )
        )
      )) %>%
      mutate(agecat = factor(agecat, levels = c("0-6 months", "6-12 months", "12-18 months", "18-24 months")))
  }

  # ----------------------------------------------
  # first age interval excludes birth
  # ----------------------------------------------
  if (range == 3 & birth == "no") {
    d <- d %>%
      mutate(agecat = ifelse(agedays <= 7, "Birth",
       ifelse(agedays > 8 & agedays <= 3 * 30.4167, "8 days-3 months",
        ifelse(agedays > 3 * 30.4167 & agedays <= 6 * 30.4167, "3-6 months",
          ifelse(agedays > 6 * 30.4167 & agedays <= 9 * 30.4167, "6-9 months",
            ifelse(agedays > 9 * 30.4167 & agedays <= 12 * 30.4167, "9-12 months",
              ifelse(agedays > 12 * 30.4167 & agedays <= 15 * 30.4167, "12-15 months",
                ifelse(agedays > 15 * 30.4167 & agedays <= 18 * 30.4167, "15-18 months",
                  ifelse(agedays > 18 * 30.4167 & agedays <= 21 * 30.4167, "18-21 months",
                    ifelse(agedays > 21 * 30.4167 & agedays <= 24 * 30.4167, "21-24 months", "")
                  )
                )
              )
            )
          )
        )
      ))) %>%
      mutate(agecat = factor(agecat, levels = c("Birth","8 days-3 months", "3-6 months", "6-9 months", "9-12 months", "12-15 months", "15-18 months", "18-21 months", "21-24 months")))
  }
  if (range == 6 & birth == "no") {
    d <- d %>%
      mutate(agecat = ifelse(agedays <= 7, "Birth",
       ifelse(agedays > 7 & agedays <= 6 * 30.4167, "8 days-6 months",
        ifelse(agedays > 6 * 30.4167 & agedays <= 12 * 30.4167, "6-12 months",
          ifelse(agedays > 12 * 30.4167 & agedays <= 18 * 30.41867, "12-18 months",
            ifelse(agedays > 18 * 30.4167 & agedays <= 24 * 30.4167, "18-24 months", "")
          )
        )
      ))) %>%
      mutate(agecat = factor(agecat, levels = c("Birth", "8 days-6 months", "6-12 months", "12-18 months", "18-24 months")))
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

# Returns:
# data frame formatted for plotting cohort specific results
cohort.format <- function(df, lab, y, est = "NA") {
  y <- as.numeric(y)

  # rescale percentages
  if (est == "percent") {
    df <- df %>% mutate(y = y * 100, ci.lb = ci.lb * 100, ci.ub = ci.ub * 100)
  }
  if (est == "rate") {
    df <- df %>% mutate(y = y * 1000, ci.lb = ci.lb * 1000, ci.ub = ci.ub * 1000)
  }

  # cohort name
  df <- df %>%
    mutate(cohort = paste0(studyid, "-", country)) %>%
    mutate(cohort = gsub("ki[^-]*-", "", cohort))

  # region variable
  df <- df %>% mutate(region = case_when(
    country == "BANGLADESH" | country == "INDIA" |
      country == "NEPAL" | country == "PAKISTAN" |
      country == "PHILIPPINES" ~ "South Asia",
    country == "KENYA" |
      country == "GHANA" |
      country == "BURKINA FASO" |
      country == "GUINEA-BISSAU" |
      country == "MALAWI" |
      country == "SOUTH AFRICA" |
      country == "TANZANIA, UNITED REPUBLIC OF" |
      country == "TANZANIA" |
      country == "ZIMBABWE" |
      country == "GAMBIA" ~ "Africa",
    country == "BELARUS" ~ "Europe",
    country == "BRAZIL" | country == "GUATEMALA" |
      country == "PERU" ~ "Latin America",
    TRUE ~ "Other"
  ))

  # create formatted age categories for plotting
  df <- df %>% mutate(agecat = droplevels(as.factor(agecat)))
  df <- df %>% mutate(age.f = factor(agecat,
    levels = levels(df$agecat),
    labels = lab
  ))

  return(df)
}



sem <- function(x) {
  sd(x) / sqrt(length(x))
}




#----------------------------------------------
# Mean and 95% CI function
#----------------------------------------------
mean95CI <- function(Y, id = rep(1:length(Y)), persontime = NULL, proportion = F, percent = F, count = F) {
  if (proportion == F) {
    if (count == T) {
      IR.CI <- pois.exact(Y, pt = persontime, conf.level = 0.95)[3:5]
      mean_ci <- data.frame(N = Y, Mean = IR.CI[1], SD = NA, Robust.SE = NA, Lower.95.CI = IR.CI[2], Upper.95.CI = IR.CI[3])
      colnames(mean_ci) <- c("N", "Mean", "SD", "Robust SE", "Lower 95%CI", "Upper 95%CI")
    } else {
      if (!is.na(mean(Y[complete.cases(Y)]))) {
        mudat <- data.frame(id = id, Y = Y)
        mudat <- mudat[complete.cases(mudat), ]
        n.sub <- dim(mudat)[1]
        fit <- glm(Y ~ 1, family = gaussian, data = mudat)
        vcovCL <- sandwichSE(mudat, fm = fit, cluster = mudat$id)
        rfit <- coeftest(fit, vcovCL)
        lb <- rfit[1, 1] - 1.96 * rfit[1, 2]
        ub <- rfit[1, 1] + 1.96 * rfit[1, 2]
        mean_ci <- matrix(c(n.sub, rfit[1, 1], sd(mudat$Y), rfit[
          1,
          2
        ], lb, ub), nrow = 1, ncol = 6)
        colnames(mean_ci) <- c(
          "N", "Mean", "SD", "Robust SE", "Lower 95%CI",
          "Upper 95%CI"
        )
      } else {
        mean_ci <- data.frame(N = NA, Mean = NA, SD = NA, `Robust SE` = NA, `Lower 95%CI` = NA, `Upper 95%CI` = NA)
        colnames(mean_ci) <- c("N", "Mean", "SD", "Robust SE", "Lower 95%CI", "Upper 95%CI")
      }
    }
  } else {
    require(binom)
    # Find the number of obs
    n <- length(Y[!is.na(Y)])
    if (percent == T) {
      CR.res <- binom.confint(sum(Y / 100, na.rm = T), n, method = "exact")
    } else {
      CR.res <- binom.confint(sum(Y, na.rm = T), n, method = "exact")
    }
    mean_ci <- data.frame(N = n, Mean = CR.res[4], SD = NA, `Robust SE` = NA, `Lower 95%CI` = CR.res[5], `Upper 95%CI` = CR.res[6])
    colnames(mean_ci) <- c("N", "Mean", "SD", "Robust SE", "Lower 95%CI", "Upper 95%CI")
  }
  return(mean_ci)
}


#----------------------------------------------
# standardized naming convention for figures
# and associated tables

# inputs are string descriptors of results features

# returns a string with a standardized naming convention
# To get a link to the csv version of a Google Sheet do the following commands:
#     - File > Publish to Web > Link > Comma Separated Values (csv) 
#----------------------------------------------

create_name = function(outcome, cutoff, measure, population, 
                       location, age, analysis){
  
  transformations = read.csv(filenames)
  
  # define short versions of each feature
  outcome_s = transformations %>% 
    filter(variable.type == "outcome") %>% 
    filter(description == outcome) %>% 
    dplyr::select(variable) %>%
    first()
  
  cutoff_s = cutoff
  
  measure_s = transformations %>% 
    filter(variable.type == "measure") %>% 
    filter(description == measure) %>% 
    dplyr::select(variable) %>%
    first()
  
  population_s = transformations %>% 
    filter(variable.type == "population") %>% 
    filter(description == population) %>% 
    dplyr::select(variable) %>%
    first()
  
  location_s = transformations %>% 
    filter(variable.type == "location") %>% 
    filter(description == location) %>% 
    dplyr::select(variable) %>%
    first()
  
  age_s = transformations %>% 
    filter(variable.type == "age") %>% 
    filter(description == age) %>%
    dplyr::select(variable) %>%
    first()
  
  analysis_s = transformations %>% 
    filter(variable.type == "analysis") %>% 
    filter(description == analysis) %>%
    dplyr::select(variable) %>%
    first()
  
  # create figure name string using short versions of each feature
  name = paste(outcome_s ,cutoff_s, measure_s, population_s, 
               location_s, age_s, analysis_s, sep = "-")
  
  assert_that(length(grep("NA", name))==0,
              msg = "check name inputs, NA returned for at least one")
  
  return(name)
  
}








# Update the who_value2zscore function from the growthstandards package to use length in the WLZ calculations
#(The standards are already part of the package, but a X_var/Y_var pari check did not include length+weight)
#See help(who_value2zscore) for function details.

who_value2zscore2 <- function(x, y, x_var = "agedays", y_var = "htcm", sex = "Female", 
                              data = NULL) 
{
  if (!is.null(data)) {
    x <- v_eval(substitute(x), try(x, silent = TRUE), data)
    y <- v_eval(substitute(y), try(y, silent = TRUE), data)
    x_var <- v_eval(substitute(x_var), try(x_var, silent = TRUE), 
                    data)
    y_var <- v_eval(substitute(y_var), try(y_var, silent = TRUE), 
                    data)
    sex <- v_eval(substitute(sex), try(sex, silent = TRUE), 
                  data)
  }
  dat <- data.frame(x = x, y = y, x_var = x_var, y_var = y_var, 
                    sex = sex, stringsAsFactors = FALSE)
  if (!all(unique(dat$sex) %in% c("Male", "Female"))) 
    stop("sex must be 'Male' or 'Female'")
  value2zscore_single_pars <- function(x, y, x_var, y_var, 
                                       sex) {
    pair <- paste(y_var, x_var, sep = "_")
    coefs <- growthstandards::who_coefs[[pair]][[sex]]$data
    oob <- which(x < min(coefs$x) | x > max(coefs$x))
    idx <- growthstandards:::get_coef_idx(x, coefs$x)
    coefs <- coefs[idx, , drop = FALSE]
    if (nrow(coefs) == 1) {
      coefs <- data.frame(y = y, coefs, row.names = NULL)
    }
    else {
      coefs <- data.frame(x = x, y = y, m = approx(coefs$x, 
                                                   coefs$m, x)$y, l = approx(coefs$x, coefs$l, x)$y, 
                          s = approx(coefs$x, coefs$s, x)$y)
    }
    res <- with(coefs, ((y/m)^l - 1)/(s * l))
    if (length(oob) > 0) {
      message("Observations with ", x_var, " value of ", 
              paste(x[oob], collapse = ", "), " are outside the range of the standard. Setting to NA.")
      res[oob] <- NA
    }
    res
  }
  dat <- dat %>% dplyr::group_by(x_var, y_var, sex) %>% dplyr::mutate(res = value2zscore_single_pars(x, 
                                                                                                     y, x_var[1], y_var[1], sex[1]))
  dat$res
}



