
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
analyses <- analyses %>% filter(Y=="haz" | Y=="whz")
dim(analyses)

load("/data/KI/UCB-SuperLearner/Manuscript analysis data/wast_meanZ_rf.Rdata")
d <- d %>% filter(agecat=="24 months") %>% droplevels()

d <- as.data.frame(d)
for(i in 1:ncol(d)){
  if(is.factor(d[,i])){
    d[,i] <- fct_rev(d[,i])
  }
}

levels(d$nhh)
levels(d$nrooms) 
d$nrooms <- factor(d$nrooms, levels=c("1","2","3","4+"))

levels(d$mage)
d$mage <- factor(d$mage, levels=c("<20","[20-30)",">=30"))
levels(d$fage)
d$fage <- factor(d$fage, levels=c("<30","[30-35)",">=35"))

levels(d$meducyrs) 
levels(d$feducyrs) 
d$meducyrs <- factor(d$meducyrs, levels=c("Low", "Medium" ,"High" ))
d$feducyrs <- factor(d$feducyrs, levels=c("Low", "Medium" ,"High" ))

levels(d$birthlen) 
d$birthlen <- factor(d$birthlen, levels=c("<48 cm", "[48-50) cm", ">=50 cm"))

d$gagebrth <- factor(d$gagebrth, levels=c("Preterm", "Early term", "Full or late term")) 

save(d, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/wast_meanZ_rf_prim_alt_ref.Rdata")

load("/data/KI/UCB-SuperLearner/Manuscript analysis data/st_meanZ_rf.Rdata")
d <- d %>% filter(agecat=="24 months")  %>% droplevels()

d <- as.data.frame(d)
for(i in 1:ncol(d)){
  if(is.factor(d[,i])){
    d[,i] <- fct_rev(d[,i])
  }
}

d$nrooms <- factor(d$nrooms, levels=c("1","2","3","4+"))
d$mage <- factor(d$mage, levels=c("<20","[20-30)",">=30"))
d$fage <- factor(d$fage, levels=c("<30","[30-35)",">=35"))
d$meducyrs <- factor(d$meducyrs, levels=c("Low", "Medium" ,"High" ))
d$feducyrs <- factor(d$feducyrs, levels=c("Low", "Medium" ,"High" ))
d$birthlen <- factor(d$birthlen, levels=c("<48 cm", "[48-50) cm", ">=50 cm"))
d$gagebrth <- factor(d$gagebrth, levels=c("Preterm", "Early term", "Full or late term")) 

save(d, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/st_meanZ_rf_prim_alt_ref.Rdata")


analyses <- analyses %>% filter(!(A %in% c("brthmon","month",  "enstunt",       "enwast","predfeed3",     "predfeed6",     "predfeed36",    
                                           "exclfeed3","exclfeed6",     "exclfeed36","fhtcm_rf",  "anywast06",     "pers_wast",   
                                           "predfeed3",     "predfeed6",     "predfeed36",    "exclfeed3",     "exclfeed6",     "exclfeed36" )))

#specify analyses
analyses$file <- gsub("rf.Rdata","rf_prim_alt_ref.Rdata",analyses$file)
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)



run_ki_tmle(enumerated_analyses, results_folder="results_cont_primary_alt_ref", overwrite = F, skip_failed = T)


