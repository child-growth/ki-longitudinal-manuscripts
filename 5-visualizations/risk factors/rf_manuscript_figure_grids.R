

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))

source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())

require(cowplot)

#Figure 2
load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf results/rf_paf_plot_objects.Rdata")
load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf results/rf_Zpar_plot_objects.Rdata")

p1 <- pPAR_laz + xlab("")
p2 <- pPAR_wlz + xlab("")
p3 <- ppaf_stunt + xlab("")
p4 <- ppaf_wast + xlab("")


fig2 <- plot_grid(p1, p2, p3, p4, labels = "AUTO", ncol = 2, align = 'v', axis = 'l')
ggsave(fig2, file=paste0(here(),"/figures/manuscript figure composites/risk factor/fig2.png"), width=14, height=14)


#Figure 3
load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/fig-severe-outcome-comps.Rdata")
load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/fig-age-strat-wast-plot-objects.Rdata")
load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf_spline_objects.Rdata")

p1 <- p1 + ggtitle("WLZ-maternal weight") + theme(legend.position = "bottom") + guides(color = guide_legend(nrow=3))
p2 <- p2 + ggtitle("WLZ-maternal height") + theme(legend.position = "bottom") + guides(color = guide_legend(nrow=3))
p3 <- p3 + ggtitle("LAZ-maternal weight") + theme(legend.position = "bottom") + guides(color = guide_legend(nrow=3))
p4 <- p4 + ggtitle("LAZ-maternal height") + theme(legend.position = "bottom") + guides(color = guide_legend(nrow=3))


Twoby1plot <- plot_grid(p4, p1, p3, p2, labels = "AUTO", ncol = 4, align = 'v', axis = 'l')
fig3 <- plot_grid(Twoby1plot, p_ageRR, p_severecomp, labels = c("","E","F"), ncol = 1, align = 'h', axis = 'l', rel_heights=c(1,2,1))
ggsave(fig3, file=paste0(here(),"/figures/manuscript figure composites/risk factor/fig3.png"), width=14, height=18)



#Figure 4
load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/fig-wasting-prior-to-stunting-plot-objects.Rdata")
#p_earlywast <- p_earlywast + theme(axis.text.x=element_text(angle=45,vjust=0.5))
fig4 <- plot_grid(p_lagwhz, p_earlywast, labels = "AUTO", ncol = 2, align = 'v', axis = 'l', rel_widths=c(2,1))
ggsave(fig4, file=paste0(here(),"/figures/manuscript figure composites/risk factor/fig4.png"), width=14, height=6)


#Figure 5
load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf_mortality_plot_objects.Rdata")
load(paste0(here::here(),"/figures/risk factor/fig-mortality-timing-plot-object.Rdata"))


fig5 <- plot_grid(p, p1, p2, p3, labels = "AUTO", ncol = 2, align = 'v', axis = 'l')

ggsave(fig5, file=paste0(here(),"/figures/manuscript figure composites/risk factor/fig5.png"), width=14, height=10)
