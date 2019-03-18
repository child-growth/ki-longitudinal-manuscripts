##########################################
# ki longitudinal manuscripts
# stunting analysis

# figure: stacked bar chart showing 
# proportion of children who were newly stunted, 
# still stunted, relapsed, recovered, never stunted
##########################################
#-----------------------------------------
# Stunting flow chart
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# load data
stunt_data = readRDS(paste0(res_dir, "stuntflow.RDS"))
stunt_pool = readRDS(paste0(res_dir, "stuntflow_pooled.RDS"))

#-----------------------------------------
# format data for plot
#-----------------------------------------
plot_data = stunt_data %>%
  ungroup() %>%
  mutate(classif = case_when(
    never_stunted == 1 ~ "Never stunted",
    recover == 1 ~ "Recovered",
    not_stunted == 1 ~ "Not stunted",
    still_stunted == 1 ~ "Still stunted",
    newly_stunted == 1 ~ "Newly stunted",
    relapse == 1 ~ "Stunting relapse"

  )) %>%
  select(subjid, agem, classif) %>%
  mutate(freq = 1) %>%
  mutate(classif = factor(classif, levels = c("Never stunted",
                                              "Not stunted",
                                              "Recovered",
                                              "Stunting relapse",
                                              "Newly stunted",
                                              "Still stunted"
                                              )))

plot_data_pooled = stunt_pool %>%
  rename(classif = label) %>%
  select(agem, classif, est) %>%
  mutate(classif = factor(classif, levels = c("Never stunted", 
                                              "Not stunted",
                                              "Recovered",
                                              "Newly stunted",
                                              "Stunting relapse",
                                              "Still stunted"
  )))

# drop measurements beyond 15 months since
# data is sparse
plot_data = plot_data %>% filter(agem<=15)
plot_data_pooled = plot_data_pooled %>% 
  mutate(agem = as.numeric(as.character(agem))) %>%
  filter(agem<=15)

#-----------------------------------------
# define color palette
#-----------------------------------------
n=12
viridis_cols = viridis(
  n = n,
  alpha = 1,
  begin = 0,
  end = 1,
  direction = 1,
  option = "C"
)

plot_cols  = viridis_cols[c(2, 4, 6, 8, 10, 11)]

#-----------------------------------------
# stacked bar graphs using random effects pooled data
#-----------------------------------------

bar_plot_RE = ggplot(plot_data_pooled) +
  geom_bar(aes(x = agem, y = est, fill = classif), stat="identity", width=0.5) +
  scale_fill_manual("", values = plot_cols) +
  theme(legend.position = "bottom") +
  xlab("Child age, months") + ylab("Percentage of children")

ggsave(bar_plot_RE, file="figures/stunting/fig-stunting-stacked-bar-RE.png", width=10, height=5)

#-----------------------------------------
# stacked bar graphs NOT using random effects pooled data
#-----------------------------------------
age_classif_totals = plot_data %>%
  group_by(agem, classif) %>%
  summarise(n = sum(freq))

age_totals = plot_data %>%
  group_by(agem) %>%
  summarise(tot = sum(freq))

bar_plot_data = full_join(age_classif_totals, age_totals, by = c("agem"))

bar_plot_data = bar_plot_data %>% 
  mutate(percent = n/tot * 100,
         classifnew = as.character(classif)) %>%
  mutate(classifnew = ifelse(classif=="Not stunted", "Still recovered", classifnew),
         classifnew = ifelse(classif=="Recovered", "Newly recovered", classifnew),
         classifnew = factor(classifnew, levels = c("Never stunted", 
                                                     "Still recovered",
                                                     "Newly recovered",
                                                     "Newly stunted",
                                                     "Stunting relapse",
                                                     "Still stunted")))

bar_plot_data = bar_plot_data %>% 
  ungroup() %>%
  mutate(agem= as.factor(agem)) %>%
  mutate(stunted = as.factor(ifelse(classifnew %in%
    c("Never stunted", "Newly recovered", "Still recovered"), 0, 1)))

bar_plot_noRE = ggplot(bar_plot_data) +
  geom_bar(aes(x = agem, y = percent, fill = classifnew), 
           stat="identity", width=0.5) +
  scale_fill_manual("", values = plot_cols) +
  scale_color_manual(values = c(NA, 'black'), guide=F) +
  # Why isn't this working? 
  # scale_y_continuous(limits = c(0,100),
  #                    breaks = seq(0,100,20),
  #                    labels = seq(0,100,20)) +
  theme(legend.position = "bottom") +
  xlab("Child age, months") + 
  ylab("Percentage of children (%)")  + 
  guides(fill = guide_legend(nrow = 1))
bar_plot_noRE

ggsave(bar_plot_noRE, file="figures/stunting/fig-stunting-stacked-bar-noRE.png", width=10, height=5)





