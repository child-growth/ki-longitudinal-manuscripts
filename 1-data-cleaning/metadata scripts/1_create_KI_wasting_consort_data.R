

#-----------------------------------
# KI wasting metadata
#-----------------------------------

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

d <- readRDS(wasting_data_path)

d <- d %>% filter(measurefreq=="monthly")

d <- d %>% filter(agedays < 30.4167*24)

d$agecat <- cut(d$agedays,
                breaks = c(0:25) * 30.4167, include.lowest = F,
                labels = paste0(0:24))
table(d$agecat)



#get summary statistics
df <- d %>% group_by(studyid, country, region) %>%
  mutate(overall_nmeas=n(), overall_wastprev=mean(whz < -2)) %>%
  group_by(studyid, country, region, overall_nmeas, overall_wastprev, agecat) %>%
  summarise( N=n(),  meanWHZ = mean(whz), wastprev=mean(whz < -2))


head(df)


#merge in start year of each cohort
start_year <- readRDS(here("/data/study_start_years.rds"))

df <- left_join(df, start_year, by=c("studyid", "country"))


#remove grant identifier
df$studyid<- gsub("^k.*?-" , "", df$studyid)
head(df)

df$region <- as.character(df$region)


saveRDS(df, file=here("results/KI_metadata_wasting.RDS"))



