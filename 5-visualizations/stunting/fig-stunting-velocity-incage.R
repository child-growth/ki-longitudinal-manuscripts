##########################################
# ki longitudinal manuscripts
# stunting analysis

# plot growth velocity by age and sex 
# by strata of age of incident stunting

# Inputs:
#   - 0-config.R
#   - stunt_velocity_incage.RDS
#   - stunt_velocity_incage_monthly.RDS

# Outputs:
#   - fig-stunting-velocity_incage.png
#   - fig-stunting-velocity_incage_monthly.png
##########################################

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

vel = readRDS(paste0(res_dir, "/stunt_velocity_incage.RDS"))
vel_monthly = readRDS(paste0(res_dir, "/stunt_velocity_incage_monthly.RDS"))

# define color palette
cbPalette <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")


##################################
# Prep data for plotting
##################################
prep_data = function(data){
  data$nmeas.f <- clean_nmeans(data$N)
  data$strata <- clean_agecat(data$strata)
  
  # remove mo from age label
  data <- data %>% 
    mutate(strata = gsub(" mo.", "", strata)) %>%
    mutate(strata = factor(strata, 
                           levels = c("0-3", "3-6", "6-9",
                                      "9-12", "12-15", "15-18",
                                      "18-21", "21-24")))
  
  
  # clean up y label
  data$ycat <- gsub('haz', 'LAZ change (Z-score per month)', data$ycat)
  data$ycat <- gsub('lencm', 'Length velocity (cm per month)', data$ycat)
  
  data$stunt_inc_age = factor(data$stunt_inc_age,
    levels = c("0-3 months", "3-6 months", "6-9 months","9-12 months", "12-15 months", "Never"),
    labels = c("0-3 months", "3-6 months", "6-9 months","9-12 months", "12-15 months", "Never"))
  return (data)
}

vel = prep_data(vel)
vel_monthly = prep_data(vel_monthly)


##################################
# Length velocity plot
##################################
plot_len_velocity = function(data){
  velplot_cm_strat = data %>% 
    filter(ycat == "Length velocity (cm per month)") %>%
    filter(pooled==1) %>%
    select(region, Mean, `Lower.95.CI`, `Upper.95.CI`, strata, sex, stunt_inc_age) %>%
    mutate(sex = as.factor(sex),
           region = ifelse(region == "Asia", "South Asia", region)) %>%
    mutate(region = factor(region, levels=c("Overall", "Africa", "Latin America", "South Asia")))
  
  plot_cm_strat <- ggplot(velplot_cm_strat, aes(y=Mean,x=strata))+
    geom_line(aes(y=Mean, group=sex, col=sex), size = 1) +
    facet_grid(. ~ stunt_inc_age) +
    scale_color_manual(values=cbPalette, name = 'Sex')+  
    scale_y_continuous(limits=c(0.4,4.1), breaks=seq(0.4,4.1,0.25), labels=seq(0.4,4.1,0.25)) +
    xlab("Child age, months") +  
    ylab("Difference in length \n (cm) per month")+
    
    ggtitle("a") +
    theme(plot.title = element_text(hjust=0),
          legend.position="bottom")
  
  return (plot_cm_strat)
}


##################################
# LAZ velocity plot
##################################
plot_laz_pooled = function(data){
  velplot_laz = data %>% filter(country_cohort=="Pooled - All" &
                                 ycat == "LAZ change (Z-score per month)") %>%
    mutate(sex = factor(sex))
  
  plot_laz <- ggplot(velplot_laz, aes(y=Mean,x=strata))+
    geom_point(aes(fill=sex, color=sex), size = 2, position = position_dodge(width = 0.5)) +
    geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                   position = position_dodge(width = 0.5)) +
    facet_grid(. ~ stunt_inc_age) +
    scale_color_manual(values = cbPalette, name = "Sex")+ 
    scale_fill_manual(values = cbPalette, name = "Sex")+  
    scale_y_continuous(limits=c(min(velplot_laz$Lower.95.CI), max(velplot_laz$Upper.95.CI))) +
    xlab("Child age, months") +  
    ylab("Difference in length-for-age\nZ-score per month")+
    geom_hline(yintercept = -0) +
    ggtitle("b") +
    theme(plot.title = element_text(hjust=0))
  
  plot_laz
}


##################################
# Save plots
##################################

plot_cm_strat = plot_len_velocity(vel)
plot_laz = plot_laz_pooled(vel)
plot_vel = grid.arrange(plot_cm_strat,
                        plot_laz,
                        nrow = 2)

ggsave(plot_vel, file=paste0(fig_dir, "stunting/fig-stunting-velocity_incage.png"), width=10, height=8)


plot_cm_strat_monthly = plot_len_velocity(vel_monthly)
plot_laz_monthly = plot_laz_pooled(vel_monthly)
plot_vel_monthly = grid.arrange(plot_cm_strat_monthly,
                                plot_laz_monthly,
                                nrow = 2)
ggsave(plot_vel_monthly, file=paste0(fig_dir, "stunting/fig-stunting-velocity_incage_monthly.png"), width=10, height=8)


