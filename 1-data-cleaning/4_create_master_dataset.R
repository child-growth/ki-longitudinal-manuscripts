


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#load longform anthropometry and mortality data
Zscores <- readRDS(included_studies_path)


# Check how many at-birth measurements have
# length < 45cm and therefore no Z-scores
df <- Zscores %>% filter(agedays==1)
dim(df)
mean(df$lencm < 45, na.rm=T)*100
table(1*(df$lencm < 45), is.na(df$whz))
table(df$country, 1*(df$lencm < 45))

#keep only Z-scores and mortality variables, and month of measurement
dput(colnames(Zscores))
Zscores <- Zscores %>% 
  subset(., select = c(studyid, country, measurefreq, subjid, sex, agedays, 
                       waz, haz, whz, muaz, lencm, wtkg, htcm,  tr, month, brthweek,  dead, agedth, 
                       latitude, longitud, causedth))

#mark regions 
Zscores <- mark_region(Zscores)
table(Zscores$region)

#load covariate dataset (one row per child)
cov <- readRDS(paste0(ghapdata_dir,"FINAL_clean_covariates.rds"))

dput(colnames(cov))

cov <- cov %>% subset(., select = c(studyid, subjid,  country, arm,  
                                    gagebrth, brthmon, parity, birthwt, birthlen, vagbrth, 
                                    hdlvry, mage, mhtcm, mwtkg, mbmi, meducyrs, single, 
                                    fage, fhtcm, feducyrs, trth2o, cleanck, impfloor, 
                                    nrooms, nhh, nchldlt5, earlybf, hfoodsec,  
                                    anywast06, pers_wast, enstunt, enwast, hhwealth_quart, 
                                    id, W_gagebrth, W_birthwt, W_birthlen, W_mage, W_mhtcm, 
                                    W_mwtkg, W_mbmi, W_fage, W_fhtcm, W_meducyrs, W_feducyrs, 
                                    W_nrooms, W_nhh, W_nchldlt5, W_parity, impsan, safeh20, 
                                    perdiar6, perdiar24, W_perdiar6, W_perdiar24, 
                                    predexfd6))


Zscores$subjid <- as.character(Zscores$subjid)

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



table(d$studyid, d$tr)

saveRDS(d, ki_manuscript_dataset_path)



