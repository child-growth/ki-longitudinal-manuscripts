
##########################################
# ki longitudinal manuscripts
# stunting and wasting analysis
#
# Merge inclusion reasons dataset with N's from GHAP
# 

# inputs: HBGDki-CONSORT_inclusion_WJ.csv, GHAP_n_u2_allstudies.csv

# outputs: 


##########################################

#-----------------------------------
# preamble
#-----------------------------------

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))

#Load data
ns <- read.csv(paste0(here::here(),"/results/GHAP_n_u2_allstudies.csv"))
incl <- read.csv(paste0(here::here(),"/results/HBGDki_CONSORT_inclusion.csv"))

#Load naming codes
cc <- read.csv(paste0(here::here(),"/results/country_codes.csv"))

head(ns)
head(incl)

ns <- ns %>% rename(Study_ID=Study.ID, nchild=NCHILD_U2, nobs=NOBS_U2, country=Country.of.investigative.site) %>%
  select(Study_ID, country, nchild, nobs)

incl <- incl %>% select(Study_ID, Country, Short_ID.1, Short_Description, included,
                        included_anthropometry, included_longitudinal, included_low_income, 
                        included_small,included_age, included_ill, included_qc, included_measurement_freq) %>% 
  rename(Short_ID=Short_ID.1)

#Seperate inclusion criteria by country

dim(incl)
incl_long <- NULL
for(i in 1:nrow(incl)){
  rw <- incl[i,]
  countries <- as.vector(str_split(rw$Country, ",", simplify=T))
  n <- length(countries)
  for(j in 1:n){
    incl_long <- rbind(rw, incl_long)
  }
  incl_long$Country[1:n] <- countries
  
}
dim(incl_long)

#merge in naming codes 
incl_long <- left_join(incl_long, cc, by="Country")


#Check country naming conventions
unique(ns$country)
unique(incl_long$Country)
unique(incl_long$country)
incl_long <- incl_long %>% subset(., select = -c(Country))

#Merge datasets
dim(ns)
dim(incl_long)
d <- left_join(ns, incl_long, by=c("Study_ID", "country"))
dim(d)


head(d)
table(is.na(d$nchild))





#Mark monthly versus quarterly cohorts
unique(d$Study_ID)
d$measurefreq <- NA

d$measurefreq[d$Study_ID %in% c(
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

d$measurefreq[d$Study_ID %in% c(
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


#Mark COHORTS and CMIN cohorts with different measurement frequency than quarterly
d$measurefreq[d$Study_ID=="ki1114097-CMIN" & d$country=="BANGLADESH"] <- "monthly"
d$measurefreq[d$Study_ID=="ki1114097-CMIN" & d$country=="PERU"] <- "monthly"


d$measurefreq[(d$Study_ID=="ki1135781-COHORTS" & d$country=="BRAZIL")] <- NA #Drop because yearly but not an RCT
d$measurefreq[(d$Study_ID=="ki1135781-COHORTS" & d$country=="SOUTH AFRICA")] <- NA #Drop because yearly but not an RCT


table(d$measurefreq)
unique(d$Study_ID[!is.na(d$measurefreq)])

#Make inclusion indicator
d$included_monthly <- ifelse(d$measurefreq == "monthly", 1, 0)
table(d$included_monthly)

#NOTE: Need to make sure the country and studynames match so that all measurefreq get marked

#Save dataset
saveRDS(d, paste0(here::here(),"/results/HBGDki_CONSORT_inclusion_Ns.rds"))
