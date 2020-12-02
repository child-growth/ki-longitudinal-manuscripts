##########################################
# ki longitudinal manuscripts
# DHS analysis - DHS densities

# This script reads in clean DHS z-score data and estimates kernel density of z-scores. 
# Data is prepared and saved to produce a figure that compares DHS estimates to those from
# the KI cohorts in fig-DHS-plots-laz.R and fig-DHS-plots-whz.R.

# Inputs:
#   0-config.R : configuration file
#   clean-DHS-haz.rds : clean DHS LAZ data
#   clean-DHS-waz.rds : clean DHS WAZ data
#   clean-DHS-whz.rds : clean DHS WHZ data

# Outputs:
#   dhs.density.all-countries.rds
#   dhs.density.ki-countries.rds

##########################################

#---------------------------------------
# source configuration file
#---------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# set up for parallel computing
# configure for a laptop (use only 3 cores)
registerDoParallel(cores = 3)

#---------------------------------------
# load cleaned DHS anthro data
# created by 7_DHS-data-cleaning.R
#---------------------------------------
dhaz <- readRDS(file = (here::here("data", "clean-DHS-haz.rds")))
dwaz <- readRDS(file = (here::here("data", "clean-DHS-waz.rds")))
dwhz <- readRDS(file = (here::here("data", "clean-DHS-whz.rds")))

#---------------------------------------
# combine all of the DHS data
# into a single dataframe
#---------------------------------------
dhsz <- bind_rows(dhaz, dwaz, dwhz) %>%
  mutate(
    measure = factor(measure, levels = c("HAZ", "WAZ", "WHZ"), labels = c("LAZ", "WAZ", "WHZ"))
  )

#---------------------------------------
# compute weights per instructions from
# DHS
#---------------------------------------
dhsz <- dhsz %>%
  mutate(wgt = weight / 1000000)

#---------------------------------------
# calculate under 6-mo prevalence
#---------------------------------------
mean_region=dhsz %>% filter(agem <=6) %>%
  group_by(measure, region) %>%
  summarize(Mean = weighted.mean(zscore < -2, wgt, na.rm=TRUE)*100)

mean_pooled=dhsz %>% filter(agem <=6) %>%
  group_by(measure) %>%
  summarize(Mean = weighted.mean(zscore < -2, wgt, na.rm=TRUE)*100) %>%
  mutate(region="Overall")

mndf <- bind_rows(mean_region, mean_pooled)
mndf$measure <- as.character(mndf$measure)
mndf$measure[mndf$measure=="WHZ"] <- "Wasting"
mndf$measure[mndf$measure=="LAZ"] <- "Stunting"
mndf$measure[mndf$measure=="WAZ"] <- "Underweight"

mndf$region <- factor(mndf$region, levels = c("Overall", "Africa","Latin America","South Asia"))

p<-ggplot(data=mndf, aes(x=measure, y=Mean,  color=region,  fill=region)) +
  facet_wrap(~region, nrow=1) +
  geom_bar(stat="identity", alpha=0.5) +  theme_ki() + theme(panel.grid = element_blank()) +
  scale_fill_manual(values = tableau11, guide = FALSE, name = "") +
  scale_color_manual(values = tableau11, guide = FALSE, name = "") +
  ylab("Prevalence") + xlab("Anthropometry measure")+
  theme(axis.text.x = element_text(angle = 20, vjust = 0.75, hjust=0.6)) +
  geom_text(aes(label=round(Mean,1)), position=position_dodge(width=0.9), vjust=-0.25)
p

p2<-ggplot(data=mndf, aes(x=region, y=Mean,  color=region,  fill=region)) +
  facet_wrap(~measure, nrow=1) +
  geom_bar(stat="identity", alpha=0.5) + theme_ki() + theme(panel.grid = element_blank()) +
  scale_fill_manual(values = tableau11, guide = FALSE, name = "") +
  scale_color_manual(values = tableau11, guide = FALSE, name = "") +
  scale_y_continuous(limits=c(0, 33), expand = c(0,0)) +
  ylab("Prevalence") + xlab("Anthropometry measure") + 
  theme(axis.text.x = element_text(angle = 20, vjust = 0.75, hjust=0.6)) +
  geom_text(aes(label=round(Mean,1)), position=position_dodge(width=0.9), vjust=-0.25)
p2

ggsave(p2, file = paste0(fig_dir, "wasting/fig_dhs_prev_barplot.png"), width = 6, height = 3)




#---------------------------------------
# estimate DHS z-score densities
# by region and overall
#---------------------------------------
dhsallden <- foreach(zmeas = levels(dhsz$measure), .combine = rbind, .packages = "dplyr") %:%
  foreach(rgn = c("Africa", "South Asia", "Latin America"), .combine = rbind) %dopar% {
    di <- dhsz %>% filter(measure == zmeas & region == rgn)
    deni <- density(di$zscore)
    denid <- data.frame(x = deni$x, y = deni$y, measure = zmeas, region = rgn)
    denid
  }
dhsallden_pool <- foreach(zmeas = levels(dhsz$measure), .combine = rbind, .packages = "dplyr") %dopar% {
  di <- dhsz %>% filter(measure == zmeas)
  deni <- density(di$zscore)
  denid <- data.frame(x = deni$x, y = deni$y, measure = zmeas, region = "Overall")
  denid
}
dhsallden <- bind_rows(dhsallden, dhsallden_pool) %>%
  mutate(region = factor(region, levels = c("Overall", "Africa", "South Asia", "Latin America")))

#---------------------------------------
# estimate DHS z-score densities
# by region and overall
# subset to countries that overlap KI cohorts
#---------------------------------------
dhssubden <- foreach(zmeas = levels(dhsz$measure), .combine = rbind) %:%
  foreach(rgn = c("Africa", "South Asia", "Latin America"), .combine = rbind) %dopar% {
    di <- dhsz %>% filter(measure == zmeas & region == rgn & inghap == 1)
    deni <- density(di$zscore)
    denid <- data.frame(x = deni$x, y = deni$y, measure = zmeas, region = rgn)
    denid
  }
dhssubden_pool <- foreach(zmeas = levels(dhsz$measure), .combine = rbind) %dopar% {
  di <- dhsz %>% filter(measure == zmeas & inghap == 1)
  deni <- density(di$zscore)
  denid <- data.frame(x = deni$x, y = deni$y, measure = zmeas, region = "Overall")
  denid
}
dhssubden <- bind_rows(dhssubden, dhssubden_pool) %>%
  mutate(region = factor(region, levels = c("Overall", "Africa", "South Asia", "Latin America")))

#Save densities
saveRDS(dhsallden, file = paste0(here(),"/results/dhs/dhs.density.all-countries.rds"))
saveRDS(dhssubden, file = paste0(here(),"/results/dhs/dhs.density.ki-countries.rds"))
