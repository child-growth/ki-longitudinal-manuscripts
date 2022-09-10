

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(gtable)
library(cowplot)

#notes

#Make facet label to the left, and no space between facets (look at)
# Rotate labels
#Add N's to facets with \n, see if I can add bold
#Order correct
#color labels
#add vertical lines based on Ben's suggestions. Add more tick marks
#add pie labels
#change shapes of pie points to diamons
#Black lines around pie and shifted-to point

# #----------------------------------------------------------------------------------
# # Load data
# #----------------------------------------------------------------------------------
# 
# # PIE
# par_raw <- readRDS(paste0(BV_dir,"/results/rf results/pooled_Zscore_PAR_results.rds")) %>% mutate(parameter="Population Intervention Effect", baseline_level=intervention_level ) %>% filter(intervention_variable!="perdiar6")
# # par <- readRDS("C:/Users/anmol/OneDrive/Documents/GitHub/ki-longitudinal-manuscripts/results_old/rf results/pooled_Zscore_PIE_results.rds")
# unique(par_raw$intervention_variable)
# unique(par_raw$outcome_variable)
# 
# #Mean differences
# ATE_raw <- readRDS(paste0(BV_dir,"/results/rf results/pooled_ATE_results.rds")) %>% mutate(parameter="Mean Difference") %>% filter(intervention_variable!="perdiar6")
# # dfull <- readRDS("C:/Users/anmol/OneDrive/Documents/GitHub/ki-longitudinal-manuscripts/results_old/rf results/full_RF_results.rds")
# 
# 
# 
# 
# #rename point estimates and CI's for combining
# par_raw <- par_raw %>% rename(est=PAR)
# ATE_raw <- ATE_raw %>% rename(est=ATE)
# 
# df_full <- bind_rows(par_raw, ATE_raw)
# 
# saveRDS(df_full, file=paste0(here::here(),"/data/temp_plotdf2_full.RDS"))
df_full <- readRDS(paste0(here::here(),"/data/temp_plotdf2_full.RDS"))
head(df_full)

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
df$baseline_level[df$baseline_level=="0" & df$intervention_variable %in% c("single")] <- "Partnered"
df$intervention_level[df$intervention_level=="1" & df$intervention_variable %in% c("single")] <- "Unpartnered"
df$intervention_level[df$intervention_level=="1" & df$intervention_variable %in% c("dfity")] <- "Firstborn"
df$intervention_level[df$intervention_level=="None" & df$intervention_variable %in% c("vagbrth")] <- "C-section"
df$intervention_level[df$intervention_level=="None" & df$intervention_variable %in% c("hdlvry")] <- "No"

df$RFlabel[df$RFlabel=="Diarrhea <24 mo.  (% days)"] <- "Diarrhea (% days)"
df$RFlabel[df$RFlabel=="Diarrhea <6 mo. (% days)"] <- "Diarrhea (% days)"
df$RFlabel[df$RFlabel=="Gestational age at birth"] <- "Gestational age"



# Only include  Z-scores and subset to last age examined
df <- df %>% filter(outcome_variable == "haz" | outcome_variable == "whz", agecat=="24 months")



#Pooled estimates
df <- df %>% filter(region=="Pooled") %>%
  mutate(RFlabel_ref = paste0(RFlabel,"\n(ref.: ", baseline_level,")"))
unique(df$RFlabel_ref)

#Subset to needed variables
df <- df %>% subset(., select = c(parameter, outcome_variable, intervention_variable, intervention_level, baseline_level, est, CI1, CI2, RFlabel, RFlabel_ref,  RFtype, n_cell, n, Nstudies)) %>% 
  filter(!is.na(est)) 

#Add reference level
df_ref <- df %>% ungroup() %>% distinct(parameter, intervention_variable, baseline_level, outcome_variable, RFlabel, RFlabel_ref,  RFtype, n_cell, n, Nstudies) %>%
  mutate(intervention_level=baseline_level, est=0, CI1=0, CI2=0, reflabel="ref") %>% filter(parameter=="Mean Difference")
df <- bind_rows(df, df_ref)

#drop risk factors with rare estimates
table(df$intervention_variable, df$Nstudies)
df <- df %>% group_by(intervention_variable) %>% filter(min(Nstudies) >= 4) %>% droplevels()



#----------------------------------------------------------
# Order plot
#----------------------------------------------------------

#est_lab_format="N (% shifted)   PIE (95% CI)"
est_lab_format="N (% shifted)"


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
    est_lab=paste0(n,"\n",est_lab))

head(df)


df <- df %>%
  mutate(
    parameter = factor(parameter, levels=c("Population Intervention Effect","Mean Difference")),
    outcome_variable = factor(outcome_variable, levels=c("haz","whz" )))


#drop intervention level for PIE
df$intervention_level[df$parameter=="Population Intervention Effect"] <- ""
df[df$intervention_variable=="single",]


# saveRDS(df, file=paste0(here::here(),"/data/temp_plotdf2.RDS"))
# 
# #offline
# df <- readRDS(paste0(here::here(),"/data/temp_plotdf2.RDS"))
# head(df)

df$intervention_level[df$intervention_variable=="birthwt" & df$parameter=="Mean Difference" ] <- "< 2500g" 


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
  
  offset <- 0
  cutoff <- (-0.1)
  df_LAZ$lab_pos <- ifelse( -df_LAZ$CI2 < cutoff, -df_LAZ$CI1 + offset, -df_LAZ$CI2 - offset)
  df_LAZ$lab_just <- ifelse( -df_LAZ$CI2 < cutoff, 0, 1)
  df_LAZ_pie_lab <- df_LAZ %>% filter(parameter=="Population Intervention Effect") 
  df_LAZ_pie_lab$n[df_LAZ_pie_lab$intervention_variable=="birthlen"] <- paste0(est_lab_format,"\n",df_LAZ_pie_lab$n[df_LAZ_pie_lab$intervention_variable=="birthwt"])
  
  #TEMP
  df_LAZ <- df_LAZ %>% filter(RFlabel %in% unique(RFlabel)[1:3])
  
  p_laz <- ggplot(df_LAZ, aes(x=intervention_level, shape=parameter, color=parameter, fill=parameter)) + 
    geom_point(aes(y=-est),  size = 1.5, position = position_dodge2(dodge_width)) +
    geom_linerange(aes(ymin=-CI1, ymax=-CI2), position = position_dodge2(dodge_width)) +
    geom_hline(yintercept = 0, size=0.25) +
    #geom_text(aes(y= -0.225, label=n), position = position_dodge2(dodge_width), hjust=1, size=1.65, color="grey20", data=df_LAZ_pie_lab) +
    #geom_text(aes(y= lab_pos, label=intervention_level, hjust=lab_just), position = position_dodge2(dodge_width), size=1.65, color="grey20") +
    geom_text(aes(y= est, label=reflabel, hjust=.1), size=1.65, color="grey20") +
    coord_flip(ylim=c(-0.2, 0.8)) +
    labs(x = NULL, y = "Adjusted difference in length-for-age Z-scores at 24 months") +
    geom_hline(yintercept = 0, alpha=0.5) +
    #scale_y_continuous(breaks = c(-0.2,-0.1,0,0.1,0.2,0.3,0.4, 0.5, 0.6, 0.7, 0.8), labels=c("","","0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8")) +
    guides(color=guide_legend(title="Estimate type:"), shape=guide_legend(title="Estimate type:")) + 
    scale_color_manual(values = cbbPalette[c(3,2)], guide = guide_legend(reverse = TRUE) ) +
    scale_shape_manual(values = c(17,16), guide = guide_legend(reverse = TRUE) ) +
    guides(fill=guide_legend(nrow=2,byrow=TRUE)) +
    facet_grid( RFlabel ~ ., scales="free",
                #labeller = labeller(Outcome = outcomes),
                switch = "y") +
    theme(strip.background = element_blank(),
          legend.position = "none",
          strip.placement = "outside",
          strip.text.x = element_text(size=6, angle = 45, face = "bold"),
          strip.text.y = element_text(size=6, angle = 45, face = "bold"),
          axis.text.y = element_text(size=6, hjust = 1),
          axis.text.x = element_text(size=6),
          legend.text = element_text(size=6),
          legend.title = element_text(size=6),
          axis.title.x = element_text(size=6),
          axis.ticks.x = element_line(size = c(0,0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)),
          panel.spacing = unit(0, "lines"),
          legend.box.background = element_rect(colour = "black"), 
          plot.margin = unit(c(0, 0, 0, 0), "cm")) 
    # ggforce::facet_col(facets = vars(intervention_variable),
    #                    scales = "free_y",
    #                    space = "free")
  p_laz
  
  #ggsave(p_laz, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2_alt_laz.png"), width=9, height=18.3, units = 'cm')
  ggsave(p_laz, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2_alt2_laz.png"), width=4, height=8)
  
  
#   #XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
#   # WLZ
#   #XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# 
#   df_WLZ <- df %>% filter(outcome_variable=="whz")
# 
#   df_WLZ <- df_WLZ %>% group_by(intervention_variable, outcome_variable) %>%
#     mutate(par=ifelse(parameter=="Population Intervention Effect",1,0), max_est= max(-est *par)) %>%
#     ungroup() %>%
#     arrange( outcome_variable,  RFgroup,  max_est,  parameter,  -est)
#   rflevels = unique(df_WLZ$RFlabel_ref)
#   df_WLZ$RFlabel_ref=factor(df_WLZ$RFlabel_ref, levels=rflevels)
# 
# 
#   offset <- 0
#   cutoff <- (-0.1)
#   df_WLZ$lab_pos <- ifelse( -df_WLZ$CI2 < cutoff, -df_WLZ$CI1 + offset, -df_WLZ$CI2 - offset)
#   df_WLZ$lab_just <- ifelse( -df_WLZ$CI2 < cutoff, 0, 1)
#   df_WLZ_pie_lab <- df_WLZ %>% filter(parameter=="Population Intervention Effect") 
#   df_WLZ_pie_lab$n[df_WLZ_pie_lab$intervention_variable=="birthlen"] <- paste0(est_lab_format,"\n",df_LAZ_pie_lab$n[df_LAZ_pie_lab$intervention_variable=="birthwt"])
#   
# 
# 
#   p_wlz <- ggplot(df_WLZ, aes(x=RFlabel_ref, group=RFlabel_ref, shape=parameter, color=parameter)) +
#     geom_point(aes(y=-est),  size = 1.5, position = position_dodge2(dodge_width)) +
#     geom_linerange(aes(ymin=-CI1, ymax=-CI2), position = position_dodge2(dodge_width)) +
#     geom_text(aes(y= -0.25, label=n), position = position_dodge2(dodge_width), hjust=1, size=1.65, color="grey20", data=df_LAZ_pie_lab) +
#     geom_text(aes(y= lab_pos, label=intervention_level, hjust=lab_just), position = position_dodge2(dodge_width), size=1.65, color="grey20") +
#     coord_flip(
#       ylim=c(-0.4, 0.5)
#     ) +
#     labs(x = NULL,
#          y = "Adjusted difference in weight-for-length Z-scores") +
#     geom_hline(yintercept = 0) +
#     scale_color_manual(values = cbbPalette[c(3,2)], guide = guide_legend(reverse = TRUE) ) +
#     scale_shape_manual(values = c(17,16), guide = guide_legend(reverse = TRUE) ) +
#     guides(color=guide_legend(title="Estimate type:"), shape=guide_legend(title="Estimate type:")) + 
#     guides(fill=guide_legend(nrow=2,byrow=TRUE)) +
#     theme(strip.background = element_blank(),
#           legend.position = "bottom",
#           strip.placement = "top",
#           strip.text = element_text(hjust = 0, size=6, face="bold"),
#           axis.text.y = element_text(size=6, hjust = 1),
#           axis.text.x = element_text(size=6),
#           legend.text = element_text(size=6),
#           legend.title = element_text(size=6),
#           axis.title.x = element_text(size=6),
#           axis.ticks.x = element_line(size = c(0,0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)),
#           plot.margin = unit(c(0, 0, 0, 0), "cm")) +
#     ggforce::facet_col(facets = vars(RFgroup), 
#                        scales = "free_y", 
#                        space = "free") 
# 
# #ggsave(p_wlz, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig3_alt_wlz.png"), width=12, height=20, units = 'cm')
# ggsave(p_wlz, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig3_alt_wlz.png"), width=4, height=8)
# 
