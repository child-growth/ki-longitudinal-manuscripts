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
dhaz <- readRDS(file = (here::here("data", "clean-DHS-haz.rds")))

table(dhaz$inghap, dhaz$country)
dhaz$inghap <- ifelse(dhaz$country %in% ki_countries, 1, 0)
table(dhaz$inghap, dhaz$country)


# set up for parallel computing
# configure for a laptop (use only 3 cores)
registerDoParallel(cores = 3)
#---------------------------------------
# compute weights per instructions from
# DHS
#---------------------------------------
dhsz <- dhaz %>%
  mutate(wgt = weight / 1000000)

#---------------------------------------
#---------------------------------------
# estimate z-scores by age
#---------------------------------------
#---------------------------------------

#---------------------------------------
# estimate mean z-scores by age
# including all countries in each region
#---------------------------------------
#---------------------------------------
# for each region, do the cluster based pooling for each child age
#---------------------------------------

df_survey <- foreach(measure_here = unique(dhsz$measure), .combine = rbind, .packages=c('tidyverse','survey')) %:%
  foreach(region_here = c("Africa", "South Asia", "Latin America"), .combine = rbind) %dopar% {
    options(survey.lonely.psu = "adjust")
    df <- dhsz %>% filter(measure == measure_here & region == region_here)
    result_svymean <- compute_ci_with_sampling_weights(df)
    result_svymean$measure <- measure_here
    result_svymean$region <- region_here
    result_svymean
  }

#There are some (measure, region) pair with very few samples. Therefore the software will (honestly) compute the `se` to be zero. 
#This will throw error down the pipeline when we do meta-analysis. #To avoid this, truncate lowest SE to the 5th percentile
#df_survey$se[df_survey$se <= 1e-1] <- 1e-1
quantile_se <- quantile(df_survey$se, prob = 0.05)
df_survey$se[df_survey$se <= quantile_se] <- quantile_se

dhs_pooled <- do_metaanalysis(df_survey, pool_over = "region")
dhs_pooled$region <- "Overall"

df_survey <- df_survey %>%
  rename(fit = zscore, fit_lb = ci_l, fit_ub = ci_u, fit_se = se) %>%
  select(measure, region, agem, fit, fit_se, fit_lb, fit_ub)
dhs_pooled <- dhs_pooled %>%
  rename(fit = est, fit_lb = lb, fit_ub = ub, fit_se = se) %>%
  select(measure, region, agem, fit, fit_se, fit_lb, fit_ub)
df_survey_output <- bind_rows(df_survey, dhs_pooled) %>%
  mutate(region = factor(region, levels = c("Overall", "Africa", "South Asia", "Latin America")))
df_survey_output$measure <- "LAZ" # rename HAZ to LAZ

saveRDS(df_survey_output, file = paste0(dhs_res_dir, "DHS-stunting-by-region.rds"))



#---------------------------------------
# for each country, do the cluster based pooling for each child age
#---------------------------------------

df_survey_country <- foreach(measure_here = unique(dhsz$measure), .combine = rbind, .packages=c('tidyverse','survey')) %:%
  foreach(country_here = unique(dhsz$country), .combine = rbind) %dopar% {
    options(survey.lonely.psu = "adjust")
    
    result_svymean<-data.frame(agem=NA, zscore=NA, se=NA, ci_l=NA, ci_u=NA, wgt_sum=NA)
    
    df <- dhsz %>% filter(measure == measure_here & country == country_here)
    try(result_svymean <- compute_ci_with_sampling_weights(df))
    result_svymean$measure <- measure_here
    result_svymean$country <- country_here
    result_svymean$region <- df$region[1]
    result_svymean
  }

df_survey_country <- df_survey_country %>% filter(!is.na(df_survey_country))

#There are some (measure, region) pair with very few samples. Therefore the software will (honestly) compute the `se` to be zero. 
#This will throw error down the pipeline when we do meta-analysis. #To avoid this, truncate lowest SE to the 5th percentile
#df_survey$se[df_survey$se <= 1e-1] <- 1e-1
quantile_se <- quantile(df_survey_country$se, prob = 0.05)
df_survey_country$se[df_survey_country$se <= quantile_se] <- quantile_se

df_survey_country <- df_survey_country %>%
  rename(fit = zscore, fit_lb = ci_l, fit_ub = ci_u, fit_se = se) %>%
  select(measure, region, country, agem, fit, fit_se, fit_lb, fit_ub)

df_survey_country$measure <- "LAZ" # rename HAZ to LAZ

saveRDS(df_survey_country, file = paste0(dhs_res_dir, "DHS-stunting-by-country.rds"))


#---------------------------------------
# estimate spline fit to mean z-scores by age
#---------------------------------------
dhssubfits <- foreach(rgn = c("Africa", "South Asia", "Latin America"), .combine = rbind, .packages = "dplyr") %dopar% {
  di <-  dhsz %>% filter(region == rgn & inghap == 1)
  fiti <- mgcv::gam(zscore ~ s(agem, bs = "cr", k=5), weights = wgt, data = di)
  newd <- data.frame(agem = 0:24)
  # estimate approximate simultaneous confidence intervals
  fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000)
  dfit <- data.frame(measure = "LAZ", region = rgn, agem = 0:24, fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS)
  dfit
}

# estimate a pooled fit, over all regions
fitsubpool <- mgcv::gam(zscore ~ s(agem, bs = "cr", k=5), weights = wgt, data = filter(dhsz, inghap == 1))
newd <- data.frame(agem = 0:24)
fitsubpoolci <- gamCI(m = fitsubpool, newdata = newd, nreps = 1000)
dhssub_pool <- data.frame(measure = "LAZ", region = "OVERALL", agem = 0:24, fit = fitsubpoolci$fit, fit_se = fitsubpoolci$se.fit, fit_lb = fitsubpoolci$lwrS, fit_ub = fitsubpoolci$uprS)


table(dhssubfits$region)
dhssubfits <- bind_rows(dhssubfits, dhssub_pool) %>%
  mutate(region = factor(region, levels = c("Overall", "Africa", "South Asia", "Latin America")))


# estimate country-specific fits
d_country <- dhsz %>% filter(!is.na(country))
dhssubfits_country <- foreach(ctry = unique(d_country$country), .combine = rbind, .packages = "dplyr") %dopar% {
  di <-  d_country %>% filter(country == ctry & inghap == 1)
  try(fiti <- mgcv::gam(zscore ~ s(agem, bs = "cr", k=5), weights = wgt, data = di))
  newd <- data.frame(agem = 0:24)
  # estimate approximate simultaneous confidence intervals
  fitci<-data.frame(fit=NA, se.fit=NA, lwrS=NA, ci_l=NA, uprS=NA)
  try(fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000))
  dfit <- data.frame(measure = "LAZ", country = ctry, region = di$region[1], agem = 0:24, fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS)
  dfit
}

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
ghapfits <- foreach(rgn = unique(d$region), .combine = rbind, .packages = "dplyr") %do% {
  
  di <- d %>% filter(region == rgn)
  try(fiti <- mgcv::gam(haz ~ s(agem, bs = "cr", k=5), data = di))
  newd <- data.frame(agem = 0:24)
  #newd <- data.frame(agedays = 1:730)
  fitci<-data.frame(fit=NA, se.fit=NA, lwrS=NA, ci_l=NA, uprS=NA)
  try(fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000))
  dfit <- data.frame(
    measure = "LAZ", region = rgn, agem = 0:24,
    fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS
  )
  dfit
}

ghapfits_country <- foreach(rgn = unique(d$country), .combine = rbind, .packages = "dplyr") %do% {
  di <- d %>% filter(country == rgn)
  try(fiti <- mgcv::gam(est ~ s(agem, bs = "cr", k=5), data = di))
  newd <- data.frame(agem = 0:24)
  fitci<-data.frame(fit=NA, se.fit=NA, lwrS=NA, ci_l=NA, uprS=NA)
  try(fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000))
  dfit <- data.frame(
    measure = "LAZ", region = di$region[1], country=rgn, agem = 0:24,
    fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS
  )
  dfit
}

d$cohort <- paste0(d$studyid, "-", d$country)
ghapfits_cohort <- foreach(rgn = unique(d$cohort), .combine = rbind, .packages = "dplyr") %do% {
  di <- d %>% filter(cohort == rgn)
  try(fiti <- mgcv::gam(est ~ s(agem, bs = "cr", k=5), data = di))
  newd <- data.frame(agem = 0:24)
  fitci<-data.frame(fit=NA, se.fit=NA, lwrS=NA, ci_l=NA, uprS=NA)
  try(fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000))
  dfit <- data.frame(
    measure = "LAZ", region = di$region[1], cohort=rgn, agem = 0:24,
    fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS
  )
  dfit
}



#---------------------------------------
# Append the fits into a single data frame
# for plotting
#---------------------------------------
ghapfits <- ghapfits %>% mutate(dsource = "ki cohorts")
ghapfits_cohort  <- ghapfits_cohort %>% mutate(dsource = "ki cohorts")
dhssubfits <- dhssubfits %>% mutate(dsource = "DHS, ki countries")
dhssubfits$region <- replace(dhssubfits$region,is.na(dhssubfits$region),"Overall")

# dhsallfits <- dhsallfits %>% mutate(dsource="DHS") # std_err based on bootstrapping GAM
dhsallfits <- df_survey_output %>% mutate(dsource = "DHS") # std_err based on survey_avg using sampling weight

ghapfits <- ghapfits %>% mutate(measure = as.character(measure))
dhssubfits <- dhssubfits %>% mutate(measure = as.character(measure))

dhsfits <- bind_rows(ghapfits, ghapfits_cohort, dhssubfits, dhsallfits) %>%
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
dhssubfits_country <- dhssubfits_country %>% mutate(dsource = "DHS, ki countries", measure = as.character(measure))
# dhsallfits <- dhsallfits %>% mutate(dsource="DHS") # std_err based on bootstrapping GAM
dhsallfits_country <- df_survey_country %>% mutate(dsource = "DHS") # std_err based on survey_avg using sampling weight

dhsfits_country <- bind_rows(ghapfits_country, dhssubfits_country, dhsallfits_country) %>%
  mutate(dsource = factor(dsource, levels = c("ki cohorts", "DHS, ki countries", "DHS"))) %>%
  filter(dsource %in% c("ki cohorts", "DHS, ki countries"))

#dhsfits_country$region <- replace(dhsfits_country$region,is.na(dhsfits_country$region),"Overall")

dhsfits_country <- filter(dhsfits_country, measure == "LAZ")
#dhsfits_country = dhsfits_country %>% mutate(region = factor(region, levels = c("Overall", "Africa", "Latin America", "South Asia")))

saveRDS(dhsfits_country, file = paste0(dhs_res_dir, "stunting-DHSandKI-by-country.rds"))


#---------------------------------------
# Filter for LAZ measures with data source of ki cohorts or DHS
#---------------------------------------


dhs_plotd <- bind_rows(dhsfits, dhsfits_country) %>%
  filter(dsource %in% c("ki cohorts", "DHS, ki countries"),
         !(!is.na(country) & dsource=="ki cohorts"),
         !(!is.na(cohort) & dsource=="DHS, ki countries")) %>% 
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

saveRDS(dhs_plotd_laz, file = paste0(figdata_dir_stunting, "figdata-laz-2-mean_dhs-country--allage-primary.RDS"))
