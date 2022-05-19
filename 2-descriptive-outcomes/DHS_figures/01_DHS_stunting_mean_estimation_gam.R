##########################################
# ki longitudinal manuscripts
# DHS analysis - mean LAZ by age

# This script reads in clean DHS z-score data and finds the mean LAZ values by age. 
# Data is prepared and saved to produce a figure that compares DHS estimates to those from
# the KI cohorts in fig-DHS-plots-laz.R

# Inputs:
#   0-config.R : configuration file
#   0-project-functions/0_helper_sampling_weights.R
#   clean-DHS-haz.rds  : clean DHS LAZ data
#   desc_data_cleaned.Rdata

# Outputs:
#   DHS-stunting-by-region.rds
#   stunting-DHSandKI-by-region.rds
#   figdata-laz-2-mean_dhs-overall_region--allage-primary.RDS

##########################################
#---------------------------------------
# source configuration file
#---------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_helper_sampling_weights.R"))
source(paste0(here::here(), "/0-project-functions/0_descriptive_epi_shared_functions.R"))

#---------------------------------------
# load cleaned DHS anthro data
# created by 7_DHS-data-cleaning.R
#---------------------------------------
dhaz <- readRDS(file = paste0(dhs_res_dir,"clean-DHS-haz.rds"))

table(dhaz$inghap, dhaz$country)
dhaz$inghap <- ifelse(dhaz$country %in% ki_countries, 1, 0)
table(dhaz$inghap, dhaz$country)
dhaz <- dhaz %>% filter(inghap==1)

# set up for parallel computing
registerDoParallel(cores = 8)
#---------------------------------------
# compute weights per instructions from
# DHS
#---------------------------------------
dhsz <- dhaz %>%
  mutate(wgt = weight / 1000000)

#---------------------------------------


#---------------------------------------
# for each region, do the cluster based pooling for each child age
#---------------------------------------

df_survey <- foreach(measure_here = unique(dhsz$measure), .combine = rbind, .packages=c('tidyverse','survey')) %:%
  foreach(region_here = c("Africa", "South Asia", "Latin America"), .combine = rbind) %dopar% {
    df <- dhsz %>% filter(measure == measure_here & region == region_here)
    result_svymean <- weighted_gam_estimate(df)
    result_svymean$measure <- measure_here
    result_svymean$region <- region_here
    result_svymean
  }

df_survey_overall <- foreach(measure_here = unique(dhsz$measure), .combine = rbind, .packages=c('tidyverse','survey')) %dopar% {
    df <- dhsz %>% filter(measure == measure_here)
    result_svymean <- weighted_gam_estimate(df)
    result_svymean$measure <- measure_here
    result_svymean$region <- "Overall"
    result_svymean
  }


df_survey_output <- bind_rows(df_survey_overall, df_survey) %>%
  mutate(region = factor(region, levels = c("Overall", "Africa", "South Asia", "Latin America")))
df_survey_output$measure <- "LAZ" # rename HAZ to LAZ
saveRDS(df_survey_output, file = paste0(dhs_res_dir, "DHS-stunting-by-region.rds"))


#---------------------------------------
# for each country, do the cluster based pooling for each child age
#---------------------------------------

df_survey_country <- foreach(measure_here = unique(dhsz$measure), .combine = rbind, .packages=c('tidyverse','survey')) %:%
  foreach(country_here = unique(dhsz$country), .combine = rbind) %dopar% {
    result_svymean<-data.frame(agem=NA, fit=NA, fit_lb=NA, fit_ub=NA)
    
    df <- dhsz %>% filter(measure == measure_here & country == country_here)
    try(result_svymean <- weighted_gam_estimate(df))
    result_svymean$measure <- measure_here
    result_svymean$country <- country_here
    result_svymean$region <- df$region[1]
    result_svymean
  }

df_survey_country <- df_survey_country %>% filter(!is.na(df_survey_country))



df_survey_country$measure <- "LAZ" # rename HAZ to LAZ
saveRDS(df_survey_country, file = paste0(dhs_res_dir, "DHS-stunting-by-country.rds"))


#---------------------------------------
# Grab GHAP KI cohort estimated mean Z-scores
# by age, and format the data for this analysis
#---------------------------------------
d <- readRDS(stunting_data_path) 
d$country <- factor(d$country)
d$agem <- floor(d$agedays/30.4167)


#---------------------------------------
# fit smooths to GHAP data
#---------------------------------------
# ghapfits <- foreach(rgn = unique(d$region), .combine = rbind, .packages = "dplyr") %do% {
#   
#   di <- d %>% filter(region == rgn)
#   try(fiti <- mgcv::gam(haz ~ s(agem, bs = "cr", k=5), data = di))
#   newd <- data.frame(agem = 0:24)
#   #newd <- data.frame(agedays = 1:730)
#   fitci<-data.frame(fit=NA, se.fit=NA, lwrS=NA, ci_l=NA, uprS=NA)
#   try(fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000))
#   dfit <- data.frame(
#     measure = "LAZ", region = rgn, agem = 0:24,
#     fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS
#   )
#   dfit
# }

K=NULL
ghapfits <- foreach(rgn = unique(d$region)[-4], .combine = rbind, .packages=c('tidyverse')) %dopar% {
    df <- d %>% filter(region == rgn) %>% 
      rename(zscore=haz) %>% 
      mutate(cluster_no = as.factor(paste0(studyid,"-",country)), weight=1) %>%
      droplevels()
    results <- weighted_gam_estimate(df)
    results$measure <- "LAZ"
    results$region <- rgn
    results
  }

  df <- d %>% rename(zscore=haz) %>% mutate(cluster_no = as.factor(paste0(studyid,"-",country)), weight=1)
  ghapfits_overall <- weighted_gam_estimate(df)
  ghapfits_overall$measure <- "LAZ"
  ghapfits_overall$region <- "Overall"
  ghapfits_overall

ghapfits <- bind_rows(ghapfits_overall, ghapfits)


ghapfits_country <- foreach(rgn = unique(d$country), .combine = rbind, .packages=c('tidyverse')) %dopar% {
  df <- d %>% filter(country == rgn) %>% 
    rename(zscore=haz) %>% 
    mutate(cluster_no = as.factor(paste0(studyid,"-",country)), weight=1) %>%
    droplevels()
  
  N <- length(unique(paste0(df$studyid,"-",df$country)))
  clust = ifelse(N>1,T,F)
  
  results<-data.frame(agem=NA, fit=NA, fit_lb=NA, fit_ub=NA)
  try(results <- weighted_gam_estimate(df, cluster=clust))
  results$measure <- "LAZ"
  results$country <- rgn
  results
}



# ghapfits_country <- foreach(rgn = unique(d$country), .combine = rbind, .packages = "dplyr") %do% {
#   di <- d %>% filter(country == rgn)
#   try(fiti <- mgcv::gam(est ~ s(agem, bs = "cr", k=5), data = di))
#   newd <- data.frame(agem = 0:24)
#   fitci<-data.frame(fit=NA, se.fit=NA, lwrS=NA, ci_l=NA, uprS=NA)
#   try(fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000))
#   dfit <- data.frame(
#     measure = "LAZ", region = di$region[1], country=rgn, agem = 0:24,
#     fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS
#   )
#   dfit
# }
# 
d$cohort <- paste0(d$studyid, "-", d$country)
K=NULL
# ghapfits_cohort <- foreach(rgn = unique(d$cohort), .combine = rbind, .packages = "dplyr") %do% {
#   di <- d %>% filter(cohort == rgn)
#   try(fiti <- mgcv::gam(est ~ s(agem, bs = "cr"), data = di))
#   newd <- data.frame(agem = 0:24)
#   fitci<-data.frame(fit=NA, se.fit=NA, lwrS=NA, ci_l=NA, uprS=NA)
#   try(fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000))
#   dfit <- data.frame(
#     measure = "LAZ", region = di$region[1], cohort=rgn, agem = 0:24,
#     fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS
#   )
#   dfit
# }


ghapfits_cohort <- foreach(rgn = unique(d$cohort), .combine = rbind) %:%
  foreach(rgn = unique(d$cohort), .combine = rbind) %do% {
    di <- d %>% filter(cohort == rgn) 
    names(di)[names(di) == "haz"] <- "est"
    
    if(is.null(K)){
      try(fiti <- mgcv::gam(est ~ s(agem, bs = "cr"), data = di))
    }else{
      try(fiti <- mgcv::gam(est ~ s(agem, bs = "cr", k=K), data = di))
    }
    newd <- data.frame(agem = 0:24)
    fitci<-data.frame(fit=NA, se.fit=NA, lwrS=NA, ci_l=NA, uprS=NA)
    try(fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000))
    dfit <- data.frame(measure = "LAZ", studyid = di$studyid[1], country = di$country[1], cohort = rgn, agem = 0:24, fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS)
    dfit
  }



#---------------------------------------
# Append the fits into a single data frame
# for plotting
#---------------------------------------
ghapfits <- ghapfits %>% mutate(dsource = "ki cohorts")
ghapfits_cohort  <- ghapfits_cohort %>% mutate(dsource = "ki cohorts")
dhssubfits <- df_survey_output %>% mutate(dsource = "DHS, ki countries")


ghapfits <- ghapfits %>% mutate(measure = as.character(measure))
dhssubfits <- dhssubfits %>% mutate(measure = as.character(measure))

dhsfits <- bind_rows(ghapfits, ghapfits_cohort, dhssubfits) %>%
  mutate(dsource = factor(dsource, levels = c("ki cohorts", "DHS, ki countries", "DHS")))

dhsfits = dhsfits %>%
  filter(dsource %in% c("ki cohorts", "DHS, ki countries"))

dhsfits <- filter(dhsfits, measure == "LAZ")

dhsfits = dhsfits %>% mutate(region = factor(region, levels = c("Overall", "Africa", "Latin America", "South Asia")))

saveRDS(dhsfits, file = paste0(dhs_res_dir, "stunting-DHSandKI-by-region.rds"))



#---------------------------------------
# Append the fits into a single data frame
# for plotting
#---------------------------------------
ghapfits_country <- ghapfits_country %>% mutate(dsource = "ki cohorts", measure = as.character(measure))
dhssubfits_country <- df_survey_output %>% mutate(dsource = "DHS, ki countries", measure = as.character(measure))
dhsallfits_country <- df_survey_country %>% mutate(dsource = "DHS") # std_err based on survey_avg using sampling weight

dhsfits_country <- bind_rows(ghapfits_country, dhssubfits_country, dhsallfits_country) %>%
  mutate(dsource = factor(dsource, levels = c("ki cohorts", "DHS, ki countries", "DHS"))) %>%
  filter(dsource %in% c("ki cohorts", "DHS, ki countries"))
dhsfits_country <- filter(dhsfits_country, measure == "LAZ")

saveRDS(dhsfits_country, file = paste0(dhs_res_dir, "stunting-DHSandKI-by-country.rds"))


#---------------------------------------
# Append the fits into a single data frame
# for plotting
#---------------------------------------
ghapfits_cohort <- ghapfits_cohort %>% mutate(dsource = "ki cohorts", measure = as.character(measure))
ghapfits_cohort <- mark_region(ghapfits_cohort)

dhssubfits <- df_survey_output %>% mutate(dsource = "DHS, ki countries", measure = as.character(measure))
dhssubfits_country <-df_survey_country %>% mutate(dsource = "DHS, ki countries", measure = as.character(measure))


dhsfits_country <- bind_rows(ghapfits, ghapfits_cohort, dhssubfits, dhssubfits_country) %>%
  mutate(dsource = factor(dsource, levels = c("ki cohorts", "DHS, ki countries"))) %>%
  filter(dsource %in% c("ki cohorts", "DHS, ki countries"))
dhsfits_country <- filter(dhsfits_country, measure == "LAZ")

saveRDS(dhsfits_country, file = paste0(dhs_res_dir, "stunting-DHSandKI-by-cohort.rds"))
table(dhsfits_country$region, is.na(dhsfits_country$cohort))

#---------------------------------------
# Filter for LAZ measures with data source of ki cohorts or DHS
#---------------------------------------


dhs_plotd <- bind_rows(dhsfits, dhsfits_country) %>%
  filter(dsource %in% c("ki cohorts", "DHS, ki countries"),
         !(!is.na(country) & dsource=="ki cohorts"),
         !(!is.na(cohort) & dsource=="DHS, ki countries")) %>% 
  filter(!is.na(region)) %>%
  droplevels()

table(dhs_plotd$dsource, is.na(dhs_plotd$country))
table(dhs_plotd$dsource, is.na(dhs_plotd$cohort))

dhs_plotd$region <- replace(dhs_plotd$region,is.na(dhs_plotd$region),"Overall")

dhs_plotd_laz <- filter(dhs_plotd, measure == "LAZ")

dhs_plotd_laz = dhs_plotd_laz %>% mutate(region = factor(region, levels = c("Overall", "Africa", "Latin America", "South Asia")))


#---------------------------------------
# Save data for LAZ mean by age plots
#---------------------------------------
laz_ageplot_name <- create_name(
  outcome = "LAZ",
  cutoff = 2,
  measure = "mean DHS",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

saveRDS(dhs_plotd_laz, file = paste0(figdata_dir_stunting, "figdata-", laz_ageplot_name, ".RDS"))



#---------------------------------------
# Save data for LAZ mean by age plots
#---------------------------------------

table(dhs_plotd_laz$country)
saveRDS(dhs_plotd_laz, file = paste0(figdata_dir_stunting, "figdata-laz-2-mean_dhs-country--allage-primary.RDS"))
