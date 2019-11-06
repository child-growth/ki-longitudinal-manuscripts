
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))


Zscores<- Zscores_unadj<- bin<- mort<- lagwhz <- season <- NULL

load(here("/results/rf results/raw longbow results/results_cont_2019-10-30.rdata"))
Zscores <- results

# load(here("/results/rf results/raw longbow results/results_bin_2019-08-17.rdata"))
# bin <- results
# 
# load(here("/results/rf results/raw longbow results/mortality_2019-08-18.rdata"))
# mort <- results
# 
# load(here("/results/rf results/raw longbow results/results_cont_unadj_2019-08-19.rdata"))
# Zscores_unadj <- results
# 
# load(here("/results/rf results/raw longbow results/results_bin_lagwhz_2019-08-19.rdata"))
# lagwhz <- results
# 
load(here("results","rf results","raw longbow results","seasonality_results_2019-10-27.rdata"))
season <- results


d <- bind_rows(Zscores, Zscores_unadj, bin, mort, lagwhz, season)



#Drop duplicated (unadjusted sex and month variables)
dim(d)
d <- distinct(d)
dim(d)

#Mark region
d <- mark_region(d)

#Mark continious 
unique(d$outcome_variable)
d$continuous <- ifelse(d$outcome_variable %in% c("haz","whz","y_rate_haz","y_rate_len","y_rate_wtkg"), 1, 0)

#Drop non-included risk factors (treat h20, with very little variance, month and birth month, and secondry breastfeeding indicators)
d <- d %>% filter(!(intervention_variable %in% c("enstunt","trth2o","predfeed3","predfeed6","predfeed36","exclfeed3","exclfeed6","exclfeed36","brthmon","month")) )

#----------------------------------------------------------
# Merge in Ns
#----------------------------------------------------------
load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/stunting_rf_Ns_sub.rdata")
N_sums_bin <- N_sums %>% mutate(continuous = 0)
load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/continuous_rf_Ns_sub.rdata")
N_sums_cont <- N_sums %>% mutate(continuous = 1)
N_sums <- rbind(N_sums_bin, N_sums_cont)


dim(d)
dim(N_sums)
d <- left_join(d, N_sums, by = c("agecat", "outcome_variable", "intervention_variable", "intervention_level", "continuous"))
head(d)
dim(d)
table(is.na(d$n[d$continuous==0 & d$type=="PAR"]))
table(is.na(d$n[d$continuous==1 & d$type=="PAR" & d$agecat=="24 months"]))


df <- d[d$continuous==1 & d$type=="PAR" & d$agecat=="24 months",]
df[is.na(df$n) & !is.na(df$estimate),]




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
d_adj <- d %>% filter((adjusted==1) | ((intervention_variable=="sex"  | intervention_variable=="rain_quartile") & adjusted==0))
d_unadj <- d %>% filter(adjusted==0)


saveRDS(d_adj, paste0(here::here(),"/results/rf results/full_RF_results.rds"))
saveRDS(d_unadj, paste0(here::here(),"/results/rf results/full_RF_unadj_results.rds"))






