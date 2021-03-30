



rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


# # clean DIVIDS data
# 
# divids<-fread(paste0(ghapdata_dir,"FINAL.csv"), header = T,
#               drop = c( "AGEIMPFL",
#                         "BAZ", "HCAZ",      
#                         "REGCTRY", "REGCTYP",
#                         "HHID",    
#                         "FEEDING", "DURBRST", 
#                         "ENSTUNT", "FWTKG", "FBMI",
#                         "BRFEED", "SUMEP",   "SUMDIAR", "SUMDAYS",
#                         "PCTDIAR", "IMPSAN",  "SOAP",    "SAFEH2O", "H2OTIME",
#                         "CHICKEN", "COW",     "CATTLE",  "INCTOT", 
#                         "INCTOTU", "BFEDFL",  "EXBFEDFL","WEANFL",  "ANMLKFL", "PWMLKFL",
#                         "FORMLKFL","BOTTLEFL","H20FEDFL","OTHFEDFL","SLDFEDFL","NBFYES",   "CMFDINT", "DIARFL",  "LSSTLFL",
#                         "NUMLS",   "BLDSTLFL","DIARFL_R","LSSTFL_R","NUMLS_R", "BLDSTL_R",
#                         "DUR_R"))
# gc()
# 
# colnames(divids) <- tolower(colnames(divids))
# 
# # subset to only DIVIDS study
# dim(divids)
# divids <- divids[(studyid %in% c("DIVIDS"))]
# dim(divids)
# gc()
# 
# # subset columns
# divids <- subset(divids, select=c(studyid, country, subjid, sex, agedays, dead, agedth, causedth, haz, whz, waz, muaz))%>%
#   filter(agedays > 0)
# gc()
# divids$subjid <- as.character(divids$subjid)
# 
# 
# # clean VITALPAK-Pregnancy data
# vitalpak_preg <- read.csv(paste0(other_mortality_path, "VITALPAK_Pregnancy.csv"))
# colnames(vitalpak_preg) <- tolower(colnames(vitalpak_preg))
# gc()
# 
# # subset columns
# vitalpak_preg <- subset(vitalpak_preg, select=c(studyid, country, subjid, sex, agedays, dead, agedth, causedth, haz, whz, waz))%>%
#   filter(agedays > 0)
# gc()
# vitalpak_preg$subjid <- as.character(vitalpak_preg$subjid)
# 
# 
# 
# # clean I-LINS Dyad Ghana data
# ilinsdyadghana <- read.csv(paste0(other_mortality_path, "full_ki1033518_DYAD_G_201809.csv"))
# colnames(ilinsdyadghana) <- tolower(colnames(ilinsdyadghana))
# gc()
# 
# # subset columns
# ilinsdyadghana <- subset(ilinsdyadghana, select=c(studyid, country, subjid, sex, agedays, dead, agedth, haz, whz, waz, muaz)) %>%
#                          filter(agedays > 0)
# gc()
# 
# ilinsdyadghana$subjid <- as.character(ilinsdyadghana$subjid)
# ilinsdyadghana$studyid[ilinsdyadghana$studyid == "ki1033518-iLiNS-DYAD-G"] <- "iLiNS-DYAD-G"

##########################################################

#read csv file
df <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds"))
gc()

df <- subset(df, select= c(studyid, country, subjid, sex, agedays, dead, agedth, causedth, haz, whz, waz, muaz)) %>%
  filter(agedays > 0)
gc()





#merge manuscript cohorts and others
df$manuscript_cohort <- 1
# divids$manuscript_cohort <- 0
# vitalpak_preg$manuscript_cohort <- 0
# ilinsdyadghana$manuscript_cohort <- 0
#d <- bind_rows(df, divids, vitalpak_preg, ilinsdyadghana)
d<-df
table(d$studyid, d$dead)


#mark regions
d <- mark_region(d)

#Get maximum age that anthropometry was recorded
d <- d %>% group_by(studyid, country, subjid) %>% mutate(maxage = max(agedays))
summary(d$maxage)

table(1*!is.na(d$dead),is.na(d$agedth))
table(1*!is.na(d$dead),(d$causedth==""))

#mark dead if have a cause or age death
d$agedth[!is.na(d$agedth) & is.na(d$dead)]
d$dead[!is.na(d$agedth) & is.na(d$dead)] <- 1

#mark obs without indicator for dead, agedth, or causedth as not dead
d$dead[is.na(d$agedth) & is.na(d$dead)] <- 0

# drop all rows where both `haz`` and `waz` are missing 
table(d$dead, is.na(d$haz) & is.na(d$waz))
d <- d %>% filter(!(is.na(haz) & is.na(waz)))

table(d$studyid, d$dead)
d %>% group_by(studyid, subjid) %>% arrange(agedays) %>% slice(1) %>%
  group_by(studyid) %>% summarize(N=n(), deaths=sum(dead)) %>% filter(deaths!=0)

#Make sure only final observation is marked dead
d <- d %>% group_by(studyid, subjid) %>% arrange(agedays) %>%
           mutate(dead = ifelse(agedays==max(agedays), dead, 0),
                  final_obs = ifelse(agedays==max(agedays), 1, 0))
table(d$studyid, d$dead)



#Mark age categories
d$agecat <- cut(d$agedays, breaks = c(0, 30, 91, 182, 365, 730, 7000))
table(d$agecat)
table(d$studyid, d$agecat)
table(d$agecat, d$dead)

table(d$studyid, d$agedth>0)
table(d$studyid, d$dead)
table(is.na(d$dead))
table(d$dead)

head(d)

table(d$dead, is.na(d$agedth))

#mark the lagged anthro measure prior to death/censoring and subset to final observations
d <- d %>% arrange(studyid, country, subjid, agedays) %>%
  group_by(studyid, country, subjid) %>%
  mutate(
    subjid=as.numeric(subjid),
    age_diff=agedays-lag(agedays),
    sufficient_lag = ifelse(age_diff>=7 & !is.na(age_diff),1,0),
    stunt = 1*(haz < -2),
    wast = 1*(whz < -2),
    wast_muac = 1*(muaz < -2),
    underwt = 1*(waz < -2),
    sstunt = 1*(haz < -3),
    swast = 1*(whz < -3),
    swast_muac = 1*(muaz < -3),
    sunderwt = 1*(waz < -3),
    stunt_uwt = stunt==1 & underwt==1,
    wast_uwt = wast==1 & underwt==1,
    co = stunt==1 & wast==1,
    cum_stunt = 1*(cumsum(coalesce(stunt, 0))>0),
    cum_wast = 1*(cumsum(coalesce(wast, 0))>0),
    cum_uwt = 1*(cumsum(coalesce(underwt, 0))>0),
    cum_sstunt = 1*(cumsum(coalesce(sstunt, 0))>0),
    cum_swast = 1*(cumsum(coalesce(swast, 0))>0),
    cum_suwt = 1*(cumsum(coalesce(sunderwt, 0))>0),
    cum_stunt_uwt = 1*(cumsum(coalesce(stunt_uwt, 0))>0),
    cum_wast_uwt = 1*(cumsum(coalesce(wast_uwt, 0))>0),
    cum_co = 1*(cumsum(coalesce(co, 0))>0),
    cum_wast_muac = 1*(cumsum(coalesce(wast_muac, 0))>0),
    cum_swast_muac = 1*(cumsum(coalesce(swast_muac, 0))>0),
    ever_stunt = max(cum_stunt),
    ever_wast = max(cum_wast),
    ever_uwt = max(cum_uwt),
    ever_sstunt = max(cum_uwt),
    ever_swast = max(cum_swast),
    ever_suwt = max(cum_suwt),
    ever_stunt_uwt = max(cum_stunt_uwt),
    ever_wast_uwt = max(cum_wast_uwt),
    ever_co = max(cum_co),
    ever_wast_muac = max(cum_wast_muac),
    ever_swast_muac = max(cum_swast_muac)
   )


#drop studies with <5 deaths
d <- d %>% group_by(studyid, country) %>% filter(sum(dead, na.rm=T)>4)
table(d$studyid, d$dead)
prop.table(table(d$studyid, d$dead),1)*100


#Create an indicator for when age of death is imputed.
d$imp_agedth <- ifelse(is.na(d$agedth) & d$dead==1, 1, 0)

#Check agedth when maxage is larger
table(d$agedth > d$maxage)
table(d$agedth >= d$maxage)

df <- d %>% filter(agedth < maxage)
summary(df$agedth)
summary(df$agedth - df$maxage)

#Impute agedth when maxage is larger
d$imp_agedth[d$agedth < d$maxage] <- 1
d$agedth[d$agedth < d$maxage] <- d$maxage[d$agedth < d$maxage]

#impute missing agedth with max age
d$agedth[is.na(d$agedth)] <- d$maxage[is.na(d$agedth)] 


#Merge in covariates
cov<-readRDS(paste0(ghapdata_dir,"FINAL_clean_covariates.rds"))

#Remove spaces and punctuation from factors
clean_factor <- function(x){
  if(is.factor(x)){
    x <- as.character(x)
    x <- gsub("[[:punct:]]", " ", x)
    x <- gsub(" ", "", x)
    x <- gsub(" ", "", x)
    x <- gsub(" ", "", x)
    x <- factor(x)
  }
 return(x)
}

colnames(cov)
for(i in 19:ncol(cov)){
  cov[,i] <- clean_factor(cov[,i])
}
head(cov)



#merge covariates
d$subjid <- as.character(d$subjid)
dim(d)
d <- left_join(d, cov[, c("studyid", "subjid", "country", setdiff(colnames(cov),colnames(d)))], 
               by=c("studyid", "subjid", "country"))
dim(d)

d <- droplevels(d)

#Save final dataset
saveRDS(d, mortality_age_path)










 
# #make sure dataset is time-static and subset to 1 observation
# # add minimum Z-scores, mean, and number of stunted or wasted obs
# d <- d %>% 
#   group_by(studyid, country, subjid) %>%
#   mutate(dead=1*(max(dead)>0 | (agedth>0) | (!is.na(causedth) & causedth!="")), agedth=max(agedth)) %>% 
#   slice(1)
# dim(d)
# table(d$dead)
# table(d$studyid, d$dead)
# 
# #look at measurements prior to early death
# #-many seem like incorrect age-death, with anthro measures at older ages
# as.data.frame(d[d$agedth<8 & !is.na(d$agedth),])
# 
# #Drop mortality after 24 months
# summary(d$maxage)
# dim(d)
# table(d$dead)
# 
# #Mark deaths not over 24 months to keep
# d <- d %>% mutate(keep=1*(agedth <= 730 | is.na(agedth) & ((maxage <= 730 & dead==1) | dead!=1)))
# dim(d)
# table(d$dead)
# table(d$keep)
# 
# 
# 
# #Create a mortality after 6 month variable
# d$dead624 <- d$dead 
# d$dead624[d$agedth < 6*30.4167 | (is.na(d$agedth) & d$maxage<6*30.4167)] <- 2
# table(d$dead)
# table(d$dead624)
# 
# d$subjid <- as.character(d$subjid)
# 
# 
# mort <- d
# mort$dead[is.na(mort$dead)] <-0
# mort$dead624[is.na(mort$dead624)] <-0
# mort$dead624[mort$dead624==2] <- NA
# #keep variable with mortality after 24 months
# mort$dead0plus <- mort$dead
# mort$dead6plus <- mort$dead624
# #mark death as 0 if child died after 24 months
# mort$dead[mort$keep==0] <- 0
# mort$dead624[mort$keep==0] <- 0
# 
# prop.table(table(mort$dead))
# 
# mort$cohort <- paste0(mort$studyid," ", mort$country)
# 
# #drop cohorts with no mortality info
# mort <- mort %>% group_by(cohort) %>% mutate(tot_dead=sum(dead, na.rm=T)) %>% filter(tot_dead>0)
# prop.table(table(mort$dead))
# table(mort$cohort, mort$dead)
# table(mort$cohort, mort$dead624)
# table(mort$cohort, mort$dead0plus)
# table(mort$cohort, mort$dead6plus)
# 
# 
# mort <- subset(mort, select = c(studyid, country, subjid, maxage, dead, agedth, causedth, dead624, dead0plus, dead6plus))
# 
# saveRDS(mort, mortality_age_path)
# 
# 
# #mortality within studies measuring anthro before 6 months and had sufficient mortality to be in the primary analysis
# table(mort$dead[mort$studyid %in% c("iLiNS-DOSE", "iLiNS-DYAD-M","JiVitA-3","JiVitA-4","Keneba", "SAS-CompFeed","VITAMIN-A","ZVITAMBO")])
# prop.table(table(mort$dead[mort$studyid %in% c("iLiNS-DOSE", "iLiNS-DYAD-M","JiVitA-3","JiVitA-4","Keneba", "SAS-CompFeed","VITAMIN-A","ZVITAMBO")]))
# 

country <- c("BANGLADESH", "BURKINA FASO", "GAMBIA", "INDIA", "MALAWI", "NEPAL", "PERU", "TANZANIA, UNITED REPUBLIC OF", "ZIMBABWE")
studyids <- c("Burkinda Faso Zn", "GMS-Nepal", "iLiNS-DOSE", "iLiNS-DYAD-M", "JiVitA-3", "JiVitA-4", "Keneba", "MAL-ED", "PROVIDE", "TanzaniaChild2", "VITAMIN-A", "ZVITAMBO")
sex <- c("Male", "Female")
for (i in country){
  data <- d[d$country==i,]
  
  recorded_i <- subset(data, agedth > 0 & agedth < 29, select = c(agedth))
  recorded_ii <- subset(data, agedth > 28 & agedth < 91, select = c(agedth))
  recorded_iii <- subset(data, agedth >90 & agedth < 181, select = c(agedth))
  recorded_iv <- subset(data, agedth > 180 & agedth < 361, select = c(agedth))
  recorded_v <- subset(data, agedth > 360 & agedth < 721, select = c(agedth))
  
  imputed_i <- subset(data, maxage > 0 & maxage < 29, select = c(maxage))
  imputed_ii <- subset(data, maxage > 28 & maxage < 91, select = c(maxage))
  imputed_iii <- subset(data, maxage >90 & maxage < 181, select = c(maxage))
  imputed_iv <- subset(data, maxage > 180 & maxage < 361, select = c(maxage))
  imputed_v <- subset(data, maxage > 360 & maxage < 721, select = c(maxage))
  
  cat("\n")
  print(i)
  cat("recorded\n")
  print(dim(recorded_i))
  print(dim(recorded_ii))
  print(dim(recorded_iii))
  print(dim(recorded_iv))
  print(dim(recorded_v))
  
  cat("\nimputed\n")
  print(dim(imputed_i))
  print(dim(imputed_ii))
  print(dim(imputed_iii))
  print(dim(imputed_iv))
  print(dim(imputed_v))
}


  
