
rm(list=ls())
try(.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/4.0/" , .libPaths() ) ))

source(paste0(here::here(), "/0-config.R"))
try(.libPaths( "~/rlibs" ))
library(data.table)
library(longbowtools)
library(progress)
library(longbowRiskFactors)


# 1. enumerate analysis
setwd(here("4-longbow-tmle-analysis","run-longbow","primary-analysis"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)

#Set to continious
default_params$script_params$count_Y <- FALSE

#load analyses
load(here("4-longbow-tmle-analysis","analysis specification","adjusted_continuous.rdata"))

#Drop growth velocity
dim(analyses)
analyses <- analyses %>% filter(Y=="haz" | Y=="whz", !(A %in% c("perdiar24","predfeed3","predfeed6","predfeed36","exclfeed3",
                                                                 "exclfeed6","exclfeed36", "anywast06","pers_wast","brthmon","month","gagebrth","birthwt","birthlen","enstunt","enwast")))
dim(analyses)

analyses$strata

unique(analyses$A)
analyses2 <- analyses

#drop birth size as RF, and drop birth size from covariate set
for(i in 1:nrow(analyses)){
  if(!is.null(analyses$W[[i]])){
    analyses$W[[i]] <- analyses$W[[i]][!(analyses$W[[i]] %in% c("gagebrth","birthwt","birthlen","enstunt","enwast"))]
  }
  analyses$strata[[i]] <- c("agecat","studyid","country","birthwt")
}


load("/data/KI/UCB-SuperLearner/Manuscript analysis data/wast_meanZ_rf.Rdata")
d <- d %>% filter(!is.na(birthwt), agecat=="24 months") %>% droplevels()
table(d$agecat)

levels(d$impsan)

risk_var_to_binary <- function(d){
  
  d <- d %>%
    mutate(
      impsan  =factor(impsan , levels=c("0", "1")),
      predexfd6  =factor(predexfd6 , levels=c("0", "1")),
      sex  =factor(sex , levels=c("Male", "Female")),
      mhtcm  =factor(mhtcm , levels=c("<150 cm", ">=150 cm")),
      fhtcm   =factor(fhtcm  , levels=c(  "<162 cm",  ">=162 cm")),
      mwtkg   =factor(mwtkg  , levels=c("<45 kg" , ">=45 kg")),
      mbmi    =factor(mbmi  , levels=c("<20 kg/m²", ">=20 kg/m²")),
      vagbrth     =factor(vagbrth   , levels=c("1","0")),
      hdlvry     =factor(hdlvry   , levels=c("1","0")),
      trth2o      =factor(trth2o    , levels=c("0","1")),
      cleanck      =factor(cleanck    , levels=c("0","1")),
      impfloor      =factor(impfloor    , levels=c("0","1")),
      nchldlt5      =factor(nchldlt5    , levels=c("2+","1")),
      earlybf      =factor(earlybf    , levels=c("0","1")),
      gagebrth  = factor(case_when(
        gagebrth =="Full or late term" ~ "Preterm",
        gagebrth !="Full or late term" ~ "Full term"), levels=c("Preterm","Full term")),
      mage = factor(case_when(
        mage=="<20" ~ "<20",
        mage!="<20" ~ ">20"), levels=c("<20",">20")),
      fage = factor(case_when(
        fage=="<30" ~ "<30",
        fage!="<30" ~ ">30"), levels=c("<30",">30")),
      nrooms = factor(case_when(
        nrooms=="1" ~ "1",
        nrooms!="1" ~ "2+"), levels=c("1","2+")),
      nhh = factor(case_when(
        nhh %in% c("3 or less", "4-5") ~ "<=5",
        nhh %in% c("6-7","8+") ~ ">5"), levels=c(">5","<=5")),
      parity = factor(case_when(
        parity!="1" ~ "Secondborn+",
        parity=="1" ~ "Firstborn"
        ), levels=c("Secondborn+","Firstborn")),
      meducyrs = factor(case_when(
        meducyrs=="Low" ~ "Low",
        meducyrs!="Low" ~ "Med/High"), levels=c("Low","Med/High")),
      feducyrs = factor(case_when(
        feducyrs=="Low" ~ "Low",
        feducyrs!="Low" ~ "Med/High"), levels=c("Low","Med/High")),
      hfoodsec = factor(case_when(
        hfoodsec!="Food Secure" ~ "Food Insecure",
        hfoodsec=="Food Secure" ~ "Food Secure"
        ), levels=c("Food Insecure","Food Secure")),
      hhwealth_quart = factor(case_when(
        hhwealth_quart %in% c("WealthQ1", "WealthQ2") ~ "LowWealth",
        hhwealth_quart %in% c("WealthQ4", "WealthQ3") ~ "HighWealth"      
      ), levels=c("LowWealth","HighWealth")))
  
  d <- as.data.frame(d)

  
  
  return(d)
}


d <- risk_var_to_binary(d)


glimpse(d)
for(i in 10:41){
  cat(colnames(d)[i],"\n")
  print(levels(d[,i]))
}


save(d, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/wast_meanZ_rf_bwt_strat_bin_alt_ref.Rdata")

load("/data/KI/UCB-SuperLearner/Manuscript analysis data/st_meanZ_rf.Rdata")
d <- d %>% filter(!is.na(birthwt), agecat=="24 months")  %>% droplevels()

d <- risk_var_to_binary(d)

save(d, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/st_meanZ_rf_bwt_strat_bin_alt_ref.Rdata")



unique(analyses$A)
analyses <- analyses %>% filter(!(A %in% c("safeh20","fhtcm","brthmon","month",  "enstunt",   "single",    "enwast","predfeed3",  "birthlen", "birthwt",   "predfeed6",     "predfeed36",    "exclfeed3","exclfeed6",     "exclfeed36","fhtcm_rf",  "anywast06",     "pers_wast",   
                                           "predfeed3",     "predfeed6",     "predfeed36",    "exclfeed3",     "exclfeed6",     "exclfeed36" )))

analyses$strata
#specify analyses
analyses$file <- gsub("rf.Rdata","rf_bwt_strat_bin_alt_ref.Rdata",analyses$file)

#temp
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)


run_ki_tmle(enumerated_analyses, results_folder="results_cont_bwt_strat_bin_alt_ref", overwrite = F, skip_failed = F)


analyses2 <- analyses2 %>% filter(!(A %in% c("safeh20","fhtcm","brthmon","month",  "enstunt",   "single",    "enwast","predfeed3",  "birthlen", "birthwt",   "predfeed6",     "predfeed36",    "exclfeed3","exclfeed6",     "exclfeed36","fhtcm_rf",  "anywast06",     "pers_wast",   
                                           "predfeed3",     "predfeed6",     "predfeed36",    "exclfeed3",     "exclfeed6",     "exclfeed36" )))
analyses2$file <- gsub("rf.Rdata","rf_bwt_strat_bin.Rdata",analyses2$file)
for(i in 1:nrow(analyses2)){
  analyses2$strata[[i]] <- c("agecat",  "studyid", "country")
}


enumerated_analyses2 <- lapply(seq_len(nrow(analyses2)), analyses_df=analyses2, specify_longbow)
run_ki_tmle(enumerated_analyses2, results_folder="results_cont_full_bin_alt_ref", overwrite = F, skip_failed = F)




