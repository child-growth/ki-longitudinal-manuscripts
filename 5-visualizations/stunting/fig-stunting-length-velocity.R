##########################################
# ki longitudinal manuscripts
# stunting analysis
#
# plots of linear growth velocity
# both overall and cohort-specific within region

# inputs: pool_vel.RData, meanlaz_velocity.RDS

# outputs: 
# overall plots: 
#   fig-stunt-2-vel-overall--allage-primary.png
#   fig-laz-2-length_vel-overall--allage-primary.png
#   fig-laz-2-laz_vel-overall--allage-primary.png

# region-stratified plots:
#   fig-stunt-2-vel-region--allage-primary.png
#   fig-laz-2-length_vel-region--allage-primary.png
#   fig-laz-2-laz_vel-region--allage-primary.png

# cohort-stratified plots: 
#   fig-stunt-2-vel-cohort-africa-allage-primary.png
#   fig-stunt-2-vel-cohort-eur-allage-primary.png
#   fig-stunt-2-vel-cohort-latamer-allage-primary.png
#   fig-stunt-2-vel-cohort-asia-allage-primary.png

# data for each plot is saved as an RDS file
# with the same file name and the prefix "figdata"

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
meanlaz_overall = meanlaz %>% 
  filter(region=="Overall") %>%
  mutate(agecat = factor(agecat, 
                         levels = c("0-3", "3-6", "6-9",
                                    "9-12", "12-15", "15-18",
                                    "18-21", "21-24")))

plot_mean_laz = ggplot(meanlaz_overall, aes(y=est, x = agecat)) + 
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
# mean LAZ plot stratified by region
#-------------------------------------
meanlaz_strat = meanlaz %>% 
  filter(cohort == "pooled") %>%
  filter(region !="Europe") %>%
  mutate(agecat = factor(agecat, 
                         levels = c("0-3", "3-6", "6-9",
                                    "9-12", "12-15", "15-18",
                                    "18-21", "21-24")),
         region = ifelse(region == "Asia", "South Asia", region)) %>%
  mutate(region = factor(region, levels=c("Overall", "Africa", "Latin America", "South Asia")))

plot_mean_laz_strat = ggplot(meanlaz_strat, aes(y=est, x = agecat)) + 
  geom_point(aes(col=sex), position = position_dodge(width=0.6), size=3) +
  geom_linerange(aes(ymin = lb, ymax = ub, col=sex), 
                 position = position_dodge(width=0.6)) +
  scale_color_manual(values = c(tableau10[4], tableau10[1])) + 
  xlab("Child age, months") + 
  ylab("Mean LAZ\n ") +
  ggtitle("c")+
  theme(plot.title = element_text(hjust=0),
        strip.text.x = element_text(size=20, face="bold"),
        axis.title.x = element_text(size=20),
        axis.title.y = element_text(size=20),
        plot.title = element_text(size = 20, face = "bold")) +
  facet_grid(~region)
 
#-------------------------------------
# LAZ plot
#-------------------------------------
velplot_laz = vel %>% filter(country_cohort=="Pooled - All" &
                               ycat == "LAZ change (Z-score per month)") %>%
  mutate(sex = factor(sex))

plot_laz <- ggplot(velplot_laz, aes(y=Mean,x=strata))+
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

# define standardized plot names
plot_laz_name = create_name(
  outcome = "laz",
  cutoff = 2,
  measure = "laz velocity",
  population = "overall",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(plot_laz, file=paste0("figures/stunting/fig-",plot_laz_name,".png"), width=12, height=6)
saveRDS(velplot_laz, file=paste0("results/figure-data/figdata-",plot_laz_name,".RDS"))


#-------------------------------------
# LAZ plot - stratified by region
#-------------------------------------
velplot_laz_strat = vel %>% filter(ycat == "LAZ change (Z-score per month)") %>%
  mutate(sex = factor(sex),
         region = ifelse(region == "Asia", "South Asia", region)) %>%
  mutate(region = factor(region, levels=c("Overall", "Africa", "Latin America", "South Asia")))

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
  ggtitle("b") +
  theme(plot.title = element_text(hjust=0),
        strip.text.x = element_text(size=20, face="bold"),
        axis.title.x = element_text(size=20),
        axis.title.y = element_text(size=20),
        plot.title = element_text(size = 20, face = "bold"))


# define standardized plot names
plot_laz_strat_name = create_name(
  outcome = "laz",
  cutoff = 2,
  measure = "laz velocity",
  population = "region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(plot_laz_strat, file=paste0("figures/stunting/fig-",plot_laz_strat_name,".png"), width=12, height=6)
saveRDS(velplot_laz_strat, file=paste0("results/figure-data/figdata-",plot_laz_strat_name,".RDS"))


#-------------------------------------
# LAZ plot - asian cohorts
#-------------------------------------
velplot_laz_asia = velplot_laz_strat %>% filter(region=="Asia")

plot_laz_cohort_asia <- ggplot(velplot_laz_asia, aes(y=Mean,x=strata))+
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

# define standardized plot names
plot_laz_cohort_asia_name = create_name(
  outcome = "laz",
  cutoff = 2,
  measure = "laz velocity",
  population = "cohort-stratified",
  location = "South Asia",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(plot_laz_cohort_asia, file=paste0("figures/stunting/fig-",plot_laz_cohort_asia_name,".png"), 
       width=18, height=10)
saveRDS(velplot_laz_asia, file=paste0("results/figure-data/figdata-",plot_laz_cohort_asia_name,".RDS"))


#-------------------------------------
# LAZ plot - latin american cohorts
#-------------------------------------
velplot_laz_latamer = velplot_laz_strat %>% filter(region=="Latin America")

plot_laz_cohort_latamer <- ggplot(velplot_laz_latamer, aes(y=Mean,x=strata))+
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


# define standardized plot names
plot_laz_cohort_latamer_name = create_name(
  outcome = "laz",
  cutoff = 2,
  measure = "laz velocity",
  population = "cohort-stratified",
  location = "Latin America",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(plot_laz_cohort_latamer, file=paste0("figures/stunting/fig-",plot_laz_cohort_latamer_name,".png"), 
       width=18, height=10)
saveRDS(velplot_laz_latamer, file=paste0("results/figure-data/figdata-",plot_laz_cohort_latamer_name,".RDS"))

#-------------------------------------
# LAZ plot - european cohorts
#-------------------------------------
velplot_laz_eur = velplot_laz_strat %>% filter(region=="Europe")

plot_laz_cohort_eur <- ggplot(velplot_laz_eur, aes(y=Mean,x=strata))+
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


# define standardized plot names
plot_laz_cohort_eur_name = create_name(
  outcome = "laz",
  cutoff = 2,
  measure = "laz velocity",
  population = "cohort-stratified",
  location = "Europe",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(plot_laz_cohort_eur, file=paste0("figures/stunting/fig-",plot_laz_cohort_eur_name,".png"), 
       width=8, height=6)
saveRDS(velplot_laz_eur, file=paste0("results/figure-data/figdata-",plot_laz_cohort_eur_name,".RDS"))

#-------------------------------------
# LAZ plot - african cohorts
#-------------------------------------
velplot_laz_afr = velplot_laz_strat %>% filter(region=="Africa")

plot_laz_cohort_afr <- ggplot(velplot_laz_afr, aes(y=Mean,x=strata))+
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


# define standardized plot names
plot_laz_cohort_afr_name = create_name(
  outcome = "laz",
  cutoff = 2,
  measure = "laz velocity",
  population = "cohort-stratified",
  location = "Africa",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(plot_laz_cohort_afr, file=paste0("figures/stunting/fig-",plot_laz_cohort_afr_name,".png"), 
       width=18, height=10)
saveRDS(velplot_laz_afr, file=paste0("results/figure-data/figdata-",plot_laz_cohort_afr_name,".RDS"))


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


# define standardized plot names
plot_cm_name = create_name(
  outcome = "laz",
  cutoff = 2,
  measure = "length velocity",
  population = "overall",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(plot_cm, file=paste0("figures/stunting/fig-",plot_cm_name,".png"), 
       width=10, height=8)
saveRDS(velplot_cm, file=paste0("results/figure-data/figdata-",plot_cm_name,".RDS"))

#-------------------------------------
# absolute length plot - stratified by region
#-------------------------------------
velplot_cm_strat = vel %>% 
  filter(ycat == "Length velocity (cm per month)") %>%
  filter(pooled==1) %>%
  select(region, Mean, `Lower.95.CI`, `Upper.95.CI`, strata, sex, pct_50, pct_25, pct_15) %>%
  mutate(sex = as.factor(sex),
         region = ifelse(region == "Asia", "South Asia", region)) %>%
  mutate(region = factor(region, levels=c("Overall", "Africa", "Latin America", "South Asia")))

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
  ggtitle("a") +
  theme(plot.title = element_text(hjust=0),
        strip.text.x = element_text(size=20, face="bold"),
        strip.text.y = element_text(size=20),
        axis.title.x = element_text(size=20),
        axis.title.y = element_text(size=20),
        plot.title = element_text(size = 20, face = "bold"))

# define standardized plot names
plot_cm_strat_name = create_name(
  outcome = "laz",
  cutoff = 2,
  measure = "length velocity",
  population = "region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(plot_cm_strat, file=paste0("figures/stunting/fig-",plot_cm_strat_name,".png"), 
       width=10, height=8)
saveRDS(velplot_cm_strat, file=paste0("results/figure-data/figdata-",plot_cm_strat_name,".RDS"))

######################################
# combined LAZ and length plots
######################################
# add margin around plots
plot_cm_strat = plot_cm_strat + theme(plot.margin = 
                                        unit(c(t = 0.1, r = 0.1, b = 0.1, l = 1.2), "cm"))
plot_laz_strat = plot_laz_strat + theme(plot.margin = 
                                          unit(c(t = 0.5, r = 0.7, b = 0.1, l = 0.2), "cm"))
plot_mean_laz_strat = plot_mean_laz_strat + theme(plot.margin = 
                                          unit(c(t = 0.1, r = 0.7, b = 0.1, l = 0.4), "cm"))


combined_plot = grid.arrange(plot_cm, plot_laz, plot_mean_laz, 
                              nrow = 3, heights = c(8, 4, 4))
combined_plot_strat = grid.arrange(plot_cm_strat, plot_laz_strat, plot_mean_laz_strat,
                                   nrow = 3, heights = c(10, 4, 4))

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
  analysis = "primary"
)

combined_plot_strat_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "growth velocity",
  population = "region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

#-------------------------------------
# save overall plots together
#-------------------------------------
ggsave(combined_plot, file=paste0("figures/stunting/fig-", combined_plot_name,
        ".png"), width=10, height=8)
ggsave(combined_plot_strat, file=paste0("figures/stunting/fig-",combined_plot_strat_name,
       ".png"), width=16, height=18)

#-------------------------------------
# save input data 
#-------------------------------------
saveRDS(
  list(
    velplot_cm = velplot_cm,
    velplot_laz = velplot_laz,
    meanlaz_overall = meanlaz_overall
  ),
  file = paste0("results/figure-data/figdata-", combined_plot_name, ".RDS")
)

saveRDS(
  list(
    velplot_cm_strat = velplot_cm_strat,
    velplot_laz_strat = velplot_laz_strat,
    meanlaz_strat = meanlaz_strat
  ),
  file = paste0("results/figure-data/figdata-", combined_plot_strat_name, ".RDS")
)
