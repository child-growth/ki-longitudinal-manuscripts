


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_wast_inc_functions.R"))

d <- readRDS(paste0(ghapdata_dir,"rf_wasting_data.rds"))



dfull <- d
df <- d
d <- df %>% group_by(studyid, country) %>% do(WastIncCalc(.))
d_noBW <- df %>% group_by(studyid, country) %>% do(WastIncCalc(., dropBornWasted=T))

save(d, d_noBW, file=paste0(ghapdata_dir, "Wasting_inc_rf_data.RData"))

#subset to monthly cohorts for descriptive epi analysis

d <- d %>% filter(measurefreq=="monthly")
d_noBW <- d_noBW %>% filter(measurefreq=="monthly")
save(d, d_noBW, file=paste0(ghapdata_dir, "Wasting_inc_data.RData"))


load(paste0(ghapdata_dir, "mortality_anthro_data.RData"))
d_mort <- wast_mort %>% group_by(studyid, country) %>% do(WastIncCalc(.))
d_mort_noBW <- wast_mort %>% group_by(studyid, country) %>% do(WastIncCalc(., dropBornWasted=T))
d_waz_mort <- waz_mort %>% subset(., select = -c(haz, whz, muaz)) %>% rename(whz=waz) %>% 
              group_by(studyid, country) %>% do(WastIncCalc(.)) 
d_waz_mort <- d_waz_mort %>% rename(waz=whz, underweight_inc = wast_inc, sunderweight_inc = sevwast_inc)

save(d_mort, d_mort_noBW, d_waz_mort, file=paste0(ghapdata_dir, "Wasting_mort_inc_data.RData"))


#Sensitivity outcomes
d30 <- d_noBW30 <-d90<- d_noBW90 <- NULL
d30 <- df %>% group_by(studyid, country) %>% do(WastIncCalc(., washout=30))
#d_noBW30 <- df %>% group_by(studyid, country) %>% do(WastIncCalc(., washout=30, dropBornWasted=T))

d90 <- df %>% group_by(studyid, country) %>% do(WastIncCalc(., washout=90))
#d_noBW90 <- df %>% group_by(studyid, country) %>% do(WastIncCalc(., washout=90, dropBornWasted=T))

save(d30, d_noBW30, d90, d_noBW90, file=paste0(ghapdata_dir, "Wasting_inc_sens_data.RData"))


# Calc incidence with no recovery to see what proportion become wasted for the first time 
# before and after 6 months
# df <- df %>% filter(measurefreq=="monthly")
# d_noRec <- df %>% group_by(studyid, country) %>% do(WastIncCalc(., washout=1000))
# d_noBW_noRec <- df %>% group_by(studyid, country) %>% do(WastIncCalc(., dropBornWasted=T, washout=1000))
# 
# save(d_noRec, d_noBW_noRec, file=paste0(ghapdata_dir, "Wasting_inc_noRec_data.RData"))





#Calculate incidence of stunting
# load("U:/Data/Stunting/stunting_data.RData")
# dfstunt <- d
# dstunt_noBW <- dfstunt %>% group_by(studyid, country) %>% do(WastIncCalc(., stunt=T, dropBornWasted=T, washout = 60)) 
# dstunt <- dfstunt %>% group_by(studyid, country) %>% do(WastIncCalc(., stunt=T, washout=1000)) 



# #Rename outcomes
# colnames(dstunt)
# dstunt <- dstunt %>% subset(., select=-c(haz)) %>% rename(haz=whz)
# colnames(dstunt)<-gsub("wast","stunt",colnames(dstunt))
# 
# dstunt_noBW <- dstunt_noBW %>% subset(., select=-c(haz)) %>% rename(haz=whz)
# colnames(dstunt_noBW)<-gsub("wast","stunt",colnames(dstunt_noBW))
# 
# #Drop incidence for children born or enrolled stunted
# dstunt_noBW <- dstunt_noBW %>% group_by(studyid, subjid) %>% arrange(studyid, subjid, agedays) %>%
#   mutate(cuminc=cumsum(stunt_inc))
# dstunt_noBW$stunt_inc[dstunt_noBW$cuminc>1 & dstunt_noBW$stunt_inc==1] <- 0 
# 
# 
# save(dstunt, dstunt_noBW, file="Stunting_inc_data.RData")






