
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

load(here("/results/rf results/raw longbow results/results_cont_2019-08-16.rdata"))
Zscores <- results



# load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf results/raw longbow results/binary_wasting_results.rdata")
# stunting <- results %>% filter(outcome_variable %in% c("stunted", "sstunted", "ever_stunted", "ever_sstunted")) %>%
#   filter(intervention_variable!="perdiar6" & intervention_variable!="perdiar24")
# 
# load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf results/raw longbow results/subset_stunt_results.rdata")
# co_and_diarh <- results
# 
# load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf results/raw longbow results/wasting_results.rdata")
# HAZ <- results %>% filter(outcome_variable!="whz", intervention_variable!="perdiar6", intervention_variable!="perdiar24")
# 
# #Rerun subset (temporary)
# load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf results/raw longbow results/subset_wast_results.rdata")
# wasting <- results %>% filter(intervention_variable!="birthlen")
# unique(wasting$outcome_variable)
# unique(wasting$agecat)
# 
# load("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/wasting_analyses/subset_wast_results_06nobw.rdata")
# wast06 <- results
# unique(wast06$outcome_variable)
# unique(wast06$agecat)
# wast06 <- wast06 %>% filter(agecat=="0-6 months (no birth wast)", intervention_variable!="birthlen")
# 
# load("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/wasting_analyses/subset_wast_birthlen.rdata")
# wast_birthlen <- results
# 
# 
# load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf results/raw longbow results/subset_wlz_results.rdata")
# WHZ <- results
# unique(WHZ$outcome_variable)
# 
# load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf results/raw longbow results/subset_laz_diar.rdata")
# HAZ_diar <- results
# unique(HAZ_diar$intervention_variable)
# 
# #mortality results
# load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf results/raw longbow results/mortality_2019-08-06.rdata")
# mort <- results
# head(mort)
# unique(mort$intervention_variable)
# unique(mort$outcome_variable)
# table(mort$studyid, mort$outcome_variable)



# d <- bind_rows(
#   stunting, wasting, wast06,wast_birthlen, co_and_diarh, mort, 
#   HAZ, WHZ, HAZ_diar)

d <- bind_rows(
  Zscores)


#Drop duplicated (unadjusted sex and month variables)
dim(d)
d <- distinct(d)
dim(d)

#Mark region
d <- mark_region(d)

#Mark continious 
unique(d$outcome_variable)
d$continuous <- ifelse(d$outcome_variable %in% c("haz","whz","y_rate_haz","y_rate_len","y_rate_wtkg"), 1, 0)

#Drop non-included risk factors (treat h20, with very little variance, and secondry breastfeeding indicators)
d <- d %>% filter(!(intervention_variable %in% c("trth2o","predfeed3","predfeed6","predfeed36","exclfeed3","exclfeed6","exclfeed36"  )) )

#----------------------------------------------------------
# Merge in Ns
#----------------------------------------------------------
load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/stunting_rf_Ns_sub.rdata")
N_sums_bin <- N_sums %>% mutate(continuous = 0)
load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/continuous_rf_Ns_sub.rdata")
N_sums_cont <- N_sums %>% mutate(continuous = 1)
N_sums <- rbind(N_sums_bin, N_sums_cont)


df <- left_join(WHZ, N_sums_cont, by = c("agecat", "outcome_variable", "intervention_variable", "intervention_level"))
head(df)

dim(d)
dim(N_sums)
d <- left_join(d, N_sums, by = c("agecat", "outcome_variable", "intervention_variable", "intervention_level", "continuous"))
head(d)
dim(d)
table(is.na(d$n[d$continuous==0 & d$type=="PAR"]))
table(is.na(d$n[d$continuous==1 & d$type=="PAR" & d$agecat=="24 months"]))





#Harmonize agecat names for variables excluding faltering at birth
d$agecat <- as.character(d$agecat)
d$agecat[grepl("0-24 months",d$agecat)] <- "0-24 months"
d$agecat[grepl("0-6 months",d$agecat)] <- "0-6 months"


#Keep only primary breastfeeding exposure
d <- d %>% filter(!(intervention_variable %in% c("predfeed3","predfeed6","predfeed36","exclfeed3","exclfeed6","exclfeed36"  )) )

# Drop non-sensical combinations
unique(d$intervention_variable)
atbirth <- c("vagbrth", "hdlvry", "trth2o", "safeh20", "cleanck", "impfloor", "impsan", "earlybf",  "enstunt", "enwast")
postnatal <- c("anywast06", "pers_wast", "perdiar6","predexfd6")
full2years <- "perdiar24"
wastingvars <- c("anywast06", "pers_wast", "enwast")
wasting_outcomevars <- c("wasted", "swasted", "wast_rec90d", "ever_wasted", "ever_swasted", "pers_wast", "ever_co" )

      

dim(d)
d <- d %>% filter(!(intervention_variable %in% atbirth & agecat=="Birth"))
d <- d %>% filter(!(intervention_variable %in% postnatal & agecat %in% c("Birth", "0-6 months",  "0-24 months")))
d <- d %>% filter(!(intervention_variable %in% full2years & agecat!="24 months"))
d <- d %>% filter(!(intervention_variable %in% wastingvars & outcome_variable %in% wasting_outcomevars))
dim(d)


#Seperate adjusted and unadjusted
#mark unadjusted
d$adjusted <- ifelse(d$adjustment_set!="unadjusted" , 1, 0)

#Seperate unadjusted estimates
d_adj <- d %>% filter((adjusted==1) | ((intervention_variable=="sex"  | intervention_variable=="month"  | intervention_variable=="brthmon") & adjusted==0))
d_unadj <- d %>% filter(adjusted==0)


saveRDS(d_adj, paste0(here::here(),"/results/rf results/full_RF_results.rds"))
saveRDS(d_unadj, paste0(here::here(),"/results/rf results/full_RF_unadj_results.rds"))






