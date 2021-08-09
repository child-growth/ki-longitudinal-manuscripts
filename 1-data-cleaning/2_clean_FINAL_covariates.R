
#-----------------------------------------------------------------------------------------
# Process FINAL dataset into a dataset of covariates to be used in the exposure/risk factor
# analysis in the causes and consequences manuscript. 
#
# Output: Single dataset with one row per child and all baseline covariates
#         Time-varying covariates and anthropometry measures processed in a seperate script.
#
# Author: Andrew Mertens (amertens@berkeley.edu)
#-----------------------------------------------------------------------------------------




rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(growthstandards)


d <- readRDS(included_studies_path)



#--------------------------------------------------------
# Calculate longitudinal prevalence of wasting and stunting
# in the first 6 months.
#--------------------------------------------------------

lprev <- d %>% group_by(studyid, country, subjid) %>%
  #only keep it in monthly studies
  filter(measurefreq=="monthly") %>%
  filter(agedays<6*30.4167) %>%
  mutate(wast=as.numeric(whz < -2), stunt=as.numeric(haz < -2)) %>%
  summarize(N=n(), wastprev06=mean(wast, na.rm=T), stuntprev06=mean(stunt, na.rm=T), anywast06=as.numeric(wastprev06>0), anystunt06=as.numeric(stuntprev06>0), 
            pers_wast=as.numeric(wastprev06>=0.5)) %>%
  mutate(pers_wast=ifelse(N>=4,pers_wast,NA))
head(lprev)

table(lprev$anywast06)
table(lprev$anystunt06)
table(lprev$pers_wast)
table(lprev$studyid, lprev$pers_wast)

#Merge in new variables
lprev <- lprev %>% subset(., select = c(studyid, country,subjid, anywast06,  pers_wast))

dim(d)
d <- left_join(d, lprev, by=c("studyid","country","subjid"))
dim(d)




#--------------------------------------------------------
# Calculate birth month and month from birth week if birthmonth is missing
#--------------------------------------------------------

#fill in missing birthmonth
table(d$brthmon)
d$brthmon[is.na(d$brthmon)] <- ceiling(d$brthweek[is.na(d$brthmon)]/4.42)
table(d$brthmon)

#fill in missing month if brthmonth is present
table(d$month)
d$month[is.na(d$month) & !is.na(d$brthmon)] <- floor(d$brthmon[is.na(d$month) & !is.na(d$brthmon)] + d$agedays[is.na(d$month)& !is.na(d$brthmon)]/30.4167) %% 12 +1
table(d$month)


#--------------------------------------------------------
#Calculate stunting and wasting at enrollment and keep one observation per child
#Also check if children without a recorded birthweight or birthlength have WAZ or HAZ in the first year of life
#--------------------------------------------------------
d <- d %>% group_by(studyid, country, subjid) %>% 
  arrange(studyid, subjid, agedays) %>% 
  mutate(enstunt= as.numeric(ifelse(length(first(haz[complete.cases(haz)]))==0,NA,first(haz[complete.cases(haz)])) < -2),
         enwast= as.numeric(ifelse(length(first(whz[complete.cases(whz)]))==0,NA,first(whz[complete.cases(whz)])) < -2),
         birthLAZ= haz,
         birthWAZ= waz) %>%
  #keep one observation per child
  slice(1) 

table(is.na(d$birthwt), d$agedays > 7)

#df <- d %>% filter(studyid=="MAL-ED")
# df <- d %>% filter(studyid == "Burkina Faso Zn", country == "BURKINA FASO", subjid == 117101)
# ifelse(length(first(df$haz[complete.cases(df$haz)]))==0,NA,first(df$haz[complete.cases(df$haz)]))


#keep where anthro is measured on first 7 days, but birth anthro is not recorded
d$birthLAZ[d$agedays>7] <- NA 
d$birthWAZ[d$agedays>7] <- NA
d$birthmeas_age <- NA
d$birthmeas_age[d$agedays <= 7] <- d$agedays[d$agedays <= 7]

#Drop anthropometry measures (seperate long-form dataset used to calculate anthropometry outcomes)
d <- d %>% subset(., select=-c(agedays, haz, waz, whz)) 

table(paste0(d$studyid,"-",d$country), d$enwast)
table(paste0(d$studyid,"-",d$country), d$enstunt)



#--------------------------------------------------------
#Merge in birthmonth from provide
#--------------------------------------------------------

gc()
d$subjid <- as.numeric(d$subjid)
gc()


provide <- readRDS(paste0(ghapdata_dir, "covariate creation intermediate datasets/derived covariate datasets/PROVIDE_birthmonth.rds"))
provide$studyid <- "PROVIDE"
provide$birthmon_provide <- as.numeric(as.character(provide$birthmon_provide))

unique(d$studyid)
table(is.na(d$brthmon[d$studyid=="PROVIDE"]))
d <- left_join(d, provide, by = c("studyid", "subjid"))
table(d$birthmon_provide)
d$brthmon[d$studyid=="PROVIDE"] <- d$birthmon_provide[d$studyid=="PROVIDE"]
table(is.na(d$brthmon[d$studyid=="PROVIDE"]))
table((d$brthmon[d$studyid=="PROVIDE"]))
d <- d %>% subset(., select = -c(birthmon_provide))


#--------------------------------------------------------
# Merge in household assets-based wealth index
# (Calculated from first principal component of a PCA analysis)
# of asset indicators
#--------------------------------------------------------

#convert subjid to character for the merge with covariate dataset
d$subjid <- as.character(d$subjid)

#load in pca results
pca <- readRDS(paste0(deriveddata_dir,"allGHAPstudies-HHwealth.rds"))

#Strip grant identifiers from study id's
pca$studyid<- gsub("^k.*?-" , "", pca$studyid)

table(pca$studyid, pca$hhwealth_quart)

#Merge into main dataframe
pca <- as.data.frame(pca)
pca$subjid <-as.character(pca$subjid)

dim(pca)
dim(d)
d <- left_join(d, pca, by=c("studyid", "country", "subjid"))
dim(d)
#Note, only the COHORTS study has SES categories from a PCA, but no/incomplete indicators to calculate PCA from
#Clean and merge that data here:
#merge in ses variable for COHORTS for all countries except INDIA. The other countries have wealth based on 
#an asset-based PCA index, but India is based on father's occupation.
d$hhwealth_quart <- as.character(d$hhwealth_quart)
chtses<- d$ses[is.na(d$hhwealth_quart) & d$studyid=="COHORTS" & d$country!="INDIA"]
chtses[chtses==""] <- NA
chtses[chtses=="Low"] <- "Wealth Q1"
chtses[chtses=="Lower-mi"] <- "Wealth Q2"
chtses[chtses=="Middle"] <- "Wealth Q3"
chtses[chtses=="Upper-mi"] <- "Wealth Q4"
chtses[chtses=="Upper"] <- "Wealth Q4"

d$hhwealth_quart[is.na(d$hhwealth_quart) & d$studyid=="COHORTS" & d$country!="INDIA"] <-chtses
d$hhwealth_quart <- factor(d$hhwealth_quart)

#Check and make sure all merged correctly
df <- d %>% filter(!is.na(hhwealth_quart)) %>% group_by(studyid, subjid) %>% slice(1)
pca_unique <- pca %>% filter(!is.na(hhwealth_quart)) %>% group_by(studyid, subjid) %>% slice(1)
table(pca_unique$studyid, pca_unique$hhwealth_quart)
table(df$studyid, df$hhwealth_quart)

#remove space for longbow
d$hhwealth_quart <- as.character(d$hhwealth_quart)
d$hhwealth_quart <- gsub(" ", "", d$hhwealth_quart)
d$hhwealth_quart <- factor(d$hhwealth_quart, levels=c("WealthQ4","WealthQ3","WealthQ2","WealthQ1"))
table(d$hhwealth_quart)

#--------------------------------------------------------------------------
# Code Food security
#--------------------------------------------------------------------------

#Code into 3 harmonized categories (so that all 3 levels are present across all studies)
# By recoding the levels from the HHS, HFAIS, and FAST scales into 3 categories
table(d$studyid, d$hfoodsec)
unique(d$hfoodsec)

d$temp <- NA
d$temp[d$hfoodsec=="Mildly Food Insecure"] <- "Mildly Food Insecure"
d$temp[d$hfoodsec=="Food Insecure"] <- "Food Insecure"
d$temp[d$hfoodsec=="Food secure"] <- "Food Secure"

d$temp[d$hfoodsec=="Neither Deficit Nor Surplus"] <- "Mildly Food Insecure"
d$temp[d$hfoodsec=="Sometimes Deficit"] <- "Food Insecure"
d$temp[d$hfoodsec=="Deficit In Whole Year"] <- "Food Insecure"
d$temp[d$hfoodsec=="Surplus"] <- "Food Secure"

d$temp[d$hfoodsec=="Neither deficit nor surplus"] <- "Mildly Food Insecure"
d$temp[d$hfoodsec=="Sometimes deficit"] <- "Food Insecure"
d$temp[d$hfoodsec=="Deficit in whole year"] <- "Food Insecure"

d$temp[d$hfoodsec=="Mildly Food Insecure Access"] <- "Mildly Food Insecure"
d$temp[d$hfoodsec=="Moderately Food Insecure Access"] <- "Food Insecure"
d$temp[d$hfoodsec=="Severely Food Insecure Access"] <- "Food Insecure"
d$temp[d$hfoodsec=="Food Secure"] <- "Food Secure"

table(d$studyid[!is.na(d$temp)], d$temp[!is.na(d$temp)])


d$hfoodsec <- d$temp
d <- d %>% subset(., select=-c(temp))

table(d$studyid, d$hfoodsec)

d$hfoodsec <- factor(d$hfoodsec, levels=c("Food Secure", "Mildly Food Insecure", "Food Insecure"))



#--------------------------------------------------------------------------
# birth characteristics
#--------------------------------------------------------------------------


# drop gestational age in studies with no variations (measured it at the month level)
d$gagebrth[d$studyid=="GMS-Nepal"] <- NA
#drop gestational age in study where GA is mother reported and unbelievably high (93% and 80% preterm)
d$gagebrth[d$studyid=="SAS-CompFeed"] <- NA
d$gagebrth[d$studyid=="EE"] <- NA


#parity
#Combine parity and birthorder to have sufficient data to analyze
#Parity (which includes stillborns past a certain gestational age) is assumed
#to approximate child birth order
table(d$studyid[!is.na(d$parity)], d$parity[!is.na(d$parity)])
table(d$studyid[!is.na(d$brthordr)], d$brthordr[!is.na(d$brthordr)])

d$parity[is.na(d$parity)] <- d$brthordr[is.na(d$parity)]
d$parity[is.na(d$parity)] <- d$gravida[is.na(d$parity)]


#Shift obs in SAS-FoodSuppl to make 1==firstborn
d$parity[d$studyid=="SAS-FoodSuppl"] <- d$parity[d$studyid=="SAS-FoodSuppl"] + 1   

#Fix right shift of Tanzania child, Kenaba, iLiNS-DYAD-M, and Jivita-3 parity
d$parity[d$studyid=="TanzaniaChild2" & d$parity==1] <- NA
d$parity[d$studyid=="TanzaniaChild2"] <- d$parity[d$studyid=="TanzaniaChild2"] - 1  
d$parity[d$studyid=="Keneba"] <- d$parity[d$studyid=="Keneba"] - 1  
d$parity[d$studyid=="iLiNS-DYAD-M"] <- d$parity[d$studyid=="iLiNS-DYAD-M"] - 1  
d$parity[d$studyid=="JiVitA-3"] <- d$parity[d$studyid=="JiVitA-3"] - 1  
table(d$studyid, d$parity)

#Convert birth Zscore to absolute units
table(d$studyid, is.na(d$birthlen))
table(d$studyid, is.na(d$birthwt))

#sex must be "Male" or "Female" for growthstandards package
table(d$sex)
d$sex[!(d$sex %in% c("Male","Female"))] <- NA
table(is.na(d$sex))
#Drop children with missing sex
d <- d %>% filter(!is.na(sex))

#Use agedays-1 as function codes birth age=0
d$birthlen2 <- who_zscore2value(d$birthmeas_age-1, d$birthLAZ, y_var = "lenhtcm" , x_var = "agedays", sex = d$sex)
d$birthwt2 <- who_zscore2wtkg(d$birthmeas_age-1, d$birthWAZ, sex = d$sex) * 1000
d$birthlen2[!is.finite(d$birthlen2)] <- NA
d$birthwt2[!is.finite(d$birthwt2)] <- NA



#Check if children without a recorded birthweight or birthlength have WAZ or HAZ in the first 7 days of life
#and add into birthweight variable

summary(d$birthlen)
summary(d$birthlen2)
summary(d$birthwt)
summary(d$birthwt2)

table(is.na(d$birthlen), is.na(d$birthlen2))
table(is.na(d$birthwt), is.na(d$birthwt2))

d$birthlen[is.na(d$birthlen)] <- d$birthlen2[is.na(d$birthlen)]
d$birthwt[is.na(d$birthwt)] <- d$birthwt2[is.na(d$birthwt)]


table(d$studyid, is.na(d$birthlen))
table(d$studyid, is.na(d$birthwt))

#fix 8 observations in CMC cohort with missing birthweight that still have missingess code (9998) rather than NA
table(df$birthwt==9998)
df$birthwt[df$birthwt==9998] <- NA
#--------------------------------------------------------------------------
# parental characteristics
#--------------------------------------------------------------------------

#single mom
table(d$studyid[!is.na(d$single)], d$single[!is.na(d$single)])


#Merge in post-birth weight measures for jivita-3 and sas-compfeed
mat_weight <- readRDS(paste0(ghapdata_dir,"covariate creation intermediate datasets/derived covariate datasets/maternal_weight_dataset.RDS"))
#Strip grant identifiers from study id's
mat_weight$studyid<- gsub("^k.*?-" , "", mat_weight$studyid)

head(mat_weight)
mat_weight <- mat_weight %>% rename(post_birth_weight=mwtkg)
mat_weight$subjid <- as.character(mat_weight$subjid)

d <- left_join(d, mat_weight, by = c("studyid", "subjid"))
summary(mat_weight$post_birth_weight)
summary(d$post_birth_weight)
d$mwtkg[!is.na(d$post_birth_weight)] <- d$post_birth_weight[!is.na(d$post_birth_weight)]

#Set BMI to missing for these studies, then recalculate below
d$mbmi[!is.na(d$post_birth_weight)] <- NA
d <- d %>% subset(., select = -c(post_birth_weight))

#Calculate bmi from height and weight, and vice versa, for when only 2 of 3 are measured
#bmi
flag <- is.na(d$mbmi) & !is.na(d$mhtcm) & !is.na(d$mwtkg)
d$mbmi[flag] <- d$mwtkg[flag] / (d$mhtcm[flag] / 100)^2

#weight
flag <- is.na(d$mwtkg) & !is.na(d$mhtcm) & !is.na(d$mbmi)
d$mwtkg[flag] <- d$mbmi[flag] * (d$mhtcm[flag] / 100)^2

#height
flag <- is.na(d$mhtcm) & !is.na(d$mwtkg) & !is.na(d$mbmi)
d$mhtcm[flag] <- sqrt(d$mwtkg[flag] / d$mbmi[flag]) * 100

summary(d$mbmi)
summary(d$mwtkg)
summary(d$mhtcm)


table(d$studyid, !is.na(d$mbmi))

#--------------------------------------------------------------------------
# house characteristics
#--------------------------------------------------------------------------

#set to missing any observations of 0 rooms
d$nrooms[d$nrooms==0] <- NA

#check the number of children < 5 and set to missing if 0
table(d$nchldlt5)
table(d$studyid[!is.na(d$nchldlt5)], d$nchldlt5[!is.na(d$nchldlt5)])

#Need to shift full distribution by 1 in studies with 0 marked- 
#  inconsistent marking of subject in the count across studies
#  Some count number of other children, some number of total children
d$nchldlt5[d$studyid=="LCNI-5" & d$nchldlt5==0] <- NA #LCNI has 4 children marked as 0 -drop as
d$nchldlt5[d$studyid=="iLiNS-DOSE" & d$nchldlt5==0] <- NA #ilins-DOSE has 3 children marked as 0 -drop as
d$nchldlt5[d$studyid=="IRC"] <- d$nchldlt5[d$studyid=="IRC"] + 1
d$nchldlt5[d$studyid=="PROVIDE"] <- d$nchldlt5[d$studyid=="PROVIDE"] + 1
d$nchldlt5[d$studyid=="NIH-Crypto"] <- d$nchldlt5[d$studyid=="NIH-Crypto"] + 1
d$nchldlt5[d$studyid=="TanzaniaChild2"] <- d$nchldlt5[d$studyid=="TanzaniaChild2"] + 1
d$nchldlt5[d$studyid=="iLiNS-DYAD-M"] <- d$nchldlt5[d$studyid=="iLiNS-DYAD-M"] + 1
d$nchldlt5[d$studyid=="JiVitA-3"] <- d$nchldlt5[d$studyid=="JiVitA-3"] + 1




#--------------------------------------------------------
# create id variable for unit of independent observation
# (At level of child for most studies, but some trials are cluster-randomized)
#--------------------------------------------------------

d$id <- NA
d$id[d$studyid %in% c("iLiNS-Zinc",
                      "JiVitA-3",    
                      "JiVitA-4",
                      "PROBIT",
                      "SAS-CompFeed")] <-d$clustid[d$studyid %in% c("iLiNS-Zinc",
                                                                    "JiVitA-3",    
                                                                    "JiVitA-4",
                                                                    "PROBIT",
                                                                    "SAS-CompFeed")]
d$id[!(d$studyid %in% c("iLiNS-Zinc",
                        "JiVitA-3",    
                        "JiVitA-4",
                        "PROBIT",
                        "SAS-CompFeed"))] <-d$subjid[!(d$studyid %in% c("iLiNS-Zinc",
                                                                        "JiVitA-3",    
                                                                        "JiVitA-4",
                                                                        "PROBIT",
                                                                        "SAS-CompFeed"))]

#use siteid from PROBIT
d$id[d$studyid %in% c("PROBIT")] <-d$siteid[d$studyid %in% c("PROBIT")]

table(is.na(d$id))


#--------------------------------------------------------
# Classify intervention arms (used in initially-planned analysis)
# Of intervention effects that was scrapped, but also as adjustment variables
#--------------------------------------------------------

arms <- d %>% filter(arm!="") %>% group_by(studyid) %>% do(levels = unique(.$arm))
arms


d$tr <- NA

d$tr[d$studyid=="Serrinha-VitA" & d$arm=="Placebo"] <- "Control"
d$tr[d$studyid=="Serrinha-VitA" & d$arm=="Vitamin A"] <- "VitA"

d$tr[(d$studyid=="WASH-Bangladesh" | d$studyid=="WASH-Kenya")] <- "Other"
d$tr[(d$studyid=="WASH-Bangladesh" | d$studyid=="WASH-Kenya") & (d$arm=="Control" | d$arm=="Passive Control")] <- "Control"
d$tr[(d$studyid=="WASH-Bangladesh" | d$studyid=="WASH-Kenya") & (d$arm=="Nutrition" | d$arm=="Nutrition + WSH")] <- "LNS"

d$tr[d$studyid=="AgaKhanUniv" & d$arm=="Control"] <- "Control"
d$tr[d$studyid=="AgaKhanUniv" & d$arm=="Intervention"] <- "Maternal"

d$tr[d$studyid=="EU" & d$arm=="Placebo"] <- "Control"
d$tr[d$studyid=="EU" & d$arm=="Zinc"] <- "Zinc"

d$tr[d$studyid=="VITAMIN-A" & d$arm=="Control"] <- "Control"
d$tr[d$studyid=="VITAMIN-A" & d$arm=="Vitamin A"] <- "VitA"

d$tr[d$studyid=="Vitamin-B12" ] <- "Other"
d$tr[d$studyid=="Vitamin-B12" & d$arm=="Placebo"] <- "Control"

d$tr[d$studyid=="ZnMort" & d$arm=="IFA"] <- "Control"
d$tr[d$studyid=="ZnMort" & d$arm=="Zinc+IFA"] <- "Zinc"

d$tr[d$studyid=="SAS-CompFeed" & d$arm=="Control"] <- "Control"
d$tr[d$studyid=="SAS-CompFeed" & (d$arm=="Intervention"|d$arm=="")] <- "Other"

d$tr[d$studyid=="SAS-FoodSuppl" ] <- "Other"
d$tr[d$studyid=="SAS-FoodSuppl" & d$arm=="No intervention"] <- "Control"

d$tr[d$studyid=="PROVIDE" ] <- "Other"
d$tr[d$studyid=="PROVIDE" & d$arm=="No Rotarix + No IPV (175)"] <- "Control"

d$tr[d$studyid=="TanzaniaChild2" & d$arm=="Control"] <- "Control"
d$tr[d$studyid=="TanzaniaChild2" & d$arm=="Multivitamin Alone"] <- "Other"
d$tr[d$studyid=="TanzaniaChild2" & (d$arm=="Zinc Alone" | d$arm=="Zinc + Multivitamin")] <- "Zinc"

d$tr[d$studyid=="Burkina Faso Zn" ] <- "Zinc"
d$tr[d$studyid=="Burkina Faso Zn" & d$arm=="Control (no Zinc)"] <- "Control"

d$tr[d$studyid=="Guatemala BSC" ] <- "Other"
d$tr[d$studyid=="Guatemala BSC" & (d$arm=="WPC"|d$arm=="MNT + WPC")] <- "Control"

d$tr[d$studyid=="iLiNS-Zinc" ] <- "LNS"
d$tr[d$studyid=="iLiNS-Zinc" & d$arm=="e.Control"] <- "Control"

#Create secondary dataset for Zinc+LNS vs LNS contrast
iLiNS_Zinc_df <- d[d$studyid=="iLiNS-Zinc" & d$arm!="e.Control", ]
iLiNS_Zinc_df$tr <- "Zinc"
iLiNS_Zinc_df$tr[iLiNS_Zinc_df$arm=="a.LNS-Zn0"] <- "Control"
iLiNS_Zinc_df$studyid <- "iLiNS-Zinc_ZvLNS"

d$tr[d$studyid=="PROBIT" ] <- "Maternal"
d$tr[d$studyid=="PROBIT" & d$arm=="Control group"] <- "Control"

d$tr[d$studyid=="ZVITAMBO" ] <- "VitA"
d$tr[d$studyid=="ZVITAMBO" & d$arm=="Placebo nippled + Placebo Oval"] <- "Control"


d$tr[d$studyid=="COHORTS" & d$arm=="Control"] <- "Control"
d$tr[d$studyid=="COHORTS" & d$arm=="Intervention"] <- "Other"

d$tr[d$studyid=="iLiNS-DOSE" & d$arm=="Control"] <- "Control"
d$tr[d$studyid=="iLiNS-DOSE" & d$arm!="Control"] <- "LNS"

d$tr[d$studyid=="iLiNS-DYAD-M" & d$arm=="Iron and folic acid supplementation"] <- "Control"
d$tr[d$studyid=="iLiNS-DYAD-M" & d$arm!="Iron and folic acid supplementation"] <- "Maternal"


iLiNS_DYADM_df <- d[d$studyid=="iLiNS-DYAD-M" & d$arm!="Multiple micronutrient supplementation", ]
iLiNS_DYADM_df$tr <- "Control"
iLiNS_DYADM_df$tr[iLiNS_DYADM_df$arm!="Iron and folic acid supplementation"] <- "LNS"
iLiNS_DYADM_df$studyid <- "iLiNS_DYADM_LNS"

d$tr[d$studyid=="LCNI-5"& d$arm=="Standard(Control)"] <- "Control"
d$tr[d$studyid=="LCNI-5"& (d$arm=="Milk FS"|d$arm=="Soy FS")] <- "LNS"
d$tr[d$studyid=="LCNI-5"& d$arm=="Likuni Phala"] <- "Other"

d$tr[d$studyid=="JiVitA-3" & d$arm=="Iron Folic Acid"] <- "Control"
d$tr[d$studyid=="JiVitA-3" & d$arm=="Multiple Micronutrients"] <- "Maternal"

d$tr[d$studyid=="JiVitA-4"] <- "Other"
d$tr[d$studyid=="JiVitA-4" & d$arm=="CFC"] <- "Control"
d$tr[d$studyid=="JiVitA-4" & d$arm=="Plumpy Doz"] <- "LNS"



#--------------------------------------------------------
# Drop risk factors without enough studies or unneeded/temporary variables 
#--------------------------------------------------------

colnames(d)

d <- subset(d, select = c(studyid,       subjid,        sex,           month,  country,       region,         arm,           tr,            gagebrth,     
                          brthmon,       parity,       
                          birthwt,       birthlen,      vagbrth,       hdlvry,        mage,          mhtcm,        
                          mwtkg,         mbmi,          meducyrs,      single,        fage,          fhtcm,         feducyrs,     
                          trth2o,        cleanck,       impfloor,      nrooms,        nhh,           nchldlt5,      ses,          
                          earlybf,       hfoodsec,   measurefreq,   anywast06,    
                          pers_wast,     enstunt,       enwast,     hhwealth_quart,      id))


#--------------------------------------------------------
# Convert continious variables to quartiled categorical 
# variables for use as primary exposures
#--------------------------------------------------------



#quantiling functions
quantile_rf <- function(data, A, labs=NULL, Acuts=NULL, units=NULL){
  A<-as.numeric(A)
  if(sum(is.na(A))!=length(A)){
    if(is.null(Acuts)){
      Acuts=c(0, as.numeric(quantile(A, probs = c(.25,.5,.75), na.rm=T)), max(A, na.rm=T))
    }
    
    if(length(Acuts)==3){
      Alevels=c(paste0("<",round(Acuts[2],2)), 
                paste0(">=",round(Acuts[2],2))) 
    }    
    if(length(Acuts)==4){
      Alevels=c(paste0("<",round(Acuts[2],2)), 
                paste0("[",round(Acuts[2],2),"-",round(Acuts[3],2),")"),
                paste0(">=",round(Acuts[3],2))) 
    }
    if(length(Acuts)==5){
      Alevels=c(paste0("<",round(Acuts[2],2)), 
                paste0("[",round(Acuts[2],2),"-",round(Acuts[3],2),")"),
                paste0("[",round(Acuts[3],2),"-",round(Acuts[4],2),")"), 
                paste0(">=",round(Acuts[4],2))) 
    }
    if(length(Acuts)==6){
      Alevels=c(paste0("<",round(Acuts[2],2)), 
                paste0("[",round(Acuts[2],2),"-",round(Acuts[3],2),")"),
                paste0("[",round(Acuts[3],2),"-",round(Acuts[4],2),")"),
                paste0("[",round(Acuts[4],2),"-",round(Acuts[5],2),")"), 
                paste0(">=",round(Acuts[5],2))) 
    }    
    
    
    if(!is.null(labs)){
      Alevels=labs
    }
    if(!is.null(units)){
      Alevels=paste0(Alevels, " ", units)
    }
    
    if(length(unique(Acuts))==length((Acuts))){
      A <- cut(A, include.lowest = T, right = FALSE, breaks=Acuts,labels=Alevels)
    }else{
      A <- cut(A, include.lowest = T, right = FALSE, breaks=4,labels=c("Q1","Q2","Q3","Q4","Q5")[1:(length(Acuts)-1)])
    }
    A <- factor(A)
    
    printdf <- data.frame(id=paste0(data$studyid," ", data$country), A)
    printdf <- printdf %>% filter(!is.na(A))
    printdf <- droplevels(printdf) 
    print(table(printdf$id, printdf$A))
    
    print(table( printdf$A))
    return(A)
  }
}


#A-priori categorical levels
#gestational age at birth
#<37 weeks = preterm
#37-38 weeks = early term
#39-40 weeks = full term (baseline)
#>=41 weeks = late/post term

#maternal BMI
#<18.5 = underweight
#>=18.5 and <25 = normal weight (baseline)
#>=25 and <30 = overweight
#>=30 = obese


#Save continious variables as seperate variables to use as adjustment covariates
d$W_gagebrth <- d$gagebrth
d$W_birthwt <- d$birthwt
d$W_birthlen <- d$birthlen
d$W_mage <- d$mage
d$W_mhtcm <- d$mhtcm
d$W_mwtkg <- d$mwtkg
d$W_mbmi <- d$mbmi
d$W_fage <- d$fage
d$W_fhtcm <- d$fhtcm
d$W_meducyrs <- d$meducyrs
d$W_feducyrs <- d$feducyrs

d$W_nrooms <- d$nrooms
d$W_nhh <- d$nhh
d$W_nchldlt5 <- d$nchldlt5
d$W_parity <- d$parity




#Overall a-priori quantiles
d$gagebrth <- quantile_rf(d, d$W_gagebrth, Acuts=c(0,260,274,max(d$W_gagebrth, na.rm=T)), labs=c("Preterm", "Early term", "Full or late term"))
d$birthwt <- quantile_rf(d, d$W_birthwt, Acuts=c(0,2500,max(d$W_birthwt, na.rm=T)), labs=c("Low birthweight", "Normal or high birthweight"))
d$birthlen <- quantile_rf(d, d$W_birthlen, Acuts=c(0,48, 50, max(d$W_birthlen, na.rm=T)), units="cm")

# Fix Ages in Burkino Faso Zinc so they are categorized correctly by the function, which are based on these categories:
#Categories: <20 years old; 20-29 years old; 30-39 years old; 40-49 years old; 50+ years old
d$W_mage[d$studyid=="Burkina Faso Zn" & d$W_mage==20] <- 18
d$mage <- quantile_rf(d, d$W_mage, Acuts=c(0,20,30,max(d$W_mage, na.rm=T)))

d$mhtcm <- quantile_rf(d, d$W_mhtcm, Acuts=c(0,151,155,max(d$W_mhtcm, na.rm=T)), units="cm")
d$mwtkg <- quantile_rf(d, d$W_mwtkg, Acuts=c(0,52,58,max(d$W_mwtkg, na.rm=T)), units="kg")
d$mbmi <- quantile_rf(d, d$W_mbmi, Acuts=c(0,18.5,max(d$W_mbmi, na.rm=T)), labs=c("Underweight", "Normal weight"))
#d$fage <- quantile_rf(d, d$W_fage, Acuts=c(0,32,38,max(d$W_fage, na.rm=T)))
d$fhtcm <- quantile_rf(d, d$W_fhtcm, Acuts=c(0,162,167,max(d$W_fhtcm, na.rm=T)), units="cm")

#d$fhtcm_rf <- quantile_rf(d, d$W_fhtcm, Acuts=c(0,165,175,max(d$W_fhtcm, na.rm=T)), units="cm")
d$fage <- quantile_rf(d, d$W_fage, Acuts=c(0,30,35,max(d$W_fage, na.rm=T)))


#Make education categorizing function that handles the irregular distribution across studies.
# (As years of education is more country-specific, categorize within studies)
# Function groups subjects into even categories from irregular distributions of education 
# (just tertiling leads to sparsity/R errors)

quantile_rf_edu <- function(d, Avar="meducyrs", to.character=F){
  dfull <-d
  
  print(d$studyid[1])
  print(d$country[1])
  
  A0 <- NULL
  d <- data.frame(id=1:nrow(dfull), A=as.data.frame(dfull[,Avar])[,1])
  
  if(sum(is.na(d$A))!=nrow(d)){
    
    Acuts=c(0, as.numeric(quantile(d$A, probs = c(1/3, 2/3), na.rm=T)), max(d$A, na.rm=T))
    if(length(Acuts)==length(unique(Acuts))){
      
      Alevels=c("Low","Medium","High")
      A1 <- cut(d$A, include.lowest = T, right = T, breaks=Acuts,labels=Alevels)
      A2 <- cut(d$A, include.lowest = T, right = F, breaks=Acuts,labels=Alevels)
      rght=F
      if(min(table(A1)) >= min(table(A2))) rght=T
      A <- cut(d$A, include.lowest = T, right = rght, breaks=Acuts,labels=Alevels)
      
    }else{
      if(Acuts[2]==Acuts[3] & Acuts[2]!=0){
        A<-rep(NA, nrow(d))
        A[d$A < Acuts[2] & !is.na(d$A)] <- "Low"
        A[d$A == Acuts[2] & !is.na(d$A)] <- "Medium"
        A[d$A > Acuts[2] & !is.na(d$A)] <- "High"
        A <- factor(A, levels = c("Low","Medium","High"))
      }else{
        
        if(sum(d$A==0, na.rm=T)>0){
          A0 <- d[d$A==0,]
          A0 <- A0[!is.na(A0$A),]
          A0$A <- "Low"
        }
        
        A <- d[d$A!=0 | is.na(d$A),]
        Acuts=c(0, as.numeric(quantile(A$A, probs = 0.5, na.rm=T)), max(A$A, na.rm=T))
        Alevels=c("Medium","High")    
        A$A <- cut(A$A, include.lowest = T, right = T, breaks=Acuts,labels=Alevels)
        if(!is.null(A0)){
          df<-rbind(A,A0)
        }else{
          df<-A
        }
        
        df <- df %>% arrange(id)
        A <- factor(df$A, levels = c("Low","Medium","High"))
      }
    }
    dfull[,Avar] <- A
    
  }
  dfull <-as.data.frame(dfull)
  if(to.character){
    dfull[,Avar] <- as.character(dfull[,Avar])
  }
  print(class(dfull[,Avar]))
  return(dfull)
}

d$meducyrs <- as.numeric(as.character(d$meducyrs))
d <- d %>% group_by(studyid, country) %>%
  do(quantile_rf_edu(., Avar="meducyrs", to.character=T))
#d <- d %>% arrange(feducyrs, studyid, country, subjid)
d <- d %>% group_by(studyid, country) %>%
  do(quantile_rf_edu(., Avar="feducyrs", to.character=T))
d$meducyrs <- factor(d$meducyrs, levels = c("Low","Medium","High"))
d$feducyrs <- factor(d$feducyrs, levels = c("Low","Medium","High"))

table(d$meducyrs)
table(d$feducyrs)

table(paste0(d$studyid," ", d$country), d$meducyrs)
table(paste0(d$studyid," ", d$country), d$feducyrs)




#Categorize nrooms, nhh, nchild5
table(d$nrooms)
table(paste0(d$studyid," ", d$country), d$nrooms)
nroom<-NA
nroom[d$nrooms<2] <- "1"
nroom[d$nrooms==2] <- "2"
nroom[d$nrooms==3] <- "3"
nroom[d$nrooms>3] <- "4+"
d$nrooms <- as.factor(nroom)
table(d$nrooms)
table(paste0(d$studyid," ", d$country), d$nrooms)


table(d$nhh)  
table(paste0(d$studyid," ", d$country), d$nhh)

nhh<-NA
nhh[d$nhh<4] <- "3 or less"
nhh[d$nhh>3 & d$nhh<6] <- "4-5"
nhh[d$nhh>5 & d$nhh<8] <- "6-7"
nhh[d$nhh>7] <- "8+"
d$nhh <- as.factor(nhh)
table(d$nhh)
table(paste0(d$studyid," ", d$country), d$nhh)


table(d$nchldlt5)
table(paste0(d$studyid," ", d$country), d$nchldlt5)

nchild5<-NA
nchild5[d$nchldlt5==1] <- "1"
nchild5[d$nchldlt5>=2] <- "2+"
d$nchldlt5 <- as.factor(nchild5)
table(d$nchldlt5)
table(paste0(d$studyid," ", d$country), d$nchldlt5)

d$nchldlt5 <- relevel(d$nchldlt5, ref="1")

table(d$parity)
table(paste0(d$studyid," ", d$country), d$parity)

parity<-NA
parity[d$parity==1] <- "1"
parity[d$parity==2] <- "2"
parity[d$parity>2] <- "3+"
d$parity <- as.factor(parity)
table(d$parity)
table(paste0(d$studyid," ", d$country), d$parity)



d$parity <- relevel(d$parity, ref="1")




#---------------------------------------
# Set reference levels
#---------------------------------------

#birthweight
# Low birth weight: < 2500
# healthy birth weight 2500-4200

d$birthwt <- relevel(d$birthwt, ref="Normal or high birthweight")


#birth length: 
#No WHO categories:
#Based on quantiles

d$birthlen <- relevel(d$birthlen, ref=">=50 cm")

#wealth index: 
#wealthiest quartile - Q4 is baseline
table(paste0(d$studyid," ", d$country), d$hhwealth_quart)
d$hhwealth_quart <- relevel(d$hhwealth_quart, ref="WealthQ4")

# children < 5 in HH
#not sure how this could be zero - can you double check this? 
#baseline should be smallest number

d$nchldlt5 <- relevel(d$nchldlt5, ref="1")

#gestational age at birth
#<37 weeks = preterm
#37-38 weeks = early term
#39-40 weeks = full term (baseline)
#>=41 weeks = late/post term

d$gagebrth <- relevel(d$gagebrth, ref="Full or late term")

#maternal BMI (is this measured when pregnant or not? if pregnant, then we may need to change these categories)
#<18.5 = underweight
#>=18.5 and <25 = normal weight (baseline)
#>=25 and <30 = overweight
#>=30 = obese

d$mbmi <- relevel(d$mbmi, ref="Normal weight")

#maternal height (https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3095774/)
#less than 145 cm
#145-149.9 cm
#150-154.9 cm
#155-159.9 cm
#160.0 cm or greater. (baseline)

d$mhtcm <- relevel(d$mhtcm, ref=">=155 cm")

#maternal weight?
d$mwtkg <- relevel(d$mwtkg, ref=">=58 kg")

#mother's/father's education
#lowest education level = baseline
d$meducyrs <- relevel(factor(d$meducyrs), ref="Low")
d$feducyrs <- relevel(factor(d$feducyrs), ref="Low")

#mother's age
#middle = baseline
d$mage <- relevel(d$mage, ref="[20-30)")

#father age
#oldest = baseline
#d$fage <- relevel(d$fage, ref=">=38")
d$fage <- relevel(d$fage, ref=">=35")

#father height
d$fhtcm <- relevel(d$fhtcm, ref=">=167 cm")

#parental education
d$meducyrs <- relevel(d$meducyrs, ref="High")
d$feducyrs <- relevel(d$feducyrs, ref="High")

#number of rooms
d$nrooms <- relevel(d$nrooms, ref="4+")



#Set remaining risk factors to factors
d$brthmon <- factor(d$brthmon)
d$month <- factor(d$month)
d$single <- factor(d$single)
d$vagbrth <- factor(d$vagbrth)
d$hdlvry <- factor(d$hdlvry)
d$hfoodsec <- factor(d$hfoodsec)
d$enstunt <- factor(d$enstunt)
d$sex <- factor(d$sex)
d$meducyrs <- factor(d$meducyrs)

#Check that all risk factor variables are set as factors
d<-as.data.frame(d)
for(i in 1:ncol(d)){
  cat(colnames(d)[i], ": ", class(d[,i]), "\n")
}



#Tabulate missingness
for(i in 1:ncol(d)){
  print(colnames(d)[i])
  print(table(is.na(d[,i])))
  print(levels(d[,i]))
}



#--------------------------------------------
# Check for sparsity across RF levels
#--------------------------------------------

tabRF <- function(d, Avar){
  tab <- table(paste0(d$studyid, " ",d$country), d[,Avar])
  tab <- tab[rowSums(tab)!=0, ]
  print(tab)
}





tabRF(d, "gagebrth")
tabRF(d, "birthwt")
tabRF(d, "birthlen")
tabRF(d, "parity") 
tabRF(d, "mage")
tabRF(d, "mhtcm") 
tabRF(d, "mwtkg") 
tabRF(d, "mbmi") 
tabRF(d, "fage")
tabRF(d, "fhtcm")
tabRF(d, "feducyrs")
tabRF(d, "nrooms")
tabRF(d, "nhh")
tabRF(d, "nchldlt5")




#--------------------------------------------
# Save dataset
#--------------------------------------------



saveRDS(d, temp_clean_covariates_path)


