#------------------------------------------------------------------------------
# Length velocity plots

# Sensitivity analysis excluding COHORTS Guatemala 
# and Content
#------------------------------------------------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load length velocity data
vel = readRDS(paste0(res_dir,"stunting/pool_vel_sub.RDS"))

vel <- pooled_vel 

vel$nmeas.f <- clean_nmeans(vel$N)
vel$strata <- clean_agecat(vel$strata)

# Add WHO cm/month standards
#  https://www.who.int/childgrowth/standards/velocity/technical_report/en/
who_cm_boys <- data.frame(
  pct_50 = c(
    11.4,
    6.2,
    4.4,
    3.8,
    3.4,
    3.1,
    2.9,
    2.6
  ),
  pct_25= c(
    10.6,
    5.5,
    3.7,
    3.2,
    2.8,
    2.5,
    2.2,
    2.0
  ),
  pct_15= c(
    10.1,
    5.1,
    3.4,
    2.8,
    2.5,
    2.1,
    1.9,
    1.7
  )
)

who_cm_girls <- data.frame(
  pct_50 = c(
    10.6,
    5.9,
    4.4,
    3.9,
    3.5,
    3.2,
    2.9,
    2.7
  ),
  pct_25 = c(
    9.8,
    5.2,
    3.8,
    3.3,
    2.9,
    2.6,
    2.3,
    2.1
  ),
  pct_15= c(
    9.3,
    4.9,
    3.4,
    2.9,
    2.6,
    2.3,
    2.0,
    1.8
  )
)

who_cm_boys$sex <- 'Male'
who_cm_boys$strata <- unique(vel$strata)
who_cm_girls$sex <- 'Female'
who_cm_girls$strata <- unique(vel$strata)

who_cm <- rbind(who_cm_girls, who_cm_boys)
vel <- merge(vel, who_cm, by=c('sex', 'strata'))
vel <- vel %>% mutate(pct_50 = pct_50 / 3)
vel <- vel %>% mutate(pct_25 = pct_25 / 3)
vel <- vel %>% mutate(pct_15 = pct_15 / 3)
vel <- vel %>% mutate(pct_50 = ifelse(ycat == 'haz', NA, pct_50))
vel <- vel %>% mutate(pct_25 = ifelse(ycat == 'haz', NA, pct_25))
vel <- vel %>% mutate(pct_15 = ifelse(ycat == 'haz', NA, pct_15))

# remove mo from age label
vel <- vel %>% 
  mutate(strata = gsub(" mo.", "", strata)) %>%
  mutate(strata = factor(strata, 
                         levels = c("0-3", "3-6", "6-9",
                                    "9-12", "12-15", "15-18",
                                    "18-21", "21-24")))

# clean up y label
vel$ycat <- gsub('haz', 'LAZ change (Z-score per month)', vel$ycat)
vel$ycat <- gsub('lencm', 'Length velocity (cm per month)', vel$ycat)


#-------------------------------------
# LAZ plot
#-------------------------------------
velplot_laz = vel %>% filter(country_cohort=="Pooled - All" &
                               ycat == "LAZ change (Z-score per month)") %>%
  mutate(sex = factor(sex))


plot_laz <- ggplot(velplot_laz, aes(y=Mean,x=strata))+
  geom_point(aes(fill=sex, color=sex), size = 3) +
  geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                 alpha=0.5, size = 1) +
  scale_color_manual(values=c(tableau10[4],tableau10[1]))+  
  scale_y_continuous(limits=c(-0.25,0.1), breaks=seq(-0.25,0.1,0.05), labels=seq(-0.25,0.1,0.05)) +
  xlab("Age in months") + 
  ylab("Length-for-age Z-score")+
  geom_hline(yintercept = -0) +
  facet_wrap( ~ sex) +
  ggtitle("A) Monthly change in LAZ") 


ggsave(plot_laz, file="figures/stunting/fig_stunt_vel_laz_pool_sub.png", width=12, height=6)


#-------------------------------------
# LAZ plot - stratified by region
#-------------------------------------
velplot_laz_strat = vel %>% filter(ycat == "LAZ change (Z-score per month)") %>%
  mutate(sex = factor(sex))

plot_laz_strat <- ggplot(velplot_laz_strat %>% filter(pooled==1), aes(y=Mean,x=strata))+
  geom_point(aes(fill=sex, color=sex), size = 3, position = position_dodge(width=0.5)) +
  geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                 alpha=0.5, size = 1, position = position_dodge(width=0.5)) +
  scale_color_manual(values=c(tableau10[4],tableau10[1]))+  
  scale_y_continuous(limits=c(-0.5,0.35), breaks=seq(-0.5,0.35,0.05), labels=seq(-0.5,0.35,0.05)) +
  xlab("Age in months") + 
  ylab("Length-for-age Z-score")+
  geom_hline(yintercept = -0) +
  facet_grid( ~  region) +
  ggtitle("A) Monthly change in LAZ") 

#-------------------------------------
# LAZ plot - stratified by cohort
#-------------------------------------
plot_laz_cohort_asia <- ggplot(velplot_laz_strat %>% filter(region=="Asia"), aes(y=Mean,x=strata))+
  geom_point(aes(fill=sex, color=sex), size = 3, position = position_dodge(width=0.5)) +
  geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                 alpha=0.5, size = 1, position = position_dodge(width=0.5)) +
  scale_color_manual(values=c(tableau10[4],tableau10[1]))+  
  xlab("Age in months") + 
  ylab("Length-for-age Z-score")+
  geom_hline(yintercept = -0) +
  facet_wrap( ~  country_cohort) +
  ggtitle("A) Monthly change in LAZ") 
ggsave(plot_laz_cohort_asia, file="figures/stunting/fig_stunt_vel_cm_asia_sub.png", width=18, height=10)

plot_laz_cohort_latamer <- ggplot(velplot_laz_strat %>% filter(region=="Latin America"), aes(y=Mean,x=strata))+
  geom_point(aes(fill=sex, color=sex), size = 3, position = position_dodge(width=0.5)) +
  geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                 alpha=0.5, size = 1, position = position_dodge(width=0.5)) +
  scale_color_manual(values=c(tableau10[4],tableau10[1]))+  
  xlab("Age in months") + 
  ylab("Length-for-age Z-score")+
  geom_hline(yintercept = -0) +
  facet_wrap( ~  country_cohort) +
  ggtitle("A) Monthly change in LAZ") 

ggsave(plot_laz_cohort_latamer, file="figures/stunting/fig_stunt_vel_cm_latamer_sub.png", width=18, height=10)

plot_laz_cohort_eur <- ggplot(velplot_laz_strat %>% filter(region=="Europe"), aes(y=Mean,x=strata))+
  geom_point(aes(fill=sex, color=sex), size = 3, position = position_dodge(width=0.5)) +
  geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                 alpha=0.5, size = 1, position = position_dodge(width=0.5)) +
  scale_color_manual(values=c(tableau10[4],tableau10[1]))+  
  xlab("Age in months") + 
  ylab("Length-for-age Z-score")+
  geom_hline(yintercept = -0) +
  facet_wrap( ~  country_cohort) +
  ggtitle("A) Monthly change in LAZ") 

ggsave(plot_laz_cohort_eur, file="figures/stunting/fig_stunt_vel_cm_eur_sub.png", width=8, height=6)

plot_laz_cohort_afr <- ggplot(velplot_laz_strat %>% filter(region=="Africa"), aes(y=Mean,x=strata))+
  geom_point(aes(fill=sex, color=sex), size = 3, position = position_dodge(width=0.5)) +
  geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                 alpha=0.5, size = 1, position = position_dodge(width=0.5)) +
  scale_color_manual(values=c(tableau10[4],tableau10[1]))+  
  xlab("Age in months") + 
  ylab("Length-for-age Z-score")+
  geom_hline(yintercept = -0) +
  facet_wrap( ~  country_cohort) +
  ggtitle("A) Monthly change in LAZ") 

ggsave(plot_laz_cohort_afr, file="figures/stunting/fig_stunt_vel_cm_africa_sub.png", width=18, height=10)



#-------------------------------------
# absolute length plot

# to do: add legend for WHO standard
#-------------------------------------
velplot_cm = vel %>% filter(country_cohort=="Pooled - All" &
                              ycat == "Length velocity (cm per month)") %>%
  select(Mean, `Lower.95.CI`, `Upper.95.CI`, strata, sex, pct_50, pct_25, pct_15) %>%
  mutate(sex = as.factor(sex))

plot_cm <- ggplot(velplot_cm, aes(y=Mean,x=strata))+
  geom_point(aes(color=sex), size = 3) +
  geom_line(aes(y=Mean, group=sex, col=sex)) +
  geom_line(aes(y=pct_50, group=sex)) +
  geom_line(aes(y=pct_25, group=sex), linetype="dashed") +
  geom_line(aes(y=pct_15, group=sex), linetype="dotted") +
  
  geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                 alpha=0.5, size = 1) +
  scale_color_manual(values=c(tableau10[4],tableau10[1]))+  
  scale_y_continuous(limits=c(0.5,3.85), breaks=seq(0,4,0.25), labels=seq(0,4,0.25)) +
  xlab("Age in months") +  
  ylab("Length (cm)") +
  facet_wrap( ~ sex) +
  ggtitle("B) Monthly change in length (cm)") 

ggsave(plot_cm, file="figures/stunting/fig_stunt_vel_cm_pool_sub.png", width=10, height=8)

#-------------------------------------
# absolute length plot - stratified by region

# to do: add legend for WHO standard
#-------------------------------------
velplot_cm_strat = vel %>% 
  filter(ycat == "Length velocity (cm per month)") %>%
  filter(pooled==1) %>%
  select(region, Mean, `Lower.95.CI`, `Upper.95.CI`, strata, sex, pct_50, pct_25, pct_15) %>%
  mutate(sex = as.factor(sex))

plot_cm_strat <- ggplot(velplot_cm_strat, aes(y=Mean,x=strata))+
  geom_point(aes(color=sex), size = 3) +
  geom_line(aes(y=Mean, group=sex, col=sex)) +
  geom_line(aes(y=pct_50, group=sex)) +
  geom_line(aes(y=pct_25, group=sex), linetype="dashed") +
  geom_line(aes(y=pct_15, group=sex), linetype="dotted") +
  
  geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                 alpha=0.5, size = 1) +
  scale_color_manual(values=c(tableau10[4],tableau10[1]))+  
  scale_y_continuous(limits=c(0.3,4.3), breaks=seq(0.25,4.3,0.25), labels=seq(0.25,4.3,0.25)) +
  xlab("Age in months") +  
  ylab("Length (cm)") +
  facet_grid( sex~ region) +
  ggtitle("B) Monthly change in length (cm)") 

#-------------------------------------
# combined LAZ and length plots
#-------------------------------------
combined_plot = grid.arrange(plot_laz, plot_cm, nrow = 2, heights = c(4, 8))
combined_plot_strat = grid.arrange(plot_laz_strat, plot_cm_strat, nrow = 2, heights = c(4, 10))

ggsave(combined_plot, file="figures/stunting/fig_stunt_vel_pool_sub.png", width=10, height=8)
ggsave(combined_plot_strat, file="figures/stunting/fig_stunt_vel_region_sub.png", width=16, height=18)

