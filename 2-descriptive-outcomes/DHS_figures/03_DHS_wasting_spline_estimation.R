##########################################
# ki longitudinal manuscripts
# DHS analysis - mean LAZ, WLZ, and WHZ by age

# This script reads in clean DHS z-score data and finds the mean LAZ, WLZ, and WHZ values by age. 
# Data is prepared and saved to produce a figure that compares DHS estimates to those from
# the KI cohorts in fig-DHS-plots-whz.R.

# Inputs:
#   0-config.R : configuration file
#   0-project-functions/0_helper_sampling_weights.R
#   clean-DHS-haz.rds  : clean DHS LAZ data
#   clean-DHS-whz.rds  : clean DHS WHZ data
#   clean-DHS-wlz.rds  : clean DHS WLZ data
#   desc_data_cleaned.Rdata

# Outputs:
#   DHS-wasting-by-region.rds
#   wasting-DHSandKI-by-region.rds
#   figdata-fig_dhs_ki_zscores_byage.RDS

##########################################

#---------------------------------------
# source configuration file
#---------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_helper_sampling_weights.R"))

#---------------------------------------
# load cleaned DHS anthro data
# created by 2_DHS_plot_wasting_mean_estimation.R
#---------------------------------------

# set up for parallel computing
registerDoParallel(cores = 8)

dhs.region <- readRDS(paste0(dhs_res_dir, "DHS-wasting-by-region.rds"))
dhs.country <- readRDS(paste0(dhs_res_dir, "DHS-wasting-by-country.rds"))

#---------------------------------------
# Grab GHAP KI cohort estimated mean Z-scores
# by age, and format the data for this analysis
#---------------------------------------

ghapd <- readRDS(co_occurrence_data_path) %>% rename(LAZ=haz, WAZ=waz, WHZ=whz) %>% filter(measurefreq == "monthly") %>%
  mutate(country=factor(str_to_title(country)))
ghapd$agem <- floor(ghapd$agedays/30.4167)
ghapd$region<-factor(ghapd$region)
unique(ghapd$country)

ghapd %>% filter(agem==24) %>%
  group_by(country) %>%
  summarise(mean(LAZ))

#---------------------------------------
# fit smooths to GHAP data
#---------------------------------------

#Set smoothness
K=NULL

ghapfits <- foreach(zmeas = c("LAZ", "WAZ", "WHZ"), .combine = rbind) %:%
  foreach(rgn = levels(ghapd$region), .combine = rbind) %do% {
    di <- ghapd %>% filter(region == rgn) 
    names(di)[names(di) == zmeas] <- "est"
    
    if(is.null(K)){
      try(fiti <- mgcv::gam(est ~ s(agem, bs = "cr"), data = di))
    }else{
      try(fiti <- mgcv::gam(est ~ s(agem, bs = "cr", k=K), data = di))
    }
    newd <- data.frame(agem = 0:24)
    fitci<-data.frame(fit=NA, se.fit=NA, lwrS=NA, ci_l=NA, uprS=NA)
    try(fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000))
    dfit <- data.frame(measure = zmeas, region = rgn, agem = 0:24, fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS)
    dfit
  }

di <- ghapd 

ghapfit_overall <- foreach(zmeas = c("LAZ", "WAZ", "WHZ"), .combine = rbind)  %dopar% {
    names(di)[names(di) == zmeas] <- "est"
    if(is.null(K)){
      try(fiti <- mgcv::gam(est ~ s(agem, bs = "cr"), data = di))
    }else{
      try(fiti <- mgcv::gam(est ~ s(agem, bs = "cr", k=K), data = di))
    }
    newd <- data.frame(agem = 0:24)
    fitci<-data.frame(fit=NA, se.fit=NA, lwrS=NA, ci_l=NA, uprS=NA)
    try(fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000))
    dfit <- data.frame(measure = zmeas, region = "Overall", agem = 0:24, fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS)
    dfit
}


ghapfits <- bind_rows(ghapfit_overall,ghapfits)

#---------------------------------------
# Append the fits into a single data frame
# for plotting
#---------------------------------------
ghapfits <- ghapfits %>% mutate(dsource = "ki cohorts")
dhs.region <- dhs.region %>% mutate(dsource = "DHS, ki countries")
#dhsallfits <- df_survey_output %>% mutate(dsource = "DHS") # std_err based on survey_avg using sampling weight
dhsfits <- bind_rows(ghapfits, dhs.region) %>%
  mutate(
    dsource = factor(dsource, levels = c("ki cohorts", "DHS, ki countries", "DHS")),
    region = factor(region, levels = c("Overall", "Africa", "Latin America", "South Asia"))
  )

dhsfits <- dhsfits %>%
   mutate(region = factor(region,
                               levels = c("Overall", "Africa", "Latin America", "South Asia"),
                               labels = c("Overall", "Africa", "Latin America", "South Asia")
  ))


dhsfits$measure[dhsfits$measure=="WHZ"] <- "WLZ"
dhsfits$measure[dhsfits$measure=="HAZ"] <- "LAZ"

dhsfits_full <- dhsfits %>%
  filter(!(dsource %in% c("ki cohorts", "DHS, ki countries")))
dhsfits <- dhsfits %>%
  filter(dsource %in% c("ki cohorts", "DHS, ki countries"))

saveRDS(dhsfits, file = paste0(figdata_dir_wasting, "figdata-fig_dhs_ki_zscores_byage.RDS"))




#---------------------------------------
# Pool by country
#---------------------------------------

ghapfits.country <- foreach(zmeas = c("LAZ", "WAZ", "WHZ"), .combine = rbind) %:%
  foreach(rgn = levels(ghapd$country), .combine = rbind) %do% {
    di <- ghapd %>% filter(country == rgn) 
    names(di)[names(di) == zmeas] <- "est"
    
    if(is.null(K)){
      try(fiti <- mgcv::gam(est ~ s(agem, bs = "cr"), data = di))
    }else{
      try(fiti <- mgcv::gam(est ~ s(agem, bs = "cr", k=K), data = di))
    }
    newd <- data.frame(agem = 0:24)
    fitci<-data.frame(fit=NA, se.fit=NA, lwrS=NA, ci_l=NA, uprS=NA)
    try(fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000))
    dfit <- data.frame(measure = zmeas, country = rgn, agem = 0:24, fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS)
    dfit
  }

ghapfits.country <- ghapfits.country %>% mutate(dsource = "ki cohorts")
dhs.country <- dhs.country %>% mutate(dsource = "DHS")

dhsfits.country <- bind_rows(ghapfits.country, dhs.country) %>%
  mutate(
    dsource = factor(dsource, levels = c("ki cohorts", "DHS"))
  )

dhsfits.country$measure[dhsfits.country$measure=="WHZ"] <- "WLZ"
dhsfits.country$measure[dhsfits.country$measure=="HAZ"] <- "LAZ"

dhsfits.country <- dhsfits.country %>%
  filter(dsource %in% c("ki cohorts", "DHS"))



saveRDS(dhsfits.country, file = paste0(figdata_dir_wasting, "figdata-fig_dhs_ki_zscores_byage_country.RDS"))



#---------------------------------------
# Pool by cohort
#---------------------------------------


ghapd <- ghapd %>% mutate(cohort=paste0(studyid,"-",country))
ghapfits_cohort <- foreach(zmeas = c("LAZ", "WAZ", "WHZ"), .combine = rbind) %:%
  foreach(rgn = unique(ghapd$cohort), .combine = rbind) %do% {
    di <- ghapd %>% filter(cohort == rgn) 
    names(di)[names(di) == zmeas] <- "est"
    
    if(is.null(K)){
      try(fiti <- mgcv::gam(est ~ s(agem, bs = "cr"), data = di))
    }else{
      try(fiti <- mgcv::gam(est ~ s(agem, bs = "cr", k=K), data = di))
    }
    newd <- data.frame(agem = 0:24)
    fitci<-data.frame(fit=NA, se.fit=NA, lwrS=NA, ci_l=NA, uprS=NA)
    try(fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000))
    dfit <- data.frame(measure = zmeas, studyid = di$studyid[1], country = di$country[1], cohort = rgn, agem = 0:24, fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS)
    dfit
  }


ghapfits_cohort <- ghapfits_cohort %>% mutate(dsource = "ki cohorts")
dhs.country <- dhs.country %>% mutate(dsource = "DHS")

dhsfits.cohort <- bind_rows(ghapfits_cohort, dhs.country) %>%
  mutate(
    dsource = factor(dsource, levels = c("ki cohorts", "DHS"))
  )

dhsfits.cohort$measure[dhsfits.cohort$measure=="WHZ"] <- "WLZ"
dhsfits.cohort$measure[dhsfits.cohort$measure=="HAZ"] <- "LAZ"

dhsfits.cohort <- dhsfits.cohort %>%
  filter(dsource %in% c("ki cohorts", "DHS"))


table(dhsfits.cohort$dsource, dhsfits.cohort$country)

saveRDS(dhsfits.cohort, file = paste0(figdata_dir_wasting, "figdata-fig_dhs_ki_zscores_byage_cohort.RDS"))


