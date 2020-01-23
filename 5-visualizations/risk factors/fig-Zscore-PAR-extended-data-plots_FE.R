



rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(gtable)
require(cowplot)



#Load data
par <- readRDS(paste0(here::here(),"/results/rf results/pooled_Zscore_PAR_results_FE.rds"))

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

par <- par %>% subset(., select = c(outcome_variable, agecat, region, intervention_variable, intervention_level, PAR, CI1, CI2, RFlabel, RFlabel_ref, n_cell, n)) %>% 
  filter(!is.na(PAR)) %>% mutate(measure="PAR")  %>%
  mutate(RFlabel_ref = paste0(RFlabel," shifted to ", intervention_level))

par_agestrat <- par %>% filter(agecat %in% c("Birth","6 months","24 months"), region=="Pooled", outcome_variable %in% c("LAZ", "WLZ"), !is.na(PAR))  

par_regionstrat <- par %>% filter(agecat=="24 months", region!="Pooled", outcome_variable %in% c("LAZ", "WLZ"), !is.na(PAR))  



#######################
# Age stratified plots
#######################

plot_age = function(outcome, age){
  data <- par_agestrat %>% filter(outcome_variable == outcome, agecat == age) %>% arrange(-PAR) 
  
  rflevels = unique(data$RFlabel_ref)
  data$RFlabel_ref=factor(data$RFlabel_ref, levels=rflevels)
  
  
  lb = -max(par_agestrat %>% filter(outcome_variable == outcome) %>% select(CI2))
  ub = -min(par_agestrat %>% filter(outcome_variable == outcome) %>% select(CI1))
  
  plot <-  ggplot(data, aes(x=RFlabel_ref)) + 
    geom_point(aes(y=-PAR,  color=measure, shape = measure), size = 4) +
    geom_errorbar(aes(ymin=-CI1, ymax=-CI2, color=measure),  alpha=0.8) +
    coord_flip(ylim=c(lb, ub)) +
    scale_colour_manual(values=c("#7F7F7F")) +
    labs(x = "", y = paste0("Attributable difference in ", outcome)) +
    geom_hline(yintercept = 0) +
    ggtitle(paste0(age, ", Pooled")) + 
    theme(strip.background = element_blank(),
          legend.position="right",
          axis.text.y = element_text(hjust = 1),
          strip.text.x = element_text(size=12),
          axis.text.x = element_text(size=12), 
          plot.margin = unit(c(15, 5, 5, 5), "pt")) +
    guides(color=FALSE, shape=FALSE)
  
  return (plot)
}

### Plot LAZ, stratified by age
plot_laz_birth = plot_age("LAZ", "Birth")
plot_laz_6 = plot_age("LAZ", "6 months")
plot_laz_24 = plot_age("LAZ", "24 months")

plot_laz_age = grid.arrange(plot_laz_birth, plot_laz_6, plot_laz_24, ncol = 2, nrow = 2,
                            top = textGrob("Attributable difference - LAZ, stratified by age",gp=gpar(fontsize=26,font=2)))

ggsave(plot_laz_age, file=paste0(here::here(), "/figures/manuscript-figure-composites/risk-factor/extended-data/fig-laz-PAR-strat-age_FE.png"), height=18, width=15)

### Plot WLZ, stratified by age
plot_wlz_birth = plot_age("WLZ", "Birth")
plot_wlz_6 = plot_age("WLZ", "6 months")
plot_wlz_24 = plot_age("WLZ", "24 months")

plot_wlz_age = grid.arrange(plot_wlz_birth, plot_wlz_6, plot_wlz_24, ncol = 2, nrow = 2,
                            top = textGrob("Attributable difference - WLZ, stratified by age",gp=gpar(fontsize=26,font=2)))

ggsave(plot_wlz_age, file=paste0(here::here(), "/figures/manuscript-figure-composites/risk-factor/extended-data/fig-wlz-PAR-strat-age_FE.png"), height=18, width=15)

#######################
# Region stratified plots
#######################

plot_region = function(outcome, reg, Yrange=NULL){
  data <- par_regionstrat %>% filter(outcome_variable == outcome, region == reg) %>% arrange(-PAR) 
  
  rflevels = unique(data$RFlabel_ref)
  data$RFlabel_ref=factor(data$RFlabel_ref, levels=rflevels)
  
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
    ggtitle(paste0("24 months, ", reg)) + 
    theme(strip.background = element_blank(),
          legend.position="right",
          axis.text.y = element_text(hjust = 1),
          strip.text.x = element_text(size=12),
          axis.text.x = element_text(size=12), 
          plot.margin = unit(c(15, 5, 5, 5), "pt")) +
    guides(color=FALSE, shape=FALSE)
  
  return (plot)
}

### Plot LAZ, stratified by region
plot_laz_africa = plot_region("LAZ", "Africa",  Yrange=c(-0.75, 1))
plot_laz_la = plot_region("LAZ", "Latin America",  Yrange=c(-0.75, 1))
plot_laz_sa = plot_region("LAZ", "South Asia",  Yrange=c(-0.75, 1))

plot_laz_region = grid.arrange(plot_laz_africa, plot_laz_la, plot_laz_sa, ncol = 2, nrow = 2,
                            top = textGrob("Attributable difference - LAZ, stratified by region",gp=gpar(fontsize=26,font=2)))

ggsave(plot_laz_region, file=paste0(here::here(), "/figures/manuscript-figure-composites/risk-factor/extended-data/fig-laz-PAR-strat-region_FE.png"), height=18, width=15)

### Plot WLZ, stratified by region
plot_wlz_africa = plot_region("WLZ", "Africa")
plot_wlz_la = plot_region("WLZ", "Latin America")
plot_wlz_sa = plot_region("WLZ", "South Asia")

plot_wlz_region = grid.arrange(plot_wlz_africa, plot_wlz_la, plot_wlz_sa, ncol = 2, nrow = 2,
                               top = textGrob("Attributable difference - WLZ, stratified by region",gp=gpar(fontsize=26,font=2)))

ggsave(plot_wlz_region, file=paste0(here::here(), "/figures/manuscript-figure-composites/risk-factor/extended-data/fig-wlz-PAR-strat-region_FE.png"), height=18, width=15)

