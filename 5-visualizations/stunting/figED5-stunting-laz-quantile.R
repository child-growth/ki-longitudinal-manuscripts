##########################################
# ki longitudinal manuscripts
# stunting analysis
#
# Plot of mean LAZ by month with quantiles
# by cohort and country

# inputs: stunting_data.rds

# outputs: 
# fig-laz-2-quant-overall_region--allage-primary.png

##########################################
# preamble -----------------------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Plot themes
theme_set(theme_ki())

dall <- readRDS(paste0(ghapdata_dir, "stunting_data.rds"))

dmonthly <- dall %>% filter(measurefreq=="monthly")

# check included cohorts
assert_that(setequal(unique(dmonthly$studyid), monthly_cohorts),
            msg = "Check data. Included cohorts do not match.")


# drop burkina faso study
d <- dmonthly %>% filter(studyid!="iLiNS-Zinc")

# add country
d <- d %>%  
  mutate(agemonths = round(agedays/30.4167,0)) %>% 
  filter(agemonths <= 24) %>% 
  mutate(country=  str_to_title(country)) %>% 
  mutate(country = factor(country, levels = c(
    "Gambia", "Guinea-Bissau",
    "Malawi", "South Africa", "Tanzania", "Zimbabwe",
    "Belarus",
    "Brazil", "Guatemala", "Peru",
    "Bangladesh", "India", "Nepal", "Pakistan"
  ))) %>%
  mutate(cohort_country = paste0(studyid, " - ", country)) 


# mean by age for line plot
dsummary <- d %>% group_by(region, cohort_country, country, studyid, agemonths) %>% 
  summarise(meanlaz = mean(haz, na.rm=T),
            fifth = quantile(haz, prob = 0.05, na.rm=T),
            ninetyfifth = quantile(haz, prob = 0.95, na.rm=T),
            N = n()) %>% 
  filter(N>= 50 )


# create data structure with all ages for each study
cohort_country_df = dsummary %>% 
  dplyr::select(c(region, country, studyid, cohort_country)) %>% 
  distinct() %>% 
  group_by(region, country, studyid, cohort_country)

ages = seq(0,24,1)

d_plot_df = cohort_country_df %>% tidyr::expand(agemonths= ages) %>% 
  full_join(dsummary, by = c("region", "country", "studyid", "cohort_country", "agemonths")) %>%
  mutate(region = as.character(region)) %>% 
  mutate(region = ifelse(region == "N.America & Europe", "Europe", region)) %>% 
  mutate(region = as.factor(region)) %>% 
  filter(!is.na(meanlaz))



# figure -----------------------------------------------------
plot <- ggplot(d_plot_df, aes(x = agemonths, y = meanlaz, group = cohort_country)) + 
  
  geom_hline(yintercept = 0, size = 0.3) +
  
  # confidence interval
  geom_ribbon(aes(ymin=fifth, ymax=ninetyfifth, fill = region), 
              alpha = 0.15) + 
  
  # line
  geom_line(aes(x = agemonths, y = meanlaz, group = cohort_country,
                  color = region), 
            # data=dsummary, 
            size=0.75) +
  
  facet_wrap(~country, nrow = 2) +
  scale_color_manual(values=c("#1F77B4","#FF7F0E", "#2CA02C"), drop=TRUE,
                     name = 'Region') +
  scale_fill_manual(values=c("#1F77B4","#FF7F0E", "#2CA02C"), drop=TRUE,
                    name = 'Region') +
  
  scale_y_continuous(breaks = seq(-5, 2, 1), labels = seq(-5, 2, 1)) +
  
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


# save plot -----------------------------------------------------
ggsave(plot, 
       file=paste0(fig_dir, "stunting/fig-",mean_laz_quantile_plot_name,".png"), 
       width=10, height=4)

# save data -----------------------------------------------------
saveRDS(
  d_plot_df,
  file = paste0(
    figdata_dir_stunting, "figdata-",
    mean_laz_quantile_plot_name,
    ".RDS"
  )
)
