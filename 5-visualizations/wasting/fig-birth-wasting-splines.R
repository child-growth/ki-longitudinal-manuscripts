

rm(list = ls())
source(paste0(here::here(), "/0-config.R"))

plotdf <- readRDS(paste0(ghapdata_dir, "birthwast_strat_whz_plot_data.rds"))

p <- ggplot(data=plotdf, aes(x=agedays, y=fit, group=born_wast, color=born_wast,  fill=born_wast)) +
  geom_line(size=2) +
  geom_ribbon(aes(ymin=fit_lb, ymax=fit_ub), alpha=0.3, color=NA) +
  scale_color_manual(values=tableau10[c(5:6)], na.translate = F) + 
  scale_fill_manual(values=tableau10[c(5:6)], na.translate = F) + 
  ylab("Mean WLZ") + xlab("Age in months") +
  scale_y_continuous(expand = c(0, 0)) +
  scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                     breaks = 1:24*30.4167-15.2, labels = 1:24) +
  #geom_text(data = ann_text,label =  c("Year 1","Year 2", "Year 3"), color="grey30") +
  #coord_cartesian(ylim=c(-1.25, 0)) + 
  guides(shape=guide_legend(ncol=2), color=guide_legend(ncol=1)) + #guides(color = FALSE) + 
  theme(
    legend.position = c(.8,.2),
    legend.title = element_blank(),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"),
    legend.text=element_text(size=rel(1)))    
p


ggsave(p, file=paste0(here(),"/figures/wasting/birthwast_strat_growth_curve.png"), width=7, height=5)
ggsave(p, file=paste0(here(),"/figures/wasting/birthwast_strat_growth_curve_alt.png"), width=6, height=3)
saveRDS(p, file=paste0(here::here(),"/figures/plot-objects/birthwast_strat_growth_curve_object.rds"))


p <- ggplot(data=plotdf, aes(x=agedays, y=fit, group=born_wast, color=born_wast,  fill=born_wast)) +
  geom_line(size=2) +
  geom_ribbon(aes(ymin=fit_lb, ymax=fit_ub), alpha=0.3, color=NA) +
  scale_color_manual(values=tableau10[c(5:6)], na.translate = F) + 
  scale_fill_manual(values=tableau10[c(5:6)], na.translate = F) + 
  ylab("WLZ") + xlab("Age in months") +
  scale_y_continuous(expand = c(0, 0)) +
  scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                     breaks = 1:24*30.4167-15.2, labels = 1:24) +
  #geom_text(data = ann_text,label =  c("Year 1","Year 2", "Year 3"), color="grey30") +
  #coord_cartesian(ylim=c(-1.25, 0)) + 
  guides(shape=guide_legend(ncol=2), color=guide_legend(ncol=1)) + #guides(color = FALSE) + 
  theme(
    legend.position = "none",
    #legend.position = c(.9,.2),
    legend.title = element_blank(),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"),
    legend.text=element_text(size=rel(0.5)))+
  
  
ggsave(p, file=paste0(here(),"/figures/wasting/birthwast_strat_growth_curve_nolegend.png"), width=7, height=5)



