##########################################
# make multipanel figures into single pdf's for Nature submission
##########################################

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

require(cowplot)
require(ggmap)
theme_set(theme_ki())

#Figure 3

p3a <- readRDS(paste0(figdata_dir_stunting, "figdata-3a.RDS"))
p3b <- readRDS(paste0(figdata_dir_stunting, "figdata-3b.RDS"))


p3 <- plot_grid(p3a[[1]], p3b[[2]], labels = c("a","b"), ncol = 1, rel_heights = c(1, 1.5))
#plot(p3)

ggsave(plot = p3, filename=paste0(here::here(),"/figures/manuscript-pdfs/stunting/Fig3.pdf"), device='pdf', width=12, height=10)


#Figure 4
p4a <- readRDS(paste0(figdata_dir_stunting, "figdata-4a.RDS"))
p4b <- readRDS(paste0(figdata_dir_stunting, "figdata-4b.RDS"))

p4a <- readRDS(paste0(figdata_dir_stunting, "figdata-stunt-2-flow-overall--allage-primary.RDS"))
  
  
  saveRDS(plot_overall, file=paste0(figdata_dir_stunting, "figdata-",bar_plot_noRE_name,".RDS"))




#Figure 5
  p5a <- readRDS(paste0(figdata_dir_stunting, "figdata-5a.RDS"))
  p5b <- readRDS(paste0(figdata_dir_stunting, "figdata-5b.RDS"))
  
  ggsave(plot = p5a, filename=paste0(here::here(),"/figures/manuscript-pdfs/stunting/Fig5a.pdf"), device='pdf', width=8, height=5)
  ggsave(plot = p5b, filename=paste0(here::here(),"/figures/manuscript-pdfs/stunting/Fig5b.pdf"), device='pdf', width=5, height=4)
  
  
  # library(egg)
  # p5a + 
  #   annotation_custom(
  #     ggplotGrob(p5b), 
  #     xmin = 0, xmax = 100, ymin = 0, ymax = 100
  #   )
  # 
  # 
  # #remotes::install_github("bobverity/bobfunctions2")
  # library(bobfunctions2)
  # 
  # 
  # # produce main plot and inset plot
  # plot_df <- data.frame(x = rnorm(1e3), y = rnorm(1e3), group = 1:2)
  # plot_main <- ggplot2::ggplot() +
  #   ggplot2::geom_point(ggplot2::aes(x = x, y = y), data = plot_df) +
  #   ggplot2::facet_wrap(~group)
  # plot_inset <- ggplot2::qplot(rnorm(1e3))
  # 
  # # use gg_inset to annotate first panel only
  # plot_combined <- plot_main + gg_inset(ggplot2::ggplotGrob(plot_inset), data = data.frame(group = 1),
  #                                       xmin = -Inf, xmax = 1.5, ymin = 0.6, ymax = Inf)
  # plot_combined
  # 
  # plot_combined <- p5a + gg_inset(ggplot2::ggplotGrob(p5b), data = data.frame(age_rec_f = "Stunting reversal\nat 9 months", haz=1, age_meas_n=1),
  #                                       xmin = -Inf, xmax = 3.5, ymin = 2, ymax = 3)
  # plot_combined
  


bottom_plot <- plot_grid(p_seasonRR, seasonbirth_plot, labels = c("b","c"), ncol = 2, rel_widths = c(1, 1))
