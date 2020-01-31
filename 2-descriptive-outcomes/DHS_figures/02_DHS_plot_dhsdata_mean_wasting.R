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
# created by 7_DHS-data-cleaning.R
#---------------------------------------
dhaz <- readRDS(file = (here::here("data", "clean-DHS-haz.rds")))
dwhz <- readRDS(file = (here::here("data", "clean-DHS-whz.rds")))
dwaz <- readRDS(file = (here::here("data", "clean-DHS-waz.rds")))

# set up for parallel computing
# configure for a laptop (use only 3 cores)
registerDoParallel(cores = 3)

#---------------------------------------
# compute weights per instructions from
# DHS
#---------------------------------------
dhsz <- rbind(dhaz, dwhz, dwaz)
dhsz$measure <- factor(dhsz$measure)
dhsz <- dhsz %>%
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
# for each measure and region, do the cluster based pooling for each child age
#---------------------------------------

df_survey <- foreach(measure_here = levels(dhsz$measure), .combine = rbind, .packages=c('tidyverse','survey')) %:%
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
saveRDS(df_survey_output, file = here::here("results/dhs", "DHS-wasting-by-region.rds"))

#---------------------------------------
# repeat the analysis for country specific results
#---------------------------------------
# 
# svymean_each_country <- foreach(measure_here = levels(dhsz$measure), .combine = rbind) %:%
#   foreach(country_here = unique(dhsz$country), .combine = rbind, .errorhandling = "remove") %dopar% {
#     options(survey.lonely.psu = "adjust")
#     df <- dhsz %>% filter(measure == measure_here & country == country_here)
#     result_svymean <- compute_ci_with_sampling_weights(df)
#     result_svymean$measure <- measure_here
#     result_svymean$country <- country_here
#     result_svymean
#   }
# table(svymean_each_country$country, svymean_each_country$measure)
# 
# # make sure there is no zero variance
# svymean_each_country$se[svymean_each_country$se <= 1e-1] <- 1e-1
# dhs_pooled <- do_metaanalysis(svymean_each_country, pool_over = "country")
# dhs_pooled$country <- "OVERALL"
# 
# svymean_each_country <- svymean_each_country %>%
#   rename(fit = zscore, fit_lb = ci_l, fit_ub = ci_u, fit_se = se) %>%
#   select(measure, country, agem, fit, fit_se, fit_lb, fit_ub)
# dhs_pooled <- dhs_pooled %>%
#   rename(fit = est, fit_lb = lb, fit_ub = ub, fit_se = se) %>%
#   select(measure, country, agem, fit, fit_se, fit_lb, fit_ub)
# df_survey_output_country <- bind_rows(svymean_each_country, dhs_pooled) %>%
#   mutate(country = factor(country))
# saveRDS(df_survey_output_country, file = here::here("results", "DHS-wasting-by-country.rds"))

#---------------------------------------
# estimate mean z-scores by age
# subset to countries that overlap the
# ki cohorts
#---------------------------------------
dhssubfits <- foreach(zmeas = levels(dhsz$measure), .combine = rbind) %:%
  foreach(rgn = c("Africa", "South Asia", "Latin America"), .combine = rbind) %dopar% {
    di <- dhsz %>% filter(measure == zmeas & region == rgn & inghap == 1)
    fiti <- mgcv::gam(zscore ~ s(agem, bs = "cr"), weights = wgt, data = di)
    newd <- data.frame(agem = 0:24)
    fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000)
    dfit <- data.frame(measure = zmeas, region = rgn, agem = 0:24, fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS)
    dfit
  }

# estimate a pooled fit, over all regions
dhssub_pool <- foreach(zmeas = levels(dhsz$measure), .combine = rbind) %dopar% {
  di <- dhsz %>% filter(measure == zmeas & inghap == 1)
  fiti <- mgcv::gam(zscore ~ s(agem, bs = "cr"), weights = wgt, data = di)
  newd <- data.frame(agem = 0:24)
  fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000)
  dfit <- data.frame(measure = zmeas, region = "Overall", agem = 0:24, fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS)
  dfit
}

dhssubfits <- bind_rows(dhssubfits, dhssub_pool) %>%
  mutate(region = factor(region, levels = c("Overall", "Africa", "South Asia", "Latin America")))


#---------------------------------------
# Grab GHAP KI cohort estimated mean Z-scores
# by age, and format the data for this analysis
#---------------------------------------
d <- readRDS(paste0(here(),"/results/desc_data_cleaned.rds")) %>% filter(is.na(country))
d$region <- as.character(d$region)


ghapd <- d %>%
  filter(
    measure %in% c("Mean LAZ - monthly cohorts", "Mean WAZ", "Mean WLZ"),
    birth == "yes",
    age_range == "1 month",
    cohort == "pooled",
    analysis %in% c("Primary","Cohorts monthly 0-24 m")
  ) %>%
  mutate(
    measure = str_sub(measure, 6, 8),
    measure = factor(measure, levels = c("LAZ", "WAZ", "WLZ"), labels = c("LAZ", "WAZ", "WHZ")),
    whoregion = factor(region, levels = c("Overall", "Africa", "South Asia", "Latin America")),
    agecat2 = as.character(agecat),
    agems = str_trim(str_sub(agecat2, 1, 2)),
    agem = as.integer(
      case_when(
        agems == "Tw" ~ "0",
        agems == "On" ~ "1",
        !is.na(agems) ~ agems
      )
    )
  )

ghapd$region<-factor(ghapd$region)

#---------------------------------------
# fit smooths to GHAP data
#---------------------------------------
ghapfits <- foreach(zmeas = c("LAZ", "WAZ", "WHZ"), .combine = rbind) %:%
  foreach(rgn = levels(ghapd$region), .combine = rbind) %do% {
    di <- ghapd %>% filter(measure == zmeas & region == rgn)
    fiti <- mgcv::gam(est ~ s(agem, bs = "cr"), data = di)
    newd <- data.frame(agem = 0:24)
    fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000)
    dfit <- data.frame(measure = zmeas, region = rgn, agem = 0:24, fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS)
    dfit
  }


#---------------------------------------
# Append the fits into a single data frame
# for plotting
#---------------------------------------
ghapfits <- ghapfits %>% mutate(dsource = "ki cohorts")
dhssubfits <- dhssubfits %>% mutate(dsource = "DHS, ki countries")
# dhsallfits <- dhsallfits %>% mutate(dsource = "DHS") # std_err based on bootstrapping GAM
dhsallfits <- df_survey_output %>% mutate(dsource = "DHS") # std_err based on survey_avg using sampling weight
dhsfits <- bind_rows(ghapfits, dhssubfits, dhsallfits) %>%
  mutate(
    dsource = factor(dsource, levels = c("ki cohorts", "DHS, ki countries", "DHS")),
    region = factor(region, levels = c("Overall", "Africa", "Latin America", "South Asia"))
  )

dhsfits <- dhsfits %>%
   mutate(region = factor(region,
                               levels = c("Overall", "Africa", "Latin America", "South Asia"),
                               labels = c("Overall", "Africa", "Latin America", "South Asia")
  ))

dhsfits <- dhsfits %>%
  filter(dsource %in% c("ki cohorts", "DHS, ki countries"))

dhsfits$measure[dhsfits$measure=="WHZ"] <- "WLZ"
dhsfits$measure[dhsfits$measure=="HAZ"] <- "LAZ"

saveRDS(dhsfits, file = here::here("results/dhs", "wasting-DHSandKI-by-region.rds"))

#---------------------------------------
# make z-score by age figure
# after preliminary inspection, the
# DHS and DHS subset estimates are so
# similar in nearly every case that it
# doesn't add much to the plot.
# Simplify to only include GHAP and
# DHS overall estimates
#---------------------------------------
dhs_plotd <- dhsfits %>%
  filter(dsource %in% c("ki cohorts", "DHS, ki countries"))

saveRDS(dhs_plotd, file = paste0(figdata_dir_wasting, "figdata-fig_dhs_ki_zscores_byage.RDS"))
