
rm(list=ls())
library("haven")
library("tidyverse")


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
# ki0047075b-MAL-ED           
#-------------------------------

e <- read.csv("U:/git/hbgd/ki0047075b/MALED-201707/adam/full_ki0047075b_MALED_201707.csv")
df<-load_san("U:/data/mled.rds")

#may have to use compiled dataset values or search raw data


#Load SES data
d <- read.csv("U:/data/MALED-201501/import/WAMI_to24.csv")
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
id <- readRDS("U:/data/mled.rds")
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

dsan<-bind_rows(dsan, d)


#-------------------------------
# ki1000107-Serrinha-VitA     
#-------------------------------

d<-load_san("U:/data/svta.rds","sanitatn")
#Not enough information to determine in analysis dataset

d<-read_sas("U:/git/hbgd/ki1000107/Serrinha-VitA/raw/final_dataset.sas7bdat")
head(d)
table(d$toilet)

#Insufficient info to clssify. Just toilet presence

#-------------------------------
# ki1000110-WASH-Bangladesh     
#-------------------------------

d<-load_san("U:/data/wsb.rds", "sanitatn")

cat(paste(shQuote(unique(d$sanitatn)), collapse=", "))

improved <- c("Own latrine|concrete slb", 
              "Own latrine|concrete slb|potty",  "Own latrine|concrete slb|waterseal",
              "Own latrine|concrete slb|waterseal|potty", "Own latrine|waterseal")

missing <- c("NA")

d$impsan<-ifelse(d$sanitatn %in% improved, 1, 0)
d$impsan[d$sanitatn %in% missing] <- NA
d$impsan[is.na(d$sanitatn)] <- NA
table(d$impsan)

dsan<-bind_rows(dsan, d)


#-------------------------------
# ki1000111-WASH-Kenya    
#-------------------------------

d<-load_san("U:/data/wsk.rds", "imprlat")
table(d$imprlat)

d$impsan <- as.numeric(d$imprlat)

dsan<-bind_rows(dsan, d)


#-------------------------------
# ki1000125-AgaKhanUniv       
#-------------------------------

d<-load_san("U:/data/akup.rds", "sanitatn")

d$impsan<-ifelse(d$sanitatn=="Latrine with flush system", 1, 0)
d$impsan[is.na(d$sanitatn)] <- NA
table(d$impsan)

dsan<-bind_rows(dsan, d)


#-------------------------------
# ki1000304-VITAMIN-A        
#-------------------------------

d<-load_san("U:/data/vita.rds", "sanitatn")
d$impsan<-ifelse(d$sanitatn=="Flush latrine", 1, 0)
d$impsan[is.na(d$sanitatn)] <- NA
table(d$impsan)

dsan<-bind_rows(dsan, d)

#-------------------------------
# ki1000304-ZnMort          
#-------------------------------

d<-load_san("U:/data/zmrt.rds", "sanitatn")

d$impsan<-ifelse(d$sanitatn=="Family owns toilet", 1, 0)
d$impsan[is.na(d$sanitatn)] <- NA
table(d$impsan)

dsan<-bind_rows(dsan, d)


#-------------------------------
# ki1000304b-SAS-FoodSuppl    
#-------------------------------

d<-load_san("U:/data/fspp.rds", "sanitatn")

d$impsan<-ifelse(d$sanitatn=="Private latrine", 1, 0)
d$impsan[is.na(d$sanitatn)] <- NA
table(d$impsan)

#Check raw data -only 1 in the clean
d<-read_sas("U:/git/hbgd/ki1000304b/SAS-FoodSuppl/raw/f2_baseline.sas7bdat")
head(d)
table(d$m_defaec)

#3= private latrine , 4=public latrine , 5= open field 

#No variation- only one imrproved

#-------------------------------
# ki1017093-NIH-Birth         
#-------------------------------

d<-load_san("U:/data/nbrt.rds", "sanitatn")

improved <- c("Septic tank or toilet", 
              "Water-sealed or slab latrine")

d$impsan<-ifelse(d$sanitatn %in% improved, 1, 0)
d$impsan[is.na(d$sanitatn)] <- NA
table(d$impsan)


dsan<-bind_rows(dsan, d)


#-------------------------------
# ki1017093b-PROVIDE        
#-------------------------------

d<-load_san("U:/data/prvd.rds", "sanitatn")


improved <- c("Septic tank or toilet", 
              "Water-sealed or slab latrine")

d$impsan<-ifelse(d$sanitatn %in% improved, 1, 0)
d$impsan[is.na(d$sanitatn)] <- NA
table(d$impsan)

dsan<-bind_rows(dsan, d)


#-------------------------------
# ki1017093c-NIH-Crypto      
#-------------------------------

d<-load_san("U:/data/ncry.rds", "sanitatn")

improved <- c("Septic tank or toilet", 
              "Water-sealed or slab latrine",
              "VIP with water seal",
              "Poor flash","Flash toilet")

d$impsan<-ifelse(d$sanitatn %in% improved, 1, 0)
d$impsan[is.na(d$sanitatn)] <- NA
table(d$impsan)

dsan<-bind_rows(dsan, d)


#-------------------------------
# ki1112895-Burkina Faso Zn  
#-------------------------------

d<-load_san("U:/data/bfzn.rds", "sanitatn")
d$impsan <- as.numeric(d$sanitatn)
d$impsan[d$sanitatn==9] <- NA

#Check raw data to see source of var
#Variable is an indicator for improved sanitation

dsan<-bind_rows(dsan, d)


#-------------------------------
# ki1114097-CONTENT            
#-------------------------------

d<-load_san("U:/data/cntt.rds", "sanitatn")

#Check raw data to see source of var
d<-read.csv("U:/data/CONTENT-201511/adam/ADS_KI1114097_CONTENT_201511.csv")
colnames(d) <- tolower(colnames(d))

d <- d %>% 
  group_by(studyid, country, subjid) %>%
  arrange(agedays) %>%
  slice(1) %>% subset(., select=c(studyid, country, subjid, sanitatn)) 

table(d$sanitatn)

improved <- c("Drain connected inside house","Outside Drain")

d$impsan<-ifelse(d$sanitatn %in% improved, 1, 0)
d$impsan[is.na(d$sanitatn)] <- NA
table(d$impsan)

dsan<-bind_rows(dsan, d)


#-------------------------------
# ki1135781-COHORTS          
#-------------------------------

df<-load_san("U:/data/cort.rds")
df <- df %>% subset(., select =c(subjid,studyid,subjido, country)) %>% group_by(subjido) %>% slice(1)
#Check raw data to find sanitation variable


d<-read_sas("U:/data/COHORTS-201509/import/cohorts_sep22.sas7bdat")
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
# ki1148112-iLiNS-DOSE       
#-------------------------------

d<-load_san("U:/data/ilnd.rds", "sanitatn")

d$impsan <- ifelse(d$sanitatn=="Regular Pit Latrine",0,1)
d$impsan[is.na(d$impsan)] <- NA
table(d$impsan)

dsan<-bind_rows(dsan, d)


#-------------------------------
# ki1148112-iLiNS-DYAD-M       
#-------------------------------

d<-load_san("U:/data/ildm.rds", "sanitatn")

#mostly missing from 

library(xlsx)
df <- read.xlsx("U:/data/iLiNS-DYAD-M/import/export_form_13a_2016-01-19-1526.xlsx", sheetName="export_form_13a")
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
# ki1148112-LCNI-5      
#-------------------------------

d<-load_san("U:/data/lcn5.rds", "sanitatn")


d$impsan<-ifelse(d$sanitatn=="Vent.impr.pit latrine", 1, 0)
d$impsan[d$sanitatn=="Other"] <- NA
d$impsan[is.na(d$sanitatn)] <- NA
table(d$impsan)

dsan<-bind_rows(dsan, d)


#-------------------------------
# kiGH5241-JiVitA-3     
#-------------------------------

d<-load_san("U:/data/jvt3.rds", "sanitatn")

improved <- c("Water sealed/slab", 
              "Flush toilet")

d$impsan<-ifelse(d$sanitatn %in% improved, 1, 0)
d$impsan[is.na(d$sanitatn)] <- NA
table(d$impsan)

dsan<-bind_rows(dsan, d)


#-------------------------------
# kiGH5241-JiVitA-4   
#-------------------------------

d<-load_san("U:/data/jvt4.rds", "sanitatn")

improved <- c("Water sealed/slab", 
              "Flush toilet")

d$impsan<-ifelse(d$sanitatn %in% improved, 1, 0)
d$impsan[is.na(d$sanitatn)] <- NA
table(d$impsan)

dsan<-bind_rows(dsan, d)


#-------------------------------
# ilin-dyad-g 
#-------------------------------



# d<-read_sas("U:/data/iLins-Dyad-G/iLiNS-DYAD-G-201804/import/camf_long.sas7bdat")
# head(d)
# d<-read_sas("U:/data/iLins-Dyad-G/iLiNS-DYAD-G-201804/import/namf.sas7bdat")
# head(d)
# d<-read_sas("U:/data/iLins-Dyad-G/iLiNS-DYAD-G-201804/import/ws.sas7bdat")
# head(d)


#No sanitation data


#-------------------------------
# examine full dataset
#-------------------------------
dsan$impsan[dsan$impsan==9] <- NA
table(dsan$studyid, dsan$impsan)

head(dsan)

dsan <- dsan %>% subset(., select = -c(agedays, sanitatn, imprlat, subjido))

save(dsan, file="U:/data/Raw Data Cleaning/improved_sanitation_dataset.Rdata")





