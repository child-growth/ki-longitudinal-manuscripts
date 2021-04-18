
##########################################
# ki longitudinal manuscripts
# stunting analysis

# This script produces figures that compare DHS estimates of means by age in months
# and kernel densities to those from the KI cohorts. 
# The script uses data prepared in [laz-density-data-processing.R] and [laz-mean-data-processing.R]

# This script is limited to LAZ for the linear growth paper. It includes
# KI cohorts with measurement frequency at least quarterly

# Inputs:
#   0-config.R : configuration file
#   figdata-laz-2-mean_dhs-overall_region--allage-primary.RDS
#   figdata-laz-2-density_dhs-overall_region--allage-primary.RDS

# Outputs:
#   fig-laz-2-mean_dhs-overall_region--allage-primary.png
#   fig-laz-2-density_dhs-overall_region--allage-primary.png
#   fig-DHS-LAZ.png

##########################################

#---------------------------------------
# source configuration file
#---------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_helper_sampling_weights.R"))

pcols <- tableau11
# standard region colors used in other plots
# tableau10 <- tableau_color_pal("Tableau 10")
# pcols <- c("black", tableau10(10)[c(1, 2, 4)])
# 
blue <- 1
orange <- 2
green <- 3

#############################################
# Create LAZ Age Plot
#############################################

laz_ageplot_name <- create_name(
  outcome = "LAZ",
  cutoff = 2,
  measure = "mean DHS",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

dhs_plotd_laz = read_rds(paste0(figdata_dir_stunting, "figdata-", laz_ageplot_name, ".RDS"))

laz_ageplot <- ggplot(
  dhs_plotd_laz,
  aes(x = agem, y = fit, color = region, fill = region, linetype = dsource)
) +
  facet_grid(~region) +
  geom_abline(intercept = 0, slope = 0, color = "gray70") +
  geom_ribbon(aes(ymin = fit_lb, ymax = fit_ub), color = NA, alpha = 0.2) +
  geom_line(alpha = 1) +
  scale_x_continuous(breaks = seq(0, 24, by = 6)) +
  scale_y_continuous(breaks = seq(-3, 0, by = 0.5)) +
  scale_color_manual(values = pcols, guide = FALSE, name = "") +
  scale_fill_manual(values = pcols, guide = FALSE, name = "") +
  scale_linetype_manual(values = c("solid", "dashed", "dotdash"), name = "") +
  labs(x="Child age, months",y="Length-for-age\nz-score") +
  guides(linetype=guide_legend(override.aes=list(fill=NA))) +
  coord_cartesian(ylim = c(-2.25, 0)) +
  theme_minimal() +
  theme(
    legend.position = "bottom",
    strip.placement = "outside",
    strip.background = element_rect(fill = NA, color = NA),
    # strip.text.y = element_text(angle=180),
    panel.spacing = unit(0.5, "lines"),
    panel.grid.minor.x = element_blank()#,
    # legend.background=element_blank(),
    # legend.key = element_rect(fill = "white")
  )

laz_ageplot

ggsave(laz_ageplot, file = paste0(fig_dir, "stunting/fig-", laz_ageplot_name, ".png"), width = 8, height = 3)

#############################################
# Create LAZ Density Plot
#############################################
kiden <- readRDS(paste0(here(), "/results/dhs/ki.density.fits.quarterly.rds"))
kiden <- kiden %>% mutate(dsource = "ki cohorts")

dhssubden = readRDS(paste0(here(),"/results/dhs/dhs.density.ki-countries.rds"))
dhssubden <- dhssubden %>% mutate(dsource = "DHS, ki countries")

medians = readRDS(paste0(here(),"/results/dhs/dhs.ki.zscore.medians.quarterly.rds")) %>% filter(measure == "LAZ")

dhsden_plot <- bind_rows(kiden, dhssubden) %>%
  mutate(
    dsource = factor(dsource, levels = c("ki cohorts", "DHS, ki countries")),
    region = factor(region, levels = c("Overall", "Africa", "South Asia", "Latin America"))
  ) %>% 
  filter(measure == "LAZ")

dhsden_plot_laz = merge(x = dhsden_plot, y = medians, by = c("region", "dsource", "measure"),  all.x = TRUE)
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

laz_dplot_name <- create_name(
  outcome = "LAZ",
  cutoff = 2,
  measure = "density DHS",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

saveRDS(dhsden_plot_laz, file = paste0(figdata_dir_stunting, "figdata-", laz_dplot_name, ".RDS"))
ggsave(laz_dplot, file = paste0(fig_dir, "stunting/fig-", laz_dplot_name, ".png"), width = 8, height = 2)

#############################################
# Merge above plots into a single figure
#############################################

arrange_figures = grid.arrange(laz_dplot, 
                               laz_ageplot, 
                               nrow = 2, ncol = 1,
                               heights = c(2, 3),
                               widths= 8)

ggsave(arrange_figures, file=paste0(fig_dir, "/stunting/fig-DHS-LAZ.png"), width=8, height=4)
