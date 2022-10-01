


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))



dfull <- readRDS(paste0(BV_dir,"/results/rf results/longbow results/results_cont_bwt_strat_bin.RDS"))

d <- dfull %>% filter(type=="ATE", agecat=="24 months")

#Get full data results (binary variable)
d_unstrat <- readRDS(paste0(BV_dir,"/results/rf results/longbow results/results_cont_full_bin.RDS")) %>% 
  filter(type=="ATE", agecat=="24 months") %>%
  mutate(birthwt="Unstratified")



d <- bind_rows(d, d_unstrat)
table(d$birthwt)
table(d$intervention_variable)

#get number of children:
Ns <- readRDS(paste0(res_dir, "rf results/longbow results/results_cont_bwt_strat_bin_N.RDS"))
load(paste0(res_dir,"continuous_rf_Ns_birthwt_strat.rdata"))
head(Ndf)
table(Ndf$n_cell < 50)
table(Ndf$birthwt)
head(d)

d <- left_join(d, Ndf, by=c("studyid", "country","agecat", "outcome_variable","birthwt", "intervention_variable", "intervention_level"))
table(d$n_cell < 50)



#to do: 
#transform N's
#merge N's
#drop rare
#plot total estimate in this subset
#plot main estimates
#arrange plot

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



#Drop reference levels
d <- d %>% filter(intervention_level != d$baseline_level)

#drop rare levels


table(d$intervention_variable, d$outcome_variable)

#d <- d %>% filter(n_cell > 10)
head(d)

table(d$intervention_variable, d$birthwt, d$outcome_variable)


#Count number of BW levels and only keep when estimates for both levels by study
d <- d %>% group_by(studyid, country, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  mutate(Nlevels=n()) %>% filter(Nlevels==3) %>% 
  group_by(birthwt,intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  mutate(Nstudies=n()) %>% filter(Nstudies>2)
table(d$Nlevels)
table(d$Nstudies)
table(d$intervention_variable)


df <- d %>% filter(outcome_variable=="haz", intervention_variable=="parity") %>% droplevels() %>% arrange(studyid, birthwt) %>% select(studyid, estimate, ci_lower, ci_upper)
table(df$studyid, df$birthwt)

RMAest <- d %>% group_by(Nstudies, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable, birthwt) %>%
  do(pool.cont(., method="REML")) %>% as.data.frame()
RMAest$region <- "Pooled"





#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest)
table(RMAest_clean$birthwt)


#Add reference level to label
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$baseline_level)

saveRDS(RMAest_clean, file=paste0(here::here(),"/data/plotdf_bw_strat.RDS"))
