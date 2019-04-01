

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

d<-fread("U:/data/FINAL/UCB Rally7/Main/adam/FINAL.csv", header = T)

#--------------------------------------------
# Subset to  just identifying, Z-score data, and time data
#--------------------------------------------

#change names to lower case
colnames(d) <- tolower(colnames(d))
d<-d %>% subset(., select=c(studyid, subjid, country, agedays, month, whz, haz, waz, latitude, longitud, brthyr, brthweek, brthmon))

d <- d %>% filter(agedays < 24 * 30.4167)
d <- d %>% filter(!is.na(brthweek))

#convert subjid to character for the merge with covariate dataset
d$subjid <- as.character(d$subjid)

#Monthly studies
d <- d[d$studyid %in% c(
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
),]

#Has Z-score data
d <- d %>% filter(!is.na(whz)) %>% filter(whz < 5 & whz > (-5))

#estimate birthday
d$birthday <- d$brthweek *7 - 7 #Minus 7 days so week 1 starts at 0 and week 53 is day 364

#calculate study day of measurement (with 1 being the first day of the start of the study year)
d$studyday <-  d$birthday + d$agedays


#calculate julian day of measurement
d$jday <- ((d$birthday + d$agedays)/364)%%1 * 364
summary(d$jday)

d <- d %>% mutate(country = toupper(country))
d <- d %>% mutate(region = case_when(
  country=="BANGLADESH" | country=="INDIA"|
    country=="NEPAL" | country=="PAKISTAN"|
    country=="PHILIPPINES"| country=="CHINA"|
    country=="THAILAND"|country=="SINGAPORE"|
    country=='OMAN'~ "Asia",
  country=="KENYA"|
    country=="GHANA"|
    country=="BURKINA FASO"|
    country=="GUINEA-BISSAU"|
    country=="MALAWI"|
    country=="SOUTH AFRICA"|
    country=="TANZANIA, UNITED REPUBLIC OF"|
    country=="TANZANIA"|
    country=="ZIMBABWE"|
    country=="GAMBIA"|
    country=='CONGO, THE DEMOCRATIC REPUBLIC OF' ~ "Africa",
  country=="BRAZIL" | country=="GUATEMALA" |
    country=="PERU"|country=='ECUADOR'   ~ "Latin America",
  country=='UNITED STATES' | country=='UNITED KINGDOM'|country=='ITALY'|
    # country=='NETHERLANDS'|
    country=='BELARUS'~ 'N.America & Europe',
  TRUE                                    ~ "Other"
))

saveRDS(d, file="U:/ucb-superlearner/data/seasonality_data.rds")

