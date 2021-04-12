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
N = plotdf_monthly %>% filter(agecat=="0.5 months") %>% summarise(N = sum(nmeas)) %>% pull()

#--------------------------------
# stunted by 3 months
#--------------------------------
plotdf_monthly %>% filter(agecat=="0.5 months" & 
                            (stunt_inc_age=="Birth"|stunt_inc_age=="0-3 months")) %>%
  summarise(n = sum(nmeas)) %>%
  mutate(proportion = n/N)

#--------------------------------
# stunted after 3 months
#--------------------------------
plotdf_monthly %>% filter(agecat=="0.5 months" & stunt_inc_age!="Birth" &
                    stunt_inc_age!="0-3 months" & 
                    stunt_inc_age!="Never") %>%
  summarise(n = sum(nmeas)) %>%
  mutate(proportion = n/N)

#--------------------------------
# never stunted
#--------------------------------
plotdf_monthly %>% filter(agecat=="0.5 months" & (stunt_inc_age=="Never")) %>%
  summarise(n = sum(nmeas)) %>%
  mutate(proportion = n/N)


###################################
# Generate plot 3b - flow plot
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
    theme(legend.position="bottom")
  
  return(mean_laz_plot)
}


###############################
# Create figure w/ all data
###############################
mean_laz_line_plot = plot_mean_laz(data = plotdf)

ggsave(mean_laz_line_plot, file=paste0(fig_dir, "stunting/fig-meanlaz_age_incage.png"), 
       width=8, height=4)

#####################################
# Create figure for monthly cohorts
#####################################
mean_laz_line_plot_monthly = plot_mean_laz(data = plotdf_monthly)

ggsave(mean_laz_line_plot_monthly, file=paste0(fig_dir, "stunting/fig-meanlaz_age_incage_monthly.png"), 
       width=8, height=4)
