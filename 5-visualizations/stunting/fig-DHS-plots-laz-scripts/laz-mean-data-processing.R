##########################################
# ki longitudinal manuscripts
# stunting analysis

# This script reads in clean DHS z-score data and estimates means by age in months 
# Data is prepared and saved to produce a figure that compares DHS estimates to those from
# the KI cohorts in [fig-DHS-plots-laz-createfigures.R]

# This script is limited to LAZ for the linear growth paper. It includes
# KI cohorts with measurement frequency at least quarterly

# Inputs:
#   0-config.R : configuration file
#   clean-DHS-haz.rds : clean DHS LAZ data
#   desc_data_cleaned.Rdata : KI mean Z-scores by age

# Outputs:
#   figdata-laz-2-mean_dhs-overall_region--allage-primary.RDS

##########################################

#---------------------------------------
# source configuration file
#---------------------------------------

source(paste0(here::here(), "/0-config.R"))
source("5-visualizations/shared/helper_sampling_weights.R")

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
# compute or load the DHS results
# source("fig-DHS-plots-laz-compute.R")
df_survey_output <- readRDS(here::here("results", "DHS-stunting-by-region.rds"))

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

saveRDS(dhs_plotd_laz, file = paste0(figdata_dir, "figdata-", laz_ageplot_name, ".RDS"))
