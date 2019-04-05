##########################################
# ki longitudinal manuscripts
# stunting analysis

# figure: stacked bar chart showing 
# proportion of children who were newly stunted, 
# still stunted, relapsed, recovered, never stunted

# inputs: stuntflow.RDS, stuntflow_pooled.RDS

# outputs: fig-stunting-stacked-bar-RE.png,
# fig-stunting-stacked-bar-noRE.png
##########################################
#-----------------------------------------
# Stunting flow chart
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# load data
stunt_data = readRDS(paste0(res_dir, "stuntflow.RDS"))
stunt_pool = readRDS(paste0(res_dir, "stuntflow_pooled.RDS"))

# number of studies, countries, children included
length(names(table(stunt_data$studyid)))
length(names(table(stunt_data$country)))
x=stunt_data %>% group_by(studyid) %>% summarise(n = length(unique(subjid)))
sum(x$n)

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
# NOTE THIS PLOT IS CURRENTLY NOT RUNNING
# DUE TO UNDERLYING DATA ISSUES -- NOT PART OF MANUSCRIPT
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
                                                     "Still stunted"))) %>%
  # labels not using recovered
  mutate(classif3 = case_when(
    classifnew == "Never stunted" ~ "Never stunted",
    classifnew == "Still recovered" ~ "Still not stunted",
    classifnew == "Newly recovered" ~ "No longer stunted",
    classifnew == "Newly stunted" ~ "Newly stunted",
    classifnew == "Stunting relapse" ~ "Stunting relapse",
    classifnew == "Still stunted" ~ "Still stunted"
    
  )) %>%
  mutate(classif3 = factor(classif3, levels = c("Never stunted",
                                                "Still not stunted",
                                                "No longer stunted",
                                                "Newly stunted",
                                                "Stunting relapse",
                                                "Still stunted")))


bar_plot_data = bar_plot_data %>% 
  ungroup() %>%
  mutate(agem= as.factor(agem)) %>%
  mutate(stunted = as.factor(ifelse(classifnew %in%
    c("Never stunted", "Newly recovered", "Still recovered"), 0, 1)))

#-----------------------------------------
# define color palette
#-----------------------------------------

pink_green = rev(brewer.pal(n = 6, name = "PiYG"))
pink_green[3] = "#CDF592"
pink_green[5] = "#EA67AE"
pink_green[4] = "#FFB7DC"

#-----------------------------------------
# create plot
#-----------------------------------------

bar_plot_noRE = ggplot(bar_plot_data) +
  geom_bar(aes(x = agem, y = percent, fill = classif3), 
           stat="identity", width=0.5) +
  scale_fill_manual("", values = pink_green) +
  scale_color_manual(values = c(NA, 'black'), guide=F) +
  # Why isn't this working? 
  # scale_y_continuous(limits = c(0,100),
  #                    breaks = seq(0,100,20),
  #                    labels = seq(0,100,20)) +
  theme(axis.title.x = element_text(size=14),
        axis.title.y = element_text(size=14),
        legend.position = "bottom",
        legend.text = element_text(size=12)) +
  xlab("Child age, months") + 
  ylab("Percentage of children (%)")  + 
  guides(fill = guide_legend(nrow = 1)) 
bar_plot_noRE

#-----------------------------------------
# define standardized plot names
#-----------------------------------------
bar_plot_noRE_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "change in stunting status",
  population = "overall",
  location = "",
  age = "all",
  analysis = "primary"
)

# save plot and underlying data
ggsave(bar_plot_noRE, file=paste0("figures/stunting/fig-",bar_plot_noRE_name,".png"), width=10, height=4)

saveRDS(bar_plot_data, file=paste0("results/figure-data/figdata-",bar_plot_noRE_name,".RDS"))







