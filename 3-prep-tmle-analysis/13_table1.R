





#merge outcomes with covariates

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#load covariates
cov<-readRDS("/home/andrew.mertens/data/KI/UCB-SuperLearner/Manuscript analysis data/FINAL_clean_covariates.rds")



#Check reference levels
for(i in 3:ncol(cov)){
  cat(colnames(cov)[i],":\n")
  print(levels(cov[,i]))
}

#Set reference level to the lowest
cov$trth2o <- relevel(cov$trth2o, ref="1")
cov$cleanck <- relevel(cov$cleanck, ref="1")
cov$impfloor <- relevel(cov$impfloor, ref="1")
cov$earlybf <- relevel(cov$earlybf, ref="1")

cov$impsan <- relevel(cov$impsan, ref="1")
cov$safeh20 <- relevel(cov$safeh20, ref="1")
cov$predfeed3 <- relevel(cov$predfeed3, ref="1")
cov$exclfeed3 <- relevel(cov$exclfeed3, ref="1")
cov$predfeed6 <- relevel(cov$predfeed6, ref="1")
cov$exclfeed6 <- relevel(cov$exclfeed6, ref="1")
cov$predfeed36 <- relevel(cov$predfeed36, ref="1")
cov$exclfeed36 <- relevel(cov$exclfeed36, ref="1")
cov$predexfd6 <- relevel(cov$predexfd6, ref="1")



setwd("/home/andrew.mertens/data/KI/UCB-SuperLearner/Manuscript analysis data/")


#load outcomes
load("st_cuminc_outcomes.rdata")



#convert subjid to character for the merge with covariate dataset
cov$subjid <- as.character(cov$subjid)





#------------------------------------
# Create cumulative incidence dataset
#------------------------------------

#merge in covariates
cuminc <- cuminc %>% subset(., select = -c(tr, sex))
d <- left_join(cuminc, cov, by=c("studyid", "subjid", "country"))
head(d)

#Table 1 numbers
d <- d %>% filter(agecat=="0-24 months")

exposure_tab <- function(d, Avar){
  colnames(d)[which(colnames(d)==Avar)] <- "Avar"
  d <- d %>% filter(!is.na(Avar)) 
  dtot <- data.frame(Avar="Total", N=length(!is.na(d$Avar)), prop=100)
  d <- d %>% 
    mutate(Nmeas=n()) %>%
    group_by(Avar) %>%
    summarize(N=n(), prop=round(N/max(Nmeas) * 100,1))
   d <- rbind(dtot, d)
  return(d)
}

exposure_tab(d, Avar="sex")


exposures <- c("sex",                   "gagebrth",         "parity",        "birthwt",      
               "birthlen",      "vagbrth",       "hdlvry",        "mage",          "mhtcm",         "mwtkg",         "mbmi",          "meducyrs",     
               "single",        "fage",          "fhtcm",         "feducyrs",      "trth2o",        "cleanck",       "impfloor",      "nrooms",       
               "nhh",           "nchldlt5",      "earlybf",       "hfoodsec",      "anywast06",     "pers_wast",     "enstunt",       "enwast",       
               "hhwealth_quart",      "impsan",        "safeh20",       "perdiar6",      "perdiar24",         "predexfd6") 


rf_table1_list <- list()
for(i in 1:length(exposures)){
  cat("\n",exposures[i],"\n")
  res <- exposure_tab(d, Avar=exposures[i])
  print(res)
  rf_table1_list[[i]] <- res
  names(rf_table1_list)[i] <- exposures[i]
}

saveRDS(rf_table1_list, file=here("/results/rf_table1.RDS"))


tab <- bind_rows(rf_table1_list, .id="Variable")
colnames(tab) <- c("Variable","Level", "N", "Proportion")
write.csv(tab, file =here("/results/rf_table.csv"))
