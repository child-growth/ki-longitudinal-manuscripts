
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
ns <- read.csv(paste0(here::here(),"/data/GHAP_n_u2_allstudies.csv"))
incl <- read.csv(paste0(here::here(),"/data/HBGDki_CONSORT_inclusion.csv"))

#Load naming codes
cc <- read.csv(paste0(here::here(),"/data/country_codes.csv"))

head(ns)
head(incl)

ns <- ns %>% rename(Study_ID=Study.ID, nchild=NCHILD_U2, nobs=NOBS_U2, country=Country.of.investigative.site) %>%
  select(Study_ID, country, nchild, nobs)

incl <- incl %>% select(Study_ID, Country, Short_ID.1, Short_Description, included,
                        included_anthropometry, included_longitudinal, included_low_income, 
                        included_small,included_age, included_ill, included_qc, included_measurement_freq) %>% 
  rename(Short_ID=Short_ID.1) %>%
  mutate(Country=as.character(Country))

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

#Remove spaces from country labels
incl_long$Country <- gsub(" ", "", incl_long$Country)

#merge in naming codes 
incl_long <- left_join(incl_long, cc, by="Country")


#Check country naming conventions
unique(ns$country)
unique(incl_long$Country)
unique(incl_long$country)
incl_long$Country[is.na(incl_long$country)]
#incl_long <- incl_long %>% subset(., select = -c(Country))

#remove grant identifiers from studyid
ns$Study_ID <- gsub("^k.*?-" , "", ns$Study_ID)

#Merge datasets
dim(ns)
dim(incl_long)
d <- left_join(ns, incl_long, by=c("Study_ID", "country"))
dim(d)

table(is.na(d$included_anthropometry))

head(d)
table(is.na(d$nchild))





#Mark monthly versus quarterly cohorts
unique(d$Study_ID)
d$measurefreq <- NA

d$measurefreq[d$Study_ID %in% c(
  "MAL-ED",   
  "CMC-V-BCS-2002",              
  "IRC",               
  "EE",           
  "ResPak",  
  "PROVIDE",  
  "TanzaniaChild2",           
  "Keneba",  
  "Guatemala BSC",       
  "GMS-Nepal",             
  "CONTENT"
)] <- "monthly"

d$measurefreq[d$Study_ID %in% c(
  "iLiNS-Zinc",  
  "JiVitA-3",          
  "JiVitA-4", 
  "LCNI-5",          
  "NIH-Birth",
  "NIH-Crypto",   
  "PROBIT",         
  "SAS-CompFeed",   
  "SAS-FoodSuppl",   
  "ZVITAMBO",   
  "CMIN",                 
  "COHORTS"
)] <- "quarterly"


#Mark COHORTS and CMIN cohorts with different measurement frequency than quarterly
d$measurefreq[d$Study_ID=="CMIN" & d$country=="BANGLADESH"] <- "monthly"
d$measurefreq[d$Study_ID=="CMIN" & d$country=="PERU"] <- "monthly"


d$measurefreq[(d$Study_ID=="COHORTS" & d$country=="BRAZIL")] <- NA #Drop because yearly but not an RCT
d$measurefreq[(d$Study_ID=="COHORTS" & d$country=="SOUTH AFRICA")] <- NA #Drop because yearly but not an RCT


table(d$measurefreq)
unique(d$Study_ID[!is.na(d$measurefreq)])

#Make inclusion indicator
d$included_monthly <- ifelse(d$measurefreq == "monthly", 1, 0)
table(d$included_monthly)

#NOTE: Need to make sure the country and studynames match so that all measurefreq get marked

#Drop cross-sectional and non-qc rows
d <- d %>% filter(included_qc==1)

#Non-QC'ed study and most cross-sectional studies have already been dropped. Drop remaining cross-sectional studies
d <- d %>% filter(nchild!=nobs)

#Then mark the exclusions indicators for remaining 3 studies erroneously marked as cross-sectional:
d[d$Short_ID=="gems",c("included_longitudinal","included_anthropometry","included_low_income", "included_small", "included_age")] <- 1
d[d$Short_ID=="gmsa",c("included_longitudinal","included_anthropometry","included_low_income", "included_small", "included_age")] <- 1
d[d$Short_ID=="mmam",c("included_longitudinal","included_anthropometry","included_low_income", "included_small", "included_age")] <- 1

#Mark low income countries from multisite studies
d$included_low_income[d$Short_ID %in% c("ib21", "ig21") & !(d$Country %in% c( "GBR", "ITA", "OMN", "GBR"))] <- 1

table(d$measurefreq)


#Save dataset
saveRDS(d, paste0(here::here(),"/results/HBGDki_CONSORT_inclusion_Ns.rds"))
