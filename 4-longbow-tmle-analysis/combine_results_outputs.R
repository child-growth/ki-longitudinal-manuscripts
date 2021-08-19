
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))


Zscores<- Zscores_unadj<- Zscores_waz<- bin<-bin_other<-bin_unadj<- mort<- lagwhz <-velocity <- velocity_wlz_quart <- season <- NULL
fage <- NULL

Zscores <- readRDS(paste0(res_dir, "rf results/longbow results/results_cont.RDS"))
dim(Zscores)
table(Zscores$intervention_variable, Zscores$outcome_variable)

Zscores_waz <- readRDS(paste0(res_dir, "rf results/longbow results/results_waz.RDS"))


bin_primary <- readRDS(paste0(res_dir, "rf results/longbow results/results_bin_primary.RDS"))

table(bin_primary$country)
table(bin_primary$intervention_variable, bin_primary$agecat)
table(bin_primary$intervention_level)

bin_primary[bin_primary$intervention_level==">=38",]
bin_primary[bin_primary$intervention_level==">=35",]


bin_other <- readRDS(paste0(res_dir, "rf results/longbow results/results_bin_other.RDS"))
table(bin_other$outcome_variable, bin_other$agecat)

dim(bin_primary)
dim(bin_other) 
nrow(bin_primary) + nrow(bin_other)
bin <- rbind(bin_primary, bin_other)
table(bin$intervention_variable)

mort <- readRDS(paste0(res_dir, "rf results/longbow results/results_mortality.RDS")) %>% filter(outcome_variable!="co_occurence", outcome_variable!="pers_wasted624")
morb <- readRDS(paste0(res_dir, "rf results/longbow results/results_morbidity.RDS"))

Zscores_unadj <- readRDS(paste0(res_dir, "rf results/longbow results/results_cont_unadj.RDS"))

bin_unadj <- readRDS(paste0(res_dir, "rf results/longbow results/results_bin_unadj.RDS"))

velocity_wlz_quart <- readRDS(paste0(res_dir, "rf results/longbow results/velocity_wlz_quart.RDS"))
velocity_wlz_quart$agecat <- as.character(velocity_wlz_quart$agecat)
velocity_wlz_quart$agecat[is.na(velocity_wlz_quart$agecat)] <- "Unstratified"

stunt_bin_wlz_quart <- readRDS(paste0(res_dir, "rf results/longbow results/stunt_bin_wlz_quart.RDS"))
stunt_bin_wlz_quart$agecat <- as.character(stunt_bin_wlz_quart$agecat)
stunt_bin_wlz_quart$agecat[is.na(stunt_bin_wlz_quart$agecat)] <- "Unstratified"

stunt_rec <- readRDS(paste0(res_dir, "rf results/longbow results/results_bin_stunt_rec.RDS"))


#velocity1 <- readRDS(paste0(res_dir, "rf results/longbow results/results_vel.RDS"))   
# velocity2 <- readRDS(paste0(res_dir, "rf results/longbow results/results_vel_sub.RDS")) 
# velocity <- bind_rows(velocity2, velocity1) %>% 
#   distinct(agecat,studyid, country,strata_label,intervention_variable, outcome_variable, type, parameter, intervention_level, baseline_level, .keep_all = T)
velocity <- readRDS(paste0(res_dir, "rf results/longbow results/results_vel.RDS"))   

  
season <-  readRDS(paste0(res_dir, "rf results/longbow results/seasonality_results.RDS"))

season_cont_rf <- readRDS(paste0(res_dir, "rf results/longbow results/season_cont_rf_results.RDS"))

season_bin_rf <- readRDS(paste0(res_dir, "rf results/longbow results/season_bin_rf_results.RDS"))

fage <- readRDS(paste0(res_dir, "rf results/longbow results/results_fage_prim.RDS"))
Zscores <- bind_rows(Zscores, fage) %>% filter(intervention_variable!="fage")
Zscores$intervention_variable[Zscores$intervention_variable=="fage_rf"] <- "fage"
Zscores[Zscores$intervention_variable=="fage",] 

birthvars <- readRDS(paste0(res_dir, "rf results/longbow results/results_birthvars_rerun.RDS"))
#birthvars$intervention_variable <- paste0(birthvars$intervention_variable,"_rf")
Zscores <- Zscores %>% filter(!(intervention_variable %in% c("birthlen", "birthwt",  "gagebrth")))

enwast_wlz <- readRDS(paste0(res_dir, "rf results/longbow results/results_results_cont_enwast_wlz.RDS"))
Zscores <- bind_rows(Zscores, birthvars, enwast_wlz)



d <- bind_rows(Zscores,   Zscores_unadj, Zscores_waz, bin, 
               bin_unadj, lagwhz, velocity, velocity_wlz_quart, stunt_bin_wlz_quart, stunt_rec,
               season, season_cont_rf, season_bin_rf, morb, mort)
unique(d$outcome_variable)



temp <- d %>% filter(intervention_variable=="fage" & outcome_variable=="ever_stunted" & type=="E(Y)")
dim(temp)
table(temp$intervention_level)
table(temp$baseline_level)


d <- d %>% filter(!(intervention_variable=="fage" & intervention_level==">=38")| is.na(intervention_level))


d$intervention_level[d$intervention_variable=="rain_quartile" & d$intervention_level=="1"] <- "Opposite max rain"
d$intervention_level[d$intervention_variable=="rain_quartile" & d$intervention_level=="2"] <- "Pre-max rain"
d$intervention_level[d$intervention_variable=="rain_quartile" & d$intervention_level=="3"] <- "Max rain"
d$intervention_level[d$intervention_variable=="rain_quartile" & d$intervention_level=="4"] <- "Post-max rain"
d$baseline_level[d$intervention_variable=="rain_quartile"] <- "Opposite max rain"

d$intervention_level <- gsub("Wealth ","",d$intervention_level)
d$intervention_level <- gsub("Wealth","",d$intervention_level)
d$baseline_level <- gsub("Wealth ","",d$baseline_level)
d$baseline_level <- gsub("Wealth","",d$baseline_level)

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
d$continuous <- ifelse(d$outcome_variable %in% c("haz","whz","y_rate_haz","y_rate_waz","y_rate_len","y_rate_wtkg"), 1, 0)
table(d$intervention_variable, d$outcome_variable)

#Drop non-included risk factors (treat h20, with very little variance, month and birth month, and secondry breastfeeding indicators)
#d <- d %>% filter(!(intervention_variable %in% c("enstunt","trth2o","predfeed3","predfeed6","predfeed36","exclfeed3","exclfeed6","exclfeed36","brthmon","month")) )
d <- d %>% filter(!(intervention_variable %in% c("trth2o","predfeed3","predfeed6","predfeed36","exclfeed3","exclfeed6","exclfeed36","brthmon","month")) )
table(d$intervention_variable, d$outcome_variable)

#----------------------------------------------------------
# Merge in Ns
#----------------------------------------------------------
load(paste0(res_dir,"stunting_rf_Ns_sub.rdata"))
N_sums_bin <- N_sums %>% mutate(continuous = 0)
N_sums_bin[N_sums_bin$intervention_variable=="fage",]

load(paste0(res_dir,"continuous_rf_Ns_sub.rdata"))
N_sums_cont <- N_sums %>% mutate(continuous = 1)
N_sums_cont$intervention_level <- gsub("Wealth","",N_sums_cont$intervention_level)
N_sums_cont[N_sums_cont$intervention_variable=="hhwealth_quart",]
d[d$intervention_variable=="hhwealth_quart",]

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
load(paste0(res_dir, "stunting_rf_Ns.rdata"))
table(Ndf_Ystrat$intervention_level[Ndf_Ystrat$intervention_variable=="fage"])


rare_strat <- Ndf_Ystrat %>% group_by(studyid, country, agecat, outcome_variable, intervention_variable) %>%
              mutate(min_n_cell =  min(n_cell)) %>%
              subset(., select=c(studyid, country, agecat, outcome_variable, intervention_variable, min_n_cell))

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
d <- d %>% filter(!(intervention_variable %in% wastingvars & outcome_variable %in% wasting_outcomevars & agecat!="24 months"))
dim(d)


dsub <- d %>% filter(agecat=="Birth") 
table(dsub$intervention_variable, dsub$outcome_variable)


#Seperate adjusted and unadjusted
#mark unadjusted
d$adjusted <- ifelse(d$adjustment_set!="unadjusted" , 1, 0)

#Seperate unadjusted estimates
d_adj <- d %>% filter((adjusted==1) | ((intervention_variable=="sex"  | intervention_variable=="rain_quartile") & adjusted==0))
d_unadj <- d %>% filter(adjusted==0)


saveRDS(d_adj, paste0(res_dir,"rf results/full_RF_results.rds"))
saveRDS(d_unadj, paste0(res_dir,"rf results/full_RF_unadj_results.rds"))

