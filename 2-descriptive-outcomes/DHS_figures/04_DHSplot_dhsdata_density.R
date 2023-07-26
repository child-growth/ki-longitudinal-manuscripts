##########################################
# ki longitudinal manuscripts
# DHS analysis - DHS densities

# This script reads in clean DHS z-score data and estimates kernel density of z-scores. 
# Data is prepared and saved to produce a figure that compares DHS estimates to those from
# the KI cohorts in fig-DHS-plots-laz.R and fig-DHS-plots-whz.R.

# Inputs:
#   0-config.R : configuration file
#   clean-DHS-haz.rds : clean DHS LAZ data
#   clean-DHS-waz.rds : clean DHS WAZ data
#   clean-DHS-whz.rds : clean DHS WHZ data

# Outputs:
#   dhs.density.all-countries.rds
#   dhs.density.ki-countries.rds

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
dhaz <- readRDS(file = paste0(dhs_res_dir,"clean-DHS-haz.rds"))
dwaz <- readRDS(file = paste0(dhs_res_dir,"clean-DHS-waz.rds"))
dwhz <- readRDS(file = paste0(dhs_res_dir,"clean-DHS-whz.rds"))


#---------------------------------------
# combine all of the DHS data
# into a single dataframe
#---------------------------------------
dhsz <- bind_rows(dhaz, dwaz, dwhz) %>%
  mutate(
    measure = factor(measure, levels = c("HAZ", "WAZ", "WHZ"), labels = c("LAZ", "WAZ", "WHZ"))
  ) %>% filter(!is.na(zscore))

dhsz$country[dhsz$dataset=="BOPR51F"] <- "Bolivia"

table(dhsz$inghap, dhsz$country)
dhsz$inghap <- ifelse(dhsz$country %in% ki_countries, 1, 0)
table(dhsz$inghap, dhsz$country)
table(dhsz$inghap, dhsz$measure)

#---------------------------------------
# compute weights per instructions from
# DHS
#---------------------------------------
dhsz <- dhsz %>%
  mutate(wgt = weight / 1000000)


#---------------------------------------
# estimate DHS z-score densities
# by country, region, and overall
#---------------------------------------
dhsallden_country <- foreach(zmeas = levels(dhsz$measure), .combine = rbind, .packages = "dplyr") %:%
  foreach(rgn = unique(dhsz$country), .combine = rbind) %dopar% {
    di <- dhsz %>% filter(measure == zmeas & country == rgn)
    deni<- data.frame(x=NA, y=NA)
    try(deni <- density(di$zscore))
    denid <- data.frame(x = deni$x, y = deni$y, measure = zmeas, country = rgn)
    denid
  }
table(dhsallden_country$country)

dhsallden_region <- foreach(zmeas = levels(dhsz$measure), .combine = rbind, .packages = "dplyr") %:%
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
dhsallden <- bind_rows(dhsallden_pool, dhsallden_region, dhsallden_country) %>%
  mutate(region = factor(region, levels = c("Overall", "Africa", "South Asia", "Latin America")))

#---------------------------------------
# estimate DHS z-score densities
# by region and overall
# subset to countries that overlap KI cohorts
#---------------------------------------
dhssubden_country <- foreach(zmeas = levels(dhsz$measure), .combine = rbind) %:%
  foreach(rgn = unique(dhsz$country), .combine = rbind) %dopar% {
    di <- dhsz %>% filter(measure == zmeas & country == rgn & inghap == 1)
    deni<- data.frame(x=NA, y=NA)
    try(deni <- density(di$zscore))
    denid <- data.frame(x = deni$x, y = deni$y, measure = zmeas, country = rgn)
    denid
  }
unique(dhssubden_country$country)
dhssubden_region <- foreach(zmeas = levels(dhsz$measure), .combine = rbind) %:%
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
dhssubden <- bind_rows(dhssubden_pool, dhssubden_region, dhssubden_country) %>%
  mutate(region = factor(region, levels = c("Overall", "Africa", "South Asia", "Latin America")))

dhssubden <- dhssubden %>% filter(!is.na(x))
table(dhssubden$country)

#Save densities

saveRDS(dhsallden, file = paste0(dhs_res_dir,"dhs.density.all-countries.rds"))
saveRDS(dhssubden, file = paste0(dhs_res_dir,"dhs.density.ki-countries.rds"))

#Get N's for KI countries
dhaz_N <- dhaz %>% filter(country %in% unique(dhssubden$country))
table(dhaz_N$country)
dim(dhaz_N)
