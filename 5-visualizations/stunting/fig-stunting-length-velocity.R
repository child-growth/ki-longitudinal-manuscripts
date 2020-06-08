##########################################
# ki longitudinal manuscripts
# stunting analysis
#
# plots of linear growth velocity
# both overall and cohort-specific within region

# inputs: pool_vel.RData, meanlaz_velocity.RDS,
# WHO_linear_growth_velocity_standard.RDS

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
vel <- readRDS(paste0(res_dir,"/stunting/pool_vel.RDS"))

meanlaz = readRDS(paste0(here(), "/results/meanlaz_velocity.RDS"))
meanlaz = meanlaz %>% filter(method.used == "REML")

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


# get N's for figure caption
vel_cohorts = vel %>% filter(pooled==0) %>%
  mutate(unique_cohorts = length(unique(country_cohort))) %>%
  group_by(region) %>%
  summarize(unique_cohorts=unique_cohorts[1], 
            unique_cohorts_region = length(unique(country_cohort)))
vel_cohorts

vel_n = vel %>%
  filter(!is.na(strata), pooled==1) %>%
  group_by(region) %>%
  summarise(min_study = min(nstudies, na.rm=TRUE),
            max_study = max(nstudies, na.rm=TRUE),
            min_n = min(N, na.rm=TRUE),
            max_n = max(N, na.rm=TRUE))
vel_n

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
  scale_y_continuous(limits = c(-2.25, -0.5)) +
  xlab("Child age, months") + 
  ylab("Mean length-for-age Z-score") +
  ggtitle("c\n")+
  theme(plot.title = element_text(hjust=0)) +
  theme(legend.position = c(.88, .83),
        # legend.title = element_blank(),
        legend.background = element_blank(),
        legend.box.background = element_rect(colour = "black"),
        plot.title = element_text(hjust=0))



#-------------------------------------
# mean LAZ plot stratified by region
#-------------------------------------
meanlaz_strat = meanlaz %>% 
  filter(cohort == "pooled") %>%
  filter(region !="N.America & Europe") %>%
  mutate(agecat = factor(agecat, 
                         levels = c("0-3", "3-6", "6-9",
                                    "9-12", "12-15", "15-18",
                                    "18-21", "21-24")),
         region = ifelse(region == "Asia", "South Asia", region)) %>%
  mutate(region = factor(region, levels=c("Overall", "Africa", "Latin America", "South Asia")))

plot_mean_laz_strat = ggplot(meanlaz_strat, aes(y=est, x = agecat)) + 
  geom_point(aes(col=sex), position = position_dodge(width=0.6), size=3) +
  geom_linerange(aes(ymin = lb, ymax = ub, col=sex), 
                 position = position_dodge(width=0.6), size = 1.25) +
  scale_color_manual(values = mypalette) + 
  xlab("Child age, months") + 
  ylab("Mean LAZ\n ") +
  ggtitle("c")+
  theme(plot.title = element_text(hjust=0, size = 20, face = "bold"),
        strip.text.x = element_text(size=20, face="bold"),
        axis.title.x = element_text(size=20),
        axis.title.y = element_text(size=20)) +
  facet_grid(~region)
 
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
  geom_point(aes(fill=sex, color=sex), size = 2, position = position_dodge(width = 0.5)) +
  geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                 position = position_dodge(width = 0.5)) +
  scale_color_manual(values=mypalette)+  
  scale_y_continuous(limits=c(-0.257,0.1), breaks=seq(-0.25,0.1,0.05), labels=seq(-0.25,0.1,0.05)) +
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
  analysis = "primary"
)

# save plot and underlying data
ggsave(plot_laz, file=paste0(fig_dir, "stunting/fig-",plot_laz_name,".png"), width=12, height=6)
saveRDS(velplot_laz, file=paste0(figdata_dir_stunting, "figdata-",plot_laz_name,".RDS"))


#-------------------------------------
# LAZ plot - stratified by region
#-------------------------------------
velplot_laz_strat = vel %>% filter(ycat == "LAZ change (Z-score per month)") %>%
  mutate(sex = factor(sex),
         region = ifelse(region == "Asia", "South Asia", region)) %>%
  mutate(region = factor(region, levels=c("Overall", "Africa", "Latin America", "South Asia")))

plot_laz_strat <- ggplot(velplot_laz_strat %>% filter(pooled==1), aes(y=Mean,x=strata))+
  geom_point(aes(fill=sex, color=sex), size = 2, position = position_dodge(width=0.5)) +
  geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                  position = position_dodge(width=0.5), size=1.25) +
  scale_color_manual(values=mypalette)+  
  scale_y_continuous(limits=c(-0.55,0.3), breaks=seq(-0.5,0.3,0.1), labels=seq(-0.5,0.3,0.1)) +
  xlab("Child age, months") +  
  ylab("Difference in length-for-age\nZ-score per month")+
  geom_hline(yintercept = -0) +
  facet_grid( ~  region) +
  ggtitle("b") +
  theme(plot.title = element_text(hjust=0, size = 20, face = "bold"),
        strip.text.x = element_text(size=20, face="bold"),
        axis.title.x = element_text(size=20),
        axis.title.y = element_text(size=20))


# define standardized plot names
plot_laz_strat_name = create_name(
  outcome = "LAZ",
  cutoff = 2,
  measure = "LAZ velocity",
  population = "region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(plot_laz_strat, file=paste0(fig_dir, "stunting/fig-",plot_laz_strat_name,".png"), width=12, height=6)
saveRDS(velplot_laz_strat, file=paste0(figdata_dir_stunting, "figdata-",plot_laz_strat_name,".RDS"))


#-------------------------------------
# LAZ plot - cohort stratified
#-------------------------------------
velplot_laz_asia = velplot_laz_strat %>% filter(region=="South Asia")
velplot_laz_latamer = velplot_laz_strat %>% filter(region=="Latin America")
velplot_laz_afr = velplot_laz_strat %>% filter(region=="Africa")

make_vel_laz_cohort_plot <- function(data){
  plot = ggplot(data, aes(y=Mean,x=strata))+
    geom_point(aes(fill=sex, color=sex), size = 2, position = position_dodge(width=0.5)) +
    geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                   position = position_dodge(width=0.5)) +
    scale_color_manual(values=mypalette)+  
    xlab("Child age, months") +  
    ylab("Difference in length-for-age\nZ-score per month")+
    geom_hline(yintercept = -0) +
    facet_wrap( ~  country_cohort, scales = "free") +
    ggtitle("Monthly change in LAZ") +
    theme(plot.title = element_text(hjust=0))
  return(plot)
}

plot_laz_cohort_asia <- make_vel_laz_cohort_plot(velplot_laz_asia)
plot_laz_cohort_afr <- make_vel_laz_cohort_plot(velplot_laz_afr)
plot_laz_cohort_latamer <- make_vel_laz_cohort_plot(velplot_laz_latamer)

# define standardized plot names
plot_laz_cohort_asia_name = create_name(
  outcome = "LAZ",
  cutoff = 2,
  measure = "LAZ velocity",
  population = "cohort-stratified",
  location = "South Asia",
  age = "All ages",
  analysis = "primary"
)

plot_laz_cohort_latamer_name = create_name(
  outcome = "LAZ",
  cutoff = 2,
  measure = "LAZ velocity",
  population = "cohort-stratified",
  location = "Latin America",
  age = "All ages",
  analysis = "primary"
)

plot_laz_cohort_afr_name = create_name(
  outcome = "LAZ",
  cutoff = 2,
  measure = "LAZ velocity",
  population = "cohort-stratified",
  location = "Africa",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(plot_laz_cohort_asia, file=paste0(fig_dir, "stunting/fig-",plot_laz_cohort_asia_name,".png"), 
       width=18, height=10)
ggsave(plot_laz_cohort_latamer, file=paste0(fig_dir, "stunting/fig-",plot_laz_cohort_latamer_name,".png"), 
       width=18, height=10)
ggsave(plot_laz_cohort_afr, file=paste0(fig_dir, "stunting/fig-",plot_laz_cohort_afr_name,".png"), 
       width=18, height=10)

saveRDS(velplot_laz_asia, file=paste0(figdata_dir_stunting, "figdata-",plot_laz_cohort_asia_name,".RDS"))
saveRDS(velplot_laz_latamer, file=paste0(figdata_dir_stunting, "figdata-",plot_laz_cohort_latamer_name,".RDS"))
saveRDS(velplot_laz_afr, file=paste0(figdata_dir_stunting, "figdata-",plot_laz_cohort_afr_name,".RDS"))

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
  # geom_point(data = subset(velplot_cm, msmt_type == "Mean"), aes(color = sexcol), size = 3, shape = 4) +
  geom_line(aes(y = length_cm, group = msmt_type, color = linecol, linetype = msmt_type)) +

  geom_linerange(aes(ymin = Lower.95.CI, ymax = Upper.95.CI, color = sexcol),
                 alpha=0.5) +

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
  
  scale_y_continuous(limits=c(0.5,3.85), breaks=seq(0,4,0.25), labels=seq(0,4,0.25)) +
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
  analysis = "primary"
)

# save plot and underlying data
ggsave(plot_cm, file=paste0(fig_dir, "stunting/fig-",plot_cm_name,".png"), 
       width=10, height=8)
saveRDS(velplot_cm, file=paste0(figdata_dir_stunting, "figdata-",plot_cm_name,".RDS"))

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
  # geom_point(aes(color=sex), size = 3) +
  geom_line(aes(y=Mean, group=sex, col=sex), size = 1.1) +
  geom_line(aes(y=pct_50, group=sex), size = 1.1) +
  geom_line(aes(y=pct_25, group=sex), linetype="dashed", size = 1.1) +
  geom_line(aes(y=pct_15, group=sex), linetype="dotted", size = 1.1) +
  
  geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                 size=1.1) +
  scale_color_manual(values=mypalette)+  
  scale_y_continuous(limits=c(0.5,3.875), breaks=seq(0.5,3.875,0.25), labels=seq(0.5,3.875,0.25)) +
  xlab("Child age, months") +  
  ylab("Difference in length (cm) per month")+
  facet_grid( sex~ region) +
  ggtitle("a") +
  theme(plot.title = element_text(hjust=0, size = 20, face = "bold"),
        strip.text.x = element_text(size=20, face="bold"),
        strip.text.y = element_text(size=20),
        axis.title.x = element_text(size=20),
        axis.title.y = element_text(size=20))

# define standardized plot names
plot_cm_strat_name = create_name(
  outcome = "LAZ",
  cutoff = 2,
  measure = "length velocity",
  population = "region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(plot_cm_strat, file=paste0(fig_dir, "stunting/fig-",plot_cm_strat_name,".png"), 
       width=10, height=8)
saveRDS(velplot_cm_strat, file=paste0(figdata_dir_stunting, "figdata-",plot_cm_strat_name,".RDS"))


#-------------------------------------
# absolute length plot - stratified by cohort
#-------------------------------------
velplot_cm_strat_cohort = vel %>% 
  filter(ycat == "Length velocity (cm per month)") %>%
  select(country_cohort, region, Mean, `Lower.95.CI`, `Upper.95.CI`, strata, sex, pct_50, pct_25, pct_15) %>%
  mutate(sex = as.factor(sex),
         region = ifelse(region == "Asia", "South Asia", region)) %>%
  mutate(region = factor(region, levels=c("Overall", "Africa", "Latin America", "South Asia")))

velplot_cm_asia = velplot_cm_strat_cohort %>% filter(region=="South Asia")
velplot_cm_latamer = velplot_cm_strat_cohort %>% filter(region=="Latin America")
velplot_cm_afr = velplot_cm_strat_cohort %>% filter(region=="Africa")

make_vel_cm_cohort_plot <- function(data){
  plot <- ggplot(data, aes(y=Mean,x=strata))+
    # geom_point(aes(color=sex), size = 3) +
    geom_line(aes(y=Mean, group=sex, col=sex)) +
    geom_line(aes(y=pct_50, group=sex)) +
    geom_line(aes(y=pct_25, group=sex), linetype="dashed") +
    geom_line(aes(y=pct_15, group=sex), linetype="dotted") +
    
    geom_linerange(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                   alpha=0.5) +
    scale_color_manual(values=mypalette)+  
    xlab("Child age, months") +  
    ylab("Difference in length (cm) per month")+
    facet_wrap(sex ~ country_cohort, scales = "free") +
    ggtitle("a") +
    theme(plot.title = element_text(hjust=0, size = 16, face = "bold"),
          strip.text.x = element_text(size=16),
          strip.text.y = element_text(size=16),
          axis.title.x = element_text(size=16),
          axis.title.y = element_text(size=16))
  return(plot)
}

plot_cm_cohort_asia <- make_vel_cm_cohort_plot(velplot_cm_asia)
plot_cm_cohort_afr <- make_vel_cm_cohort_plot(velplot_cm_afr)
plot_cm_cohort_latamer <- make_vel_cm_cohort_plot(velplot_cm_latamer)

# define standardized plot names
plot_cm_cohort_asia_name = create_name(
  outcome = "length",
  cutoff = 2,
  measure = "length velocity",
  population = "cohort-stratified",
  location = "South Asia",
  age = "All ages",
  analysis = "primary"
)

plot_cm_cohort_latamer_name = create_name(
  outcome = "length",
  cutoff = 2,
  measure = "length velocity",
  population = "cohort-stratified",
  location = "Latin America",
  age = "All ages",
  analysis = "primary"
)

plot_cm_cohort_afr_name = create_name(
  outcome = "length",
  cutoff = 2,
  measure = "length velocity",
  population = "cohort-stratified",
  location = "Africa",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(plot_cm_cohort_asia, file=paste0(fig_dir, "stunting/fig-",plot_cm_cohort_asia_name,".png"), 
       width=18, height=18)
ggsave(plot_cm_cohort_latamer, file=paste0(fig_dir, "stunting/fig-",plot_cm_cohort_latamer_name,".png"), 
       width=18, height=18)
ggsave(plot_cm_cohort_afr, file=paste0(fig_dir, "stunting/fig-",plot_cm_cohort_afr_name,".png"), 
       width=18, height=18)

saveRDS(velplot_cm_asia, file=paste0(figdata_dir_stunting, "figdata-",plot_cm_cohort_asia_name,".RDS"))
saveRDS(velplot_cm_latamer, file=paste0(figdata_dir_stunting, "figdata-",plot_cm_cohort_latamer_name,".RDS"))
saveRDS(velplot_cm_afr, file=paste0(figdata_dir_stunting, "figdata-",plot_cm_cohort_afr_name,".RDS"))


############################################################################
# combined LAZ and length plots
############################################################################
# add margin around plots
combined_plot = grid.arrange(plot_cm, 
                             arrangeGrob(plot_laz, plot_mean_laz, 
                             ncol=2, nrow = 1))

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
    velplot_laz = velplot_laz,
    meanlaz_overall = meanlaz_overall
  ),
  file = paste0(figdata_dir_stunting, "figdata-", combined_plot_name, ".RDS")
)

saveRDS(
  list(
    velplot_cm_strat = velplot_cm_strat,
    velplot_laz_strat = velplot_laz_strat,
    meanlaz_strat = meanlaz_strat
  ),
  file = paste0(figdata_dir_stunting, "figdata-", combined_plot_strat_name, ".RDS")
)
