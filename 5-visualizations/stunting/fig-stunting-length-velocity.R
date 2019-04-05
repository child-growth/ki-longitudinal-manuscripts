##########################################
# ki longitudinal manuscripts
# stunting analysis
#
# plots of linear growth velocity

# inputs: pool_vel.RData, meanlaz_velocity.RDS

# outputs: 
# fig_stunt_vel_laz_pool.png
# fig_stunt_vel_cm_asia.png
# fig_stunt_vel_cm_latamer.png
# fig_stunt_vel_cm_eur.png
# fig_stunt_vel_cm_africa.png
# fig_stunt_vel_cm_pool.png
# fig_stunt_vel_pool.png
# fig_stunt_vel_region.png
##########################################
#-----------------------------------
# preamble
#-----------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load length velocity data
load(paste0(res_dir,"pool_vel.RData"))
meanlaz = readRDS(paste0(here(), "/results/meanlaz_velocity.RDS"))

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
# mean LAZ plot
#-------------------------------------
meanlaz = meanlaz %>% 
  filter(region=="Overall") %>%
  mutate(agecat = factor(agecat, 
                         levels = c("0-3", "3-6", "6-9",
                                    "9-12", "12-15", "15-18",
                                    "18-21", "21-24")))

plot_mean_laz = ggplot(meanlaz, aes(y=est, x = agecat)) + 
  geom_point(aes(col=sex), position = position_dodge(width=0.2), size=3) +
  geom_linerange(aes(ymin = lb, ymax = ub, col=sex), 
                 position = position_dodge(width=0.2)) +
  scale_color_manual(values = c(tableau10[4], tableau10[1])) + 
  scale_y_continuous(limits = c(-2.5, -0.25)) +
  xlab("Child age, months") + 
  ylab("Mean LAZ\n ") +
  ggtitle("c\n")+
  theme(plot.title = element_text(hjust=0)) 
 
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
  xlab("Child age, months") +  
  ylab("Difference in length-for-age\nZ-score per month")+
  geom_hline(yintercept = -0) +
  facet_wrap( ~ sex) +
  # ggtitle("B) Monthly change in LAZ")  +
  ggtitle("b") +
  theme(plot.title = element_text(hjust=0))


ggsave(plot_laz, file="figures/stunting/fig_stunt_vel_laz_pool.png", width=12, height=6)

plot_laz2 <- ggplot(velplot_laz, aes(y=Mean,x=strata))+
  geom_point(aes(fill=sex, color=sex), size = 3, position = position_dodge(width = 0.2)) +
  geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                 alpha=0.5, size = 1, position = position_dodge(width = 0.2)) +
  scale_color_manual(values=c(tableau10[4],tableau10[1]))+  
  scale_y_continuous(limits=c(-0.25,0.1), breaks=seq(-0.25,0.1,0.05), labels=seq(-0.25,0.1,0.05)) +
  xlab("Child age, months") +  
  ylab("Difference in length-for-age\nZ-score per month")+
  geom_hline(yintercept = -0) +
  ggtitle("b") +
  theme(plot.title = element_text(hjust=0))



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
  scale_y_continuous(limits=c(-0.5,0.25), breaks=seq(-0.5,0.25,0.05), labels=seq(-0.5,0.25,0.05)) +
  xlab("Child age, months") +  
  ylab("Difference in length-for-age\nZ-score per month")+
  geom_hline(yintercept = -0) +
  facet_grid( ~  region) +
  ggtitle("B) Monthly change in LAZ") +
  theme(plot.title = element_text(hjust=0))


#-------------------------------------
# LAZ plot - stratified by cohort
#-------------------------------------
plot_laz_cohort_asia <- ggplot(velplot_laz_strat %>% filter(region=="Asia"), aes(y=Mean,x=strata))+
  geom_point(aes(fill=sex, color=sex), size = 3, position = position_dodge(width=0.5)) +
  geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                 alpha=0.5, size = 1, position = position_dodge(width=0.5)) +
  scale_color_manual(values=c(tableau10[4],tableau10[1]))+  
  xlab("Child age, months") +  
  ylab("Difference in length-for-age\nZ-score per month")+
  geom_hline(yintercept = -0) +
  facet_wrap( ~  country_cohort) +
  ggtitle("B) Monthly change in LAZ") +
  theme(plot.title = element_text(hjust=0))

ggsave(plot_laz_cohort_asia, file="figures/stunting/fig_stunt_vel_cm_asia.png", width=18, height=10)

plot_laz_cohort_latamer <- ggplot(velplot_laz_strat %>% filter(region=="Latin America"), aes(y=Mean,x=strata))+
  geom_point(aes(fill=sex, color=sex), size = 3, position = position_dodge(width=0.5)) +
  geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                 alpha=0.5, size = 1, position = position_dodge(width=0.5)) +
  scale_color_manual(values=c(tableau10[4],tableau10[1]))+  
  xlab("Child age, months") +  
  ylab("Difference in length-for-age\nZ-score per month")+
  geom_hline(yintercept = -0) +
  facet_wrap( ~  country_cohort) +
  ggtitle("B) Monthly change in LAZ") +
  theme(plot.title = element_text(hjust=0))


ggsave(plot_laz_cohort_latamer, file="figures/stunting/fig_stunt_vel_cm_latamer.png", width=18, height=10)

plot_laz_cohort_eur <- ggplot(velplot_laz_strat %>% filter(region=="Europe"), aes(y=Mean,x=strata))+
  geom_point(aes(fill=sex, color=sex), size = 3, position = position_dodge(width=0.5)) +
  geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                 alpha=0.5, size = 1, position = position_dodge(width=0.5)) +
  scale_color_manual(values=c(tableau10[4],tableau10[1]))+  
  xlab("Child age, months") +  
  ylab("Difference in length-for-age\nZ-score per month")+
  geom_hline(yintercept = -0) +
  facet_wrap( ~  country_cohort) +
  ggtitle("B) Monthly change in LAZ") +
  theme(plot.title = element_text(hjust=0))


ggsave(plot_laz_cohort_eur, file="figures/stunting/fig_stunt_vel_cm_eur.png", width=8, height=6)

plot_laz_cohort_afr <- ggplot(velplot_laz_strat %>% filter(region=="Africa"), aes(y=Mean,x=strata))+
  geom_point(aes(fill=sex, color=sex), size = 3, position = position_dodge(width=0.5)) +
  geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                 alpha=0.5, size = 1, position = position_dodge(width=0.5)) +
  scale_color_manual(values=c(tableau10[4],tableau10[1]))+  
  xlab("Child age, months") +  
  ylab("Difference in length-for-age\nZ-score per month")+
  geom_hline(yintercept = -0) +
  facet_wrap( ~  country_cohort) +
  ggtitle("B) Monthly change in LAZ") +
  theme(plot.title = element_text(hjust=0))


ggsave(plot_laz_cohort_afr, file="figures/stunting/fig_stunt_vel_cm_africa.png", width=18, height=10)



#-------------------------------------
# absolute length plot

# to do: add legend for WHO standard
#-------------------------------------
velplot_cm = vel %>% filter(country_cohort=="Pooled - All" &
                              ycat == "Length velocity (cm per month)") %>%
  select(Mean, `Lower.95.CI`, `Upper.95.CI`, strata, sex, pct_50, pct_25, pct_15) %>%
  mutate(sex = as.factor(sex)) %>% 
  gather(`pct_15`, `pct_25`, `pct_50`, `Mean`, key = "msmt_type", value = "length_cm") %>% 
  mutate(linecol = ifelse(msmt_type != "Mean", "black", ifelse(sex == "Male", "red", "blue")), 
         sexcol = ifelse(sex == "Male", "red2", "blue2"))

plot_cm <- ggplot(velplot_cm, aes(y = length_cm, x = strata)) +
  geom_point(data = subset(velplot_cm, msmt_type == "Mean"), aes(color = sexcol), size = 3) +
  geom_line(aes(y = length_cm, group = msmt_type, color = linecol, linetype = msmt_type)) +

  geom_linerange(aes(ymin = Lower.95.CI, ymax = Upper.95.CI, color = sexcol),
                 alpha=0.5, size = 1) +

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
                                "blue" = tableau10[4],
                                "red" = tableau10[1], 
                                "blue" = "blue", 
                                "red2" = tableau10[1], 
                                "blue2" = tableau10[4],
                                "red2" = tableau10[1], 
                                "blue2" = tableau10[4])) +
  
  scale_y_continuous(limits=c(0.5,3.85), breaks=seq(0,4,0.25), labels=seq(0,4,0.25)) +
  xlab("Child age, months") +  
  ylab("Difference in length (cm) per month\n")+
  facet_wrap( ~ sex) +
  ggtitle("a") +
  
  guides(color=FALSE) +
  
  labs(linetype = c("", "12", "14", "13")) +
  
  theme(legend.position = c(.9, .8),
        # legend.title = element_blank(),
        legend.background = element_blank(),
        legend.box.background = element_rect(colour = "black"),
        plot.title = element_text(hjust=0))

plot_cm

ggsave(plot_cm, file="figures/stunting/fig_stunt_vel_cm_pool.png", width=10, height=8)

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
  scale_y_continuous(limits=c(0.3,4.2), breaks=seq(0.25,4.25,0.25), labels=seq(0.25,4.25,0.25)) +
  xlab("Child age, months") +  
  ylab("Difference in length (cm) per month")+
  facet_grid( sex~ region) +
  ggtitle("A) Monthly change in length (cm)") +
  theme(plot.title = element_text(hjust=0))


#-------------------------------------
# combined LAZ and length plots
#-------------------------------------
combined_plot = grid.arrange(plot_cm, plot_laz2, plot_mean_laz, 
                              nrow = 3, heights = c(8, 4, 4))
combined_plot_strat = grid.arrange(plot_cm_strat, plot_laz_strat, nrow = 2, heights = c(10, 4))

#-------------------------------------
# define standardized plot names
#-------------------------------------
combined_plot_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "growth velocity",
  population = "overall",
  location = "",
  age = "all",
  analysis = "primary"
)

combined_plot_strat_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "growth velocity",
  population = "region",
  location = "",
  age = "all",
  analysis = "primary"
)

#-------------------------------------
# save plots
#-------------------------------------
ggsave(combined_plot, file=paste0("figures/stunting/", combined_plot_name,
        ".png"), width=10, height=8)
ggsave(combined_plot_strat, file="figures/stunting/",combined_plot_strat_name,
       ".png", width=16, height=18)

#-------------------------------------
# save input data 
#-------------------------------------
saveRDS(
  list(
    velplot_cm = velplot_cm,
    velplot_laz = velplot_laz,
    meanlaz = meanlaz
  ),
  file = paste0("figures/stunting/", combined_plot_name, ".RDS")
)

saveRDS(
  list(
    velplot_cm = velplot_cm_strat,
    velplot_laz = velplot_laz_strat
  ),
  file = paste0("figures/stunting/", combined_plot_strat_name, ".RDS")
)
