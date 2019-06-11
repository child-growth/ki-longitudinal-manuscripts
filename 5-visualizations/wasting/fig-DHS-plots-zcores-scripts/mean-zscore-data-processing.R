##########################################
# ki longitudinal manuscripts

# This script reads in clean DHS z-score data and estimates mean z-score by age. 
# Data is prepared and saved to produce a figure that compares DHS estimates to those from
# the KI cohorts in [fig-DHS-plots-zscores-createfigures.R]

# This script includes KI cohorts with measurement frequency at least monthly

# Inputs:
#   0-config.R : configuration file
#   wasting-DHSandKI-by-region.rds: DHS mean z-scores by age

# Outputs:
#   figdata-fig_dhs_ki_zscores_byage.RDS
##########################################

#---------------------------------------
# source configuration file
#---------------------------------------
source(paste0(here::here(), "/0-config.R"))

# set up for parallel computing
# configure for a laptop (use only 3 cores)
registerDoParallel(cores = 3)

# compute or load the DHS results
dhsfits <- readRDS(here::here("results", "wasting-DHSandKI-by-region.rds"))
dhsfits <- dhsfits %>%
  mutate(region = case_when(
    region == "SEARO" ~ "South Asia",
    region == "PAHO" ~ "Latin America",
    region == "AFRO" ~ "Africa",
    region == "OVERALL" ~ "Overall")
  ) %>% mutate(region = factor(region,
                               levels = c("Overall", "Africa", "South Asia", "Latin America"),
                               labels = c("Overall", "Africa", "South Asia", "Latin America")
  ))
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

saveRDS(dhs_plotd, file = paste0(figdata_dir, "figdata-fig_dhs_ki_zscores_byage.RDS"))