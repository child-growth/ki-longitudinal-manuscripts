

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


#Load mortality outcomes
mort <- readRDS(paste0(ghapdata_dir,"mortality.rds"))


#load covariates
cov <- readRDS(paste0(ghapdata_dir,"/FINAL_clean_covariates.rds"))
cov$country <- as.character(cov$country)
#Drop wasting risk factors
cov <- cov %>% subset(., select= -c(pers_wast, enwast, anywast06))


#Load wasting measures
load(paste0(ghapdata_dir,"mort_exposures.RData"))
exposures_no_overlap <- readRDS("/data/KI/UCB-SuperLearner/Manuscript analysis data/mortality_age_no_overlap.rds")


stunt_ci_0_6 <- stunt_ci_0_6 %>% subset(., select=c(studyid,country,subjid,ever_stunted06, ever_sstunted06)) 
stunt_ci_0_24 <- stunt_ci_0_24 %>% subset(., select=c(studyid,country,subjid,ever_stunted024, ever_sstunted024))
wast_ci_0_6 <- wast_ci_0_6 %>% subset(., select=c(studyid,country,subjid,ever_wasted06, ever_swasted06, pers_wasted06)) 
wast_ci_0_24 <- wast_ci_0_24 %>% subset(., select=c(studyid,country,subjid,ever_wasted024, ever_swasted024, pers_wasted024))
wast_ci_0_6_no_birth <- wast_ci_0_6_no_birth %>% subset(., select=c(studyid,country,subjid,ever_wasted06_noBW, ever_swasted06_noBW)) 
underweight_ci_0_6 <- underweight_ci_0_6 %>% subset(., select=c(studyid,country,subjid,ever_underweight06, ever_sunderweight06)) 
underweight_ci_0_24 <- underweight_ci_0_24 %>% subset(., select=c(studyid,country,subjid,ever_underweight024, ever_sunderweight024))
co_ci_0_6 <- co_ci_0_6 %>% subset(., select=c(studyid,country,subjid,ever_co06, ever_wast_uwt06, ever_stunt_uwt06)) 
co_ci_0_24 <- co_ci_0_24 %>% subset(., select=c(studyid,country,subjid,ever_co024))

# stunt_ci_0_6_no_birth <- stunt_ci_0_6_no_birth %>% subset(., select=c(studyid,country,subjid,ever_stunted06_noBW, ever_sstunted06_noBW)) 
# underweight_ci_0_6_no_birth <- underweight_ci_0_6_no_birth %>% subset(., select=c(studyid,country,subjid,ever_underweighted06_noBW, ever_sunderweighted06_noBW)) 


#convert subjid to character for the merge with mortality dataset
mort$subjid <- as.character(mort$subjid)
stunt_ci_0_6$subjid <- as.character(stunt_ci_0_6$subjid)
stunt_ci_0_24$subjid <- as.character(stunt_ci_0_24$subjid)
wast_ci_0_6$subjid <- as.character(wast_ci_0_6$subjid)
wast_ci_0_24$subjid <- as.character(wast_ci_0_24$subjid)
wast_ci_0_6_no_birth$subjid <- as.character(wast_ci_0_6_no_birth$subjid)
underweight_ci_0_6$subjid <- as.character(underweight_ci_0_6$subjid)
underweight_ci_0_24$subjid <- as.character(underweight_ci_0_24$subjid)
co_ci_0_6$subjid <- as.character(co_ci_0_6$subjid)
co_ci_0_24$subjid <- as.character(co_ci_0_24$subjid)


#merge u6 datasets
d<- wast_ci_0_6

#Join in stunting measures
d <- full_join(d, stunt_ci_0_6, by=c("studyid","country","subjid"))
dim(d)
head(d)



#Join in underweight measures
d <- full_join(d, underweight_ci_0_6, by=c("studyid","country","subjid"))
dim(d)
head(d)




#merge co-occurrence measures
d <- full_join(d, co_ci_0_6, by=c("studyid","country", "subjid"))
dim(d)

#Merge in covariates
dim(d)
df <- merge(as.data.frame(d), cov, by=c("studyid", "subjid", "country"), all.x = T, all.y = F)
dim(df)
head(df)



#Set exposures to factors
Avars <- c("ever_wasted06",
           "ever_swasted06",
           "pers_wasted06",
           "ever_stunted06",
           "ever_sstunted06",
           "ever_underweight06",
           "ever_sunderweight06",
           "ever_wast_uwt06",
           "ever_stunt_uwt06",
           "ever_co06")



#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# Create morbidity datasets
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

co_prev18 <- co_prev18 %>% subset(., select = c( studyid, subjid, country, co_occurence))
pers_wast_6_24 <- pers_wast_6_24 %>% subset(., select = c( studyid, subjid, country, pers_wasted624))

dim(co_prev18)
dim(pers_wast_6_24)
d <- full_join(co_prev18, pers_wast_6_24, by=c("studyid","country","subjid"))


dim(d)
dim(df)
d <- full_join(d, df, by=c("studyid","country","subjid"))
dim(d)


#Summarize number of cohorts and children,
d %>% mutate(cohort= paste0(studyid, country)) %>% group_by(cohort) %>%
  mutate(Ncases=sum(pers_wasted624, na.rm=T)) %>%
  filter(!is.na(pers_wasted624), Ncases > 5) %>% ungroup() %>% 
  summarize(ncohort=length(unique(paste0(studyid, country))), 
            nobs=n(), nchild=length(unique(paste0(studyid, country, subjid))),
            n_pers=sum(pers_wasted624, na.rm=T))

d %>% mutate(cohort= paste0(studyid, country)) %>% group_by(cohort) %>%
  mutate(Ncases=sum(co_occurence, na.rm=T)) %>%
  filter(!is.na(co_occurence), Ncases > 5) %>% ungroup() %>% 
  summarize(ncohort=length(unique(paste0(studyid, country))), 
            nobs=n(), nchild=length(unique(paste0(studyid, country, subjid))),
            n_co=sum(co_occurence, na.rm=T))

#Drop overlapping exposures
head(d)
colnames(d)

table(d$ever_wasted06, d$ever_stunted06, d$ever_underweight06)
df <- d %>% mutate(
  ever_wasted06=ifelse(ever_stunted06==0 & ever_underweight06==0,  ever_wasted06, NA),
  ever_stunted06=ifelse(ever_wasted06==0  & ever_underweight06==0,  ever_stunted06, NA),
  ever_underweight06=ifelse(ever_wasted06==0 & ever_stunted06==0,   ever_underweight06, NA ),
  #ever_co06=ifelse(ever_wasted06==0 & ever_stunted06==0 & ever_underweight06==0  & ever_wast_uwt06==0 & ever_stunt_uwt06==0, ever_co06, NA ),
  ever_wast_uwt06=ifelse(ever_wasted06==0 & ever_stunted06==0 & ever_underweight06==0 & ever_stunt_uwt06==0, ever_wast_uwt06, NA ),
  ever_stunt_uwt06=ifelse(ever_wasted06==0 & ever_stunted06==0 & ever_underweight06==0 & ever_wast_uwt06==0 , ever_stunt_uwt06, NA ),
  ever_swasted06=ifelse(ever_sstunted06 ==0 &  ever_sunderweight06==0, ever_swasted06, NA ),
  ever_sstunted06=ifelse(ever_swasted06==0 &  ever_sunderweight06==0, ever_sstunted06, NA ),
  ever_sunderweight06=ifelse(ever_swasted06==0 &  ever_sstunted06 ==0 , ever_sunderweight06, NA )
)
table(d$ever_wasted06)
table(df$ever_wasted06)
table(d$ever_stunted06)
table(df$ever_stunted06)
table(d$ever_underweight06)
table(df$ever_underweight06)

ifelse(ever_wasted06==0 & ever_stunted06==0 & ever_underweight06==0 & ever_co06==0 & ever_wast_uwt06==0 & ever_stunt_uwt06==0 )

  

#Check mortality variation for all exposures
table(d$ever_wasted06, d$pers_wasted624)
table(d$ever_swasted06, d$pers_wasted624)
table(d$pers_wasted06, d$pers_wasted624)
table(d$ever_stunted06, d$pers_wasted624)
table(d$ever_co06, d$pers_wasted624)

table(d$ever_underweight06, d$pers_wasted624)
table(d$ever_sunderweight06, d$pers_wasted624)
calc_RR(d$ever_underweight06, d$pers_wasted624)
calc_RR(d$ever_sunderweight06, d$pers_wasted624)



table(d$ever_wasted06, d$co_occurence)
table(d$ever_swasted06, d$co_occurence)
table(d$pers_wasted06, d$co_occurence)
table(d$ever_stunted06, d$co_occurence)
table(d$ever_underweight06, d$co_occurence)
table(d$ever_co06, d$co_occurence)

table(d$ever_underweight06, d$co_occurence)
table(d$ever_sunderweight06, d$co_occurence)

calc_RR(d$ever_underweight06, d$co_occurence)
calc_RR(d$ever_sunderweight06, d$co_occurence)

# res1 <- d %>% group_by(studyid, country) %>% do(res=try(calc_RR(.$ever_underweight06, .$co_occurence))) %>% as.data.frame() %>% mutate(res=as.numeric(res))
# res2 <- d %>% group_by(studyid, country) %>% do(res=try(calc_RR(.$ever_sunderweight06, .$co_occurence))) %>% as.data.frame() %>% mutate(res=as.numeric(res))
# res <- merge(res1, res2, by=c("studyid","country"))
# res

#Set exposures to factors
Avars_morbidity <- c("ever_wasted06",
                     "ever_swasted06",
                     "pers_wasted06",
                     "ever_stunted06",
                     "ever_sstunted06",
                     "ever_underweight06",
                     "ever_sunderweight06",
                     "ever_co06",
                     "ever_wast_uwt06",
                     "ever_stunt_uwt06",
                     "pers_wasted06")

d <- as.data.frame(d)
for(i in Avars_morbidity){
  print(i)
  d[,i] <- factor(d[,i])
}


save(d, file=paste0(ghapdata_dir,"stuntwast_morbidity_no_overlap.Rdata"))


