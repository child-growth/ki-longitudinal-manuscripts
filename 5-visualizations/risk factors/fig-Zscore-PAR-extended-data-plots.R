



rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(gtable)

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())



#Load data
par <- readRDS(paste0(here::here(),"/results/rf results/pooled_Zscore_PAR_results.rds"))

dim(par)

par$intervention_level <- as.character(par$intervention_level)
par$intervention_level[par$intervention_level=="No"] <- "None"
par$intervention_level[par$intervention_level=="Yes"] <- "All"
par$intervention_level[par$intervention_level=="1" & par$intervention_variable %in% c("brthmon","month")] <- "Jan."

par_agestrat <- par %>% filter( agecat %in% c("Birth","6 months","24 months"), region=="Pooled", outcome_variable %in% c("haz", "whz"), !is.na(PAR)) %>%
  mutate(RFlabel_ref = gsub(", ref: "," shifted to ",RFlabel_ref))

par_regionstrat <- par %>% filter( agecat=="24 months", region!="Pooled", outcome_variable %in% c("haz", "whz"), !is.na(PAR)) %>%
  mutate(RFlabel_ref = gsub(", ref: "," shifted to ",RFlabel_ref))




### Anna, make 12 plots from the following data subsets (grouped together in panels of 3)

#Extended data fig 3
par_agestrat %>% filter(outcome_variable=="haz", agecat == "Birth")
par_agestrat %>% filter(outcome_variable=="haz", agecat == "6 months")
par_agestrat %>% filter(outcome_variable=="haz", agecat == "24 months")

#Extended data fig 4
par_agestrat %>% filter(outcome_variable=="whz", agecat == "Birth")
par_agestrat %>% filter(outcome_variable=="whz", agecat == "6 months")
par_agestrat %>% filter(outcome_variable=="whz", agecat == "24 months")


#Extended data fig 6
par_agestrat %>% filter(outcome_variable=="haz", region == "Africa")
par_agestrat %>% filter(outcome_variable=="haz", region == "Latin America")
par_agestrat %>% filter(outcome_variable=="haz", region == "South Asia")

#Extended data fig 7
par_agestrat %>% filter(outcome_variable=="whz", region == "Africa")
par_agestrat %>% filter(outcome_variable=="whz", region == "Latin America")
par_agestrat %>% filter(outcome_variable=="whz", region == "South Asia")

