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
registerDoParallel(cores = 8)

#---------------------------------------
# compute weights per instructions from
# DHS
#---------------------------------------
dhsz <- rbind(dhaz, dwhz, dwaz)
dhsz$measure <- factor(dhsz$measure)
dhsz <- dhsz %>%
  mutate(wgt = weight / 1000000)

table(dhsz$inghap, dhsz$country)
dhsz$inghap <- ifelse(dhsz$country %in% ki_countries_monthly, 1, 0)
table(dhsz$inghap, dhsz$country)

#filter
dhsz <- dhsz %>% filter(inghap==1)

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

# Note that I am no longer getting the overall DHS pooled estimate by meta-analysis of the regional estimates
# dhs_pooled <- do_metaanalysis(df_survey, pool_over = "region")
# dhs_pooled$region <- "Overall"

df_survey <- df_survey %>%
  rename(fit = zscore, fit_lb = ci_l, fit_ub = ci_u, fit_se = se) %>%
  select(measure, region, agem, fit, fit_se, fit_lb, fit_ub)
df_survey_output <- df_survey %>%
  mutate(region = factor(region, levels = c("Overall", "Africa", "South Asia", "Latin America")))
saveRDS(df_survey_output, file = paste0(dhs_res_dir, "DHS-wasting-by-region.rds"))

#---------------------------------------
# repeat the analysis for country specific results
#---------------------------------------

svymean_each_country <- foreach(measure_here = levels(dhsz$measure), .combine = rbind) %:%
  foreach(country_here = unique(dhsz$country), .combine = rbind, .errorhandling = "remove") %dopar% {
    options(survey.lonely.psu = "adjust")
    df <- dhsz %>% filter(measure == measure_here & country == country_here)
    result_svymean <- compute_ci_with_sampling_weights(df)
    result_svymean$measure <- measure_here
    result_svymean$country <- country_here
    result_svymean
  }
table(svymean_each_country$country, svymean_each_country$measure)



# make sure there is no zero variance
svymean_each_country$se[svymean_each_country$se <= 1e-1] <- 1e-1
dhs_pooled <- do_metaanalysis(svymean_each_country, pool_over = "country")
dhs_pooled$country <- "OVERALL"

svymean_each_country <- svymean_each_country %>%
  rename(fit = zscore, fit_lb = ci_l, fit_ub = ci_u, fit_se = se) %>%
  select(measure, country, agem, fit, fit_se, fit_lb, fit_ub)
dhs_pooled <- dhs_pooled %>%
  rename(fit = est, fit_lb = lb, fit_ub = ub, fit_se = se) %>%
  select(measure, country, agem, fit, fit_se, fit_lb, fit_ub)
df_survey_output_country <- bind_rows(svymean_each_country, dhs_pooled) %>%
  mutate(country = factor(country))
saveRDS(df_survey_output_country, file = paste0(dhs_res_dir, "DHS-wasting-by-country.rds"))


