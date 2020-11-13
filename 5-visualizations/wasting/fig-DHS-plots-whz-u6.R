##########################################
# ki longitudinal manuscripts

# This script produces figures that compare DHS estimates of means by age in months
# and kernel densities to those from the KI cohorts. 
# The script uses data prepared in [density-zscore-data-processing.R] and [mean-zscore-data-processing.R]

# This script includes KI cohorts with measurement frequency at least quarterly

# Inputs:
#   0-config.R : configuration file
#   figdata-fig_dhs_full_zscores_density.RDS
#   figdata-fig_dhs_full_zscores_byage.RDS

# Outputs:
#   fig_dhs_full_zscores_byage.png
#   fig_dhs_full_zscores_density.png
##########################################

#---------------------------------------
# source configuration file
#---------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_helper_sampling_weights.R"))

# standard region colors used in other plots
pcols <- tableau11


##################################
# Plot mean z-score by age
##################################
dhs_plotd = read_rds(paste0(figdata_dir_wasting, "figdata-fig_dhs_full_zscores_byage.RDS"))
dhs_plotd$region = factor(dhs_plotd$region, levels = c("Overall", "Africa", "Latin America", "South Asia"))
dhs_plotd$measure[dhs_plotd$measure=="WHZ"] <- "WLZ"
dhs_plotd <- dhs_plotd %>% filter(agem <= 6)


dhsp <- ggplot(data = dhs_plotd, aes(x = agem, y = fit, color = region, fill = region, linetype = region)) +
  facet_grid( ~ measure) +
  geom_abline(intercept = 0, slope = 0, color = "gray70") +
  geom_ribbon(aes(ymin = fit_lb, ymax = fit_ub), color = NA, alpha = 0.2) +
  geom_line(alpha = 1) +
  scale_x_continuous(breaks = seq(0, 6, by = 1)) +
  scale_y_continuous(breaks = seq(-2, 1, by = 0.25)) +
  scale_color_manual(values = pcols, name="Region: ") +
  scale_fill_manual(values = pcols, name="Region: ") +
  scale_linetype_manual(values = c("solid", "dashed", "dotdash", "dotted"), name="Region: ") +
  labs(x = "Child age, months", y = "Anthropometric z-score") +
  coord_cartesian(ylim = c(-1.5, 1)) +
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
ggsave(dhsp, file = paste0(fig_dir, "wasting/fig_dhs_full_zscores_byage.png"), width = 6, height = 6)

# ##################################
# # Plot z-score density by region and measure
# ##################################
# 
# dhs = readRDS(paste0(here(),"/results/dhs/dhs.density.all-countries.rds"))
# dhssubden <- dhs %>% mutate(dsource = "DHS")
# 
# medians = readRDS(paste0(here(),"/results/dhs/dhs.ki.zscore.medians.monthly.rds"))
# 
# dhsden_plot <- dhssubden %>%
#   mutate(
#     dsource = factor(dsource, levels = c("DHS")),
#     region = factor(region, levels = c("Overall", "Africa", "South Asia", "Latin America"))
#   ) 
# 
# dhsden_plot = merge(x = dhsden_plot, y = medians, by = c("region", "dsource", "measure"),  all.x = TRUE)
# dhsden_plot = dhsden_plot %>% mutate(region = factor(region, levels = c("Overall", "Africa", "Latin America", "South Asia")))
# dhsden_plot$measure <- as.character(dhsden_plot$measure)
# dhsden_plot$measure[dhsden_plot$measure=="WHZ"] <- "WLZ"
# dhsden_plot$measure <- factor(dhsden_plot$measure, levels = c("LAZ", "WAZ", "WLZ"))
# 
# dplot <- ggplot(data = dhsden_plot, aes(x = x, y = y, color = region, linetype = dsource)) +
#   facet_grid( ~ measure) +
#   geom_line() +
#   geom_point(aes(x = as.double(median), y = 0, shape = dsource)) +
#   scale_color_manual(values = pcols, guide = FALSE) +
#   scale_fill_manual(values = pcols, guide = FALSE) +
#   scale_linetype_manual(values = c("solid", "dashed", "dotdash"), name="Data source:") +
#   scale_shape_manual(values=c(19, 1), name="Data source:")+
#   scale_x_continuous(breaks = seq(-6, 6, by = 2)) +
#   coord_cartesian(xlim = c(-6, 6), ylim = c(0, 0.4)) +
#   labs(y = "Density", x = "Z-score") +
#   theme_minimal() +
#   theme(
#     legend.position = "bottom",
#     panel.grid.minor.y = element_blank(),
#     strip.text.y = element_text(angle = 0)
#   )
# 
# dplot
# 
# # output a file to png
# saveRDS(dhsden_plot, file = paste0(figdata_dir_wasting, "figdata-fig_dhs_full_zscores_density.RDS"))
# ggsave(dplot, file = paste0(fig_dir, "wasting/fig_dhs_full_zscores_density.png"), width = 6, height = 5)
# 
