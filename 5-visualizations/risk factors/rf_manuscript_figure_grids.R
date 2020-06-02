

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
require(ggmap)
require(cowplot)

#Figure 2
rf_Zpar_plot_objects <- readRDS(paste0(here::here(), "/results/rf results/rf_Zpar_plot_objects.RDS"))
pPAR_laz <- rf_Zpar_plot_objects[[1]]
pPAR_wlz <- rf_Zpar_plot_objects[[2]]

rf_Zpar_margin_plot_objects <- readRDS(paste0(here::here(), "/results/rf results/rf_Zpar_margin_plot_objects.RDS"))
mtab_df_laz_tbl <- rf_Zpar_margin_plot_objects[[1]]
mtab_df_wlz_tbl <- rf_Zpar_margin_plot_objects[[2]]

p1 <- pPAR_laz + xlab("") #+ theme(axis.text = element_text(size=12))
p2 <- pPAR_wlz + xlab("") #+ theme(axis.text = element_text(size=12))

blank <- grid.rect(gp=gpar(col="white"))

#VIM Plots below
pVIMhaz <- readRDS(file=paste0(here::here(), "/results/rf results/fig-VIM-PAR-comp-object-LAZ.RDS"))
pVIMwhz <- readRDS(file=paste0(here::here(), "/results/rf results/fig-VIM-PAR-comp-object-WLZ.RDS"))


#embedded plots 
#https://www.r-bloggers.com/plots-within-plots-with-ggplot2-and-ggmap/
p1embed <- p1 + inset(ggplotGrob(pVIMhaz), xmin = 0, xmax = 10, ymin = 0.12, ymax = 0.58) 
#p1embed <- p1 + inset(ggplotGrob(pVIMhaz), xmin = 0, xmax = 9, ymin = 0.12, ymax = 0.58) 
p2embed <- p2 + inset(ggplotGrob(pVIMwhz), xmin = 0, xmax = 10, ymin = 0.12, ymax = 0.58)

pPar_laz_plot = grid.arrange(blank, p1embed, nrow = 2, heights = c(1.3, 20))
#pPar_laz_plot = grid.arrange(blank, p1embed, nrow = 2, heights = c(0.9, 20))
pPar_laz_plot_table = grid.arrange(mtab_df_laz_tbl, blank, nrow = 2, heights = c(12, 0.55))
#pPar_laz_plot_table = grid.arrange(mtab_df_laz_tbl, blank, nrow = 2, heights = c(12, 0.65))
pPar_laz_combined = plot_grid(pPar_laz_plot, NULL, pPar_laz_plot_table, ncol = 3, rel_widths = c(1, -0.05, 0.3))


pPar_wlz_plot = grid.arrange(blank, p2embed, nrow = 2, heights = c(1.3, 20))
#pPar_wlz_plot = grid.arrange(blank, p2embed, nrow = 2, heights = c(0.9, 20))
pPar_wlz_plot_table = grid.arrange(mtab_df_wlz_tbl, blank, nrow = 2, heights = c(12, 0.5))
#pPar_wlz_plot_table = grid.arrange(mtab_df_wlz_tbl, blank, nrow = 2, heights = c(12, 0.65))
pPar_wlz_combined = plot_grid(pPar_wlz_plot, NULL, pPar_wlz_plot_table, ncol = 3, rel_widths = c(1, -0.05, 0.3))

fig2 <- plot_grid(pPar_laz_combined, NULL, pPar_wlz_combined, ncol = 3, labels = c("a","", "b"), rel_widths = c(1, -0.05, 1))
ggsave(fig2, file=paste0(here(),"/figures/manuscript-figure-composites/risk-factor/fig2.png"), width=16, height=8)



# #Figure 2 - dissertation style
# rf_Zpar_plot_objects <- readRDS(paste0(here::here(), "/results/rf results/rf_Zpar_plot_objects_dissertation.RDS"))
# pPAR_laz <- rf_Zpar_plot_objects[[1]]
# pPAR_wlz <- rf_Zpar_plot_objects[[2]]
# 
# rf_Zpar_margin_plot_objects <- readRDS(paste0(here::here(), "/results/rf results/rf_Zpar_margin_plot_objects.RDS"))
# mtab_df_laz_tbl <- rf_Zpar_margin_plot_objects[[1]]
# mtab_df_wlz_tbl <- rf_Zpar_margin_plot_objects[[2]]
# 
# p1 <- pPAR_laz + xlab("") + theme(legend.position = c(0.77,0.425)) 
# p2 <- pPAR_wlz + xlab("") + theme(legend.position =  c(0.77,0.425)) 
# 
# blank <- grid.rect(gp=gpar(col="white"))
# 
# #VIM Plots below
# pVIMhaz <- readRDS(file=paste0(here::here(), "/results/rf results/fig-VIM-PAR-comp-object-LAZ-dissertation.RDS"))
# pVIMwhz <- readRDS(file=paste0(here::here(), "/results/rf results/fig-VIM-PAR-comp-object-WLZ-dissertation.RDS"))
# 
# 
# #embedded plots 
# #https://www.r-bloggers.com/plots-within-plots-with-ggplot2-and-ggmap/
# p1embed <- p1 + inset(ggplotGrob(pVIMhaz), xmin = 0, xmax = 10, ymin = 0.12, ymax = 0.58) 
# #p1embed <- p1 + inset(ggplotGrob(pVIMhaz), xmin = 0, xmax = 9, ymin = 0.12, ymax = 0.58) 
# p2embed <- p2 + inset(ggplotGrob(pVIMwhz), xmin = 0, xmax = 10, ymin = 0.12, ymax = 0.58)
# 
# pPar_laz_plot = grid.arrange(blank, p1embed, nrow = 2, heights = c(1.3, 20))
# #pPar_laz_plot = grid.arrange(blank, p1embed, nrow = 2, heights = c(0.9, 20))
# pPar_laz_plot_table = grid.arrange(mtab_df_laz_tbl, blank, nrow = 2, heights = c(12, 0.55))
# #pPar_laz_plot_table = grid.arrange(mtab_df_laz_tbl, blank, nrow = 2, heights = c(12, 0.65))
# pPar_laz_combined = plot_grid(pPar_laz_plot, NULL, pPar_laz_plot_table, ncol = 3, rel_widths = c(1, -0.05, 0.3))
# 
# 
# pPar_wlz_plot = grid.arrange(blank, p2embed, nrow = 2, heights = c(1.3, 20))
# #pPar_wlz_plot = grid.arrange(blank, p2embed, nrow = 2, heights = c(0.9, 20))
# pPar_wlz_plot_table = grid.arrange(mtab_df_wlz_tbl, blank, nrow = 2, heights = c(12, 0.5))
# #pPar_wlz_plot_table = grid.arrange(mtab_df_wlz_tbl, blank, nrow = 2, heights = c(12, 0.65))
# pPar_wlz_combined = plot_grid(pPar_wlz_plot, NULL, pPar_wlz_plot_table, ncol = 3, rel_widths = c(1, -0.05, 0.3))
# 
# fig2_diss <- plot_grid(pPar_laz_combined, NULL, pPar_wlz_combined, ncol = 3, labels = c("a","", "b"), rel_widths = c(1, -0.05, 1))
# ggsave(fig2_diss, file=paste0(here(),"/figures/manuscript-figure-composites/risk-factor/fig2-dissertation.png"), width=16, height=8)



#Figure 3
p_severecomp <- readRDS(here("/results/fig-severe-outcome-comps.RDS"))[[1]]
p_ageRR <- readRDS(here("/results/fig-age-strat-wast-plot-objects.RDS"))[[1]]
splines <- readRDS(here("/figures/plot-objects/risk-factor/rf_spline_objects.RDS"))

#pos = c(0.75,0.83) #For 2 panels
#pos = c(0.45,0.83)
pos = c(0.3,0.15)
#pos = c(0,0.2)

p1 <- splines[[1]] + ggtitle("") +  theme(legend.position ="none" ) + scale_y_continuous(limits=c(-1.2, 0.4), breaks = seq(-1.2, 0.4, 0.2), labels = round(seq(-1.2, 0.4, 0.2),1)) + scale_x_continuous(limits=c(0,730), expand = c(0, 0), breaks = 0:6*30.41*4, labels = c(0, seq(4, 24, 4)))
p2 <- splines[[2]]  + ggtitle("") + theme(legend.position = "none")+ scale_y_continuous(limits=c(-1.2, 0.4), breaks = seq(-1.2, 0.4, 0.2), labels = round(seq(-1.2, 0.4, 0.2),1)) + scale_x_continuous(limits=c(0,730), expand = c(0, 0), breaks = 0:6*30.41*4, labels = c(0, seq(4, 24, 4)))
p3 <- splines[[3]]  + ggtitle("") + theme(legend.position = pos,  legend.title=element_text(size=8), legend.text=element_text(size=6)) + guides(color = guide_legend("Maternal\nweight", nrow=3)) + scale_x_continuous(limits=c(0,730), expand = c(0, 0), breaks = 0:6*30.41*4, labels = c(0, seq(4, 24, 4))) + theme(legend.key = element_blank(), legend.background = element_blank())  +scale_y_continuous(limits=c(-2.4, -0.4), breaks = seq(-2.4, 0.4, 0.2), labels = round(seq(-2.4, 0.4, 0.2),1)) 
p4 <- splines[[4]]  + ggtitle("") +  theme(legend.position = pos,  legend.title=element_text(size=8), legend.text=element_text(size=6)) +guides(color = guide_legend("Maternal\nheight", nrow=3)) + scale_x_continuous(limits=c(0,730), expand = c(0, 0), breaks = 0:6*30.41*4, labels = c(0, seq(4, 24, 4))) + theme(legend.key = element_blank(), legend.background = element_blank())  +scale_y_continuous(limits=c(-2.4, -0.4), breaks = seq(-2.4, 0.4, 0.2), labels = round(seq(-2.4, 0.4, 0.2),1)) 
p5 <- splines[[6]]  + ggtitle("") + theme(legend.position = pos,  legend.title=element_text(size=8), legend.text=element_text(size=6)) + guides(color = guide_legend("Maternal\nBMI", nrow=2)) + scale_color_manual(values=c(tableau10[6], "#c99a6b"), labels = c(">=18.5", "<18.5")) + scale_x_continuous(limits=c(0,730), expand = c(0, 0), breaks = 0:6*30.41*4, labels = c(0, seq(4, 24, 4))) + theme(legend.key = element_blank(), legend.background = element_blank()) +scale_y_continuous(limits=c(-2.4, -0.4), breaks = seq(-2.4, -0.4, 0.2), labels = round(seq(-2.4, -0.4, 0.2),1)) 
p6 <- splines[[5]]  + ggtitle("") +  theme(legend.position = "none")+ scale_y_continuous(limits=c(-1.2, 0.4), breaks = seq(-1.2, 0.4, 0.2), labels = round(seq(-1.2, 0.4, 0.2),1)) + scale_x_continuous(limits=c(0,730), expand = c(0, 0), breaks = 0:6*30.41*4, labels = c(0, seq(4, 24, 4))) + scale_x_continuous(limits=c(0,730), expand = c(0, 0), breaks = 0:6*30.41*4, labels = c(0, seq(4, 24, 4))) + theme(legend.key = element_blank(), legend.background = element_blank()) +scale_y_continuous(limits=c(-1.4, 0.4), breaks = seq(-1.4, 0.4, 0.2), labels = round(seq(-1.4, 0.4, 0.2),1)) 



#Titles
titleA <- ggdraw() + draw_label("Stratified by maternal height", fontface='bold')
titleB <- ggdraw() + draw_label("Stratified by maternal weight", fontface='bold')
titleC <- ggdraw() + draw_label("Stratified by maternal BMI", fontface='bold')

#Faceted plots
Twoby1plotA <- plot_grid(p4, p2, labels = c("",""), ncol = 2)
Twoby1plotB <- plot_grid(p3, p1, labels = c("",""), ncol = 2)
Twoby1plotC <- plot_grid(p5, p6, labels = c("",""), ncol = 2)

Twoby1plotA_t <- plot_grid(titleA, Twoby1plotA, ncol=1, rel_heights=c(0.1, 1))
Twoby1plotB_t <- plot_grid(titleB, Twoby1plotB, ncol=1, rel_heights=c(0.1, 1))
Twoby1plotC_t <- plot_grid(titleC, Twoby1plotC, ncol=1, rel_heights=c(0.1, 1))


Twoby1plot <- plot_grid(Twoby1plotA_t, Twoby1plotB_t, Twoby1plotC_t, labels = "auto", ncol = 3, align = 'v', axis = 'l')

fig3 <- plot_grid(Twoby1plot, p_ageRR, p_severecomp, labels = c("","d","e"), ncol = 1, align = 'h', axis = 'l', rel_heights=c(1,2,1))
ggsave(fig3, file=paste0(here(),"/figures/manuscript-figure-composites/risk-factor/fig3.png"), width=14, height=18)






#Figure 4
#p_lagwhz <- readRDS(here("figures/plot objects/risk factor/fig-WLZ-quart-stunt-CI.rds"))
p_earlywast <- readRDS(here("figures/plot-objects/risk-factor/fig-wasting-prior-to-stunting.rds"))
plotdf2 <- readRDS(here("figures/risk-factor/figure-data/fig-wasting-prior-to-stunting.rds"))


plen_lagwhz <- readRDS(here("/figures/plot-objects/risk-factor/fig-WLZ-quart-len-vel.rds"))


#load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf_mortality_plot_objects.Rdata")
pmort <- readRDS(here("results/rf_mort+morb_plot_object.RDS"))
# p <- readRDS(here("/results/fig-mortality-timing-plot-object.RDS"))
# p <- p + theme(legend.position = c(0.9, 0.35)) 


# pos1 = c(0.25, 0.8)
# pos2 = c(0.77, 0.3)
# pos3 = c(0.77, 0.3)
# p1 <- p1 + theme(legend.position = "none") #+guides(color = guide_legend("Maternal weight", nrow=3))
# p2 <- p2 + theme(legend.position = "none") #+guides(color = guide_legend("Maternal height", nrow=3))
# p3 <- p3 + theme(legend.position = "none") #+guides(color = guide_legend("Maternal height", nrow=3))
fig4a <- plot_grid(plen_lagwhz, p_earlywast, labels = "auto", ncol = 2, align = 'v', axis = 'l', rel_widths=c(2,1))
# fig4b <- plot_grid(p2, p3, p, p1, labels = c("C","D","E","F"), ncol = 2) #, align = 'v', axis = 'l')
# fig4 <- plot_grid(fig4a, fig4b, labels = c("",""), ncol = 1, rel_heights = c(1,2))

fig4  <- plot_grid(fig4a, pmort, labels = c("","c"), ncol = 1, rel_heights = c(1,1))
ggsave(fig4, file=paste0(here(),"/figures/manuscript-figure-composites/risk-factor/fig4.png"), width=14, height=6)



#Extended data figure 3
load(paste0(here::here(),"/results/rf results/rf_paf_plot_objects.Rdata"))
p3 <- pPAF_stunt + xlab("") + theme(axis.text = element_text(size=12))
p4 <- pPAF_wast + xlab("") + theme(axis.text = element_text(size=12))

ext_fig3 <- plot_grid(p3, p4, labels = "auto", ncol = 2, align = 'v', axis = 'l')
ggsave(ext_fig3, file=paste0(here(),"/figures/manuscript-figure-composites/risk-factor/extended_data_fig3.png"), width=14, height=8)

