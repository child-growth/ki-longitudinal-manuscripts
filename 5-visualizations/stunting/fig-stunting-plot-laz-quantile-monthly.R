##########################################
# ki longitudinal manuscripts
# stunting analysis
#
# plots of mean LAZ by month with quantiles

# includes primary analysis, fixed effects analysis, and
# sensitivity analysis that subsets cohorts to those with
# monthly measurements each month from 0 to 24 months

# inputs: quantile_data_stunting_monthly24.RDS

##########################################

#-----------------------------------
# preamble
#-----------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/5-visualizations/stunting/fig-stunting-plot-desc-epi-functions.R"))

#Plot themes
theme_set(theme_ki())

#Quantile data (object: df_quantile)
df_quantile <- readRDS(paste0(here::here(),"/results/quantile_data_stunting_monthly24.RDS"))

#-------------------------------------------------------------------------------------------
# Mean LAZ by month with quantiles
#-------------------------------------------------------------------------------------------

df_quantile$agecat <- factor(df_quantile$agecat,
                             levels=c("Two weeks", "One month",
                                      paste0(2:24," months")))

df_quantile <- df_quantile %>%
  arrange(agecat) %>%
  filter(region!="Europe")
df_quantile <-droplevels(df_quantile)


df_quantile <- df_quantile %>%
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

mean_laz_quantile_plot <- ggplot(df_quantile,aes(x = agecat, group = region)) +
  
  geom_smooth(aes(y = LAZ, color = region, group = interval, linetype = interval), se = F, span = 0.5) +
  
  
  facet_grid(~region) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,6), labels = seq(0,24,6)) +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
  
  scale_color_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C"), drop=TRUE, limits = levels(df_quantile$measure),
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

saveRDS(df_quantile, file=paste0(figdata_dir_stunting, "figdata-",mean_laz_quantile_plot_name,".RDS"))

