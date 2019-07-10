




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


#Calculate prevalence of stunting,
# number of countries
# number of children
# mean number of observations per child,
# presence of date variable
# presence of mortality variable
# min/ max 
# monthly stunting prevalence

v<-rep(NA, num_cohorts)
df<- cbind(astudies, data.frame(numcountry=v, countrycohort=v, hasHAZ=v, stuntprev=v, numsubj=v, numobs=v, numsubj_u24mo=v, numobs_u24mo=v, median_length_between_measures=v, sd_obs=v, minages=v, maxages=v, mortality=v, birthweek=v, RCT=v, diar=v,
                                HAZsd=v, WAZsd=v, HAZsd=v,perc_length_decrease=v, firstage=v, lastage=v,
                                stuntprev_m0=v,
                                stuntprev_m1=v, stuntprev_m2=v, stuntprev_m3=v, stuntprev_m4=v, stuntprev_m5=v, stuntprev_m6=v, stuntprev_m7=v, stuntprev_m8=v,
                                stuntprev_m9=v, stuntprev_m10=v, stuntprev_m11=v, stuntprev_m12=v, stuntprev_m13=v, stuntprev_m14=v, stuntprev_m15=v, stuntprev_m16=v,
                                stuntprev_m17=v, stuntprev_m18=v, stuntprev_m19=v, stuntprev_m20=v, stuntprev_m21=v, stuntprev_m22=v, stuntprev_m23=v, stuntprev_m24=v, 
                                n0=v, n1=v, n2=v, n3=v, n4=v, n5=v, n6=v, n7=v, n8=v,
                                n9=v, n10=v, n11=v, n12=v, n13=v, n14=v, n15=v, n16=v,
                                n17=v, n18=v, n19=v, n20=v, n21=v, n22=v, n23=v, n24=v, 
                                meanHAZ_m0=v, meanHAZ_m1=v, meanHAZ_m2=v, meanHAZ_m3=v, meanHAZ_m4=v, meanHAZ_m5=v, meanHAZ_m6=v, meanHAZ_m7=v, meanHAZ_m8=v,
                                meanHAZ_m9=v, meanHAZ_m10=v, meanHAZ_m11=v, meanHAZ_m12=v, meanHAZ_m13=v, meanHAZ_m14=v, meanHAZ_m15=v, meanHAZ_m16=v,
                                meanHAZ_m17=v, meanHAZ_m18=v, meanHAZ_m19=v, meanHAZ_m20=v, meanHAZ_m21=v, meanHAZ_m22=v, meanHAZ_m23=v, meanHAZ_m24=v,
                                variables=v))

for(i in 1:nrow(df)){
  print(i)
  
  res<-NULL
  numcountry<- countrycohort <- stuntprev<- numsubj<- numobs<- numsubj_u24mo<- numobs_u24mo<- minages<- maxages<- mortality<-sd_obs<-median_length_between_measures<- birthweek<- RCT<-diar<-variables<-NA
  HAZsd <- WAZsd <- HAZsd <-  perc_length_decrease <- NA
  stuntprev_m0<- stuntprev_m1<- stuntprev_m2<- stuntprev_m3<- stuntprev_m4<- stuntprev_m5<- stuntprev_m6<- stuntprev_m7<- stuntprev_m8<-NA
  stuntprev_m9<- stuntprev_m10<- stuntprev_m11<- stuntprev_m12<- stuntprev_m13<- stuntprev_m14<- stuntprev_m15<- stuntprev_m16<-NA
  stuntprev_m17<- stuntprev_m18<- stuntprev_m19<- stuntprev_m20<- stuntprev_m21<- stuntprev_m22<- stuntprev_m23<- stuntprev_m24<-NA
  n0<- n1<- n2<- n3<- n4<- n5<- n6<- n7<- n8<-NA
  n9<- n10<- n11<- n12<- n13<- n14<- n15<- n16<-NA
  n17<- n18<- n19<- n20<- n21<- n22<- n23<- n24<-NA
  meanHAZ_m0<- meanHAZ_m1<- meanHAZ_m2<- meanHAZ_m3<- meanHAZ_m4<- meanHAZ_m5<- meanHAZ_m6<- meanHAZ_m7<- meanHAZ_m8<-NA
  meanHAZ_m9<- meanHAZ_m10<- meanHAZ_m11<- meanHAZ_m12<- meanHAZ_m13<- meanHAZ_m14<- meanHAZ_m15<- meanHAZ_m16<-NA
  meanHAZ_m17<- meanHAZ_m18<- meanHAZ_m19<- meanHAZ_m20<- meanHAZ_m21<- meanHAZ_m22<- meanHAZ_m23<- meanHAZ_m24<-NA
  hasHAZ <- NA
  firstage <- lastage <- NA
  
  
  
  d<-NULL
  try(d <- readRDS(paste0(df$short_id[i],".rds")))
  
  if(!is.null(d)){
    if("HAZ" %in% colnames(d)){
      hasHAZ=T
      d<-d[!is.na(d$HAZ),]
      
      numcountry<-length(unique(d$COUNTRY))
      
      
      #Subset to country-cohort
      d<-d[as.character(d$COUNTRY)==unique(as.character(d$COUNTRY))[df$cohortnum[i]],]
      
      countrycohort <- unique(as.character(d$COUNTRY))
      
      #Exclude outliers
      d<-d[d$HAZ < 6 & d$HAZ > (-6),]
      
      #Subset to ages 0-24months
      d<-d[d$AGEDAYS>=0 & d$AGEDAYS < 24*30.4167,]
      
      stuntprev<- mean(as.numeric(d$HAZ < (-2)), na.rm=T)*100
      
      numsubj<-length(unique(d$SUBJID))
      
      numobs<-mean(table(d$SUBJID))
      
      sd_obs<-sd(table(d$SUBJID))
      
      age <- d %>% group_by(SUBJID) %>% summarize(minage=min(AGEDAYS), maxage=max(AGEDAYS)) %>% as.data.frame()
      minages<-mean(age[,2] , na.rm = T)
      maxages<-mean(age[,3] , na.rm = T)
      
      numsubj_u24mo<-length(unique(d$SUBJID))
      
      numobs_u24mo<-mean(table(d$SUBJID))
      
      
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
      
      mortality<-as.numeric("DEAD" %in% colnames(d))
      birthweek<-as.numeric("BRTHWEEK" %in% colnames(d))   
      RCT<-as.numeric("ARM" %in% colnames(d))
      diar<-as.numeric("PCTDIAR" %in% colnames(d))


      
      #Calculate standard deviation of monthly measurements
      HAZsd <- sd(d$HAZ)
      WAZsd <- sd(d$WAZ) 
      HAZsd <- sd(d$HAZ) 
      

      
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
      
      
      
      
      #Calculate monthly stunting
      meanHAZ_m0 <- mean(d$HAZ[d$AGEDAYS==1], na.rm=T)
      stuntprev_m0<-mean(as.numeric(d$HAZ[d$AGEDAYS==1] < (-2)), na.rm=T)*100
      n0 <- length(d$HAZ[d$AGEDAYS==1])
      meanHAZ_m1 <- mean(d$HAZ[d$AGEDAYS>=2 & d$AGEDAYS<30.4167], na.rm=T)
      stuntprev_m1<-mean(as.numeric(d$HAZ[d$AGEDAYS>=2 & d$AGEDAYS<30.4167] < (-2)), na.rm=T)*100
      n1 <- length(d$HAZ[d$AGEDAYS>=2 & d$AGEDAYS<30.4167])
      for(j in 1:23){
        assign(paste('meanHAZ_m', j+1, sep=''),  mean(d$HAZ[d$AGEDAYS>=j*30.4167 & d$AGEDAYS<(j+1)*30.4167], na.rm=T))
        assign(paste('stuntprev_m', j+1, sep=''),  mean(as.numeric(d$HAZ[d$AGEDAYS>=j*30.4167 & d$AGEDAYS<(j+1)*30.4167] < (-2)), na.rm=T)*100)
        assign(paste('n', j+1, sep=''),  length(d$HAZ[d$AGEDAYS>=j*30.4167 & d$AGEDAYS<(j+1)*30.4167]))
      }
      
      
      
      
      variables<-paste(colnames(d), collapse=', ' )
    }else{
      hasHAZ=F
    }
  }
  res<-t(c(numcountry, countrycohort, hasHAZ, stuntprev, numsubj, numobs, numsubj_u24mo, numobs_u24mo, median_length_between_measures, sd_obs, minages, maxages, mortality, birthweek, RCT, diar, 
           firstage, lastage,
           HAZsd, WAZsd, HAZsd, perc_length_decrease, 
           stuntprev_m0, stuntprev_m1, stuntprev_m2, stuntprev_m3, stuntprev_m4, stuntprev_m5, stuntprev_m6, stuntprev_m7, stuntprev_m8,
           stuntprev_m9, stuntprev_m10, stuntprev_m11, stuntprev_m12, stuntprev_m13, stuntprev_m14, stuntprev_m15, stuntprev_m16,
           stuntprev_m17, stuntprev_m18, stuntprev_m19, stuntprev_m20, stuntprev_m21, stuntprev_m22, stuntprev_m23, stuntprev_m24,
           n0, n1, n2, n3, n4, n5, n6, n7, n8,
           n9, n10, n11, n12, n13, n14, n15, n16,
           n17, n18, n19, n20, n21, n22, n23, n24,
           meanHAZ_m0, meanHAZ_m1, meanHAZ_m2, meanHAZ_m3, meanHAZ_m4, meanHAZ_m5, meanHAZ_m6, meanHAZ_m7, meanHAZ_m8,
           meanHAZ_m9, meanHAZ_m10, meanHAZ_m11, meanHAZ_m12, meanHAZ_m13, meanHAZ_m14, meanHAZ_m15, meanHAZ_m16,
           meanHAZ_m17, meanHAZ_m18, meanHAZ_m19, meanHAZ_m20, meanHAZ_m21, meanHAZ_m22, meanHAZ_m23, meanHAZ_m24,
           variables
  ))
  
  try(df[i,46:ncol(df)] <- res)
}


df[48,]

saveRDS(df, metadata-GHAP_metadata_stunting_path)
saveRDS(df, results-GHAP_metadata_stunting_path)
getwd()

df2 <- df %>% filter(status=="QC completed" & study_type=="Longitudinal" & anthropometric_data!="None" & country!="USA" & country!="NLD") %>% 
  subset(., select=-c(alternate_id, status, grant_folder,  analysis_folder, study_type, date_data_recd,
                      study_url, pi_name, pi_contact_info, mou_counterparty,  dm_contact_information,  phi_present, data_accepted,
                      scope_of_data, data_restrictions, kikm_uri,  notes, studyid, hasdata, fstudy_id,
                      HAZsd.1, variables,
                      subject_count,	age_lower_limit,	units_for_age_lo,	age_upper_limit,	units_for_age_up))
dim(df2)


library(xlsx)
write.xlsx(df2, metadata-GHAP_metadata_stunting_xlsx_path)



