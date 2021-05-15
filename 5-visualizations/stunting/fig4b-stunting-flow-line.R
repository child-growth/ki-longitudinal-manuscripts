##########################################
# ki longitudinal manuscripts
# stunting analysis

# figure: stacked bar chart showing 
# proportion of children who were newly stunted, 
# still stunted, relapsed, recovered, never stunted

# includes category for mortality
# stratified by region and cohort

# inputs: 
# stunt-flow-data-pooled.RDS
# stunt-flow-data-region.RDS
# stunt-flow-data-cohort.RDS

# outputs: UPDATE
# fig-stunt-2-flow-overall--allage-primary.png
# fig-stunt-2-flow-region--allage-primary.png

# figdata-stunt-2-flow-overall--allage-primary.RDS
# figdata-stunt-2-flow-region--allage-primary.RDS
##########################################
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

plot_overall = readRDS(paste0(res_dir, "stunt-flow-data-pooled.RDS"))
plot_region = readRDS(paste0(res_dir, "stunt-flow-data-region.RDS"))

# define color palette -----------------------------------------------------
pink_green = rev(brewer.pal(n = 7, name = "PiYG"))
pink_green[3] = "#CDF592"
pink_green[5] = "#EA67AE"
pink_green[4] = "#FFB7DC"
pink_green[6] = "#BF0C6D"
pink_green[7] = "#000000"



# plot prevalence outcomes -----------------------------------------------------
p_prev = ggplot(plot_overall %>% filter(classif=="Never stunted" |
                                          classif=="No longer stunted"|
                                          classif=="Still stunted"), 
                aes(x=agem, y = percent, group = classif))+
  geom_point(aes(col = classif, fill = classif), alpha = 0.5, shape = 19) +
  geom_line(aes(col = classif)) +
  scale_color_manual("", values = pink_green[c(1,2,6)]) +
  scale_fill_manual("", values = pink_green[c(1,2,6)]) +
  scale_y_continuous(limits = c(0,88), breaks = seq(0,80,20), labels = seq(0,80,20)) +
  xlab("Child age, months") +
  ylab("Percentage of children (%)") +
  theme(legend.position = "bottom",
        legend.text=element_text(size=12))  +
  guides(color = guide_legend(nrow = 1, byrow = TRUE))

p_prev

# plot incidence outcomes -----------------------------------------------------
p_inc = ggplot(plot_overall %>% filter(classif!="Never stunted" & 
                                         classif!="No longer stunted" & 
                                         classif!="Still stunted"), 
               aes(x=agem, y = percent, group = classif))+
  geom_point(aes(col = classif, fill = classif), alpha = 0.5, shape = 19) +
  geom_line(aes(col = classif)) +
  scale_color_manual("", values = pink_green[c(3,4,5)]) +
  scale_fill_manual("", values = pink_green[c(3,4,5)]) +
  # scale_y_continuous(limits = c(0,88), breaks = seq(0,80,20), labels = seq(0,80,20)) +
  xlab("Child age, months") +
  ylab("Incidence proportion (%)") +
  theme(legend.position = "bottom",
        legend.text=element_text(size=12))  +
  guides(color = guide_legend(nrow = 1, byrow = TRUE))

p_inc

# Combine plots -----------------------------------------------------

arrange_figures = grid.arrange(p_prev, 
                               p_inc, 
                               nrow = 1, ncol = 2)

# save plot and underlying data -----------------------------------------------------
ggsave(p, file=paste0(fig_dir, "stunting/fig-stunt-2-flow-line-overall-allage-primary.png"), 
       width=6, height=3.5)
saveRDS(plot_overall, file=paste0(figdata_dir_stunting, "figdata-stunt-2-flow-line-overall-allage-primary.RDS"))
