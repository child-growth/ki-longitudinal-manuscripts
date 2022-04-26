

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load data
dfull <- readRDS(paste0(res_dir,"/desc_data_cleaned.rds"))

table(dfull$analysis)
table(dfull$disease)

stunt <- dfull %>% filter(disease=="Stunting")
table(stunt$method.used)
table(stunt$analysis, stunt$method.used)

#subset to primary analysis
d <- d %>% filter(analysis=="Primary")
table(d$method.used)
prop.table(table(d$method.used))

df <- d %>% filter(method.used!="REML")
