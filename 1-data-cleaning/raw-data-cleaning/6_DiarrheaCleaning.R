


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(xlsx)
library(haven)

#source("U:/GHAP-Data-Management/HBGDki_functions.R")


#read csv file
d<-fread(paste0(ghapdata_dir,"FINAL.csv"), header = T,
         drop = c( "AGEIMPFL",  #"WTKG", "REGION",   
                   #"HTCM",    "LENCM", 
                   "BAZ", "HCAZ",      
                   "REGCTRY", "REGCTYP", #"CITYTOWN",
                   "HHID",    
                   "FEEDING", "DURBRST", #"BRTHYR", 
                   "ENSTUNT", "FWTKG", "FBMI",
                   "BRFEED", "SUMEP",   "SUMDIAR", "SUMDAYS",
                   "PCTDIAR", "IMPSAN",  "SOAP",    "SAFEH2O", "H2OTIME",
                   "CHICKEN", "COW",     "CATTLE",  "INCTOT", 
                   "INCTOTU", "BFEDFL",  "EXBFEDFL","WEANFL",  "ANMLKFL", "PWMLKFL",
                   "FORMLKFL","BOTTLEFL","H20FEDFL","OTHFEDFL","SLDFEDFL","NBFYES",   "CMFDINT",  "LSSTLFL",
                   "NUMLS",   "BLDSTLFL","LSSTFL_R","NUMLS_R", "BLDSTL_R"
                   ))

gc()

colnames(d) <- tolower(colnames(d))
colnames(d)

#Drop un-needed columns
d <- d %>% subset(., select=c(studyid, subjid, agedays, diarfl,diarfl_r, dur_r))

#Drop studies Vishak added to data product that don't meet inclusion criteria
dim(d)
d <- d[d$studyid!="DIVIDS" & d$studyid!="WomenFirst" & d$studyid!="INCAP",]
dim(d)

#Replace diar flag with 1-day recall 
table(d$studyid, !is.na(d$diarfl))
d$diarfl[is.na(d$diarfl) & !is.na(d$diarfl_r) & d$dur_r==1] <- d$diarfl_r[is.na(d$diarfl) & !is.na(d$diarfl_r) & d$dur_r==1]
table(d$studyid, !is.na(d$diarfl))


#drop unneeded variables
d <- d %>% subset(., select= -c(diarfl_r, dur_r))

#Look for unrealistic diarrhea prevalences
d %>% group_by(studyid) %>% summarize(diar_prev=round(mean(diarfl, na.rm=T)*100,1)) %>% as.data.frame()


#Check how much diarrhea
table(d$studyid, d$diarfl)

#Check how much diarrhea is missing
tab<-table(d$studyid, !is.na(d$diarfl))
tab[,2]/(tab[,1] + tab[,2]) * 100


dfull <- d







#aga khan
d <- read_sas(paste0(ghapdata_dir, "/raw SAS datasets/AgaKhanUniv/childmorbidityandimmunization.sas7bdat"))
head(d)
d$subjido <- gsub("C-Y-C-","",d$frmid)
d$subjido <- gsub("I-Y-C-","",d$subjido)

d$visitnum <- as.numeric(d$visit_)
d$agedays<- round(d$age*30.42)

#a1: During the last 24 hours, has <child> have more than 3 liquid stools (diarrhea)
table(d$a1)

akup <- readRDS(paste0(cohortdata_dir,"akup.rds"))
colnames(akup) <- tolower(colnames(akup))
akup$visitnum <- as.numeric(akup$visitnum )
akup$subjido <- as.character(akup$subjido)
head(akup)

akup <- left_join(akup, d, by=c("subjido","visitnum"))
table(akup$a1)
table(akup$diarfl, akup$a1)

table(d$visitnum)
table(akup$visitnum)

table(d$subjido)
table(akup$subjido)

#There isn't enough info to merge diarrhea with outcome dataset, but could append as its own rows with its own ages
df_akup <- dfull %>% filter(studyid=="AgaKhanUniv")
table(df_akup$diarfl)
table(akup$diarfl)
table(akup$a1)

akup <- akup %>% subset(., select = c(subjid, agedays.x, studyid, a1)) %>% 
                 rename(agedays = agedays.x, diarfl2 = a1)

gc()
dfull$diarfl[dfull$studyid=="AgaKhanUniv"] <- NA

akup$subjid <- as.numeric(akup$subjid)
dfull$subjid <- as.numeric(dfull$subjid)
dfull <- left_join(dfull , akup, by=c("studyid", "subjid", "agedays"))
table(akup$diarfl2)
table(dfull$diarfl2)
dfull$diarfl[!is.na(dfull$diarfl2)] <- dfull$diarfl2[!is.na(dfull$diarfl2)]
dfull<-dfull[,1:4]







#Ilins Dose
d <- read_sas(paste0(ghapdata_dir,"raw SAS datasets/iLiNS-DOSE/morbid18tab.sas7bdat"))
head(d)

table(d$HomNumberStool)
d$HomNumberStool[d$HomNumberStool==88] <- NA
d$HomNumberStool[d$HomNumberStool==99] <- NA
table(d$HomNumberStool>2) #diarrhea defined by 3 or more loose stools


ilnd <- readRDS(paste0(cohortdata_dir,"ilnd.rds"))
colnames(ilnd) <- tolower(colnames(ilnd))
#ilnd$visitnum <- as.numeric(ilnd$visitnum )
head(ilnd)

table(ilnd$diarfl)

#Analysis dataset looks good, just merge in to final dataset
ilnd <- ilnd %>% subset(., select = c(studyid, country, subjid, agedays, diarfl))
head(ilnd)

ilnd$diarfl <- as.numeric(ilnd$diarfl)
dfull <- dfull %>% filter(studyid!="iLiNS-DOSE")
dfull <- bind_rows(dfull, ilnd)
table(dfull$studyid, dfull$diarfl)
table(ilnd$diarfl)





#Tanzania child
d <- read_sas(paste0(ghapdata_dir,"raw SAS datasets/TanzaniaChild2/childnurse.sas7bdat"))
head(d)
colnames(d) <- tolower(colnames(d))

table(d$cndt) #diarrhea today
d$cndt <- d$cndt - 1
mean(d$cndt, na.rm=T)

table(d$cchadm) #visit number

d <- d %>% rename(visitnum=cchadm, diarfl=cndt) %>% mutate(subjid=as.numeric(subjid)) %>% select(subjid, visitnum, diarfl)

tzc2 <- readRDS(paste0(cohortdata_dir,"tzc2.rds"))

colnames(tzc2) <- tolower(colnames(tzc2))
tzc2<- tzc2 %>% select(studyid, subjid, visitnum, country, agedays)
head(tzc2)

table(tzc2$visitnum)
tzc2$visitnum <- as.numeric(tzc2$visitnum)

tzc2 <- left_join(tzc2, d, by=c("subjid","visitnum"))
table(tzc2$diarfl)

tzc2 <- tzc2 %>% subset(., select = c(studyid, country, subjid, agedays, diarfl))
head(tzc2)

tzc2$diarfl <- as.numeric(tzc2$diarfl)
dfull <- dfull %>% filter(studyid!="TanzaniaChild2")
dfull <- bind_rows(dfull, tzc2)
table(dfull$studyid, dfull$diarfl)
table(tzc2$diarfl)

diar_df<-dfull[,1:4]
save(diar_df, file=paste0(ghapdata_dir,"covariate creation intermediate datasets/derived covariate datasets/rawdiar_df_long.Rdata"))


res <-diar_df %>% 
  filter(agedays < 30.4167*6) %>% filter(!is.na(diarfl)) %>%
  group_by(studyid, subjid) %>%
  summarise(n=n(), prev=mean(diarfl, na.rm=T)) %>% 
  filter(n >= 100) %>% #Drop if less than 100 obs 
  ungroup() %>%
  group_by(studyid) %>%
  summarise(num_obs=sum(n), mean_obs=mean(n), mean_prev=mean(prev) *100) %>%
  as.data.frame()
knitr::kable(res, digits=1)

res2 <-diar_df %>% 
  filter(agedays < 30.4167*24) %>% filter(!is.na(diarfl)) %>%
  group_by(studyid, subjid) %>%
  summarise(n=n(), prev=mean(diarfl, na.rm=T)) %>% 
  filter(n >= 100) %>% #Drop if less than 100 obs 
  ungroup() %>%
  group_by(studyid) %>%
  summarise(num_obs=sum(n), mean_obs=mean(n), mean_prev=mean(prev) *100) %>%
  as.data.frame()
knitr::kable(res2, digits=1)


#Drop CMC and IRC, which have 10 and 2 children with enough obs, and unrealisticly high prevalence 
#(probable incorrect mapping/recording of healthy observations)
diar_df$diarfl[diar_df$studyid=="CMC-V-BCS-2002" | diar_df$studyid=="IRC"] <- NA

#Summarize under 6 month  diarrhea
diar_6mo <- diar_df %>% #filter(!is.na(predfeed_fl)) %>% 
  filter(agedays < 30.4167*6) %>%
  group_by(studyid,  subjid) %>%
  mutate(n=n(), perdiar6=as.numeric(mean(diarfl, na.rm=T))) %>%
  ungroup() %>% group_by(studyid) %>% mutate(meanN=mean(n)) %>% filter(meanN >= 100) %>% #Set as NA if less than 100 obs under 6 months
  ungroup() %>% group_by(studyid,subjid) %>% slice(1) %>% subset(., select = -c(n, meanN, agedays, diarfl))
summary(diar_6mo$perdiar6)



#Summarize 0-24 month  diarrhea
diar_24mo <- diar_df %>% #filter(!is.na(predfeed_fl)) %>% 
  filter(agedays < 30.4167*24) %>%
  group_by(studyid,  subjid) %>%
  mutate(n=n(), perdiar24=as.numeric(mean(diarfl, na.rm=T))) %>%
  ungroup() %>% group_by(studyid) %>% mutate(meanN=mean(n)) %>% filter(meanN >= 100) %>% #Set as NA if less than 100 obs under 24 months
  ungroup() %>% group_by(studyid,subjid) %>% slice(1) %>% subset(., select = -c(n, meanN, agedays, diarfl))
summary(diar_24mo$perdiar24)

# head(diar_df)
# diar_df <- left_join(diar_df, diar_6mo, by=c("studyid","subjid"))
# diar_df <- left_join(diar_df, diar_24mo, by=c("studyid","subjid"))

diar <- merge(diar_6mo, diar_24mo, by=c("studyid","subjid"), all.x = T, all.y = T)

save(diar, file=paste0(ghapdata_dir,"covariate creation intermediate datasets/derived covariate datasets/rawdiar_df.Rdata"))

table(diar$studyid)
summary(diar$perdiar6)
summary(diar_6mo$perdiar6)

summary(diar$perdiar24)


table(diar$studyid, diar$perdiar6 < 0.02)
table(diar$studyid, diar$perdiar6 < 0.05)
table(diar$studyid, diar$perdiar24< 0.05)


load(paste0(ghapdata_dir,"covariate creation intermediate datasets/derived covariate datasets/rawdiar_df.Rdata"))

