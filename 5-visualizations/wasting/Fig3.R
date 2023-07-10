

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))

require(cowplot)
require(ggmap)
theme_set(theme_ki())

#Figure 3
rec_plot <- readRDS(paste0(BV_dir,"/figures/plot-objects/rec_plot_object.rds"))
inc_plot <- readRDS(paste0(BV_dir,"/figures/plot-objects/inc_plot_object_inset.rds"))
ep_hist <- readRDS(paste0(BV_dir,"/figures/plot-objects/wast_episode_hist.rds"))


rec_violin_plot <- readRDS(paste0(BV_dir,"/figures/plot-objects/rec_violin_plot_object.rds"))
birthstrat_stats_plot <- readRDS(paste0(BV_dir,"/figures/plot-objects/birthstrat_stats_plot_object.rds"))
birthstrat_curve <- readRDS(paste0(BV_dir,"/figures/plot-objects/birthwast_strat_growth_curve_object.rds"))
ind_traj <- readRDS(paste0(BV_dir,"/figures/plot-objects/ind_traj_plot_object.rds"))

rec_violin_plot <- rec_violin_plot + theme(axis.title.x = element_text(size=11),axis.text.x = element_text(size=11),axis.text.y = element_text(size=11))
birthstrat_stats_plot <- birthstrat_stats_plot + theme(axis.title.x = element_text(size=11),axis.text.x = element_text(size=11),axis.text.y = element_text(size=11))
birthstrat_curve <- birthstrat_curve + theme(axis.title.x = element_text(size=11),axis.text.x = element_text(size=11),axis.text.y = element_text(size=11)) + xlab("Child age in months")
ind_traj <- ind_traj + theme(legend.text = element_text(size=11), axis.title.x = element_text(size=11),axis.text.x = element_text(size=11),axis.text.y = element_text(size=11))
rec_plot <- rec_plot[[1]]  + theme(legend.pos = c(.12,.88),
                                   legend.text = element_text(size=11), axis.title.x = element_text(size=11),axis.text.x = element_text(size=11),axis.text.y = element_text(size=11)) + xlab("Child age in months")
inc_plot <- inc_plot  + theme(#legend.position = c(.072,.835), 
                              axis.title.x = element_text(size=11, vjust= 10),
                              axis.text.x = element_text(size=11, vjust=0.6, angle=20),
                              axis.text.y = element_text(size=11),
                              legend.pos = c(0.1,-.2),
                              #legend.box = element_rect(color = NA),
                              legend.background = element_blank(),
                              legend.box.background = element_blank(),
                              legend.text = element_text(size=11),
                              legend.key.size = unit(0.1, "cm"),
                              legend.key = element_rect(fill = "transparent", colour = "transparent")) + xlab("Child age in months")

# inc_plot2 <- inc_plot + theme(legend.pos = c(0.1,-.225),
#                               legend.key.size = unit(0.1, "cm"),
#                               legend.key = element_rect(fill = "transparent", colour = "transparent"))



colors <-  c("green", "orange", "red", "grey80", "grey40")
names(colors) = c("Not wasted", "Wasted", "Severe wasted", "Born wasted", "Born severe wasted")


fig3_a <- plot_grid(ind_traj, rec_violin_plot, labels = c("a","d"), ncol = 2, align = 'v', axis = 'l')
fig3_c <- plot_grid(birthstrat_curve, birthstrat_stats_plot, labels = c("e","f"), ncol = 2, align = 'v', axis = 'l')

fig3 <- plot_grid(fig3_a, inc_plot, rec_plot, fig3_c, labels = c("","b","c",""), ncol = 1, align = 'h', axis = 'l', rel_heights = c(1,1.1,0.9, 1))
ggsave(plot = fig3, filename=paste0(here::here(),"/figures/manuscript-pdfs/wasting/Fig3.pdf"), device='pdf', width=14, height=14)

