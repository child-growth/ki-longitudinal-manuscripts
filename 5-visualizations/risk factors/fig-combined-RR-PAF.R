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


#----------------------------------------------------------
# Plot parameters
#----------------------------------------------------------

dodge_width = 0.7

# Colors
color_vec = c("#7F7F7F", "#E377C2")
main_color <- "#287D8EFF"

#----------------------------------------------------------------------------------
# Load data
#----------------------------------------------------------------------------------


# CIR
#CIR_raw <- readRDS(paste0(BV_dir,"/results/rf results/pooled_RR_results_alt_ref.rds")) %>% mutate(parameter="CIR")
CIR_raw <- readRDS(paste0(BV_dir,"/results/rf results/pooled_RR_results.rds")) %>% mutate(parameter="CIR")
summary(CIR_raw$RR)

#Prev
#prev_raw <- readRDS(paste0(BV_dir,"/results/rf results/pooled_RR_results.rds")) %>% mutate(parameter="Prev") %>% filter(agecat=="24 months",intervention_variable!="perdiar24")
#prev_raw <-NULL

#PAF
paf_raw <- readRDS(paste0(BV_dir,"/results/rf results/pooled_PAF_results.rds")) %>% mutate(parameter="PAF")
paf_raw <- paf_raw %>% filter(!(intervention_variable %in% c("anywast06","enstunt","enwast","pers_wast")),
                    outcome_variable %in% c("ever_stunted","ever_wasted")) %>% as.data.frame()

#rename point estimates and CI's for combining
paf_raw <- paf_raw %>% subset(., select= -c(PAR, CI1, CI2)) %>% rename(est=PAF, CI1=PAF.CI1, CI2=PAF.CI2)
CIR_raw <- CIR_raw %>% rename(est=RR, CI1=RR.CI1, CI2=RR.CI2)
summary(CIR_raw$est)
#prev_raw <- prev_raw %>% rename(est=RR, CI1=RR.CI1, CI2=RR.CI2)

df_full <- bind_rows(paf_raw, CIR_raw#, prev_raw
                     )

head(df_full)

saveRDS(df_full, file=paste0(here::here(),"/data/temp_plotdf_paf.RDS"))


df_full <- readRDS(paste0(here::here(),"/data/temp_plotdf_paf.RDS")) %>% filter( region=="Pooled")

RR <- df_full %>% filter(parameter=="CIR")
summary(RR$est)

table(df_full$agecat)
table(df_full$parameter)
df_full$RR
#----------------------------------------------------------------------------------
##### Cleaning dataset
#----------------------------------------------------------------------------------

df <- df_full %>% filter(!(intervention_variable %in% c("anywast06","enstunt","enwast","pers_wast","month","brthmon","trth2o")))
df %>% filter(intervention_variable=="hhwealth_quart")

#temp
df$intervention_level2 <- df$intervention_level

unique(df$intervention_level)
unique(df$intervention_variable)
unique(df$RFlabel_ref)
df$intervention_level <- as.character(df$intervention_level)
df$intervention_level[df$intervention_level=="Full or late term"] <- "Full/late term"
df$intervention_level[df$intervention_level=="[0%, 2%]"] <- "<=2%"
df$baseline_level[df$baseline_level=="[0%, 2%]"] <- "<=2%"
df$intervention_level[df$intervention_level=="No" & !(df$intervention_variable %in% c("enwast","enstunt"))] <- "None"
df$intervention_level[df$intervention_variable %in% c("enwast","enstunt")] <- "No"
df$intervention_level[df$intervention_level=="Normal weight"] <- ">=18.5 BMI"
df$intervention_level[df$intervention_level=="1" & df$intervention_variable %in% c("brthmon","month")] <- "Jan."
df$baseline_level[df$baseline_level=="0" & df$intervention_variable %in% c("single")] <- "Partnered"
df$intervention_level[df$intervention_level=="1" & df$intervention_variable %in% c("single")] <- "Unpartnered"
df$intervention_level[df$intervention_level=="1" & df$intervention_variable %in% c("dfity")] <- "Firstborn"
df$intervention_level[df$intervention_level=="None" & df$intervention_variable %in% c("vagbrth")] <- "No"
df$intervention_level[df$intervention_level=="Yes" & df$intervention_variable %in% c("vagbrth")] <- "Vaginal birth"
df$intervention_level[df$intervention_level=="None" & df$intervention_variable %in% c("hdlvry")] <- "No"
df$intervention_level[df$intervention_level=="None" & df$intervention_variable %in% c("cleanck")] <- "No"
df$intervention_level[df$intervention_level=="None" & df$intervention_variable %in% c("earlybf")] <- "No"
df$intervention_level[df$intervention_level=="None"] <- "No"
df$baseline_level[df$baseline_level=="None"] <- "No"

df$intervention_level[df$intervention_variable=="birthwt" & df$parameter=="Mean Difference" ] <- "<2500g" 
df$baseline_level[df$baseline_level =="WealthQ1"] <- "Q1"
df$RFlabel_ref[df$RFlabel_ref =="HH wealth, ref: WealthQ1"] <- "HH wealth, ref: Q1"
df$RFlabel_ref[df$RFlabel_ref =="Vaginal birth, ref: Yes" ] <- "Vaginal birth, ref: Yes" 



df$RFlabel[df$RFlabel=="Diarrhea <24 mo.  (% days)"] <- "Diarrhea (% days)"
df$RFlabel[df$RFlabel=="Diarrhea <6 mo. (% days)"] <- "Diarrhea <6 mo. (% days)"
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

head(df)
table(df$agecat)

# Only include  Z-scores and subset to last age examined
df <- df %>% filter(agecat=="0-24 months"|agecat=="0-24 months (no birth st.)"|agecat=="0-24 months (no birth wast)"| intervention_variable %in% c("perdiar6","predexfd6") & agecat=="6-24 months") %>%
            filter(CI1!=CI2)
unique(df$intervention_variable)


#Pooled estimates
df <- df %>% filter(region=="Pooled") %>%
  mutate(RFlabel_ref = paste0(RFlabel,"\n(ref.: ", baseline_level,")"))
unique(df$RFlabel_ref)

#Subset to needed variables
df <- df %>% subset(., select = c(parameter, outcome_variable, intervention_variable, intervention_level, baseline_level, est, CI1, CI2, RFlabel, RFlabel_ref,  RFtype, n_cell, n, Nstudies)) %>% 
  filter(!is.na(est)) 

#Add reference level
df_ref <- df %>% ungroup() %>% distinct(parameter, intervention_variable, baseline_level, outcome_variable, RFlabel, RFlabel_ref,  RFtype, n_cell, n, Nstudies) %>%
  mutate(intervention_level=baseline_level, est=1, CI1=1, CI2=1, reflabel="ref") %>% filter(parameter=="CIR")
df <- bind_rows(df, df_ref)

#drop risk factors with rare estimates and rare reference level
table(df$intervention_variable, df$Nstudies)
#df <- df %>% group_by(intervention_variable) %>% filter(min(Nstudies) >= 4, intervention_variable!="single", !is.na(est)) %>% droplevels()


#Format numbers
df <- df %>%
  mutate(
    RFgroup = case_when(
      RFtype %in% c("Household","SES","WASH") ~ "Household & Environmental Characteristics",
      RFtype %in% c("Parent background","Parent anthro" ) ~ "Parental Characteristics",
      RFtype %in% c("Postnatal child health", "Breastfeeding","Time") ~ "Postnatal child characteristics",
      RFtype==RFtype ~ "At-birth child characteristics"))

df %>% filter(intervention_variable=="hhwealth_quart")

#get PAF label and facet label
df <- df %>% group_by(outcome_variable, RFlabel) %>% mutate(n=max(n, na.rm=T)) %>% ungroup() %>%
  mutate(intervention_level_f=paste0(round((1-n_cell/n)*100), "% shifted to ", intervention_level),
         n = format(n ,big.mark=",", trim=TRUE),
         RFlabel=paste0(RFlabel,"\nN=",n))
#RFlabel=atop(bold(RFlabel),textstyle("\nN=",n)))
#RFlabel=paste0("bold('",RFlabel,"')\nN=",n))
#RFlabel=bquote(bold(RFlabel)~paste0("\nN=",n)))
df$intervention_level_f[df$parameter!="PAF"] <- df$intervention_level[df$parameter!="PAF"]  

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

unique(df$parameter)

df <- df %>%
  mutate(
    parameter = factor(parameter, levels=c("PAF","CIR")),
    outcome_variable = factor(outcome_variable, levels=c("ever_stunted", "ever_wasted")))

#Sort and set Y-axis order
df <- df %>% group_by(intervention_variable, outcome_variable) %>%
  mutate(par=ifelse(parameter=="PAF",1,0), max_est= max(-est *par), 
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

df$intervention_level_f <- ifelse(
  df$parameter == "CIR",
  paste0("<span style='color:#89b4bc'>", df$intervention_level_f, "</span>"),
  df$intervention_level_f
)



#----------------------------------------------------------
# Set names
#----------------------------------------------------------

unique(df$intervention_level_f)
unique(df$intervention_level_f2)

cat(paste(unique(paste0("\"",df$intervention_level_f2,"\"=\"",df$intervention_level_f,"\"")), collapse=","), "\n")


variable_labels = c(
  "51% shifted to Female sex" = "51% shifted to Female", "55% shifted to >=50 birthlen" =
    "55% shifted to \u226550", "15% shifted to >= 2500 g birthwt" = "15% shifted to \u2265 2500 g", "45% shifted to Full/late term gagebrth" =
    "45% shifted to Full/late term", "49% shifted to No hdlvry" = "49% shifted to No", "91% shifted to No vagbrth" =
    "91% shifted to No", "62% shifted to 1 parity" = "62% shifted to 1", "39% shifted to 1 nchldlt5" =
    "39% shifted to 1", "81% shifted to 3 or less nhh" = "81% shifted to 3 or less", "93% shifted to 4+ nrooms" =
    "93% shifted to 4+", "NA% shifted to Q4 hhwealth_quart" = "NA% shifted to Q4", "50% shifted to Food Secure hfoodsec" =
    "50% shifted to Food Secure", "28% shifted to Yes impsan" = "28% shifted to Yes", "83% shifted to Yes impfloor" =
    "83% shifted to Yes", "33% shifted to Yes cleanck" = "33% shifted to Yes", "3% shifted to Yes safeh20" =
    "3% shifted to Yes", "41% shifted to [20-30) mage" = "41% shifted to [20-30)", "89% shifted to >=35 fage" =
    "89% shifted to \u226535", "26% shifted to >=150 mhtcm" = "26% shifted to \u2265150", "4% shifted to >=162 fhtcm" =
    "4% shifted to \u2265162", "31% shifted to >=45 mwtkg" = "31% shifted to \u226545", "38% shifted to >=20 mbmi" =
    "38% shifted to \u226520", "6% shifted to 0 single" = "6% shifted to 0", "67% shifted to High meducyrs" =
    "67% shifted to High", "80% shifted to High feducyrs" = "80% shifted to High", "72% shifted to Yes earlybf" =
    "72% shifted to Yes", "51% shifted to <=2% perdiar6" = "51% shifted to \u22642%", "32% shifted to Yes predexfd6" =
    "32% shifted to Yes", "Female sex" = "Female", "Male sex" = "Male", ">=50 birthlen" =
    "\u226550", "<48 birthlen" = "<48", "[48-50) birthlen" = "[48-50)", ">= 2500 g birthwt" =
    "\u2265 2500 g", "< 2500 g birthwt" = "< 2500 g", "Full or late term gagebrth" =
    "Full or late term", "Preterm gagebrth" = "Preterm", "Early term gagebrth" =
    "Early term", "No hdlvry" = "No", "Yes hdlvry" = "Yes", "No vagbrth" = "No", "Vaginal birth vagbrth" =
    "Vaginal birth", "1 parity" = "1", "3+ parity" = "3+", "2 parity" = "2", "1 nchldlt5" =
    "1", "2+ nchldlt5" = "2+", "3 or less nhh" = "3 or less", "6-7 nhh" = "6-7", "4-5 nhh" =
    "4-5", "8+ nhh" = "8+", "4+ nrooms" = "4+", "2 nrooms" = "2", "3 nrooms" =
    "3", "1 nrooms" = "1", "Q4 hhwealth_quart" = "Q4", "Q1 hhwealth_quart" =
    "Q1", "Q2 hhwealth_quart" = "Q2", "Q3 hhwealth_quart" = "Q3", "Food Secure hfoodsec" =
    "Food Secure", "Food Insecure hfoodsec" = "Food Insecure", "Mildly Food Insecure hfoodsec" =
    "Mildly Food Insecure", "Yes impsan" = "Yes", "No impsan" = "No", "Yes impfloor" =
    "Yes", "No impfloor" = "No", "Yes cleanck" = "Yes", "No cleanck" = "No", "Yes safeh20" =
    "Yes", "No safeh20" = "No", "[20-30) mage" = "[20-30)", "<20 mage" = "<20", ">=30 mage" =
    "\u226530", ">=35 fage" = "\u226535", "<30 fage" = "<30", "[30-35) fage" =
    "[30-35)", ">=150 mhtcm" = "\u2265150", "<150 mhtcm" = "<150", ">=162 fhtcm" =
    "\u2265162", "<162 fhtcm" = "<162", ">=45 mwtkg" = "\u226545", "<45 mwtkg" =
    "<45", ">=20 mbmi" = "\u226520", "<20 mbmi" = "<20", "Partnered single" =
    "Partnered", "Unpartnered single" = "Unpartnered", "High meducyrs" = "High", "Low meducyrs" =
    "Low", "Medium meducyrs" = "Medium", "High feducyrs" = "High", "Low feducyrs" =
    "Low", "Medium feducyrs" = "Medium", "Yes earlybf" = "Yes", "No earlybf" =
    "No", "<=2% perdiar6" = "\u22642%", ">2% perdiar6" = ">2%", "Yes predexfd6" =
    "Yes", "No predexfd6" = "No", "63% shifted to >=50 birthlen" = "63% shifted to \u226550", "27% shifted to >= 2500 g birthwt" =
    "27% shifted to \u2265 2500 g", "48% shifted to Full/late term gagebrth" =
    "48% shifted to Full/late term", "54% shifted to No hdlvry" = "54% shifted to No", "94% shifted to 4+ nrooms" =
    "94% shifted to 4+", "30% shifted to Yes impsan" = "30% shifted to Yes", "1% shifted to Yes safeh20" =
    "1% shifted to Yes", "85% shifted to Yes impfloor" = "85% shifted to Yes", "35% shifted to Yes cleanck" =
    "35% shifted to Yes", "40% shifted to [20-30) mage" = "40% shifted to [20-30)", "76% shifted to Yes earlybf" =
    "76% shifted to Yes", "30% shifted to Yes predexfd6" = "30% shifted to Yes", "55% shifted to <=2% perdiar6" =
    "55% shifted to \u22642%"
)




#----------------------------------------------------------
# plot function
#----------------------------------------------------------
d=df %>% filter(intervention_variable=="earlybf"|intervention_variable=="parity")
ylimits=c(-0.1, 0.8)
outcome_var="ever_stunted"
ylab="Adjusted difference in LAZ at 24 months"
legend=F
xaxis=F
facet_label_pos= -75


plot_combined_paf_RR <- function(d, ylimits=c(-0.1, 0.8), facet_label_pos= -75, outcome_var="ever_stunted", ylab="Adjusted difference in LAZ at 24 months", legend=F, xaxis=F, yaxis=F){
  
  plotdf <- d %>% filter(outcome_variable==outcome_var, !is.na(est))
  plotdf <- plotdf %>% mutate(
    #make order variable for non-ATE based ordering
    order_var = case_when(
      intervention_level_f2=="3 or less nhh" ~ 1,
      intervention_level_f2=="4-5 nhh" ~ 2,
      intervention_level_f2=="6-7 nhh" ~ 3,
      intervention_level_f2=="8+ nhh" ~ 4,
      intervention_level_f2=="1 nrooms" ~ 1,
      intervention_level_f2=="2 nrooms" ~ 2,
      intervention_level_f2=="3 nrooms" ~ 3,
      intervention_level_f2=="4+ nrooms" ~ 4,
      intervention_level_f2=="Yes earlybf" ~ 1,
      intervention_level_f2=="1 parity" ~ 1,
      intervention_level_f2=="8+ nhh" ~ 4,
      intervention_level_f2==">=30 mage" ~ 1,
      intervention_level_f2=="[20-30) mage" ~ 2,
      outcome_variable=="ever_stunted" & intervention_level_f2=="Post-max rain rain_quartile" ~ 1,
      outcome_variable=="ever_stunted" & intervention_level_f2=="Max rain rain_quartile" ~ 2,
      outcome_variable=="ever_stunted" & intervention_level_f2=="Pre-max rain rain_quartile" ~ 3,
      outcome_variable=="ever_stunted" & intervention_level_f2=="Opposite max rain rain_quartile"  ~ 4,
      outcome_variable=="ever_wasted" & intervention_level_f2=="Post-max rain rain_quartile" ~ 4,
      outcome_variable=="ever_wasted" & intervention_level_f2=="Max rain rain_quartile" ~ 3,
      outcome_variable=="ever_wasted" & intervention_level_f2=="Pre-max rain rain_quartile" ~ 2,
      outcome_variable=="ever_wasted" & intervention_level_f2=="Opposite max rain rain_quartile"  ~ 1,
      outcome_variable=="ever_wasted" & intervention_level_f2=="Q4 hhwealth_quart"  ~ 2,
      outcome_variable=="ever_wasted" & intervention_level_f2=="4+ nrooms"  ~ 5,
      intervention_level_f2==intervention_level_f2 ~ 5,
    ))
  

  plotdf <- plotdf %>% 
    ungroup() %>% 
    arrange(parameter,-(est*par), -order_var, est) 
  
  if(yaxis){
    plotdf <- plotdf %>% 
      mutate(est=ifelse(par==1,1,est),
             CI1=ifelse(par==1,1,CI1),
             CI2=ifelse(par==1,1,CI2))
  }
  
  rflevels = unique(plotdf$intervention_level_f2)
  plotdf$intervention_level_f2=factor(plotdf$intervention_level_f2, levels=rflevels)
  rflevels2 = unique(plotdf$RFlabel)
  plotdf$RFlabel=factor(plotdf$RFlabel, levels=rflevels2)
  
  grey_color <- "grey40"
  
  if(yaxis){
    alpha_vals=c(0, 1)
  }else{
    alpha_vals=c(1, 0)
  }
  
  
  
  p <- ggplot(plotdf, aes(x=intervention_level_f2, alpha=parameter,
                          shape=parameter, color=parameter,  fill=parameter)) + 
    geom_point(aes(y=est),  size = 1.5, position = position_dodge2(dodge_width)) +
    geom_linerange(aes(ymin=CI1, ymax=CI2), position = position_dodge2(dodge_width)) +
    geom_hline(yintercept = 0, size=0.25) +
    geom_text(aes(y= est, label=reflabel, hjust=-.5), size=1.65, color="grey20") +
    coord_flip(#ylim=ylimits
               ) +
    ggforce::facet_col(facets = vars(RFlabel),
                       scales = "free_y",
                       space = "free" , strip.position = 'left'#,
                       #labeller = label_parsed
    ) +
    scale_x_discrete(labels=variable_labels) +
    guides(color=guide_legend(title="Estimate type:"), shape=guide_legend(title="Estimate type:"), fill=guide_legend(title="Estimate type:")) + 
    scale_color_manual(values = c("black","#287D8EFF"), guide = guide_legend(reverse = T) ) +
    scale_fill_manual(values = c("black","#287D8EFF"), guide = guide_legend(reverse = T) ) +
    scale_alpha_manual(values =alpha_vals, guide = guide_legend(reverse = T) ) +
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
          panel.grid.minor = element_blank(),
          legend.text = element_text(size=6),
          legend.title = element_text(size=6),
          axis.ticks=element_line( colour=grey_color),
          plot.title.position = "plot",
          plot.title = element_text(size=10,hjust=0),
          panel.spacing = unit(0, "lines"),
          legend.box.background = element_rect(colour = grey_color), 
          plot.margin = unit(c(0, 0, 0, 0), "cm")) 
  p
  
  if(yaxis){
    p <- p +  geom_hline(yintercept = 1, alpha=0.5) +  scale_y_continuous(trans="log10")  +
      theme(
            axis.text.y = element_markdown(size=6, hjust = 1, colour=grey_color),
            strip.text.y.left = element_markdown(angle = 0, size=6, hjust = 0,
                                             margin = margin(r = facet_label_pos), 
                                             face = "bold"
            ),
      ) 
  }else{
    p <- p +
      geom_hline(yintercept = 0, alpha=0.5) +
      theme(axis.ticks.y =element_blank(),
            axis.text.y =element_blank(),
            plot.title = element_text(color = "white"),
            strip.text.y.left  =element_blank(),
            axis.title.y = element_blank()#,
      )   
  }
  
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
p1 <- plot_combined_paf_RR(df[df$RFgroup=="At-birth child characteristics",], facet_label_pos= -35, xaxis=T, ylab="")
p2 <- plot_combined_paf_RR(df[df$RFgroup=="Postnatal child characteristics",], facet_label_pos= -20, xaxis=T, ylab="")
p3 <- plot_combined_paf_RR(df[df$RFgroup=="Parental Characteristics",], facet_label_pos= -15, xaxis=T, ylab="")
p4 <- plot_combined_paf_RR(df[df$RFgroup=="Household & Environmental Characteristics",], legend=F, xaxis=T, facet_label_pos= -40)

plots <- align_plots(p1, p2,  p3, p4, align = 'v', axis = 'l')

relheights= c(28,13,28,35)

p_laz_PAF <- plot_grid(plots[[1]],plots[[2]],plots[[3]],plots[[4]], 
                   ncol = 1,
                   #label_size = 8,
                   align = "h",
                   #labels = c("At-birth child characteristics","Postnatal child characteristics","Parental Characteristics","Household & Environmental Characteristics"),
                   rel_heights=relheights )


p1 <- plot_combined_paf_RR(df[df$RFgroup=="At-birth child characteristics",], facet_label_pos= -35, xaxis=T, ylab="", yaxis=T)
p2 <- plot_combined_paf_RR(df[df$RFgroup=="Postnatal child characteristics",], facet_label_pos= -45, xaxis=T, ylab="", yaxis=T)
p3 <- plot_combined_paf_RR(df[df$RFgroup=="Parental Characteristics",], facet_label_pos= -15, xaxis=T, ylab="", yaxis=T)
p4 <- plot_combined_paf_RR(df[df$RFgroup=="Household & Environmental Characteristics",], legend=F, xaxis=T, facet_label_pos= -40, yaxis=T)

plots <- align_plots(p1, p2,  p3, p4, align = 'v', axis = 'l')

p_laz_RR <- plot_grid(plots[[1]],plots[[2]],plots[[3]],plots[[4]], 
                       ncol = 1,
                       #label_size = 8,
                       align = "h",
                       #labels = c("At-birth child characteristics","Postnatal child characteristics","Parental Characteristics","Household & Environmental Characteristics"),
                       rel_heights = relheights)

p_laz <- plot_grid(p_laz_RR, p_laz_PAF, ncol = 2, rel_widths = c(10,5))

ggsave(p_laz, file=paste0(here::here(),"/figures/EDfig6_stunt_PAF.png"), width=4, height=9)
#ggsave(p_laz, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2_alt3_laz.png"), width=4, height=8)


#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# WLZ
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

#p_wlz <- plot_combined_paf_RR(df, ylimits=c(-0.1, 0.45), outcome_var="whz", ylab="Adjusted difference in WLZ at 24 months")

p1 <- plot_combined_paf_RR(df[df$RFgroup=="At-birth child characteristics",], ylimits=c(-0.1, 0.45),  outcome_var="ever_wasted", facet_label_pos= -35, xaxis=T, ylab="")
p2 <- plot_combined_paf_RR(df[df$RFgroup=="Postnatal child characteristics",], ylimits=c(-0.1, 0.45),  outcome_var="ever_wasted", facet_label_pos= -20, xaxis=T, ylab="")
p3 <- plot_combined_paf_RR(df[df$RFgroup=="Parental Characteristics",], ylimits=c(-0.1, 0.45),  outcome_var="ever_wasted", facet_label_pos= -15, xaxis=T, ylab="")
p4 <- plot_combined_paf_RR(df[df$RFgroup=="Household & Environmental Characteristics",], ylimits=c(-0.1, 0.45),  outcome_var="ever_wasted", legend=F, xaxis=T, facet_label_pos= -40)


plots <- align_plots(p1, p2,  p3, p4, align = 'v', axis = 'l')

p_wlz_PAF <- plot_grid(plots[[1]],plots[[2]],plots[[3]],plots[[4]], 
                   ncol = 1,
                   #label_size = 8,
                   align = "h",
                   #labels = c("At-birth child characteristics","Postnatal child characteristics","Parental Characteristics","Household & Environmental Characteristics"),
                   rel_heights = relheights)

p1 <- plot_combined_paf_RR(df[df$RFgroup=="At-birth child characteristics",], ylimits=c(-0.1, 0.45),  outcome_var="ever_wasted", facet_label_pos= -35, xaxis=T, ylab="", yaxis=T)
p2 <- plot_combined_paf_RR(df[df$RFgroup=="Postnatal child characteristics",], ylimits=c(-0.1, 0.45),  outcome_var="ever_wasted", facet_label_pos= -20, xaxis=T, ylab="", yaxis=T)
p3 <- plot_combined_paf_RR(df[df$RFgroup=="Parental Characteristics",], ylimits=c(-0.1, 0.45),  outcome_var="ever_wasted", facet_label_pos= -15, xaxis=T, ylab="", yaxis=T)
p4 <- plot_combined_paf_RR(df[df$RFgroup=="Household & Environmental Characteristics",], ylimits=c(-0.1, 0.45),  outcome_var="ever_wasted", legend=F, xaxis=T, facet_label_pos= -40, yaxis=T)


plots <- align_plots(p1, p2,  p3, p4, align = 'v', axis = 'l')

p_wlz_RR <- plot_grid(plots[[1]],plots[[2]],plots[[3]],plots[[4]], 
                       ncol = 1,
                       #label_size = 8,
                       align = "h",
                       #labels = c("At-birth child characteristics","Postnatal child characteristics","Parental Characteristics","Household & Environmental Characteristics"),
                       rel_heights = relheights)

p_wlz <- plot_grid(p_wlz_RR,p_wlz_PAF, ncol = 2, rel_widths = c(10,5))


ggsave(p_wlz, file=paste0(here::here(),"/figures/EDfig7_wast_PAF.png"), width=4, height=9)


#ggsave(fig2, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2.png"), width=18.3, height=18.3, units = 'cm')

