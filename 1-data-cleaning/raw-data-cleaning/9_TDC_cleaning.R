rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(haven)

#Count days with diarrhea for each subject


#breastfeeding in baseline
anthro <- read_sas(paste0(ghapdata_dir, "/raw SAS datasets/TDC/tdc_growth_raw.sas7bdat"))

baseline <- read_sas(paste0(ghapdata_dir, "/raw SAS datasets/TDC/tdc_baseline_raw.sas7bdat"))
colnames(baseline) <- tolower(colnames(baseline))

#Age  at end of exclusive breastfeeding
baseline <- baseline %>% mutate(
  age_at_weaning = as.numeric(dt_exclbf - datedel),  
  age_at_cessation = as.numeric(dt_totbf - datedel),
  predfeed3 = ifelse(age_at_weaning > 3*30.4167, 1, 0),
  exclfeed3 = ifelse(age_at_weaning > 3*30.4167, 1, 0),
  predfeed6 = ifelse(age_at_weaning > 6*30.4167, 1, 0),
  exclfeed6 = ifelse(age_at_weaning > 6*30.4167, 1, 0),
  predfeed36 = ifelse(age_at_weaning > 6*30.4167, 1, 0),
  exclfeed36 = ifelse(age_at_weaning > 6*30.4167, 1, 0),
  predexfd6  = ifelse(age_at_weaning > 6*30.4167, 1, 0)
) %>% select(idno, datedel, predfeed3, exclfeed3, predfeed6, exclfeed6, 
             predfeed36, exclfeed36, predexfd6) %>%
  rename(subjid=idno)

table(baseline$exclfeed3)
table(baseline$exclfeed36)
table(baseline$predexfd6)


#Merge dob into diarrhea
dob <- baseline %>% select(subjid, datedel)
diar <- read_sas(paste0(ghapdata_dir, "/raw SAS datasets/TDC/tdc_diarrhea_raw.sas7bdat"))  %>% rename(subjid=IDNO)
colnames(diar) <- tolower(colnames(diar))
head(diar)
diar <- left_join(diar, dob, by=c("subjid"))
table(is.na(diar$datedel))
#Calc ages at each episode
diar <- diar %>% mutate(firstd = as.numeric(firstd-datedel), 
                        lastd = as.numeric(lastd-datedel),
                        lastd = ifelse(lastd>730,730,lastd),
                        diar_dur = lastd-firstd)
#check all obs under 2 years
summary(diar$lastd)
summary(diar$firstd)
summary(diar$diar_dur)

#calc percent days with diarrhea under 24 months
diar24 <- diar %>% group_by(subjid) %>%
  summarize(diar_days24 = sum(diar_dur),
            perdiar24 = diar_days24/730)
summary(diar24$diar_days24)
summary(diar24$perdiar24)

#calc percent days with diarrhea under 6 months
diar6 <- diar %>% group_by(subjid) %>% filter(firstd<=182) %>%
  mutate(lastd = ifelse(lastd>182,182,lastd)) %>%
  summarize(diar_days6 = sum(diar_dur),
            perdiar6 = diar_days6/182)
summary(diar6$diar_days6)
summary(diar6$perdiar6)

dim(diar6)
dim(diar24)
diar <- left_join(diar24, diar6, by="subjid")
dim(diar)
diar$perdiar6[is.na(diar$perdiar6)] <- 0
diar <- diar %>% select(subjid, perdiar6, perdiar24)

#cleaned data- use to check ID merging
d <- read_sas(paste0(ghapdata_dir, "/raw SAS datasets/TDC/ki1000108_tdc.sas7bdat"))
colnames(d) <- tolower(colnames(d))
d <- d %>% select(subjid) %>% mutate(studyid="TDC")

dim(d)
df <- left_join(d, baseline, by=c("subjid"))
df <- left_join(df, diar, by=c("subjid"))
dim(df)
head(df)
table(is.na(df$predexfd6))
table(is.na(df$perdiar6))
table(is.na(df$perdiar24))

#Children with no diarrhea set to zero:
df$perdiar6[is.na(df$perdiar6)] <- 0
df$perdiar24[is.na(df$perdiar24)] <- 0

#Save cleaned risk factors
saveRDS(df, file=paste0(ghapdata_dir,"covariate creation intermediate datasets/derived covariate datasets/TDC_BF_diar.RDS"))
