##########################################
# ki longitudinal manuscripts
# stunting analysis

# figure: stacked bar chart showing 
# proportion of children who were newly stunted, 
# still stunted, relapsed, recovered, never stunted

# estimated with fixed effects pooling

# inputs: 
# stuntflow_pooled.RDS

# outputs: 
# fig-stunt-2-flow-overall--allage-re.png   

# figdata-stunt-2-flow-overall--allage-re.RDS   
##########################################
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

pooled = readRDS(paste0(res_dir, "stuntflow_pooled_fe.RDS"))

#-----------------------------------------
# apply new labels
#-----------------------------------------
pooled = pooled %>% mutate(
  classif = case_when(
    label == "Not stunted" ~ "No longer stunted",
    label == "Recovered" ~ "Stunting reversed",
    TRUE ~ label
  )
) %>%
  mutate(
    classif = factor(classif, levels = c(
      "Never stunted",
      "No longer stunted",
      "Stunting reversed",
      "Newly stunted",
      "Stunting relapse",
      "Still stunted"
    ))
  ) %>% 
  
  select(-label) %>%
  filter(as.numeric(as.character(agem)) <= 15)

#-----------------------------------------
# define color palette
#-----------------------------------------
pink_green = rev(brewer.pal(n = 6, name = "PiYG"))
pink_green[3] = "#CDF592"
pink_green[5] = "#EA67AE"
pink_green[4] = "#FFB7DC"

#-----------------------------------------
# create plot - overall
#-----------------------------------------
bar_plot_FE = ggplot(pooled) +
  geom_bar(aes(x = agem, y = est, fill = classif), 
           stat="identity", width=0.5, col = "black") +
  scale_fill_manual("", values = pink_green) +
  scale_color_manual(values = c(NA, 'black'), guide=F) +
  # scale_y_continuous(limits = c(0,101),
  #                    breaks = seq(0,100,20),
  #                    labels = seq(0,100,20)) +
  theme(axis.title.x = element_text(size=14),
        axis.title.y = element_text(size=14),
        legend.position = "bottom",
        legend.text = element_text(size=12)) +
  xlab("Child age, months") + 
  ylab("Percentage of children (%)")  + 
  guides(fill = guide_legend(nrow = 1)) 
bar_plot_FE


#-----------------------------------------
# define standardized plot names
#-----------------------------------------
bar_plot_FE_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "change in stunting status",
  population = "overall",
  location = "",
  age = "All ages",
  analysis = "fixed effects"
)

#-----------------------------------------
# save plot and underlying data
#-----------------------------------------
ggsave(bar_plot_FE, file=paste0(fig_dir, "stunting/fig-",
                                  bar_plot_FE_name,".png"), width=10, height=4)

saveRDS(pooled, file=paste0(figdata_dir_stunting, "figdata-",
                                  bar_plot_FE_name,".RDS"))
