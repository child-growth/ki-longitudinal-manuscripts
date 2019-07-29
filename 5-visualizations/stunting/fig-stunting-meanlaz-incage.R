##########################################
# ki longitudinal manuscripts
# stunting analysis

# plot mean LAZ by age
# by strata of age of incident stunting
##########################################

rm(list = ls())
source(paste0(here::here(), "/0-config.R"))

plotdf = readRDS(paste0(res_dir, "meanlaz_age_incage.RDS"))
plotdf_monthly = readRDS(paste0(res_dir, "meanlaz_age_incage_monthly.RDS"))

prep_data = function(data){
  data = data %>%
    filter(!is.na(agecat)) %>%
    mutate(agecat = if_else(agecat == "Two weeks", "0.5 months", agecat)) %>% 
    mutate(agecat = if_else(agecat == "One month", "1 months", agecat)) %>%
    mutate(agemonths = str_replace(agecat, " months", "")) %>%
    mutate(agemonths = as.numeric(agemonths)) 
  
  levels(data$stunt_inc_age) = c("Birth", "3 months", "6 months", "Never")
  return (data)
}

plotdf = prep_data(plotdf)
plotdf = plotdf %>% filter(cohort == "pooled", region == "Overall")

plotdf_monthly = prep_data(plotdf_monthly)
plotdf_monthly = plotdf_monthly %>% filter(cohort == "pooled", region == "Overall")

plot_mean_laz = function(data){
  mean_laz_plot <- ggplot(data,aes(y=est,x=agemonths, group=stunt_inc_age, color=stunt_inc_age)) +
    stat_smooth(aes(fill=stunt_inc_age, color=stunt_inc_age), se=F, span = 0.5) + 
    geom_hline(yintercept = 0, colour = "black") +
    scale_y_continuous(limits = c(min(plotdf$est) - 0.01, 0)) + 
    scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) + 
    xlab("Child age, months")+
    ylab("Mean length-for-age Z-score") +
    scale_fill_manual(values=tableau10, drop=TRUE, limits = levels(data$stunt_inc_age), 
                       name = 'Age of stunting onset') +
    scale_color_manual(values=tableau10, drop=TRUE, limits = levels(data$stunt_inc_age), 
                       name = 'Age of stunting onset') +
    ggtitle("") +
    theme(legend.position="bottom")
  
  return(mean_laz_plot)
}

plot_nmeas = function(data){
  plotdf_N = data %>% group_by(stunt_inc_age, agemonths) %>% summarise(N = nmeas)
  plotN = ggplot(plotdf_N, aes(x = agemonths, y = N, group=stunt_inc_age, color=stunt_inc_age)) + 
    geom_col(aes(fill=stunt_inc_age, color=stunt_inc_age)) + 
    xlab("Child age, months") +
    ylab("N") +
    scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) +
    scale_fill_manual(values=tableau10, drop=TRUE, limits = levels(plotdf_N$stunt_inc_age), 
                      name = 'Age of stunting onset') +
    scale_color_manual(values=tableau10, drop=TRUE, limits = levels(plotdf_N$stunt_inc_age), 
                       name = 'Age of stunting onset')
  
  return(plotN)
}

###############################
# Create figure w/ all data
###############################
mean_laz_line_plot = plot_mean_laz(data = plotdf)
nmeas_plot = plot_nmeas(data = plotdf)

mean_laz_plot = grid.arrange(mean_laz_line_plot,
                             nmeas_plot,
                             nrow = 2,
                             heights = c(4, 1.25))

ggsave(mean_laz_plot, file=paste0(fig_dir, "stunting/fig-meanlaz_age_incage.png"), width=10, height=6)

#####################################
# Create figure for monthly cohorts
#####################################
mean_laz_line_plot_monthly = plot_mean_laz(data = plotdf_monthly)
nmeas_plot_monthly = plot_nmeas(data = plotdf_monthly)

mean_laz_plot_monthly = grid.arrange(mean_laz_line_plot_monthly,
                             nmeas_plot_monthly,
                             nrow = 2,
                             heights = c(4, 1.25))
ggsave(mean_laz_plot_monthly, file=paste0(fig_dir, "stunting/fig-meanlaz_age_incage_monthly.png"), width=10, height=6)

