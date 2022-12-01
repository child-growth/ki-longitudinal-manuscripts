

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


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

# drop all rows where any anthro is missing 
table(d$dead, is.na(d$haz) & is.na(d$waz) & is.na(d$whz))
table(d$dead, is.na(d$haz) | is.na(d$waz) | is.na(d$whz))
d <- d %>% filter(!(is.na(haz) & is.na(waz)  & is.na(whz)))
#d <- d %>% filter(!(is.na(haz) | is.na(waz)  | is.na(whz)))

table(d$studyid, d$dead)
d %>% group_by(studyid, subjid) %>% arrange(agedays) %>% slice(1) %>%
  group_by(studyid) %>% summarize(N=n(), deaths=sum(dead)) %>% filter(deaths!=0)

#Make sure only final observation is marked dead
d <- d %>% group_by(studyid, subjid) %>% arrange(agedays) %>%
  mutate(dead = ifelse(agedays==max(agedays), dead, 0),
         final_obs = ifelse(agedays==max(agedays), 1, 0))
table(d$studyid, d$dead)
table(d$final_obs, d$dead)



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
    any_stunt = 1*(haz < -2),
    any_wast = 1*(whz < -2),
    any_underwt = 1*(waz < -2),
    any_sstunt = 1*(haz < -3),
    any_swast = 1*(whz < -3),
    any_sunderwt = 1*(waz < -3),

    ref  = 1*( any_stunt==0 & any_wast==0 & any_underwt==0),
    stunt  = 1*( any_stunt==1 & any_wast==0 & any_underwt==0),
    wast  = 1*( any_stunt==0 & any_wast==1 & any_underwt==0),
    underwt = 1*(any_stunt==0 & any_wast==0 & any_underwt==1),
    sstunt = 1*(any_sstunt==1 &  any_swast==0 & any_sunderwt==0),
    swast = 1*(any_sstunt==0 &  any_swast==1 & any_sunderwt==0),
    sunderwt = 1*(any_sstunt==0 &  any_swast==0 & any_sunderwt==1),
    stunt_uwt = 1*(any_stunt==1 & any_wast==0 & any_underwt==1),
    wast_uwt = 1*(any_stunt==0 & any_wast==1 & any_underwt==1),
    co = 1*(any_stunt==1 & any_wast==1 & any_underwt==1),
    sstunt_suwt = 1*(any_sstunt==1 & any_swast==0 & any_sunderwt==1),
    swast_suwt = 1*(any_sstunt==0 & any_swast==1 & any_sunderwt==1),
    sev_co = 1*(any_sstunt==1 & any_swast==1 & any_sunderwt==1),
    
    cum_stunt = 1*(cumsum(coalesce(stunt, 0))>0),
    cum_wast = 1*(cumsum(coalesce(wast, 0))>0),
    cum_uwt = 1*(cumsum(coalesce(underwt, 0))>0),
    cum_sstunt = 1*(cumsum(coalesce(sstunt, 0))>0),
    cum_swast = 1*(cumsum(coalesce(swast, 0))>0),
    cum_suwt = 1*(cumsum(coalesce(sunderwt, 0))>0),
    cum_stunt_uwt = 1*(cumsum(coalesce(stunt_uwt, 0))>0),
    cum_wast_uwt = 1*(cumsum(coalesce(wast_uwt, 0))>0),
    cum_co = 1*(cumsum(coalesce(co, 0))>0),
    ever_stunt = max(cum_stunt),
    ever_wast = max(cum_wast),
    ever_uwt = max(cum_uwt),
    ever_sstunt = max(cum_uwt),
    ever_swast = max(cum_swast),
    ever_suwt = max(cum_suwt),
    ever_stunt_uwt = max(cum_stunt_uwt),
    ever_wast_uwt = max(cum_wast_uwt),
    ever_co = max(cum_co)
  )
head(d)

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
d$agedth <- ifelse(d$agedth < d$maxage, d$maxage, d$agedth)

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
saveRDS(d, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/mortality_age_no_overlap.rds")




# # #mortality within studies measuring anthro before 6 months and had sufficient mortality to be in the primary analysis
# # table(mort$dead[mort$studyid %in% c("iLiNS-DOSE", "iLiNS-DYAD-M","JiVitA-3","JiVitA-4","Keneba", "SAS-CompFeed","VITAMIN-A","ZVITAMBO")])
# # prop.table(table(mort$dead[mort$studyid %in% c("iLiNS-DOSE", "iLiNS-DYAD-M","JiVitA-3","JiVitA-4","Keneba", "SAS-CompFeed","VITAMIN-A","ZVITAMBO")]))
# # 
# 
# country <- c("BANGLADESH", "BURKINA FASO", "GAMBIA", "INDIA", "MALAWI", "NEPAL", "PERU", "TANZANIA, UNITED REPUBLIC OF", "ZIMBABWE")
# studyids <- c("Burkinda Faso Zn", "GMS-Nepal", "iLiNS-DOSE", "iLiNS-DYAD-M", "JiVitA-3", "JiVitA-4", "Keneba", "MAL-ED", "PROVIDE", "TanzaniaChild2", "VITAMIN-A", "ZVITAMBO")
# sex <- c("Male", "Female")
# for (i in country){
#   data <- d[d$country==i,]
#   
#   recorded_i <- subset(data, agedth > 0 & agedth < 29, select = c(agedth))
#   recorded_ii <- subset(data, agedth > 28 & agedth < 91, select = c(agedth))
#   recorded_iii <- subset(data, agedth >90 & agedth < 181, select = c(agedth))
#   recorded_iv <- subset(data, agedth > 180 & agedth < 361, select = c(agedth))
#   recorded_v <- subset(data, agedth > 360 & agedth < 721, select = c(agedth))
#   
#   imputed_i <- subset(data, maxage > 0 & maxage < 29, select = c(maxage))
#   imputed_ii <- subset(data, maxage > 28 & maxage < 91, select = c(maxage))
#   imputed_iii <- subset(data, maxage >90 & maxage < 181, select = c(maxage))
#   imputed_iv <- subset(data, maxage > 180 & maxage < 361, select = c(maxage))
#   imputed_v <- subset(data, maxage > 360 & maxage < 721, select = c(maxage))
#   
#   cat("\n")
#   print(i)
#   cat("recorded\n")
#   print(dim(recorded_i))
#   print(dim(recorded_ii))
#   print(dim(recorded_iii))
#   print(dim(recorded_iv))
#   print(dim(recorded_v))
#   
#   cat("\nimputed\n")
#   print(dim(imputed_i))
#   print(dim(imputed_ii))
#   print(dim(imputed_iii))
#   print(dim(imputed_iv))
#   print(dim(imputed_v))
# }

