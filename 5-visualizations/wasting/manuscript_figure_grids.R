

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))

source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())

require(cowplot)


load("U:/ki-longitudinal-manuscripts/figures/plot objects/season_diff_plot.Rdata")
load("U:/ki-longitudinal-manuscripts/figures/plot objects/season_plots.Rdata")

Twoby1plot <- plot_grid(p1, p2, p3, p4, labels = "AUTO", ncol = 2, align = 'v', axis = 'l')

fig4 <- plot_grid(Twoby1plot, p, labels = c("","E"), ncol = 1, align = 'h', axis = 'l', rel_heights = c(2, 1))

ggsave(fig4, file=paste0(here(),"/figures/manuscript figure composites/wasting/fig4.png"), width=14, height=14)








