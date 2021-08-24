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
make_plot = function(plot_region){
  plot <- ggplot(d_plot_df %>% filter(region==plot_region), 
                 aes(x = agemonths, y = meanlaz, group = cohort_country)) + 
    
    geom_hline(yintercept = 0, size = 0.3) +
    
    # confidence interval
    geom_ribbon(aes(ymin=fifth, ymax=ninetyfifth), 
                alpha = 0.15) + 
    
    # line
    geom_line(aes(x = agemonths, y = meanlaz, group = cohort_country), 
              size=0.75) +
    
    facet_wrap(~cohort_country, nrow = 2) +
    
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
  plot_name = create_name(
    outcome = "laz",
    cutoff = 2,
    measure = "quantile",
    population = "cohort-stratified",
    location = plot_region,
    age = "All ages",
    analysis = "primary"
  )
  
  
  # save plot -----------------------------------------------------
  ggsave(plot, 
         file=paste0(fig_dir, "stunting/fig-",plot_name,".png"), 
         width=20, height=8)
  
  # save data -----------------------------------------------------
  saveRDS(
    d_plot_df,
    file = paste0(
      figdata_dir_stunting, "figdata-",
      plot_name,
      ".RDS"
    )
  )
  
  return(plot)
  
  plot
}

make_plot("Latin America")
make_plot("Africa")
make_plot("South Asia")


