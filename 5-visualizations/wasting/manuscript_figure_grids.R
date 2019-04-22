

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))

source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())

require(cowplot)

# file:///U:/ki-longitudinal-manuscripts/figures/plot objects/rec_plot_object.Rdata
# file:///U:/ki-longitudinal-manuscripts/figures/plot objects/co_plot_object.Rdata

#Figure 2
load("U:/ki-longitudinal-manuscripts/figures/plot objects/fig2_plot_objects.Rdata")

fig2 <- plot_grid(mean_wlz_plot, prev_plot[[1]], ci_plot[[1]], labels = "AUTO", ncol = 1, align = 'v', axis = 'l')

ggsave(fig2, file=paste0(here(),"/figures/manuscript figure composites/wasting/fig2.png"), width=14, height=14)


#Figure 3
load("U:/ki-longitudinal-manuscripts/figures/plot objects/season_diff_plot.Rdata")
load("U:/ki-longitudinal-manuscripts/figures/plot objects/season_plots.Rdata")

Twoby1plot <- plot_grid(p1, p2, p3, p4, labels = "AUTO", ncol = 2, align = 'v', axis = 'l')

fig3 <- plot_grid(Twoby1plot, p, labels = c("","E"), ncol = 1, align = 'h', axis = 'l', rel_heights = c(2, 1))

ggsave(fig3, file=paste0(here(),"/figures/manuscript figure composites/wasting/fig3.png"), width=14, height=14)

#Figure 4

#Figure 5
load("U:/ki-longitudinal-manuscripts/figures/plot objects/co_plot_object.Rdata")
load("U:/ki-longitudinal-manuscripts/figures/plot objects/co_flow_object.Rdata")


fig5 <- plot_grid(co_plot[[1]], bar_plot_RE, labels = "AUTO", ncol = 1, align = 'v', axis = 'l')

ggsave(fig5, file=paste0(here(),"/figures/manuscript figure composites/wasting/fig5.png"), width=14, height=14)





