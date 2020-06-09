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

plotdf = readRDS(paste0(res_dir, "/meanlaz_age_incage.RDS"))
plotdf_monthly = readRDS(paste0(res_dir, "/meanlaz_age_incage_monthly.RDS"))

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
plotdf = plotdf %>% filter(cohort == "pooled", region == "Overall")

plotdf_monthly = prep_data(plotdf_monthly)
plotdf_monthly = plotdf_monthly %>% filter(cohort == "pooled", region == "Overall")


###################################
# Obtain N's for in-text description
# of the percentage of children born 
# in the three major groupings
###################################
N = plotdf %>% filter(agecat=="0.5 months") %>% summarise(N = sum(nmeas)) %>% pull()

plotdf %>% filter(agecat=="0.5 months" & (stunt_inc_age=="Birth"|stunt_inc_age=="0-3 months")) %>%
  summarise(n = sum(nmeas)) %>%
  mutate(proportion = n/N)

plotdf %>% filter(agecat=="0.5 months" & stunt_inc_age!="Birth" &
                    stunt_inc_age!="0-3 months" & 
                    stunt_inc_age!="Never") %>%
  summarise(n = sum(nmeas)) %>%
  mutate(proportion = n/N)

plotdf %>% filter(agecat=="0.5 months" & stunt_inc_age=="Never") %>%
  summarise(n = sum(nmeas)) %>%
  mutate(proportion = n/N)


###################################
# Generate plots
###################################
cbPalette <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

plot_mean_laz = function(data){
  data = data %>% mutate(agemonths = ifelse(agemonths == 0.5, 0, agemonths))
  
  mean_laz_plot <- ggplot(data,aes(y=est,x=agemonths, group=stunt_inc_age, color=stunt_inc_age)) +
    geom_ribbon(aes(ymin = lb, ymax = ub, fill = stunt_inc_age), alpha = 0.5, color = NA)+
    geom_line(aes(fill=stunt_inc_age, color=stunt_inc_age), se=F, span = 0.5) + 
    geom_hline(yintercept = 0, colour = "black") +
    scale_y_continuous(limits = c(min(data$lb) - 0.1, max(data$ub) + 0.1),
                       expand = c(0, 0)) + 
    scale_x_continuous(limits = c(0,15), breaks = seq(0,15,1), labels = seq(0,15,1),
                       expand = c(0, 0)) + 
    xlab("Child age, months")+
    ylab("Mean length-for-age Z-score") +
    scale_fill_manual(values=cbPalette, drop=TRUE, limits = levels(data$stunt_inc_age), 
                       name = 'Age of stunting onset') +
    scale_color_manual(values=cbPalette, drop=TRUE, limits = levels(data$stunt_inc_age), 
                       name = 'Age of stunting onset') +
    ggtitle("") +
    theme(legend.position="none")
  
  return(mean_laz_plot)
}

plot_nmeas = function(data){
  plotdf_N = data %>% 
    group_by(stunt_inc_age, agemonths) %>% 
    summarise(N = nmeas) %>% mutate(
    agemonths = ifelse(agemonths==0.5, 0, agemonths)
  )
  
  plotN = ggplot(plotdf_N, aes(x = agemonths, y = N, group=stunt_inc_age, color=stunt_inc_age)) + 
    geom_col(aes(fill=stunt_inc_age, color=stunt_inc_age), width=0.5) + 
    xlab("Child age, months") +
    ylab("N") +
    scale_x_continuous(limits = c(-1,16), breaks = seq(0,15,1), labels = seq(0,15,1),
                       expand = c(0,-0.5)) +
    scale_fill_manual(values=cbPalette, drop=TRUE, limits = levels(plotdf_N$stunt_inc_age), 
                      name = 'Age of stunting onset') +
    scale_color_manual(values=cbPalette, drop=TRUE, limits = levels(plotdf_N$stunt_inc_age), 
                       name = 'Age of stunting onset')+
    theme(legend.position="bottom")
  
  return(plotN)
}

###############################
# Create figure w/ all data
###############################
mean_laz_line_plot = plot_mean_laz(data = plotdf)
nmeas_plot = plot_nmeas(data = plotdf)
blank = ggplot() + theme_void()

mean_laz_line_plot = grid.arrange(blank,
                                  mean_laz_line_plot,
                                  blank, 
                                  ncol = 3,
                                  widths = c(0.75, 16, 0.5))

mean_laz_plot = grid.arrange(mean_laz_line_plot,
                             nmeas_plot,
                             nrow = 2,
                             heights = c(5, 3))

ggsave(mean_laz_plot, file=paste0(fig_dir, "stunting/fig-meanlaz_age_incage.png"), width=10, height=6)

#####################################
# Create figure for monthly cohorts
#####################################
mean_laz_line_plot_monthly = plot_mean_laz(data = plotdf_monthly)
nmeas_plot_monthly = plot_nmeas(data = plotdf_monthly)
blank = ggplot() + theme_void()

mean_laz_line_plot_monthly = grid.arrange(blank,
                                          mean_laz_line_plot_monthly,
                                          blank, 
                                          ncol = 3,
                                          widths = c(0.75, 16, 0.5))

mean_laz_plot_monthly = grid.arrange(mean_laz_line_plot_monthly,
                             nmeas_plot_monthly,
                             nrow = 2,
                             heights = c(5, 3))

ggsave(mean_laz_plot_monthly, file=paste0(fig_dir, "stunting/fig-meanlaz_age_incage_monthly.png"), width=10, height=6)

