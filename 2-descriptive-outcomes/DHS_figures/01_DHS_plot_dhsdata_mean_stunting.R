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
saveRDS(df_survey_output, file = here::here("results/dhs", "DHS-stunting-by-region.rds"))

#---------------------------------------
# estimate spline fit to mean z-scores by age
#---------------------------------------
dhssubfits <- foreach(rgn = c("Africa", "South Asia", "Latin America"), .combine = rbind, .packages = "dplyr") %dopar% {
  di <-  dhsz %>% filter(region == rgn & inghap == 1)
  fiti <- mgcv::gam(zscore ~ s(agem, bs = "cr"), weights = wgt, data = di)
  newd <- data.frame(agem = 0:24)
  # estimate approximate simultaneous confidence intervals
  fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000)
  dfit <- data.frame(measure = "LAZ", region = rgn, agem = 0:24, fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS)
  dfit
}

# estimate a pooled fit, over all regions
fitsubpool <- mgcv::gam(zscore ~ s(agem, bs = "cr"), weights = wgt, data = filter(dhsz, inghap == 1))
newd <- data.frame(agem = 0:24)
fitsubpoolci <- gamCI(m = fitsubpool, newdata = newd, nreps = 1000)
dhssub_pool <- data.frame(measure = "LAZ", region = "OVERALL", agem = 0:24, fit = fitsubpoolci$fit, fit_se = fitsubpoolci$se.fit, fit_lb = fitsubpoolci$lwrS, fit_ub = fitsubpoolci$uprS)

dhssubfits <- bind_rows(dhssubfits, dhssub_pool) %>%
  mutate(region = factor(region, levels = c("Overall", "Africa", "South Asia", "Latin America")))


#---------------------------------------
# Grab GHAP KI cohort estimated mean Z-scores
# by age, and format the data for this analysis
#---------------------------------------
d <- readRDS(paste0(here(),"/results/desc_data_cleaned.rds"))
d$region <- as.character(d$region)
d$region[d$region=="Asia"] <- "South Asia"

ghapd <- d %>%
  filter(
    measure %in% c("Mean LAZ"),
    birth == "yes",
    age_range == "1 month",
    cohort == "pooled"#,
    #analysis == "Primary"
  ) %>%
  mutate(
    measure = str_sub(measure, 6, 9),
    measure = factor(measure, levels = c("LAZ", "WAZ", "WLZ"), labels = c("LAZ", "WAZ", "WHZ")),
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

ghapd$region <- factor(ghapd$region)


#---------------------------------------
# fit smooths to GHAP data
#---------------------------------------
ghapfits <- foreach(rgn = levels(ghapd$region), .combine = rbind, .packages = "dplyr") %do% {
  di <- ghapd %>% filter(region == rgn)
  fiti <- mgcv::gam(est ~ s(agem, bs = "cr"), data = di)
  newd <- data.frame(agem = 0:24)
  fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000)
  dfit <- data.frame(
    measure = "LAZ", region = rgn, agem = 0:24,
    fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS
  )
  dfit
}

#---------------------------------------
# Append the fits into a single data frame
# for plotting
#---------------------------------------
ghapfits <- ghapfits %>% mutate(dsource = "ki cohorts")
dhssubfits <- dhssubfits %>% mutate(dsource = "DHS, ki countries")
# dhsallfits <- dhsallfits %>% mutate(dsource="DHS") # std_err based on bootstrapping GAM
dhsallfits <- df_survey_output %>% mutate(dsource = "DHS") # std_err based on survey_avg using sampling weight

ghapfits <- ghapfits %>% mutate(measure = as.character(measure))
dhssubfits <- dhssubfits %>% mutate(measure = as.character(measure))

dhsfits <- bind_rows(ghapfits, dhssubfits, dhsallfits) %>%
  mutate(dsource = factor(dsource, levels = c("ki cohorts", "DHS, ki countries", "DHS")))

dhsfits = dhsfits %>%
  filter(dsource %in% c("ki cohorts", "DHS, ki countries"))

dhsfits$region <- replace(dhsfits$region,is.na(dhsfits$region),"Overall")

dhsfits <- filter(dhsfits, measure == "LAZ")

dhsfits = dhsfits %>% mutate(region = factor(region, levels = c("Overall", "Africa", "Latin America", "South Asia")))

saveRDS(dhsfits, file = here::here("results/dhs", "stunting-DHSandKI-by-region.rds"))



#---------------------------------------
# Filter for LAZ measures with data source of ki cohorts or DHS
#---------------------------------------


dhs_plotd <- dhsfits %>%
  filter(dsource %in% c("ki cohorts", "DHS, ki countries"))

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
