
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))



# load("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/adjusted_binary/adjusted_binary_results.rdata")
# adj_bin <- results
# load("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/unadjusted_binary/unadjusted_binary_results.rdata")
# unadj_bin <- results
# load("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/adjusted_velocity/adjusted_velocity_results.rdata")
# adj_vel <- results
# load("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/unadjusted_velocity/unadjusted_velocity_results.rdata")
# unadj_vel <- results
load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf results/wasting rf results/binary_wasting_results_perswast.rdata")
perswast <- results

load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf results/wasting rf results/binary_wasting_results.rdata")
wasting <- results
# load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf results/wasting rf results/wasting_results_cont.rdata")
# wasting_cont_par <- results %>% filter(type=="PAR")
load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf results/wasting rf results/wasting_results_cont.rdata")
Zscores <- results
# load("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/opttx_vim/adjusted_binary_results.rdata")
# vim <- results

d <- bind_rows(
  #adj_bin, unadj_bin, 
  wasting, perswast, Zscores)


#Drop duplicated (unadjusted sex and month variables)
dim(d)
d <- distinct(d)
dim(d)

#Mark region
d <- mark_region(d)

#Mark continious 
unique(d$outcome_variable)
d$continuous <- ifelse(d$outcome_variable %in% c("haz","whz","y_rate_haz","y_rate_len","y_rate_wtkg"), 1, 0)

#----------------------------------------------------------
# Merge in Ns
#----------------------------------------------------------
load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/stunting_rf_Ns.rdata")
N_sums <- N_sums %>% filter(outcome_variable %in% c("ever_stunted","stunted")) %>%
  subset(., select = - c(outcome_variable)) %>% 
  mutate(continuous = 0)
dim(d)
dim(N_sums)
d <- left_join(d, N_sums, by = c("agecat", "intervention_variable", "intervention_level", "continuous"))
head(d)
dim(d)
table(is.na(d$n[d$continuous==0]))






#Harmonize agecat names for variables excluding faltering at birth
d$agecat[grepl("0-24 months",d$agecat)] <- "0-24 months"
d$agecat[grepl("0-6 months",d$agecat)] <- "0-6 months"


#Keep only primary breastfeeding exposure
d <- d %>% filter(!(intervention_variable %in% c("predfeed3","predfeed6","predfeed36","exclfeed3","exclfeed6","exclfeed36"  )) )

# Drop non-sensical combinations
unique(d$intervention_variable)
atbirth <- c("vagbrth", "hdlvry", "trth2o", "safeh20", "cleanck", "impfloor", "impsan", "earlybf",  "enstunt", "enwast")
postnatal <- c("anywast06", "pers_wast", "perdiar6","predexfd6")
full2years <- "perdiar24"

dim(d)
d <- d %>% filter(!(intervention_variable %in% atbirth & agecat=="Birth"))
d <- d %>% filter(!(intervention_variable %in% postnatal & agecat %in% c("Birth", "0-6 months",  "0-24 months")))
d <- d %>% filter(!(intervention_variable %in% full2years & agecat!="24 months"))
dim(d)


#Seperate adjusted and unadjusted
#mark unadjusted
d$adjusted <- ifelse(d$adjustment_set!="unadjusted" , 1, 0)

#Seperate unadjusted estimates
d_adj <- d %>% filter((adjusted==1) | ((intervention_variable=="sex"  | intervention_variable=="month"  | intervention_variable=="brthmon") & adjusted==0))
d_unadj <- d %>% filter(adjusted==0)


saveRDS(d_adj, paste0(here::here(),"/results/rf results/full_RF_results.rds"))
saveRDS(d_unadj, paste0(here::here(),"/results/rf results/full_RF_unadj_results.rds"))


# df <- d %>% filter(outcome_variable=="ever_wasted")
# df <- droplevels(df)
# unique(df$intervention_variable)
# df <- df %>% filter(intervention_variable=="predexfd6")








