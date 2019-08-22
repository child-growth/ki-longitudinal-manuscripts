

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))

require(cowplot)

#Figure 2
load(here("/figures/plot objects/fig2_plot_objects.Rdata"))

prev_p <- prev_plot[[1]]
prev_p <- prev_p + theme(legend.position = "none")

fig2 <- plot_grid(mean_wlz_plot, prev_p, ci_plot[[1]], labels = "AUTO", ncol = 1, align = 'v', axis = 'l')

ggsave(fig2, file=paste0(here(),"/figures/manuscript figure composites/wasting/fig2.png"), width=14, height=14)


#Figure 3
load(here("/figures/plot objects/season_diff_plot.Rdata"))
load(here("/figures/plot objects/season_plots.Rdata"))

TwobyTwoplot <- plot_grid(p1, p2, p3, p4, labels = "AUTO", ncol = 2, align = 'v', axis = 'l')

fig3 <- plot_grid(TwobyTwoplot, pdiff, labels = c("","E"), ncol = 1, align = 'h', axis = 'l', rel_heights = c(2, 1))

ggsave(fig3, file=paste0(here(),"/figures/manuscript figure composites/wasting/fig3.png"), width=14, height=14)

#Figure 4
load(here("/figures/plot objects/rec_plot_object.Rdata"))
load(here("/figures/plot objects/rec_violin_plot_object.Rdata"))
load(here("/figures/plot objects/inc_plot_object.Rdata"))
load(here("/figures/plot objects/birthstrat_stats_plot_object.Rdata"))
load(here("/figures/plot objects/birthwast_strat_growth_curve_object.Rdata"))
birthstrat_curve<-p
load(here("/figures/plot objects/ind_traj_plot_object.Rdata"))
ind_traj <- p
colors <-  c("green", "orange", "red", "grey80", "grey40")
names(colors) = c("Not wasted", "Wasted", "Severe wasted", "Born wasted", "Born severe wasted")


fig4_a <- plot_grid(ind_traj, rec_violin_plot, labels = c("A","C"), ncol = 2, align = 'v', axis = 'l')
fig4_c <- plot_grid(birthstrat_curve, birthstrat_stats_plot, labels = c("E","F"), ncol = 2, align = 'v', axis = 'l')

fig4 <- plot_grid(fig4_a, inc_plot[[1]], rec_plot[[1]], fig4_c, labels = c("","B","D",""), ncol = 1, align = 'h', axis = 'l', rel_heights = c(1,1,1, 1))
ggsave(fig4, file=paste0(here(),"/figures/manuscript figure composites/wasting/fig4.png"), width=14, height=14)

#Figure 5
load(here("/figures/plot objects/co_plot_object.Rdata"))
load(here("/figures/plot objects/co_flow_object.Rdata"))

co_p <- co_plot[[1]]
co_p <- co_p + theme(legend.position = "none")
fig5 <- plot_grid(co_p, bar_plot_RE, labels = "AUTO", ncol = 1, align = 'v', axis = 'l', rel_heights = c(1, 2))

ggsave(fig5, file=paste0(here(),"/figures/manuscript figure composites/wasting/fig5.png"), width=14, height=14)





