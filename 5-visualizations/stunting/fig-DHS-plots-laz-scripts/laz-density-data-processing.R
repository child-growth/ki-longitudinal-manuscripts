##########################################
# ki longitudinal manuscripts
# stunting analysis

# This script reads in clean DHS z-score data and estimates kernel densities. 
# Data is prepared and saved to produce a figure that compares DHS estimates to those from
# the KI cohorts in [fig-DHS-plots-laz-createfigures.R]

# This script is limited to LAZ for the linear growth paper. It includes
# KI cohorts with measurement frequency at least quarterly

# Inputs:
#   0-config.R : configuration file
#   clean-DHS-haz.rds  : clean DHS LAZ data
#   ki.density.fits.quarterly.rds : KI kernel densities of Z-scores for quarterly cohorts

# Outputs:
#   figdata-laz-2-density_dhs-overall_region--allage-primary.RDS

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
#---------------------------------------
# estimate z-score densities
# for subpanels in the figure
#---------------------------------------
#---------------------------------------

#---------------------------------------
# estimate DHS z-score densities
# by region and overall
#---------------------------------------
dhsallden <- foreach(rgn = c("Africa", "South Asia", "Latin America"), .combine = rbind, .packages = "dplyr") %dopar% {
  di <- dhsz %>% filter(region == rgn)
  deni <- density(di$zscore)
  denid <- data.frame(x = deni$x, y = deni$y, measure = "LAZ", region = rgn)
  denid
}

# overall pooled estimate
deni <- density(dhsz$zscore)
dhsallden_pool <- data.frame(x = deni$x, y = deni$y, measure = "LAZ", region = "Overall")

dhsallden <- bind_rows(dhsallden, dhsallden_pool) %>%
  mutate(region = factor(region, levels = c("Overall", "Africa", "South Asia", "Latin America")))

#---------------------------------------
# estimate DHS z-score densities
# by region and overall
# subset to countries that overlap KI cohorts
#---------------------------------------
dhssubden <- foreach(rgn = c("Africa", "South Asia", "Latin America"), .combine = rbind) %dopar% {
  di <- dhsz %>% filter(region == rgn & inghap == 1)
  deni <- density(di$zscore)
  denid <- data.frame(x = deni$x, y = deni$y, measure = "LAZ", region = rgn)
  denid
}
# overall pooled estimate
subdeni <- density(dhsz$zscore[dhsz$inghap == 1])
dhssubden_pool <- data.frame(x = subdeni$x, y = subdeni$y, measure = "LAZ", region = "Overall")

dhssubden <- bind_rows(dhssubden, dhssubden_pool) %>%
  mutate(region = factor(region, levels = c("Overall", "Africa", "South Asia", "Latin America")))


#---------------------------------------
# read in saved GHAP density estimates
# for z-scores, stratified by
# region
#---------------------------------------
#kiden_old <- readRDS(paste0(here(), "/results/ki.density.fits.quarterly.rds"))
kiden <- readRDS("~/Dropbox/HBGD/temp (1)/ki.density.fits.quarterly.rds")

kiden <- kiden %>%
  mutate(region = case_when(
    region == "SEARO" ~ "South Asia",
    region == "PAHO" ~ "Latin America",
    region == "AFRO" ~ "Africa",
    region == "Overall" ~ "Overall")
  )

kiden <- kiden %>%
  mutate(
    region = factor(region,
                    levels = c("Overall", "Africa", "South Asia", "Latin America"),
                    labels = c("Overall", "Africa", "South Asia", "Latin America")
    ),
    measure = factor(measure, levels = c("haz", "waz", "whz"), labels = c("LAZ", "WAZ", "WHZ"))
  ) %>%
  filter(measure == "LAZ")

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
# plot density subpanels
# create a separate figure for each
# z-score to ensure there are x-axis
# labels on each
#
# after preliminary inspection, the
# DHS and DHS subset estimates are so
# similar in nearly every case that it
# doesn't add much to the plot.
# Simplify to only include GHAP and
# DHS overall estimates
#---------------------------------------
dhsden_plot <- dhsden %>%
  filter(dsource %in% c("ki cohorts", "DHS"))

dhsden_plot_laz <- filter(dhsden_plot, measure == "LAZ")

#---------------------------------------
# Add median points to KI and DHS data
#---------------------------------------
ki_medians = readRDS(paste0("results/ki.zscore.medians.monthly.rds"))
ki_medians = ki_medians[ki_medians$measure == "haz", c(1, 3)]
ki_medians$dsource = "ki cohorts"

ki_medians$region = recode_factor(ki_medians$region, 
                                  OVERALL = "Overall", 
                                  AFRO = "Africa", 
                                  PAHO = "Latin America", 
                                  SEARO = "South Asia")

dhs_quantiles <- readRDS(paste0(here::here(),"/results/dhs.quantiles.rds"))
dhs_medians = dhs_quantiles %>% filter(quantile == 50) %>% filter(measure == "haz")
dhs_medians$region = recode_factor(dhs_medians$region, 
                                   OVERALL = "Overall", 
                                   AFRO = "Africa", 
                                   PAHO = "Latin America", 
                                   SEARO = "South Asia")
names(dhs_medians)[2] = "median"
dhs_medians = select(dhs_medians, c("region", "median"))
dhs_medians$dsource = "DHS"
medians = rbind(ki_medians, dhs_medians)

#---------------------------------------
# Merge median data with cleaned density data
#---------------------------------------
dhsden_plot_laz = merge(x = dhsden_plot_laz, y = medians, by = c("region", "dsource"),  all.x = TRUE)
dhsden_plot_laz = dhsden_plot_laz %>% mutate(region = factor(region, levels = c("Overall", "Africa", "Latin America", "South Asia")))

#---------------------------------------
# Save data for LAZ density plots
#---------------------------------------
laz_dplot_name <- create_name(
  outcome = "LAZ",
  cutoff = 2,
  measure = "density DHS",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

saveRDS(dhsden_plot_laz, file = paste0(figdata_dir, "figdata-", laz_dplot_name, ".RDS"))
