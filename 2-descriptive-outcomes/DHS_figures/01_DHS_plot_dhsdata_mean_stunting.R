
#---------------------------------------
# source configuration file
#---------------------------------------
source(paste0(here::here(), "/0-config.R"))
source("0-project-functions/0_wast_inc_functions.R")

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
    df <- dhsz %>% filter(measure == measure_here & region == region_here)
    result_svymean <- compute_ci_with_sampling_weights(df)
    result_svymean$megasure <- measure_here
    result_svymean$region <- region_here
    result_svymean
  }

df_survey$se[df_survey$se <= 1e-1] <- 1e-1
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
saveRDS(df_survey_output, file = here::here("results", "DHS-stunting-by-region.rds"))

#---------------------------------------
# estimate mean z-scores by age
# subset to countries that overlap the
# ki cohorts
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
load(paste0(here::here(), "/results/desc_data_cleaned.Rdata"))
ghapd <- d %>%
  filter(
    measure %in% c("Mean LAZ"),
    birth == "yes",
    age_range == "1 month",
    cohort == "pooled",
    analysis == "Primary"
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

saveRDS(dhsfits, file = here::here("results", "stunting-DHSandKI-by-region.rds"))
