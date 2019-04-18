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
df_survey <- foreach(measure_here = levels(dhsz$measure), .combine = rbind) %:%
  foreach(region_here = c("AFRO", "SEARO", "PAHO"), .combine = rbind) %dopar% {
    df <- dhsz %>% filter(measure == measure_here & region == region_here)
    result_svymean <- compute_ci_with_sampling_weights(df)
    result_svymean$measure <- measure_here
    result_svymean$region <- region_here
    result_svymean
  }

dhs_pooled <- do_metaanalysis(df_survey, pool_over = "region")
dhs_pooled$region <- "OVERALL"

df_survey <- df_survey %>%
  rename(fit = zscore, fit_lb = ci_l, fit_ub = ci_u, fit_se = se) %>%
  select(measure, region, agem, fit, fit_se, fit_lb, fit_ub)
dhs_pooled <- dhs_pooled %>%
  rename(fit = est, fit_lb = lb, fit_ub = ub, fit_se = se) %>%
  select(measure, region, agem, fit, fit_se, fit_lb, fit_ub)
df_survey_output <- bind_rows(df_survey, dhs_pooled) %>%
  mutate(region = factor(region, levels = c("OVERALL", "AFRO", "SEARO", "PAHO")))
save(df_survey_output, file = here::here("results", "DHS-wasting-by-region.rds"))

#---------------------------------------
# repeat the analysis for country specific results
#---------------------------------------

svymean_each_country <- foreach(measure_here = levels(dhsz$measure), .combine = rbind) %:%
  foreach(country_here = unique(dhsz$country), .combine = rbind, .errorhandling = "remove") %dopar% {
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
df_survey_output <- bind_rows(svymean_each_country, dhs_pooled) %>%
  mutate(country = factor(country))
save(df_survey_output, file = here::here("results", "DHS-wasting-by-country.rds"))

#---------------------------------------
# estimate mean z-scores by age
# subset to countries that overlap the
# ki cohorts
#---------------------------------------
dhssubfits <- foreach(zmeas = levels(dhsz$measure), .combine = rbind) %:%
  foreach(rgn = c("AFRO", "SEARO", "PAHO"), .combine = rbind) %dopar% {
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
  dfit <- data.frame(measure = zmeas, region = "OVERALL", agem = 0:24, fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS)
  dfit
}

dhssubfits <- bind_rows(dhssubfits, dhssub_pool) %>%
  mutate(region = factor(region, levels = c("OVERALL", "AFRO", "SEARO", "PAHO")))


#---------------------------------------
# Grab GHAP KI cohort estimated mean Z-scores
# by age, and format the data for this analysis
#---------------------------------------
load(paste0(here::here(), "/results/desc_data_cleaned.Rdata"))
# load(paste0(here::here(),"/results/co_desc_data.Rdata"))
ghapd <- d %>%
  filter(
    measure %in% c("Mean LAZ - monthly cohorts", "Mean WAZ", "Mean WLZ"),
    birth == "yes",
    age_range == "1 month",
    cohort == "pooled"
  ) %>%
  mutate(
    measure = str_sub(measure, 6, 8),
    measure = factor(measure, levels = c("LAZ", "WAZ", "WLZ"), labels = c("LAZ", "WAZ", "WHZ")),
    whoregion = case_when(
      region == "Africa" ~ "AFRO",
      region == "South Asia" ~ "SEARO",
      region == "Latin America" ~ "PAHO",
      region == "Overall" ~ "OVERALL"
    ),
    whoregion = factor(whoregion, levels = c("OVERALL", "AFRO", "SEARO", "PAHO")),
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
ghapfits <- foreach(zmeas = c("LAZ", "WAZ", "WHZ"), .combine = rbind) %:%
  foreach(rgn = levels(ghapd$whoregion), .combine = rbind) %do% {
    di <- ghapd %>% filter(measure == zmeas & whoregion == rgn)
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
    region = factor(region, levels = c("OVERALL", "AFRO", "SEARO", "PAHO"))
  )
save(dhsfits, file = here::here("results", "wasting-DHSandKI-by-region.rds"))
