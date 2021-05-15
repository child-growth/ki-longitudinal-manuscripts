##########################################
# ki longitudinal manuscripts
# stunting analysis
#
# Plot of mean LAZ by month with quantiles

# inputs: quantile_data_stunting.RDS

# outputs: 
# fig-laz-2-quant-overall_region--allage-primary.png
# fig-laz-2-quant-cohort-asia-allage-primary.png
# fig-laz-2-quant-cohort-afr-allage-primary.png
# fig-laz-2-quant-cohort-latamer-allage-primary.png

# figdata-laz-2-quant-overall_region--allage-primary.RDS
# figdata-laz-2-quant-cohort-asia-primary.RDS
# figdata-laz-2-quant-cohort-afr-primary.RDS
# figdata-laz-2-quant-cohort-latamer-primary.RDS

##########################################
# preamble -----------------------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Plot themes
theme_set(theme_ki())

#Quantile data 
quantile_input = readRDS(paste0(res_dir,"stunting/quantile_data_stuntingREML.RDS"))

quantile = quantile_input %>% filter(studyid %in% monthly_and_quarterly_cohorts)

# check included cohorts
assert_that(setequal(unique(quantile$studyid), monthly_and_quarterly_cohorts),
            msg = "Check data. Included cohorts do not match.")


# Preprocess data -----------------------------------------------------
quantile_cc <- quantile %>% filter(studyid!="pooled") %>% 
  ungroup(agecat) %>%
  arrange(agecat) %>%
  filter(!is.na(agecat)) %>%
  mutate(agecat = as.character(agecat)) %>%
  mutate(agecat = ifelse(agecat == "Two weeks", ".5", agecat)) %>%
  mutate(agecat = gsub(" month", "", agecat)) %>%
  mutate(agecat = gsub(" months", "", agecat)) %>%
  mutate(agecat = gsub("s", "", agecat)) %>%
  mutate(agecat = ifelse(agecat == "One", "1", agecat)) %>%
  mutate(agecat = as.numeric(agecat)) %>%
  mutate(region = ifelse(region=="Asia", "South Asia", region))  %>% 
  mutate(country=  str_to_title(country)) %>% 
  mutate(country = factor(country, levels = c(
    "Burkina Faso", "Gambia", "Guinea-Bissau",
    "Malawi", "South Africa", "Tanzania", "Zimbabwe",
    "Brazil", "Guatemala", "Peru",
    "Belarus",
    "Bangladesh", "India", "Nepal", "Pakistan"
  ))) %>%
  mutate(cohort_country = paste0(studyid, " - ", country)) %>% 
  distinct()

# create data structure with all ages for each study
cohort_country_df = quantile_cc %>% 
  dplyr::select(c(region, country, studyid, cohort_country)) %>% 
  distinct() %>% 
  group_by(region, country, studyid, cohort_country)

ages = c(0.5, seq(1,24,1))

quantile_plot_df = cohort_country_df %>% tidyr::expand(agecat= ages) %>% 
  full_join(quantile_cc, by = c("region", "country", "studyid", "cohort_country", "agecat")) %>% 
  mutate(region = ifelse(region == "N.America & Europe", "Europe", region))

# country-specific plot -----------------------------------------------------
ggplot(quantile_plot_df, aes(x = agecat, y = fiftieth_perc, group = cohort_country)) + 
  
  # median
  geom_line(aes(color = region), se = F, size = 0.5) +

  # ribbon
  geom_ribbon(aes(ymin=fifth_perc, ymax=ninetyfifth_perc, fill = region), alpha = 0.2) + 

  facet_wrap(~country, nrow = 3) +
  scale_color_manual(values=c("#1F77B4","#FF7F0E", "#CC332E", "#2CA02C"), drop=TRUE,
                       name = 'Region') +
  scale_fill_manual(values=c("#1F77B4","#FF7F0E", "#CC332E", "#2CA02C"), drop=TRUE,
                     name = 'Region') +
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

# cohort stratified plots -----------------------------------------------------
# plot_cohort_quantile_mean = function(data){
#   plot = ggplot(data,aes(x = agecat, group = region)) +
#     
#     geom_smooth(aes(y = LAZ, color = region, group = interval, linetype = interval), se = F, span = 0.5) +
#     
#     facet_wrap(~cohort) +
#     geom_hline(yintercept = 0, colour = "black") +
#     scale_x_continuous(limits = c(0,24), breaks = seq(0,24,6), labels = seq(0,24,6)) + 
#     scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) + 
#     
#     scale_color_manual(values=c("#1F77B4", "#FF7F0E", "#2CA02C"), drop=TRUE,
#                        limits = levels(quantile$measure), 
#                        name = 'Region') +
#     scale_linetype_manual(name = "interval", values = c("fiftieth_perc" = "solid",
#                                                         "ninetyfifth_perc" = "dashed",
#                                                         "fifth_perc" = "dotted"),
#                           breaks = c("fiftieth_perc",
#                                      "ninetyfifth_perc",
#                                      "fifth_perc"),
#                           labels = c("Mean", "95th percentile", "5th percentile")) +
#     xlab("Child age, months") +
#     ylab("Length-for-age Z-score") +
#     ggtitle("") +
#     theme(strip.text = element_text(margin=margin(t=5))) +
#     guides(linetype = guide_legend(override.aes = list(col = 'black'), 
#                                    keywidth = 3, keyheight = 1),
#            colour = FALSE) +
#     theme(legend.position = "bottom",
#           legend.title = element_blank(),
#           legend.background = element_blank(),
#           legend.box.background = element_rect(colour = "black"))
#   
#   return(plot)
# }
# 
# quantile_cohort_asia = quantile_cohort %>%
#   filter(region == "South Asia")
# quantile_cohort_afr = quantile_cohort %>%
#   filter(region == "Africa")
# quantile_cohort_latamer = quantile_cohort %>%
#   filter(region == "Latin America")
# 
# mean_laz_quantile_plot_asia <- plot_cohort_quantile_mean(quantile_cohort_asia )
# mean_laz_quantile_plot_afr <- plot_cohort_quantile_mean(quantile_cohort_afr)
# mean_laz_quantile_plot_latamer <- plot_cohort_quantile_mean(quantile_cohort_latamer )

# define standardized plot names -----------------------------------------------------
mean_laz_quantile_plot_name = create_name(
  outcome = "laz",
  cutoff = 2,
  measure = "quantile",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# mean_laz_quantile_plot_asia_name = create_name(
#   outcome = "laz",
#   cutoff = 2,
#   measure = "quantile",
#   population = "cohort-stratified",
#   location = "South Asia",
#   age = "All ages",
#   analysis = "primary"
# )


# save plot -----------------------------------------------------
ggsave(mean_laz_quantile_plot, 
       file=paste0(fig_dir, "stunting/fig-",mean_laz_quantile_plot_name,".png"), 
       width=14, height=4)

# ggsave(mean_laz_quantile_plot_asia, 
#        file=paste0(fig_dir, "stunting/fig-",mean_laz_quantile_plot_asia_name,".png"), 
#        width=14, height=10)


# save data -----------------------------------------------------

saveRDS(
  quantile_region,
  file = paste0(
    figdata_dir_stunting, "figdata-",
    mean_laz_quantile_plot_name,
    ".RDS"
  )
)
# saveRDS(
#   quantile_cohort_asia,
#   file = paste0(
#     figdata_dir_stunting, "figdata-",
#     mean_laz_quantile_plot_asia_name,
#     ".RDS"
#   )
# )
# 
