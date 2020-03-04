

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
# CONTENT         
#--------------------------------------------
d <- dfull %>% filter(studyid == "CONTENT")         


#--------------------------------------------
# PROBIT  
#--------------------------------------------
d <- dfull %>% filter(studyid == "PROBIT")  


#--------------------------------------------
# MAL-ED         
#--------------------------------------------
d <- dfull %>% filter(studyid == "MAL-ED")         
df <- d %>% filter(!is.na(whz)) %>% group_by(subjid) %>% arrange(agedays) %>% slice(1)
#outcome-measure	Cohort	publication n	outcome-value
# Sample size with complete data	BGD	265	206
# INV	251	200
# NEB	240	208
# BRF	233	81
# PEL	303	198
# SAV	314	199
# TZH	262	199

table(df$country)

# WAZ (at enrollment)	
# BGD	265	-1.3
# INV	251	-1.3
# NEB	240	-0.9
# BRF	233	-0.2
# PEL	303	-0.6
# SAV	314	-0.4
# TZH	262	-0.2

df %>% group_by(country) %>% 
  summarize(N=n(), mean(waz))

# Maternal height (cm)	
# BGD	265	148.9
# INV	251	151.2
# NEB	240	149.6
# BRF	233	154.9
# PEL	303	149.8
# SAV	314	158.7
# TZH	262	155.8

df %>% group_by(country) %>% summarize(mean(W_mhtcm, na.rm=T))



#--------------------------------------------
# CMC-V-BCS-2002  
#--------------------------------------------
d <- dfull %>% filter(studyid == "CMC-V-BCS-2002")  
df <- d %>% filter(!is.na(haz)) %>% group_by(subjid) %>% arrange(agedays) %>% slice(1)

#gladstone 2011
#373 finished 3 years of followup

#187 female 186 males
table(df$sex)

# Birth weight 
# Missing 8 
# <2.5 kg 43 
# ≥2.5 kg 322
table(is.na(df$W_birthwt))
table(df$W_birthwt < 2500)

table(df$W_birthwt)

#--------------------------------------------
# IRC            
#--------------------------------------------
d <- dfull %>% filter(studyid == "IRC")            


#--------------------------------------------
# EE              
#--------------------------------------------
d <- dfull %>% filter(studyid == "EE")              


#--------------------------------------------
# ResPak          
#--------------------------------------------
d <- dfull %>% filter(studyid == "ResPak")          


#--------------------------------------------
# VITAMIN-A      
#--------------------------------------------
d <- dfull %>% filter(studyid == "VITAMIN-A")      


#--------------------------------------------
# SAS-CompFeed   
#--------------------------------------------
d <- dfull %>% filter(studyid == "SAS-CompFeed")   


#--------------------------------------------
# SAS-FoodSuppl  
#--------------------------------------------
d <- dfull %>% filter(studyid == "SAS-FoodSuppl")  


#--------------------------------------------
# NIH-Birth      
#--------------------------------------------
d <- dfull %>% filter(studyid == "NIH-Birth")      


# outcome-description	publication n	outcome-value
# 392	
# No cryptosporidium infection mean HAZ at birth	90	(.99, -.94)
# No cryptosporidium infection mean WAZ at birth	90	-1.38
# No cryptosporidium infection percent male	90	57
# 
# Any cryptosporidium infection mean HAZ at birth	302	(.97, -.96)
# Any cryptosporidium infection mean WAZ at birth	302	-1.41
# Any cryptosporidium infection percent male	302	55

#numbers won't match exactly because I can't stratify by crypto status
df <- d %>% group_by(subjid) %>% arrange(agedays) %>% filter(agedays < 7) %>% slice(1)
df <- droplevels(df)

table(df$sex)
prop.table(table(df$sex))

summary(df$haz)
summary(df$whz)

#Seems to match, though male percent is less
#--------------------------------------------
# PROVIDE        
#--------------------------------------------
d <- dfull %>% filter(studyid == "PROVIDE")        

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
# NIH-Crypto     
#--------------------------------------------
d <- dfull %>% filter(studyid == "NIH-Crypto")     

df <- d %>% group_by(subjid)  %>% filter(!is.na(haz)) %>% summarize(N=n())
table(df$N)

df <- d %>% group_by(subjid) %>% arrange(agedays) %>% slice(1) #%>% filter(agedays < 7)
df <- droplevels(df)
table(df$agedays)

#Urban site:

# outcome-measure	outcome-description	publication n	outcome-value
# Female sex	No crypto	89	50 (56%)
# Any crypto	161	92 (57%)
# 
# Mean WAZ at birth	No crypto	89	-1.297
# Any crypto	161	-1.287
# 
# Mean LAZ at birth	No crypto	89	-0.979
# Any crypto	161	-0.938
# 
# Mean maternal age	No crypto	89	23.7
# Any crypto	161	24.2

table(df$siteid, df$sex)
prop.table(table(df$siteid, df$sex), 1) * 100
summary(df$haz)
summary(df$waz)

prop.table(table(df$siteid, df$haz < -2), 1) * 100
#Stunting percent matches

summary(df$W_mage)

#load raw data
d <- read.csv("U:/data/nih-crypto/NIH-Crypto-201707/adam/full_NIH_Crypto_Final.csv")
colnames(d) <- tolower(colnames(d))
head(d)
length(unique(d$subjid))
d <- d %>% filter(!is.na(haz))
length(unique(d$subjid))
#Matches KI dataset

#--------------------------------------------
# TanzaniaChild2 
#--------------------------------------------
d <- dfull %>% filter(studyid == "TanzaniaChild2") 

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
# Keneba         
#--------------------------------------------
d <- dfull %>% filter(studyid == "Keneba")         


#--------------------------------------------
# Burkina Faso Zn 
#--------------------------------------------
d <- dfull %>% filter(studyid == "Burkina Faso Zn") 


#--------------------------------------------
# Guatemala BSC  
#--------------------------------------------
d <- dfull %>% filter(studyid == "Guatemala BSC")  


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
# iLiNS-Zinc      
#--------------------------------------------
d <- dfull %>% filter(studyid == "iLiNS-Zinc")      
d <- droplevels(d)

# outcome-measure	outcome-description	publication n	outcome-value
# LAZ	LAZ at 9mo, LNS-Zn0	602	-1.22 ± 1.07
# LAZ	LAZ at 18mo, LNS-Zn0	602	-1.44 ± 1.05
# WAZ	WAZ at 9mo, LNS-Zn0	602	-1.42 ± 1.10
# WAZ	WAZ at 18mo, LNS-Zn0	602	-1.22 ± 0.94
# WLZ	WLZ at 9mo, LNS-Zn0	602	-0.99 ± 1.06
# WLZ	WLZ at 18mo, LNS-Zn0	602	-0.72 ± 0.89

table(d$arm)
d %>% filter(arm=="a.LNS-Zn0", agedays > 8* 30.4167, agedays < 10 * 30.4167, !is.na(whz)) %>% group_by(subjid) %>% slice(1) %>% ungroup() %>% summarize(mean(haz), mean(waz), mean(whz))
d %>% filter(arm=="a.LNS-Zn0", agedays > 17* 30.4167, agedays < 19 * 30.4167, !is.na(whz)) %>% group_by(subjid) %>% slice(1) %>% ungroup() %>% summarize(mean(haz), mean(waz), mean(whz))
#matches

#--------------------------------------------
# GMS-Nepal       
#--------------------------------------------
d <- dfull %>% filter(studyid == "GMS-Nepal")       
#not yet published

#--------------------------------------------
# CMIN           
#--------------------------------------------
d <- dfull %>% filter(studyid == "CMIN")           

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
# ZVITAMBO        
#--------------------------------------------
d <- dfull %>% filter(studyid == "ZVITAMBO")        

d %>% group_by(subjid) %>% mutate(lagage=lag(agedays), agediff = agedays-lagage) %>% ungroup() %>% summarize(median(agediff, na.rm=T), mean(agediff, na.rm=T))

df <- d %>% group_by(subjid) %>% arrange(agedays) %>% slice(1)
df <- droplevels(df)

# outcome-measure	Group	publication n	outcome-value
# Maternal age (y)	Aa	2319	24.19
# Ap	2300	24.22
# Pa	2280	23.98
# Pp	2309	23.99

summary(df$W_mage)

# Infant male sex	Aa	2319	1204 (51.9%)
# Ap	2300	1164 (50.7%)
# Pa	2280	1209 (53.1%)
# Pp	2309	1195 (51.8%)
#
table(df$sex)
prop.table(table(df$sex))

# Birth weight (g)	Aa	2319	3002.9
# Ap	2300	2994.9
# Pa	2280	3009.7
# Pp	2309	2994.3
# 
# Length (cm)	Aa	2319	48.68
# Ap	2300	48.53
# Pa	2280	48.68
# Pp	2309	48.61

summary(df$wtkg) *1000
summary(df$lencm) 

#--------------------------------------------
# COHORTS         
#--------------------------------------------
d <- dfull %>% filter(studyid == "COHORTS")         


#--------------------------------------------
# LCNI-5         
#--------------------------------------------
d <- dfull %>% filter(studyid == "LCNI-5")   

# outcome-measure	outcome-description	publication n	outcome-value
# Infant sex, male	Control	209	111 (53.1%)
#                   Milk-LNS	212	107 (50.5%
#                   Soy-LNS	210	103 (49.1%)
#                   CSB	209	98 (46.9%)

df<- d %>% group_by(subjid) %>% arrange(agedays) %>% slice(1) 
df <- droplevels(df)

table(df$arm, df$sex)
sex_by_arm(df)

#                   Age, months	Control	209	6.02
#                   Milk-LNS	212	6.02
#                   Soy-LNS	210	6.04
#                   CSB	209	6.03

df$agemonth = df$agedays/30.4167
summary_by_arm(d=df,  Y="agemonth")

#                   WLZ (weight for length z score)	
#                   Control	209	0.41
#                   Milk-LNS	212	0.5
#                   Soy-LNS	210	0.46
#                   CSB	209	0.42
summary_by_arm(d=df,  Y="whz")

                  
#                   WAZ	Control	209	-0.8
#                   Milk-LNS	212	-0.7
#                   Soy-LNS	210	-0.8
#                   CSB	209	-0.85
summary_by_arm(d=df,  Y="waz")

                 
#                   LAZ	Control	209	-1.64
#                   Milk-LNS	212	-1.59
#                   Soy-LNS	210	-1.68
#                   CSB	209	-1.72
summary_by_arm(d=df,  Y="haz")

#Matches

#--------------------------------------------
# iLiNS-DOSE      
#--------------------------------------------
d <- dfull %>% filter(studyid == "iLiNS-DOSE")      


#--------------------------------------------
# iLiNS-DYAD-M    
#--------------------------------------------
d <- dfull %>% filter(studyid == "iLiNS-DYAD-M")    


#--------------------------------------------
# JiVitA-3        
#--------------------------------------------
d <- dfull %>% filter(studyid == "JiVitA-3")        


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
# JiVitA-4         
#--------------------------------------------
d <- dfull %>% filter(studyid == "JiVitA-4")   


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
