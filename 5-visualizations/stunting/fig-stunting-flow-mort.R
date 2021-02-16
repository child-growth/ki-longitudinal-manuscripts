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

plot_overall = readRDS(paste0(res_dir, "stunt-flow-data-pooled-mort.RDS"))
plot_region = readRDS(paste0(res_dir, "stunt-flow-data-region-mort.RDS"))


#-----------------------------------------
# define color palette
#-----------------------------------------
pink_green = rev(brewer.pal(n = 7, name = "PiYG"))
pink_green[3] = "#CDF592"
pink_green[5] = "#EA67AE"
pink_green[4] = "#FFB7DC"
pink_green[6] = "#BF0C6D"
pink_green[7] = "#000000"
  
# #-----------------------------------------
# # create plot - overall
# #-----------------------------------------
# bar_plot_noRE = ggplot(plot_overall) +
#   geom_bar(aes(x = agem, y = percent, fill = classif), 
#            stat="identity", width=0.5, col = "black") +
#   scale_fill_manual("", values = pink_green) +
#   scale_color_manual(values = c(NA, 'black'), guide=F) +
#   scale_y_continuous(limits = c(0,101),
#                      breaks = seq(0,100,20),
#                      labels = seq(0,100,20)) +
#   theme(axis.title.x = element_text(size=14),
#         axis.title.y = element_text(size=14),
#         legend.position = "bottom",
#         legend.text = element_text(size=12)) +
#   xlab("Child age, months") + 
#   ylab("Percentage of children (%)")  + 
#   guides(fill = guide_legend(nrow = 1)) 
# bar_plot_noRE
# 
# #-----------------------------------------
# # create plot - stratified by region
# #-----------------------------------------
# bar_plot_noRE_region = ggplot(plot_region) +
#   geom_bar(aes(x = agem, y = percent, fill = classif), 
#            stat="identity", width=0.5, col = "black") +
#   scale_fill_manual("", values = pink_green) +
#   scale_color_manual(values = c(NA, 'black'), guide=F) +
#   scale_y_continuous(limits = c(0,101),
#                      breaks = seq(0,100,20),
#                      labels = seq(0,100,20)) +
#   theme(axis.title.x = element_text(size=14),
#         axis.title.y = element_text(size=14),
#         legend.position = "bottom",
#         legend.text = element_text(size=12)) +
#   xlab("Child age, months") + 
#   ylab("Percentage of children (%)")  + 
#   guides(fill = guide_legend(nrow = 1)) +
#   facet_grid(~region)
# bar_plot_noRE_region
# 
# 
# 
# #-----------------------------------------
# # define standardized plot names
# #-----------------------------------------
# bar_plot_noRE_name = create_name(
#   outcome = "stunting",
#   cutoff = 2,
#   measure = "change in stunting status",
#   population = "overall",
#   location = "",
#   age = "All ages",
#   analysis = "primary"
# )
# 
# bar_plot_noRE_region_name = create_name(
#   outcome = "stunting",
#   cutoff = 2,
#   measure = "change in stunting status",
#   population = "region-stratified",
#   location = "",
#   age = "All ages",
#   analysis = "primary"
# )
# 
# 
# #-----------------------------------------
# # save plot and underlying data
# #-----------------------------------------
# ggsave(bar_plot_noRE, file=paste0(fig_dir, "stunting/fig-",
#            bar_plot_noRE_name,".png"), width=10, height=4)
# ggsave(bar_plot_noRE_region, file=paste0(fig_dir, "stunting/fig-",
#             bar_plot_noRE_region_name,".png"), width=15, height=4)
# 
# saveRDS(plot_overall, file=paste0(figdata_dir_stunting, "figdata-",
#                                    bar_plot_noRE_name,".RDS"))
# saveRDS(plot_region, file=paste0(figdata_dir_stunting, "figdata-",
#                                  bar_plot_noRE_region_name,".RDS"))

#-----------------------------------------
# test plot 1
#-----------------------------------------
plot_overall = plot_overall %>% mutate(stuntcat = case_when(
  classif == "Never stunted" ~ "Never stunted or stunting reversed",
  classif == "No longer stunted" ~ "Never stunted or stunting reversed",
  classif == "Stunting reversed" ~ "Never stunted or stunting reversed",
  classif == "Newly stunted" ~ "Stunted or relapsed",
  classif == "Stunting relapse" ~ "Stunted or relapsed",
  classif == "Still stunted" ~ "Stunted or relapsed",
  classif == "Death" ~ "Stunted or relapsed"
))

p1 = ggplot(plot_overall %>% filter(stuntcat == "Never stunted or stunting reversed"), aes(x=agem, y = percent, group = classif))+
  geom_point(aes(col = classif, fill = classif), alpha = 0.5, shape = 19) +
  geom_line(aes(col = classif)) +
  scale_color_manual("", values = pink_green[1:7]) +
  scale_fill_manual("", values = pink_green[1:7]) +
  scale_y_continuous(limits = c(0,85)) +
  xlab("Child age, months") +
  ylab("Percentage") +
  facet_wrap(~stuntcat) + 
  theme(legend.position = "bottom") 
  
p2 = ggplot(plot_overall %>% filter(stuntcat == "Stunted or relapsed"), aes(x=agem, y = percent, group = classif))+
  geom_point(aes(col = classif, fill = classif), alpha = 0.5, shape = 19) +
  geom_line(aes(col = classif)) +
  scale_color_manual("", values = pink_green[4:7]) +
  scale_fill_manual("", values = pink_green[4:7]) +
  scale_y_continuous(limits = c(0,85)) +
  xlab("Child age, months") +
  ylab("Percentage") +
  facet_wrap(~stuntcat) + 
  theme(legend.position = "bottom") 

grid.arrange(p1, p2, ncol =2)

#-----------------------------------------
# test plot 2
#-----------------------------------------
plot_overall = plot_overall %>% mutate(classif2 = case_when(
  classif == "Never stunted" ~ "Never stunted",
  classif == "No longer stunted" ~ "Stunting reversed",
  classif == "Stunting reversed" ~ "Stunting reversed",
  classif == "Newly stunted" ~ "Newly stunted",
  classif == "Stunting relapse" ~ "Stunted",
  classif == "Still stunted" ~ "Stunted",
  classif == "Death" ~ "Death"
))

plot_overall2 = plot_overall %>% group_by(agem, region, classif2) %>% 
  summarize(n = sum(n),
            tot = sum(tot)) %>% 
  mutate(percent = n/tot *100) %>% 
  mutate(classif2 = factor(classif2, levels = c("Never stunted",
                                                "Stunting reversed",
                                                "Newly stunted",
                                                "Stunted",
                                                "Death")))

# plot among ever-stunted
ggplot(plot_overall2 %>% filter(classif2 !="Never stunted"), aes(x=agem, y = percent, group = classif2))+
  geom_point(aes(col = classif2, fill = classif2), alpha = 0.5, shape = 19) +
  geom_line(aes(col = classif2)) +
  scale_color_manual("", values = pink_green[c(2,5,6,7)]) +
  scale_fill_manual("", values = pink_green[c(2,5,6,7)]) +
  # scale_y_continuous(limits = c(0,85)) +
  xlab("Child age, months") +
  ylab("Percentage") +
  theme(legend.position = "bottom") 

