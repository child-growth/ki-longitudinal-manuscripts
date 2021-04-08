##########################################
# ki longitudinal manuscripts
# stunting analysis
#
# plots of linear growth velocity

# Sensitivity analysis excluding COHORTS Guatemala 
# and Content, which had stronger LAZ velocity
# faltering for males

# inputs: pool_vel_sub.RDS,  
# WHO_linear_growth_velocity_standard.RDS

# outputs: 
# overall plots: 
#   fig-stunt-2-vel-overall--allage-exc_male_eff.png
#   fig-laz-2-length_vel-overall--allage-exc_male_eff.png
#   fig-laz-2-laz_vel-overall--allage-exc_male_eff.png

# region-stratified plots:
#   fig-stunt-2-vel-region--allage-exc_male_eff.png
#   fig-laz-2-length_vel-region--allage-exc_male_eff.png
#   fig-laz-2-laz_vel-region--allage-exc_male_eff.png

# cohort-stratified plots: 
#   fig-stunt-2-vel-cohort-africa-allage-exc_male_eff.png
#   fig-stunt-2-vel-cohort-eur-allage-exc_male_eff.png
#   fig-stunt-2-vel-cohort-latamer-allage-exc_male_eff.png
#   fig-stunt-2-vel-cohort-asia-allage-exc_male_eff.png

# data for each plot is saved as an RDS file
# with the same file name and the prefix "figdata"

##########################################
#-----------------------------------
# preamble
#-----------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# Load length velocity data
vel = readRDS(paste0(res_dir,"/stunting/pool_vel_sub.RDS"))

# load who standard
who_cm = readRDS(paste0(res_dir, "/WHO_linear_growth_velocity_standard.RDS"))

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
  scale_color_manual(values=mypalette)+  
  scale_y_continuous(limits=c(-0.25,0.1), breaks=seq(-0.25,0.1,0.05), labels=seq(-0.25,0.1,0.05)) +
  xlab("Age in months") + 
  ylab("Length-for-age Z-score")+
  geom_hline(yintercept = -0) +
  facet_wrap( ~ sex) +
  ggtitle("A) Monthly change in LAZ") 


# define standardized plot names
plot_laz_name = create_name(
  outcome = "laz",
  cutoff = 2,
  measure = "LAZ velocity",
  population = "overall",
  location = "",
  age = "All ages",
  analysis = "exclude excluding COHORTS Guatemala and Content"
)

# save plot and underlying data
ggsave(plot_laz, file=paste0(fig_dir, "stunting/fig-",plot_laz_name,".png"), width=12, height=6)
saveRDS(velplot_laz, file=paste0(figdata_dir_stunting, "figdata-",plot_laz_name,".RDS"))

#-------------------------------------
# LAZ plot - stratified by region
#-------------------------------------
velplot_laz_strat = vel %>% filter(ycat == "LAZ change (Z-score per month)") %>%
  mutate(sex = factor(sex))

plot_laz_strat <- ggplot(velplot_laz_strat %>% filter(pooled==1), aes(y=Mean,x=strata))+
  geom_point(aes(fill=sex, color=sex), size = 3, position = position_dodge(width=0.5)) +
  geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                 alpha=0.5, size = 1, position = position_dodge(width=0.5)) +
  scale_color_manual(values=mypalette)+  
  scale_y_continuous(limits=c(-0.5,0.35), breaks=seq(-0.5,0.35,0.05), labels=seq(-0.5,0.35,0.05)) +
  xlab("Age in months") + 
  ylab("Length-for-age Z-score")+
  geom_hline(yintercept = -0) +
  facet_grid( ~  region) +
  ggtitle("A) Monthly change in LAZ") 


# define standardized plot names
plot_laz_strat_name = create_name(
  outcome = "laz",
  cutoff = 2,
  measure = "LAZ velocity",
  population = "region-stratified",
  location = "",
  age = "All ages",
  analysis = "exclude excluding COHORTS Guatemala and Content"
)

# save plot and underlying data
ggsave(plot_laz_strat, file=paste0(fig_dir, "stunting/fig-",plot_laz_strat_name,".png"), width=12, height=6)
saveRDS(velplot_laz_strat, file=paste0(figdata_dir_stunting, "figdata-",plot_laz_strat_name,".RDS"))


#-------------------------------------
# LAZ plot - asian cohorts
#-------------------------------------
velplot_laz_asia = velplot_laz_strat %>% filter(region=="Asia")

plot_laz_cohort_asia <- ggplot(velplot_laz_asia, aes(y=Mean,x=strata))+
  geom_point(aes(fill=sex, color=sex), size = 3, position = position_dodge(width=0.5)) +
  geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                 alpha=0.5, size = 1, position = position_dodge(width=0.5)) +
  scale_color_manual(values=mypalette)+  
  xlab("Age in months") + 
  ylab("Length-for-age Z-score")+
  geom_hline(yintercept = -0) +
  facet_wrap( ~  country_cohort) +
  ggtitle("A) Monthly change in LAZ") 
ggsave(plot_laz_cohort_asia, file=here("figures/stunting/fig_stunt_vel_cm_asia_sub.png"), width=18, height=10)

# define standardized plot names
plot_laz_cohort_asia_name = create_name(
  outcome = "laz",
  cutoff = 2,
  measure = "LAZ velocity",
  population = "cohort-stratified",
  location = "South Asia",
  age = "All ages",
  analysis = "exclude excluding COHORTS Guatemala and Content"
)

# save plot and underlying data
ggsave(plot_laz_cohort_asia, file=paste0(fig_dir, "stunting/fig-",plot_laz_cohort_asia_name,".png"), 
       width=18, height=10)
saveRDS(velplot_laz_asia, file=paste0(figdata_dir_stunting, "figdata-",plot_laz_cohort_asia_name,".RDS"))


#-------------------------------------
# LAZ plot - latin american cohorts
#-------------------------------------
velplot_laz_latamer = velplot_laz_strat %>% filter(region=="Latin America")

plot_laz_cohort_latamer <- ggplot(velplot_laz_latamer, aes(y=Mean,x=strata))+
  geom_point(aes(fill=sex, color=sex), size = 3, position = position_dodge(width=0.5)) +
  geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                 alpha=0.5, size = 1, position = position_dodge(width=0.5)) +
  scale_color_manual(values=mypalette)+  
  xlab("Age in months") + 
  ylab("Length-for-age Z-score")+
  geom_hline(yintercept = -0) +
  facet_wrap( ~  country_cohort) +
  ggtitle("A) Monthly change in LAZ") 

# define standardized plot names
plot_laz_cohort_latamer_name = create_name(
  outcome = "laz",
  cutoff = 2,
  measure = "LAZ velocity",
  population = "cohort-stratified",
  location = "Latin America",
  age = "All ages",
  analysis = "exclude excluding COHORTS Guatemala and Content"
)

# save plot and underlying data
ggsave(plot_laz_cohort_latamer, file=paste0(fig_dir, "stunting/fig-",plot_laz_cohort_latamer_name,".png"), 
       width=18, height=10)
saveRDS(velplot_laz_latamer, file=paste0(figdata_dir_stunting, "figdata-",plot_laz_cohort_latamer_name,".RDS"))

#-------------------------------------
# LAZ plot - european cohorts
#-------------------------------------
velplot_laz_eur = velplot_laz_strat %>% filter(region=="Europe")

plot_laz_cohort_eur <- ggplot(velplot_laz_eur, aes(y=Mean,x=strata))+
  geom_point(aes(fill=sex, color=sex), size = 3, position = position_dodge(width=0.5)) +
  geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                 alpha=0.5, size = 1, position = position_dodge(width=0.5)) +
  scale_color_manual(values=mypalette)+  
  xlab("Age in months") + 
  ylab("Length-for-age Z-score")+
  geom_hline(yintercept = -0) +
  facet_wrap( ~  country_cohort) +
  ggtitle("A) Monthly change in LAZ") 

# define standardized plot names
plot_laz_cohort_eur_name = create_name(
  outcome = "laz",
  cutoff = 2,
  measure = "LAZ velocity",
  population = "cohort-stratified",
  location = "Europe",
  age = "All ages",
  analysis = "exclude excluding COHORTS Guatemala and Content"
)

# save plot and underlying data
ggsave(plot_laz_cohort_eur, file=paste0(fig_dir, "stunting/fig-",plot_laz_cohort_eur_name,".png"), 
       width=8, height=6)
saveRDS(velplot_laz_eur, file=paste0(figdata_dir_stunting, "figdata-",plot_laz_cohort_eur_name,".RDS"))

#-------------------------------------
# LAZ plot - african cohorts
#-------------------------------------
velplot_laz_afr = velplot_laz_strat %>% filter(region=="Africa")

plot_laz_cohort_afr <- ggplot(velplot_laz_afr, aes(y=Mean,x=strata))+  
  geom_point(aes(fill=sex, color=sex), size = 3, position = position_dodge(width=0.5)) +
  geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                 alpha=0.5, size = 1, position = position_dodge(width=0.5)) +
  scale_color_manual(values=mypalette)+  
  xlab("Age in months") + 
  ylab("Length-for-age Z-score")+
  geom_hline(yintercept = -0) +
  facet_wrap( ~  country_cohort) +
  ggtitle("A) Monthly change in LAZ") 

# define standardized plot names
plot_laz_cohort_afr_name = create_name(
  outcome = "laz",
  cutoff = 2,
  measure = "LAZ velocity",
  population = "cohort-stratified",
  location = "Africa",
  age = "All ages",
  analysis = "exclude excluding COHORTS Guatemala and Content"
)

# save plot and underlying data
ggsave(plot_laz_cohort_afr, file=paste0(fig_dir, "stunting/fig-",plot_laz_cohort_afr_name,".png"), 
       width=18, height=10)
saveRDS(velplot_laz_afr, file=paste0(figdata_dir_stunting, "figdata-",plot_laz_cohort_afr_name,".RDS"))



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
  scale_color_manual(values=mypalette)+  
  scale_y_continuous(limits=c(0.5,3.85), breaks=seq(0,4,0.25), labels=seq(0,4,0.25)) +
  xlab("Age in months") +  
  ylab("Length (cm)") +
  facet_wrap( ~ sex) +
  ggtitle("B) Monthly change in length (cm)") 

# define standardized plot names
plot_cm_name = create_name(
  outcome = "laz",
  cutoff = 2,
  measure = "length velocity",
  population = "overall",
  location = "",
  age = "All ages",
  analysis = "exclude excluding COHORTS Guatemala and Content"
)

# save plot and underlying data
ggsave(plot_cm, file=paste0(fig_dir, "stunting/fig-",plot_cm_name,".png"), 
       width=10, height=8)
saveRDS(velplot_cm, file=paste0(figdata_dir_stunting, "figdata-",plot_cm_name,".RDS"))

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
  scale_color_manual(values=mypalette)+  
  scale_y_continuous(limits=c(0.3,4.3), breaks=seq(0.25,4.3,0.25), labels=seq(0.25,4.3,0.25)) +
  xlab("Age in months") +  
  ylab("Length (cm)") +
  facet_grid( sex~ region) +
  ggtitle("B) Monthly change in length (cm)") 

# define standardized plot names
plot_cm_strat_name = create_name(
  outcome = "laz",
  cutoff = 2,
  measure = "length velocity",
  population = "region-stratified",
  location = "",
  age = "All ages",
  analysis = "exclude excluding COHORTS Guatemala and Content"
)

# save plot and underlying data
ggsave(plot_cm_strat, file=paste0(fig_dir, "stunting/fig-",plot_cm_strat_name,".png"), 
       width=10, height=8)
saveRDS(velplot_cm_strat, file=paste0(figdata_dir_stunting, "figdata-",plot_cm_strat_name,".RDS"))


#-------------------------------------
# combined LAZ and length plots
#-------------------------------------
combined_plot = grid.arrange(plot_laz, plot_cm, nrow = 2, heights = c(4, 8))
combined_plot_strat = grid.arrange(plot_laz_strat, plot_cm_strat, nrow = 2, heights = c(4, 10))

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
  analysis = "exclude excluding COHORTS Guatemala and Content"
)

combined_plot_strat_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "growth velocity",
  population = "region-stratified",
  location = "",
  age = "All ages",
  analysis = "exclude excluding COHORTS Guatemala and Content"
)

#-------------------------------------
# save plots
#-------------------------------------
ggsave(combined_plot, file=paste0(fig_dir, "stunting/fig-", combined_plot_name,
                                  ".png"), width=10, height=8)
ggsave(combined_plot_strat, file=paste0(fig_dir, "stunting/fig-",combined_plot_strat_name,
                                        ".png"), width=16, height=18)



#-------------------------------------
# save input data 
#-------------------------------------
saveRDS(
  list(
    velplot_cm = velplot_cm,
    velplot_laz = velplot_laz
  ),
  file = paste0(figdata_dir_stunting, "figdata-", combined_plot_name, ".RDS")
)

saveRDS(
  list(
    velplot_cm_strat = velplot_cm_strat,
    velplot_laz_strat = velplot_laz_strat
  ),
  file = paste0(figdata_dir_stunting, "figdata-", combined_plot_strat_name, ".RDS")
)

