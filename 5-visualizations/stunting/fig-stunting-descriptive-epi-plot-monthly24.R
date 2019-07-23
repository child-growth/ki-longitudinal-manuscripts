##########################################
# ki longitudinal manuscripts
# stunting analysis
#
# plots of mean LAZ, stunting incidence, 
# and stunting prevalence
# 
# sensitivity analysis that subsets cohorts to those with 
# monthly measurements each month from 0 to 24 months

# inputs: desc_data_cleaned.Rdata, quantile_data_stunting_monthly24.Rdata

# outputs: 
# fig-laz-2-mean-overall_region--allage-month24.png
# fig-laz-2-quant-overall_region--allage-month24.png
# fig-stunt-2-prev-overall_region--allage-month24.png
# fig-stunt-3-prev-overall_region--allage-month24.png
# fig-stunt-2-inc-overall_region--allage-month24.png
# fig-stunt-3-inc-overall_region--allage-month24.png

# figdata-laz-2-mean-overall_region--allage-month24.RDS
# figdata-laz-2-quant-overall_region--allage-month24.RDS
# figdata-stunt-2-prev-overall_region--allage-month24.RDS
# figdata-stunt-3-prev-overall_region--allage-month24.RDS
# figdata-stunt-2-inc-overall_region--allage-month24.RDS
# figdata-stunt-3-inc-overall_region--allage-month24.RDS

##########################################

#-----------------------------------
# preamble
#-----------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Plot themes
theme_set(theme_ki())

#Load data
load(paste0(here::here(),"/results/desc_data_cleaned.Rdata"))

#Quantile data (object: quantile_d)
quantile_d <- readRDS(paste0(here::here(),"/results/quantile_data_stunting_monthly24.rds"))


d$nmeas.f <- clean_nmeans(d$nmeas)

# subset to primary analysis
d <- d %>% filter(analysis == "Cohorts monthly 0-24 m")


#-------------------------------------------------------------------------------------------
# Mean LAZ by month 
#-------------------------------------------------------------------------------------------

df <- d %>% filter(
  disease == "Stunting" &
    measure == "Mean LAZ" &
    birth == "yes" &
    severe == "no" &
    age_range == "1 month" &
    cohort == "pooled" 
)

df <- droplevels(df)

df <- df %>% 
  arrange(agecat) %>%
  filter(!is.na(agecat)) %>%
  filter(!is.na(region)) %>%
  mutate(agecat = as.character(agecat)) %>%
  mutate(agecat = ifelse(agecat == "Two weeks", ".5", agecat)) %>%
  mutate(agecat = gsub(" month", "", agecat)) %>%
  mutate(agecat = gsub(" months", "", agecat)) %>%
  mutate(agecat = gsub("s", "", agecat)) %>%
  mutate(agecat = ifelse(agecat == "One", "1", agecat)) %>%
  mutate(agecat = as.numeric(agecat)) 
  

#-------------------------------------------------------------------------------------------
# Mean LAZ by month 
#-------------------------------------------------------------------------------------------

mean_laz_plot <- ggplot(df,aes(y=est,x=agecat, group=region)) +
  stat_smooth(aes(fill=region, color=region), se=F, span = 0.5) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10), 
                     limits = c(-2.2, 0.5)) + 
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) + 
  scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
                    name = 'Region') +
  scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
                     name = 'Region') +
  xlab("Child age, months")+
  ylab("Length-for-age Z-score") +
  ggtitle("") +
  theme(legend.position="right")

# define standardized plot names
mean_laz_plot_name = create_name(
  outcome = "LAZ",
  cutoff = 2,
  measure = "mean",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "monthly cohorts measured each month from 0 to 24"
)

# save plot and underlying data
ggsave(mean_laz_plot, file=paste0(fig_dir, "stunting/fig-",mean_laz_plot_name,".png"), width=10, height=4)
saveRDS(df, file=paste0(figdata_dir, "figdata-",mean_laz_plot_name,".RDS"))


#-------------------------------------------------------------------------------------------
# Mean LAZ by month with quantiles
#-------------------------------------------------------------------------------------------

#df <- bind_rows(quantile_d, quantile_d_overall)
df <- quantile_d

df$agecat <- factor(df$agecat, 
                    levels=c("Two weeks", "One month",
                             paste0(2:24," months")))

df <- df %>% 
  arrange(agecat) %>%
  filter(region!="Europe")
df <-droplevels(df)


df <- df %>% 
  ungroup(agecat) %>%
  arrange(agecat) %>%
  filter(!is.na(agecat)) %>%
  filter(!is.na(region)) %>%
  mutate(agecat = as.character(agecat)) %>%
  mutate(agecat = ifelse(agecat == "Two weeks", ".5", agecat)) %>%
  mutate(agecat = gsub(" month", "", agecat)) %>%
  mutate(agecat = gsub(" months", "", agecat)) %>%
  mutate(agecat = gsub("s", "", agecat)) %>%
  mutate(agecat = ifelse(agecat == "One", "1", agecat)) %>%
  mutate(agecat = as.numeric(agecat)) %>%
  mutate(region = ifelse(region=="Asia", "South Asia", region)) %>% 
  gather(`ninetyfifth_perc`, `fiftieth_perc`, `fifth_perc`, key = "interval", value = "LAZ") %>% 
  mutate(region = factor(region, levels = c("Overall", "Africa", "Latin America", "South Asia"))) %>%
  mutate(region_who = case_when(
    region == "Overall" ~ "OVERALL",
    region == "Africa" ~ "AFRO",
    region == "South Asia" ~ "SEARO",
    region == "Latin America" ~ "PAHO"
  )) %>%
  mutate(region_who = factor(region_who, levels = c("OVERALL", "AFRO", "SEARO", "PAHO")))
  
mean_laz_quantile_plot <- ggplot(df,aes(x = agecat, group = region)) +
  
  geom_smooth(aes(y = LAZ, color = region, group = interval, linetype = interval), se = F, span = 0.5) +
  
  
  facet_grid(~region_who) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,6), labels = seq(0,24,6)) + 
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) + 

  scale_color_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C"), drop=TRUE, limits = levels(df$measure), 
                     name = 'Region') +
  scale_linetype_manual(name = "interval", values = c("fiftieth_perc" = "solid",
                                   "ninetyfifth_perc" = "dashed",
                                   "fifth_perc" = "dotted"),
                        breaks = c("fiftieth_perc",
                                   "ninetyfifth_perc",
                                   "fifth_perc"),
                        labels = c("Mean", "95th percentile", "5th percentile")) +
  xlab("Child age, months") +
  ylab("Length-for-age Z-score") +
  ggtitle("") +
  theme(strip.text = element_text(margin=margin(t=5))) +
  guides(linetype = guide_legend(override.aes = list(col = 'black'), 
                                 keywidth = 3, keyheight = 1),
           colour = FALSE) +
  theme(legend.position = "bottom",
        legend.title = element_blank(),
        legend.background = element_blank(),
        legend.box.background = element_rect(colour = "black"))


# define standardized plot names
mean_laz_quantile_plot_name = create_name(
  outcome = "LAZ",
  cutoff = 2,
  measure = "quantile",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "monthly cohorts measured each month from 0 to 24"
)

# save plot and underlying data
ggsave(mean_laz_quantile_plot, 
       file=paste0(fig_dir, "stunting/fig-",mean_laz_quantile_plot_name,".png"), 
       width=14, height=4)

saveRDS(df, file=paste0(figdata_dir, "figdata-",mean_laz_quantile_plot_name,".RDS"))






#-------------------------------------------------------------------------------------------
# Stunting prevalence
#-------------------------------------------------------------------------------------------
prev_plot <- ki_desc_plot(d,
                   Disease="Stunting",
                   Measure="Prevalence", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="3 months", 
                   Cohort="pooled",
                   xlabel="Child age, months",
                   ylabel='Point Prevalence (95% CI)',
                   h1=69,
                   h2=72)
prev_plot

# define standardized plot names
prev_plot_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "prevalence",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "monthly cohorts measured each month from 0 to 24"
)

# save plot and underlying data
ggsave(prev_plot, file=paste0(fig_dir, "stunting/fig-",prev_plot_name, ".png"), width=14, height=3)

saveRDS(d, file=paste0(figdata_dir, "figdata-",prev_plot_name,".RDS"))




#-------------------------------------------------------------------------------------------
# Stunting prevalence - severe 
#-------------------------------------------------------------------------------------------
prev_plot_sev <- ki_desc_plot(d,
                              Disease="Stunting",
                              Measure="Prevalence", 
                              Birth="yes", 
                              Severe="yes", 
                              Age_range="3 months", 
                              Cohort="pooled",
                              xlabel="Child age, months",
                              ylabel='Point Prevalence (95% CI)',
                              h1=69,
                              h2=72)
prev_plot_sev


# define standardized plot names
prev_plot_sev_name = create_name(
  outcome = "stunting",
  cutoff = 3,
  measure = "prevalence",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "monthly cohorts measured each month from 0 to 24"
)

# save plot and underlying data
ggsave(prev_plot_sev, file=paste0(fig_dir, "stunting/fig-",prev_plot_sev_name, ".png"), width=14, height=3)

saveRDS(d, file=paste0(figdata_dir, "figdata-",prev_plot_sev_name,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting cumulative incidence + incidence proportion
#-------------------------------------------------------------------------------------------

ci_inc_plot <- ki_combo_plot(d,
                        Disease="Stunting",
                        Measure=c("Cumulative incidence", "Incidence_proportion"), 
                        Birth="yes", 
                        Severe="no", 
                        Age_range="3 months", 
                        Cohort="pooled",
                        xlabel="Child age, months",
                        h1=85,
                        h2=90)
ci_inc_plot



# define standardized plot names
ci_inc_plot_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "incidence",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "monthly cohorts measured each month from 0 to 24"
)

# save plot and underlying data
ggsave(ci_inc_plot, file=paste0(fig_dir, "stunting/fig-",ci_inc_plot_name,".png"), width=14, height=3)

saveRDS(d, file=paste0(figdata_dir, "figdata-",ci_inc_plot_name,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting cumulative incidence + incidence proportion - severe
#-------------------------------------------------------------------------------------------

ci_inc_plot_sev <- ki_combo_plot(d,
                                 Disease="Stunting",
                                 Measure=c("Cumulative incidence", "Incidence_proportion"), 
                                 Birth="yes", 
                                 Severe="yes", 
                                 Age_range="3 months", 
                                 Cohort="pooled",
                                 xlabel="Child age, months",
                                 h1=85,
                                 h2=90)
ci_inc_plot_sev


# define standardized plot names
ci_inc_plot_sev_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "incidence",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "monthly cohorts measured each month from 0 to 24"
)

# save plot and underlying data
ggsave(ci_inc_plot_sev, file=paste0(fig_dir, "stunting/fig-",ci_inc_plot_sev_name,".png"), width=14, height=3)

saveRDS(d, file=paste0(figdata_dir, "figdata-",ci_inc_plot_sev_name,".RDS"))









