



rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(gtable)
require(cowplot)



#Load data
par <- readRDS(paste0(here::here(),"/results/rf results/pooled_Zscore_PAR_results.rds"))
par_waz <- readRDS(paste0(here::here(),"/results/rf results/pooled_Zscore_PAR_results_waz.rds"))
par <- bind_rows(par, par_waz)

dim(par)

unique(par$intervention_level)
unique(par$intervention_variable)
par$intervention_level <- as.character(par$intervention_level)
par$intervention_level[par$intervention_level=="Full or late term"] <- "Full/late term"
par$intervention_level[par$intervention_level=="(0%, 5%]"] <- "(0%,5%]"
par$intervention_level[par$intervention_level=="No"] <- "None"
par$intervention_level[par$intervention_level=="Yes"] <- "All"
par$intervention_level[par$intervention_level=="1" & par$intervention_variable %in% c("brthmon","month")] <- "Jan."
par$intervention_level[par$intervention_level=="0" & par$intervention_variable %in% c("single")] <- "Partnered"
par$intervention_level[par$intervention_level=="1" & par$intervention_variable %in% c("parity")] <- "Firstborn"
par$intervention_level[par$intervention_level=="None" & par$intervention_variable %in% c("vagbrth")] <- "C-section"
par$intervention_level[par$intervention_level=="None" & par$intervention_variable %in% c("hdlvry")] <- "No"

par$RFlabel[par$RFlabel=="Diarrhea <24 mo.  (% days"] <- "Diarrhea <24mo. (% days)"
par$RFlabel[par$RFlabel=="Diarrhea <6 mo. (% days)"] <- "Diarrhea <6mo. (% days)"
par$RFlabel[par$RFlabel=="Gestational age at birth"] <- "Gestational age"



par$outcome_variable <- gsub("haz", "LAZ", par$outcome_variable)
par$outcome_variable <- gsub("whz", "WLZ", par$outcome_variable)
par$outcome_variable <- gsub("waz", "WAZ", par$outcome_variable)

par <- par %>% subset(., select = c(outcome_variable, agecat, region, intervention_variable, intervention_level, PAR, CI1, CI2, RFlabel, RFlabel_ref, n_cell, n)) %>% 
  filter(!is.na(PAR)) %>% mutate(measure="PAR")  %>%
  mutate(RFlabel_ref = paste0(RFlabel," shifted to ", intervention_level))


par_regionstrat_SA <- par %>% filter(agecat%in%c("Birth","6 months","24 months"), region=="South Asia", outcome_variable %in% c("LAZ", "WLZ", "WAZ"), !is.na(PAR))  
par_regionstrat_Africa <- par %>% filter(agecat%in%c("Birth","6 months","24 months"), region=="Africa", outcome_variable %in% c("LAZ", "WLZ", "WAZ"), !is.na(PAR))  
par_regionstrat_LA <- par %>% filter(agecat%in%c("Birth","6 months","24 months"), region=="Latin America", outcome_variable %in% c("LAZ", "WLZ", "WAZ"), !is.na(PAR))  



#######################
# Region stratified plots
#######################

plot_region = function(par_regionstrat, outcome, age="24 months", Yrange=NULL){
  data <- par_regionstrat %>% filter(outcome_variable == outcome, agecat == age) %>% arrange(-PAR) 
  
  rflevels = unique(data$RFlabel_ref)
  data$RFlabel_ref=factor(data$RFlabel_ref, levels=rflevels)
  data$measure="a"
  if(is.null(Yrange)){
    lb = -max(par_regionstrat %>% filter(outcome_variable == outcome) %>% select(CI2))
    ub = -min(par_regionstrat %>% filter(outcome_variable == outcome) %>% select(CI1))
    Yrange=c(lb, ub)
  }
  plot <-  ggplot(data, aes(x=RFlabel_ref)) + 
    geom_point(aes(y=-PAR,  color=measure, shape = measure), size = 4) +
    geom_errorbar(aes(ymin=-CI1, ymax=-CI2, color=measure),  alpha=0.8) +
    coord_flip(ylim=Yrange) +
    scale_colour_manual(values=c("#7F7F7F")) +
    labs(x = "", y = paste0("Attributable difference in ", outcome)) +
    geom_hline(yintercept = 0) +
    ggtitle(paste0(age)) + 
    theme(strip.background = element_blank(),
          legend.position="right",
          axis.text.y = element_text(hjust = 1),
          strip.text.x = element_text(size=12),
          axis.text.x = element_text(size=12), 
          plot.margin = unit(c(15, 5, 5, 5), "pt")) +
    guides(color=FALSE, shape=FALSE)
  
  return (plot)
}

### Plot LAZ, stratified by age in SA
plot_laz_sa_birth = plot_region(par_regionstrat_SA, "LAZ", "Birth",  Yrange=c(-0.75, 1))
plot_laz_sa_6 = plot_region(par_regionstrat_SA, "LAZ", "6 months",  Yrange=c(-0.75, 1))
plot_laz_sa_24 = plot_region(par_regionstrat_SA, "LAZ", "24 months",  Yrange=c(-0.75, 1))

plot_laz_SA = grid.arrange(plot_laz_sa_birth, plot_laz_sa_6, plot_laz_sa_24, ncol = 2, nrow = 2,
                               top = textGrob("Attributable difference in LAZ in South Asian cohorts",gp=gpar(fontsize=26,font=2)))

ggsave(plot_laz_SA, file=paste0(here::here(), "/figures/manuscript-figure-composites/risk-factor/extended-data/fig-laz-PAR-strat-SA.png"), height=18, width=15)

### Plot WLZ, stratified by age in SA
plot_wlz_sa_birth = plot_region(par_regionstrat_SA, "WLZ", "Birth",  Yrange=c(-0.5, 0.5))
plot_wlz_sa_6 = plot_region(par_regionstrat_SA, "WLZ", "6 months",  Yrange=c(-0.5, 0.5))
plot_wlz_sa_24 = plot_region(par_regionstrat_SA, "WLZ", "24 months",  Yrange=c(-0.5, 0.5))

plot_wlz_SA = grid.arrange(plot_wlz_sa_birth, plot_wlz_sa_6, plot_wlz_sa_24, ncol = 2, nrow = 2,
                           top = textGrob("Attributable difference in WLZ in South Asian cohorts",gp=gpar(fontsize=26,font=2)))

ggsave(plot_wlz_SA, file=paste0(here::here(), "/figures/manuscript-figure-composites/risk-factor/extended-data/fig-wlz-PAR-strat-SA.png"), height=18, width=15)

### Plot WAZ, stratified by age in SA
plot_waz_sa_birth = plot_region(par_regionstrat_SA, "WAZ", "Birth",  Yrange=c(-0.5, 0.5))
plot_waz_sa_6 = plot_region(par_regionstrat_SA, "WAZ", "6 months",  Yrange=c(-0.5, 0.5))
plot_waz_sa_24 = plot_region(par_regionstrat_SA, "WAZ", "24 months",  Yrange=c(-0.5, 0.5))

plot_waz_SA = grid.arrange(plot_waz_sa_birth, plot_waz_sa_6, plot_waz_sa_24, ncol = 2, nrow = 2,
                           top = textGrob("Attributable difference in WAZ in South Asian cohorts",gp=gpar(fontsize=26,font=2)))

ggsave(plot_waz_SA, file=paste0(here::here(), "/figures/manuscript-figure-composites/risk-factor/extended-data/fig-waz-PAR-strat-SA.png"), height=18, width=15)



### Plot LAZ, stratified by age in LA
plot_laz_la_birth = plot_region(par_regionstrat_LA, "LAZ", "Birth",  Yrange=c(-0.75, 1))
plot_laz_la_6 = plot_region(par_regionstrat_LA, "LAZ", "6 months",  Yrange=c(-0.75, 1))
plot_laz_la_24 = plot_region(par_regionstrat_LA, "LAZ", "24 months",  Yrange=c(-0.75, 1))

plot_laz_LA = grid.arrange(plot_laz_la_birth, plot_laz_la_6, plot_laz_la_24, ncol = 2, nrow = 2,
                           top = textGrob("Attributable difference in LAZ in Latin American cohorts",gp=gpar(fontsize=26,font=2)))

ggsave(plot_laz_LA, file=paste0(here::here(), "/figures/manuscript-figure-composites/risk-factor/extended-data/fig-laz-PAR-strat-LA.png"), height=18, width=15)

### Plot WLZ, stratified by age in LA
plot_wlz_la_birth = plot_region(par_regionstrat_LA, "WLZ", "Birth",  Yrange=c(-0.5, 0.5))
plot_wlz_la_6 = plot_region(par_regionstrat_LA, "WLZ", "6 months",  Yrange=c(-0.5, 0.5))
plot_wlz_la_24 = plot_region(par_regionstrat_LA, "WLZ", "24 months",  Yrange=c(-0.5, 0.5))

plot_wlz_LA = grid.arrange(plot_wlz_la_birth, plot_wlz_la_6, plot_wlz_la_24, ncol = 2, nrow = 2,
                           top = textGrob("Attributable difference in WLZ in Latin American cohorts",gp=gpar(fontsize=26,font=2)))

ggsave(plot_wlz_LA, file=paste0(here::here(), "/figures/manuscript-figure-composites/risk-factor/extended-data/fig-wlz-PAR-strat-LA.png"), height=18, width=15)

### Plot WAZ, stratified by age in SA
plot_waz_la_birth = plot_region(par_regionstrat_LA, "WAZ", "Birth",  Yrange=c(-0.5, 0.5))
plot_waz_la_6 = plot_region(par_regionstrat_LA, "WAZ", "6 months",  Yrange=c(-0.5, 0.5))
plot_waz_la_24 = plot_region(par_regionstrat_LA, "WAZ", "24 months",  Yrange=c(-0.5, 0.5))

plot_waz_LA = grid.arrange(plot_waz_la_birth, plot_waz_la_6, plot_waz_la_24, ncol = 2, nrow = 2,
                           top = textGrob("Attributable difference in WAZ in Latin American cohorts",gp=gpar(fontsize=26,font=2)))

ggsave(plot_waz_LA, file=paste0(here::here(), "/figures/manuscript-figure-composites/risk-factor/extended-data/fig-waz-PAR-strat-LA.png"), height=18, width=15)



### Plot LAZ, stratified by age in Africa
plot_laz_af_birth = plot_region(par_regionstrat_Africa, "LAZ", "Birth",  Yrange=c(-0.75, 1))
plot_laz_af_6 = plot_region(par_regionstrat_Africa, "LAZ", "6 months",  Yrange=c(-0.75, 1))
plot_laz_af_24 = plot_region(par_regionstrat_Africa, "LAZ", "24 months",  Yrange=c(-0.75, 1))

plot_laz_Africa = grid.arrange(plot_laz_af_birth, plot_laz_af_6, plot_laz_af_24, ncol = 2, nrow = 2,
                           top = textGrob("Attributable difference in LAZ in African cohorts",gp=gpar(fontsize=26,font=2)))

ggsave(plot_laz_Africa, file=paste0(here::here(), "/figures/manuscript-figure-composites/risk-factor/extended-data/fig-laz-PAR-strat-Africa.png"), height=18, width=15)

### Plot WLZ, stratified by age in Africa
plot_wlz_af_birth = plot_region(par_regionstrat_Africa, "WLZ", "Birth",  Yrange=c(-0.5, 0.5))
plot_wlz_af_6 = plot_region(par_regionstrat_Africa, "WLZ", "6 months",  Yrange=c(-0.5, 0.5))
plot_wlz_af_24 = plot_region(par_regionstrat_Africa, "WLZ", "24 months",  Yrange=c(-0.5, 0.5))

plot_wlz_Africa = grid.arrange(plot_wlz_af_birth, plot_wlz_af_6, plot_wlz_af_24, ncol = 2, nrow = 2,
                           top = textGrob("Attributable difference in WLZ in African cohorts",gp=gpar(fontsize=26,font=2)))

ggsave(plot_wlz_Africa, file=paste0(here::here(), "/figures/manuscript-figure-composites/risk-factor/extended-data/fig-wlz-PAR-strat-Africa.png"), height=18, width=15)


### Plot WAZ, stratified by age in Africa
plot_waz_af_birth = plot_region(par_regionstrat_Africa, "WAZ", "Birth",  Yrange=c(-0.5, 0.5))
plot_waz_af_6 = plot_region(par_regionstrat_Africa, "WAZ", "6 months",  Yrange=c(-0.5, 0.5))
plot_waz_af_24 = plot_region(par_regionstrat_Africa, "WAZ", "24 months",  Yrange=c(-0.5, 0.5))

plot_waz_Africa = grid.arrange(plot_waz_af_birth, plot_waz_af_6, plot_waz_af_24, ncol = 2, nrow = 2,
                           top = textGrob("Attributable difference in WAZ in Latin American cohorts",gp=gpar(fontsize=26,font=2)))

ggsave(plot_waz_Africa, file=paste0(here::here(), "/figures/manuscript-figure-composites/risk-factor/extended-data/fig-waz-PAR-strat-Africa.png"), height=18, width=15)
