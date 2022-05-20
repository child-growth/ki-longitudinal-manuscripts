#TO DO
# change back to original bluevelvet filepaths
# mean differences -> estimate, ci_lower, ci_upper; unsure how to merge
# CIR -> RR, RR.CI1, RR.CI2; merge using RFlabel, RFtype, or RFlabel_ref?

#Nature update- combine PIE, mean diff, and RR in one plot.
# 6 pnaels for 3 parameters for HAZ and WHZ

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(gtable)
library(cowplot)


#To do:



#----------------------------------------------------------------------------------
# Load data
#----------------------------------------------------------------------------------

# PIE
par_raw <- readRDS(paste0(BV_dir,"/results/rf results/pooled_Zscore_PAR_results.rds")) %>% mutate(parameter="Population Intervention Effect", baseline_level=intervention_level ) %>% filter(intervention_variable!="perdiar6")
# par <- readRDS("C:/Users/anmol/OneDrive/Documents/GitHub/ki-longitudinal-manuscripts/results_old/rf results/pooled_Zscore_PIE_results.rds")
unique(par_raw$intervention_variable)
unique(par_raw$outcome_variable)

#Mean differences
ATE_raw <- readRDS(paste0(BV_dir,"/results/rf results/pooled_ATE_results.rds")) %>% mutate(parameter="Mean Difference") %>% filter(intervention_variable!="perdiar6")
# dfull <- readRDS("C:/Users/anmol/OneDrive/Documents/GitHub/ki-longitudinal-manuscripts/results_old/rf results/full_RF_results.rds")




#rename point estimates and CI's for combining
par_raw <- par_raw %>% rename(est=PAR)
ATE_raw <- ATE_raw %>% rename(est=ATE)

df_full <- bind_rows(par_raw, ATE_raw)




#----------------------------------------------------------------------------------
##### Cleaning  dataset
#----------------------------------------------------------------------------------

df <- df_full %>% filter(!(intervention_variable %in% c("anywast06","enstunt","enwast","pers_wast")))
unique(df$intervention_level)
unique(df$intervention_variable)
df$intervention_level <- as.character(df$intervention_level)
df$intervention_level[df$intervention_level=="Full or late term"] <- "Full/late term"
df$intervention_level[df$intervention_level=="[0%, 2%]"] <- "[0%,2%]"
df$intervention_level[df$intervention_level=="No" & !(df$intervention_variable %in% c("enwast","enstunt"))] <- "None"
df$intervention_level[df$intervention_variable %in% c("enwast","enstunt")] <- "No"
df$intervention_level[df$intervention_level=="Normal weight"] <- ">=18.5 BMI"
df$intervention_level[df$intervention_level=="1" & df$intervention_variable %in% c("brthmon","month")] <- "Jan."
df$intervention_level[df$intervention_level=="0" & df$intervention_variable %in% c("single")] <- "Partnered"
df$intervention_level[df$intervention_level=="1" & df$intervention_variable %in% c("dfity")] <- "Firstborn"
df$intervention_level[df$intervention_level=="None" & df$intervention_variable %in% c("vagbrth")] <- "C-section"
df$intervention_level[df$intervention_level=="None" & df$intervention_variable %in% c("hdlvry")] <- "No"

df$RFlabel[df$RFlabel=="Diarrhea <24 mo.  (% days)"] <- "Diarrhea (% days)"
df$RFlabel[df$RFlabel=="Diarrhea <6 mo. (% days)"] <- "Diarrhea (% days)"
df$RFlabel[df$RFlabel=="Gestational age at birth"] <- "Gestational age"



# Only include moderate stunting and wasting and Z-scores and subset to last age examined
df <- df %>% filter(outcome_variable == "haz" | outcome_variable == "whz", agecat=="6-24 months" | agecat=="24 months")



#Pooled estimates
df <- df %>% filter(region=="Pooled") %>%
  mutate(RFlabel_ref = paste0(RFlabel," (ref.: ", baseline_level,")"))
unique(df$RFlabel_ref)

#Drop reference levels/other comparisons
df <- df %>% subset(., select = c(parameter, outcome_variable, intervention_variable, intervention_level, est, CI1, CI2, RFlabel, RFlabel_ref,  RFtype, n_cell, n, Nstudies)) %>% 
  filter(!is.na(est)) %>% 
  filter(CI1 !=CI2) 
#df <- df %>% filter(!(intervention_variable=="nrooms" & baseline_level=="1"))


#drop risk factors with rare estimates
df <- df %>% filter(Nstudies >= 5)



#----------------------------------------------------------
# Order plot
#----------------------------------------------------------

est_lab_format="N (% shifted)   PIE (95% CI)"


df <- df %>%
  mutate(
    RFgroup = case_when(
      RFtype %in% c("Household","SES","WASH") ~ "Household & Environmental Characteristics",
      RFtype %in% c("Parent background","Parent anthro" ) ~ "Parental Characteristics",
      RFtype %in% c("Postnatal child health", "Breastfeeding") ~ "Postnatal child characteristics",
      RFtype==RFtype ~ "At-birth child characteristics"),
    est_lab=paste0(sprintf("%0.2f", -est)," (",sprintf("%0.2f", -CI2),", ",sprintf("%0.2f", -CI1),")"),
    ref_prev=n_cell/n,
    perc_ref= round((1-ref_prev)*100),
    n = format(n ,big.mark=",", trim=TRUE),
    n= paste0(n, " (",perc_ref,"%)"),
    est_lab=paste0(n,"   ",est_lab))

head(df)


df <- df %>%
  mutate(
    parameter = factor(parameter, levels=c("Population Intervention Effect","Mean Difference")),
    outcome_variable = factor(outcome_variable, levels=c("haz","whz" )))


#drop intervention level for PIE
df$intervention_level[df$parameter=="Population Intervention Effect"] <- ""

#Sort and set Y-axis order
df <- df %>% arrange(title, parameter, outcome_variable, RFgroup,  -est) 
rflevels = unique(df$RFlabel_ref)
df$RFlabel_ref=factor(df$RFlabel_ref, levels=rflevels)
rflevels

#Make sure same number of estimates per parameter
table(df$parameter)
table(df$parameter, df$RFlabel_ref)

saveRDS(df, file=paste0(here::here(),"/data/temp_plotdf2.RDS"))

#offline
df <- readRDS(paste0(here::here(),"/data/temp_plotdf2.RDS"))
head(df)


#Sort and set Y-axis order
#-need to sort by max PIE
df <- df %>% group_by(intervention_variable, outcome_variable) %>%
  mutate(par=ifelse(parameter=="Population Intervention Effect",1,0), max_est= max(-est *par)) %>% 
  ungroup() %>% 
  arrange(outcome_variable,  RFgroup,  max_est,  parameter,  -est) 
rflevels = unique(df$RFlabel_ref)
df$RFlabel_ref=factor(df$RFlabel_ref, levels=rflevels)
rflevels


#----------------------------------------------------------
# Plot parameters
#----------------------------------------------------------


yticks <- c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)

# Colors
color_vec = c("#7F7F7F", "#E377C2")
main_color <- "#287D8EFF"




#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# LAZ
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

  df_LAZ <- df %>% filter(outcome_variable=="haz", !is.na(est))
  df_LAZ$intervention_variable
  df_LAZ$intervention_level
  
  dodge_width = 0.7
  
  
  cbbPalette[c(6,3,2,4)]
  
  p_laz <- ggplot(df_LAZ, aes(x=RFlabel_ref, group=RFlabel_ref, shape=parameter, color=parameter)) + 
    geom_point(aes(y=-est),  size = 1.5, position = position_dodge2(dodge_width)) +
    geom_linerange(aes(ymin=-CI1, ymax=-CI2), position = position_dodge2(dodge_width)) +
    geom_text(aes(y= -CI2, label=intervention_level), position = position_dodge2(dodge_width), size=1.25, color="grey20") +
    # geom_text(aes(label=est_lab), y=-0.21, color="grey20", size=1.25) +
    # geom_text(aes(label=est_lab_title), y=-0.21, color="black", size=1.5,fontface = "bold") +
    coord_flip(
     ylim=c(-0.3, 0.8)
      ) +
    labs(x = NULL,
         y = "Adjusted difference in length-for-age Z-scores") +
    geom_hline(yintercept = 0) +
    #scale_y_continuous(breaks = c(-0.2,-0.1,0,0.1,0.2,0.3,0.4, 0.5, 0.6, 0.7, 0.8), labels=c("","","0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8")) +
    guides(color=guide_legend(title="Estimate type:"), shape=guide_legend(title="Estimate type:")) + 
    scale_color_manual(values = cbbPalette[c(3,2)], guide = guide_legend(reverse = TRUE) ) +
    scale_shape_manual(values = c(17,16), guide = guide_legend(reverse = TRUE) ) +
    theme(strip.background = element_blank(),
          legend.position = "bottom",
          strip.placement = "top",
          strip.text = element_text(hjust = 0, size=6, face="bold"),
          axis.text.y = element_text(size=6, hjust = 1),
          axis.text.x = element_text(size=8),
          axis.title.x = element_text(size=6),
          axis.ticks.x = element_line(size = c(0,0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)),
          plot.margin = unit(c(0, 0, 0, 0), "cm")) +
    #guides(shape="none") + 
    ggforce::facet_col(facets = vars(RFgroup), 
                       scales = "free_y", 
                       space = "free") 
  p_laz
  
  ggsave(p_laz, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2_alt_laz.png"), width=9, height=18.3, units = 'cm')
  
  
  #XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  # WLZ
  #XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

  df_WLZ <- df %>% filter(outcome_variable=="whz")

  df_WLZ <- df_WLZ %>% group_by(intervention_variable, outcome_variable) %>%
    mutate(par=ifelse(parameter=="Population Intervention Effect",1,0), max_est= max(-est *par)) %>%
    ungroup() %>%
    arrange( outcome_variable,  RFgroup,  max_est,  parameter,  -est)
  rflevels = unique(df_WLZ$RFlabel_ref)
  df_WLZ$RFlabel_ref=factor(df_WLZ$RFlabel_ref, levels=rflevels)

  temp<-df_WLZ[df_WLZ$intervention_variable=="single",]


  p_wlz <- ggplot(df_WLZ, aes(x=RFlabel_ref, group=RFlabel_ref, shape=parameter, color=parameter)) +
    geom_point(aes(y=-est),  size = 1.5, position = position_dodge2(dodge_width)) +
    geom_linerange(aes(ymin=-CI1, ymax=-CI2), position = position_dodge2(dodge_width)) +
    geom_text(aes(y= -CI2, label=intervention_level), position = position_dodge2(dodge_width), size=1.25, color="grey20") +
    coord_flip(
      ylim=c(-0.3, 0.5)
    ) +
    labs(x = NULL,
         y = "Adjusted difference in weight-for-length Z-scores") +
    geom_hline(yintercept = 0) +
    scale_color_manual(values = cbbPalette[c(3,2)], guide = guide_legend(reverse = TRUE) ) +
    scale_shape_manual(values = c(17,16), guide = guide_legend(reverse = TRUE) ) +
    guides(color=guide_legend(title="Estimate type:"), shape=guide_legend(title="Estimate type:")) + 
    theme(strip.background = element_blank(),
          legend.position = "bottom",
          legend.title = element_text(size=8),
          legend.text = element_text(size=6),
          strip.placement = "top",
          strip.text = element_text(hjust = 0, size=6, face="bold"),
          axis.text.y = element_text(size=6, hjust = 1),
          axis.text.x = element_text(size=8),
          axis.title.x = element_text(size=6),
          axis.ticks.x = element_line(size = c(0,0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)),
          plot.margin = unit(c(0, 0, 0, 0), "cm")) +
    ggforce::facet_col(facets = vars(RFgroup),
                       scales = "free_y",
                       space = "free")


ggsave(p_wlz, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig3_alt_wlz.png"), width=12, height=20, units = 'cm')
  


#----------------------------------------------------------------------------------
# Combine plots
#----------------------------------------------------------------------------------

# fig2_laz = plot_grid(pPIE_laz, pATE_LAZ, pCIR_stunt, ncol = 3, rel_widths = c(2, 1, 1))
# fig2_wlz = plot_grid(pPIE_wlz, pATE_WLZ, pCIR_wast, ncol = 3, rel_widths = c(2, 1, 1))
#   
# 
# fig2 <- plot_grid(fig2_laz,  fig2_wlz, labels = "auto", ncol = 1, align = 'v', axis = 'l')


#ggsave(fig2, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2_alt.png"), width=18.3, height=18.3, units = 'cm')

