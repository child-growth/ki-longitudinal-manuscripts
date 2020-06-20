



rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(gtable)
require(cowplot)



#Load data
par <- readRDS(paste0(here::here(),"/results/rf results/pooled_Zscore_PAR_results.rds"))

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

unique(par$outcome_variable)
par <- par %>% filter(outcome_variable %in% c("y_rate_haz", "y_rate_whz"))
par$outcome_variable <- gsub("y_rate_haz", "LAZ velocity", par$outcome_variable)
par$outcome_variable <- gsub("y_rate_whz", "WLZ velocity", par$outcome_variable)

par <- par %>% subset(., select = c(outcome_variable, agecat, region, intervention_variable, intervention_level, PAR, CI1, CI2, RFlabel, RFlabel_ref, n_cell, n)) %>% 
  filter(!is.na(PAR)) %>% mutate(measure="PAR")  %>%
  mutate(RFlabel_ref = paste0(RFlabel," shifted to ", intervention_level))

par_agestrat <- par %>% filter(agecat %in% c(
  "0-3 months", "3-6 months" , "6-9 months","9-12 months", 
  "12-15 months", "15-18 months", "18-21 months", "21-24 months"  ), region=="Pooled", outcome_variable %in% c("LAZ velocity", "WLZ velocity"), !is.na(PAR))  




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
plot_laz_3 = plot_age("LAZ velocity", "0-3 months")
plot_laz_6 = plot_age("LAZ velocity", "3-6 months")
plot_laz_9 = plot_age("LAZ velocity", "6-9 months")
plot_laz_12 = plot_age("LAZ velocity", "9-12 months")
plot_laz_15 = plot_age("LAZ velocity", "12-15 months")
plot_laz_18 = plot_age("LAZ velocity", "15-18 months")
plot_laz_21 = plot_age("LAZ velocity", "18-21 months")
plot_laz_24 = plot_age("LAZ velocity", "21-24 months")




plot_laz_age = grid.arrange(plot_laz_3, 
                            plot_laz_6, 
                            plot_laz_9, 
                            plot_laz_12,
                            plot_laz_15, 
                            plot_laz_18, 
                            plot_laz_21, 
                            plot_laz_24, ncol = 2, nrow = 4,
                            top = textGrob("Attributable difference - LAZ, stratified by age",gp=gpar(fontsize=26,font=2)))

ggsave(plot_laz_age, file=paste0(here::here(), "/figures/manuscript-figure-composites/risk-factor/extended-data/fig-laz-vel-PAR.png"), height=36, width=15)
