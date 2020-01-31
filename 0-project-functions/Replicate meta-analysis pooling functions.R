


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

d <- readRDS(paste0(ghapdata_dir, "stunting_data.rds"))




# 1 Wrapper function for mean LAZ

d <- d %>% filter(agedays < 24*30.4167+15.20835) %>% filter (haz > -6 & haz < 6)

d <-d %>% mutate(agecat =NA)  %>% mutate(agecat = case_when (agedays >= 1 & agedays < 1*15.20835  ~ 0,
                                                                 agedays >= 3*30.4167-15.20835 & agedays < 3*30.4167+15.20835  ~ 3,
                                                                 agedays >= 6*30.4167-15.20835 & agedays < 6*30.4167+15.20835  ~ 6,
                                                                 agedays >= 9*30.4167-15.20835 & agedays < 9*30.4167+15.20835  ~ 9,
                                                                 agedays >= 12*30.4167-15.20835 & agedays < 12*30.4167+15.20835  ~ 12,
                                                                 agedays >= 15*30.4167-15.20835 & agedays < 15*30.4167+15.20835  ~ 15,
                                                                 agedays >= 18*30.4167-15.20835 & agedays < 18*30.4167+15.20835  ~ 18,
                                                                 agedays >= 21*30.4167-15.20835 & agedays < 21*30.4167+15.20835  ~ 21,
                                                                 agedays >= 24*30.4167-15.20835 & agedays < 24*30.4167+15.20835  ~ 24
))

 # dt <- d
 # d <- dt
d<- d %>% filter(!is.na(agecat))

# 1.1 overall mean laz stratified by agecat

mean_fun_rma <- function(dat){
    
     res <- matrix(NA,nrow=9,ncol=5) 
     
     for (i in c(0:8)) {
      
      subdata= dat[dat$agecat==3*i,]
      fit <- rma(yi=mean, vi=var, data=subdata, measure="MN", method="REML")
      est = fit$beta
      se = fit$se
      lb = fit$ci.lb
      ub = fit$ci.ub
      agecat= paste0(3*i," ","months")
      
      res[i+1,] <- cbind(agecat,est,se,lb,ub)
      
     }
     res <- as.data.frame(res)
     colnames(res) <- c("agecat","est","se","ci.lb","ci.ub")
     return(res)
  }

dm <- d %>%
  filter(!is.na(agecat)) %>%
  group_by(region,studyid,country,subjid,agecat) %>%
  summarise(haz=mean(haz)) %>%
  mutate(stunted=ifelse(haz< -2, 1,0))

ds <-dm %>% group_by(region,studyid,country,agecat) %>% summarise(N=length(haz),
                                                                 mean=mean(haz),
                                                                 var=var(haz)) %>% filter(N>=50) 

overall.res <- mean_fun_rma(ds)

#check how many children have multiple records in the same agecat
# nrecord <- d %>% group_by(region,studyid,subjid,country,agecat) %>% summarise(n=length(haz))
# mrecord <- nrecord %>% filter(n>1)
# mrecord %>% group_by(agecat) %>% summarise(n=length(agecat))
# 
# sum(as.numeric(mrecord$n==2))
# sum(as.numeric(mrecord$n==3))
# sum(as.numeric(mrecord$n==4))
# sum(as.numeric(mrecord$n==5))
# sum(as.numeric(mrecord$n==6))
# 
# 
# nrow(d)- nrow(dm) ==sum(mrecord$n)-nrow(mrecord)

# 1.2 regional mean laz stratified by agecat



regional.res <- ds %>% group_by(region) %>% do(mean_fun_rma(.)) 



# 1.3 MRC Kenaba estimate (3 months)


dkeneba <-dm %>% filter(str_detect(studyid, "Keneba")) %>% group_by(agecat) %>% summarise_at(vars(haz), list(mean = mean, var= var))



# 1.4 overall laz stratified by agecat & sex


dm_sex <- d %>%
  filter(!is.na(agecat)) %>%
  group_by(region,studyid,country,subjid,agecat,sex) %>%
  summarise(haz=mean(haz)) %>%
  mutate(stunted=ifelse(haz< -2, 1,0))


ds_sex <-dm_sex %>% group_by(region,studyid,country,agecat,sex) %>% summarise(N=length(haz),
                                                                 mean=mean(haz),
                                                                 var=var(haz)) %>% filter(N>=50) 

overall.res_laz_sex <- ds_sex %>% group_by(sex) %>% do(mean_fun_rma(.)) 




# 1.5 regional mean laz stratified by agecat & sex
regional.res_laz_sex <- ds_sex %>% group_by(region,sex) %>% do(mean_fun_rma(.)) 




dkeneba_laz_sex <-dm_sex %>% filter(str_detect(studyid, "Keneba")) %>% group_by(agecat,sex) %>% summarise(N=length(haz),
                                                                                                     mean=mean(haz),
                                                                                                     var=var(haz))



# 2 Wrapper function for stunting prevalence



calc_prev <- function(d) {
  
  prev <- nrow(d[d$haz < -2,]) / nrow(d)
  ncases <- sum(as.numeric(d$haz < -2))
  N <- nrow(d)
  res <- as.data.frame(cbind(prev,ncases,N))
  return(res)
}

dp <-dm %>% group_by(region,studyid,country,agecat) %>% do(calc_prev(.)) %>% filter(N>=50) 


prev_fun_rma <- function(dat){
  
  res <- matrix(NA,nrow=9,ncol=5) 
  
  for (i in c(0:8)) {
    
    subdata= dat[dat$agecat==3*i,]
    fit <- rma(xi=ncases, ni=N, data=subdata, measure="PLO",method="REML")
    est = fit$beta
    se = fit$se
    lb = fit$ci.lb
    ub = fit$ci.ub
    agecat= paste0(3*i," ","months")
    
    res[i+1,] <- cbind(agecat,est,se,lb,ub)
    
  }
  res <- as.data.frame(res)
  colnames(res) <- c("agecat","prev_est","se","ci.lb","ci.ub")
  return(res)
}



overall.res_prev <- prev_fun_rma(dp) 


regional.res_prev <- dp %>% group_by(region) %>% do(prev_fun_rma(.)) 



dkeneba_prev <-dm %>% filter(str_detect(studyid, "Keneba")) %>% group_by(agecat) %>% do(calc_prev(.))






# 3 Wrapper function for stunting cumulative incidence

dtemp <- dm[1:235,]



cid <- d %>% mutate(agecat = case_when(agedays < 3*30.4167 ~ 0,
                                       agedays > 3*30.4167 & agedays < 6*30.4167 ~ 3,
                                       agedays > 6*30.4167 & agedays < 9*30.4167 ~ 6,
                                       agedays > 9*30.4167 & agedays < 12*30.4167 ~ 9,
                                       agedays > 12*30.4167 & agedays < 15*30.4167 ~ 12,
                                       agedays > 15*30.4167 & agedays < 18*30.4167 ~ 15,
                                       agedays > 18*30.4167 & agedays < 21*30.4167 ~ 18,
                                       agedays > 21*30.4167 & agedays < 24*30.4167 ~ 21))

#note, the 0,3,6,9... above are actually 0-3 months, 3-9 months,9-12 months. Coded in this way to make sure the order is right. 
#the acutal age categories will be reflected in the results.

evs <- cid %>% filter(!is.na(agecat)) %>% group_by(region,studyid,subjid,country,agecat) %>% summarise(minhaz= min(haz)) 



evs_indfun <- function(dat){
  evs_ind <- rep(NA,nrow(dat))
  if (nrow(dat) == 1){
    evs_ind[1]=ifelse(dat$minhaz[1] < -2 ,1,0)
  }
  else{
    evs_ind[1]=ifelse(dat$minhaz[1] < -2 ,1,0)
    
    for (i in 2:nrow(dat)){
      evs_indc=ifelse(dat$minhaz[i] < -2 | sum(evs_ind[1:(i-1)])!=0 ,1,0)
      evs_ind[i]=evs_indc
    }
  }
  return(cbind(dat,evs_ind))
}


evs <- evs %>% group_by(region,studyid,subjid,country) %>% do(evs_indfun(.))



cuminc.data <- evs %>% group_by(region,studyid,country,agecat) %>% 
  summarise(
    nchild=length(unique(subjid)),
    nstudy=length(unique(studyid)),
    ncases=sum(evs_ind),
    N=length(evs_ind)) %>%
  filter(N>=50)




ci_fun_rma <- function(dat){
  
  res <- matrix(NA,nrow=8,ncol=5) 
  
  for (i in c(0:7)) {
    
    subdata= dat[dat$agecat==3*i,]
    fit <- rma(xi=ncases, ni=N, data=subdata, measure="PLO",method="REML")
    est = fit$beta
    se = fit$se
    lb = fit$ci.lb
    ub = fit$ci.ub
    agecat= paste0(3*i,"-",paste0(3*i+3)," ","months")
    
    res[i+1,] <- cbind(agecat,est,se,lb,ub)
    
  }
  res <- as.data.frame(res)
  colnames(res) <- c("agecat","cumuinci_est","se","ci.lb","ci.ub")
  return(res)
}

overall.res_ci <- ci_fun_rma(cuminc.data) 
#check plogis(as.numeric(levels(overall.res_ci$cumuinci_est))[overall.res_ci$cumuinci_est])

regional.res_ci <- cuminc.data %>% group_by(region) %>% do(ci_fun_rma(.)) 

dkeneba_ci <- evs %>% filter(str_detect(studyid, "Keneba")) %>% group_by(agecat) %>% summarise(cumuinci=mean(evs_ind))



# 4 Wrapper function for stunting incidence proportion.



nows <- cid %>% filter(!is.na(agecat)) %>% group_by(region,studyid,subjid,country,agecat) %>% summarise(minhaz= min(haz)) 


now_indfun <- function(dat){
  now_ind <- rep(NA,nrow(dat))
  if (nrow(dat) == 1){
    now_ind[1]=ifelse(dat$minhaz[1] < -2 ,1,0)
  }
  else{
    now_ind[1]=ifelse(dat$minhaz[1] < -2 ,1,0)
    
    for (i in 2:nrow(dat)){
      now_indc=ifelse(dat$minhaz[i] < -2 & sum(now_ind[1:(i-1)])==0 ,1,0)
      now_ind[i]=now_indc
    }
  }
  return(cbind(dat,now_ind))
}

# temp <- nows[1:96,]

nows <- nows %>% group_by(region,studyid,subjid,country) %>% do(now_indfun(.))
nows <- nows %>% group_by(region,studyid,subjid,country) %>% do(evs_indfun(.))

inciprop.data <- nows %>% group_by(region,studyid,country,agecat) %>% 
  summarise(
    nchild=length(unique(subjid)),
    nstudy=length(unique(studyid)),
    ncases=sum(now_ind),
    N=length(subjid)-sum(evs_ind)+sum(now_ind)) %>%
  filter(N>=50)



incp_fun_rma <- function(dat){
  
  res <- matrix(NA,nrow=8,ncol=5) 
  
  for (i in c(0:7)) {
    
    subdata= dat[dat$agecat==3*i,]
    fit <- rma(xi=ncases, ni=N, data=subdata, measure="PLO",method="REML")
    est = fit$beta
    se = fit$se
    lb = fit$ci.lb
    ub = fit$ci.ub
    agecat= paste0(3*i,"-",paste0(3*i+3)," ","months")
    
    res[i+1,] <- cbind(agecat,est,se,lb,ub)
    
  }
  res <- as.data.frame(res)
  colnames(res) <- c("agecat","inciprop_est","se","ci.lb","ci.ub")
  return(res)
}


overall.res_inciprop <- incp_fun_rma(inciprop.data) 

#check 0-3 cumuilative incidence should equal 0-3 incidence proportion
#plogis(as.numeric(levels(overall.res_inciprop$inciprop_est))[overall.res_inciprop$inciprop_est])
#plogis(as.numeric(levels(overall.res_ci$cumuinci_est))[overall.res_ci$cumuinci_est])

regional.res_inciprop <- inciprop.data %>% group_by(region) %>% do(incp_fun_rma(.)) 

#check 0-3 regional cumuilative incidence should equal 0-3 regional incidence proportion
#plogis(as.numeric(regional.res_inciprop$inciprop_est))[1]
#plogis(as.numeric(regional.res_ci$cumuinci_est))[1]


dkeneba_inciprop <- nows %>% filter(str_detect(studyid, "Keneba")) %>% group_by(agecat) %>% 
  summarise(inciprop=sum(now_ind)/(length(subjid)-sum(evs_ind)+sum(now_ind)))


















# 
# 
# filename <- paste(paste('dtestres',Sys.Date( ),sep='_'),'rdata',sep='.')
# 
# save(dtestres, file=here::here(filename))
# 
