

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(gtable)
library(cowplot)
library(tidytext)
#notes

#see if I can make only facet lable, not N, bold
#Order correct
#color labels
#add vertical lines based on Ben's suggestions. Add more tick marks

#facet spacing
#https://stackoverflow.com/questions/34749636/left-justify-text-from-multi-line-facet-labels

#label ordering
#-or look at other C&C plots... I think this issue has come up before
#https://stackoverflow.com/questions/72147790/ggplot-facet-different-y-axis-order-based-on-value

#----------------------------------------------------------
# Plot parameters
#----------------------------------------------------------

yticks <- c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)
dodge_width = 0.7

# Colors
color_vec = c("#7F7F7F", "#E377C2")
main_color <- "#287D8EFF"


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
df$intervention_level[df$intervention_level=="None" & df$intervention_variable %in% c("cleanck")] <- "No"
df$intervention_level[df$intervention_level=="None" & df$intervention_variable %in% c("earlybf")] <- "No"
df$intervention_level[df$intervention_variable=="birthwt" & df$parameter=="Mean Difference" ] <- "< 2500g" 

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


#Format numbers
df <- df %>%
  mutate(
    RFgroup = case_when(
      RFtype %in% c("Household","SES","WASH") ~ "Household & Environmental Characteristics",
      RFtype %in% c("Parent background","Parent anthro" ) ~ "Parental Characteristics",
      RFtype %in% c("Postnatal child health", "Breastfeeding") ~ "Postnatal child characteristics",
      RFtype==RFtype ~ "At-birth child characteristics"))



#get PAF label and facet label
df <- df %>% group_by(outcome_variable, RFlabel) %>% mutate(n=max(n, na.rm=T)) %>% ungroup() %>%
    mutate(intervention_level_f=paste0(round((1-n_cell/n)*100), "% shifted to ", intervention_level),
                    n = format(n ,big.mark=",", trim=TRUE),
                    RFlabel=paste0(RFlabel,"\nN=",n))
df$intervention_level_f[df$parameter!="Population Intervention Effect"] <- df$intervention_level[df$parameter!="Population Intervention Effect"]  


#----------------------------------------------------------
# Order plot
#----------------------------------------------------------

df <- df %>%
  mutate(
    parameter = factor(parameter, levels=c("Population Intervention Effect","Mean Difference")),
    outcome_variable = factor(outcome_variable, levels=c("haz","whz" )))

#Sort and set Y-axis order

#df <- df %>% select(outcome_variable, intervention_variable, RFgroup,   parameter, reflabel,  est, intervention_level_f)

df <- df %>% group_by(intervention_variable, outcome_variable) %>%
  mutate(par=ifelse(parameter=="Population Intervention Effect",1,0), max_est= max(-est *par), intervention_level_f2=paste0(intervention_level_f, " ", intervention_variable)) %>% 
  ungroup() %>% 
  arrange(outcome_variable,   RFgroup, max_est,   intervention_variable, -par,  reflabel,  -est) 
rflevels = unique(df$intervention_level_f2)
df$intervention_level_f2=factor(df$intervention_level_f2, levels=rflevels)



#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# LAZ
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

  df_LAZ <- df %>% filter(outcome_variable=="haz", !is.na(est))
  
  # df %>% 
  #   mutate(group = tidytext::reorder_within(group, value, within = year)) %>% 
  #   ggplot(aes(value, group)) +
  #   geom_point() +
  #   tidytext::scale_y_reordered() +
  #   facet_wrap(vars(year), scales = "free_y")

  p_laz <- ggplot(df_LAZ, aes(x=intervention_level_f2, shape=parameter, color=parameter, fill=parameter)) + 
    geom_point(aes(y=-est),  size = 1.5, position = position_dodge2(dodge_width)) +
    geom_linerange(aes(ymin=-CI1, ymax=-CI2), position = position_dodge2(dodge_width)) +
    geom_hline(yintercept = 0, size=0.25) +
    geom_text(aes(y= est, label=reflabel, hjust=.1), size=1.65, color="grey20") +
    coord_flip(ylim=c(-0.1, 0.8)) +
    labs(x = NULL, y = "Adjusted difference in LAZ at 24 months") +
    geom_hline(yintercept = 0, alpha=0.5) +
    facet_grid( RFlabel ~ ., scales="free_y",
                #labeller = labeller(Outcome = outcomes),
                switch = "y") +
   #scale_x_discrete(labels=df_LAZ$intervention_level_f) +
   scale_y_continuous(breaks = c(-0.1,0,0.1,0.2,0.3,0.4, 0.5, 0.6, 0.7, 0.8), 
                       labels=c("0.1","0","-0.1","-0.2","-0.3","-0.4","-0.5","-0.6","-0.7","-0.8")) +
    guides(color=guide_legend(title="Estimate type:"), shape=guide_legend(title="Estimate type:"), fill=guide_legend(title="Estimate type:")) + 
    scale_color_manual(values = cbbPalette[c(3,2)], guide = guide_legend(reverse = F) ) +
    scale_fill_manual(values = cbbPalette[c(3,2)], guide = guide_legend(reverse = F) ) +
    scale_shape_manual(values = c(23,21), guide = guide_legend(reverse = F) ) +
    guides(fill=guide_legend(nrow=2,byrow=TRUE)) +
    theme(strip.background = element_blank(),
          legend.position = "bottom",
          strip.placement = "outside",
          strip.text.y.left = element_text(angle = 0, size=6, face = "bold"),
          axis.text.y = element_text(size=6, hjust = 1),
          axis.text.x = element_text(size=6),
          legend.text = element_text(size=6),
          legend.title = element_text(size=6),
          axis.title.x = element_text(size=6),
          axis.ticks.x = element_line(size = c(0,0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)),
          panel.spacing = unit(0, "lines"),
          legend.box.background = element_rect(colour = "black"), 
          plot.margin = unit(c(0, 0, 0, 0), "cm")) 
    # ggforce::facet_col(facets = vars(intervention_variable), scales = "free_y", space = "free")
  p_laz
  
  #ggsave(p_laz, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2_alt_laz.png"), width=9, height=18.3, units = 'cm')
  ggsave(p_laz, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2_alt3_laz.png"), width=4, height=8)
  
  
  #XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  # WLZ
  #XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

  df_WLZ <- df %>% filter(outcome_variable=="whz")
  df_WLZ <- df_WLZ %>% group_by(intervention_variable) %>%
    arrange(outcome_variable,   RFgroup, max_est,   intervention_variable, -par,  reflabel,  -est) 
  rflevels = unique(df_WLZ$intervention_level_f2)
  df_WLZ$intervention_level_f2=factor(df_WLZ$intervention_level_f2, levels=rflevels)
  
  
  
  p_wlz <- ggplot(df_WLZ, aes(x=intervention_level_f2, shape=parameter, color=parameter, fill=parameter)) + 
    geom_point(aes(y=-est),  size = 1.5, position = position_dodge2(dodge_width)) +
    geom_linerange(aes(ymin=-CI1, ymax=-CI2), position = position_dodge2(dodge_width)) +
    geom_hline(yintercept = 0, size=0.25) +
    geom_text(aes(y= est, label=reflabel, hjust=.1), size=1.65, color="grey20") +
    coord_flip(ylim=c(-0.1, 0.5)) +
    labs(x = NULL, y = "Adjusted difference in WLZ at 24 months") +
    geom_hline(yintercept = 0, alpha=0.5) +
    facet_grid( RFlabel ~ ., scales="free_y",
                switch = "y") +
    scale_y_continuous(breaks = c(-0.1,0,0.1,0.2,0.3,0.4, 0.5), 
                       labels=c("0.1","0","-0.1","-0.2","-0.3","-0.4","-0.5")) +
    guides(color=guide_legend(title="Estimate type:"), shape=guide_legend(title="Estimate type:"), fill=guide_legend(title="Estimate type:")) + 
    scale_color_manual(values = cbbPalette[c(3,2)], guide = guide_legend(reverse = F) ) +
    scale_fill_manual(values = cbbPalette[c(3,2)], guide = guide_legend(reverse = F) ) +
    scale_shape_manual(values = c(23,21), guide = guide_legend(reverse = F) ) +
    guides(fill=guide_legend(nrow=2,byrow=TRUE)) +
    theme(strip.background = element_blank(),
          legend.position = "bottom",
          strip.placement = "outside",
          strip.text.y.left = element_text(angle = 0, size=6, face = "bold"),
          axis.text.y = element_text(size=6, hjust = 1),
          axis.text.x = element_text(size=6),
          legend.text = element_text(size=6),
          legend.title = element_text(size=6),
          axis.title.x = element_text(size=6),
          axis.ticks.x = element_line(size = c(0,0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)),
          panel.spacing = unit(0, "lines"),
          legend.box.background = element_rect(colour = "black"), 
          plot.margin = unit(c(0, 0, 0, 0), "cm")) 
  

ggsave(p_wlz, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig3_alt_wlz.png"), width=4, height=8)

