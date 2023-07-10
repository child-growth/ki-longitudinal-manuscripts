

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))

require(cowplot)
require(ggmap)
theme_set(theme_ki())


#Figure 2
plot_list <- readRDS(paste0(BV_dir,"/figures/plot-objects/fig2_plot_objects.rds"))
whz_spline <- readRDS(paste0(BV_dir,"/figures/plot-objects/mean_wlz_plot_objects.rds"))

whz_spline <- whz_spline + theme(axis.title.x = element_text(size=11),axis.text.x = element_text(size=11),axis.text.y = element_text(size=11))
prev_p <- plot_list[[2]]$`plot` + theme(axis.title.x = element_text(size=11),axis.text.y = element_text(size=11), axis.text.x = element_text(size=11))
prev_p <- prev_p + theme(legend.position = "none") + coord_cartesian(ylim=c(0, 37))
ci_plot <- plot_list[[3]]$`plot` + 
  theme(legend.position = c(.072,.835), 
        legend.text = element_text(size=11),
        axis.title.x = element_text(size=11),
        legend.background = element_rect(color = NA),
        axis.text.x = element_text(size=11, vjust=0.6,
                                   #vjust = grid::unit(c(-2,0,-2,0,-2,0,-2,0), "points"),
                                   angle=20))

fig2 <- plot_grid(whz_spline, prev_p, ci_plot, labels = "auto", ncol = 1, align = 'v', axis = 'l')

ggsave(fig2, file=paste0(BV_dir,"/figures/manuscript-figure-composites/wasting/fig2.png"), width=14, height=10)
ggsave(plot = fig2, filename=paste0(here::here(),"/figures/manuscript-pdfs/wasting/Fig2.pdf"), device='pdf', width=14, height=10)
