

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

stunt_ci_0_6 <- stunt_ci_0_6 %>% subset(., select=c(studyid,country,subjid,ever_stunted06, ever_sstunted06)) 
stunt_ci_0_24 <- stunt_ci_0_24 %>% subset(., select=c(studyid,country,subjid,ever_stunted024, ever_sstunted024))
wast_ci_0_6 <- wast_ci_0_6 %>% subset(., select=c(studyid,country,subjid,ever_wasted06, ever_swasted06, pers_wasted06)) 
wast_ci_0_24 <- wast_ci_0_24 %>% subset(., select=c(studyid,country,subjid,ever_wasted024, ever_swasted024, pers_wasted024))
wast_ci_0_6_no_birth <- wast_ci_0_6_no_birth %>% subset(., select=c(studyid,country,subjid,ever_wasted06_noBW, ever_swasted06_noBW)) 
underweight_ci_0_6 <- underweight_ci_0_6 %>% subset(., select=c(studyid,country,subjid,ever_underweight06, ever_sunderweight06)) 
underweight_ci_0_24 <- underweight_ci_0_24 %>% subset(., select=c(studyid,country,subjid,ever_underweight024, ever_sunderweight024))
co_ci_0_6 <- co_ci_0_6 %>% subset(., select=c(studyid,country,subjid,ever_co06)) 
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
cov <- cov %>% subset(., select = - c(dead, agedth, causedth))
dim(d)
df <- merge(as.data.frame(d), cov, by=c("studyid", "subjid", "country"), all.x = T, all.y = F)
dim(df)
head(df)


# Merge in mortality information
dim(df)
dim(mort)
d <- left_join(df, mort, by=c("studyid",  "country", "subjid"))
dim(d)

#Check mortality variation for all exposures
table(d$ever_wasted06, d$dead)
table(d$ever_swasted06, d$dead)
table(d$pers_wasted06, d$dead)


table(d$ever_stunted06, d$dead)
table(d$ever_sstunted06, d$dead)


table(d$ever_underweight06, d$dead)
table(d$ever_sunderweight06, d$dead)


table(d$ever_co06, d$dead)


calc_RR <- function(d1, d2){
  tab <- table(d1, d2)
  (tab[1,1] * tab[2*2])/(tab[1,2] * tab[2*1])
}

# calc_RR(d$ever_wasted06, d$dead)
# calc_RR(d$ever_swasted06, d$dead)
# calc_RR(d$pers_wasted06, d$dead)
# calc_RR(d$ever_wasted024, d$dead)
# calc_RR(d$ever_swasted024, d$dead)
# calc_RR(d$pers_wasted024, d$dead)
# 
# calc_RR(d$ever_stunted06, d$dead)
# calc_RR(d$ever_sstunted06, d$dead)
# calc_RR(d$ever_stunted024, d$dead)
# calc_RR(d$ever_sstunted024, d$dead)
# 
# calc_RR(d$ever_wasted06_noBW, d$dead)
# calc_RR(d$ever_swasted06_noBW, d$dead)
# 
# calc_RR(d$ever_underweight06, d$dead)
# calc_RR(d$ever_sunderweight06, d$dead)
# calc_RR(d$ever_underweight024, d$dead)
# calc_RR(d$ever_sunderweight024, d$dead)
# 
# calc_RR(d$ever_co06, d$dead)
# calc_RR(d$ever_co024, d$dead)


#Drop studies with no mortality information
d <- d %>% group_by(studyid, country) %>% mutate(tot_dead = sum(dead)) %>% filter(tot_dead>0) %>% ungroup() %>% as.data.frame()

#Set exposures to factors
Avars <- c("ever_wasted06",
           "ever_swasted06",
           "pers_wasted06",
           "ever_stunted06",
           "ever_sstunted06",
           # "ever_wasted024",
           # "ever_swasted024",
           # "pers_wasted024",
           # "ever_stunted024",
           # "ever_sstunted024",
           # "ever_wasted06_noBW",
           # "ever_swasted06_noBW",
           "ever_underweight06",
           "ever_sunderweight06",
           # "ever_underweight024",
           # "ever_sunderweight024",
           "ever_co06"#,
           #"ever_co024"
           )

for(i in Avars){
  print(i)
  d[,i] <- factor(d[,i])
}


#Summarize number of cohorts and children,
d %>% filter(tot_dead>10) %>% #group_by(studyid, country) %>% 
  summarize(ncohort=length(unique(paste0(studyid, country))), 
  nobs=n(), nchild=length(unique(paste0(studyid, country, subjid))),
  ndeath=sum(dead), missage=sum(is.na(agedth)))


save(d, file=paste0(ghapdata_dir,"stuntwast_mortality.Rdata"))


#Examine case fatality
prop.table(table(d$ever_sstunted06, d$dead), 1) * 100
prop.table(table(d$ever_swasted06, d$dead), 1) * 100
prop.table(table(d$ever_sunderweight06, d$dead), 1) * 100
prop.table(table(d$ever_co06, d$dead), 1) * 100
prop.table(table(d$pers_wasted06, d$dead), 1) * 100


prop.table(table(d$ever_sstunted06[d$region=="South Asia"], d$dead[d$region=="South Asia"]), 1)* 100
prop.table(table(d$ever_sstunted06[d$region=="Africa"], d$dead[d$region=="Africa"]), 1)* 100

prop.table(table(d$ever_swasted06[d$region=="South Asia"], d$dead[d$region=="South Asia"]), 1)* 100
prop.table(table(d$ever_swasted06[d$region=="Africa"], d$dead[d$region=="Africa"]), 1)* 100

prop.table(table(d$ever_sunderweight06[d$region=="South Asia"], d$dead[d$region=="South Asia"]), 1)* 100
prop.table(table(d$ever_sunderweight06[d$region=="Africa"], d$dead[d$region=="Africa"]), 1)* 100


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
                     "pers_wasted06")

d <- as.data.frame(d)
for(i in Avars_morbidity){
  print(i)
  d[,i] <- factor(d[,i])
}


save(d, file=paste0(ghapdata_dir,"stuntwast_morbidity.Rdata"))



#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# Create 0-24 mortality datasetv(with 0-6 no birth wasting)
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX


d<- wast_ci_0_24

#Join in stunting measures
d <- full_join(d, stunt_ci_0_24, by=c("studyid","country","subjid"))
dim(d)
head(d)

#Join in underweight measures
d <- full_join(d, underweight_ci_0_24, by=c("studyid","country","subjid"))
dim(d)
head(d)

#merge co-occurrence measures
d <- full_join(d, co_ci_0_24, by=c("studyid","country", "subjid"))
dim(d)

#merge u6 no BW
d <- full_join(d, wast_ci_0_6_no_birth, by=c("studyid","country", "subjid"))
dim(d)


#Merge in covariates
dim(d)
df <- merge(as.data.frame(d), cov, by=c("studyid", "subjid", "country"), all.x = T, all.y = F)
dim(df)
head(df)


# Merge in mortality information
dim(df)
dim(mort)
d <- left_join(df, mort, by=c("studyid",  "country", "subjid"))
dim(d)



#Drop studies with no mortality information
d <- d %>% group_by(studyid, country) %>% mutate(tot_dead = sum(dead)) %>% filter(tot_dead>0) %>% ungroup() %>% as.data.frame()

#Set exposures to factors
Avars <- c(
           "ever_wasted024",
           "ever_swasted024",
           "pers_wasted024",
           "ever_stunted024",
           "ever_sstunted024",
           "ever_wasted06_noBW",
           "ever_swasted06_noBW",
           "ever_underweight024",
           "ever_sunderweight024",
           "ever_co024"
)

for(i in Avars){
  print(i)
  d[,i] <- factor(d[,i])
}


#Summarize number of cohorts and children,
d %>% filter(tot_dead>10) %>% #group_by(studyid, country) %>% 
  summarize(ncohort=length(unique(paste0(studyid, country))), 
            nobs=n(), nchild=length(unique(paste0(studyid, country, subjid))),
            ndeath=sum(dead), missage=sum(is.na(agedth)))


save(d, file=paste0(ghapdata_dir,"stuntwast_mortality_024.Rdata"))

#Examine case fatality
prop.table(table(d$ever_swasted024, d$dead), 1) * 100
prop.table(table(d$ever_swasted024[d$region=="South Asia"], d$dead[d$region=="South Asia"]), 1)* 100
prop.table(table(d$ever_swasted024[d$region=="Africa"], d$dead[d$region=="Africa"]), 1)* 100

#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# Create list of adjustment variables
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

cov=c(
  "sex","arm","brthmon","vagbrth","hdlvry","single","trth2o","cleanck",
  "impfloor","hfoodsec","hhwealth_quart",
  "W_mage","W_mhtcm","W_mwtkg",
  "W_mbmi","W_fage","W_fhtcm","W_meducyrs","W_feducyrs",          
  "W_nrooms","W_nhh","W_nchldlt5","W_parity",
  "impsan","safeh20")

adjustment_sets_mortality <- list( 
  ever_wasted06=cov,
  ever_swasted06=cov,
  pers_wasted06=cov,
  ever_stunted06=cov,
  ever_sstunted06=cov,
  ever_wasted024=cov,
  ever_swasted024=cov,
  pers_wasted024=cov,
  ever_stunted024=cov,
  ever_sstunted024=cov,
  ever_wasted06_noBW=cov,
  ever_swasted06_noBW=cov,
  ever_underweight06=cov,
  ever_sunderweight06=cov,
  ever_underweight024=cov,
  ever_sunderweight024=cov,
  ever_co06=cov,
  ever_co024=cov)


save(adjustment_sets_mortality, file=here("data/mortality_adjustment_sets_list.Rdata"))


