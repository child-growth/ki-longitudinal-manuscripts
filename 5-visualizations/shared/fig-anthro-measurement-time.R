


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


d <- readRDS(ki_manuscript_dataset_path)

d <- d %>% filter(measurefreq!="yearly")

ggplot(d, aes(x=agedays)) + geom_histogram() + facet_wrap(~studyid, scales = "free_y") + geom_vline(xintercept=730)
