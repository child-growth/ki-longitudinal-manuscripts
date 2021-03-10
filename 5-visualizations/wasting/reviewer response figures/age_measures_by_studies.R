



rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_wast_inc_functions.R"))

d <- readRDS(wasting_data_path) %>% filter(measurefreq=="monthly")

ggplot(d, aes(x=agedays)) + geom_histogram() + geom_vline(xintercept = 730) + facet_wrap(~interaction(studyid,country))