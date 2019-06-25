##########################################
# ki longitudinal manuscripts

# This script reads in clean DHS z-score data and estimates kernel density of z-scores. 
# Data is prepared and saved to produce a figure that compares DHS estimates to those from
# the KI cohorts in [fig-DHS-plots-zscores-createfigures.R]

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
source(paste0(here::here(), "/0-project-functions/0_helper_sampling_weights.R"))

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


#---------------------------------------
# read in saved GHAP density estimates
# for z-scores, stratified by
# region
#---------------------------------------
kiden <- readRDS(paste0(here(), "/results/dhs/ki.density.fits.monthly.rds"))
kiden <- kiden %>%
  mutate(region = case_when(
    region == "SEARO" ~ "South Asia",
    region == "PAHO" ~ "Latin America",
    region == "AFRO" ~ "Africa",
    region == "Overall" ~ "Overall")
  ) %>%
  mutate(
    region = factor(region,
                    levels = c("Overall", "Africa", "South Asia", "Latin America"),
                    labels = c("Overall", "Africa", "South Asia", "Latin America")
    ),
    measure = factor(measure, levels = c("haz", "waz", "whz"), labels = c("LAZ", "WAZ", "WHZ"))
  ) 

#---------------------------------------
# Append the fits into a single data frame
# for plotting
#---------------------------------------
kiden <- kiden %>% mutate(dsource = "ki cohorts")
dhssubden <- dhssubden %>% mutate(dsource = "DHS, ki countries")
dhsallden <- dhsallden %>% mutate(dsource = "DHS")
dhsden <- bind_rows(kiden, dhssubden, dhsallden) %>%
  mutate(
    dsource = factor(dsource, levels = c("ki cohorts", "DHS, ki countries", "DHS")),
    region = factor(region, levels = c("Overall", "Africa", "South Asia", "Latin America"))
  )

#---------------------------------------
# plot kernel densities by region and z-score
#
# after preliminary inspection, the
# DHS and DHS subset estimates are so
# similar in nearly every case that it
# doesn't add much to the plot.
# Simplify to only include GHAP and
# DHS overall estimates
#---------------------------------------
dhsden_plot <- dhsden %>%
  filter(dsource %in% c("ki cohorts", "DHS, ki countries"))

#####################
# Add medians
#####################
ki_medians = readRDS(paste0(here(),"/results/dhs/ki.zscore.medians.monthly.rds"))
ki_medians$dsource = "ki cohorts"

ki_medians$region = recode_factor(ki_medians$region, 
                                  OVERALL = "Overall", 
                                  AFRO = "Africa", 
                                  PAHO = "Latin America", 
                                  SEARO = "South Asia")

ki_medians =  ki_medians %>% mutate(
  measure = factor(measure, levels = c("haz", "waz", "whz"), labels = c("LAZ", "WAZ", "WHZ"))
)

dhs_quantiles <- readRDS(paste0(here::here(),"/results/dhs/dhs.quantiles.rds"))
dhs_medians = dhs_quantiles %>% filter(quantile == 50)
dhs_medians$region = recode_factor(dhs_medians$region, 
                                   OVERALL = "Overall", 
                                   AFRO = "Africa", 
                                   PAHO = "Latin America", 
                                   SEARO = "South Asia")

dhs_medians =  dhs_medians %>% mutate(
  measure = factor(measure, levels = c("haz", "waz", "whz"), labels = c("LAZ", "WAZ", "WHZ"))
)

names(dhs_medians)[2] = "median"
dhs_medians = select(dhs_medians, c("region", "measure", "median"))
dhs_medians$dsource = "DHS, ki countries"

medians = rbind(ki_medians, dhs_medians)

dhsden_plot = merge(x = dhsden_plot, y = medians, by = c("region", "dsource", "measure"),  all.x = TRUE)
dhsden_plot = dhsden_plot %>% mutate(region = factor(region, levels = c("Overall", "Africa", "Latin America", "South Asia")))

saveRDS(dhsden_plot, file = paste0(figdata_dir, "figdata-fig_dhs_ki_zscores_density.RDS"))
