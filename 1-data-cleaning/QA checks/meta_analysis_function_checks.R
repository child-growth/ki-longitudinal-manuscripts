


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

d <- readRDS(paste0(here(),"/results/desc_data_cleaned.rds"))



head(d)

d <- d %>% filter(cohort == "ki1101329-Keneba-GAMBIA" |
                    cohort == "Keneba-GAMBIA" |
                    (cohort == "pooled" & region=="Overall") |
                    (cohort == "pooled" & region=="South Asia")) %>%
           filter(disease=="Stunting", analysis=="Primary")
                    
head(d)

df <- d %>% filter(measure=="Prevalence")
df