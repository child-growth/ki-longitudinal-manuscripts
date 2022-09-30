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



#----------------------------------------------------------------------------------
# Load data
#----------------------------------------------------------------------------------


# CIR
CIR_raw <- readRDS(paste0(BV_dir,"/results/rf results/pooled_RR_results_alt_ref.rds")) %>% mutate(parameter="CIR") %>% filter(agecat=="6-24 months",intervention_variable!="perdiar24")

#Prev 
#prev_raw <- readRDS(paste0(BV_dir,"/results/rf results/pooled_RR_results.rds")) %>% mutate(parameter="Prev") %>% filter(agecat=="24 months",intervention_variable!="perdiar24")
prev_raw <-NULL

#PAF
paf_raw <- readRDS(paste0(BV_dir,"/results/rf results/pooled_PAF_results.rds"))
paf_raw <- paf_raw %>% filter(!(intervention_variable %in% c("anywast06","enstunt","enwast","pers_wast")),
                    outcome_variable %in% c("ever_stunted","ever_wasted"))

#rename point estimates and CI's for combining
paf_raw <- paf_raw %>% rename(est=PAF)
CIR_raw <- CIR_raw %>% rename(est=RR, CI1=RR.CI1, CI2=RR.CI2)
prev_raw <- prev_raw %>% rename(est=RR, CI1=RR.CI1, CI2=RR.CI2)

df_full <- bind_rows(paf_raw, CIR_raw, prev_raw)

saveRDS(df_full, file=paste0(here::here(),"/data/temp_plotdf_paf.RDS"))

df_full <- readRDS(paste0(here::here(),"/data/temp_plotdf_paf.RDS")) %>% filter( region=="Pooled")


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
df <- df %>% 
  filter(outcome_variable == "haz" | outcome_variable == "whz"|
         outcome_variable == "ever_stunted" | outcome_variable == "ever_wasted")


#Subset to last age examined
df <- df %>% filter(agecat=="6-24 months" | agecat=="24 months", region=="Pooled") %>%
  mutate(RFlabel_ref = paste0(RFlabel," (ref. ", baseline_level,")"))
unique(df$RFlabel_ref)

#Drop reference levels/other comparisons
df <- df %>% subset(., select = c(parameter, outcome_variable, intervention_variable, intervention_level, est, CI1, CI2, RFlabel, RFlabel_ref,  RFtype, n_cell, n)) %>% 
  filter(!is.na(est)) %>% 
  filter(CI1 !=CI2) 
df <- df %>% filter(!(intervention_variable=="nrooms" & baseline_level=="1"))

#Only include high-risk intervention level to match the PIE's
table(df$intervention_variable, df$intervention_level)
unique(df$intervention_level)


df <- df %>% filter(!(intervention_level %in% c("Post-max rain",">=30","Pre-max rain","2","3","Q2", "Q3", "4-5","6-7" ,"[30-35)", "[48-50) cm","Early term", "Mildly Food Insecure","Medium")))



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

# #Add in blank row for printed N's title
# #also add in blank rain quartile for CIR
# df <- bind_rows(
#   data.frame(
#     outcome_variable="haz",   
#     parameter="ATE",
#     RFlabel_ref="",               
#     RFgroup="At-birth child characteristics",
#     est_lab_title=est_lab_format,
#     title=1
#   ),
#   data.frame(
#     outcome_variable="whz",  
#     parameter="ATE",
#     RFlabel_ref="",               
#     RFgroup="At-birth child characteristics",
#     est_lab_title=est_lab_format,
#     title=1
#   ),
#   data.frame(
#     outcome_variable="haz",   
#     parameter="PAR",
#     RFlabel_ref="",               
#     RFgroup="At-birth child characteristics",
#     est_lab_title=est_lab_format,
#     title=1
#   ),
#   data.frame(
#     outcome_variable="whz",  
#     parameter="PAR",
#     RFlabel_ref="",               
#     RFgroup="At-birth child characteristics",
#     est_lab_title=est_lab_format,
#     title=1
#   ),
#   data.frame(
#     outcome_variable="ever_wasted",  
#     parameter="CIR",
#     RFlabel_ref="",               
#     RFgroup="At-birth child characteristics",
#     est_lab_title=est_lab_format,
#     title=1
#   ),
#   data.frame(
#     outcome_variable="ever_stunted",   
#     parameter="CIR",
#     RFlabel_ref="",               
#     RFgroup="At-birth child characteristics",
#     est_lab_title=est_lab_format,
#     title=1
#   ),
#   data.frame(
#     outcome_variable="ever_wasted",  
#     parameter="CIR",
#     RFlabel_ref="Rain quartile (ref. Opposite max rain)",               
#     RFgroup="At-birth child characteristics",
#     est_lab_title="",
#     title=0
#   ),
#   data.frame(
#     outcome_variable="ever_stunted",   
#     parameter="CIR",
#     RFlabel_ref="Rain quartile (ref. Opposite max rain)",               
#     RFgroup="At-birth child characteristics",
#     est_lab_title="",
#     title=0
#   ),
# 
#   
#   df %>% mutate(title=0)
# )


df <- df %>%
  mutate(
    parameter = factor(parameter, levels=c("PAF","Prev","CIR")),
    outcome_variable = factor(outcome_variable, levels=c("ever_stunted","ever_wasted" )))

head(df)


#Sort and set Y-axis order
df <- df %>% arrange(title, parameter, outcome_variable, RFgroup,  -est) 
rflevels = unique(df$RFlabel_ref)
df$RFlabel_ref=factor(df$RFlabel_ref, levels=rflevels)
rflevels

#Make sure same number of estimates per parameter
table(df$parameter)
table(df$parameter, df$RFlabel_ref)

# #XXXX FIX!
# saveRDS(df, file=paste0(here::here(),"/data/temp_plotdf.RDS"))
# 
# #offline
# df <- readRDS(paste0(here::here(),"/data/temp_plotdf.RDS"))
# head(df)


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



  #----------------------------------------------------------------------------------
  # Plot CIR's
  #----------------------------------------------------------------------------------
  df_LAZ_CIR <- df %>% filter(outcome_variable=="ever_stunted", parameter=="CIR")
  
  pCIR_stunt <- ggplot(df_LAZ_CIR, aes(x=RFlabel_ref, group=RFgroup, color=RFgroup)) + 
    geom_point(aes(y=est),  size = 1.5) +
    geom_linerange(aes(ymin=CI1, ymax=CI2)) +
    coord_flip() +
    labs(x = NULL,
         y = "Adjusted cumulative incidence ratio") +
    geom_hline(yintercept = 1) +
    scale_y_continuous(trans="log10", breaks=base_breaks(n = 6)) +
    scale_color_manual(values = cbbPalette[c(6,3,2,4)], guide = guide_legend(reverse = TRUE) ) +
    theme(strip.background = element_blank(),
          strip.placement = "top",
          strip.text = element_text(hjust = 0, size=6,  face="bold", color="white"),
          axis.ticks.y = element_blank(),
          axis.text.y = element_blank(),
          axis.text.x = element_text(size=8),
          axis.title.x = element_text(hjust = 1, size=6),
          plot.title = element_text(hjust = 0,size=9),
          axis.ticks.x = element_line(size = c(0,0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)),
          plot.margin = unit(c(0, 0, 0, 0), "cm")) +
    guides(shape="none") + 
    ggtitle("Stunting cumulative incidence") +
    ggforce::facet_col(facets = vars(RFgroup), scales = "free_y", space = "free") 
  
  
  
  #----------------------------------------------------------------------------------
  # Plot ATE's
  #----------------------------------------------------------------------------------
  df_LAZ_ATE <- df %>% filter(outcome_variable=="haz", parameter=="ATE")
  
  pATE_LAZ <- ggplot(df_LAZ_ATE, aes(x=RFlabel_ref, group=RFgroup, color=RFgroup)) + 
    geom_point(aes(y=-est),  size = 1.5) +
    geom_linerange(aes(ymin=-CI1, ymax=-CI2)) +
    coord_flip( ) +
    labs(x = NULL,
         y = "Adjusted mean decrease") +
    geom_hline(yintercept = 0) +
    scale_color_manual(values = cbbPalette[c(6,3,2,4)], guide = guide_legend(reverse = TRUE) ) +
    theme(strip.background = element_blank(),
          strip.placement = "top",
          strip.text = element_text(hjust = 0, size=6,  face="bold", color="white"),
          axis.ticks.y = element_blank(),
          axis.text.y = element_blank(),
          axis.text.x = element_text(size=8),
          axis.title.x = element_text(hjust = 1, size=6),
          plot.title = element_text(hjust = 0,size=9),
          axis.ticks.x = element_line(size = c(0,0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)),
          plot.margin = unit(c(0, 0, 0, 0), "cm")) +
    guides(shape="none") + 
    ggtitle("LAZ mean differences") +
    ggforce::facet_col(facets = vars(RFgroup), 
                       scales = "free_y", 
                       space = "free") 
  
  
  #----------------------------------------------------------------------------------
  # Plot PIE's
  #----------------------------------------------------------------------------------
  
  df_LAZ_PAR <- df %>% filter(outcome_variable=="haz", parameter=="PAR")
  
  pPAR_laz <- ggplot(df_LAZ_PAR, aes(x=RFlabel_ref, group=RFgroup, color=RFgroup)) + 
    geom_point(aes(y=-est),  size = 1.5) +
    geom_linerange(aes(ymin=-CI1, ymax=-CI2)) +
    geom_text(aes(label=est_lab), y=-0.21, color="grey20", size=1.25) +
    geom_text(aes(label=est_lab_title), y=-0.21, color="black", size=1.5,fontface = "bold") +
    coord_flip(ylim=c(-0.3, 0.48)) +
    labs(x = NULL,
         y = "Adjusted population intervention effect, difference in Z-score") +
    geom_hline(yintercept = 0) +
    scale_y_continuous(breaks = c(-0.2,-0.1,0,0.1,0.2,0.3,0.4, 0.5), labels=c("","","0","0.1","0.2","0.3","0.4","0.5")) +
    scale_color_manual(values = cbbPalette[c(6,3,2,4)], guide = guide_legend(reverse = TRUE) ) +
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


#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# WLZ
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

  #Sort and set Y-axis order by WLZ
  
  df <- df %>%
    mutate(
      parameter = factor(parameter, levels=c("PAR","ATE","CIR")),
      outcome_variable = factor(outcome_variable, levels=c("whz","ever_wasted","haz","ever_stunted" ))) %>% 
    arrange(title, parameter, outcome_variable, RFgroup,  -est) 
  rflevels = unique(df$RFlabel_ref)
  df$RFlabel_ref=factor(df$RFlabel_ref, levels=rflevels)
  rflevels
  
  #----------------------------------------------------------------------------------
  # Plot CIR's
  #----------------------------------------------------------------------------------
  df_WLZ_CIR <- df %>% filter(outcome_variable=="ever_wasted", parameter=="CIR")
  
  pCIR_wast <- ggplot(df_WLZ_CIR, aes(x=RFlabel_ref, group=RFgroup, color=RFgroup)) + 
    geom_point(aes(y=est),  size = 1.5) +
    geom_linerange(aes(ymin=CI1, ymax=CI2)) +
    coord_flip(ylim=c(0.8,1.8)) +
    labs(x = NULL,
         y = "Adjusted cumulative incidence ratio") +
    geom_hline(yintercept = 1) +
    scale_y_continuous(trans="log10", breaks=base_breaks(n = 6)) +
    scale_color_manual(values = cbbPalette[c(6,3,2,4)], guide = guide_legend(reverse = TRUE) ) +
    theme(strip.background = element_blank(),
          strip.placement = "top",
          strip.text = element_text(hjust = 0, size=6,  face="bold", color="white"),
          axis.ticks.y = element_blank(),
          axis.text.y = element_blank(),
          axis.text.x = element_text(size=8),
          axis.title.x = element_text(hjust = 1, size=6),
          plot.title = element_text(hjust = 0,size=9),
          axis.ticks.x = element_line(size = c(0,0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)),
          plot.margin = unit(c(0, 0, 0, 0), "cm")) +
    guides(shape="none") + 
    ggtitle("Wasting cumulative incidence") +
    ggforce::facet_col(facets = vars(RFgroup), scales = "free_y", space = "free") 
  
  
  
  #----------------------------------------------------------------------------------
  # Plot ATE's
  #----------------------------------------------------------------------------------
  df_WLZ_ATE <- df %>% filter(outcome_variable=="whz", parameter=="ATE")
  
  pATE_WLZ <- ggplot(df_WLZ_ATE, aes(x=RFlabel_ref, group=RFgroup, color=RFgroup)) + 
    geom_point(aes(y=-est),  size = 1.5) +
    geom_linerange(aes(ymin=-CI1, ymax=-CI2)) +
    coord_flip( ) +
    labs(x = NULL,
         y = "Adjusted mean decrease") +
    geom_hline(yintercept = 0) +
    scale_color_manual(values = cbbPalette[c(6,3,2,4)], guide = guide_legend(reverse = TRUE) ) +
    theme(strip.background = element_blank(),
          strip.placement = "top",
          strip.text = element_text(hjust = 0, size=6,  face="bold", color="white"),
          axis.ticks.y = element_blank(),
          axis.text.y = element_blank(),
          axis.text.x = element_text(size=8),
          axis.title.x = element_text(hjust = 1, size=6),
          plot.title = element_text(hjust = 0,size=9),
          axis.ticks.x = element_line(size = c(0,0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)),
          plot.margin = unit(c(0, 0, 0, 0), "cm")) +
    guides(shape="none") + 
    ggtitle("WLZ mean differences") +
    ggforce::facet_col(facets = vars(RFgroup), 
                       scales = "free_y", 
                       space = "free") 
  
  
  #----------------------------------------------------------------------------------
  # Plot PIE's
  #----------------------------------------------------------------------------------
  
  df_WLZ_PAR <- df %>% filter(outcome_variable=="whz", parameter=="PAR")
  
  pPAR_wlz <- ggplot(df_WLZ_PAR, aes(x=RFlabel_ref, group=RFgroup, color=RFgroup)) + 
    geom_point(aes(y=-est),  size = 1.5) +
    geom_linerange(aes(ymin=-CI1, ymax=-CI2)) +
    geom_text(aes(label=est_lab), y=-0.21, color="grey20", size=1.25) +
    geom_text(aes(label=est_lab_title), y=-0.21, color="black", size=1.5,fontface = "bold") +
    coord_flip(ylim=c(-0.25,0.25)) +
    labs(x = NULL,
         y = "Adjusted population intervention effect, difference in Z-score") +
    geom_hline(yintercept = 0) +
    scale_y_continuous(breaks = c(-0.3,-0.2,-0.1,0,0.1,0.2), labels=c("","","","0","0.1","0.2")) +
    scale_color_manual(values = cbbPalette[c(6,3,2,4)], guide = guide_legend(reverse = TRUE) ) +
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
  


#----------------------------------------------------------------------------------
# Combine plots
#----------------------------------------------------------------------------------

# pPAR_laz
# pATE_LAZ
# pCIR_stunt

# fig2_laz = plot_grid(pPAR_laz, pATE_LAZ, pCIR_stunt, ncol = 3, rel_widths = c(2, 1, 1))
# fig2_laz
# ggsave(fig2_laz, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2_laz.png"), width=18.3, height=10, units = 'cm')
  
fig2_laz = plot_grid(pPAR_laz, pATE_LAZ, pCIR_stunt, ncol = 3, rel_widths = c(2, 1, 1))
fig2_wlz = plot_grid(pPAR_wlz, pATE_WLZ, pCIR_wast, ncol = 3, rel_widths = c(2, 1, 1))
  

fig2 <- plot_grid(fig2_laz,  fig2_wlz, labels = "auto", ncol = 1, align = 'v', axis = 'l')


ggsave(fig2, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2.png"), width=18.3, height=18.3, units = 'cm')

