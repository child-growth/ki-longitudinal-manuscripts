#---------------------------------------
# Ki DHS Analysis
# Spring 2019
#
# This script reads in clean DHS z-score
# data, estimates means by age in months
# and estimates kernel densities
# the script creates two figures that
# compare DHS estimates to those from
# the KI cohorts.
#
# This script includes estimates from
# KI cohorts with measurement frequency
# at least monthly
#---------------------------------------

#---------------------------------------
# input files:
#   0-config.R : configuration file
#
#   clean-DHS-haz.rds  : clean DHS LAZ data
#
#   desc_data_cleaned.Rdata     : KI mean Z-scores by age
#   ki.density.fits.monthly.rds : KI kernel densities of Z-scores for monthly cohorts
#
# output files:
#   fig_dhs_ki_zscores_byage.png
#   fig_dhs_ki_zscores_density.png
#---------------------------------------

#---------------------------------------
# source configuration file
#---------------------------------------
source(paste0(here::here(), "/0-config.R"))

# set up for parallel computing
# configure for a laptop (use only 3 cores)
registerDoParallel(cores = 3)
source("5-visualizations/shared/helper_sampling_weights.R")

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

# compute or load the DHS results
# source("fig-DHS-plots-zscores-compute.R")
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

# standard region colors used in other plots
tableau10 <- tableau_color_pal("tableau10")
pcols <- c("black", tableau10(10)[c(1, 2, 3)])

dhsp <- ggplot(data = dhs_plotd, aes(x = agem, y = fit, color = region, fill = region, linetype = dsource)) +
  facet_grid(measure ~ region) +
  geom_abline(intercept = 0, slope = 0, color = "gray70") +

  geom_ribbon(aes(ymin = fit_lb, ymax = fit_ub), color = NA, alpha = 0.2) +
  geom_line(alpha = 1) +
  scale_x_continuous(breaks = seq(0, 24, by = 6)) +
  scale_y_continuous(breaks = seq(-2, 1, by = 1)) +
  scale_color_manual(values = pcols, guide = FALSE) +
  scale_fill_manual(values = pcols, guide = FALSE) +
  scale_linetype_manual(values = c("solid", "dashed", "dotdash")) +
  labs(x = "Child age, months", y = "Anthropometric z-score") +
  coord_cartesian(ylim = c(-2, 1)) +
  theme_minimal() +
  theme(
    legend.position = "bottom",
    strip.placement = "outside",
    strip.background = element_rect(fill = NA, color = NA),
    panel.spacing = unit(0.5, "lines"),
    panel.grid.minor.x = element_blank(),
    strip.text.y = element_text(angle = 0)
  )

dhsp

# output a file to png
ggsave(dhsp, file = paste0(fig_dir, "wasting/fig_dhs_ki_zscores_byage.png"), width = 6, height = 6)

#---------------------------------------
#---------------------------------------
# estimate z-score densities
#---------------------------------------
#---------------------------------------

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
kiden <- readRDS(paste0(here(), "/results/ki.density.fits.monthly.rds"))
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
ki_medians = readRDS(paste0("results/ki.zscore.medians.monthly.rds"))
ki_medians$dsource = "ki cohorts"

ki_medians$region = recode_factor(ki_medians$region, 
                                  OVERALL = "Overall", 
                                  AFRO = "Africa", 
                                  PAHO = "Latin America", 
                                  SEARO = "South Asia")

ki_medians =  ki_medians %>% mutate(
  measure = factor(measure, levels = c("haz", "waz", "whz"), labels = c("LAZ", "WAZ", "WHZ"))
)

dhs_quantiles <- readRDS(paste0(here::here(),"/results/dhs.quantiles.rds"))
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

# standard region colors used in other plots
tableau10 <- tableau_color_pal("tableau10")
pcols <- c("black", tableau10(10)[c(1, 2, 3)])


dplot <- ggplot(data = dhsden_plot, aes(x = x, y = y, color = region, linetype = dsource)) +
  facet_grid(measure ~ region) +
  geom_line() +
  geom_point(aes(x = as.double(median), y = 0, shape = dsource)) +
  scale_color_manual(values = pcols, guide = FALSE) +
  scale_fill_manual(values = pcols, guide = FALSE) +
  scale_linetype_manual(values = c("solid", "dashed", "dotdash")) +
  scale_shape_manual(values=c(19, 1))+
  scale_x_continuous(breaks = seq(-6, 6, by = 2)) +
  coord_cartesian(xlim = c(-6, 6), ylim = c(0, 0.4)) +
  labs(y = "Density", x = "Z-score") +
  theme_minimal() +
  theme(
    legend.position = "bottom",
    panel.grid.minor.y = element_blank(),
    strip.text.y = element_text(angle = 0)
  )

dplot

# output a file to png
ggsave(dhsp, file = paste0(fig_dir, "wasting/fig_dhs_ki_zscores_density.png"), width = 6, height = 5)

