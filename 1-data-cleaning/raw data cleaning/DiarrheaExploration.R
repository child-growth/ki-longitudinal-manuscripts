

rm(list=ls())
library(tidyverse)
library(data.table)
library(xlsx)
library(haven)


source("U:/GHAP-Data-Management/HBGDki_functions.R")


setwd("U:/data")

#read csv file
d<-fread("U:/data/FINAL/UCB Rally7/Main/adam/FINAL.csv", header = T)


#Read rds file
#d<- readRDS("FINAL.rds")



gc()

colnames(d) <- tolower(colnames(d))
colnames(d)

#Drop un-needed columns
d <- d %>% subset(., select=c(studyid, subjid, agedays, diarfl,diarfl_r, dur_r))


#Drop studies Vishak added to data product that don't meet inclusion criteria
dim(d)
d <- d[d$studyid!="ki1000301-DIVIDS" & d$studyid!="ki1055867-WomenFirst" & d$studyid!="ki1135782-INCAP",]
dim(d)

#Replace diar flag with 1-day recall 
table(dfull$studyid, !is.na(dfull$diarfl))
d$diarfl[is.na(d$diarfl) & !is.na(d$diarfl_r) & d$dur_r==1] <- d$diarfl_r[is.na(d$diarfl) & !is.na(d$diarfl_r) & d$dur_r==1]
table(dfull$studyid, !is.na(dfull$diarfl))


#drop unneeded variables
d <- d %>% subset(., select= -c(diarfl_r, dur_r))

#Look for unrealistic diarrhea prevalences
d %>% group_by(studyid) %>% summarize(diar_prev=round(mean(diarfl, na.rm=T)*100,1)) %>% as.data.frame()


#Check how much diarrhea
table(d$studyid, d$diarfl)

#Check how much diarrhea is missing
tab<-table(d$studyid, !is.na(d$diarfl))
tab[,2]/(tab[,1] + tab[,2]) * 100


#Highly missing:
# ki1112895-Burkina Faso Zn 
# ki1113344-GMS-Nepal
# ki1148112-iLiNS-DOSE    
# ki1148112-iLiNS-DYAD-M          
# ki1148112-LCNI-5

#compare diarrhea to raw data:

#------------------------
# ki1148112-LCNI-5 
#------------------------

#File 4
#HhisDiarrhoe

lcni<-read_sas("U:/data/LCNI-5/raw/file_4.sas7bdat")
table(lcni$HhisDiarrhoea)
sum(lcni$HhisDiarrhoea==1, na.rm=T)/length(lcni$HhisDiarrhoea==0 | lcni$HhisDiarrhoea==1)
table(d$diarfl[d$studyid=="ki1148112-LCNI-5"])  #Missing almost every obsertvations
length(d$studyid=="ki1148112-LCNI-5")  


#------------------------
# ki1000108-IRC
#------------------------

irc<-read_sas("U:/data/IRC/raw/irc_diarrhea_raw.sas7bdat")
table(irc$diarrhea)

irc<-read_sas("U:/data/IRC/sdtm/DAILY.sas7bdat")
table(irc$DIARFL)

ircg<-read_sas("U:/data/IRC/raw/irc_growth_raw.sas7bdat")


#------------------------
# ki1000108-CMC-V-BCS-2002
#------------------------


cmc<-read_sas("U:/git/hbgd/ki1000108/PMC3894229/raw/diar.sas7bdat")

#------------------------
# ki1112895-Burkina Faso Zn
#------------------------

bfz<-read_sas("U:/data/BurkinaFasoZn/import/diarepi.sas7bdat")
head(data.frame(bfz))


id<-read_sas("U:/data/BurkinaFasoZn/import/childid.sas7bdat")
head(data.frame(id))


