

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

#Make rain quartile a postnatal child category

#add labels for PIE and ATE to the first panel


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
# #flip direction of measurement so it's Ya-Y
# par_raw <- par_raw %>% mutate(PAR=-PAR, CI1_temp=-CI2, CI2=-CI1, CI1=CI1_temp) %>% subset(., select = -c(CI1_temp))
# 
# 
# #Mean differences
# ATE_raw <- readRDS(paste0(BV_dir,"/results/rf results/pooled_ATE_results_alt_ref.rds")) %>% mutate(parameter="Mean Difference") %>% filter(intervention_variable!="perdiar6")
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

#df_full %>% filter(intervention_variable=="predexfd6", outcome_variable=="haz", region=="Pooled", agecat=="24 months")
df_full %>% filter(intervention_variable=="rain_quartile", region=="Pooled", agecat=="24 months")

#----------------------------------------------------------------------------------
##### Cleaning dataset
#----------------------------------------------------------------------------------

df <- df_full %>% filter(!(intervention_variable %in% c("anywast06","enstunt","enwast","pers_wast","month","brthmon","trth2o")))

#temp
df$intervention_level2 <- df$intervention_level

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
df$intervention_level[df$intervention_level=="Yes" & df$intervention_variable %in% c("vagbrth")] <- "Vaginal birth"
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
df$RFlabel[df$RFlabel=="Mother's height"] <- "Mother's  height (cm)"
df$RFlabel[df$RFlabel=="Mother's weight"] <- "Mother's  weight (kg)"
df$RFlabel[df$RFlabel=="Mother's BMI"] <- "Mother's  BMI (kg/m²)"

#remove units from intervention levels
unique(df$intervention_level)
df$intervention_level <- gsub(" cm","",df$intervention_level)
df$intervention_level <- gsub(" kg/m²","",df$intervention_level)
df$intervention_level <- gsub(" kg","",df$intervention_level)

df$baseline_level <- gsub(" cm","",df$baseline_level)
df$baseline_level <- gsub(" kg/m²","",df$baseline_level)
df$baseline_level <- gsub(" kg","",df$baseline_level)


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
      RFtype %in% c("Postnatal child health", "Breastfeeding","Time") ~ "Postnatal child characteristics",
      RFtype==RFtype ~ "At-birth child characteristics"))



#get PAF label and facet label
df <- df %>% group_by(outcome_variable, RFlabel) %>% mutate(n=max(n, na.rm=T)) %>% ungroup() %>%
    mutate(intervention_level_f=paste0(round((1-n_cell/n)*100), "% shifted to ", intervention_level),
                    n = format(n ,big.mark=",", trim=TRUE),
                    RFlabel=paste0(RFlabel,"\nN=",n))
                    #RFlabel=atop(bold(RFlabel),textstyle("\nN=",n)))
                    #RFlabel=paste0("bold('",RFlabel,"')\nN=",n))
                    #RFlabel=bquote(bold(RFlabel)~paste0("\nN=",n)))
df$intervention_level_f[df$parameter!="Population Intervention Effect"] <- df$intervention_level[df$parameter!="Population Intervention Effect"]  

unique(df$intervention_level_f)
unique(df$intervention_level2[is.na(df$intervention_level)])

#https://stackoverflow.com/questions/16490331/combining-new-lines-and-italics-in-facet-labels-with-ggplot2

# levels(length_subject$CONSTRUCTION) <- 
#   c("atop(textstyle('THAT'),textstyle('Extraposed'))", 
#     "atop(textstyle('THAT'),textstyle('Post-predicate'))",
#     "atop(atop(textstyle('TO'),textstyle('Extraposed')),italic('for')*textstyle('-subject'))",
#     "atop(atop(textstyle('TO'),textstyle('Post-predicate')),italic('for')*textstyle('-subject'))",
#     "atop(atop(textstyle('THAT'),textstyle('Extraposed')),italic('that')*textstyle('-omission'))",
#     "atop(atop(textstyle('THAT'),textstyle('Post-predicate')),italic('that')*textstyle('-omission'))")


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


#Fix greater than or equal signs 
df$intervention_level_f <- stringi::stri_replace_all_fixed(
  df$intervention_level_f, 
  c("<=", ">="), 
  c("\\u2264", "\\u2265"), 
  vectorize_all = F
)

df$baseline_level <- stringi::stri_replace_all_fixed(
  df$baseline_level, 
  c("<=", ">="), 
  c("\u2264", "\u2265"), 
  vectorize_all = F
)


#----------------------------------------------------------
# Set names
#----------------------------------------------------------

unique(df$intervention_level_f)
unique(df$intervention_level_f2)

cat(paste(paste0("\"",df$intervention_level_f2,"\"=\"",df$intervention_level_f,"\""), collapse=","), "\n")


variable_labels = c(
  "51% shifted to Female sex" = "51% shifted to Female", "67% shifted to >=50 birthlen" =
    "67% shifted to \u226550", "24% shifted to >= 2500 g birthwt" = "24% shifted to \u2265 2500 g", "49% shifted to Full/late term gagebrth" =
    "49% shifted to Full/late term", "56% shifted to No hdlvry" = "56% shifted to No", "91% shifted to C-section vagbrth" =
    "91% shifted to C-section", "66% shifted to 1 parity" = "66% shifted to 1", "38% shifted to 1 nchldlt5" =
    "38% shifted to 1", "81% shifted to 3 or less nhh" = "81% shifted to 3 or less", "91% shifted to 4+ nrooms" =
    "91% shifted to 4+", "73% shifted to Q4 hhwealth_quart" = "73% shifted to Q4", "50% shifted to Food Secure hfoodsec" =
    "50% shifted to Food Secure", "31% shifted to Yes impsan" = "31% shifted to Yes", "75% shifted to Yes impfloor" =
    "75% shifted to Yes", "51% shifted to Yes cleanck" = "51% shifted to Yes", "42% shifted to [20-30) mage" =
    "42% shifted to [20-30)", "82% shifted to >=35 fage" = "82% shifted to \u226535", "30% shifted to >=150 mhtcm" =
    "30% shifted to \u2265150", "35% shifted to >=45 mwtkg" = "35% shifted to \u226545", "40% shifted to >=20 mbmi" =
    "40% shifted to \u226520", "68% shifted to High meducyrs" = "68% shifted to High", "77% shifted to High feducyrs" =
    "77% shifted to High", "37% shifted to Yes predexfd6" = "37% shifted to Yes", "48% shifted to [0%,2%] perdiar24" =
    "48% shifted to [0%,2%]", "78% shifted to Post-max rain rain_quartile" =
    "78% shifted to Post-max rain", "70% shifted to Yes earlybf" = "70% shifted to Yes", "Male sex" =
    "Male", "Female sex" = "Female", "<48 birthlen" = "<48", ">=50 birthlen" =
    "\u226550", "[48-50) birthlen" = "[48-50)", "< 2500 g birthwt" = "< 2500 g", "<2500g birthwt" =
    "<2500g", "Preterm gagebrth" = "Preterm", "Full/late term gagebrth" = "Full/late term", "Early term gagebrth" =
    "Early term", "Yes hdlvry" = "Yes", "No hdlvry" = "No", "Yes vagbrth" =
    "Yes", "C-section vagbrth" = "C-section", "3+ parity" = "3+", "2 parity" =
    "2", "1 parity" = "1", "2+ nchldlt5" = "2+", "1 nchldlt5" = "1", "8+ nhh" =
    "8+", "6-7 nhh" = "6-7", "3 or less nhh" = "3 or less", "4-5 nhh" = "4-5", "1 nrooms" =
    "1", "4+ nrooms" = "4+", "3 nrooms" = "3", "2 nrooms" = "2", "WealthQ1 hhwealth_quart" =
    "WealthQ1", "Q4 hhwealth_quart" = "Q4", "Q3 hhwealth_quart" = "Q3", "Q2 hhwealth_quart" =
    "Q2", "Food Insecure hfoodsec" = "Food Insecure", "Food Secure hfoodsec" =
    "Food Secure", "Mildly Food Insecure hfoodsec" = "Mildly Food Insecure", "No impsan" =
    "No", "Yes impsan" = "Yes", "No impfloor" = "No", "Yes impfloor" = "Yes", "No cleanck" =
    "No", "Yes cleanck" = "Yes", "<20 mage" = "<20", "[20-30) mage" = "[20-30)", ">=30 mage" =
    "\u226530", "<30 fage" = "<30", ">=35 fage" = "\u226535", "[30-35) fage" =
    "[30-35)", "<150 mhtcm" = "<150", ">=150 mhtcm" = "\u2265150", "<45 mwtkg" =
    "<45", ">=45 mwtkg" = "\u226545", "<20 mbmi" = "<20", ">=20 mbmi" = "\u226520", "Low meducyrs" =
    "Low", "High meducyrs" = "High", "Medium meducyrs" = "Medium", "Low feducyrs" =
    "Low", "High feducyrs" = "High", "Medium feducyrs" = "Medium", "No predexfd6" =
    "No", "Yes predexfd6" = "Yes", ">2% perdiar24" = ">2%", "[0%,2%] perdiar24" =
    "[0%,2%]", "Opposite max rain rain_quartile" = "Opposite max rain", "Post-max rain rain_quartile" =
    "Post-max rain", "Pre-max rain rain_quartile" = "Pre-max rain", "Max rain rain_quartile" =
    "Max rain", "No earlybf" = "No", "Yes earlybf" = "Yes", "51% shifted to Female sex" =
    "51% shifted to Female", "67% shifted to >=50 birthlen" = "67% shifted to \u226550", "25% shifted to >= 2500 g birthwt" =
    "25% shifted to \u2265 2500 g", "49% shifted to Full/late term gagebrth" =
    "49% shifted to Full/late term", "56% shifted to No hdlvry" = "56% shifted to No", "91% shifted to C-section vagbrth" =
    "91% shifted to C-section", "67% shifted to 1 parity" = "67% shifted to 1", "38% shifted to 1 nchldlt5" =
    "38% shifted to 1", "81% shifted to 3 or less nhh" = "81% shifted to 3 or less", "91% shifted to 4+ nrooms" =
    "91% shifted to 4+", "73% shifted to Q4 hhwealth_quart" = "73% shifted to Q4", "50% shifted to Food Secure hfoodsec" =
    "50% shifted to Food Secure", "31% shifted to Yes impsan" = "31% shifted to Yes", "75% shifted to Yes impfloor" =
    "75% shifted to Yes", "51% shifted to Yes cleanck" = "51% shifted to Yes", "43% shifted to [20-30) mage" =
    "43% shifted to [20-30)", "82% shifted to >=35 fage" = "82% shifted to \u226535", "32% shifted to >=150 mhtcm" =
    "32% shifted to \u2265150", "38% shifted to >=45 mwtkg" = "38% shifted to \u226545", "41% shifted to >=20 mbmi" =
    "41% shifted to \u226520", "69% shifted to High meducyrs" = "69% shifted to High", "76% shifted to High feducyrs" =
    "76% shifted to High", "37% shifted to Yes predexfd6" = "37% shifted to Yes", "48% shifted to [0%,2%] perdiar24" =
    "48% shifted to [0%,2%]", "75% shifted to Opposite max rain rain_quartile" =
    "75% shifted to Opposite max rain", "72% shifted to Yes earlybf" = "72% shifted to Yes", "Male sex" =
    "Male", "Female sex" = "Female", "<48 birthlen" = "<48", ">=50 birthlen" =
    "\u226550", "[48-50) birthlen" = "[48-50)", "< 2500 g birthwt" = "< 2500 g", "<2500g birthwt" =
    "<2500g", "Preterm gagebrth" = "Preterm", "Full/late term gagebrth" = "Full/late term", "Early term gagebrth" =
    "Early term", "Yes hdlvry" = "Yes", "No hdlvry" = "No", "Yes vagbrth" =
    "Yes", "C-section vagbrth" = "C-section", "3+ parity" = "3+", "2 parity" =
    "2", "1 parity" = "1", "2+ nchldlt5" = "2+", "1 nchldlt5" = "1", "8+ nhh" =
    "8+", "3 or less nhh" = "3 or less", "6-7 nhh" = "6-7", "4-5 nhh" = "4-5", "1 nrooms" =
    "1", "3 nrooms" = "3", "4+ nrooms" = "4+", "2 nrooms" = "2", "WealthQ1 hhwealth_quart" =
    "WealthQ1", "Q3 hhwealth_quart" = "Q3", "Q4 hhwealth_quart" = "Q4", "Q2 hhwealth_quart" =
    "Q2", "Food Insecure hfoodsec" = "Food Insecure", "Food Secure hfoodsec" =
    "Food Secure", "Mildly Food Insecure hfoodsec" = "Mildly Food Insecure", "No impsan" =
    "No", "Yes impsan" = "Yes", "No impfloor" = "No", "Yes impfloor" = "Yes", "No cleanck" =
    "No", "Yes cleanck" = "Yes", "<20 mage" = "<20", ">=30 mage" = "\u226530", "[20-30) mage" =
    "[20-30)", "<30 fage" = "<30", ">=35 fage" = "\u226535", "[30-35) fage" =
    "[30-35)", "<150 mhtcm" = "<150", ">=150 mhtcm" = "\u2265150", "<45 mwtkg" =
    "<45", ">=45 mwtkg" = "\u226545", "<20 mbmi" = "<20", ">=20 mbmi" = "\u226520", "Low meducyrs" =
    "Low", "High meducyrs" = "High", "Medium meducyrs" = "Medium", "Low feducyrs" =
    "Low", "High feducyrs" = "High", "Medium feducyrs" = "Medium", "No predexfd6" =
    "No", "Yes predexfd6" = "Yes", ">2% perdiar24" = ">2%", "[0%,2%] perdiar24" =
    "[0%,2%]", "Opposite max rain rain_quartile" = "Opposite max rain", "Pre-max rain rain_quartile" =
    "Pre-max rain", "Max rain rain_quartile" = "Max rain", "Post-max rain rain_quartile" =
    "Post-max rain", "No earlybf" = "No", "Yes earlybf" = "Yes"
)


#----------------------------------------------------------
# plot function
#----------------------------------------------------------
d=df %>% filter(intervention_variable=="birthlen"|intervention_variable=="nhh")
ylimits=c(-0.1, 0.8)
outcome_var="haz"
ylab="Adjusted difference in LAZ at 24 months"
legend=F
xaxis=F
facet_label_pos= -75

plot_combined_pie_ate <- function(d, ylimits=c(-0.1, 0.8), facet_label_pos= -75, outcome_var="haz", ylab="Adjusted difference in LAZ at 24 months", legend=F, xaxis=F){
  
  plotdf <- d %>% filter(outcome_variable==outcome_var, !is.na(est))
  plotdf <- plotdf %>% mutate(
    #make order variable for non-ATE based ordering
    order_var = case_when(
      intervention_level_f2=="3 or less nhh" ~ 1,
      intervention_level_f2=="4-5 nhh" ~ 2,
      intervention_level_f2=="6-7 nhh" ~ 3,
      intervention_level_f2=="8+ nhh" ~ 4,
      intervention_level_f2==intervention_level_f2 ~ 5,
                          )
  )
  plotdf <- plotdf %>% 
    ungroup() %>% 
    arrange(parameter,-(est*par), -order_var, est) 
  rflevels = unique(plotdf$intervention_level_f2)
  plotdf$intervention_level_f2=factor(plotdf$intervention_level_f2, levels=rflevels)
  rflevels2 = unique(plotdf$RFlabel)
  plotdf$RFlabel=factor(plotdf$RFlabel, levels=rflevels2)
  
  grey_color <- "grey40"
  
  p <- ggplot(plotdf, aes(x=intervention_level_f2, alpha=parameter,
                          shape=parameter, color=parameter,  fill=parameter)) + 
    geom_point(aes(y=est),  size = 1.5, position = position_dodge2(dodge_width)) +
    geom_linerange(aes(ymin=CI1, ymax=CI2), position = position_dodge2(dodge_width)) +
    geom_hline(yintercept = 0, size=0.25) +
    geom_text(aes(y= est, label=reflabel, hjust=-.5), size=1.65, color="grey20") +
    coord_flip(ylim=ylimits) +
    geom_hline(yintercept = 0, alpha=0.5) +
    #facet_grid( RFlabel ~ ., scales="free_y",switch = "y") +
    ggforce::facet_col(facets = vars(RFlabel),
                       scales = "free_y",
                       space = "free" , strip.position = 'left'#,
                       #labeller = label_parsed
                       ) +
    scale_x_discrete(labels=variable_labels) +
    scale_y_continuous(breaks = c(-0.1,0,0.1,0.2,0.3,0.4, 0.5, 0.6, 0.7, 0.8), 
                       #labels=c("0.1","0","-0.1","-0.2","-0.3","-0.4","-0.5","-0.6","-0.7","-0.8")
                       ) +
    guides(color=guide_legend(title="Estimate type:"), shape=guide_legend(title="Estimate type:"), fill=guide_legend(title="Estimate type:")) + 
    scale_color_manual(values = c("black","#287D8EFF"), guide = guide_legend(reverse = T) ) +
    scale_fill_manual(values = c("black","#287D8EFF"), guide = guide_legend(reverse = T) ) +
    scale_alpha_manual(values = c(1, 0.5), guide = guide_legend(reverse = T) ) +
    scale_shape_manual(values = c(23, 21), guide = guide_legend(reverse = T) ) +
    guides(color=guide_legend(title="Estimate type:", nrow=2,byrow=TRUE), 
           alpha=guide_legend(title="Estimate type:", nrow=2,byrow=TRUE), 
           shape=guide_legend(title="Estimate type:", nrow=2,byrow=TRUE), 
           fill=guide_legend(title="Estimate type:", nrow=2,byrow=TRUE)) +
    #ggtitle(plotdf$RFgroup[1]) + 
      theme(strip.background = element_blank(),
            legend.position = ifelse(legend,"bottom","none"),
            panel.background=element_blank(),
            panel.border=element_rect(colour="grey80"),
            strip.placement = "outside",
            strip.clip = "off",
            strip.text.y.left = element_text(angle = 0, size=6, hjust = 0,
                                             margin = margin(r = facet_label_pos), 
                                             face = "bold"
                                             ),
            axis.text.y = element_text(size=6, hjust = 1, colour=grey_color),
            legend.text = element_text(size=6),
            legend.title = element_text(size=6),
            axis.ticks=element_line( colour=grey_color),
            plot.title.position = "plot",
            plot.title = element_text(size=10,hjust=0),
            panel.spacing = unit(0, "lines"),
            legend.box.background = element_rect(colour = grey_color), 
            plot.margin = unit(c(0, 0, 0, 0), "cm")) 
  p
  
  if(xaxis){
   p <- p + labs(x = NULL, y = ylab, title=plotdf$RFgroup[1]) +
      theme(axis.text.x = element_text(size=6),
            axis.title.x = element_text(size=6)) 
    }else{
    p <- p + labs(x = NULL, y = NULL, title=plotdf$RFgroup[1]) +
      theme(axis.text.x =element_blank(),
            axis.title.x = element_blank()#,
            #axis.ticks.x = element_blank()
            )   
    }

  return(p)
}



#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# LAZ
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

  unique(df$RFgroup)
  p1 <- plot_combined_pie_ate(df[df$RFgroup=="At-birth child characteristics",], facet_label_pos= -35, xaxis=T, ylab="")
  p2 <- plot_combined_pie_ate(df[df$RFgroup=="Postnatal child characteristics",], facet_label_pos= -45, xaxis=T, ylab="")
  p3 <- plot_combined_pie_ate(df[df$RFgroup=="Parental Characteristics",], facet_label_pos= -15, xaxis=T, ylab="")
  p4 <- plot_combined_pie_ate(df[df$RFgroup=="Household & Environmental Characteristics",], legend=F, xaxis=T, facet_label_pos= -40)
  
  plots <- align_plots(p1, p2,  p3, p4, align = 'v', axis = 'l')
  
  p_laz <- plot_grid(plots[[1]],plots[[2]],plots[[3]],plots[[4]], 
                        ncol = 1,
                        #label_size = 8,
                        align = "h",
                        #labels = c("At-birth child characteristics","Postnatal child characteristics","Parental Characteristics","Household & Environmental Characteristics"),
                        rel_heights = c(28,20,28,35))
  
  ggsave(p_laz, file=paste0(here::here(),"/figures/fig2_alt3_laz.png"), width=4, height=9)
  #ggsave(p_laz, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2_alt3_laz.png"), width=4, height=8)
    

#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# WLZ
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

  #p_wlz <- plot_combined_pie_ate(df, ylimits=c(-0.1, 0.45), outcome_var="whz", ylab="Adjusted difference in WLZ at 24 months")

  p1 <- plot_combined_pie_ate(df[df$RFgroup=="At-birth child characteristics",], ylimits=c(-0.1, 0.45),  outcome_var="whz", facet_label_pos= -35, xaxis=T, ylab="")
  p2 <- plot_combined_pie_ate(df[df$RFgroup=="Postnatal child characteristics",], ylimits=c(-0.1, 0.45),  outcome_var="whz", facet_label_pos= -45, xaxis=T, ylab="")
  p3 <- plot_combined_pie_ate(df[df$RFgroup=="Parental Characteristics",], ylimits=c(-0.1, 0.45),  outcome_var="whz", facet_label_pos= -15, xaxis=T, ylab="")
  p4 <- plot_combined_pie_ate(df[df$RFgroup=="Household & Environmental Characteristics",], ylimits=c(-0.1, 0.45),  outcome_var="whz", legend=F, xaxis=T, facet_label_pos= -40)
  
  
  plots <- align_plots(p1, p2,  p3, p4, align = 'v', axis = 'l')
  
  p_wlz <- plot_grid(plots[[1]],plots[[2]],plots[[3]],plots[[4]], 
                     ncol = 1,
                     #label_size = 8,
                     align = "h",
                     #labels = c("At-birth child characteristics","Postnatal child characteristics","Parental Characteristics","Household & Environmental Characteristics"),
                     rel_heights = c(28,20,28,35))
  

ggsave(p_wlz, file=paste0(here::here(),"/figures/fig3_alt3_wlz.png"), width=4, height=9)
#ggsave(p_wlz, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig3_alt_wlz.png"), width=4, height=8)

