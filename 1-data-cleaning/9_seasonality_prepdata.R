

#-----------------------------------
# Wasting analysis
# Objective 1a
# Import data, subset to relevant variables
#-----------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


#--------------------------------------------
# Read in .csv file and save as an .rds file
#--------------------------------------------

d <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds"))

#--------------------------------------------
# Subset to  just identifying, Z-score data, and time data
#--------------------------------------------


d<-d %>% subset(., select=c(studyid, subjid, id, country, region, agedays, sex, measurefreq, month, whz, haz, waz, latitude, longitud, brthweek, brthmon))


#d <- d %>% filter(studyid == "PROVIDE")

#Fill in birth week as middle of the month from birthmonth from PROVIDE datasets
d$brthweek[d$studyid=="PROVIDE"] <- round(as.numeric(d$brthmon[d$studyid=="PROVIDE"])  * 4.3333 ) -2 


table(d$studyid, is.na(d$brthweek))
d <- d %>% filter(!is.na(brthweek))

#convert subjid to character for the merge with covariate dataset
d$subjid <- as.character(d$subjid)

#drop yearly studies
d <- d %>% filter(measurefreq!="yearly")

#Has Z-score data
d <- d %>% filter(!is.na(whz) | !is.na(haz)) 

#estimate birthday
d$birthday <- d$brthweek *7 - 7 #Minus 7 days so week 1 starts at 0 and week 53 is day 364
summary(d$birthday)

#calculate study day of measurement (with 1 being the first day of the start of the study year)
d$studyday <-  d$birthday + d$agedays


#calculate julian day of measurement
d$jday <- round(((d$birthday + d$agedays)/364)%%1 * 364, 0)
summary(d$jday)
table(is.na(d$month))

#RF dataset (with ages up to 25 months for 24 month mean WLZ)
saveRDS(d, paste0(ghapdata_dir,"seasonality_rf_data.rds"))

d <- d %>% filter(agedays < 24 * 30.4167)

saveRDS(d, seasonality_data_path)

