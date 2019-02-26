#-----------------------------------------
# Stunting flow chart
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# load fake data
stunt_data = readRDS(paste0(res_dir, "fakeflow.RDS"))

plot_data = stunt_data %>%
  mutate(classif = case_when(
    never_stunted == 1 ~ "Never stunted",
    prev_stunted == 1 ~ "Recovered",
    still_stunted == 1 ~ "Still stunted",
    newly_stunted == 1 ~ "Newly stunted"
  )) %>%
  select(subjid, agecat, classif) %>%
  mutate(freq = 1) %>%
  mutate(classif = factor(classif, levels = c("Never stunted", 
                                              "Recovered",
                                              "Newly stunted",
                                              "Still stunted"
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

ggsave(flow_plot, file="figures/stunting/pool_flow_fake.png", width=10, height=5)



