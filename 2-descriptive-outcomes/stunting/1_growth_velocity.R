##########################################
# ki longitudinal manuscripts
# stunting analysis

# growth velocity analysis
##########################################


# FINAL dataset of all studies
library(tidyverse)
library(data.table)
# install.packages("bit64")
library(bit64)

# options(repos = c(CRAN = "http://cran.rstudio.com/",
#  deltarho = "http://packages.deltarho.org"))
# install.packages("growthstandards")
library(growthstandards)

# source("U:/GHAP-Data-Management/HBGDki_functions.R")

setwd("U:/")
#setwd("U:/data/ucb-superlearner/Stunting rallies")
gc()

#Read rds file and drop unneeded columns
d<-fread("U:/data/Stunting/Full-compiled-data/FINAL.csv", header = T,
         colClasses = c(SUBJID = "integer64"),
         drop = c( "AGEIMPFL",  
                   # "WTKG",    "HTCM",    "LENCM",       
                   "WHZ",     "BAZ",     "HCAZ",    "MUAZ",    
                   "REGCTRY", "REGCTYP", "CITYTOWN","LATITUDE","LONGITUD", "HHID",    "ARM", 
                   "DEAD",    "AGEDTH",  "CAUSEDTH","FEEDING",
                   "DURBRST", "BRTHYR",  
                   "ENSTUNT",
                   "FWTKG",    "FBMI",
                   "BRFEED", 
                   "SUMEP",   "SUMDIAR", "SUMDAYS",
                   "PCTDIAR", "IMPSAN",  "SOAP",    "SAFEH2O", "TRTH2O",  "CLEANCK",
                   "IMPFLOOR","H2OTIME",
                   "CHICKEN", "COW",     "CATTLE",  "INCTOT", 
                   "INCTOTU", "BFEDFL",  "EXBFEDFL","WEANFL",  "ANMLKFL", "PWMLKFL",
                   "FORMLKFL","BOTTLEFL","H20FEDFL","OTHFEDFL","SLDFEDFL","NBFYES",  "EARLYBF", "CMFDINT", "DIARFL",  "LSSTLFL",
                   "NUMLS",   "BLDSTLFL","DIARFL_R","LSSTFL_R","NUMLS_R", "BLDSTL_R",
                   "DUR_R", 
                   "BRTHWEEK", "BRTHMON", "PARITY", "VAGBRTH", "HDLVRY",
                   "BRTHORDR", "MAGE", "MHTCM", "MWTKG", "MBMI",
                   "MEDUCYRS", "SINGLE", "FAGE", "FHTCM", "FEDUCYRS", "NROOMS", "NHH", "NCHLDLT5", "SES", "HFOODSEC"
         )
)

colnames(d) <- tolower(colnames(d))
setkeyv(d, cols = c("country","studyid","subjid"))
gc()

#Drop studies Vishak added to data product that don't meet inclusion criteria
d <- d[d$studyid!="ki1000301-DIVIDS" & d$studyid!="ki1055867-WomenFirst" & d$studyid!="ki1135782-INCAP"]

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



#--------------------------------------------------------
# filter out obs with missing sex
# filter out person-time obs with missing both haz & waz
#--------------------------------------------------------
#sex must be "Male" or "Female"
table(d$sex)
#set blank sex to missing
d$sex[d$sex=="" | d$sex=="Unknown"]<-NA
#drop kids missing sex
d <- d[!is.na(sex), ]
# d <- d %>% filter(!is.na(sex)) %>% data.table
#drop if both haz and waz are missing
d <- d[!(is.na(haz) & is.na(waz)), ]
# d[is.na(haz), ]
# d[is.na(waz), ]

#--------------------------------------------------------------------------
# birth characteristics
# separate birthweight and birthlength
# convert to waz / haz and add to main data set as a new row with "agedays=0"
#--------------------------------------------------------------------------
table(d$studyid, is.na(d$birthlen))
table(d$studyid, is.na(d$birthwt))
dblenwt <- d[,list(birthwt=first(birthwt), birthlen=first(birthlen), sex=first(sex)), by = list(studyid, subjid)]
dblenwt <- dblenwt[!(is.na(birthwt) & is.na(birthlen)), ]
dblenwt[is.na(birthlen), ]
dblenwt[is.na(birthwt), ]
dblenwt[, agedays := 0]
dblenwt[, waz := round(who_wtkg2zscore(agedays, birthwt/1000, sex = sex),2)]
dblenwt[, haz := round(who_htcm2zscore(agedays, birthlen, sex = sex),2)]
setkeyv(dblenwt, cols = c("country","studyid", "subjid", "agedays"))

## check things are matching with main haz/waz when agedays=1 was observed
d[subjid==5444, ]
dblenwt[subjid==5444, ]
dblenwt[, birthwt := NULL][, birthlen := NULL]

## merge birth haz / waz into main dataset
d <- merge(d, dblenwt, all=TRUE, by = c("country","studyid", "subjid","sex","agedays"))
setnames(d,c("waz.x","haz.x"),c("waz","haz"))
d[agedays==0, waz := waz.y][, waz.y := NULL]
d[agedays==0, haz := haz.y][, haz.y := NULL]
setkeyv(d, cols = c("country","studyid","subjid","agedays"))

#Drop outlier birth HAZ and WAZ
d[waz < -6 | waz > 6, waz := NA]
d[haz < -6 | haz > 6, haz := NA]


# convert waz / haz back to wtkg / lencm (that way everything is standardized and always matching)
# save actual wtkg / lencm as back-up for comparison
setnames(d, c("wtkg", "lencm"), c("wtkg.orig", "lencm.orig"))
d[agedays==0, wtkg := round(who_zscore2wtkg(agedays, waz, sex = sex),3)]
d[agedays>0, wtkg := round(who_zscore2wtkg(agedays-1, waz, sex = sex),3)]
d[agedays==0, lencm := round(who_zscore2htcm(agedays, haz, sex = sex),1)]
d[agedays>0, lencm := round(who_zscore2htcm(agedays-1, haz, sex = sex),1)]


#--------------------------------------------------------------------------
# calculate velocity between two observational time-points (t1,t2) (e.g., diff in haz divided by months lapsed)
#--------------------------------------------------------------------------
# when exact t is not available, impute:
# take the closest available observations within (t1-/+tgap,t2-/+tgap)
# where tgap is a preset window in days (14)
t1vec = c(0,3,6,9,12,15,18,21)  ## 1st time-point in months
t2vec = c(3,6,9,12,15,18,21,24) ## 2nd time-point in months
outvec = c("haz","waz","lencm","wtkg")

# t1mths   ## 1st time-point in months
# t2mths   ## 2nd time-point in months
# tgap     ## number of days around the time-point of interest (measurement time)
# yname    ## outcome
growth_velocity = function(d, t1mths, t2mths, yname = "haz", tgap = 14) {
  daysmth = 30.4167 ## average number of months in a year
  setkeyv(d, cols = c("country","studyid", "subjid", "agedays"))
  t1 <- as.integer(round((daysmth)*t1mths,0))
  t1_int <- c(t1-tgap,t1+tgap)
  t2 <- as.integer(round((daysmth)*t2mths,0))
  t2_int <- c(t2-tgap,t2+tgap)
  
  d_yt1 <- d[(agedays >= t1_int[1]) & (agedays <= t1_int[2]) & (!is.na(eval(as.name(yname)))), ]
  d_yt2 <- d[(agedays >= t2_int[1]) & (agedays <= t2_int[2]) & (!is.na(eval(as.name(yname)))), ]
  
  dd_yt1 <- d_yt1[, list(t1agedays = agedays[which.min(abs(t1-agedays))], t1y = eval(as.name(yname))[which.min(abs(t1-agedays))]), by = list(country,studyid,subjid)]
  dd_yt2 <- d_yt2[, list(t2agedays = agedays[which.min(abs(t2-agedays))], t2y = eval(as.name(yname))[which.min(abs(t2-agedays))]), by = list(country,studyid,subjid)]
  
  ## merge both time-points and auto drop when one of the measurements is missing 
  ## obtain a single dataset where both measurements must be present)
  setkeyv(dd_yt1, cols = c("country","studyid","subjid"))
  setkeyv(dd_yt2, cols = c("country","studyid","subjid"))
  dd_diff <- merge(dd_yt1, dd_yt2, all=FALSE, by=c("country","studyid","subjid"))
  dd_diff[is.na(t1y),]
  dd_diff[is.na(t2y),]
  ## calculate diff in agedays between (t1,t2), convert to months
  ## calculate linear growth velocity (diff in growth divided by lapsed months)
  dd_diff[, 
          "diffdays" := t2agedays - t1agedays][, 
                                               "diffmths" := diffdays/daysmth][,
                                                                               "y_diff" := t2y-t1y][,
                                                                                                    "y_rate" := y_diff/diffmths][,
                                                                                                                                 "diffcat" := paste0(t1mths,"-",t2mths," months")][,
                                                                                                                                                                                   "ycat" := yname]
  
  cat("(t1 - t2) in months: ", t1mths, "-",t2mths, "\n")
  cat("y outcome: ", yname, "\n")
  cat("tgap value: ", tgap, "\n")
  cat("No. of subjects with y avail in window of t1: ", nrow(dd_yt1), "\n") 
  cat("No. of subjects with y avail in window of t2: ", nrow(dd_yt2), "\n") 
  cat("No. of subjects with both y avail (t1,t2): ", nrow(dd_diff), "\n") 
  
  return(dd_diff)
}

dd_diff = NULL
for (j in 1:length(outvec)) {
  for (i in 1:length(t1vec)) {
    dd_diff_tmp = growth_velocity(d, t1mths = t1vec[i], t2mths = t2vec[i], yname = outvec[j])
    # print(dd_diff_tmp[])
    dd_diff = c(dd_diff, list(dd_diff_tmp))
  }
}
dd_out = rbindlist(dd_diff)
diffcatlevs = paste0(t1vec, "-", t2vec, " months")
dd_out[, "diffcat" := factor(diffcat, levels = diffcatlevs)]
head(dd_out[["diffcat"]])

saveRDS(dd_out, file="velocity_longfmt.rds")

