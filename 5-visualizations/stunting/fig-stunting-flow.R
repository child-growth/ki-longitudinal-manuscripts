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


mycols = c("#092334", "#175E90", "#2796E3", "#FB5D5E", tableau10[4],  "#811818")
mycols = c("#4575b4", "#91bfdb", "#e0f3f8", "#fee090","#fc8d59", "#d73027")
#-----------------------------------------
# stacked bar graphs using random effects pooled data
#-----------------------------------------
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


bar_plot_RE = ggplot(plot_data_pooled) +
  geom_bar(aes(x = agem, y = est, fill = classif), stat="identity", width=0.5) +
  scale_fill_manual("", values = mycols) +
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

n=12
viridis_cols = viridis(
  n = n,
  alpha = 1,
  begin = 0,
  end = 1,
  direction = 1,
  option = "C"
)

d = data.frame(y = rep(5, n), x = as.factor(seq(1,n,1)))
ggplot(d, aes(x = x, y = y)) + 
  geom_point(aes(col = x), size=4)+
  scale_color_manual(values = viridis_cols)

plot_cols  = viridis_cols[c(2, 4, 6, 8, 10, 11)]

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

geom_bar(aes(clarity, fill = color, 
             
             # 1) set the border (i.e. the color aesthetic) based on whether the value
             # of the relevant variable (which also happens to be called color) is D
             color = color=='D')
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





