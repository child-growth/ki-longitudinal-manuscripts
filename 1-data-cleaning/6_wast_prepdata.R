#-----------------------------------
# Wasting analysis
# Objective 1a
# Import data, subset to relevant variables
#-----------------------------------
rm(list=ls())
library(dplyr)
library(ggplot2)
library(data.table)

#--------------------------------------------
# Read in .csv file and save as an .rds file
#--------------------------------------------

d<-fread("U:/data/FINAL/UCB Rally7/Main/adam/FINAL.csv", header = T)

#--------------------------------------------
# Subset to  just identifying and haz data
#--------------------------------------------

#change names to lower case
colnames(d) <- tolower(colnames(d))
d<-d %>% subset(., select=c(studyid, subjid, country, tr, agedays, month, whz, haz, waz))


#--------------------------------------------
#Merge cleaned covariates for full analysis dataset
#--------------------------------------------

#load covariates
cov<-readRDS("U:/ucb-superlearner/stunting rallies/FINAL_clean_covariates.rds")
dim(cov)
dim(d)
d$subjid <- as.character(d$subjid)
df <- left_join(d, cov, by=c("studyid", "subjid", "country"))
dim(df)

saveRDS(df,"U:/sprint_7D_longbow/KI_full_data.rds")

#--------------------------------------------
#Check for duplicate agedays
#--------------------------------------------
dup_age <- d %>% group_by(studyid, subjid, agedays) %>%
  summarize(N=n())
mean(dup_age$N)

#--------------------------------------------
# Mark monthly, quarterly, and yearly-measured 
# studies
#--------------------------------------------
#Drop studies Vishak added to data product that don't meet inclusion criteria
d <- d %>% filter(studyid!="ki1000301-DIVIDS" & studyid!="ki1055867-WomenFirst" & studyid!="ki1135782-INCAP")

#mark measure frequencies
d$measurefreq <- NA

d$measurefreq[d$studyid %in% c(
  "ki0047075b-MAL-ED",   
  "ki1000108-CMC-V-BCS-2002",              
  "ki1000108-IRC",               
  "ki1000109-EE",           
  "ki1000109-ResPak",  
  "ki1017093b-PROVIDE",  
  "ki1066203-TanzaniaChild2",           
  "ki1101329-Keneba",  
  "ki1112895-Guatemala BSC",       
  "ki1113344-GMS-Nepal",             
  "ki1114097-CONTENT"
)] <- "monthly"

d$measurefreq[d$studyid %in% c(
  "ki1112895-iLiNS-Zinc",  
  "kiGH5241-JiVitA-3",          
  "kiGH5241-JiVitA-4", 
  "ki1148112-LCNI-5",          
  "ki1017093-NIH-Birth",
  "ki1017093c-NIH-Crypto",   
  "ki1119695-PROBIT",         
  "ki1000304b-SAS-CompFeed",   
  "ki1000304b-SAS-FoodSuppl",   
  "ki1126311-ZVITAMBO",   
  "ki1114097-CMIN",                 
  "ki1135781-COHORTS"
)] <- "quarterly"

d$measurefreq[d$studyid %in% c(
  "ki1000110-WASH-Bangladesh",       
  "ki1000111-WASH-Kenya",  
  "ki1148112-iLiNS-DOSE",     
  "ki1148112-iLiNS-DYAD-M", 
  "ki1033518-iLiNS-DYAD-G",
  "ki1000125-AgaKhanUniv",           
  "ki1112895-Burkina Faso Zn",    
  "ki1000304-VITAMIN-A",  
  "ki1000304-Vitamin-B12",
  "ki1000107-Serrinha-VitA",   
  "ki1000304-EU",        
  "ki1000304-ZnMort"
)] <- "yearly"



#Mark COHORTS and CMIN cohorts with different measurement frequency than quarterly
d$measurefreq[d$studyid=="ki1114097-CMIN" & d$country=="BANGLADESH"] <- "monthly"
d$measurefreq[d$studyid=="ki1114097-CMIN" & d$country=="PERU"] <- "monthly"
d<- d[!(d$studyid=="ki1135781-COHORTS" & d$country=="BRAZIL"),] #Drop because yearly but not an RCT
d<- d[!(d$studyid=="ki1135781-COHORTS" & d$country=="SOUTH AFRICA"),] #Drop because yearly but not an RCT


#--------------------------------------------
# Save just identifying and haz data
#--------------------------------------------
save(d, file="U:/data/compiled_WHZ_dataset.RData")




#--------------------------------------------
# Load only the anthropometry data
#--------------------------------------------

# setwd("U:/data/GHAP_data/")
load("U:/data/compiled_WHZ_dataset.RData")

#--------------------------------------------
# Subset to relevant variables
#--------------------------------------------
colnames(d)=tolower(colnames(d))
d <- d %>% select(studyid, subjid, country, tr, agedays, month, whz, haz, waz, measurefreq)

nrow(d)




#--------------------------------------------
# drop unrealistic HAZ
#--------------------------------------------
nrow(d)
d = filter(d, whz >= -5 & whz <=5)
nrow(d)
#827876

#--------------------------------------------
# order data, create measurement id
#--------------------------------------------
d <- d %>% 
  arrange(studyid,subjid,agedays) %>%
  group_by(studyid,subjid) %>%
  arrange(studyid,subjid,agedays) %>%
  mutate(measid=seq_along(subjid)) 

# count number of studies
length(names(table(d$studyid)))

# table of studies
table(d$studyid)
table(d$studyid,d$country)

#convert subjid to character for the merge with covariate dataset
d$subjid <- as.character(d$subjid)


#Add region variable
#Add regions
d <- d %>% mutate(region = case_when(
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



#--------------------------------------------
# Save intervention effects dataset
#--------------------------------------------

save(d,file="U:/Data/Wasting/int_wasting_data.RData")

#--------------------------------------------
# Subset to and save risk factor data
#--------------------------------------------

#Keep monthly and quarterly studies
d <- d %>% filter(measurefreq!="yearly")

save(d,file="U:/Data/Wasting/rf_wasting_data.RData")


#--------------------------------------------
# Subset to and save descriptive epi data
#--------------------------------------------

#--------------------------------------------
# drop trial arms with intervention impact on HAZ
# -either based on published literature or analysis
# of effects on CI of Wasting by 24months of age
#--------------------------------------------
d=d[-which(d$studyid=="kiGH5241-JiVitA-4" & d$tr!="Control"),]
d=d[-which(d$studyid=="ki1119695-PROBIT" & d$tr!="Control"),]
d=d[-which(d$studyid=="ki1000304b-SAS-FoodSuppl" & d$tr!="Control"),]
d=d[-which(d$studyid=="ki1112895-iLiNS-Zinc" & d$tr!="Control"),]
d=d[-which(d$studyid=="ki1000304b-SAS-CompFeed" & d$tr!="Control"),]
d=d[-which(d$studyid=="kiGH5241-JiVitA-3" & d$tr!="Control"),]
d=d[-which(d$studyid=="ki1135781-COHORTS" & d$tr=="Other"),]


save(d,file="U:/Data/Wasting/Wasting_data.RData")


#--------------------------------------------
# plot HAZ by agedays for included studies
#--------------------------------------------
# pdf("U:/Figures/whz-scatter-1a.pdf",width=15,height=15,onefile=TRUE)
# ggplot(d[d$agedays<=365*2,],aes(x=agedays,y=whz))+geom_point(alpha=0.3)+geom_smooth()+
#   facet_wrap(~studyid+country)+geom_hline(yintercept=-2,linetype="dashed",col="red")
# dev.off()



