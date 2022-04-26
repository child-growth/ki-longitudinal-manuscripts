


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load data
dfull <- readRDS(paste0(res_dir,"/desc_data_cleaned.rds"))


#Drop existing pooled estimates and subset to primary analysis
df <- dfull %>% filter(cohort != "pooled", analysis=="Primary")
head(df)

table(df$analysis)

dim(df)
dim(distinct(df))


#Merge in country-level estimates. 