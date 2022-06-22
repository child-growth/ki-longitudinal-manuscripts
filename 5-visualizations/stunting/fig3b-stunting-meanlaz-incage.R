##########################################
# ki longitudinal manuscripts
# stunting analysis

# plot mean LAZ by age
# by strata of age of incident stunting

# Inputs:
#   - 0-config.R
#   - meanlaz_age_incage.RDS
#   - meanlaz_age_incage_monthly.RDS

# Outputs:
#   - fig-meanlaz_age_incage.png
#   - fig-meanlaz_age_incage_monthly.png
##########################################

rm(list = ls())
source(paste0(here::here(), "/0-config.R"))

plotdf = readRDS(paste0(res_dir, "/stunting/meanlaz_age_incage.RDS"))
plotdf_monthly = readRDS(paste0(res_dir, "/stunting/meanlaz_age_incage_monthly.RDS"))

prep_data = function(data){
  data$agecat <- as.character(data$agecat)
  data = data %>%
    filter(!is.na(agecat)) %>%
    mutate(agecat = if_else(agecat == "Two weeks", "0.5 months", agecat)) %>% 
    mutate(agecat = if_else(agecat == "One month", "1 months", agecat)) %>%
    mutate(agemonths = str_replace(agecat, " months", "")) %>%
    mutate(agemonths = as.numeric(agemonths)) 
  
  levels(data$stunt_inc_age) = list("Birth", "0-3 months", "3-6 months", "6-9 months","9-12 months", "12-15 months", "Never")
  return (data)
}

plotdf = prep_data(plotdf)

plotdf_monthly = prep_data(plotdf_monthly)


###################################
# Obtain N's for caption
###################################
# plot with all data
# N cohorts
cohort_N <- plotdf %>% filter(cohort!="pooled")
length(names(table(cohort_N$cohort)))

# Children
d <- readRDS(paste0(ghapdata_dir, "stunting_data.rds"))
d_st <- d %>% filter(measurefreq == "monthly") %>% filter(agedays <= 30.4167*15.5)
d_st = create_stunting_age_indicators(data = d_st)
d_st <- d_st %>% filter(!is.na(stunt_inc_age))
d_st <- d_st %>% mutate(childid = paste0(studyid, subjid))
length(unique(d_st$childid))

# plot with regional data (no overall)
# N cohorts
cohort_N <- plotdf %>% filter(cohort!="pooled")
length(names(table(cohort_N$cohort[cohort_N$region %in% 
                                     c("South Asia",
                                       "Latin America",
                                       "Africa")])))

# Children
length(unique(d_st$childid[d_st$region %in% c("South Asia",
                                              "Latin America",
                                              "Africa")]))

###################################
# Generate plot 3b - flow plot
###################################

plot_mean_laz = function(data, includeCI){
  data = data %>% mutate(agemonths = ifelse(agemonths == 0.5, 0, agemonths)) %>% 
    mutate(stunt_inc_age = case_when(
      stunt_inc_age == "Birth" ~ "Stunted\nat birth",
      stunt_inc_age == "0-6 months" ~ "Stunted from\n0-6 months",
      stunt_inc_age == "6-15 months" ~ "Stunted from\n6-15 months",
      stunt_inc_age == "Never" ~ "Never stunted"
    )) %>% 
    mutate(stunt_inc_age = factor(stunt_inc_age, levels = c(
      "Stunted\nat birth", "Stunted from\n0-6 months", 
      "Stunted from\n6-15 months", "Never stunted"
    )))
  
  mean_laz_plot <- ggplot(data %>% filter(region!="Overall" & region!="Other" & cohort=="pooled"),
                          aes(y=est,x=agemonths, group=region, color=region)) +
    geom_hline(yintercept = -2, colour = "black") +
    geom_line(data = data %>% filter(region!="Overall" & region!="Other" & cohort!="pooled"), 
              aes(fill=region, color=region, group = cohort), se=F, span = 0.5, alpha=0.4, 
              size=0.3) +
    geom_line(aes(fill=region, color=region), se=F, span = 0.75, size=0.7) +
    scale_y_continuous(limits = c(min(data$lb) - 0.1, max(data$ub) + 0.1),
                       expand = c(0, 0)) + 
    scale_x_continuous(limits = c(0,15), breaks = seq(0,15,3), labels = seq(0,15,3)) + 
    xlab("Child age, months")+
    ylab("Mean length-for-age Z-score") +
    scale_fill_manual(values=tableau11[c(2:4)], drop=TRUE) +
    scale_color_manual(values=tableau11[c(2:4)], drop=TRUE) +
    ggtitle("") +
    theme(panel.grid.minor = element_blank(),
          panel.grid.major = element_line(size = 0.25)
    )
  
  if(includeCI){
    mean_laz_plot <- mean_laz_plot+ facet_grid(region~stunt_inc_age) + 
    geom_ribbon(aes(ymin = lb, ymax = ub, fill = region), alpha = 0.5, color = NA) +
      theme(legend.position = "none")
  }else{
    mean_laz_plot <- mean_laz_plot+ facet_grid(~stunt_inc_age) + 
      theme(legend.text = element_text(size=12),
                  legend.title = element_blank(),
                  legend.position="bottom")
  }
  
  return(mean_laz_plot)
}


###############################
# Create figure w/ all data
###############################
mean_laz_line_plot = plot_mean_laz(data = plotdf, includeCI=T)
mean_laz_line_plot_noCI = plot_mean_laz(data = plotdf, includeCI=F)

ggsave(mean_laz_line_plot, file=paste0(fig_dir, "stunting/fig-meanlaz_age_incage_withCI.png"), 
       width=9, height=5)
ggsave(mean_laz_line_plot_noCI, file=paste0(fig_dir, "stunting/fig-meanlaz_age_incage.png"), 
       width=10, height=5)

#####################################
# Create figure for monthly cohorts
#####################################
mean_laz_line_plot_monthly = plot_mean_laz(data = plotdf_monthly, includeCI=T)
mean_laz_line_plot_monthly_noCI = plot_mean_laz(data = plotdf_monthly, includeCI=F)

ggsave(mean_laz_line_plot_monthly, file=paste0(fig_dir, "stunting/fig-meanlaz_age_incage_monthly_withCI.png"), 
       width=8, height=4)
ggsave(mean_laz_line_plot_monthly_noCI, file=paste0(fig_dir, "stunting/fig-meanlaz_age_incage_monthly.png"), 
       width=8, height=4)
