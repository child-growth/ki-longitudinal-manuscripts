

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
require(ggmap)
require(cowplot)


# #Figure 3
# p_severecomp <- readRDS(paste0(BV_dir,"/results/fig-severe-outcome-comps.RDS"))[[1]]
# p_ageRR <- readRDS(paste0(BV_dir,"/results/fig-age-strat-wast-plot-objects.RDS"))[[1]]
# splines <- readRDS(paste0(BV_dir,"/figures/plot-objects/risk-factor/rf_spline_objects.RDS"))
# 
# p=list(p_severecomp, p_ageRR, splines)
# saveRDS(p, file=paste0(here::here(),"/data/fig4_plot_objects.RDS"))
p=readRDS(paste0(here::here(),"/data/fig4_plot_objects.RDS"))
p_severecomp=p[[1]]
splines=p[[3]]


p_ageRR <- readRDS(paste0(BV_dir, "/results/fig-age-strat-wast-plot-objects.RDS"))

plotdf = p_ageRR$plotdf
#p_ageRR = p_ageRR$p_ageRR

pd <- position_dodge(0.4)
outcomes <- c(
  `Ever stunted` = "",
  `Ever wasted` = "")
yticks <- c(0.25, 0.5, 0.8, 1, 1.2, 1.5, 2, 3)

#hbgdki pallet
tableau10 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
scaleFUN <- function(x) sprintf("%.1f", x)

reverse_column_factors = function(table){
  table$intervention_level <<- fct_rev(table$intervention_level)
}


p_ageRR <- ggplot(plotdf %>% filter(region=="Pooled", pooled==1), aes(x=intervention_level, y=RR, color=Outcome)) + 
  facet_grid(RFlabel~ Outcome + agecat, scales="free", labeller = labeller(Outcome = outcomes), switch = "y")+
  geom_hline(yintercept = 1) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Outcome),
                 alpha=0.5, size = 1) +
  geom_point(aes(y=RR), color="#878787", fill="#878787", size=1, stroke=0, alpha=0.5,
             position=position_jitter(width=0.2), data = plotdf %>% filter(pooled==0)) +
  geom_point(size = 3) +
  labs(x = "Exposure level", y = "Adjusted cumulative incidence ratio") +
  #geom_text(aes(x=.7, y = 2.1, label=paste0("N studies: ",max_Nstudies)), size=2.5,  hjust=1) +
  scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN, 
                     #limits = c(0.638,2.43), 
                     expand=c(0.05,0)) +
  #coord_cartesian() +
  scale_colour_manual(values=tableau10[c(2,3)]) +  
  ggtitle("Stunting incidence                                                                Wasting incidence")+
  theme(strip.background = element_blank(),
        legend.position="none",
        axis.text.y = element_text(size=13, hjust = 1),
        strip.text.x = element_text(size=13, face = "bold"),
        axis.title = element_text(size=18),
        strip.text.y = element_text(size=13, angle = 180, face = "bold"),
        strip.placement = "outside",
        axis.text.x = element_text(size=13, vjust = 0.5),
        panel.spacing = unit(0, "lines"),
        legend.box.background = element_rect(colour = "black"), 
        title = element_text(margin=margin(0,0,0,0))) +
  coord_flip(ylim = c(0.5,2.5))


p_severecomp2 <- p_severecomp +
  theme(        axis.text.y = element_text(size=14, hjust = 1),
                axis.title = element_text(size=16),
                strip.text.x = element_text(size=16, face = "bold"),
                axis.text.x = element_text(size=14, vjust = 0.5)) + 
  xlab("Cumulative from\nbirth to 24 months") +
  ylab("Adjusted cumulative incidence ratio comparing highest to lowest risk strata")



pos2 = pos = c(0.3,0.16)
pos2 = pos = c(0.3,0.18)

legend.background = theme_rect(col = "red", size = 2, fill = "blue")

p2 <- splines[[2]]  + ggtitle("") + 
  theme(legend.position = pos2, legend.spacing.y = unit(0.5, 'mm'),  legend.title=element_text(size=13), legend.text=element_text(size=12)) + 
  guides(color = guide_legend("Maternal\nheight", nrow=3)) + scale_y_continuous(limits=c(-1, 0.25), breaks = seq(-1.2, 0.45, 0.2), labels = round(seq(-1.2, 0.4, 0.2),1)) + 
  scale_x_continuous(limits=c(0,730), expand = c(0, 0), breaks = 0:6*30.41*4, labels = c(0, seq(4, 24, 4))) + 
  theme(axis.text.x = element_text(size=12), axis.text.y = element_text(size=12),
        legend.key.size = unit(0.5, "cm"), legend.spacing.y = unit(0, 'cm'), legend.key = element_blank(), legend.background = element_blank(), legend.box.background = element_rect(color = NA)) 
p4 <- splines[[4]]  + ggtitle("") +  
  theme(legend.position = pos, legend.spacing.y = unit(0.5, 'mm'),  legend.title=element_text(size=13), legend.text=element_text(size=12)) +
  guides(color = guide_legend("Maternal\nheight", nrow=3)) + scale_x_continuous(limits=c(0,730), expand = c(0, 0), breaks = 0:6*30.41*4, labels = c(0, seq(4, 24, 4))) + 
  theme(axis.text.x = element_text(size=12), axis.text.y = element_text(size=12),
        legend.key.size = unit(0.5, "cm"), legend.spacing.y = unit(0, 'cm'), legend.key = element_blank(), legend.background = element_blank(),legend.box.background = element_rect(color = NA))  +scale_y_continuous(limits=c(-2.4, -0.6), breaks = seq(-2.4, 0.4, 0.2), labels = round(seq(-2.4, 0.4, 0.2),1)) 
p5 <- splines[[6]]  + ggtitle("") + 
  theme(legend.position = pos, legend.spacing.y = unit(0.5, 'mm'),  legend.title=element_text(size=13), legend.text=element_text(size=12)) + 
  guides(color = guide_legend("Maternal\nBMI", nrow=3)) + scale_x_continuous(limits=c(0,730), expand = c(0, 0), breaks = 0:6*30.41*4, labels = c(0, seq(4, 24, 4))) + 
  theme(axis.text.x = element_text(size=12), axis.text.y = element_text(size=12),
        legend.key.size = unit(0.5, "cm"), legend.spacing.y = unit(0, 'cm'), legend.key = element_blank(), legend.background = element_blank(),legend.box.background = element_rect(color = NA)) +scale_y_continuous(limits=c(-2.4, -0.6), breaks = seq(-2.4, -0.4, 0.2), labels = round(seq(-2.4, -0.4, 0.2),1)) 
p6 <- splines[[5]]  + ggtitle("") +  
  theme(legend.position = pos2, legend.spacing.y = unit(0.5, 'mm'),  legend.title=element_text(size=13), legend.text=element_text(size=12)) + 
  guides(color = guide_legend("Maternal\nBMI", nrow=3)) + 
  scale_y_continuous(limits=c(-1, 0.25), breaks = seq(-1.2, 0.45, 0.2), labels = round(seq(-1.2, 0.4, 0.2),1)) + 
  scale_x_continuous(limits=c(0,730), expand = c(0, 0), breaks = 0:6*30.41*4, labels = c(0, seq(4, 24, 4))) + 
  theme(legend.key = element_blank(), legend.background = element_blank(),
        legend.box.background = element_rect(color = NA),
        axis.text.x = element_text(size=12), axis.text.y = element_text(size=12),
        legend.spacing.y = unit(0, 'cm'),
        legend.key.size = unit(0.5, "cm")) 

#Titles
titleA <- ggdraw() + draw_label("Stratified by maternal height", fontface='bold')
titleC <- ggdraw() + draw_label("Stratified by maternal BMI", fontface='bold')

#Faceted plots
Twoby1plotA <- plot_grid(p4, p2, labels = c("",""), ncol = 2)
Twoby1plotC <- plot_grid(p5, p6, labels = c("",""), ncol = 2)

Twoby1plotA_t <- plot_grid(titleA, Twoby1plotA, ncol=1, rel_heights=c(0.1, 1.5))
Twoby1plotC_t <- plot_grid(titleC, Twoby1plotC, ncol=1, rel_heights=c(0.1, 1,5))


Twoby1plot <- plot_grid(Twoby1plotA_t,  Twoby1plotC_t, labels = "auto", ncol = 2, align = 'v', axis = 'l')


fig4 <- plot_grid(Twoby1plot, p_ageRR, p_severecomp2, labels = c("","c","d"), ncol = 1, align = 'h', axis = 'l', rel_heights=c(1,2,1))
ggsave(plot = fig4, filename=paste0(here::here(),"/figures/manuscript-pdfs/c&c/Fig4_to_resize.pdf"), device='pdf', width=14, height=15)