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



# #Figure 4
p4a <- readRDS(paste0(figdata_dir_stunting, "figdata-4a.RDS"))


plotdf_overall <- readRDS(file=paste0(figdata_dir_stunting, "figdata-stunt-2-flow-line-overall-allage-primary.RDS"))
plotdf_combine <- readRDS(file=paste0(figdata_dir_stunting, "figdata-stunt-2-flow-line-birthlaz-allage-primary.RDS"))
plotdf_overall <- plotdf_overall  %>% mutate(#cohort_country="Pooled", 
                                             birth_laz="Overall") %>% filter(!is.na(classif)) %>% droplevels()


plotdf <- bind_rows(plotdf_overall, plotdf_combine)
plotdf <- plotdf %>%
  mutate(birth_laz=factor(birth_laz, levels = c("Overall","Birth LAZ under -2", "Birth LAZ -2 to 0", "Birth LAZ 0 or more"))) %>%
  droplevels()



# make plot  -----------------------------------------------------
p4b = ggplot(plotdf , 
               aes(x=agem, y = percent))+
  facet_grid(classif ~birth_laz, scales = "free") +
  # cohort-specific
  geom_line(aes(group = cohort_country, col = classif), size = 0.5, alpha = 0.75,
            data = plotdf %>% filter(cohort_country!="Pooled")
  ) +
  # pooled
  geom_line(aes( group = cohort_country), size=0.7,
            data = plotdf %>% filter(cohort_country=="Pooled")
            ) +
  # pooled bounds
  geom_errorbar(aes(ymin = lb, 
                    ymax = ub,
                    group = cohort_country), size=0.5,
                data = plotdf %>% filter(cohort_country=="Pooled"),
                width = 0.3) +
  scale_color_manual("", values = c(pink_green[c(4,5)],"#ADDE66")) +
  xlab("Child age, months") +
  ylab("Incidence proportion (%)") +
  theme(legend.position = "none",
        panel.grid.minor = element_blank(),
        panel.grid.major.x = element_blank(),
        axis.title.x = element_text(size=14),
        axis.title.y = element_text(size=14))  +
  guides(color = guide_legend(nrow = 1, byrow = TRUE))  

p4b

p4 <- plot_grid(p4a[[1]], p4b, labels = c("a","b"), ncol = 1, rel_heights = c(1, 1.5))

ggsave(plot = p4, filename=paste0(here::here(),"/figures/manuscript-pdfs/stunting/Fig4.pdf"), device='pdf', width=12, height=10)



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
  


