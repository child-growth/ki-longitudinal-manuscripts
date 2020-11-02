
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))


Zscores<- Zscores_unadj<- Zscores_waz<- bin<- mort<- lagwhz <-velocity <- velocity_wlz_quart <- season <- NULL

Zscores <- readRDS(here("/results/rf results/raw longbow results/results_cont_2020-05-02.RDS"))
Zscores_diar <- readRDS(here("/results/rf results/raw longbow results/results_cont_diar_2020-06-08.RDS")) 
Zscores_fhtcm <- readRDS(here("/results/rf results/raw longbow results/results_cont_fhtcm_2020-05-29.RDS"))
dim(Zscores_diar)
dim(Zscores_fhtcm)
dim(Zscores)
Zscores <- Zscores %>% filter(intervention_variable!="perdiar24" & intervention_variable!="perdiar6" & !(intervention_variable=="fhtcm" & outcome_variable=="haz"))
dim(Zscores)

Zscores <- bind_rows(Zscores, Zscores_diar, Zscores_fhtcm, Zscores_waz)

bin_primary <- readRDS(here("/results/rf results/raw longbow results/results_bin_primary_2020-05-28.RDS"))


bin <- readRDS(here("/results/rf results/raw longbow results/results_bin_2020-05-03.rds"))
bin_sub <- readRDS(here("/results/rf results/raw longbow results/results_bin_sub_2020-05-19.rds"))
bin_sub2 <- readRDS(here("/results/rf results/raw longbow results/results_bin_sub_2020-05-20.rds"))
bin_sub3 <- readRDS(here("/results/rf results/raw longbow results/results_bin_sub_2020-05-20_part2.rds"))
bin <- bind_rows(bin_sub3,  bin_sub2,  bin_sub, bin)
bin <- bin %>% distinct_at(., .vars=c("agecat", "studyid", "country", "strata_label", "intervention_variable", 
                                    "outcome_variable","type","parameter","intervention_level",  "baseline_level"),
                         .keep_all=TRUE)
dim(bin)
bin_other <- anti_join(bin, bin_primary, by = c("agecat", "studyid", "country", "strata_label", "intervention_variable",
                                                "outcome_variable","type","parameter","intervention_level",  "baseline_level"))
dim(bin_primary)
dim(bin_other) 
nrow(bin_primary) + nrow(bin_other)
bin <- rbind(bin_primary, bin_other)

#Merge in new diarrhea estimates
bin <- bin %>% filter(intervention_variable!="perdiar24" & intervention_variable!="perdiar6")
bin_diar <- readRDS(here("/results/rf results/raw longbow results/results_bin_diar_2020-06-08.RDS")) 
bin <- bind_rows(bin, bin_diar)


mort <- readRDS(here("/results/rf results/raw longbow results/mortality_2020-05-22.rds"))

Zscores_unadj <- readRDS(here("/results/rf results/raw longbow results/results_cont_unadj_2020-03-06.rds"))

bin_unadj <- readRDS(here("/results/rf results/raw longbow results/results_bin_unadj_2020-03-06.rds"))

velocity_wlz_quart <- readRDS(here("/results/rf results/raw longbow results/vel_wlz_quart_2020-05-29.rds"))
velocity_wlz_quart$agecat <- as.character(velocity_wlz_quart$agecat)
velocity_wlz_quart$agecat[is.na(velocity_wlz_quart$agecat)] <- "Unstratified"


results <- readRDS(here("results/rf results/raw longbow results/results_vel_2020-05-22.RDS"))   
results_2 <- readRDS(here("results/rf results/raw longbow results/results_vel_sub_2020-05-23.RDS"))   
results_3 <- readRDS(here("results/rf results/raw longbow results/results_vel_sub_2020-05-26.RDS"))   
velocity <- bind_rows(results, results_2, results_3)

season <-  readRDS(here("results","rf results","raw longbow results","seasonality_results_2020-05-29.rds"))

season_cont_rf <- readRDS(here("results","rf results","raw longbow results","seasonality_rf_cont_results_2020-05-29.rds"))

season_bin_rf <- readRDS(here("results","rf results","raw longbow results","seasonality_rf_bin_results_2020-05-29.rds"))






d <- bind_rows(Zscores, Zscores_unadj, bin, 
               bin_unadj, mort, lagwhz, velocity, velocity_wlz_quart, season, season_cont_rf, season_bin_rf)
d$intervention_level[d$intervention_variable=="rain_quartile" & d$intervention_level=="1"] <- "Opposite max rain"
d$intervention_level[d$intervention_variable=="rain_quartile" & d$intervention_level=="2"] <- "Pre-max rain"
d$intervention_level[d$intervention_variable=="rain_quartile" & d$intervention_level=="3"] <- "Max rain"
d$intervention_level[d$intervention_variable=="rain_quartile" & d$intervention_level=="4"] <- "Post-max rain"
d$baseline_level[d$intervention_variable=="rain_quartile"] <- "Opposite max rain"

#drop EE gestational age
dim(d)
d <- d %>% filter(!(studyid=="EE" & intervention_variable=="gagebrth"))
dim(d)


#Exclude extreme estimates from TMLE sparsity
# dim(d)
# d <- d %>% filter(abs(estimate) < 100)
# d <- d[1/d$estimate[d$type=="RR"] < 100,]
# dim(d)

#Drop duplicated (unadjusted sex and month variables)
d1 <- d %>% filter(adjustment_set=="unadjusted")
d2 <- d %>% filter(adjustment_set!="unadjusted")

dim(d1)
dim(d2)
d1 <- d1 %>% distinct_at(., .vars=c("agecat", "studyid", "country", "strata_label", "intervention_variable", 
                                    "outcome_variable","type","parameter","intervention_level",  "baseline_level"),
                         .keep_all=TRUE)
d2 <- d2 %>% distinct_at(., .vars=c("agecat", "studyid", "country", "strata_label", "intervention_variable", 
                                    "outcome_variable","type","parameter","intervention_level",  "baseline_level"),
                         .keep_all=TRUE)
dim(d1)
dim(d2)
d <- bind_rows(d1, d2)

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

#drop estimates from rare cells
load(here("results/stunting_rf_Ns.rdata"))
rare_strat <- Ndf_Ystrat %>% group_by(studyid, country, agecat, outcome_variable, intervention_variable) %>%
              mutate(min_n_cell =  min(n_cell)) %>%
              select(studyid, country, agecat, outcome_variable, intervention_variable, min_n_cell)

d <- left_join(d, rare_strat, by = c("studyid", "country", "agecat", "outcome_variable", "intervention_variable")) %>% distinct(.)
d <- d %>% filter(is.na(min_n_cell) | min_n_cell>=5)

#Harmonize agecat names for variables excluding faltering at birth
d$agecat <- as.character(d$agecat)
d$agecat[grepl("0-24 months",d$agecat)] <- "0-24 months"
d$agecat[grepl("0-6 months",d$agecat)] <- "0-6 months"


#Keep only primary breastfeeding exposure
d <- d %>% filter(!(intervention_variable %in% c("predfeed3","predfeed6","predfeed36","exclfeed3","exclfeed6","exclfeed36"  )) )

# Drop non-sensical combinations
unique(d$intervention_variable)
atbirth <- c("vagbrth", "hdlvry", "trth2o", "safeh20", "cleanck", "impfloor", "impsan", "earlybf",  "enstunt", "enwast", "birthlen")
postnatal <- c("anywast06", "pers_wast", "perdiar6","predexfd6")
full2years <- "perdiar24"
wastingvars <- c("anywast06", "pers_wast", "enwast")
wasting_outcomevars <- c("whz","wasted", "swasted", "wast_rec90d", "ever_wasted", "ever_swasted", "pers_wast", "ever_co" )

      

dim(d)
d <- d %>% filter(!(intervention_variable %in% atbirth & agecat=="Birth"))
d <- d %>% filter(!(intervention_variable == "birthwt" & agecat=="Birth" & outcome_variable %in% wasting_outcomevars))
d <- d %>% filter(!(intervention_variable %in% postnatal & agecat %in% c("Birth", "0-6 months",  "0-24 months")))
d <- d %>% filter(!(intervention_variable %in% full2years & agecat!="24 months"))
d <- d %>% filter(!(intervention_variable %in% wastingvars & outcome_variable %in% wasting_outcomevars))
dim(d)

dsub <- d %>% filter(agecat=="Birth") 
table(dsub$intervention_variable, dsub$outcome_variable)


#Seperate adjusted and unadjusted
#mark unadjusted
d$adjusted <- ifelse(d$adjustment_set!="unadjusted" , 1, 0)

#Seperate unadjusted estimates
d_adj <- d %>% filter((adjusted==1) | ((intervention_variable=="sex"  | intervention_variable=="rain_quartile") & adjusted==0))
d_unadj <- d %>% filter(adjusted==0)


saveRDS(d_adj, paste0(here::here(),"/results/rf results/full_RF_results.rds"))
saveRDS(d_unadj, paste0(here::here(),"/results/rf results/full_RF_unadj_results.rds"))






