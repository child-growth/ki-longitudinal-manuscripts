

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(gtable)
library(cowplot)
library(tidytext)
#notes

#see if I can make only facet lable, not N, bold
#Move ref label right
#use ggforce to make different-size facets
#color labels
#add vertical lines based on Ben's suggestions. Add more tick marks

#Possible changes:
#maybe put N's on the bottom right of each panel
#Make 2-column plot

#Make for PAF/CIR plots


#----------------------------------------------------------
# Plot parameters
#----------------------------------------------------------

yticks <- c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)
dodge_width = 0.7

# Colors
color_vec = c("#7F7F7F", "#E377C2")
main_color <- "#287D8EFF"


#----------------------------------------------------------------------------------
# Load data
#----------------------------------------------------------------------------------

# # PIE
# par_raw <- readRDS(paste0(BV_dir,"/results/rf results/pooled_Zscore_PAR_results.rds")) %>% mutate(parameter="Population Intervention Effect", baseline_level=intervention_level ) %>% filter(intervention_variable!="perdiar6")
# # par <- readRDS("C:/Users/anmol/OneDrive/Documents/GitHub/ki-longitudinal-manuscripts/results_old/rf results/pooled_Zscore_PIE_results.rds")
# unique(par_raw$intervention_variable)
# unique(par_raw$outcome_variable)
# 
# #Mean differences
# ATE_raw <- readRDS(paste0(BV_dir,"/results/rf results/pooled_ATE_results_alt_ref.rds")) %>% mutate(parameter="Mean Difference") %>% filter(intervention_variable!="perdiar6")
# # dfull <- readRDS("C:/Users/anmol/OneDrive/Documents/GitHub/ki-longitudinal-manuscripts/results_old/rf results/full_RF_results.rds")
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

df_full %>% filter(intervention_variable=="birthwt", outcome_variable=="haz", region=="Pooled", agecat=="24 months")

#----------------------------------------------------------------------------------
##### Cleaning dataset
#----------------------------------------------------------------------------------

df <- df_full %>% filter(!(intervention_variable %in% c("anywast06","enstunt","enwast","pers_wast","month","birthmonth")))
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
df$intervention_level[df$intervention_variable=="birthwt" & df$parameter=="Mean Difference" ] <- "<2500g" 

df$RFlabel[df$RFlabel=="Diarrhea <24 mo.  (% days)"] <- "Diarrhea (% days)"
df$RFlabel[df$RFlabel=="Diarrhea <6 mo. (% days)"] <- "Diarrhea (% days)"
df$RFlabel[df$RFlabel=="Gestational age at birth"] <- "Gestational age"


#add units to intervention variables
unique(df$RFlabel)
df$RFlabel[df$RFlabel=="Father's height"] <- "Father's height (cm)"
df$RFlabel[df$RFlabel=="Mothers height"] <- "Mother's  height (cm)"
df$RFlabel[df$RFlabel=="Mothers weight"] <- "Mother's  weight (kg)"
df$RFlabel[df$RFlabel=="Mothers BMI"] <- "Mother's  BMI (kg/m²)"

#Fix greater than or equal and remove units from intervention levels
unique(df$intervention_level)
df$intervention_level <- gsub(" cm","",df$intervention_level)
df$intervention_level <- gsub(" kg/m²","",df$intervention_level)
df$intervention_level <- gsub(" kg","",df$intervention_level)
df$intervention_level <- stringi::stri_replace_all_fixed(
  df$intervention_level, 
  c("<=", ">="), 
  c("\u2264", "\u2265"), 
  vectorize_all = F
)

df$baseline_level <- gsub(" cm","",df$baseline_level)
df$baseline_level <- gsub(" kg/m²","",df$baseline_level)
df$baseline_level <- gsub(" kg","",df$baseline_level)
df$baseline_level <- stringi::stri_replace_all_fixed(
  df$baseline_level, 
  c("<=", ">="), 
  c("\u2264", "\u2265"), 
  vectorize_all = F
)
# unique(df$intervention_level)
# df$intervention_level[df$intervention_level==">=20"] <- as.character(expression(paste0("\u2264",20)))

# df$intervention_level <- as.character(expression(gsub(">=","\\u2264",df$intervention_level)))
# unique(df$intervention_level)


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

#drop risk factors with rare estimates and rare reference level
table(df$intervention_variable, df$Nstudies)
df <- df %>% group_by(intervention_variable) %>% filter(min(Nstudies) >= 4, intervention_variable!="single", !is.na(est)) %>% droplevels()


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
df <- df %>% group_by(intervention_variable, outcome_variable) %>%
  mutate(par=ifelse(parameter=="Population Intervention Effect",1,0), max_est= max(-est *par), 
         intervention_level_f2=paste0(intervention_level_f, " ", intervention_variable)) %>% 
  ungroup() %>% 
  arrange(outcome_variable,  -par,   RFgroup, max_est,  intervention_variable,  reflabel,  -est) 


#----------------------------------------------------------
# Set names
#----------------------------------------------------------

unique(df$intervention_level_f)
unique(df$intervention_level_f2)

cat(paste(paste0("\"",df$intervention_level_f2,"\"=\"",df$intervention_level_f,"\""), collapse=","), "\n")


variable_labels = c(
  "75% shifted to Opposite max rain rain_quartile" = "75% shifted to Opposite max rain", "56% shifted to No hdlvry" =
    "56% shifted to No", "49% shifted to Full/late term gagebrth" = "49% shifted to Full/late term", "51% shifted to Female sex" =
    "51% shifted to Female", "24% shifted to ≥ 2500 g birthwt" = "24% shifted to ≥ 2500 g", "66% shifted to 1 parity" =
    "66% shifted to 1", "91% shifted to C-section vagbrth" = "91% shifted to C-section", "67% shifted to ≥50 birthlen" =
    "67% shifted to ≥50", "31% shifted to Yes impsan" = "31% shifted to Yes", "75% shifted to Yes impfloor" =
    "75% shifted to Yes", "38% shifted to 1 nchldlt5" = "38% shifted to 1", "50% shifted to Food Secure hfoodsec" =
    "50% shifted to Food Secure", "81% shifted to 3 or less nhh" = "81% shifted to 3 or less", "91% shifted to 4+ nrooms" =
    "91% shifted to 4+", "73% shifted to Q4 hhwealth_quart" = "73% shifted to Q4", "51% shifted to Yes cleanck" =
    "51% shifted to Yes", "42% shifted to [20-30) mage" = "42% shifted to [20-30)", "82% shifted to ≥35 fage" =
    "82% shifted to ≥35", "40% shifted to ≥20 mbmi" = "40% shifted to ≥20", "35% shifted to ≥45 mwtkg" =
    "35% shifted to ≥45", "68% shifted to High meducyrs" = "68% shifted to High", "77% shifted to High feducyrs" =
    "77% shifted to High", "30% shifted to ≥150 mhtcm" = "30% shifted to ≥150", "70% shifted to Yes earlybf" =
    "70% shifted to Yes", "37% shifted to Yes predexfd6" = "37% shifted to Yes", "48% shifted to [0%,2%] perdiar24" =
    "48% shifted to [0%,2%]", "Opposite max rain rain_quartile" = "Opposite max rain", "Post-max rain rain_quartile" =
    "Post-max rain", "Pre-max rain rain_quartile" = "Pre-max rain", "Max rain rain_quartile" =
    "Max rain", "No hdlvry" = "No", "Yes hdlvry" = "Yes", "Full or late term gagebrth" =
    "Full or late term", "Early term gagebrth" = "Early term", "Preterm gagebrth" =
    "Preterm", "Female sex" = "Female", "Male sex" = "Male", "≥ 2500 g birthwt" =
    "≥ 2500 g", "<2500g birthwt" = "<2500g", "1 parity" = "1", "2 parity" =
    "2", "3+ parity" = "3+", "No vagbrth" = "No", "Yes vagbrth" = "Yes", "≥50 birthlen" =
    "≥50", "[48-50) birthlen" = "[48-50)", "<48 birthlen" = "<48", "Yes impsan" =
    "Yes", "None impsan" = "None", "Yes impfloor" = "Yes", "None impfloor" =
    "None", "1 nchldlt5" = "1", "2+ nchldlt5" = "2+", "Food Secure hfoodsec" =
    "Food Secure", "Mildly Food Insecure hfoodsec" = "Mildly Food Insecure", "Food Insecure hfoodsec" =
    "Food Insecure", "3 or less nhh" = "3 or less", "6-7 nhh" = "6-7", "4-5 nhh" =
    "4-5", "8+ nhh" = "8+", "4+ nrooms" = "4+", "3 nrooms" = "3", "2 nrooms" =
    "2", "1 nrooms" = "1", "Q4 hhwealth_quart" = "Q4", "Q3 hhwealth_quart" =
    "Q3", "Q2 hhwealth_quart" = "Q2", "Q1 hhwealth_quart" = "Q1", "Yes cleanck" =
    "Yes", "No cleanck" = "No", "[20-30) mage" = "[20-30)", "≥30 mage" = "≥30", "<20 mage" =
    "<20", "≥35 fage" = "≥35", "[30-35) fage" = "[30-35)", "<30 fage" = "<30", "≥20 mbmi" =
    "≥20", "<20 mbmi" = "<20", "≥45 mwtkg" = "≥45", "<45 mwtkg" = "<45", "High meducyrs" =
    "High", "Medium meducyrs" = "Medium", "Low meducyrs" = "Low", "High feducyrs" =
    "High", "Medium feducyrs" = "Medium", "Low feducyrs" = "Low", "≥150 mhtcm" =
    "≥150", "<150 mhtcm" = "<150", "Yes earlybf" = "Yes", "No earlybf" = "No", "Yes predexfd6" =
    "Yes", "None predexfd6" = "None", "[0%, 2%] perdiar24" = "[0%, 2%]", ">2% perdiar24" =
    ">2%", "67% shifted to 1 parity" = "67% shifted to 1", "49% shifted to Full/late term gagebrth" =
    "49% shifted to Full/late term", "51% shifted to Female sex" = "51% shifted to Female", "56% shifted to No hdlvry" =
    "56% shifted to No", "75% shifted to Opposite max rain rain_quartile" =
    "75% shifted to Opposite max rain", "25% shifted to ≥ 2500 g birthwt" =
    "25% shifted to ≥ 2500 g", "91% shifted to C-section vagbrth" = "91% shifted to C-section", "67% shifted to ≥50 birthlen" =
    "67% shifted to ≥50", "31% shifted to Yes impsan" = "31% shifted to Yes", "50% shifted to Food Secure hfoodsec" =
    "50% shifted to Food Secure", "75% shifted to Yes impfloor" = "75% shifted to Yes", "38% shifted to 1 nchldlt5" =
    "38% shifted to 1", "73% shifted to Q4 hhwealth_quart" = "73% shifted to Q4", "81% shifted to 3 or less nhh" =
    "81% shifted to 3 or less", "91% shifted to 4+ nrooms" = "91% shifted to 4+", "51% shifted to Yes cleanck" =
    "51% shifted to Yes", "43% shifted to [20-30) mage" = "43% shifted to [20-30)", "76% shifted to High feducyrs" =
    "76% shifted to High", "32% shifted to ≥150 mhtcm" = "32% shifted to ≥150", "38% shifted to ≥45 mwtkg" =
    "38% shifted to ≥45", "41% shifted to ≥20 mbmi" = "41% shifted to ≥20", "69% shifted to High meducyrs" =
    "69% shifted to High", "82% shifted to ≥35 fage" = "82% shifted to ≥35", "72% shifted to Yes earlybf" =
    "72% shifted to Yes", "48% shifted to [0%,2%] perdiar24" = "48% shifted to [0%,2%]", "37% shifted to Yes predexfd6" =
    "37% shifted to Yes", "1 parity" = "1", "2 parity" = "2", "3+ parity" =
    "3+", "Full or late term gagebrth" = "Full or late term", "Early term gagebrth" =
    "Early term", "Preterm gagebrth" = "Preterm", "Female sex" = "Female", "Male sex" =
    "Male", "No hdlvry" = "No", "Yes hdlvry" = "Yes", "Opposite max rain rain_quartile" =
    "Opposite max rain", "Pre-max rain rain_quartile" = "Pre-max rain", "Max rain rain_quartile" =
    "Max rain", "Post-max rain rain_quartile" = "Post-max rain", "≥ 2500 g birthwt" =
    "≥ 2500 g", "<2500g birthwt" = "<2500g", "No vagbrth" = "No", "Yes vagbrth" =
    "Yes", "≥50 birthlen" = "≥50", "[48-50) birthlen" = "[48-50)", "<48 birthlen" =
    "<48", "Yes impsan" = "Yes", "None impsan" = "None", "Food Secure hfoodsec" =
    "Food Secure", "Mildly Food Insecure hfoodsec" = "Mildly Food Insecure", "Food Insecure hfoodsec" =
    "Food Insecure", "Yes impfloor" = "Yes", "None impfloor" = "None", "1 nchldlt5" =
    "1", "2+ nchldlt5" = "2+", "Q4 hhwealth_quart" = "Q4", "Q3 hhwealth_quart" =
    "Q3", "Q2 hhwealth_quart" = "Q2", "Q1 hhwealth_quart" = "Q1", "3 or less nhh" =
    "3 or less", "6-7 nhh" = "6-7", "4-5 nhh" = "4-5", "8+ nhh" = "8+", "4+ nrooms" =
    "4+", "3 nrooms" = "3", "2 nrooms" = "2", "1 nrooms" = "1", "Yes cleanck" =
    "Yes", "No cleanck" = "No", "[20-30) mage" = "[20-30)", "<20 mage" = "<20", "≥30 mage" =
    "≥30", "High feducyrs" = "High", "Medium feducyrs" = "Medium", "Low feducyrs" =
    "Low", "≥150 mhtcm" = "≥150", "<150 mhtcm" = "<150", "≥45 mwtkg" = "≥45", "<45 mwtkg" =
    "<45", "≥20 mbmi" = "≥20", "<20 mbmi" = "<20", "High meducyrs" = "High", "Medium meducyrs" =
    "Medium", "Low meducyrs" = "Low", "≥35 fage" = "≥35", "<30 fage" = "<30", "[30-35) fage" =
    "[30-35)", "Yes earlybf" = "Yes", "No earlybf" = "No", "[0%, 2%] perdiar24" =
    "[0%, 2%]", ">2% perdiar24" = ">2%", "Yes predexfd6" = "Yes", "None predexfd6" =
    "None"
)

#----------------------------------------------------------
# plot function
#----------------------------------------------------------
d=df
ylimits=c(-0.1, 0.8)
outcome_var="haz"
ylab="Adjusted difference in LAZ at 24 months"

plot_combined_pie_ate <- function(d, ylimits=c(-0.1, 0.8), outcome_var="haz", ylab="Adjusted difference in LAZ at 24 months", legend=F){
  
  plotdf <- d %>% filter(outcome_variable==outcome_var, !is.na(est))
  plotdf <- plotdf %>% 
    ungroup() %>% 
    arrange(parameter, est) 
  rflevels = unique(plotdf$intervention_level_f2)
  plotdf$intervention_level_f2=factor(plotdf$intervention_level_f2, levels=rflevels)
  rflevels2 = unique(plotdf$RFlabel)
  plotdf$RFlabel=factor(plotdf$RFlabel, levels=rflevels2)
  
  grey_color <- "grey40"
  
  p <- ggplot(plotdf, aes(x=intervention_level_f2, #alpha=parameter,
                          shape=parameter, color=parameter,  fill=parameter)) + 
    geom_point(aes(y=est),  size = 1.5, position = position_dodge2(dodge_width)) +
    geom_linerange(aes(ymin=CI1, ymax=CI2), position = position_dodge2(dodge_width)) +
    geom_hline(yintercept = 0, size=0.25) +
    geom_text(aes(y= est, label=reflabel, hjust=-.5), size=1.65, color=grey_color) +
    coord_flip(ylim=ylimits) +
    labs(x = NULL, y = ylab) +
    geom_hline(yintercept = 0, alpha=0.5) +
    #facet_grid( RFlabel ~ ., scales="free_y",switch = "y") +
    ggforce::facet_col(facets = vars(RFlabel),
                       scales = "free_y",
                       space = "free" , strip.position = 'left') +
    scale_x_discrete(labels=variable_labels) +
    scale_y_continuous(breaks = c(-0.1,0,0.1,0.2,0.3,0.4, 0.5, 0.6, 0.7, 0.8), 
                       #labels=c("0.1","0","-0.1","-0.2","-0.3","-0.4","-0.5","-0.6","-0.7","-0.8")
                       ) +
    guides(color=guide_legend(title="Estimate type:"), shape=guide_legend(title="Estimate type:"), fill=guide_legend(title="Estimate type:")) + 
    scale_color_manual(values = c("#287D8EFF", grey_color), guide = guide_legend(reverse = T) ) +
    scale_fill_manual(values = c("#287D8EFF", grey_color), guide = guide_legend(reverse = T) ) +
    #scale_alpha_manual(values = c(1, 0.5), guide = guide_legend(reverse = T) ) +
    scale_shape_manual(values = c(23, 21), guide = guide_legend(reverse = T) ) +
    guides(color=guide_legend(title="Estimate type:", nrow=2,byrow=TRUE), 
           alpha=guide_legend(title="Estimate type:", nrow=2,byrow=TRUE), 
           shape=guide_legend(title="Estimate type:", nrow=2,byrow=TRUE), 
           fill=guide_legend(title="Estimate type:", nrow=2,byrow=TRUE)) + 
    theme(strip.background = element_blank(),
          legend.position = ifelse(legend,"bottom","none"),
          strip.placement = "outside",
          strip.clip = "off",
          strip.text.y.left = element_text(angle = 0, size=6, hjust = 0, margin = margin(r = -75), face = "bold"),
          axis.text.y = element_text(size=6, hjust = 1),
          axis.text.x = element_text(size=6),
          legend.text = element_text(size=6),
          legend.title = element_text(size=6),
          axis.title.x = element_text(size=6),
          axis.ticks.x = element_line(size = c(0,0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)),
          panel.spacing = unit(0, "lines"),
          legend.box.background = element_rect(colour = grey_color), 
          plot.margin = unit(c(0, 0, 0, 0), "cm")) 

  return(p)
}



#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# LAZ
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

unique(df$RFgroup)
p1 <- plot_combined_pie_ate(df[df$RFgroup=="At-birth child characteristics",])
p1

p2 <- plot_combined_pie_ate(df[df$RFgroup=="Household & Environmental Characteristics",])
p3 <- plot_combined_pie_ate(df[df$RFgroup=="Parental Characteristics",])
p4 <- plot_combined_pie_ate(df[df$RFgroup=="Postnatal child characteristics",], legend=T, xaxis=T)

p_laz <- grid.arrange(p1, p2, p3, p4, 
                      nrow = 4, ncol = 1,
                      heights = c(25,25,25,25))


  
  ggsave(p_laz, file=paste0(here::here(),"/figures/fig2_alt3_laz.png"), width=4, height=8)
  ggsave(p_laz, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2_alt3_laz.png"), width=4, height=8)
    

#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# WLZ
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

  p_wlz <- plot_combined_pie_ate(df, ylimits=c(-0.1, 0.45), outcome_var="whz", ylab="Adjusted difference in WLZ at 24 months")
  

ggsave(p_wlz, file=paste0(here::here(),"/figures/fig3_alt3_wlz.png"), width=4, height=8)
ggsave(p_wlz, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig3_alt_wlz.png"), width=4, height=8)

