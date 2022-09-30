


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

load("/data/KI/UCB-SuperLearner/Manuscript analysis data/st_meanZ_rf.Rdata") 
d$impfloor <- as.character(d$impfloor)
d$impfloor[is.na(d$impfloor)] <- "missing"

gms <- d %>% filter(studyid=="GMS-Nepal",agecat=="24 months")
table(gms$impfloor)
table(is.na(gms$impfloor))
gms$impfloor <- as.character(gms$impfloor)
gms$impfloor[is.na(gms$impfloor)] <- "missing"
gms %>% group_by(impfloor) %>% summarize(mean(haz))
mean(gms$haz[gms$impfloor!="missing"])

maled <- d %>% filter(studyid=="MAL-ED" & country=="SOUTH AFRICA")
table(maled$impfloor)
table(is.na(maled$impfloor))
maled$impfloor <- as.character(maled$impfloor)
maled$impfloor[is.na(maled$impfloor)] <- "missing"
maled %>% group_by(impfloor) %>% summarize(mean(haz))

d<-d%>% filter(agecat=="24 months")
prop.table(table(d$impfloor))*100
d<-d%>% filter(studyid!="IRC", studyid!="CMC-V-BCS-2002", country!="BRAZIL")
prop.table(table(d$impfloor))*100


prop <- d %>% group_by(studyid, country) %>% 
      summarise(prop_improved=mean(impfloor=="1")*100, 
                prop_unimproved=mean(impfloor=="0")*100,  
                prop_missing=mean(impfloor=="missing")*100) %>% filter(prop_missing!=100)
prop

#unique(paste0(ate$studyid, " ", ate$country))


dfull_ate <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_cont_primary_alt_ref_2022-09-28.RDS")) %>% filter(intervention_variable=="impfloor", agecat=="24 months", outcome_variable=="haz")
dfull_par <- readRDS(paste0(BV_dir,"/results/rf results/full_RF_results.rds")) %>% filter(intervention_variable=="impfloor", agecat=="24 months", outcome_variable=="haz")

dfull_ate %>% filter(studyid=="GMS-Nepal",intervention_variable=="impfloor", agecat=="24 months") %>% select(studyid, type, parameter, intervention_level, baseline_level,    estimate,    ci_lower,    ci_upper)
dfull_par %>% filter(studyid=="GMS-Nepal",intervention_variable=="impfloor", agecat=="24 months")
dfull_par %>% filter(studyid=="MAL-ED" & country=="TANZANIA",intervention_variable=="impfloor", agecat=="24 months")
dfull_ate %>% filter(studyid=="MAL-ED" & country=="SOUTH AFRICA",intervention_variable=="impfloor", agecat=="24 months")
dfull_par %>% filter(studyid=="MAL-ED" & country=="SOUTH AFRICA",intervention_variable=="impfloor", agecat=="24 months")
# dfull %>% filter(intervention_variable=="impfloor",  outcome_variable=="haz") %>% filter(studyid=="JiVitA-4")
# dfull %>% filter(intervention_variable=="impfloor",  outcome_variable=="haz") %>% filter(studyid=="JiVitA-4")
# dfull %>% filter(intervention_variable=="impfloor",  outcome_variable=="haz") %>% filter(studyid=="JiVitA-4")
# dfull %>% filter(intervention_variable=="impfloor",  outcome_variable=="haz") %>% filter(studyid=="JiVitA-4")

ate <- dfull_ate %>% filter(intervention_variable=="impfloor", type=="ATE", agecat=="24 months", outcome_variable=="haz")  %>% filter(intervention_level != baseline_level) %>% filter(adjustment_set!="")
par <- dfull_par %>% filter(intervention_variable=="impfloor",  type=="PAR",  agecat=="24 months", outcome_variable=="haz") %>% filter(adjustment_set!="")

ate2 <- ate %>% select(studyid, country, estimate) %>% rename(ate=estimate)
# #flip direction of measurement so it's Ya-Y
par2 <- par %>% select(studyid, country, estimate) %>% rename(par=estimate) %>% mutate(par=-par) 

tab <- left_join(ate2, par2, by=c("studyid","country"))
tab <- left_join(tab, prop, by=c("studyid","country"))
tab

knitr::kable(tab, digits =2)

RMAest <- ate %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.cont(.)) %>% as.data.frame()
RMAest

RMAest_par <- par %>% mutate(untransformed_estimate= -untransformed_estimate) %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.Zpar(.)) %>% as.data.frame()
RMAest_par


