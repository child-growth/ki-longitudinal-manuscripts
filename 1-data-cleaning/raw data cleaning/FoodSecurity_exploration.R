


library(haven)
library(ghap)

astudies<-get_study_list_anthro()

#-----------------------
# Jivita 3
#-----------------------
astudies$data_path[astudies$short_id=="jvt3" & !is.na(astudies$short_id)]

setwd("U:/data/JiVitA-3/raw")

list.files()

d<-read_sas("hbgd_i6mop.sas7bdat")
head(d)
colnames(d) <-toupper(colnames(d))

table(d$i6fssqmls)

#-----------------------
# Jivita 4
#-----------------------

astudies$data_path[astudies$short_id=="jvt4" & !is.na(astudies$short_id)]

setwd("U:/data/JiVitA-4/raw")

list.files()

d<-read_sas("hbgd_ses.sas7bdat")
head(d)
colnames(d) <-toupper(colnames(d))

#FAST scale. VARIABLES:
# SSFSSQMLS
# SSFSWHEAT
# SSFSSKIP
# SSFSLESS
# SSFSNOMON
# SSFSWOR
# SSFSRICE
# SSFSCRED
# SSFSBOR

#First question has to be reversed
Q1_orig<-as.numeric(d$SSFSSQMLS)
Q1_rev<-NA
Q1_rev[Q1_orig==5]<-1
Q1_rev[Q1_orig==4]<-2
Q1_rev[Q1_orig==3]<-3
Q1_rev[Q1_orig==2]<-4
Q1_rev[Q1_orig==1]<-5

table( Q1_rev + 
         as.numeric(d$SSFSWHEAT) +
as.numeric(d$SSFSSKIP) +
as.numeric(d$SSFSLESS) +
as.numeric(d$SSFSNOMON) +
as.numeric(d$SSFSWOR) +
as.numeric(d$SSFSRICE) +
as.numeric(d$SSFSCRED) +
as.numeric(d$SSFSBOR))



#-----------------------
# Mal-ED
#-----------------------
astudies$data_path[astudies$short_id=="mlex" & !is.na(astudies$short_id)]

#5 year food security
setwd("U:/git/hbgd/ki0047075b/MALED-201707/raw")

list.files()

d<-read_sas("fsq_5y.sas7bdat")
head(d)
colnames(d) <-toupper(colnames(d))


table(d$AGEYEARS)


#baseline food security
d<-read.csv("U:/data/MALED-201501/import/fsq.csv")
table(d$hfiacat)





#-----------------------
# ki1017093c-NIH-Crypto
#-----------------------
astudies$data_path[astudies$short_id=="ncry" & !is.na(astudies$short_id)]

d <- readRDS("U:/data/ncry.rds")
colnames(d)

setwd("U:/git/hbgd/ki1017093c/NIH-Crypto-201707/raw")

list.files()

d<-read_sas("ses.sas7bdat")
head(d)
colnames(d) <-toupper(colnames(d))

table(d$i6fssqmls)



#-----------------------
#ki1148112-iLiNS-DYAD-M
#-----------------------
astudies$data_path[astudies$short_id=="ildm" & !is.na(astudies$short_id)]

d <- readRDS("U:/data/ildm.rds")
colnames(d)

#U:\data\iLiNS-DYAD-M\docs\Codebook\ilins-dyad-variables.doc

setwd("U:/data/iLiNS-DYAD-M/raw")

list.files()

d<-read_sas("food_security15.sas7bdat")
head(d)

table(d$FSeNotEnouFood)



d<-read_sas("dev_assess41a.sas7bdat")
head(d)

files<-list.files()
for(i in 1:length(files)){
  d<-read_sas(files[i])
  if(c("score_hfia","Score_Hfia","score_HFIA","SCORE_HFIA") %in% colnames(d)){
    print(files[i])
  }
}



d<-read_sas("m_foodfreq12.sas7bdat")
head(d)



#-----------------------
#ki1148112-iLiNS-DYAD-G
#-----------------------
astudies$data_path[astudies$short_id=="ildg" & !is.na(astudies$short_id)]

d <- readRDS("U:/data/ildm.rds")
colnames(d)


setwd("U:/data/iLins-Dyad-G/iLiNS-DYAD-G-201804/import")

list.files()

d<-read_sas("ws.sas7bdat")
head(d)

table(d$FSeNotEnouFood)


#-----------------------
#ki1148112-iLiNS-DOSE
#-----------------------
astudies$data_path[astudies$short_id=="ilnd" & !is.na(astudies$short_id)]

d <- readRDS("U:/data/ilnd.rds")
colnames(d)


setwd("U:/data/iLiNS-DOSE/raw")

list.files()

d<-read_sas("food_security14.sas7bdat")
head(d)
colnames(d)
table(d$FSeNotEnouFood)
table(d$FSeSleepHungry)
table(d$FSeFastFullDay)



#-----------------------
# NIH Birth
#-----------------------

d <- readRDS("U:/data/nbrt.rds")
head(d)
table(d$FOODDFCT)


#-----------------------
# WASH Benefits
#-----------------------

d <- readRDS("U:/data/wsb.rds")
head(d)


d<-read_sas("U:/data/WASH-Bangladesh/raw/washbenrol.sas7bdat")
head(d)
colnames(d)


