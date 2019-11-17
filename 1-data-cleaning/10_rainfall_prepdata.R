


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))



 bd <- read.table(here("data/non-secure data/rain_data/crucy.v3.23.1901.2014.Bangladesh.pre.per"), header=T, skip = 3)
 bz <- read.table(here("data/non-secure data/rain_data/crucy.v3.23.1901.2014.Brazil.pre.per"), header=T, skip = 3)
 gb <- read.table(here("data/non-secure data/rain_data/crucy.v3.23.1901.2014.Gambia.pre.per"), header=T, skip = 3)
 gt <- read.table(here("data/non-secure data/rain_data/crucy.v3.23.1901.2014.Guatemala.pre.per"), header=T, skip = 3)
 ia <- read.table(here("data/non-secure data/rain_data/crucy.v3.23.1901.2014.India.pre.per"), header=T, skip = 3)
 np <- read.table(here("data/non-secure data/rain_data/crucy.v3.23.1901.2014.Nepal.pre.per"), header=T, skip = 3)
 pk <- read.table(here("data/non-secure data/rain_data/crucy.v3.23.1901.2014.Pakistan.pre.per"), header=T, skip = 3)
 pr <- read.table(here("data/non-secure data/rain_data/crucy.v3.23.1901.2014.Peru.pre.per"), header=T, skip = 3)
 sa <- read.table(here("data/non-secure data/rain_data/crucy.v3.23.1901.2014.South_Africa.pre.per"), header=T, skip = 3)
 tz <- read.table(here("data/non-secure data/rain_data/crucy.v3.23.1901.2014.Tanzania.pre.per"), header=T, skip = 3)

 d <- rbind(
   data.frame(country="BANGLADESH", bd),
   data.frame(country="BRAZIL", bz),
   data.frame(country="GAMBIA", gb),
   data.frame(country="GUATEMALA", gt),
   data.frame(country="INDIA", ia),
   data.frame(country="NEPAL", np),
   data.frame(country="PAKISTAN", pk),
   data.frame(country="PERU", pr),
   data.frame(country="SOUTH AFRICA", sa),
   data.frame(country="TANZANIA", tz)
 )
 
 saveRDS(d, file = here("data/full_rain_data.rds"))
 
 
 
 #Save rain just for years that monthly studies were measuring children under 2yrs
 d <- readRDS(here("data/full_rain_data.rds"))
 
 yrs <- readRDS(here("data/study_start_years.rds"))
 yrs$max_yr <- round(yrs$max_yr, 0)
 
 
 study_rain <- NULL
 for(i in 1:nrow(yrs)){
   study <- yrs[i,]
   d_sub <- d %>% filter(country == study$country, YEAR >= study$start_year & YEAR <= study$max_yr)
   #Get average of rain over the study period
   study_ave_rain <- d_sub[,-c(1:2)] %>% summarise_all(funs(mean))
   res <- data.frame(study, study_ave_rain)
   study_rain <- rbind( study_rain, res)
 }
 
 #Drop cohorts not used in the rain analysis
 study_rain <- study_rain %>% filter(!is.na(JAN))
 
 saveRDS(study_rain, file = here("data/cohort_rain_data.rds"))
 
 
 