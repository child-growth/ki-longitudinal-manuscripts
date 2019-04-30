



rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())

#Load data
ki.monthly <- readRDS(paste0(here::here(),"/results/ki.quantiles.monthly.rds"))
ki.quarterly<- readRDS(paste0(here::here(),"/results/ki.quantiles.quarterly.rds"))
dhs <- readRDS(paste0(here::here(),"/results/dhs.quantiles.rds"))

#rename variables to unique names for the merge
ki.monthly <- ki.monthly %>% rename(ki.zscore.monthly = zscore)
ki.quarterly <- ki.quarterly %>% rename(ki.zscore.quarterly = zscore)
dhs <- dhs %>% rename(dhs.zscore = zscore)


#Merge quantile datasets
d <- merge(dhs, ki.monthly, by=c("quantile", "region", "measure"))
d <- merge(d, ki.quarterly, by=c("quantile", "region", "measure"))

#example plot - only interesting in laz from the monthly cohorts
d %>% filter(measure=="haz") %>%
    ggplot(aes(x=ki.zscore.quarterly, y=dhs.zscore)) + 
    geom_point() +
    facet_wrap(~region)


