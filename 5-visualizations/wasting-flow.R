#-----------------------------------------
# Wasting flow chart
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# load real data
wast_data = readRDS(paste0(res_dir, "wastflow.RDS"))

plot_data = wast_data %>%
  mutate(classif = case_when(
    never_wasted == 1 ~ "Never wasted",
    prev_wasted == 1 ~ "Recovered",
    still_wasted == 1 ~ "Still wasted",
    newly_wasted == 1 ~ "Newly wasted"
  )) %>%
  select(subjid, agecat, classif) %>%
  mutate(freq = 1) %>%
  mutate(classif = factor(classif, levels = c("Never wasted", 
                                              "Recovered",
                                              "Newly wasted",
                                              "Still wasted"
  )))

mycols = c("#11466B", tableau10[1], tableau10[4], "#811818")

flow_plot = ggplot(plot_data,
                   aes(x = agecat,  
                       alluvium = subjid,
                       stratum = classif,
                       fill = classif, 
                       label = classif)) +
  geom_flow(stat = "alluvium", lode.guidance = "rightleft",
            color = "darkgray") +
  geom_stratum()  +
  scale_fill_manual("", values = mycols) +
  theme(legend.position = "bottom") +
  xlab("Child age") + ylab("Number of children")

ggsave(flow_plot, file="figures/wasting/pool_wast_flow.png", width=10, height=5)



