




rm(list=ls())
library(ghap)
library(dplyr)
library(stringr)

set_git_base_path("U:/git")
get_git_base_path()
setwd("U:/data/")

#astudies <- as.data.frame(get_study_list_anthro())
astudies <- as.data.frame(get_study_list())



# drop 1 duplicate record for PROVIDE
astudies <- astudies[!duplicated(astudies$fstudy_id),]

#Drop one study not used with many countries
astudies <- astudies[astudies$study_id!="CIPHER",]

#Count number of countries in each study
astudies$num_countries <- str_count(astudies$country, ",") + 1
astudies$num_countries[is.na(astudies$num_countries)] <- 1
num_cohorts <- sum(astudies$num_countries)
table(astudies$num_countries)



#Duplicate rows of data table to have row per country in a cohort
astudies$index<-1:nrow(astudies)
astudies <- rbind(astudies %>% mutate(cohortnum=1),
                  astudies %>% filter(num_countries>1) %>% mutate(cohortnum=2), 
                  astudies %>% filter(num_countries>2) %>% mutate(cohortnum=3), 
                  astudies %>% filter(num_countries>3) %>% mutate(cohortnum=4), 
                  astudies %>% filter(num_countries>4) %>% mutate(cohortnum=5), 
                  astudies %>% filter(num_countries>5) %>% mutate(cohortnum=6), 
                  astudies %>% filter(num_countries>6) %>% mutate(cohortnum=7), 
                  astudies %>% filter(num_countries>7) %>% mutate(cohortnum=8)) %>%
  arrange(index)

#replace mlex with mled
astudies$short_id[astudies$short_id=="mlex" & !is.na(astudies$short_id)] <- "mled"



#Calculate prevalence of wasting,
# number of countries
# number of children
# mean number of observations per child,
# presence of date variable
# presence of mortality variable
# min/ max 
# monthly wasting prevalence

v<-rep(NA, num_cohorts)
df<- cbind(astudies, data.frame(numcountry=v, countrycohort=v, wastprev=v, numsubj=v, numobs=v, median_length_between_measures=v, sd_obs=v, minages=v, maxages=v, mortality=v, birthweek=v, RCT=v, diar=v,
                                HAZsd=v, WAZsd=v, WHZsd=v,   perc_length_decrease=v,
                                wastprev_m0=v, wastprev_m1=v, wastprev_m2=v, wastprev_m3=v, wastprev_m4=v, wastprev_m5=v, wastprev_m6=v, wastprev_m7=v, wastprev_m8=v,
                                wastprev_m9=v, wastprev_m10=v, wastprev_m11=v, wastprev_m12=v, wastprev_m13=v, wastprev_m14=v, wastprev_m15=v, wastprev_m16=v,
                                wastprev_m17=v, wastprev_m18=v, wastprev_m19=v, wastprev_m20=v, wastprev_m21=v, wastprev_m22=v, wastprev_m23=v, wastprev_m24=v, 
                                n0=v, n1=v, n2=v, n3=v, n4=v, n5=v, n6=v, n7=v, n8=v,
                                n9=v, n10=v, n11=v, n12=v, n13=v, n14=v, n15=v, n16=v,
                                n17=v, n18=v, n19=v, n20=v, n21=v, n22=v, n23=v, n24=v,
                                meanWHZ_m0=v, meanWHZ_m1=v, meanWHZ_m2=v, meanWHZ_m3=v, meanWHZ_m4=v, meanWHZ_m5=v, meanWHZ_m6=v, meanWHZ_m7=v, meanWHZ_m8=v,
                                meanWHZ_m9=v, meanWHZ_m10=v, meanWHZ_m11=v, meanWHZ_m12=v, meanWHZ_m13=v, meanWHZ_m14=v, meanWHZ_m15=v, meanWHZ_m16=v,
                                meanWHZ_m17=v, meanWHZ_m18=v, meanWHZ_m19=v, meanWHZ_m20=v, meanWHZ_m21=v, meanWHZ_m22=v, meanWHZ_m23=v, meanWHZ_m24=v,
                                variables=v))


for(i in 1:nrow(df)){
  
  print(i)
  res<-NULL
  numcountry<- countrycohort <- wastprev<- numsubj<- numobs<- minages<- maxages<- mortality<-sd_obs<-median_length_between_measures<- birthweek<- RCT<-diar<-variables<-NA
  HAZsd <- WAZsd <- WHZsd <- perc_length_decrease <- NA
  wastprev_m0<- wastprev_m1<- wastprev_m2<- wastprev_m3<- wastprev_m4<- wastprev_m5<- wastprev_m6<- wastprev_m7<- wastprev_m8<-NA
  wastprev_m9<- wastprev_m10<- wastprev_m11<- wastprev_m12<- wastprev_m13<- wastprev_m14<- wastprev_m15<- wastprev_m16<-NA
  wastprev_m17<- wastprev_m18<- wastprev_m19<- wastprev_m20<- wastprev_m21<- wastprev_m22<- wastprev_m23<- wastprev_m24<-NA
  n0 <- n1<- n2<- n3<- n4<- n5<- n6<- n7<- n8<-NA
  n9<- n10<- n11<- n12<- n13<- n14<- n15<- n16<-NA
  n17<- n18<- n19<- n20<- n21<- n22<- n23<- n24<-NA
  meanWHZ_m0<- meanWHZ_m1<- meanWHZ_m2<- meanWHZ_m3<- meanWHZ_m4<- meanWHZ_m5<- meanWHZ_m6<- meanWHZ_m7<- meanWHZ_m8<-NA
  meanWHZ_m9<- meanWHZ_m10<- meanWHZ_m11<- meanWHZ_m12<- meanWHZ_m13<- meanWHZ_m14<- meanWHZ_m15<- meanWHZ_m16<-NA
  meanWHZ_m17<- meanWHZ_m18<- meanWHZ_m19<- meanWHZ_m20<- meanWHZ_m21<- meanWHZ_m22<- meanWHZ_m23<- meanWHZ_m24<-NA
  firstage <- lastage <- NA
  
  
  d<-NULL
  try(d <- readRDS(paste0(df$short_id[i],".rds")))
  
  if(!is.null(d)){
    if("WHZ" %in% colnames(d)){
      
    d<-d[!is.na(d$WHZ),]
    
    
    numcountry<-length(unique(d$COUNTRY))
    
    
    #Subset to country-cohort
    d<-d[as.character(d$COUNTRY)==unique(as.character(d$COUNTRY))[df$cohortnum[i]],]
    
    countrycohort <- unique(as.character(d$COUNTRY))
    
    #Exclude outliers
    d<-d[d$WHZ < 5 & d$WHZ > (-5),]
    
    #Subset to ages 0-24months
    d<-d[d$AGEDAYS>=0 & d$AGEDAYS < 24*30.4167,]
    
    wastprev<- mean(as.numeric(d$WHZ < (-2)), na.rm=T)*100
    
    numsubj<-length(unique(d$SUBJID))
    
    numobs<-mean(table(d$SUBJID))
    
    sd_obs<-sd(table(d$SUBJID))
    
    measure_time <- d %>% group_by(SUBJID) %>% 
                          mutate(agelag=lag(AGEDAYS),
                                 measure_length= AGEDAYS-agelag) %>%
                          summarise(median_length=median(measure_length, na.rm=T))
    
    median_length_between_measures <- median(measure_time$median_length, na.rm=T)
    
    #Calculate min and max age
    firstage <- d %>% group_by(SUBJID) %>% arrange(AGEDAYS) %>% filter(AGEDAYS==first(AGEDAYS)) %>% 
      ungroup() %>% summarize(firstage=median(AGEDAYS, na.rm=T))
    firstage <- round(firstage/30.4167)
    
    lastage <- d %>% group_by(SUBJID) %>% arrange(AGEDAYS) %>% filter(AGEDAYS==last(AGEDAYS)) %>% 
      ungroup() %>% summarize(lastage=median(AGEDAYS, na.rm=T))
    lastage <- round(lastage/30.4167)
    
    age <- d %>% group_by(SUBJID) %>% summarize(minage=min(AGEDAYS), maxage=max(AGEDAYS)) %>% as.data.frame()
    minages<-mean(age[,2] , na.rm = T)
    maxages<-mean(age[,3] , na.rm = T)
    
    mortality<-as.numeric("DEAD" %in% colnames(d))
    birthweek<-as.numeric("BRTHWEEK" %in% colnames(d))   
    RCT<-as.numeric("ARM" %in% colnames(d))
    diar<-as.numeric("PCTDIAR" %in% colnames(d))
    
    
    #Calculate standard deviation of monthly measurements
    HAZsd <- sd(d$HAZ)
    WAZsd <- sd(d$WAZ) 
    WHZsd <- sd(d$WHZ) 
    
    
    #Calculate prevalence of height decrease between measurements
    #Count a height decrease if height decreases more than WHO standard (2.8 x expert TEM of 0.29 =  0.812)
    if(!is.null(d$LENCM)){
      d$LENCM<-as.numeric(d$LENCM)
    d <- d %>% arrange(SUBJID,AGEDAYS) %>% group_by(SUBJID) %>% 
      mutate(LENCMlag=dplyr::lag(LENCM, n = 1, default = NA, order_by=AGEDAYS),
             length_change=LENCM-LENCMlag,
             length_decrease=ifelse(length_change< -0.812, 1, 0)) %>% ungroup()
    perc_length_decrease <- mean(d$length_decrease, na.rm=T) *100
    }else{
      perc_length_decrease <- NA  
    }
    
    
    
    
    #Calculate monthly wasting
    meanWHZ_m0 <- mean(d$WHZ[d$AGEDAYS==1], na.rm=T)
    wastprev_m0<-mean(as.numeric(d$WHZ[d$AGEDAYS==1] < (-2)), na.rm=T)*100
    n0 <- length(d$WHZ[d$AGEDAYS==1])
    meanHAZ_m1 <- mean(d$WHZ[d$AGEDAYS>=2 & d$AGEDAYS<30.4167], na.rm=T)
    stuntprev_m1<-mean(as.numeric(d$WHZ[d$AGEDAYS>=2 & d$AGEDAYS<30.4167] < (-2)), na.rm=T)*100
    n1 <- length(d$WHZ[d$AGEDAYS>=2 & d$AGEDAYS<30.4167])
    for(j in 1:23){
      assign(paste('meanWHZ_m', j+1, sep=''),  mean(d$WHZ[d$AGEDAYS>=j*30.4167 & d$AGEDAYS<(j+1)*30.4167], na.rm=T))
      assign(paste('wastprev_m', j+1, sep=''),  mean(as.numeric(d$WHZ[d$AGEDAYS>=j*30.4167 & d$AGEDAYS<(j+1)*30.4167] < (-2)), na.rm=T)*100)
      assign(paste('n', j+1, sep=''),  length(d$WHZ[d$AGEDAYS>=j*30.4167 & d$AGEDAYS<(j+1)*30.4167]))
    }
    
    
    
    
    variables<-paste(colnames(d), collapse=', ' )
    }
  }
  res<-t(c(numcountry, countrycohort, wastprev, numsubj, numobs, median_length_between_measures, sd_obs, minages, maxages, mortality, birthweek, RCT, diar, 
           HAZsd, WAZsd, WHZsd, perc_length_decrease, 
           wastprev_m0, wastprev_m1, wastprev_m2, wastprev_m3, wastprev_m4, wastprev_m5, wastprev_m6, wastprev_m7, wastprev_m8,
           wastprev_m9, wastprev_m10, wastprev_m11, wastprev_m12, wastprev_m13, wastprev_m14, wastprev_m15, wastprev_m16,
           wastprev_m17, wastprev_m18, wastprev_m19, wastprev_m20, wastprev_m21, wastprev_m22, wastprev_m23, wastprev_m24,
           n0, n1, n2, n3, n4, n5, n6, n7, n8,
           n9, n10, n11, n12, n13, n14, n15, n16,
           n17, n18, n19, n20, n21, n22, n23, n24,
           meanWHZ_m0, meanWHZ_m1, meanWHZ_m2, meanWHZ_m3, meanWHZ_m4, meanWHZ_m5, meanWHZ_m6, meanWHZ_m7, meanWHZ_m8,
           meanWHZ_m9, meanWHZ_m10, meanWHZ_m11, meanWHZ_m12, meanWHZ_m13, meanWHZ_m14, meanWHZ_m15, meanWHZ_m16,
           meanWHZ_m17, meanWHZ_m18, meanWHZ_m19, meanWHZ_m20, meanWHZ_m21, meanWHZ_m22, meanWHZ_m23, meanWHZ_m24,
           variables
  ))
  
  try(df[i,46:ncol(df)] <- res)
}



saveRDS(df, "U:/results/Metadata/GHAP_metadata_wasting.RDS")
saveRDS(df, "U:/ki-longitudinal-manuscripts/results/GHAP_metadata_wasting.RDS")
getwd()












