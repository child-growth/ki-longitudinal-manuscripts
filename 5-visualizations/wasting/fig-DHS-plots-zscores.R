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
registerDoParallel(cores = 4)
source("../shared/helper_sampling_weights.R")

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
# make a WHO region variable
# flag countries that overlap with the
# ki cohorts
#
# Note: Philippines (Western Pacific)
# and Pakistan (Middle East) are classified
# into SEARO
#---------------------------------------
dhsz$region <- rep(NA, nrow(dhsz))
dhsz <- dhsz %>%
  mutate(region = case_when(
    country == "BD6" | country == "IA6" | country == "ID6" | country == "LK" | country == "MM7" | country == "MV7" | country == "NP7" | country == "PH7" | country == "PK7" | country == "TH" | country == "TL7" | country == "AF7" | country == "KH6" | country == "VNT" ~ "SEARO",
    country == "BO5" | country == "BR3" | country == "CO7" | country == "DR6" | country == "EC" | country == "ES" | country == "GU6" | country == "GY5" | country == "HN6" | country == "HT7" | country == "MX" | country == "NC4" | country == "PE6" | country == "PY2" | country == "TT" ~ "PAHO",
    is.na(region) ~ "AFRO"
  )) %>%
  mutate(inghap = ifelse(
    country == "BD6" | country == "BF6" | country == "BR3" | country == "GM6" | country == "GU6" | country == "IA6" | country == "KE6" | country == "MW7" | country == "NP7" | country == "PE6" | country == "PH7" | country == "PK7" | country == "TZ7" | country == "ZA7" | country == "ZW7", 1, 0
  ))

dhsz <- dhsz %>%
  mutate(region = factor(region, levels = c("OVERALL", "SEARO", "AFRO", "PAHO")))
# compute or load the DHS results
# source("fig-DHS-plots-zscores-compute.R")
dhsfits <- readRDS(here::here("results", "wasting-DHSandKI-by-region.rds"))
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
  filter(dsource %in% c("ki cohorts", "DHS"))

# standard region colors used in other plots
tableau10 <- tableau_color_pal("Tableau 10")
pcols <- c("black", tableau10(10)[c(1, 5, 2)])

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
  labs(x = "child age, months", y = "anthropometric z-score") +
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
ggsave(here("figures/wasting", "fig_dhs_ki_zscores_byage.png"), plot = dhsp, device = "png", width = 6, height = 6)

#---------------------------------------
#---------------------------------------
# estimate z-score densities
#---------------------------------------
#---------------------------------------

#---------------------------------------
# estimate DHS z-score densities
# by region and overall
#---------------------------------------
dhsallden <- foreach(zmeas = levels(dhsz$measure), .combine = rbind) %:%
  foreach(rgn = c("AFRO", "SEARO", "PAHO"), .combine = rbind) %dopar% {
    di <- dhsz %>% filter(measure == zmeas & region == rgn)
    deni <- density(di$zscore)
    denid <- data.frame(x = deni$x, y = deni$y, measure = zmeas, region = rgn)
    denid
  }
dhsallden_pool <- foreach(zmeas = levels(dhsz$measure), .combine = rbind) %dopar% {
  di <- dhsz %>% filter(measure == zmeas)
  deni <- density(di$zscore)
  denid <- data.frame(x = deni$x, y = deni$y, measure = zmeas, region = "OVERALL")
  denid
}
dhsallden <- bind_rows(dhsallden, dhsallden_pool) %>%
  mutate(region = factor(region, levels = c("OVERALL", "AFRO", "SEARO", "PAHO")))

#---------------------------------------
# estimate DHS z-score densities
# by region and overall
# subset to countries that overlap KI cohorts
#---------------------------------------
dhssubden <- foreach(zmeas = levels(dhsz$measure), .combine = rbind) %:%
  foreach(rgn = c("AFRO", "SEARO", "PAHO"), .combine = rbind) %dopar% {
    di <- dhsz %>% filter(measure == zmeas & region == rgn & inghap == 1)
    deni <- density(di$zscore)
    denid <- data.frame(x = deni$x, y = deni$y, measure = zmeas, region = rgn)
    denid
  }
dhssubden_pool <- foreach(zmeas = levels(dhsz$measure), .combine = rbind) %dopar% {
  di <- dhsz %>% filter(measure == zmeas & inghap == 1)
  deni <- density(di$zscore)
  denid <- data.frame(x = deni$x, y = deni$y, measure = zmeas, region = "OVERALL")
  denid
}
dhssubden <- bind_rows(dhssubden, dhssubden_pool) %>%
  mutate(region = factor(region, levels = c("OVERALL", "AFRO", "SEARO", "PAHO")))


#---------------------------------------
# read in saved GHAP density estimates
# for z-scores, stratified by
# region
#---------------------------------------
kiden <- readRDS(paste0(here(), "/results/ki.density.fits.monthly.rds"))
kiden <- kiden %>%
  mutate(
    region = factor(region, levels = c("Overall", "AFRO", "SEARO", "PAHO"), labels = c("OVERALL", "AFRO", "SEARO", "PAHO")),
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
    region = factor(region, levels = c("OVERALL", "AFRO", "SEARO", "PAHO"))
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
  filter(dsource %in% c("ki cohorts", "DHS"))

# standard region colors used in other plots
tableau10 <- tableau_color_pal("Tableau 10")
pcols <- c("black", tableau10(10)[c(1, 5, 2)])


dplot <- ggplot(data = dhsden_plot, aes(x = x, y = y, color = region, linetype = dsource)) +
  facet_grid(measure ~ region) +
  geom_line() +
  scale_color_manual(values = pcols, guide = FALSE) +
  scale_fill_manual(values = pcols, guide = FALSE) +
  scale_linetype_manual(values = c("solid", "dashed", "dotdash")) +
  scale_x_continuous(breaks = seq(-6, 6, by = 2)) +
  coord_cartesian(xlim = c(-6, 6), ylim = c(0, 0.4)) +
  labs(y = "density", x = "z-score") +
  theme_minimal() +
  theme(
    legend.position = "bottom",
    panel.grid.minor.y = element_blank(),
    strip.text.y = element_text(angle = 0)
  )

dplot

# output a file to png
ggsave(here("figures/wasting", "fig_dhs_ki_zscores_density.png"), plot = dplot, device = "png", width = 6, height = 5)
