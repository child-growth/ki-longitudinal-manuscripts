##########################################
# ki longitudinal manuscripts
# stunting analysis
#
# plots of linear growth velocity
# both overall and cohort-specific within region

# Sensitivity analysis including monthly cohorts
# that measured children at each age from 0 to 24 months

# inputs: pool_vel.RData, meanlaz_velocity.RDS
# WHO_linear_growth_velocity_standard.RDS

# outputs: 
# overall plots: 
#   fig-stunt-2-vel-overall--allage-mmonth24.png
#   fig-laz-2-length_vel-overall--allage-mmonth24.png
#   fig-laz-2-laz_vel-overall--allage-mmonth24.png

# region-stratified plots:
#   fig-stunt-2-vel-region--allage-mmonth24.png
#   fig-laz-2-length_vel-region--allage-mmonth24.png
#   fig-laz-2-laz_vel-region--allage-mmonth24.png

# cohort-stratified plots: 
#   fig-stunt-2-vel-cohort-africa-allage-mmonth24.png
#   fig-stunt-2-vel-cohort-latamer-allage-mmonth24.png
#   fig-stunt-2-vel-cohort-asia-allage-mmonth24.png

# data for each plot is saved as an RDS file
# with the same file name and the prefix "figdata"

##########################################
#-----------------------------------
# preamble
#-----------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load length velocity data
vel = readRDS(paste0(res_dir,"/stunting/pool_vel_month24.RDS"))
meanlaz = readRDS(paste0(here(), "/results/meanlaz_velocity_monthly24.RDS"))

# load who standard
who_cm = readRDS(paste0(res_dir, "WHO_linear_growth_velocity_standard.RDS"))

#-------------------------------------
# prep data
#-------------------------------------
vel$nmeas.f <- clean_nmeans(vel$N)
vel$strata <- clean_agecat(vel$strata)

# remove mo from age label
vel <- vel %>% 
  mutate(strata = gsub(" mo.", "", strata)) %>%
  mutate(strata = factor(strata, 
                         levels = c("0-3", "3-6", "6-9",
                                    "9-12", "12-15", "15-18",
                                    "18-21", "21-24")))

vel <- merge(vel, who_cm, by=c('sex', 'strata'))
vel <- vel %>% mutate(pct_50 = pct_50 / 3)
vel <- vel %>% mutate(pct_25 = pct_25 / 3)
vel <- vel %>% mutate(pct_15 = pct_15 / 3)
vel <- vel %>% mutate(pct_50 = ifelse(ycat == 'haz', NA, pct_50))
vel <- vel %>% mutate(pct_25 = ifelse(ycat == 'haz', NA, pct_25))
vel <- vel %>% mutate(pct_15 = ifelse(ycat == 'haz', NA, pct_15))

# clean up y label
vel$ycat <- gsub('haz', 'LAZ change (Z-score per month)', vel$ycat)
vel$ycat <- gsub('lencm', 'Length velocity (cm per month)', vel$ycat)

# define color palette
mypalette = c("#D87A16", "#0EA76A")

####################################################################################
# mean LAZ plots
####################################################################################
#-------------------------------------
# mean LAZ plot - pooled
#-------------------------------------
meanlaz_overall = meanlaz %>% 
  filter(region=="Overall") %>%
  mutate(agecat = factor(agecat, 
                         levels = c("0-3", "3-6", "6-9",
                                    "9-12", "12-15", "15-18",
                                    "18-21", "21-24")))

plot_mean_laz = ggplot(meanlaz_overall, aes(y=est, x = agecat)) + 
  geom_point(aes(col=sex), position = position_dodge(width=0.5), size=3) +
  geom_linerange(aes(ymin = lb, ymax = ub, col=sex), 
                 position = position_dodge(width=0.5)) +
  scale_color_manual("Child sex", values = mypalette) + 
  scale_y_continuous(limits = c(-2.5, -0.25)) +
  xlab("Child age, months") + 
  ylab("Mean length-for-age Z-score") +
  ggtitle("c\n")+
  theme(plot.title = element_text(hjust=0)) +
  theme(legend.position = c(.88, .83),
        # legend.title = element_blank(),
        legend.background = element_blank(),
        legend.box.background = element_rect(colour = "black"),
        plot.title = element_text(hjust=0))


####################################################################################
# LAZ velocity plots
####################################################################################
#-------------------------------------
# LAZ plot - pooled
#-------------------------------------
velplot_laz = vel %>% filter(country_cohort=="Pooled - All" &
                               ycat == "LAZ change (Z-score per month)") %>%
  mutate(sex = factor(sex))

plot_laz <- ggplot(velplot_laz, aes(y=Mean,x=strata))+
  geom_point(aes(fill=sex, color=sex), size = 3, position = position_dodge(width = 0.5)) +
  geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                 position = position_dodge(width = 0.5)) +
  scale_color_manual(values=mypalette)+  
  # scale_y_continuous(limits=c(-0.18,0.05), breaks=as.numeric(seq(-0.15,0.05,0.01)), 
  #                    labels=as.numeric(seq(-0.15,0.05,0.01))) +
  xlab("Child age, months") +  
  ylab("Difference in length-for-age\nZ-score per month")+
  geom_hline(yintercept = -0) +
  ggtitle("b\n") +
  theme(plot.title = element_text(hjust=0))

# define standardized plot names
plot_laz_name = create_name(
  outcome = "LAZ",
  cutoff = 2,
  measure = "LAZ velocity",
  population = "overall",
  location = "",
  age = "All ages",
  analysis = "monthly cohorts measured each month from 0 to 24"
)

# save plot and underlying data
ggsave(plot_laz, file=paste0(fig_dir, "stunting/fig-",plot_laz_name,".png"), width=12, height=6)
saveRDS(velplot_laz, file=paste0(figdata_dir_stunting, "figdata-",plot_laz_name,".RDS"))

####################################################################################
# length velocity plots
####################################################################################
#-------------------------------------
# absolute length plot - pooled
#-------------------------------------
velplot_cm = vel %>% filter(country_cohort=="Pooled - All" &
                              ycat == "Length velocity (cm per month)") %>%
  select(Mean, `Lower.95.CI`, `Upper.95.CI`, strata, sex, pct_50, pct_25, pct_15) %>%
  mutate(sex = as.factor(sex)) %>% 
  gather(`pct_15`, `pct_25`, `pct_50`, `Mean`, key = "msmt_type", value = "length_cm") %>% 
  mutate(linecol = ifelse(msmt_type != "Mean", "black", 
                          ifelse(sex == "Male", "male_color", "female_color")), 
         sexcol = ifelse(sex == "Male", "male_color2", "female_color2"))

plot_cm <- ggplot(velplot_cm, aes(y = length_cm, x = strata)) +
  # geom_point(data = subset(velplot_cm, msmt_type == "Mean"), aes(color = sexcol), size = 3) +
  geom_line(aes(y = length_cm, group = msmt_type, color = linecol, linetype = msmt_type)) +
  
  geom_linerange(aes(ymin = Lower.95.CI, ymax = Upper.95.CI, color = sexcol)) +
  
  scale_linetype_manual("WHO Growth\nVelocity Standards", values = c("Mean" = "solid", 
                                                                     "pct_50" = "solid",
                                                                     "pct_25" = "dashed", 
                                                                     "pct_15" = "dotted"
  ),
  breaks = c("pct_50", "pct_25", "pct_15"),
  labels = c("50th percentile",
             "25th percentile", 
             "15th percentile"
  )) +
  
  scale_color_manual("WHO Growth\nVelocity Standards", values = c("black" = "black",
                                                                  "male_color" = mypalette[2],
                                                                  "female_color" = mypalette[1], 
                                                                  "male_color" = "male_color", 
                                                                  "female_color2" = mypalette[1], 
                                                                  "male_color2" = mypalette[2],
                                                                  "female_color2" = mypalette[1], 
                                                                  "male_color2" = mypalette[2])) +
  
  scale_y_continuous(limits=c(0.5,4), breaks=seq(0.5,4,0.25), labels=seq(0.5,4,0.25)) +
  xlab("Child age, months") +  
  ylab("Difference in length (cm) per month\n")+
  facet_wrap( ~ sex) +
  ggtitle("a") +
  
  guides(color=FALSE) +
  
  labs(linetype = c("", "12", "14", "13")) +
  
  theme(legend.position = c(.915, .78),
        # legend.title = element_blank(),
        legend.background = element_blank(),
        legend.box.background = element_rect(colour = "black"),
        plot.title = element_text(hjust=0))


# define standardized plot names
plot_cm_name = create_name(
  outcome = "LAZ",
  cutoff = 2,
  measure = "length velocity",
  population = "overall",
  location = "",
  age = "All ages",
  analysis = "monthly cohorts measured each month from 0 to 24"
)

# save plot and underlying data
ggsave(plot_cm, file=paste0(fig_dir, "stunting/fig-",plot_cm_name,".png"), 
       width=10, height=8)
saveRDS(velplot_cm, file=paste0(figdata_dir_stunting, "figdata-",plot_cm_name,".RDS"))

############################################################################
# combined LAZ and length plots
############################################################################
combined_plot = grid.arrange(plot_cm, 
                             arrangeGrob(plot_laz, plot_mean_laz, 
                                         ncol=2, nrow = 1))

#-------------------------------------
# define standardized plot names
#-------------------------------------
combined_plot_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "growth velocity",
  population = "overall",
  location = "",
  age = "All ages",
  analysis = "monthly cohorts measured each month from 0 to 24"
)

#-------------------------------------
# save overall plots together
#-------------------------------------
ggsave(combined_plot, file=paste0(fig_dir, "stunting/fig-", combined_plot_name,
                                  ".png"), width=10, height=8)
#-------------------------------------
# save input data 
#-------------------------------------
saveRDS(
  list(
    velplot_cm = velplot_cm,
    velplot_laz = velplot_laz,
    meanlaz_overall = meanlaz_overall
  ),
  file = paste0(figdata_dir_stunting, "figdata-", combined_plot_name, ".RDS")
)
