##########################################
# ki longitudinal manuscripts
# stunting analysis

# This script reads in clean DHS z-score
# data, estimates means by age in months
# and estimates kernel densities
# the script creates two figures that
# compare DHS estimates to those from
# the KI cohorts.

# This script is limited to LAZ for the
# linear growth paper. It includes
# KI cohorts with measurement frequency
# at least quarterly

# Outputs:
# fig-laz-2-mean_dhs-overall_region--allage-primary.png
# fig-laz-2-density_dhs-overall_region--allage-primary.png
# figdata-laz-2-mean_dhs-overall_region--allage-primary.RDS
# figdata-laz-2-density_dhs-overall_region--allage-primary.RDS

##########################################

#---------------------------------------
# input files:
#   0-config.R : configuration file
#
#   clean-DHS-haz.rds  : clean DHS LAZ data
#
#   desc_data_cleaned.Rdata       : KI mean Z-scores by age
#   ki.density.fits.quarterly.rds : KI kernel densities of Z-scores for quarterly cohorts
#
# output files:
#   fig_dhs_ki_laz_byage.png
#   fig_dhs_ki_laz_density.png
#---------------------------------------

#---------------------------------------
# source configuration file
#---------------------------------------
source(paste0(here::here(), "/0-config.R"))

# set up for parallel computing
# configure for a laptop (use only 3 cores)
registerDoParallel(cores = 3)

#---------------------------------------
# load cleaned DHS anthro data
# created by 7_DHS-data-cleaning.R
#---------------------------------------
dhaz <- readRDS(file = (here::here("data", "clean-DHS-haz.rds")))
source("../shared/helper_sampling_weights.R")

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
dhssubfits <- foreach(rgn = c("Africa", "South Asia", "Latin America"), .combine = rbind) %dopar% {
  di <-  dfilter(dhszregion == rgn & inghap == 1)
  di = dhsz[dhsz$region == rgn & dhsz$inghap == 1, ]
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
    cohort == "pooled"
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
ghapfits <- foreach(rgn = levels(ghapd$region), .combine = rbind) %do% {
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
dhsfits <- bind_rows(ghapfits, dhssubfits, dhsallfits) %>%
  mutate(dsource = factor(dsource, levels = c("ki cohorts", "DHS, ki countries", "DHS")))

#---------------------------------------
# make LAZ  by age figure
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
pcols <- c("black", tableau10(10)[c(1, 2, 5)])

blue <- 1
orange <- 2
green <- 5

dhs_plotd_laz <- filter(dhs_plotd, measure == "LAZ")

dhs_plotd_laz = dhs_plotd_laz %>% mutate(region = factor(region, levels = c("Overall", "Africa", "Latin America", "South Asia")))

laz_ageplot <- ggplot(
  dhs_plotd_laz,
  aes(x = agem, y = fit, color = region, fill = region, linetype = dsource)
) +
  facet_grid(~region) +
  geom_abline(intercept = 0, slope = 0, color = "gray70") +
  geom_ribbon(aes(ymin = fit_lb, ymax = fit_ub), color = NA, alpha = 0.2) +
  geom_line(alpha = 1) +
  scale_x_continuous(breaks = seq(0, 24, by = 6)) +
  scale_y_continuous(breaks = seq(-2, 0, by = 0.5)) +
  scale_color_manual(values = pcols, guide = FALSE) +
  scale_fill_manual(values = pcols, guide = FALSE) +
  scale_linetype_manual(values = c("solid", "dashed", "dotdash")) +
  labs(x="Child age, months",y="Length-for-age z-score") +
  coord_cartesian(ylim = c(-2, 0)) +
  theme_minimal() +
  theme(
    legend.position = "bottom",
    strip.placement = "outside",
    strip.background = element_rect(fill = NA, color = NA),
    # strip.text.y = element_text(angle=180),
    panel.spacing = unit(0.5, "lines"),
    panel.grid.minor.x = element_blank()
  )

laz_ageplot

# define standardized plot names
laz_ageplot_name <- create_name(
  outcome = "LAZ",
  cutoff = 2,
  measure = "mean DHS",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(laz_ageplot, file = paste0(fig_dir, "stunting/fig-", laz_ageplot_name, ".png"), width = 8, height = 3)
saveRDS(dhs_plotd_laz, file = paste0(figdata_dir, "figdata-", laz_ageplot_name, ".RDS"))

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
dhsallden <- foreach(rgn = c("Africa", "South Asia", "Latin America"), .combine = rbind) %dopar% {
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
kiden <- readRDS(paste0(here(), "/results/ki.density.fits.quarterly.rds"))
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

#---------------------------------------
# standard region colors used in other plots
tableau10 <- tableau_color_pal("Tableau 10")
pcols <- c("black", tableau10(10)[c(1:3)])

#---------------------------------------
# LAZ density by region
#---------------------------------------
dhsden_plot_laz <- filter(dhsden_plot, measure == "LAZ")

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

dhsden_plot_laz = merge(x = dhsden_plot_laz, y = medians, by = c("region", "dsource"),  all.x = TRUE)
dhsden_plot_laz = dhsden_plot_laz %>% mutate(region = factor(region, levels = c("Overall", "Africa", "Latin America", "South Asia")))

laz_dplot <- ggplot(data = dhsden_plot_laz, aes(x = x, y = y, color = region, linetype = dsource)) +
  facet_grid(~region) +
  geom_line() +
  geom_point(aes(x = as.double(median), y = 0, shape = dsource)) +
  scale_color_manual(values = pcols, guide = FALSE) +
  scale_fill_manual(values = pcols, guide = FALSE) +
  scale_linetype_manual(values = c("solid", "dashed", "dotdash")) +
  scale_shape_manual(values=c(19, 1))+
  scale_x_continuous(breaks = seq(-6, 6, by = 2)) +
  coord_cartesian(xlim = c(-6, 6), ylim = c(0, 0.4)) +
  labs(y="Density",x="Length-for-age z-score")+
  theme_minimal() +
  theme(
    legend.position = "none",
    panel.grid.minor.y = element_blank()
  )

laz_dplot

# define standardized plot names
laz_dplot_name <- create_name(
  outcome = "LAZ",
  cutoff = 2,
  measure = "density DHS",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(laz_dplot, file = paste0(fig_dir, "stunting/fig-", laz_dplot_name, ".png"), width = 8, height = 2)
saveRDS(dhsden_plot_laz, file = paste0(figdata_dir, "figdata-", laz_dplot_name, ".RDS"))
#############################################
# Merge above plots into a single figure
#############################################

arrange_figures = grid.arrange(laz_dplot, 
                               laz_ageplot, 
                               nrow = 2, ncol = 1,
                               heights = c(2, 2),
                               widths= 8)

ggsave(arrange_figures, file=paste0("figures/stunting/fig-DHS-LAZ.png"), width=8, height=4)
