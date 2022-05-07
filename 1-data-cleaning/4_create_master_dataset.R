


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#load longform anthropometry and mortality data
Zscores <- readRDS(included_studies_path)

#load country metrics
country_metrics <- readRDS(file=here("data/country metrics/combined_country_metrics.RDS"))
country_metrics <- country_metrics %>% rename(brthyr = year) %>% mutate(country=str_to_upper(country))

# Check how many at-birth measurements have
# length < 45cm and therefore no Z-scores
df <- Zscores %>% filter(agedays <= 7)
dim(df)
mean(df$lencm < 45, na.rm=T)*100
table(1*(df$lencm < 45), is.na(df$whz))
table(df$country, 1*(df$lencm < 45))

#keep only Z-scores and mortality variables, and month of measurement
dput(colnames(Zscores))
Zscores <- Zscores %>% 
  subset(., select = c(studyid, country, measurefreq, subjid, sex, agedays, 
                       waz, haz, whz, muaz, lencm, wtkg, htcm,  tr, arm,  month, brthweek, brthyr,  dead, agedth, 
                       latitude, longitud, causedth))


#mark regions 
Zscores <- mark_region(Zscores)
table(Zscores$region)

#fill in missing birthyr
table(Zscores$studyid, is.na(Zscores$brthyr))
Zscores$brthyr[Zscores$studyid=="NIH-Birth"] <- 2008
Zscores$brthyr[Zscores$studyid=="NIH-Crypto"] <- 2014
Zscores$brthyr[Zscores$studyid=="PROBIT"] <- 1996
Zscores$brthyr[Zscores$studyid=="PROVIDE"] <- 2011
Zscores <- Zscores %>% group_by(studyid, country) %>% mutate(brthyr=ifelse(is.na(brthyr),floor(mean(brthyr, na.rm=T)),brthyr))
table(Zscores$studyid, is.na(Zscores$brthyr))
unique(Zscores$brthyr)



#merge country metrics
Zscores <- left_join(Zscores, country_metrics, by = c("country","brthyr"))
# head(df)
# table(is.na(df$gii))
# 
# table(df$studyid, is.na(df$brthyr))
# 
# table(df$country, is.na(df$gdp))
# table(df$country, is.na(df$gii))
# table(country_metrics$country)
# 
# #some missing birthyears
# df[is.na(df$gdp) & df$country=="PAKISTAN",]
# 
# #explore variation in country-level metrics
# ggplot(df, aes(x=gdp)) + geom_histogram()
# ggplot(df, aes(x=gdp)) + geom_density() + facet_wrap(~country)
# df[df$gdp==max(df$gdp, na.rm=T),]
# 
# ggplot(df, aes(x=gdi)) + geom_histogram()
# ggplot(df, aes(x=gii)) + geom_histogram()
# ggplot(df, aes(x=chi)) + geom_histogram()
# ggplot(df, aes(x=gini)) + geom_histogram()
# ggplot(df, aes(x=he)) + geom_histogram()
# ggplot(df, aes(x=pov)) + geom_histogram()
# 
# 
# #put histograms in google doc after imputing birthyear and subsetting to 1-row per child
# #stunting incidence
# table(df$studyid, (df$gini>50))




#load covariate dataset (one row per child)
cov <- readRDS(clean_covariates_path)
table(cov$mwtkg)
table(cov$mbmi)

dput(colnames(cov))

cov <- cov %>% subset(., select = c(studyid, subjid,  country, 
                                    gagebrth, brthmon, parity, birthwt, birthlen, vagbrth, 
                                    hdlvry, mage, mhtcm, mwtkg, mbmi, meducyrs, single, 
                                    fage, fhtcm, feducyrs, trth2o, cleanck, impfloor, 
                                    nrooms, nhh, nchldlt5, earlybf, hfoodsec,  
                                    anywast06, pers_wast, enstunt, enwast, hhwealth_quart, 
                                    id, W_gagebrth, W_birthwt, W_birthlen, W_mage, W_mhtcm, 
                                    W_mwtkg, W_mbmi, W_fage, W_fhtcm,  W_meducyrs, W_feducyrs, 
                                    W_nrooms, W_nhh, W_nchldlt5, W_parity, impsan, safeh20, 
                                    perdiar6, perdiar24, W_perdiar6, W_perdiar24, 
                                    predexfd6))

Zscores$subjid <- as.character(Zscores$subjid)

table(Zscores$country)
table(cov$country)

dim(Zscores)
dim(cov)
d <- left_join(Zscores, cov, by = c("studyid", "subjid", "country"))
dim(d)

rm(Zscores, cov)
gc()

##Drop observations missing all anthropometry
dim(d)
d <- d %>% filter(!is.na(haz) | !is.na(whz) | !is.na(waz) | !is.na(muaz))
dim(d)


#Fill in missing month of measurement for cohorts that measure birth month  
table(is.na(d$month), is.na(d$brthmon))
table(is.na(d$month))
d$month[is.na(d$month)] <- ceiling((as.numeric(d$brthmon[is.na(d$month)]) + d$agedays[is.na(d$month)]/30.4167)%%12) 
table(is.na(d$month))
table(d$month)

#Rename tanzania
d$country[d$country=="TANZANIA, UNITED REPUBLIC OF"]<-"TANZANIA"
table(d$country)

#make cohort-id variable
d$cohortid <- paste0(d$studyid,"-",d$country)
table(d$cohortid)

#make exclusion variable
d$exclude_desc <- ifelse(d$agedays > 25 * 30.4167, 1, 0)
table(d$exclude_desc)



# Save dataset
saveRDS(d, ki_manuscript_dataset_path)
write.csv(d, "/data/KI/UCB-SuperLearner/Manuscript analysis data/ki-manuscript-dataset.csv")


# Create dataset of study start years
start_year <- d %>% filter(agedays <= 731) %>%
  group_by(studyid, country, subjid) %>%
  mutate(max_year = max(brthyr + agedays/365)) %>%
  group_by(studyid, country) %>% 
  summarize(start_year = min(brthyr), median_birth_year = median(brthyr), end_birth_year=max(brthyr), max_yr=max(max_year))

#fill in start year and max year for studies missing birth year
start_year$start_year[start_year$studyid=="NIH-Birth"] <- 2008
start_year$start_year[start_year$studyid=="PROVIDE"] <- 2011
start_year$start_year[start_year$studyid=="NIH-Crypto"] <- 2014
start_year$start_year[start_year$studyid=="Burkina Faso Zn"] <- 2010

start_year$max_yr[start_year$studyid=="NIH-Birth"] <- 2014
start_year$max_yr[start_year$studyid=="PROVIDE"] <- 2014
start_year$max_yr[start_year$studyid=="NIH-Crypto"] <- 2017
start_year$max_yr[start_year$studyid=="Burkina Faso Zn"] <- 2012

saveRDS(start_year, paste0(here::here(),"/data/study_start_years.rds"))


#save birth years
brthyrs <- d %>% group_by(studyid, country) %>% distinct(brthyr)
saveRDS(brthyrs, paste0(here::here(),"/data/study_birth_years.rds"))


#creat dataset of unique children and country metrics
colnames(d)

head(d)

df <- d %>%  group_by(studyid, country, subjid) %>% slice(1) %>% 
             select(studyid, subjid, country, brthyr, region, gdp,gdi,gii,chi,gini,he,pov)
head(df)

#classify study decade
df <- left_join(df, start_year, by = c("studyid", "country"))
saveRDS(df, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/ki-country-metrics.rds")

