

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))

source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())

require(cowplot)

#Figure 2 + 3
load(paste0(here::here(), "/results/rf results/rf_paf_plot_objects.Rdata"))
load(paste0(here::here(), "/results/rf results/rf_Zpar_plot_objects.Rdata"))
load(paste0(here::here(), "/results/rf results/rf_Zpar_margin_plot_objects.Rdata"))


p1 <- pPAR_laz + xlab("") + theme(axis.text = element_text(size=12))
p2 <- pPAR_wlz + xlab("") + theme(axis.text = element_text(size=12))
p3 <- ppaf_stunt + xlab("") + theme(axis.text = element_text(size=12))
p4 <- ppaf_wast + xlab("") + theme(axis.text = element_text(size=12))

blank <- grid.rect(gp=gpar(col="white"))

pPar_laz_plot = grid.arrange(blank, p1, nrow = 2, heights = c(0.9, 20))
pPar_laz_plot_table = grid.arrange(mtab_df_laz_tbl, blank, nrow = 2, heights = c(12, 0.65))
pPar_laz_combined = plot_grid(pPar_laz_plot, pPar_laz_plot_table, ncol = 2, rel_widths = c(1, 0.4))
pPar_laz_combined

pPar_wlz_plot = grid.arrange(blank, p2, nrow = 2, heights = c(0.9, 20))
pPar_wlz_plot_table = grid.arrange(mtab_df_wlz_tbl, blank, nrow = 2, heights = c(12, 0.65))
pPar_wlz_combined = plot_grid(pPar_wlz_plot, pPar_wlz_plot_table, ncol = 2, rel_widths = c(1, 0.4))
pPar_wlz_combined

#fig2 <- plot_grid(p1, p2, p3, p4, labels = "AUTO", ncol = 2, align = 'v', axis = 'l')
fig2 <- plot_grid(pPar_laz_combined, pPar_wlz_combined, ncol = 2, labels = c("A", "B"), align = 'v', axis = 'l')
ggsave(fig2, file=paste0(here(),"/figures/manuscript figure composites/risk factor/fig2.png"), width=16, height=8)


ext_fig3 <- plot_grid(p3, p4, labels = "AUTO", ncol = 2, align = 'v', axis = 'l')
ggsave(ext_fig3, file=paste0(here(),"/figures/manuscript figure composites/risk factor/extended_data_fig3.png"), width=14, height=8)


#Figure 3
load(paste0(here::here(),"/results/fig-severe-outcome-comps.Rdata"))
load(paste0(here::here(), "/results/fig-age-strat-wast-plot-objects.Rdata"))
load(paste0(here::here(), "/results/rf_spline_objects.Rdata"))

pos = c(0.75,0.83)
p1 <- p1 + ggtitle("") +  theme(legend.position ="none" ) +guides(color = guide_legend("Maternal weight", nrow=3))
p2 <- p2 + ggtitle("") + theme(legend.position = "none") +guides(color = guide_legend("Maternal height", nrow=3))
p3 <- p3 + ggtitle("") + theme(legend.position = pos) + guides(color = guide_legend("Maternal weight", nrow=3))
p4 <- p4 + ggtitle("") +  theme(legend.position = pos) +guides(color = guide_legend("Maternal height", nrow=3))

#Titles
titleA <- ggdraw() + draw_label("Stratified by maternal height", fontface='bold')
titleB <- ggdraw() + draw_label("Stratified by maternal weight", fontface='bold')

#Faceted plots
Twoby1plotA <- plot_grid(p4, p2, labels = c("",""), ncol = 2)
Twoby1plotB <- plot_grid(p3, p1, labels = c("",""), ncol = 2)

Twoby1plotA_t <- plot_grid(titleA, Twoby1plotA, ncol=1, rel_heights=c(0.1, 1))
Twoby1plotB_t <- plot_grid(titleB, Twoby1plotB, ncol=1, rel_heights=c(0.1, 1))


Twoby1plot <- plot_grid(Twoby1plotA_t, Twoby1plotB_t, labels = "AUTO", ncol = 2, align = 'v', axis = 'l')

fig3 <- plot_grid(Twoby1plot, p_ageRR, p_severecomp, labels = c("","C","D"), ncol = 1, align = 'h', axis = 'l', rel_heights=c(1,2,1))
ggsave(fig3, file=paste0(here(),"/figures/manuscript figure composites/risk factor/fig3.png"), width=14, height=18)




#Figure 4
load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/fig-wasting-prior-to-stunting-plot-objects.Rdata")
p_earlywast <- p_earlywast + theme(axis.text.x=element_text(angle=45,vjust=0.5))

load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf_mortality_plot_objects.Rdata")
load(paste0(here::here(),"/figures/risk factor/fig-mortality-timing-plot-object.Rdata"))


pos1 = c(0.1, 0.85)
pos2 = c(0.5, 0.3)
pos3 = c(0.55, 0.3)
p1 <- p1 + theme(legend.position = pos1) #+guides(color = guide_legend("Maternal weight", nrow=3))
p2 <- p2 + theme(legend.position = pos2) #+guides(color = guide_legend("Maternal height", nrow=3))
p3 <- p3 + theme(legend.position = pos3) #+guides(color = guide_legend("Maternal height", nrow=3))

fig4a <- plot_grid(p_lagwhz, p_earlywast, labels = "AUTO", ncol = 2, align = 'v', axis = 'l', rel_widths=c(2,1))
fig4b <- plot_grid(p2, p3, p, p1, labels = c("C","D","E","F"), ncol = 2, align = 'v', axis = 'l')
fig4 <- plot_grid(fig4a, fig4b, labels = c("",""), ncol = 1, rel_heights = c(1,2))
ggsave(fig4, file=paste0(here(),"/figures/manuscript figure composites/risk factor/fig4.png"), width=14, height=14)


