



#----------------------------------------------
# mark the start of wasted of not wasted episodes 
#----------------------------------------------

mark_episodes <- function(d){
  
  d$wasting_episode = ifelse(d$agedays==min(d$agedays) & d$wast==0, "Not Wasted", d$wasting_episode)
  d$wasting_episode = ifelse(d$agedays==min(d$agedays) & d$wast==1, "Wasted", d$wasting_episode)
  d$born_wast_inc= 0
  d$wasting_episode = na.locf(d$wasting_episode, fromLast=F)#Last observation carried forward
  
  return(d)
}

mark_sevepisodes <- function(d){
  
  d$born_sevwast_inc= ifelse(d$agedays==min(d$agedays) & d$sevwast==1,1,0)
  d$sevwasting_episode = ifelse(d$agedays==min(d$agedays) & d$sevwast==0, "Not Severe Wasted", d$sevwasting_episode)
  d$sevwasting_episode = ifelse(d$agedays==min(d$agedays) & d$sevwast==1, "Born Severe Wasted", d$sevwasting_episode)
  d$sevwasting_episode = na.locf(d$sevwasting_episode, fromLast=F)
  d$sevwasting_episode_lag=lag(d$sevwasting_episode)
  
  return(d)
}

#----------------------------------------------
#create functions for rolling sum windows 
#----------------------------------------------

roll_sum_fun <-  function(v, len){ sapply(1:(length(v)),function(x){sum(v[(x+1):(x+len+1)], na.rm=T)})}
lag_sum_fun <-  function(v, len){ sapply(1:(length(v)),function(x){ifelse((x-1-len)<0,
                                                                          sum(v[0:(x-1)], na.rm=T),
                                                                          sum(v[(x-1-len):(x-1)], na.rm=T))})}
#function to always round 0.5 up
round2 = function(x, n) {
  posneg = sign(x)
  z = abs(x)*10^n
  z = z + 0.5
  z = trunc(z)
  z = z/10^n
  z*posneg
}




#Function to calculate the robust SEs
sandwichSE <- function (dat, fm, cluster) 
{
  require(sandwich, quietly = TRUE)
  require(lmtest, quietly = TRUE)
  if (is.factor(cluster)) {
    cluster <- droplevels(cluster)
  }
  M <- length(unique(cluster))
  N <- length(cluster)
  K <- fm$rank
  dfc <- (M/(M - 1)) * ((N - 1)/(N - K))
  uj <- apply(estfun(fm), 2, function(x) tapply(x, cluster, 
                                                sum))
  vcovCL <- dfc * sandwich(fm, meat = crossprod(uj)/N)
  return(vcovCL)
}


#----------------------------------------------
#create function to calc unstrat and age stat incidence
#----------------------------------------------
WastIncCalc<-function(d, washout=60, dropBornWasted=F, stunt=F){
  
  require(tidyverse)
  require(zoo)  
  
  #Filter out missing whz values
  if(stunt==F){
    d <- d %>%  ungroup() %>% filter(!is.na(whz)) 
  }else{
    d$whz <- d$haz
    d <- d %>%  ungroup() %>% filter(!is.na(whz)) 
  }
  #Remove duplicate ages
  ndropped <- nrow(d[duplicated(cbind(d$subjid, d$agedays)), ])
  d <- d[!duplicated(cbind(d$subjid, d$agedays)), ]
  if(ndropped>0) cat("\n-----------------------------------\n",ndropped," observations dropped due to duplicate ages\n_----------------------------------\n")
  
  
  #Extract required columns and save others to merge back in later
  othercolumns <- d %>% subset(., select= -c(whz)) 
  d <- d %>% subset(., select= c(subjid, whz, agedays)) 
  
  
  #generate wasting and severe wasting indicators
  d$wast= ifelse(d$whz < (-2),1,0)
  d$sevwast= ifelse(d$whz < (-3),1,0)
  
  # #Generate variables for length of period in days between prior observation and current observations
  # #and the next observations and current observations. Also generate variables for if child changed from
  # #not wasted to wasted (or severe wasted) between the last observation and the current observation.
  d <- d %>%
    arrange(subjid, agedays) %>%
    group_by(subjid) %>%
    mutate(
      agelag=lag(agedays),
      wastlag=lag(wast),
      sevwastlag=lag(sevwast),
      midpoint_age = agedays - (agedays - agelag)/2,
      wastchange = wast - lag(wast),
      sevwastchange = sevwast - lag(sevwast),
      delta_age = agedays-agelag,
      firstmeasure = agedays==min(agedays)
    ) %>%
    as.data.frame()
  
  d$agelag[d$firstmeasure] <- 0
  d$wastlag[d$firstmeasure] <- 0
  d$sevwastlag[d$firstmeasure] <- 0
  d$wastchange[d$firstmeasure] <- d$wast[d$firstmeasure]
  d$sevwastchange[d$firstmeasure] <- d$sevwast[d$firstmeasure]
  d$midpoint_age[is.na(d$midpoint_age)] <- d$agedays[is.na(d$midpoint_age)]/2
  d <- d %>% group_by(subjid) %>% mutate(next_midpoint = lead(midpoint_age), last_midpoint = lag(midpoint_age))
  #                                        delta_age = next_midpoint-midpoint_age)
  d$delta_age[d$firstmeasure] <-d$agedays[d$firstmeasure]
  
  #Length of each observation period  
  #Assume 30 day period after final measurement (so midpoint will be 15 days after final measure)
  d$last_midpoint[d$firstmeasure] <- 0
  d$next_midpoint[is.na(d$next_midpoint)] <- d$agedays[is.na(d$next_midpoint)] + 15
  d$period_length <- (d$next_midpoint - d$midpoint_age)
  
  
  N <- nrow(d)
  d$washout_period_lead <- d$washout_period_lag <- rep(T, N)
  d$future_sevwast <- d$future_wast <-  d$past_sevwast <- d$past_wast <- rep(0, N)
  
  for(i in 1:washout){
    
    d <- d %>% group_by(subjid) %>%
      mutate(
        wast_lag_i  = lag(wastlag, i),
        sevwast_lag_i  = lag(sevwast, i),
        days_lag_i = abs(lag(midpoint_age, i) - midpoint_age),
        wast_lead_i  = lead(wast, i),
        sevwast_lead_i  = lead(sevwast, i),
        days_lead_i = abs(lead(midpoint_age, i) - midpoint_age)
      )
    
    d$washout_period_lag[d$days_lag_i > washout] <- F
    d$washout_period_lead[d$days_lead_i > washout] <- F
    
    if(i==1){d$past_wast[(d$wastlag==1 | d$wast_lag_i==1) & d$washout_period_lag==T] <- 1}else{
      d$past_wast[d$wast_lag_i==1 & d$washout_period_lag==T] <- 1
    }
    d$past_sevwast[d$sevwast_lag_i==1 & d$washout_period_lag==T] <- 1              
    d$future_wast[d$wast_lead_i==1 & d$washout_period_lead==T] <- 1
    d$future_sevwast[d$sevwast_lead_i==1 & d$washout_period_lead==T] <- 1
    
    #Stop for loop if all current leading and lagging observations are beyond washout period
    if(min(d$days_lead_i, na.rm=T) & min(d$days_lag_i, na.rm=T) > washout) break
  }
  
  d <- d %>% 
    subset(., select= -c(washout_period_lag, washout_period_lead, 
                         wast_lag_i, sevwast_lag_i, days_lag_i, 
                         wast_lead_i, sevwast_lead_i, days_lead_i)) %>% 
    ungroup() %>% as.data.frame()
  
  head(d,30)
  
  #---------------------------------------------------------
  #Calculate wasting and wasting recovery incidence and risk
  #---------------------------------------------------------
  d$wast_rec_inc <- d$sevwast_rec_inc <- d$wast_inc <- d$sevwast_inc <- rep(0, N)
  d$sevwast_rec_risk <- d$wast_rec_risk <- d$sevwast_risk <- d$wast_risk <-  rep(0, N)
  
  d$wast_inc[d$wastchange==1 & d$past_wast==0] <- 1 #Wasting incidence if at risk of wasting and change in status between prior and current observation
  d$wast_rec_inc[d$wastchange== -1 & d$future_wast==0] <- 1 #Recovery from wasting if status change to not wasted and no new wasting in the future washout period
  
  d$wast_inc[d$wastchange!=1 | d$past_wast==1] <- 0 
  d$wast_rec_inc[d$wastchange!= -1 | d$future_wast==1] <- 0  
  
  #FIXED!
  
  #Remove incidences of wasting if there has not been recovery from prior wasting episode
  #Is there a cleaner way of preventing recording the incidences earlier?
  #In a few rare cases, recovery hasn't occured yet, but d$wastchange==1 & d$past_wast==0
  #This happens if, for the first nonwasted measure after a series of wasted ones, the next
  #wasting episode is within 60 days (so no recovery), but from that wasting episode, it looks
  #like there has been 60 days without wasting (so incident episode), because the last wasted measure
  #is beyond the 60 day period.
  # table(d$wast_inc)
  # table(d$wast_rec_inc)
  # 
  # d <- d %>% group_by(subjid) %>% 
  #   mutate(sum_wast_inc=cumsum(wast_inc),
  #          sum_wast_rec=cumsum(wast_rec_inc))
  # for(i in 1:nrow(d)){
  #   if(d$wast_inc[i]==1 & (d$sum_wast_inc[i]-d$sum_wast_rec[i] > 1)){
  #     d$wast_inc[i] <- 0 
  #     d$past_wast[i] <- 1
  #     d <- d %>% group_by(subjid) %>% 
  #       mutate(sum_wast_inc=cumsum(wast_inc),
  #              sum_wast_rec=cumsum(wast_rec_inc))        
  #   }
  #   if(d$wast_rec_inc[i]==1 & (d$sum_wast_inc[i]-d$sum_wast_rec[i] < 0)){
  #     d$wast_rec_inc[i] <- 0 
  #     d$future_wast[i] <- 1
  #     d <- d %>% group_by(subjid) %>% 
  #       mutate(sum_wast_inc=cumsum(wast_inc),
  #              sum_wast_rec=cumsum(wast_rec_inc))  
  #   }
  # }
  # table(d$wast_inc)
    
  #Indicate length of incident episodes
  d$wasting_episode <- rep(NA, nrow(d))
  d$wasting_episode[d$wast_inc==1] <- "Wasted"
  d$wasting_episode[d$wast_rec_inc==1] <- "Not Wasted"
  d <- d %>% group_by(subjid) %>%  arrange(subjid, agedays)
  
  #Have to mark first observations as wasted or not wasted if dropBornWasted=F
  if(dropBornWasted==F){
    d <- d %>% group_by(subjid) %>%
      do(mark_episodes(.))
  }else{
    d <- d %>% group_by(subjid) %>% arrange(subjid, agedays) %>%
      mutate(wasting_episode = ifelse(agedays==min(agedays) & wast==0, "Not Wasted", wasting_episode),
             wasting_episode = ifelse(agedays==min(agedays) & wast==1, "Born Wasted", wasting_episode),
             born_wast_inc= ifelse(agedays==min(agedays) & wasting_episode=="Born Wasted",1,0),
             wasting_episode = na.locf(wasting_episode, fromLast=F),  #Last observation carried forward 
             wast_inc = ifelse(wasting_episode=="Born Wasted",0, wast_inc)) %>%
      ungroup() 
  }
  
  
  
  #Indicate risk of wasting or recovery 
  d$wast_risk[(d$wasting_episode=="Not Wasted" & d$past_wast==0) | d$wast_inc==1] <- 1 
  d$wast_rec_risk[(d$wasting_episode!="Not Wasted" & d$wast_inc!=1) | d$wast_rec_inc==1] <- 1 
  d$wast_washout <- 0
  d$wast_washout[(d$wasting_episode=="Not Wasted" & d$past_wast==1 & d$wast_rec_inc!=1)] <-1 
  
  #Check that all obs fit in one category
  table(d$wast_risk, d$wast_rec_risk, d$wast_washout)
  
  #Calculate duration of wasting and non-wasted episodes
  d <- d %>%  group_by(subjid) %>%
    mutate(episode_ID = cumsum(born_wast_inc+wast_inc+wast_rec_inc) + 1) %>% #Create unique episode ID
    ungroup() %>% group_by(subjid, episode_ID) %>%
    mutate(incident_age = min(midpoint_age),
           maxage=max(agedays))
  
  #Calculate duration for each episode
  #Note: this code implicitly censors the final epsiode as the lead(incident_age) will be NA
  d_episode <- d %>% 
    subset(., select=c(subjid,
                       episode_ID, incident_age)) %>%
    group_by(subjid, episode_ID) %>%
    slice(1) %>% ungroup() %>% group_by(subjid) %>%
    mutate(duration=lead(incident_age)-incident_age) %>%
    subset(., select= -incident_age)
  
  d <- left_join(d, d_episode, by=c("subjid","episode_ID"))
  
  
  
  #Variable for duration of only wasting episodes
  d$wasting_duration <- NA
  d$wasting_duration[d$wasting_episode=="Wasted"] <- d$duration[d$wasting_episode=="Wasted"]
  
  #View duration calculations
  # df <- d %>% subset(., select=c(subjid, agedays, whz, wast_rec_inc, wasting_episode, episode_ID, duration))
  # View(df)
  
  #---------------------------------------------------------
  #Calculate severe wasting and severe wasting recovery incidence and risk
  #---------------------------------------------------------    
  
  #Mark severe wasting changes
  d$sevwast_falter <- NA
  d$sevwast_falter[d$sevwastchange==1 & d$past_sevwast==0] <- 1
  d$sevwast_falter[d$sevwastchange!=1 | d$past_sevwast==1] <- 0
  
  d$born_sevwast_inc<-0
  d$sevwasting_episode <- rep(NA, N)
  d$sevwasting_episode[d$sevwast_falter==1] <- "Severe Wasted"
  d$sevwasting_episode[d$wast_rec_inc==1] <- "Not Severe Wasted"
  
  
  #Have to mark first observations as wasted or not wasted if dropBornWasted=F
  if(dropBornWasted==T){
    
    d <- d %>% group_by(subjid) %>%
      do(mark_sevepisodes(.))
    
  }else{
    d <- d %>% group_by(subjid) %>% 
      mutate(
        sevwasting_episode = ifelse
        (agedays==min(agedays) & sevwast==0, "Not Severe Wasted", sevwasting_episode),
        sevwasting_episode = ifelse(agedays==min(agedays) & sevwast==1, "Severe Wasted", sevwasting_episode),
        sevwasting_episode = na.locf(sevwasting_episode, fromLast=F),
        sevwasting_episode_lag=lag(sevwasting_episode)) %>% #Last observation carried forward 
      ungroup()     
  }
  
  #Indicate incidence of severe wasting and recovery
  d$sevwasting_episode_lag[is.na(d$sevwasting_episode_lag)]<-"Not Severe Wasted"
  d$sevwast_inc <- d$sevwast_rec_inc <- 0
  d$sevwast_inc[d$sevwasting_episode=="Severe Wasted" & (d$sevwasting_episode_lag=="Not Severe Wasted")] <- 1
  d$sevwast_rec_inc[d$sevwasting_episode=="Not Severe Wasted" & (d$sevwasting_episode_lag!="Not Severe Wasted")] <- 1
  
  
  #Create unique severe wasting episode IDs
  d <- d %>%  group_by(subjid) %>%
    mutate(sev_episode_ID = cumsum(sevwast_inc+born_sevwast_inc+sevwast_rec_inc) + 1) %>% #Create unique episode ID
    ungroup() 
  
  #Mark risk of severe wasting and severe wasting recovery 
  d$sevwast_risk[(d$sevwasting_episode!="Severe Wasted" & d$sevwasting_episode!="Born Severe Wasted" & d$past_sevwast==0) | d$sevwast_inc==1] <- 1 
  d$sevwast_rec_risk[((d$sevwasting_episode=="Severe Wasted" | d$sevwasting_episode=="Born Severe Wasted") & d$sevwast_inc!=1) | d$sevwast_rec_inc==1] <- 1 
  
  
  #Calculate duration of severe wasting episodes
  d <- d  %>% group_by(subjid, sev_episode_ID) %>%
    mutate(sev_incident_age = min(midpoint_age),
           sev_maxage=max(agedays))

  
  d_sev_episode <- d %>% 
    subset(., select=c(subjid, sev_episode_ID, sev_incident_age)) %>%
    group_by(subjid, sev_episode_ID) %>%
    slice(1) %>% ungroup() %>% group_by(subjid) %>%
    mutate(sevduration=lead(sev_incident_age)-sev_incident_age) %>%
    subset(., select= -sev_incident_age)
  
  d <- left_join(d, d_sev_episode, by=c("subjid","sev_episode_ID"))
  
  #Set duration of any censored episode to NA
  d <- d %>% group_by(subjid) %>%
    mutate(sevduration = ifelse(sev_maxage==max(sev_maxage), NA, sevduration)) %>% 
    ungroup()
  
  
  #Variable for duration of only severe wasting episodes
  d$sevwasting_duration <- NA
  if(dropBornWasted==F){
    d$sevwasting_duration[d$sevwasting_episode=="Severe Wasted"] <- d$sevduration[d$sevwasting_episode=="Severe Wasted"]
  }else{
    d$sevwasting_duration[d$sevwasting_episode=="Severe Wasted" | d$sevwasting_episode=="Born Severe Wasted"] <- d$sevduration[d$sevwasting_episode=="Severe Wasted" | d$sevwasting_episode=="Born Severe Wasted"]
  }
  
  
  #Calculate 30,60, 90 day recovery and faltering into severe wasting
  d$period_30d <- d$period_60d <- d$period_90d <- T
  d$wast_rec30d <- d$wast_rec60d <- d$wast_rec90d <- NA
  d$wast_rec30d[d$wast_inc==1]  <- d$wast_rec60d[d$wast_inc==1] <- d$wast_rec90d[d$wast_inc==1] <- 0
  d$sevwast_inc30d <- d$sevwast_inc60d <- d$sevwast_inc90d <- NA
  d$sevwast_inc30d[d$wast_inc==1] <- d$sevwast_inc60d[d$wast_inc==1] <- d$sevwast_inc90d[d$wast_inc==1] <- 0
  for(i in 1:90){
    d <- d %>% group_by(subjid) %>%
      mutate(
        rec_inc_lead_i = lead(wast_rec_inc, i),
        sev_inc_lead_i = lead(sevwast_inc, i),
        days_lead_i = abs(lead(midpoint_age, i) - midpoint_age)
      )
    
    d$period_30d[d$days_lead_i > 30] <- F
    d$period_60d[d$days_lead_i > 60] <- F
    d$period_90d[d$days_lead_i > 90] <- F
    
    d$wast_rec30d[d$wast_inc==1 & d$period_30d & d$rec_inc_lead_i==1] <- 1
    d$wast_rec60d[d$wast_inc==1 & d$period_60d & d$rec_inc_lead_i==1] <- 1
    d$wast_rec90d[d$wast_inc==1 & d$period_90d & d$rec_inc_lead_i==1] <- 1
    
    d$sevwast_inc30d[d$wast_inc==1 & d$period_30d & d$sev_inc_lead_i==1] <- 1
    d$sevwast_inc60d[d$wast_inc==1 & d$period_60d & d$sev_inc_lead_i==1] <- 1
    d$sevwast_inc90d[d$wast_inc==1 & d$period_90d & d$sev_inc_lead_i==1] <- 1
    
    d$wast_rec30d[d$wast_inc==1 & d$period_30d & d$rec_inc_lead_i==0 & d$wast_rec30d!=1] <- 0
    d$wast_rec60d[d$wast_inc==1 & d$period_60d & d$rec_inc_lead_i==0 & d$wast_rec60d!=1] <- 0
    d$wast_rec90d[d$wast_inc==1 & d$period_90d & d$rec_inc_lead_i==0 & d$wast_rec90d!=1] <- 0
    
    d$sevwast_inc30d[d$wast_inc==1 & d$period_30d & d$sev_inc_lead_i==0 & d$sevwast_inc30d!=1] <- 0
    d$sevwast_inc60d[d$wast_inc==1 & d$period_60d & d$sev_inc_lead_i==0 & d$sevwast_inc60d!=1] <- 0
    d$sevwast_inc90d[d$wast_inc==1 & d$period_90d & d$sev_inc_lead_i==0 & d$sevwast_inc90d!=1] <- 0
    
    #Stop for loop if all current leading observations are beyond 90 days
    if(min(d$days_lead_i, na.rm=T) > 90) break
  }
  
  d <- d %>% group_by(subjid) %>% arrange(subjid, agedays) %>% mutate(end_recovery=1*(last(wast_rec_inc)==1))
  
  #d$incident_time_into_period <- d$delta_age/2
  d$incident_time_into_period <- d$period_length/2
  #d$incident_time_into_period <- 0
  d$delta_age <- d$midpoint_age - d$last_midpoint
  
  #calculate person time for each incidence outcome
  d$pt_wast <- d$delta_age * d$wast_risk #- d$incident_time_into_period * d$wast_inc + d$incident_time_into_period * d$wast_rec_inc + d$delta_age * d$wast_washout 
  d$pt_sevwast <- d$delta_age * d$sevwast_risk #- d$incident_time_into_period * d$sevwast_inc  + d$incident_time_into_period * d$sevwast_rec_inc
  d$pt_wast_rec <- d$delta_age * d$wast_rec_risk #- d$incident_time_into_period * d$wast_rec_inc + d$incident_time_into_period * (d$wast_inc + d$born_wast_inc)
  d$pt_sevwast_rec <- d$delta_age * d$sevwast_rec_risk #- d$incident_time_into_period * d$sevwast_rec_inc + d$incident_time_into_period * (d$sevwast_inc + d$born_sevwast_inc)
  d$pt_washout <- d$delta_age * d$wast_washout 
  #pt_washout <- ifelse(d$end_recovery==0, sum(d$wast_rec_inc) * 60, (sum(d$wast_rec_inc)-1) * 60)
  sum(d$pt_wast, na.rm=T) 
  sum(d$pt_wast_rec, na.rm=T) 
  #sum(d$pt_wast + d$pt_wast_rec + d$pt_washout, na.rm=T) #Should be 35800 in the test data.
  #sum(d$pt_wast + d$pt_wast_rec + pt_washout, na.rm=T) #Should be 35800 in the test data.
  sum(d$pt_wast + d$pt_wast_rec, na.rm=T) #Should be 35800 in the test data.
  
  #Drop intermediate variables
  d <- subset(d, select = -c(agelag, wastlag, sevwastlag, midpoint_age, wastchange, sevwastchange, past_wast, past_sevwast,
                             future_wast, future_sevwast,  sevwast_falter, sevwasting_episode_lag, sev_incident_age, sev_maxage,
                             sevduration, rec_inc_lead_i, sev_inc_lead_i, days_lead_i, period_30d,period_60d,period_90d, next_midpoint,
                             incident_time_into_period, delta_age
  )) %>%
    ungroup() %>% as.data.frame()


  #merge back in other columns
  d <- merge(d, othercolumns, by=c("subjid", "agedays"))
  
  #rename columns to match other functions
  d <- d %>% rename(wast_rec = wast_rec_inc,
                    sevwast_rec = sevwast_rec_inc) 
  
  colnames(d) <- tolower(colnames(d))
  
  d <- d %>% arrange(subjid, agedays)
  
  return(d)
}  




