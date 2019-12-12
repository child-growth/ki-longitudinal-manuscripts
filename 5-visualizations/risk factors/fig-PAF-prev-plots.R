




rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))
library(cowplot)



yticks <- c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)

#hbgdki pallet
# tableau10 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
#                "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
tableau10 <- rep("grey30",10)

scaleFUN <- function(x) sprintf("%.1f", x)



df <- readRDS(paste0(here::here(),"/results/rf results/pooled_PAF_results.rds"))
unique(df$outcome_variable)


df <- df %>% filter(outcome_variable %in% c("stunted","wasted")) %>%
             mutate(agecat=factor(agecat, levels = c("Birth", "6 months", "24 months")))

unique(df$outcome_variable)




dim(df)

df$intervention_level <- as.character(df$intervention_level)
df$intervention_level[df$intervention_level=="Full or late term"] <- "Full/late term"
df$intervention_level[df$intervention_level=="(0%, 5%]"] <- "(0%,5%]"
df$intervention_level[df$intervention_level=="No"] <- "None"
df$intervention_level[df$intervention_level=="Yes"] <- "All"
df$intervention_level[df$intervention_level=="1" & df$intervention_variable %in% c("brthmon","month")] <- "Jan."
df$intervention_level[df$intervention_level=="1" & df$intervention_variable %in% c("single")] <- "dftnered"
df$intervention_level[df$intervention_level=="1" & df$intervention_variable %in% c("dfity")] <- "Firstborn"
df$intervention_level[df$intervention_level=="None" & df$intervention_variable %in% c("vagbrth")] <- "C-section"

df$RFlabel[df$RFlabel=="Diarrhea <24 mo.  (% days"] <- "Diarrhea <24mo. (% days)"
df$RFlabel[df$RFlabel=="Diarrhea <6 mo. (% days)"] <- "Diarrhea <6mo. (% days)"
df$RFlabel[df$RFlabel=="Gestational age at birth"] <- "Gestational age"



df <- df %>% filter( region=="Pooled", !is.na(PAF)) %>%
  #mutate(RFlabel_ref = expression(bold(RFlabel)~' shifted to '~bold(intervention_level)))
  #mutate(RFlabel_ref = gsub(", ref: "," shifted to ",RFlabel_ref))
  mutate(RFlabel_ref = paste0(RFlabel," shifted to ", intervention_level))



unique(df$RFlabel_ref)

df <- df %>% subset(., select = c(outcome_variable, agecat, intervention_variable, PAF, PAF.CI1, PAF.CI2, RFlabel, RFlabel_ref, n_cell, n)) %>% 
  filter(!is.na(PAF)) %>% mutate(measure="PAF")



#----------------------------------------------------------
# Plot Parameters
#----------------------------------------------------------


yticks <- c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)

# Colors
color_vec = c("#7F7F7F", "#E377C2")



#----------------------------------------------------------
# Clean up plot dataframe
#----------------------------------------------------------



dpool <- df %>% ungroup() %>%
  filter(
         !is.na(intervention_variable)) %>%
  mutate(ref_prev=n_cell/n) %>%
  group_by(intervention_variable, 
           outcome_variable) 

#----------------------------------------------------------
# Plot LAZ PAF
#----------------------------------------------------------

plotdf_stunt <- dpool %>% filter(outcome_variable=="stunted") %>% 
  mutate(agecat=factor(agecat, levels = c("24 months", "6 months","Birth"))) %>%
  arrange((agecat), PAF)  %>%
  mutate(agecat=factor(agecat, levels = c("Birth", "6 months", "24 months")))
head(plotdf_stunt)


rflevels = unique(plotdf_stunt$RFlabel_ref)
plotdf_stunt$RFlabel_ref=factor(plotdf_stunt$RFlabel_ref, levels=rflevels)





pPAF_stunt <-  ggplot(plotdf_stunt, aes(x=RFlabel_ref)) + 
  facet_wrap(~agecat) +
  geom_point(aes(y=PAF ), color="grey30", size = 4) +
  geom_linerange(aes(ymin=PAF.CI1 , ymax=PAF.CI2 ), color="grey30") +
  coord_flip(ylim=c(-30, 80)) +
  labs(#x = "Exposure, and to which level of exposure the cohorts are shifted",
    x = "Exposure",
    y = "Attributable fraction in\nstunting cumulative incidence") +
  geom_hline(yintercept = 0) +
  theme(strip.background = element_blank(),
        legend.position="right",
        axis.text.y = element_text(size=, hjust = 1),
        axis.text.x = element_text(size=12)) +
  guides(color=FALSE, shape=FALSE)
pPAF_stunt



plotdf_wast <- dpool %>% filter(outcome_variable=="wasted") %>%
  mutate(agecat=factor(agecat, levels = c("Birth", "6 months", "24 months"))) %>%
  arrange(agecat, PAF) 
rflevels = unique(plotdf_wast$RFlabel_ref)
plotdf_wast$RFlabel_ref=factor(plotdf_wast$RFlabel_ref, levels=rflevels)



pPAF_wast <-  ggplot(plotdf_wast, aes(x=RFlabel_ref)) + 
  facet_wrap(~agecat) +
  geom_point(aes(y=PAF ), color="grey30", size = 4) +
  geom_linerange(aes(ymin=PAF.CI1 , ymax=PAF.CI2 ), color="grey30") +
  coord_flip(ylim=c(-10, 60)) +
  labs(#x = "Exposure, and to which level of exposure the cohorts are shifted",
    x = "",
    y = "Attributable fraction in\nwasting cumulative incidence") +
  geom_hline(yintercept = 0) +
  theme(strip.background = element_blank(),
        legend.position="right",
        axis.text.y = element_text(size=, hjust = 1),
        axis.text.x = element_text(size=12)) +
  guides(color=FALSE, shape=FALSE)
pPAF_wast





ggsave(pPAF_stunt, file=paste0("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/fig-stunt-prev-PAF.png"), height=18, width=25)
ggsave(pPAF_wast, file=paste0("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/fig-wast-prev-PAF.png"),  height=18, width=25)

save(pPAF_stunt, pPAF_wast, file="C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf results/rf_paf_prev_plot_objects.Rdata")








