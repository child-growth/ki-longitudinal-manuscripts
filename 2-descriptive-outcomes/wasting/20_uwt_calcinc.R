


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_wast_inc_functions.R"))

d <- readRDS(rf_underweight_path)

summary(d$whz)
summary(d$waz)
d$whz <- d$waz


dfull <- d
df <- d
d <- df %>% group_by(studyid, country) %>% do(WastIncCalc(.))

# #NOTE: fix the column names of the underweight stats from the wasting name
# colnames(d)
# 
# colnames(d) <- gsub("wasting","uwt",colnames(d))
# colnames(d) <- gsub("wast","uwt",colnames(d))

save(d, file=paste0(ghapdata_dir, "Underweight_inc_rf_data.RData"))

#subset to monthly cohorts for descriptive epi analysis

d <- d %>% filter(measurefreq=="monthly")
save(d, file=paste0(ghapdata_dir, "Underweight_inc_data.RData"))


