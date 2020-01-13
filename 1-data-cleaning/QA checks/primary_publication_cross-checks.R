

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

# outcome-measure outcome-description publication n outcome-value
# Neonatal  Age at enrollment (days)  700 4.9
# female sex  700 47.40%
# HAZ at enrollment 700 -0.9
# WAZ at enrollment 700 -1.29
# 
# Maternal  Age at enrollment (years) 700 24.65

#data at enrollment
df <- d %>% group_by(subjid) %>% arrange(agedays) %>% slice(1)
df <- droplevels(df)

dim(df)
summary(df$agedays) #matches as ages start t 1 instead of 0
prop.table(table(df$sex)) * 100
summary(df$haz)
summary(df$waz)
summary(df$W_mage)

#--------------------------------------------
# ki1017093c-NIH-Crypto     
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1017093c-NIH-Crypto")     


#--------------------------------------------
# ki1066203-TanzaniaChild2 
#--------------------------------------------
d <- dfull %>% filter(studyid == "ki1066203-TanzaniaChild2") 

#data at enrollment
df <- d %>% group_by(subjid) %>% arrange(agedays) %>% slice(1)
df <- droplevels(df)


# Child age at randomization (weeks)	
# ZN + MVs	602	5.9
# Zinc only	596	5.9
# Multivitamins only	598	5.9
# Placebo	604	5.9

#Don't have variable to subset to assignment at time of randomization

# 1	LAZ	
# ZN + MVs	602	-0.37
# Zinc only	596	-0.33
# Multivitamins only	598	-0.26
# Placebo	604	-0.17
# 
# 1	WLZ	
# ZN + MVs	602	0.15
# Zinc only	596	0.16
# Multivitamins only	598	0.14
# Placebo	604	0.05
# 
# 1	WAZ	
# ZN + MVs	602	-0.26
# Zinc only	596	-0.23
# Multivitamins only	598	-0.17
# Placebo	604	-0.16

#grab obs closest to 6wks
df <- d %>% group_by(subjid) %>% filter(abs(agedays- 5.9*7) == min(abs(agedays- 5.9*7))) 
df %>% group_by(arm) %>% 
  summarize(
    haz=mean(haz, na.rm=T),
    whz=mean(whz, na.rm=T),
    waz=mean(waz, na.rm=T))
#KI Z-scores consistent



# 1	Male sex	
# ZN + MVs	602	289 (48%)
# Zinc only	596	300 (50.3%)
# Multivitamins only	598	316 (52.8%)
# Placebo	604	311 (51.5%)
table(df$arm, df$sex)
prop.table(table(df$arm, df$sex), 1)
#KI data consistent


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

# Sex male	Children 0-2y	252	144 (57%)
# 
# Birthweight (g)	<2500	252	86 (34%)
# > or = 2500	252	166 (66%)

df <- d %>% group_by(subjid) %>% arrange(agedays)  %>% filter(agedays < 731) %>% slice(1)
dim(df)

prop.table(table(df$sex))
prop.table(table(df$birthwt))
table(df$W_birthwt)

# Participants 288
# Weight and length in 4 periods1: 247
# Girls: 106 (43)
prop.table(table(df$sex))

# Mean age at first visit:  1.2 
# Mean visits,18 mo: 16
# 
# Any wasting
# 0–17 mo: 104 (42) 

d %>% filter(agedays < 17*30.4167, !is.na(whz)) %>% group_by(subjid) %>% mutate(minwhz = min(whz)) %>% slice(1) %>% ungroup() %>% summarize(mean (minwhz < -2)*100)

# Stunted at
# 18–24 mo 168 (68)
d %>% filter(agedays > 18*30.4167, agedays < 24*30.4167, !is.na(haz), haz > -6) %>% group_by(subjid) %>% mutate(minhaz = min(haz)) %>% slice(1) %>% ungroup() %>% summarize(N=n(), mean (minhaz < -2)*100)

#Stunting a 15% higher. Try longitudinal prevalence of stunting rather than CI
d %>% filter(agedays > 18*30.4167, agedays < 24*30.4167, !is.na(haz), haz > -6) %>% summarize(N=n(), mean (haz < -2)*100)
#Matches closer

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


# Table-number	outcome-measure	outcome-description	outcome-value
# 1	n Iron-folic acid group		13897
# 1	n multiple micronutrient group		14117
# 
# 1	Age <20	Iron-folic acid group maternal age at baseline 	4750 (34.2%)
# 1	Age 20-29	Iron-folic acid group maternal age at baseline 	7462 (53.7%)
# 1	Age >/=30	Iron-folic acid group maternal age at baseline 	1685 (12.1%)
# 
# 1	Age <20	Multiple micronutrient group maternal age at baseline 	4749 (33.6%)
# 1	Age 20-29	Multiple micronutrient group maternal age at baseline 	7526 (53.3%)
# 1	Age >/=30	Multiple micronutrient group maternal age at baseline 	1842 (13.1%)
# 


#baseline measures
df <- d %>% group_by(subjid) %>% arrange(agedays) %>% slice(1)
df <- droplevels(df)

table(df$arm)

#maternal age -note siblings may throw off numbers as dataset is per child...
table(df$arm, df$mage)
table(df$mage[df$arm=="Iron Folic Acid"])
table(df$mage[df$arm=="Multiple Micronutrients"])
prop.table(table(df$mage[df$arm=="Iron Folic Acid"])) * 100
prop.table(table(df$mage[df$arm=="Multiple Micronutrients"])) * 100


# 1	male	Iron-folic acid	51.1 (n = 7100/13901)
# 1	male	Multiple micronutrient	51.6 (n = 7281/14121)
table(df$arm, df$sex)
prop.table(table(df$arm, df$sex), 1) * 100




# 1	stunted at birth	Iron-folic acid group newborn length (cm)	35.7 (N=3680/10297)
# 1	wasted at birth	iron-folic acid group newborn weight (g)	10.8  (N=851/8172)
# 
# 1	stunted at birth	Multiple micronutrient group newborn length (cm)	31.9  (N=3412/10640)
# 1	wasted at birth	Multiple micronutrient group newborn weight (g)	10  (N=881/8529)


#stunting and wasting at birth
df <- d %>% group_by(subjid) %>% arrange(agedays) %>% slice(1) %>% filter(agedays==1)
df <- droplevels(df)

table(df$arm, df$haz < -2)
prop.table(table(df$haz[df$arm=="Iron Folic Acid"] < -2)) * 100
prop.table(table(df$haz[df$arm=="Multiple Micronutrients"] < -2)) * 100

prop.table(table(df$whz[df$arm=="Iron Folic Acid"] < -2)) * 100
prop.table(table(df$whz[df$arm=="Multiple Micronutrients"] < -2)) * 100


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
