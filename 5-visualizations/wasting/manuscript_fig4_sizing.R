

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))

require(cowplot)
require(ggmap)
theme_set(theme_ki())




#Figure 4
is.wholenumber <- function(x, tol = .Machine$double.eps^0.5) {
  abs(x - round(x)) < tol
}
p_seasonRR <- readRDS(paste0(BV_dir,"/figures/plot-objects/season_RR_plot.rds"))

seasonbirth_plot_list <- readRDS(paste0(BV_dir,"/figures/plot-objects/season_plots.rds"))
seasonbirth_diff <- readRDS(paste0(BV_dir,"/figures/plot-objects/season_birth_wlz_diff_plot_FE.rds"))
load(paste0(BV_dir,"/figures/plot-objects/stunting_rain_seasonality_plot_parameters.Rdata"))

#Add birth diff inset plot
#seasonbirth_plot <- seasonbirth_plot_list[[2]] +ylab("Birth WLZ") + inset(ggplotGrob(seasonbirth_diff), xmin = 80, xmax = 300, ymin = -0.6, ymax = 0) 
seasonbirth_diff <- seasonbirth_diff + theme(axis.text.x=element_text(size=12), axis.text.y=element_text(size=12))
seasonbirth_plot <- seasonbirth_plot_list[[2]]  + inset(ggplotGrob(seasonbirth_diff), xmin = 2.5, xmax = 11, ymin = 300, ymax = 540) 


plot_list <- readRDS(paste0(BV_dir,"/figures/plot-objects/rain_seasonality_plot_objects.rds"))


top_plot <- plot_grid(
  plot_list[[1]] + theme(axis.text.x=element_text(size=11), axis.text.y=element_text(size=11)), 
  plot_list[[7]] + theme(axis.text.x=element_text(size=11), axis.text.y=element_text(size=11)), 
  plot_list[[12]] + theme(axis.text.x=element_text(size=11), axis.text.y=element_text(size=11)), 
  plot_list[[17]] + theme(axis.text.x=element_text(size=11), axis.text.y=element_text(size=11)), 
  plot_list[[2]] + theme(axis.text.x=element_text(size=11), axis.text.y=element_text(size=11)), 
  plot_list[[8]] + theme(axis.text.x=element_text(size=11), axis.text.y=element_text(size=11)), 
  plot_list[[13]] + theme(axis.text.x=element_text(size=11), axis.text.y=element_text(size=11)), 
  plot_list[[18]] + theme(axis.text.x=element_text(size=11), axis.text.y=element_text(size=11)), 
  plot_list[[3]] + theme(axis.text.x=element_text(size=11), axis.text.y=element_text(size=11)), 
  plot_list[[9]] + theme(axis.text.x=element_text(size=11), axis.text.y=element_text(size=11)), 
  plot_list[[14]] + theme(axis.text.x=element_text(size=11), axis.text.y=element_text(size=11)), 
  plot_list[[19]] + theme(axis.text.x=element_text(size=11), axis.text.y=element_text(size=11)), 
  plot_list[[4]] + theme(axis.text.x=element_text(size=11), axis.text.y=element_text(size=11)), 
  plot_list[[10]] + theme(axis.text.x=element_text(size=11), axis.text.y=element_text(size=11)), 
  plot_list[[15]] + theme(axis.text.x=element_text(size=11), axis.text.y=element_text(size=11)), 
  plot_list[[20]] + theme(axis.text.x=element_text(size=11), axis.text.y=element_text(size=11)), 
  plot_list[[5]] + theme(axis.text.x=element_text(size=11), axis.text.y=element_text(size=11)), 
  plot_list[[11]] + theme(axis.text.x=element_text(size=11), axis.text.y=element_text(size=11)), 
  plot_list[[16]] + theme(axis.text.x=element_text(size=11), axis.text.y=element_text(size=11)), 
  plot_list[[21]] + theme(axis.text.x=element_text(size=11), axis.text.y=element_text(size=11)),
  plot_list[[6]] + theme(axis.text.x=element_text(size=11), axis.text.y=element_text(size=11)),
  labels = rep("", 21), ncol = 4, align = 'v', axis = 'l')


left_lab <- ggdraw() + 
  draw_label(
    "Mean WLZ",
    angle = 90,
    fontface = 'bold',
    x = 0.5,
    hjust = 1) 
right_lab <- ggdraw() + 
  draw_label(
    "Rainfall (mm)",
    angle = 270,
    fontface = 'bold',
    x = 0,
    hjust = 0)
top_plot_lab <- plot_grid(left_lab, top_plot, right_lab, labels = c("","",""), ncol = 4, align = 'hv', axis = 'b', rel_widths = c(0.01, 1, 0.01), greedy=F) 

bottom_plot <- plot_grid(p_seasonRR, seasonbirth_plot, labels = c("b","c"), ncol = 2, rel_widths = c(1, 1))
fig4 <- plot_grid(top_plot_lab, NULL, bottom_plot, labels = c("a",""), ncol = 1, align = 'h', axis = 'l', rel_heights = c(1.5, -0.01, 1))

ggsave(plot = fig4, filename=paste0(here::here(),"/figures/manuscript-pdfs/wasting/Fig4.pdf"), device='pdf', width=14, height=14)
#ggsave(plot = fig4, filename=paste0(here::here(),"/figures/manuscript-pdfs/wasting/Fig4.pdf"), device='pdf', width=18, height=17, units = "cm")

#https://stackoverflow.com/questions/44711236/set-the-size-of-ggsave-exactly

# # Specify the desired output size in centimeters
# output_size <- c(18, 17)
# 
# # Set the plot margins to zero
# plot_margins <- cowplot::theme(plot.margin = cowplot::unit(c(0,0,0,0), "cm"))
# 
# # Use the 'ggdraw' function to create a new plot with the desired size and margins
# new_plot <- cowplot::ggdraw() +
#   cowplot::draw_plot(fig4, width = output_size[1], height = output_size[2]) +
#   plot_margins
# 
# # Save the new plot to a pdf file
# ggsave(plot = fig4, filename=paste0(here::here(),"/figures/manuscript-pdfs/wasting/Fig4.pdf"), device='pdf', width=18, height=17, units = "cm")

