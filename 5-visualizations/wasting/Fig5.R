
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))

require(cowplot)
require(ggmap)
theme_set(theme_ki())




#Figure 5
co_plot <- readRDS(paste0(BV_dir,"/figures/plot-objects/co_plot_object.rds"))
bar_plot_RE <- readRDS(paste0(BV_dir,"/figures/plot-objects/co_flow_object.rds"))
plot_data_pooled <- readRDS(paste0(figdata_dir_wasting, "/figdata-co-2-coflow-overall--allage-primary.RDS"))

co_p <- co_plot[[1]]
co_p <- co_p + theme(legend.position = "none",
                     legend.text = element_text(size=11), axis.title.x = element_text(size=11),
                     axis.title.y = element_text(size=11),
                     axis.text.x = element_text(size=11),axis.text.y = element_text(size=11)) + xlab("Child age in months")
bar_plot_RE <- bar_plot_RE + theme(legend.text = element_text(size=11),
                                   axis.title.y = element_text(size=11), 
                                   axis.title.x = element_text(size=11),axis.text.x = element_text(size=11),axis.text.y = element_text(size=11)) + xlab("Child age in months")


fig5 <- plot_grid(co_p, bar_plot_RE, labels = "auto", ncol = 1, align = 'v', axis = 'l', rel_heights = c(1, 2))


ggsave(plot = fig5, filename=paste0(here::here(),"/figures/manuscript-pdfs/wasting/Fig5.pdf"), device='pdf', width=14, height=14)
#ggsave(plot = fig5, filename=paste0(here::here(),"/figures/manuscript-pdfs/wasting/Fig5.pdf"), device='pdf', width=17, height=17, units="cm")
ggsave(plot = fig5, filename=paste0(here::here(),"/figures/manuscript-pdfs/wasting/Fig5.pdf"), device='pdf', width=10, height=10)



