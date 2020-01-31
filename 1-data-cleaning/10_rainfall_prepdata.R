


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
 zw <- read.table(here("data/non-secure data/rain_data/crucy.v3.23.1901.2014.Zimbabwe.pre.per"), header=T, skip = 3)
 ph <- read.table(here("data/non-secure data/rain_data/crucy.v3.23.1901.2014.Philippines.pre.per"), header=T, skip = 3)
 bl <- read.table(here("data/non-secure data/rain_data/crucy.v3.23.1901.2014.Belarus.pre.per"), header=T, skip = 3)
 bf <- read.table(here("data/non-secure data/rain_data/crucy.v3.23.1901.2014.Burkina_Faso.pre.per"), header=T, skip = 3)
 mw <- read.table(here("data/non-secure data/rain_data/crucy.v3.23.1901.2014.Malawi.pre.per"), header=T, skip = 3)
 

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
   data.frame(country="TANZANIA", tz),
   data.frame(country="ZIMBABWE", zw),
   data.frame(country="PHILIPPINES", ph),
   data.frame(country="BELARUS", bl),
   data.frame(country="MALAWI", mw),
   data.frame(country="BURKINA FASO", bf)
 )
 
 saveRDS(d, file = here("data/full_rain_data.rds"))
 
 
 
 #Save rain just for years that monthly studies were measuring children under 2yrs
 d <- readRDS(here("data/full_rain_data.rds"))
 
 yrs <- readRDS(here("data/study_start_years.rds"))
 yrs$max_yr <- round(yrs$max_yr, 0)
 yrs$country[yrs$country=="TANZANIA, UNITED REPUBLIC OF"] <- "TANZANIA"
 
 rain <- NULL
 for(i in 1:nrow(yrs)){
   study <- yrs[i,]
   d_sub <- d %>% filter(country == study$country, YEAR >= study$start_year & YEAR <= study$max_yr)
   #Get average of rain over the study period
   study_ave_rain <- d_sub[,-c(1:2)] %>% summarise_all(funs(mean))
   res <- data.frame(study, study_ave_rain)
   rain <- rbind( rain, res)
 }
 
 #Drop cohorts not used in the rain analysis
 rain[is.na(rain$JAN),]
 rain <- rain %>% filter(!is.na(JAN))
 
 
 #Clean up rain dataset
 colnames(rain) <- tolower(colnames(rain))
 colnames(rain)[c(7:18)] <- str_to_title(colnames(rain)[c(7:18)])
 
 #Calculate seasonal index
 rain <- rain %>% 
   mutate(ann = (Jan+ Feb+ Mar+ Apr+ May+ Jun+ Jul+ Aug+ Sep+ Oct+ Nov+ Dec),
          ave_month=ann/12,
          abs_Jan = abs(Jan-ave_month), 
          abs_Feb = abs(Feb-ave_month), 
          abs_Mar = abs(Mar-ave_month), 
          abs_Apr = abs(Apr-ave_month), 
          abs_May = abs(May-ave_month), 
          abs_Jun = abs(Jun-ave_month), 
          abs_Jul = abs(Jul-ave_month), 
          abs_Aug = abs(Aug-ave_month), 
          abs_Sep = abs(Sep-ave_month), 
          abs_Oct = abs(Oct-ave_month), 
          abs_Nov = abs(Nov-ave_month), 
          abs_Dec = abs(Dec-ave_month), 
          cohort_index =  1/ann  * (abs_Jan+
                                      abs_Feb+ abs_Mar+
                                      abs_Apr+ abs_May+
                                      abs_Jun+ abs_Jul+
                                      abs_Aug+ abs_Sep+
                                      abs_Oct+ abs_Nov+
                                      abs_Dec)) %>%
   subset(., select = -c(ave_month, abs_Jan,
                           abs_Feb, abs_Mar,
                           abs_Apr, abs_May,
                           abs_Jun, abs_Jul,
                           abs_Aug, abs_Sep,
                           abs_Oct, abs_Nov,
                           abs_Dec))
 summary(rain$cohort_index)
 
 saveRDS(rain, file = here("data/cohort_rain_data.rds"))
 
 
 