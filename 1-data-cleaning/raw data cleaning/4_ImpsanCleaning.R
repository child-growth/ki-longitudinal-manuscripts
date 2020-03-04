
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(haven)
library(foreign)
setwd(paste0(ghapdata_dir, "raw SAS datasets/"))

#Set cohort data file path
bfdata_dir <- paste0(ghapdata_dir, "covariate creation intermediate datasets/Breastfeeding datasets/")



#-------------------
#Improved sanitation coding rules
#http://www.who.int/water_sanitation_health/monitoring/jmp2012/key_terms/en/

#Must be flush, septic, concrete slab, pour-flush, or ventilated pit, 
#Must not be shared



#Function
load_san <- function(filepath, var=NULL){
  
  d <- readRDS(filepath)
  print(tolower(colnames(d)))
  colnames(d) <- tolower(colnames(d))
  
  if(!is.null(var)){
    vars <- c("studyid", "country", "subjid","agedays", var)
    d <- d %>% subset(., select=vars) %>%
      group_by(studyid, country, subjid) %>%
      arrange(agedays) %>%
      slice(1)
    print(table(d[,var[1]]))
  }
  return(d)
}



# Create pooled sanitation dataframe
dsan<-NULL


#-------------------------------
# MAL-ED           
#-------------------------------

# use raw data values to classify toilets


#Load SES data
d <- read.csv("MALED/WAMI_to24.csv")
head(d)

d <- d %>% group_by(PID, Country_ID) %>% arrange(agedays) %>% slice(1) %>% ungroup()

#Coding
# "No facility/bush/field or bucket toilet = 01;Pit latrine without flush = 02;
# Flush to piped sewer system = 03 ;Flush to septic tank = 04 ;
# Flush to pit latrine = 05 ;Flush to somewhere else = 06;Other = 07"

d$impsan <- NA
d$impsan[d$fsetoilet<3 ] <- 0
d$impsan[d$fsetoilet>2 ] <- 1
d$impsan[d$fsetoilet==7 ] <- NA
table(d$impsan)

#Load ID data
id <- readRDS(paste0(cohortdata_dir,"mled.rds"))
colnames(id) <- tolower(colnames(id))
id <- id %>% 
  group_by(studyid, country, subjid) %>%
  arrange(agedays) %>%
  slice(1) %>% subset(., select=c(studyid, country, subjid, subjido)) 

#merge id and sanitation
d <- d %>% subset(., select=c(PID, impsan)) %>% rename(subjido = PID) 

dim(d)
d<- left_join(d, id, by="subjido")
dim(d)
table(d$impsan)
table(is.na(d$subjid))
table(is.na(d$subjid), d$impsan)
#d$subjido[is.na(d$subjid)]
#Missing IDs are all from pakistan- OK to drop
d<-d[!is.na(d$subjid),]

d <- subset(d, select = -c(subjido))

dsan <- bind_rows(dsan, d)




#-------------------------------
# AgaKhanUniv       
#-------------------------------

d<-load_san(paste0(cohortdata_dir,"akup.rds"),"sanitatn")

d$impsan<-ifelse(d$sanitatn=="Latrine with flush system", 1, 0)
d$impsan[d$sanitatn==""] <- NA
table(d$impsan)

dsan<-bind_rows(dsan, d)


#-------------------------------
# VITAMIN-A        
#-------------------------------

d<-load_san(paste0(cohortdata_dir,"vita.rds"),"sanitatn")
d$impsan<-ifelse(d$sanitatn=="Flush latrine", 1, 0)
d$impsan[d$sanitatn==""] <- NA
table(d$impsan)

dsan<-bind_rows(dsan, d)

#-------------------------------
# ZnMort          
#-------------------------------

d<-load_san(paste0(cohortdata_dir,"zmrt.rds"),"sanitatn")

d$impsan<-ifelse(d$sanitatn=="Family owns toilet", 1, 0)
d$impsan[d$sanitatn==""] <- NA
table(d$impsan)

dsan<-bind_rows(dsan, d)


#-------------------------------
# SAS-FoodSuppl    
#-------------------------------

d<-load_san(paste0(cohortdata_dir,"fspp.rds"),"sanitatn")

d$impsan<-ifelse(d$sanitatn=="Private latrine", 1, 0)
d$impsan[d$sanitatn==""] <- NA
table(d$impsan)

#Check raw data -only 1 in the clean
# d<-read_sas("SAS-FoodSuppl/f2_baseline.sas7bdat")
# head(d)
# table(d$m_defaec)

#3= private latrine , 4=public latrine , 5= open field 

#No variation- only one imrproved

#-------------------------------
# NIH-Birth         
#-------------------------------

d <- load_san(paste0(cohortdata_dir,"nbrt.rds"),"sanitatn")

improved <- c("Septic tank or toilet", 
              "Water-sealed or slab latrine")

d$impsan<-ifelse(d$sanitatn %in% improved, 1, 0)
d$impsan[d$sanitatn==""] <- NA
table(d$impsan)


dsan<-bind_rows(dsan, d)


#-------------------------------
# PROVIDE        
#-------------------------------

d <- load_san(paste0(cohortdata_dir,"prvd.rds"),"sanitatn")


improved <- c("Septic tank or toilet", 
              "Water-sealed or slab latrine")

d$impsan<-ifelse(d$sanitatn %in% improved, 1, 0)
d$impsan[d$sanitatn==""] <- NA
table(d$impsan)

dsan<-bind_rows(dsan, d)


#-------------------------------
# NIH-Crypto      
#-------------------------------

d <- load_san(paste0(cohortdata_dir,"ncry.rds"),"sanitatn")

improved <- c("Septic tank or toilet", 
              "Water-sealed or slab latrine",
              "VIP with water seal",
              "Poor flash","Flash toilet")

d$impsan<-ifelse(d$sanitatn %in% improved, 1, 0)
d$impsan[d$sanitatn==""] <- NA
table(d$impsan)

dsan<-bind_rows(dsan, d)


#-------------------------------
# Burkina Faso Zn  
#-------------------------------

d <- load_san(paste0(cohortdata_dir,"bfzn.rds"),"sanitatn")
d$impsan <- d$sanitatn
d$impsan[d$sanitatn==9] <- NA
d$sanitatn <- as.character(d$sanitatn)

#Check raw data to see source of var
#Variable is an indicator for improved sanitation

dsan<-bind_rows(dsan, d)


#-------------------------------
# CONTENT            
#-------------------------------

d <- load_san(paste0(cohortdata_dir,"cntt.rds"),"sanitatn")

#Check raw data to see source of var
d<-read.csv("CONTENT/ADS_KI1114097_CONTENT_201511.csv")
colnames(d) <- tolower(colnames(d))

d <- d %>% 
  group_by(studyid, country, subjid) %>%
  arrange(agedays) %>%
  slice(1) %>% subset(., select=c(studyid, country, subjid, sanitatn)) 

table(d$sanitatn)

improved <- c("Drain connected inside house","Outside Drain")

d$impsan<-ifelse(d$sanitatn %in% improved, 1, 0)
d$impsan[d$sanitatn==""] <- NA
table(d$impsan)

dsan<-bind_rows(dsan, d)


#-------------------------------
# COHORTS          
#-------------------------------

df <- readRDS(paste0(cohortdata_dir,"cort.rds"))
colnames(df) <- tolower(colnames(df))
df <- df %>% subset(., select =c(subjid,studyid,subjido, country)) %>% group_by(subjido) %>% slice(1)

#Check raw data to find sanitation variable
d<-read_sas("COHORTS/cohorts_sep22.sas7bdat")
head(d)
table(d$c3toilet)

#Recoded as open field as 0 (no toilet); Pit & Scavenger cleaned as 1 (some excreta removal); Flush as 2 (flush toilet)   

table(d$cebu,d$c3toilet)
table(d$delhi,d$c3toilet)
table(d$guatemala,d$c3toilet)

#Except in India, Code 1 is ambigious (some public, some private, some slab, some not), so set as missing
d$impsan <- NA
d$impsan[d$c3toilet==2] <- 1
d$impsan[d$c3toilet==0] <- 0
d$impsan[d$c3toilet==1 & d$delhi==1] <- 0
table(d$impsan)

d <- d %>% filter(!is.na(impsan)) %>% subset(., select = c(newid, impsan) ) %>% rename(subjido=newid)

d$subjido <- as.character(d$subjido)
df <- left_join(df, d, by = c("subjido"))
table(d$impsan)
table(df$impsan)

dsan<-bind_rows(dsan, df)


#-------------------------------
# iLiNS-DOSE       
#-------------------------------

d <- load_san(paste0(cohortdata_dir,"ilnd.rds"),"sanitatn")
  
d$impsan <- ifelse(d$sanitatn=="Regular Pit Latrine",0,1)
d$impsan[d$sanitatn==""] <- NA
table(d$impsan)

dsan <- bind_rows(dsan, d)


#-------------------------------
# iLiNS-DYAD-M       
#-------------------------------

d <- load_san(paste0(cohortdata_dir,"ildm.rds"),"sanitatn")

#mostly missing from cleaned dataset
library(xlsx)
df <- read.xlsx("ilins-dyad-m/export_form_13a_2016-11-28-1741.xlsx", sheetName="export_form_13a")
table(df$SocSanitaryFac)
table(df$SocSpecSanitary)

df$impsan <- ifelse(df$SocSanitaryFac>1,1,0)
df$impsan[is.na(df$SocSanitaryFac) | df$SocSanitaryFac==9] <- NA
table(df$impsan)
df <- df %>% rename(subjid=Participant) %>% mutate(subjid=subjid*10 +1) %>% select(subjid, impsan)

d <- left_join(d, df, by="subjid")
table(d$impsan)

dsan<-bind_rows(dsan, d)



#-------------------------------
# LCNI-5      
#-------------------------------

d <- load_san(paste0(cohortdata_dir,"lcn5.rds"),"sanitatn")


d$impsan<-ifelse(d$sanitatn=="Vent.impr.pit latrine", 1, 0)
d$impsan[d$sanitatn=="Other"] <- NA
d$impsan[d$sanitatn==""] <- NA
table(d$impsan)

dsan<-bind_rows(dsan, d)


#-------------------------------
# JiVitA-3     
#-------------------------------

d <- load_san(paste0(cohortdata_dir,"jvt3.rds"),"sanitatn")

improved <- c("Water sealed/slab", 
              "Flush toilet")

d$impsan<-ifelse(d$sanitatn %in% improved, 1, 0)
d$impsan[d$sanitatn==""] <- NA
table(d$impsan)

dsan<-bind_rows(dsan, d)


#-------------------------------
# JiVitA-4   
#-------------------------------

d <- load_san(paste0(cohortdata_dir,"jvt4.rds"),"sanitatn")

improved <- c("Water sealed/slab", 
              "Flush toilet")

d$impsan<-ifelse(d$sanitatn %in% improved, 1, 0)
d$impsan[d$sanitatn==""] <- NA
table(d$impsan)

dsan<-bind_rows(dsan, d)



#-------------------------------
# examine full dataset
#-------------------------------
dsan$impsan[dsan$impsan==9] <- NA
table(dsan$studyid, dsan$impsan)

head(dsan)

dsan <- dsan %>% subset(., select = -c(agedays, sanitatn, subjido))

save(dsan, file=paste0(ghapdata_dir, "covariate creation intermediate datasets/derived covariate datasets/improved_sanitation_dataset.Rdata"))








