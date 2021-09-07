

#-----------------------------------
# KI stunting metadata
#-----------------------------------

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

d <- readRDS(stunting_data_path)

d <- d %>% filter(agedays < 30.4167*24)

d$agecat <- cut(d$agedays,
                breaks = c(0:25) * 30.4167, include.lowest = F,
                labels = paste0(0:24))
table(d$agecat)

d<-d %>% filter(studyid=="CMIN GB94")
length(unique(d$subjid))

#get summary statistics
df <- d %>% group_by(studyid, country, region) %>%
  mutate(overall_nmeas=n(), overall_stuntprev=mean(haz < -2)) %>%
  group_by(studyid, country, region, overall_nmeas, overall_stuntprev, agecat) %>%
  summarise( N=n(),  meanhaz = mean(haz), stuntprev=mean(haz < -2))


head(df)


#merge in start year of each cohort
start_year <- readRDS(paste0(BV_dir,"/data/study_start_years.rds"))

df <- left_join(df, start_year, by=c("studyid", "country"))


#remove grant identifier
df$studyid<- gsub("^k.*?-" , "", df$studyid)
head(df)

df$region <- as.character(df$region)

saveRDS(df, file=paste0(BV_dir,"/results/KI_metadata_stunting.RDS"))



