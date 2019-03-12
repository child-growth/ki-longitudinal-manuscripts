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

# load fake data
# stunt_data = readRDS(paste0(res_dir, "stuntflow_fake.RDS"))
# stunt_pool = readRDS(paste0(res_dir, "stuntflow_pooled_fake.RDS"))

# load real data
stunt_data = readRDS(paste0(res_dir, "stuntflow.RDS"))
stunt_pool = readRDS(paste0(res_dir, "stuntflow_pooled.RDS"))

#-----------------------------------------
# format data for plot
#-----------------------------------------
plot_data = stunt_data %>%
  mutate(classif = case_when(
    never_stunted == 1 ~ "Never stunted",
    prev_stunted == 1 ~ "Recovered",
    still_stunted == 1 ~ "Still stunted",
    newly_stunted == 1 ~ "Newly stunted",
    relapse == 1 ~ "Stunting relapse"

  )) %>%
  select(subjid, agecat, classif) %>%
  mutate(freq = 1) %>%
  mutate(classif = factor(classif, levels = c("Never stunted",
                                              "Recovered",
                                              "Stunting relapse",
                                              "Newly stunted",
                                              "Still stunted"
                                              )))


mycols = c("#11466B", tableau10[1], tableau10[4], "#FB5D5E", "#811818")

#-----------------------------------------
# stacked bar graphs using random effects pooled data
#-----------------------------------------
plot_data_pooled = stunt_pool %>%
  rename(classif = label) %>%
  select(agecat, classif, est) %>%
  mutate(classif = ifelse(classif=="Previously stunted", "Recovered", classif)) %>%
  mutate(classif = factor(classif, levels = c("Never stunted", 
                                              "Recovered",
                                              "Stunting relapse",
                                              "Newly stunted",
                                              "Still stunted"
  )))


bar_plot_RE = ggplot(plot_data_pooled) +
  geom_bar(aes(x = agecat, y = est, fill = classif), stat="identity", width=0.5) +
  scale_fill_manual("", values = mycols) +
  theme(legend.position = "bottom") +
  xlab("Child age") + ylab("Percentage of children")

ggsave(bar_plot_RE, file="figures/stunting/fig-stunting-stacked-bar-RE.png", width=10, height=5)

#-----------------------------------------
# stacked bar graphs NOT using random effects pooled data
#-----------------------------------------
age_classif_totals = plot_data %>%
  group_by(agecat, classif) %>%
  summarise(n = sum(freq))

age_totals = plot_data %>%
  group_by(agecat) %>%
  summarise(tot = sum(freq))

bar_plot_data = full_join(age_classif_totals, age_totals, by = c("agecat"))

bar_plot_data = bar_plot_data %>% mutate(percent = n/tot * 100)

bar_plot_noRE = ggplot(bar_plot_data) +
  geom_bar(aes(x = agecat, y = percent, fill = classif), stat="identity", width=0.5) +
  scale_fill_manual("", values = mycols) +
  theme(legend.position = "bottom") +
  xlab("Child age") + ylab("Percentage of children")

ggsave(bar_plot_noRE, file="figures/stunting/fig-stunting-stacked-bar-noRE.png", width=10, height=5)


#-----------------------------------------
# cross check prevalence - DELETE LATER
#-----------------------------------------
# cross-check prevalence
# bar_prev = bar_plot_data  %>%
#   filter(classif == "Newly stunted" | 
#            classif == "Still stunted" |
#            classif == "Stunting relapse") %>%
#   group_by(agecat) %>%
#   summarise(n = sum(n), tot = mean(tot)) %>%
#   mutate(prev = n/tot)

# d = readRDS(file="~/Dropbox/HBGD/Manuscripts/testdata2.RDS")
# da <- calc.prev.agecat(d)
# prevdata = summary.prev.haz(da)$prev.res 
# 
# da$stunted = ifelse(da$haz < -2, 1, 0)
# da %>% group_by(agecat) %>% summarise(stunting_prev = mean(stunted))





