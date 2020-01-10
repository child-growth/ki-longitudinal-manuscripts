

#-----------------------------------
# Cross-check descriptive statistics from
# primary papers against datad
#-----------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#--------------------------------------------
# Read in master data file
#--------------------------------------------

dfull <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds"))



#--------------------------------------------
# Functions        
#--------------------------------------------

summary_by_arm = function(d, Y, mean=T){
  d<- as.data.frame(d)
  d <- droplevels(d)
  if(!mean){cat(" Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's \n")}
  for(i in levels(d$arm)){
    df <- d[d$arm==i,]
    if(mean){
     cat(i,": ",round(mean(df[,Y], na.rm=T), 3)," N:",sum(!is.na(df[,Y])), "\n")
    }else(
     cat(i,": ",summary(df[,Y]), "\n")
    )
  }
}

sex_by_arm = function(d){
  d<- as.data.frame(d)
  d <- droplevels(d)
  cat(names(table(df$sex)),"\n")
  for(i in levels(d$arm)){
    df <- d[d$arm==i,]
    cat(i,": ",(table(df$sex)), "\n")
    cat(i,": ",round(prop.table(table(df$sex))*100,1), "\n")
  }
}


#--------------------------------------------
# ki1114097-CONTENT         
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1114097-CONTENT")         


#--------------------------------------------
# ki1119695-PROBIT  
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1119695-PROBIT")  


#--------------------------------------------
# ki0047075b-MAL-ED         
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki0047075b-MAL-ED")         


#--------------------------------------------
# ki1000108-CMC-V-BCS-2002  
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1000108-CMC-V-BCS-2002")  


#--------------------------------------------
# ki1000108-IRC            
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1000108-IRC")            


#--------------------------------------------
# ki1000109-EE              
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1000109-EE")              


#--------------------------------------------
# ki1000109-ResPak          
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1000109-ResPak")          


#--------------------------------------------
# ki1000304-VITAMIN-A      
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1000304-VITAMIN-A")      


#--------------------------------------------
# ki1000304b-SAS-CompFeed   
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1000304b-SAS-CompFeed")   


#--------------------------------------------
# ki1000304b-SAS-FoodSuppl  
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1000304b-SAS-FoodSuppl")  


#--------------------------------------------
# ki1017093-NIH-Birth      
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1017093-NIH-Birth")      


#--------------------------------------------
# ki1017093b-PROVIDE        
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1017093b-PROVIDE")        


#--------------------------------------------
# ki1017093c-NIH-Crypto     
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1017093c-NIH-Crypto")     


#--------------------------------------------
# ki1066203-TanzaniaChild2 
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1066203-TanzaniaChild2") 


#--------------------------------------------
# ki1101329-Keneba         
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1101329-Keneba")         


#--------------------------------------------
# ki1112895-Burkina Faso Zn 
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1112895-Burkina Faso Zn") 


#--------------------------------------------
# ki1112895-Guatemala BSC  
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1112895-Guatemala BSC")  


# Link to primary publication	Table-number	outcome-measure	outcome-description	publication n	outcome-value	notes
# 3	WAZ	WAZ for WPC	60	-1.03 ± 0.96	
# 3	LAZ	LAZ for WPC	60	-1.45 ± 0.96	
# 3	WLZ	WLZ for WPC	60	0.14 ± 0.84	
# 3	WAZ	WAZ for MMN + WPC	58	-1.10 ± 0.81	
# 3	LAZ	LAZ for MMN + WPC	58	-1.59 ± 0.74	
# 3	WLZ	WLZ for MMN + WPC	58	0.21 ± 0.66	


#Subset to baseline measure (for kids with  measures at at least 8 months)
df <- d %>% group_by(arm,subjid) %>% mutate(maxage=max(agedays)) %>% filter(maxage>7*30.4167) %>% arrange(agedays) %>% slice(1)

summary_by_arm(df, "waz")
summary_by_arm(df, "haz")
summary_by_arm(df, "whz")

#N's are higher and WLZ is a bit lower (maybe due to lack of outlier exclusions? add that to function?)



#--------------------------------------------
# ki1112895-iLiNS-Zinc      
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1112895-iLiNS-Zinc")      


#--------------------------------------------
# ki1113344-GMS-Nepal       
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1113344-GMS-Nepal")       
#not yet published

#--------------------------------------------
# ki1114097-CMIN           
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1114097-CMIN")           


#--------------------------------------------
# ki1126311-ZVITAMBO        
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1126311-ZVITAMBO")        


#--------------------------------------------
# ki1135781-COHORTS         
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1135781-COHORTS")         


#--------------------------------------------
# ki1148112-LCNI-5         
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1148112-LCNI-5")         


#--------------------------------------------
# ki1148112-iLiNS-DOSE      
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1148112-iLiNS-DOSE")      


#--------------------------------------------
# ki1148112-iLiNS-DYAD-M    
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1148112-iLiNS-DYAD-M")    


#--------------------------------------------
# kiGH5241-JiVitA-3        
#--------------------------------------------
d <- dfull %>% filter(studyid == "kiGH5241-JiVitA-3")        


summary_by_arm(d, "haz")
summary_by_arm(d, "whz")


#--------------------------------------------
# kiGH5241-JiVitA-4         
#--------------------------------------------
d <- dfull %>% filter(studyid == "kiGH5241-JiVitA-4")   


# Link to primary publication	Table-number	outcome-measure	outcome-description	publication n	outcome-value
# https://www.dropbox.com/s/cnfebswknnzfh7g/Christian%202015%20IJE%20.pdf?dl=0	
# 2	mean LAZ	mean LAZ in control at enrollment	1438	-1.33
# 2	mean WLZ	mean WLZ in control at enrollment	1438	-0.4
# 2	mean WLZ	Plumpy'doz at enrollment	1492	-0.36
# 2	mean WLZ	Rice-lentil at enrollment	825	-0.38
# 2	mean WLZ	Chickpea at enrollment	843	-0.42
# 2	mean WLZ	WSB++ at enrollment	851	-0.44
# 2	Percent Male	control	686	48.6
# 2	Percent Male	Plumpy'doz at enrollment	767	51.8
# 2	Percent Male	Rice-lentil at enrollment	400	49
# 2	Percent Male	Chickpea at enrollment	419	50.5
# 2	Percent Male	WSB++ at enrollment	419	49.5
# 2	Age (months)	control		6.13
# 2	Age (months)	Plumpy'doz at enrollment		6.26
# 2	Age (months)	Rice-lentil at enrollment		6.25
# 2	Age (months)	chickpea at enrollment		6.24
# 2	Age (months)	wsb++ at enrollment		6.26


#Subset to enrollment measure
df <- d %>% group_by(arm,subjid) %>% filter(agedays>5*30.4167) %>% arrange(agedays) %>% slice(1)
table(df$arm)

summary_by_arm(d=df, Y="haz")
summary_by_arm(df, "whz")

sex_by_arm(df)


#Note- numbers seem reasonable, though I have to guess at enrollment values ~ 6 months
