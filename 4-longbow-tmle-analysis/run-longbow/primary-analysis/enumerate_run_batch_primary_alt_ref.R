
rm(list=ls())
try(.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/4.0/" , .libPaths() ) ))

source(paste0(here::here(), "/0-config.R"))
try(.libPaths( "~/rlibs" ))
library(data.table)
library(longbowtools)
#library(jsonlite)
library(progress)
library(longbowRiskFactors)


# 1. enumerate analysis

setwd(here("4-longbow-tmle-analysis","run-longbow","primary-analysis"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)

analyses <- readRDS(here("4-longbow-tmle-analysis","analysis specification","adjusted_binary_analyses_primary.rds"))

unique(analyses$A)
unique(analyses$Y)

analyses <- analyses %>% filter( !(A %in% c("predfeed3","exclfeed3","predfeed6","exclfeed6","predfeed36","exclfeed36","pers_wast","anywast06", "enstunt", "enwast","fage_rf","fhtcm_rf", "month","brthmon")), 
                                 file %in% c("st_cuminc_rf_primary.rdata","st_cuminc_nobirth_rf_primary.rdata","wast_cuminc_rf_primary.rdata","wast_cuminc_nobirth_rf_primary.rdata"))
analyses <- analyses %>% filter() %>% mutate(Y=factor(Y, levels=rev(c("pers_wast", "ever_wasted","ever_swasted" ,   "ever_stunted", "ever_sstunted" )))) %>%
  arrange(Y) %>% mutate(Y=as.character(Y))
head(analyses)


load("/data/KI/UCB-SuperLearner/Manuscript analysis data/st_cuminc_rf_primary.rdata")
d <- d %>% filter(agecat=="0-24 months")
d <- as.data.frame(d)
for(i in 1:ncol(d)){
  if(is.factor(d[,i])){d[,i] <- fct_rev(d[,i])}
}
levels(d$nhh)

table(d$nhh)
table(d$nrooms)


# d <- d %>% mutate(
#   nhh = factor(case_when(nhh=="8+"|nhh=="6-7" ~ "6+",   nhh=="4-5"|nhh=="3 or less" ~ "5 or less"), levels = c("5 or less", "6+")),
#   nrooms = factor(case_when(nrooms=="1" ~ "1",   nrooms=="2"|nrooms=="3"|nrooms=="4+" ~ "2+"), levels = c("1", "2+"))
# )

levels(d$sga)
d$nhh <- factor(d$nhh, levels=c("8+","6-7","4-5","3 or less"))
d$nrooms <- factor(d$nrooms, levels=rev(c("1","2","4+","3")))
d$sga <- factor(d$sga, levels=c("Not SGA","SGA"))
d$parity <- factor(d$parity, levels=c("2","1","3+"))
d$mage <- factor(d$mage, levels=c("<20","[20-30)",">=30"))
d$fage <- factor(d$fage, levels=c("<30","[30-35)",">=35"))
d$meducyrs <- factor(d$meducyrs, levels=c("Low", "Medium" ,"High" ))
d$feducyrs <- factor(d$feducyrs, levels=c("Low", "Medium" ,"High" ))
d$birthlen <- factor(d$birthlen, levels=c("<48 cm", "[48-50) cm", ">=50 cm"))
d$gagebrth <- factor(d$gagebrth, levels=c("Preterm", "Early term", "Full or late term")) 
save(d, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/st_cuminc_rf_primary_alt_ref.rdata")

load("/data/KI/UCB-SuperLearner/Manuscript analysis data/st_cuminc_nobirth_rf_primary.rdata")
d <- d %>% filter(agecat=="0-24 months (no birth st.)")
d <- as.data.frame(d)
for(i in 1:ncol(d)){
  if(is.factor(d[,i])){d[,i] <- fct_rev(d[,i])}
}

# d <- d %>% mutate(
#   nhh = factor(case_when(nhh=="8+"|nhh=="6-7" ~ "6+",   nhh=="4-5"|nhh=="3 or less" ~ "5 or less"), levels = c("5 or less", "6+")),
#   nrooms = factor(case_when(nrooms=="1" ~ "1",   nrooms=="2"|nrooms=="3"|nrooms=="4+" ~ "2+"), levels = c("1", "2+"))
# )

d$nhh <- factor(d$nhh, levels=c("8+","6-7","4-5","3 or less"))
d$nrooms <- factor(d$nrooms, levels=rev(c("1","2","4+","3")))
d$sga <- factor(d$sga, levels=c("Not SGA","SGA"))
d$parity <- factor(d$parity, levels=c("2","1","3+"))
d$mage <- factor(d$mage, levels=c("<20","[20-30)",">=30"))
d$fage <- factor(d$fage, levels=c("<30","[30-35)",">=35"))
d$meducyrs <- factor(d$meducyrs, levels=c("Low", "Medium" ,"High" ))
d$feducyrs <- factor(d$feducyrs, levels=c("Low", "Medium" ,"High" ))
d$birthlen <- factor(d$birthlen, levels=c("<48 cm", "[48-50) cm", ">=50 cm"))
d$gagebrth <- factor(d$gagebrth, levels=c("Preterm", "Early term", "Full or late term")) 
save(d, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/st_cuminc_nobirth_rf_primary_alt_ref.rdata")

load("/data/KI/UCB-SuperLearner/Manuscript analysis data/wast_cuminc_rf_primary.rdata")
d <- d %>% filter(agecat=="0-24 months")
d <- as.data.frame(d)
for(i in 1:ncol(d)){
  if(is.factor(d[,i])){d[,i] <- fct_rev(d[,i])}
}

# d <- d %>% mutate(
#   nhh = factor(case_when(nhh=="8+"|nhh=="6-7" ~ "6+",   nhh=="4-5"|nhh=="3 or less" ~ "5 or less"), levels = c("5 or less", "6+")),
#   nrooms = factor(case_when(nrooms=="1" ~ "1",   nrooms=="2"|nrooms=="3"|nrooms=="4+" ~ "2+"), levels = c("1", "2+"))
# )

d$nhh <- factor(d$nhh, levels=c("8+","6-7","4-5","3 or less"))
d$nrooms <- factor(d$nrooms, levels=rev(c("1","2","4+","3")))
d$sga <- factor(d$sga, levels=c("Not SGA","SGA"))
d$parity <- factor(d$parity, levels=c("2","1","3+"))
d$mage <- factor(d$mage, levels=c("<20","[20-30)",">=30"))
d$fage <- factor(d$fage, levels=c("<30","[30-35)",">=35"))
d$meducyrs <- factor(d$meducyrs, levels=c("Low", "Medium" ,"High" ))
d$feducyrs <- factor(d$feducyrs, levels=c("Low", "Medium" ,"High" ))
d$birthlen <- factor(d$birthlen, levels=c("<48 cm", "[48-50) cm", ">=50 cm"))
d$gagebrth <- factor(d$gagebrth, levels=c("Preterm", "Early term", "Full or late term")) 
save(d, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/wast_cuminc_rf_primary_alt_ref.rdata")

load("/data/KI/UCB-SuperLearner/Manuscript analysis data/wast_cuminc_nobirth_rf_primary.rdata")
d <- d %>% filter(agecat=="0-24 months (no birth wast)")
d <- as.data.frame(d)
for(i in 1:ncol(d)){
  if(is.factor(d[,i])){d[,i] <- fct_rev(d[,i])}
}

# d <- d %>% mutate(
#   nhh = factor(case_when(nhh=="8+"|nhh=="6-7" ~ "6+",   nhh=="4-5"|nhh=="3 or less" ~ "5 or less"), levels = c("5 or less", "6+")),
#   nrooms = factor(case_when(nrooms=="1" ~ "1",   nrooms=="2"|nrooms=="3"|nrooms=="4+" ~ "2+"), levels = c("1", "2+"))
# )
d$nhh <- factor(d$nhh, levels=c("8+","6-7","4-5","3 or less"))
d$nrooms <- factor(d$nrooms, levels=rev(c("1","2","4+","3")))
d$sga <- factor(d$sga, levels=c("Not SGA","SGA"))
d$parity <- factor(d$parity, levels=c("2","1","3+"))
d$mage <- factor(d$mage, levels=c("<20","[20-30)",">=30"))
d$fage <- factor(d$fage, levels=c("<30","[30-35)",">=35"))
d$meducyrs <- factor(d$meducyrs, levels=c("Low", "Medium" ,"High" ))
d$feducyrs <- factor(d$feducyrs, levels=c("Low", "Medium" ,"High" ))
d$birthlen <- factor(d$birthlen, levels=c("<48 cm", "[48-50) cm", ">=50 cm"))
d$gagebrth <- factor(d$gagebrth, levels=c("Preterm", "Early term", "Full or late term")) 
save(d, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/wast_cuminc_nobirth_rf_primary_alt_ref.rdata")


analyses$file <- gsub(".rdata","_alt_ref.rdata",analyses$file)
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)


run_ki_tmle(enumerated_analyses, results_folder="results_bin_primary_alt_ref", overwrite = F, skip_failed=T)


results_folder="results_bin_primary_alt_ref"
base_directory = paste0(BV_dir,"/tmle/",results_folder,"/")
base_directory
