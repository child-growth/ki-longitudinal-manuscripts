#-----------------------------------------
# Stunting flow chart
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# load fake data
stunt_data = readRDS(paste0(res_dir, "fakeflow.RDS"))

# load real data
# stunt_data = readRDS(paste0(res_dir, "stuntflow.RDS"))

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

#-----------------------------------------
# Alluvial flow plot
#-----------------------------------------
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

#ggsave(flow_plot, file="figures/stunting/pool_flow_fake.png", width=10, height=5)
ggsave(flow_plot, file="figures/stunting/pool_flow.png", width=10, height=5)

#-----------------------------------------
# bar graphs without alluvival flow between each child
#-----------------------------------------
age_classif_totals = plot_data %>%
  group_by(agecat, classif) %>%
  summarise(n = sum(freq))

age_totals = plot_data %>%
  group_by(agecat) %>%
  summarise(tot = sum(freq))

bar_plot_data = full_join(age_classif_totals, age_totals, by = c("agecat"))

bar_plot_data = bar_plot_data %>% mutate(percent = n/tot * 100)

ggplot(bar_plot_data) +
  geom_bar(aes(x = agecat, y = percent, fill = classif), stat="identity", width=0.5) +
  scale_fill_manual("", values = mycols) +
  theme(legend.position = "bottom") +
  xlab("Child age") + ylab("Percentage of children")






