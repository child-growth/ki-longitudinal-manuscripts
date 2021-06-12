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
dhaz <- readRDS(file = paste0(dhs_res_dir,"clean-DHS-haz.rds"))
dwaz <- readRDS(file = paste0(dhs_res_dir,"clean-DHS-waz.rds"))
dwhz <- readRDS(file = paste0(dhs_res_dir,"clean-DHS-whz.rds"))


#---------------------------------------
# combine all of the DHS data
# into a single dataframe
#---------------------------------------
dhsz <- bind_rows(dhaz, dwaz, dwhz) %>%
  mutate(
    measure = factor(measure, levels = c("HAZ", "WAZ", "WHZ"), labels = c("LAZ", "WAZ", "WHZ"))
  ) %>% filter(!is.na(zscore))

dhsz$country[dhsz$dataset=="BOPR51F"] <- "Bolivia"

table(dhsz$inghap, dhsz$country)
dhsz$inghap <- ifelse(dhsz$country %in% ki_countries, 1, 0)
table(dhsz$inghap, dhsz$country)

#---------------------------------------
# compute weights per instructions from
# DHS
#---------------------------------------
dhsz <- dhsz %>%
  mutate(wgt = weight / 1000000)

# #---------------------------------------
# # calculate under 6-mo prevalence
# #---------------------------------------
# mean_region=dhsz %>% filter(agem <=6) %>%
#   group_by(measure, region) %>%
#   summarize(Mean = weighted.mean(zscore < -2, wgt, na.rm=TRUE)*100)
# 
# mean_pooled=dhsz %>% filter(agem <=6) %>%
#   group_by(measure) %>%
#   summarize(Mean = weighted.mean(zscore < -2, wgt, na.rm=TRUE)*100) %>%
#   mutate(region="Overall")
# 
# mndf <- bind_rows(mean_region, mean_pooled)
# mndf$measure <- as.character(mndf$measure)
# mndf$measure[mndf$measure=="WHZ"] <- "Wasting"
# mndf$measure[mndf$measure=="LAZ"] <- "Stunting"
# mndf$measure[mndf$measure=="WAZ"] <- "Underweight"
# 
# mndf$region <- factor(mndf$region, levels = c("Overall", "Africa","Latin America","South Asia"))
# 
# p<-ggplot(data=mndf, aes(x=region, y=Mean,  color=region,  fill=region)) +
#   facet_wrap(~measure, nrow=1) +
#   geom_bar(stat="identity", alpha=0.5) + theme_ki() + theme(panel.grid = element_blank()) +
#   scale_fill_manual(values = tableau11, guide = FALSE, name = "") +
#   scale_color_manual(values = tableau11, guide = FALSE, name = "") +
#   scale_y_continuous(limits=c(0, 33), expand = c(0,0)) +
#   ylab("Prevalence") + xlab("Anthropometry measure") + 
#   theme(axis.text.x = element_text(angle = 20, vjust = 0.75, hjust=0.6)) +
#   geom_text(aes(label=round(Mean,1)), position=position_dodge(width=0.9), vjust=-0.25)
# p
# 
# ggsave(p, file = paste0(fig_dir, "wasting/fig_dhs_prev_barplot.png"), width = 6, height = 3)




#---------------------------------------
# calculate under 6-mo prevalence by month
#---------------------------------------
# mean_region=dhsz %>% filter(agem <=6) %>%
#   group_by(measure, region, agem) %>%
#   summarize(Mean = weighted.mean(zscore < -2, wgt, na.rm=TRUE)*100)
# 
# mean_pooled=dhsz %>% filter(agem <=6) %>%
#   group_by(measure, agem) %>%
#   summarize(Mean = weighted.mean(zscore < -2, wgt, na.rm=TRUE)*100) %>%
#   mutate(region="Overall")
# 
# mndf <- bind_rows(mean_region, mean_pooled)
# mndf$measure <- as.character(mndf$measure)
# mndf$measure[mndf$measure=="WHZ"] <- "Wasting"
# mndf$measure[mndf$measure=="LAZ"] <- "Stunting"
# mndf$measure[mndf$measure=="WAZ"] <- "Underweight"
# 
# mndf$region <- factor(mndf$region, levels = c("Overall", "Africa","Latin America","South Asia"))
# mndf$measure <- factor(mndf$measure, levels = c("Stunting", "Wasting","Underweight"))

# p<-ggplot(data=mndf, aes(x=agem, y=Mean,  color=region,  fill=region)) +
#   #facet_wrap(region~measure, nrow=4) +
#   facet_grid(region~measure) +
#   geom_bar(stat="identity", alpha=0.5) + theme_ki() + theme(panel.grid = element_blank()) +
#   scale_fill_manual(values = tableau11, guide = FALSE, name = "") +
#   scale_color_manual(values = tableau11, guide = FALSE, name = "") +
#   scale_y_continuous(limits=c(0, 45), expand = c(0,0)) +
#   ylab("Prevalence") + xlab("Anthropometry measure") + 
#   geom_text(aes(label=round(Mean,1)), position=position_dodge(width=0.9), vjust=-0.25)
# p

# p_age<-ggplot(data=mndf, aes(x=agem, y=Mean,  color=region,  fill=region)) +
#   #facet_wrap(region~measure, nrow=4) +
#   facet_grid(measure~region) +
#   geom_bar(stat="identity", alpha=0.5) + theme_ki() + theme(panel.grid = element_blank()) +
#   scale_fill_manual(values = tableau11, guide = FALSE, name = "") +
#   scale_color_manual(values = tableau11, guide = FALSE, name = "") +
#   scale_y_continuous(limits=c(0, 42), expand = c(0,0)) +
#   ylab("Prevalence") + xlab("Anthropometry measure") + 
#   geom_text(aes(label=round(Mean,1)), position=position_dodge(width=0.9), vjust=-0.25, size=3.5)
# p_age
# 
# ggsave(p_age, file = paste0(fig_dir, "wasting/fig_dhs_prev_barplot_by_month.png"), width = 10, height = 5)




#---------------------------------------
# estimate DHS z-score densities
# by country, region, and overall
#---------------------------------------
dhsallden_country <- foreach(zmeas = levels(dhsz$measure), .combine = rbind, .packages = "dplyr") %:%
  foreach(rgn = unique(dhsz$country), .combine = rbind) %dopar% {
    di <- dhsz %>% filter(measure == zmeas & country == rgn)
    deni<- data.frame(x=NA, y=NA)
    try(deni <- density(di$zscore))
    denid <- data.frame(x = deni$x, y = deni$y, measure = zmeas, country = rgn)
    denid
  }
table(dhsallden_country$country)

dhsallden_region <- foreach(zmeas = levels(dhsz$measure), .combine = rbind, .packages = "dplyr") %:%
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
dhsallden <- bind_rows(dhsallden_pool, dhsallden_region, dhsallden_country) %>%
  mutate(region = factor(region, levels = c("Overall", "Africa", "South Asia", "Latin America")))

#---------------------------------------
# estimate DHS z-score densities
# by region and overall
# subset to countries that overlap KI cohorts
#---------------------------------------
dhssubden_country <- foreach(zmeas = levels(dhsz$measure), .combine = rbind) %:%
  foreach(rgn = unique(dhsz$country), .combine = rbind) %dopar% {
    di <- dhsz %>% filter(measure == zmeas & country == rgn & inghap == 1)
    deni<- data.frame(x=NA, y=NA)
    try(deni <- density(di$zscore))
    denid <- data.frame(x = deni$x, y = deni$y, measure = zmeas, country = rgn)
    denid
  }
unique(dhssubden_country$country)
dhssubden_region <- foreach(zmeas = levels(dhsz$measure), .combine = rbind) %:%
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
dhssubden <- bind_rows(dhssubden_pool, dhssubden_region, dhssubden_country) %>%
  mutate(region = factor(region, levels = c("Overall", "Africa", "South Asia", "Latin America")))

dhssubden <- dhssubden %>% filter(!is.na(x))
table(dhssubden$country)

#Save densities

saveRDS(dhsallden, file = paste0(dhs_res_dir,"dhs.density.all-countries.rds"))
saveRDS(dhssubden, file = paste0(dhs_res_dir,"dhs.density.ki-countries.rds"))