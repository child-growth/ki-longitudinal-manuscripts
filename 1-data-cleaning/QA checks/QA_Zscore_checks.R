
#------------------------------------------------------------------------------------
# load packages and functions
#------------------------------------------------------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library("googlesheets")



#------------------------------------------------------------------------------------
# load data
#------------------------------------------------------------------------------------

#Load in datases for different outcomes
laz_df <- readRDS(rf_stunting_data_path)
wlz_df <- readRDS(rf_wasting_data_path)
waz_df <- readRDS(rf_underweight_path)

#merge in treatment arms
cov <- readRDS(paste0(ghapdata_dir,"FINAL_clean_covariates.rds"))
cov <- cov %>% subset(., select = c(studyid, subjid, arm))


laz_df <- left_join(laz_df, cov, by=c("studyid", "subjid"))
wlz_df <- left_join(wlz_df, cov, by=c("studyid", "subjid"))
waz_df <- left_join(waz_df, cov, by=c("studyid", "subjid"))


#Examine all study names
unique(laz_df$studyid)


#------------------------------------------------------------------------------------
# Check Guatemala BSC
#------------------------------------------------------------------------------------

#subset raw data to study of interest
laz_df_sub <- laz_df %>% filter(studyid == "Guatemala BSC")

#Load in google sheet of Guatemala BSC
gs <- gs_title("HBGD original paper data values") %>%
  gs_read(ws = "Guatemala BSC")

#Examine dataset
gs

#Get z-scores by arm in raw data
laz_df_sub %>% 
  group_by(arm) %>%
  #filter(agedays >XXX & agedays < XXX)  #Use this to filter to specific age ranges
  summarise(mean(haz))

#It looks like the LAZ means by arm are off.. are the paper values for a specific age?

#Can use assert_that to test within a tolerance
paper_value = -1.45
data_value = -1.72
tolerance = 0.1
assert_that(abs(paper_value - data_value) < tolerance)




