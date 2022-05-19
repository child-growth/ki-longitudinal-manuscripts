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
par_raw <- readRDS(paste0(BV_dir,"/results/rf results/pooled_Zscore_PAR_results.rds")) %>% mutate(parameter="PAR", baseline_level=intervention_level ) %>% filter(intervention_variable!="perdiar6")
# par <- readRDS("C:/Users/anmol/OneDrive/Documents/GitHub/ki-longitudinal-manuscripts/results_old/rf results/pooled_Zscore_PAR_results.rds")
unique(par_raw$intervention_variable)
unique(par_raw$outcome_variable)

#Mean differences
ATE_raw <- readRDS(paste0(BV_dir,"/results/rf results/pooled_ATE_results.rds")) %>% mutate(parameter="ATE") %>% filter(intervention_variable!="perdiar6")
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
df$intervention_level[df$intervention_level=="Yes"] <- "All"
df$intervention_level[df$intervention_level=="Normal weight"] <- ">=18.5 BMI"
df$intervention_level[df$intervention_level=="1" & df$intervention_variable %in% c("brthmon","month")] <- "Jan."
df$intervention_level[df$intervention_level=="0" & df$intervention_variable %in% c("single")] <- "Partnered"
df$intervention_level[df$intervention_level=="1" & df$intervention_variable %in% c("dfity")] <- "Firstborn"
df$intervention_level[df$intervention_level=="None" & df$intervention_variable %in% c("vagbrth")] <- "C-section"
df$intervention_level[df$intervention_level=="None" & df$intervention_variable %in% c("hdlvry")] <- "No"

df$RFlabel[df$RFlabel=="Diarrhea <24 mo.  (% days)"] <- "Diarrhea (% days)"
df$RFlabel[df$RFlabel=="Diarrhea <6 mo. (% days)"] <- "Diarrhea (% days)"
df$RFlabel[df$RFlabel=="Gestational age at birth"] <- "Gestational age"



# Only include moderate stunting and wasting and Z-scores
df <- df %>% filter(outcome_variable == "haz" | outcome_variable == "whz")


#Subset to last age examined
df <- df %>% filter(agecat=="6-24 months" | agecat=="24 months", region=="Pooled") %>%
  mutate(RFlabel_ref = paste0(RFlabel,": ",intervention_level," vs. ", baseline_level))
unique(df$RFlabel_ref)

#Drop reference levels/other comparisons
df <- df %>% subset(., select = c(parameter, outcome_variable, intervention_variable, intervention_level, est, CI1, CI2, RFlabel, RFlabel_ref,  RFtype, n_cell, n)) %>% 
  filter(!is.na(est)) %>% 
  filter(CI1 !=CI2) 
df <- df %>% filter(!(intervention_variable=="nrooms" & baseline_level=="1"))

#Only include high-risk intervention level to match the PIE's
table(df$intervention_variable, df$intervention_level)
unique(df$intervention_level)



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

#Add in blank row for printed N's title
#also add in blank rain quartile for CIR
df <- bind_rows(
  data.frame(
    outcome_variable="haz",   
    parameter="ATE",
    RFlabel_ref="",               
    RFgroup="At-birth child characteristics",
    est_lab_title=est_lab_format,
    title=1
  ),
  data.frame(
    outcome_variable="whz",  
    parameter="ATE",
    RFlabel_ref="",               
    RFgroup="At-birth child characteristics",
    est_lab_title=est_lab_format,
    title=1
  ),
  data.frame(
    outcome_variable="haz",   
    parameter="PAR",
    RFlabel_ref="",               
    RFgroup="At-birth child characteristics",
    est_lab_title=est_lab_format,
    title=1
  ),
  data.frame(
    outcome_variable="whz",  
    parameter="PAR",
    RFlabel_ref="",               
    RFgroup="At-birth child characteristics",
    est_lab_title=est_lab_format,
    title=1
  ),
  df %>% mutate(title=0)
)


df <- df %>%
  mutate(
    parameter = factor(parameter, levels=c("PAR","ATE")),
    outcome_variable = factor(outcome_variable, levels=c("haz","whz" )))

head(df)

# XXXX FIX ordering! HERE:
# -update label of the PAR levels and give different color
# -add legend
# -for the PAR variable, intervention level equals baseline level, but need to replace with "PAR" or maybe the percent shifted
# -need to add ATE prevalences.

#Make PAR darker
# group by variable
#geom text the contrasts/PIE

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
#-need to sort by max PAR
df <- df %>% group_by(intervention_variable, outcome_variable) %>%
  mutate(par=ifelse(parameter=="PAR",1,0), max_est= max(-est *par)) %>% 
  ungroup() %>% 
  arrange(title, outcome_variable,  RFgroup,  max_est,  parameter,  -est) 
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

  df_LAZ <- df %>% filter(outcome_variable=="haz")
  
  
  p_laz <- ggplot(df_LAZ, aes(x=RFlabel_ref, group=RFgroup, shape=parameter, color=parameter)) + 
    geom_point(aes(y=-est),  size = 1.5) +
    geom_linerange(aes(ymin=-CI1, ymax=-CI2)) +
    geom_text(aes(label=est_lab), y=-0.21, color="grey20", size=1.25) +
    geom_text(aes(label=est_lab_title), y=-0.21, color="black", size=1.5,fontface = "bold") +
    coord_flip(
     ylim=c(-0.3, 0.8)
      ) +
    labs(x = NULL,
         y = "Adjusted population intervention effect, difference in Z-score") +
    geom_hline(yintercept = 0) +
    scale_y_continuous(breaks = c(-0.2,-0.1,0,0.1,0.2,0.3,0.4, 0.5, 0.6, 0.7, 0.8), labels=c("","","0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8")) +
    scale_color_manual(values = c("grey60","black"), guide = guide_legend(reverse = TRUE) ) +
    scale_shape_manual(values = c(17,16), guide = guide_legend(reverse = TRUE) ) +
    theme(strip.background = element_blank(),
          strip.placement = "top",
          strip.text = element_text(hjust = 0, size=6, face="bold"),
          axis.text.y = element_text(size=4, hjust = 1),
          axis.text.x = element_text(size=8),
          axis.title.x = element_text(hjust = 1, size=6),
          plot.title = element_text(hjust = 0,size=9),
          axis.ticks.x = element_line(size = c(0,0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)),
          plot.margin = unit(c(0, 0, 0, 0), "cm")) +
    guides(shape="none") + 
    ggtitle("LAZ population intervention effect") +
    ggforce::facet_col(facets = vars(RFgroup), 
                       scales = "free_y", 
                       space = "free") 
  p_laz
  
  
  
  #XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  # WLZ
  #XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  
  df_WLZ <- df %>% filter(outcome_variable=="whz")
  
  df_WLZ <- df_WLZ %>% group_by(intervention_variable, outcome_variable) %>%
    mutate(par=ifelse(parameter=="PAR",1,0), max_est= max(-est *par)) %>% 
    ungroup() %>% 
    arrange(title, outcome_variable,  RFgroup,  max_est,  parameter,  -est) 
  rflevels = unique(df_WLZ$RFlabel_ref)
  df_WLZ$RFlabel_ref=factor(df_WLZ$RFlabel_ref, levels=rflevels)
  
  
  
  p_wlz <- ggplot(df_WLZ, aes(x=RFlabel_ref, group=RFgroup, shape=parameter, color=parameter)) + 
    geom_point(aes(y=-est),  size = 1.5) +
    geom_linerange(aes(ymin=-CI1, ymax=-CI2)) +
    geom_text(aes(label=est_lab), y=-0.27, color="grey20", size=1.25) +
    geom_text(aes(label=est_lab_title), y=-0.27, color="black", size=1.5,fontface = "bold") +
    coord_flip(
      ylim=c(-0.3, 0.5)
    ) +
    labs(x = NULL,
         y = "Adjusted population intervention effect, difference in Z-score") +
    geom_hline(yintercept = 0) +
    scale_y_continuous(breaks = c(-0.2,-0.1,0,0.1,0.2,0.3,0.4, 0.5, 0.6, 0.7, 0.8), labels=c("","","0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8")) +
    scale_color_manual(values = c("grey60","black"), guide = guide_legend(reverse = TRUE) ) +
    scale_shape_manual(values = c(17,16), guide = guide_legend(reverse = TRUE) ) +
    theme(strip.background = element_blank(),
          strip.placement = "top",
          strip.text = element_text(hjust = 0, size=6, face="bold"),
          axis.text.y = element_text(size=4, hjust = 1),
          axis.text.x = element_text(size=8),
          axis.title.x = element_text(hjust = 1, size=6),
          plot.title = element_text(hjust = 0,size=9),
          axis.ticks.x = element_line(size = c(0,0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)),
          plot.margin = unit(c(0, 0, 0, 0), "cm")) +
    guides(shape="none") + 
    ggtitle("WLZ population intervention effect") +
    ggforce::facet_col(facets = vars(RFgroup), 
                       scales = "free_y", 
                       space = "free") 
  p_wlz
  
  
  


#----------------------------------------------------------------------------------
# Combine plots
#----------------------------------------------------------------------------------

# fig2_laz = plot_grid(pPAR_laz, pATE_LAZ, pCIR_stunt, ncol = 3, rel_widths = c(2, 1, 1))
# fig2_wlz = plot_grid(pPAR_wlz, pATE_WLZ, pCIR_wast, ncol = 3, rel_widths = c(2, 1, 1))
#   
# 
# fig2 <- plot_grid(fig2_laz,  fig2_wlz, labels = "auto", ncol = 1, align = 'v', axis = 'l')


ggsave(fig2, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2_alt.png"), width=18.3, height=18.3, units = 'cm')

