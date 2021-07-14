



rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#load covariates
cov <- readRDS(paste0(ghapdata_dir,"/FINAL_clean_covariates.rds"))

assert_that(all(monthly_and_quarterly_cohorts %in% cov$studyid))

#remove grant identifiers from studyid
cov$studyid <- gsub("^k.*?-" , "", cov$studyid)

#Merge in rain quartile
load(paste0(ghapdata_dir, "seasonality_rf_stunt.Rdata"))
head(stuntprev)
season <- stuntprev %>% group_by(studyid, subjid) %>% summarize(rain_quartile = 1*(sum(!is.na(rain_quartile))>0))
cov<-left_join(cov, season, by = c("studyid","subjid"))
table(is.na(cov$rain_quartile))

sum_not_na <- function(x){sum(!is.na(x))}
ifelse_present <- function(x){ifelse(x>0, 1, 0)}


#Subset to key analyzed exposures
exposures <- c("studyid", "country", "sex",                   "gagebrth",         "parity",        "birthwt",      
               "birthlen",      "vagbrth",       "hdlvry",        "mage",          "mhtcm",         "mwtkg",         "mbmi",          "meducyrs",     
               "single",        "fage",          "fhtcm",         "feducyrs",      "trth2o",        "cleanck",       "impfloor",      "nrooms",       
               "nhh",           "nchldlt5",      "earlybf",       "hfoodsec",      "anywast06",     "pers_wast",     "enstunt",       "enwast",       
               "hhwealth_quart",      "impsan",        "safeh20",       "perdiar6",      "perdiar24",         "predexfd6", "rain_quartile") 


#Calculate presence by study
cov_presence <- cov %>% dplyr::select(exposures) %>%
  group_by(studyid, country) %>%
  summarise_all(., funs(sum_not_na)) %>%
  group_by(studyid, country) %>%
  mutate_all(ifelse_present)


#Calculate N's by study
cov_N <- cov %>% dplyr::select(exposures) %>%
  group_by(studyid, country) %>%
  summarise_all(., funs(sum_not_na))

saveRDS(cov_presence, file = paste0(BV_dir,"/results/cov_presence.rds"))
saveRDS(cov_N, file = paste0(BV_dir,"/results/cov_N.rds"))





