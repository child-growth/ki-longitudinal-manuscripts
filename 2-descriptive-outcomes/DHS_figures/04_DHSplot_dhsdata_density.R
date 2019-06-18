##########################################
# ki longitudinal manuscripts

# This script reads in clean DHS z-score data and estimates kernel density of z-scores. 
# Data is prepared and saved to produce a figure that compares DHS estimates to those from
# the KI cohorts in the following scripts:
#   - fig-DHS-plots-laz.R
#   - fig-DHS-plots-scores.R

# This script includes KI cohorts with measurement frequency at least monthly

# Inputs:
#   0-config.R : configuration file
#   clean-DHS-haz.rds : clean DHS LAZ data
#   clean-DHS-waz.rds : clean DHS WAZ data
#   clean-DHS-whz.rds : clean DHS WHZ data
#   ki.density.fits.monthly.rds : KI kernel densities of Z-scores for monthly cohorts
#   ki.zscore.medians.monthly.rds : median values for monthly KI cohorts
#   dhs.quantiles.rds : median values for DHS data

# Outputs:
#   figdata-fig_dhs_ki_zscores_density.RDS
##########################################

#---------------------------------------
# source configuration file
#---------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# set up for parallel computing
# configure for a laptop (use only 3 cores)
registerDoParallel(cores = 3)

#---------------------------------------
# load cleaned DHS anthro data
# created by 7_DHS-data-cleaning.R
#---------------------------------------
dhaz <- readRDS(file = (here::here("data", "clean-DHS-haz.rds")))
dwaz <- readRDS(file = (here::here("data", "clean-DHS-waz.rds")))
dwhz <- readRDS(file = (here::here("data", "clean-DHS-whz.rds")))

#---------------------------------------
# combine all of the DHS data
# into a single dataframe
#---------------------------------------
dhsz <- bind_rows(dhaz, dwaz, dwhz) %>%
  mutate(
    measure = factor(measure, levels = c("HAZ", "WAZ", "WHZ"), labels = c("LAZ", "WAZ", "WHZ"))
  )

#---------------------------------------
# compute weights per instructions from
# DHS
#---------------------------------------
dhsz <- dhsz %>%
  mutate(wgt = weight / 1000000)


#---------------------------------------
# estimate DHS z-score densities
# by region and overall
#---------------------------------------
dhsallden <- foreach(zmeas = levels(dhsz$measure), .combine = rbind, .packages = "dplyr") %:%
  foreach(rgn = c("Africa", "South Asia", "Latin America"), .combine = rbind) %dopar% {
    di <- dhsz %>% filter(measure == zmeas & region == rgn)
    deni <- density(di$zscore)
    denid <- data.frame(x = deni$x, y = deni$y, measure = zmeas, region = rgn)
    denid
  }
dhsallden_pool <- foreach(zmeas = levels(dhsz$measure), .combine = rbind, .packages = "dplyr") %dopar% {
  di <- dhsz %>% filter(measure == zmeas)
  deni <- density(di$zscore)
  denid <- data.frame(x = deni$x, y = deni$y, measure = zmeas, region = "Overall")
  denid
}
dhsallden <- bind_rows(dhsallden, dhsallden_pool) %>%
  mutate(region = factor(region, levels = c("Overall", "Africa", "South Asia", "Latin America")))

#---------------------------------------
# estimate DHS z-score densities
# by region and overall
# subset to countries that overlap KI cohorts
#---------------------------------------
dhssubden <- foreach(zmeas = levels(dhsz$measure), .combine = rbind) %:%
  foreach(rgn = c("Africa", "South Asia", "Latin America"), .combine = rbind) %dopar% {
    di <- dhsz %>% filter(measure == zmeas & region == rgn & inghap == 1)
    deni <- density(di$zscore)
    denid <- data.frame(x = deni$x, y = deni$y, measure = zmeas, region = rgn)
    denid
  }
dhssubden_pool <- foreach(zmeas = levels(dhsz$measure), .combine = rbind) %dopar% {
  di <- dhsz %>% filter(measure == zmeas & inghap == 1)
  deni <- density(di$zscore)
  denid <- data.frame(x = deni$x, y = deni$y, measure = zmeas, region = "Overall")
  denid
}
dhssubden <- bind_rows(dhssubden, dhssubden_pool) %>%
  mutate(region = factor(region, levels = c("Overall", "Africa", "South Asia", "Latin America")))

#Save densities
saveRDS(dhsallden, file = paste0(here(),"/results/dhs/dhs.density.all-countries.rds"))
saveRDS(dhssubden, file = paste0(here(),"/results/dhs/dhs.density.ki-countries.rds"))
