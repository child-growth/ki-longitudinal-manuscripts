

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(gtable)
library(cowplot)
library(tidytext)
library(ggtext)
library(glue)





#----------------------------------------------------------
# Plot parameters
#----------------------------------------------------------

dodge_width = 0.7

# Colors
color_vec = c("#7F7F7F", "#E377C2")
main_color <- "#89b4bc"


#----------------------------------------------------------------------------------
# Load data
#----------------------------------------------------------------------------------

# # PIE
# par_raw <- readRDS(paste0(BV_dir,"/results/rf results/pooled_Zscore_PAR_results.rds")) %>% mutate(parameter="Population Intervention Effect", baseline_level=intervention_level ) %>% filter(intervention_variable!="perdiar6")
# #flip direction of measurement so it's Ya-Y
# par_raw <- par_raw %>% mutate(PAR=-PAR, CI1_temp=-CI2, CI2=-CI1, CI1=CI1_temp) %>% subset(., select = -c(CI1_temp))
# 
# #Mean differences
# ATE_raw <- readRDS(paste0(BV_dir,"/results/rf results/pooled_ATE_results_alt_ref.rds")) %>% mutate(parameter="Mean Difference") %>% filter(intervention_variable!="perdiar6")
# unique(ATE_raw$intervention_variable)
# #flip SGA to use SGA as the reference level
# head(ATE_raw)
# ATE_sga <- ATE_raw %>% filter(intervention_variable=="SGA")
# ATE_sga <- ATE_sga %>% mutate(intervention_level="Not SGA", baseline_level="SGA", ATE=-ATE, CI1_temp=CI1, CI1=-CI2, CI2=-CI1_temp) %>% subset(., select=-c(CI1_temp))
# ATE_raw <- ATE_raw %>% filter(intervention_variable!="SGA")
# ATE_raw %>% filter(intervention_variable=="SGA",region=="Pooled", agecat=="24 months")
# ATE_raw <- bind_rows(ATE_raw, ATE_sga)
# #rename point estimates and CI's for combining
# par_raw <- par_raw %>% rename(est=PAR)
# ATE_raw <- ATE_raw %>% rename(est=ATE)
# 
# df_full <- bind_rows(par_raw, ATE_raw)
# 
# saveRDS(df_full, file=paste0(here::here(),"/data/temp_plotdf2_full.RDS"))

df_full <- readRDS(paste0(here::here(),"/data/temp_plotdf2_full.RDS")) %>% filter( region=="Pooled", agecat=="24 months")
head(df_full)

df_full %>% filter(intervention_variable=="SGA")

#----------------------------------------------------------------------------------
##### Cleaning dataset
#----------------------------------------------------------------------------------

df <- df_full %>% filter(!(intervention_variable %in% c("anywast06","enstunt","enwast","pers_wast","month","brthmon","trth2o")))

#temp
df$intervention_level2 <- df$intervention_level

unique(df$intervention_level)
unique(df$intervention_variable)
unique(df$RFlabel_ref)
df$intervention_level <- as.character(df$intervention_level)
df$intervention_level[df$intervention_level=="Full or late term"] <- "Full/late term"
df$intervention_level[df$intervention_level=="[0%, 2%]"] <- "<=2%"
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
df$intervention_level[df$intervention_variable=="birthwt" & df$parameter=="Mean Difference" ] <- ">=2500 g" 
df$baseline_level[df$baseline_level =="WealthQ1"] <- "Q1"
df$RFlabel_ref[df$RFlabel_ref =="HH wealth, ref: WealthQ1"] <- "HH wealth, ref: Q1"
df$RFlabel_ref[df$RFlabel_ref =="Vaginal birth, ref: Yes" ] <- "Vaginal birth, ref: Yes" 



df$RFlabel[df$RFlabel=="Diarrhea <24 mo.  (% days)"] <- "Diarrhea <24 months (% days)"
df$RFlabel[df$RFlabel=="Diarrhea <6 mo. (% days)"] <- "Diarrhea (% days)"
df$RFlabel[df$RFlabel=="Gestational age at birth"] <- "Gestational age"
df$RFlabel[df$RFlabel=="HH wealth"] <- "HH wealth quartile"



#add units to intervention variables
unique(df$RFlabel)
df$RFlabel[df$RFlabel=="Father's age"] <- "Father's age (years)"
df$RFlabel[df$RFlabel=="Mother's age"] <- "Mother's age (years)"
df$RFlabel[df$RFlabel=="Father's height"] <- "Father's height (cm)"
df$RFlabel[df$RFlabel=="Mother's height"] <- "Mother's height (cm)"
df$RFlabel[df$RFlabel=="Mother's weight"] <- "Mother's weight (kg)"
df$RFlabel[df$RFlabel=="Mother's BMI"] <- "Mother's BMI (kg/m²)"
df$RFlabel[df$RFlabel=="Birthweight (kg)"] <- "Birthweight (g)"
df$RFlabel[df$RFlabel=="# of children <5 in HH"] <- "Children <5 in HH (n)"
df$RFlabel[df$RFlabel=="# of people in HH"] <- "People in HH (n)"
df$RFlabel[df$RFlabel=="# of rooms in HH"] <- "Rooms in HH (n)"
df$RFlabel <- gsub("  "," ",df$RFlabel)




#remove units from intervention levels
unique(df$intervention_level)
df$intervention_level <- gsub(" cm","",df$intervention_level)
df$intervention_level <- gsub(" kg/m²","",df$intervention_level)
df$intervention_level <- gsub(" kg","",df$intervention_level)
df$intervention_level <- gsub(" g","",df$intervention_level)

df$baseline_level <- gsub(" cm","",df$baseline_level)
df$baseline_level <- gsub(" kg/m²","",df$baseline_level)
df$baseline_level <- gsub(" kg","",df$baseline_level)
df$baseline_level <- gsub(" g","",df$baseline_level)




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
      RFtype %in% c("Household","SES","WASH","Time") ~ "Household & Environmental Characteristics",
      RFtype %in% c("Parent background","Parent anthro" ) ~ "Parental Characteristics",
      RFtype %in% c("Postnatal child health", "Breastfeeding") ~ "Postnatal child characteristics",
      RFtype==RFtype ~ "At-birth child characteristics"))

#get PAF label and facet label
df <- df %>% group_by(outcome_variable, RFlabel) %>% mutate(n=max(n, na.rm=T)) %>% ungroup() %>%
    mutate(intervention_level_f=paste0(round((1-n_cell/n)*100), "% shifted to ", intervention_level),
                    n = format(n ,big.mark=",", trim=TRUE),
                    RFlabel=str_c("**",RFlabel,"**<br>N=",n))


df$intervention_level_f[df$parameter!="Population Intervention Effect"] <- df$intervention_level[df$parameter!="Population Intervention Effect"]  

#df$RFlabel <- gsub("\'s","\\\\'s",df$RFlabel)

unique(df$RFlabel)

#df$RFlabel <- gsub(" ","",df$RFlabel)
#df$RFlabel[df$RFlabel=="Birth length (cm)\nN=20,024" ] <- "Birth_length (cm)\nitalic('N=20,024')" 



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

unique(df$intervention_level_f2)

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
  df$parameter == "Mean Difference",
  paste0("<span style='color:#89b4bc'>", df$intervention_level_f, "</span>"),
  df$intervention_level_f
)



#----------------------------------------------------------
# Set names
#----------------------------------------------------------

unique(df$intervention_level_f)
unique(df$intervention_level_f2)

cat(paste(paste0("\"",df$intervention_level_f2,"\"=\"",df$intervention_level_f,"\""), collapse=","), "\n")


variable_labels = c(
  "51% shifted to Female sex" = "51% shifted to Female", "67% shifted to >=50 birthlen" =
    "67% shifted to \u226550", "24% shifted to >= 2500 birthwt" = "24% shifted to \u2265 2500", "49% shifted to Full/late term gagebrth" =
    "49% shifted to Full/late term", "56% shifted to No hdlvry" = "56% shifted to No", "91% shifted to No vagbrth" =
    "91% shifted to No", "66% shifted to 1 parity" = "66% shifted to 1", "38% shifted to 1 nchldlt5" =
    "38% shifted to 1", "81% shifted to 3 or less nhh" = "81% shifted to 3 or less", "91% shifted to 4+ nrooms" =
    "91% shifted to 4+", "73% shifted to Q4 hhwealth_quart" = "73% shifted to Q4", "50% shifted to Food Secure hfoodsec" =
    "50% shifted to Food Secure", "31% shifted to Yes impsan" = "31% shifted to Yes", "75% shifted to Yes impfloor" =
    "75% shifted to Yes", "51% shifted to Yes cleanck" = "51% shifted to Yes", "78% shifted to Post-max rain rain_quartile" =
    "78% shifted to Post-max rain", "42% shifted to [20-30) mage" = "42% shifted to [20-30)", "82% shifted to >=35 fage" =
    "82% shifted to \u226535", "30% shifted to >=150 mhtcm" = "30% shifted to \u2265150", "35% shifted to >=45 mwtkg" =
    "35% shifted to \u226545", "40% shifted to >=20 mbmi" = "40% shifted to \u226520", "68% shifted to High meducyrs" =
    "68% shifted to High", "77% shifted to High feducyrs" = "77% shifted to High", "37% shifted to Yes predexfd6" =
    "37% shifted to Yes", "48% shifted to <=2% perdiar24" = "48% shifted to \u22642%", "70% shifted to Yes earlybf" =
    "70% shifted to Yes", "Male sex" = "<span style='color:#89b4bc'>Male</span>", "Female sex" =
    "<span style='color:#89b4bc'>Female</span>", "<48 birthlen" = "<span style='color:#89b4bc'><48</span>", ">=50 birthlen" =
    "<span style='color:#89b4bc'>\u226550</span>", "[48-50) birthlen" = "<span style='color:#89b4bc'>[48-50)</span>", "< 2500 birthwt" =
    "<span style='color:#89b4bc'>< 2500</span>", ">=2500 birthwt" = "<span style='color:#89b4bc'>\u22652500</span>", "Preterm gagebrth" =
    "<span style='color:#89b4bc'>Preterm</span>", "Full/late term gagebrth" =
    "<span style='color:#89b4bc'>Full/late term</span>", "Early term gagebrth" =
    "<span style='color:#89b4bc'>Early term</span>", "Yes hdlvry" = "<span style='color:#89b4bc'>Yes</span>", "No hdlvry" =
    "<span style='color:#89b4bc'>No</span>", "Yes vagbrth" = "<span style='color:#89b4bc'>Yes</span>", "No vagbrth" =
    "<span style='color:#89b4bc'>No</span>", "3+ parity" = "<span style='color:#89b4bc'>3+</span>", "2 parity" =
    "<span style='color:#89b4bc'>2</span>", "1 parity" = "<span style='color:#89b4bc'>1</span>", "2+ nchldlt5" =
    "<span style='color:#89b4bc'>2+</span>", "1 nchldlt5" = "<span style='color:#89b4bc'>1</span>", "8+ nhh" =
    "<span style='color:#89b4bc'>8+</span>", "6-7 nhh" = "<span style='color:#89b4bc'>6-7</span>", "3 or less nhh" =
    "<span style='color:#89b4bc'>3 or less</span>", "4-5 nhh" = "<span style='color:#89b4bc'>4-5</span>", "1 nrooms" =
    "<span style='color:#89b4bc'>1</span>", "4+ nrooms" = "<span style='color:#89b4bc'>4+</span>", "3 nrooms" =
    "<span style='color:#89b4bc'>3</span>", "2 nrooms" = "<span style='color:#89b4bc'>2</span>", "Q1 hhwealth_quart" =
    "<span style='color:#89b4bc'>Q1</span>", "Q4 hhwealth_quart" = "<span style='color:#89b4bc'>Q4</span>", "Q3 hhwealth_quart" =
    "<span style='color:#89b4bc'>Q3</span>", "Q2 hhwealth_quart" = "<span style='color:#89b4bc'>Q2</span>", "Food Insecure hfoodsec" =
    "<span style='color:#89b4bc'>Food Insecure</span>", "Food Secure hfoodsec" =
    "<span style='color:#89b4bc'>Food Secure</span>", "Mildly Food Insecure hfoodsec" =
    "<span style='color:#89b4bc'>Mildly Food Insecure</span>", "No impsan" =
    "<span style='color:#89b4bc'>No</span>", "Yes impsan" = "<span style='color:#89b4bc'>Yes</span>", "No impfloor" =
    "<span style='color:#89b4bc'>No</span>", "Yes impfloor" = "<span style='color:#89b4bc'>Yes</span>", "No cleanck" =
    "<span style='color:#89b4bc'>No</span>", "Yes cleanck" = "<span style='color:#89b4bc'>Yes</span>", "Opposite max rain rain_quartile" =
    "<span style='color:#89b4bc'>Opposite max rain</span>", "Post-max rain rain_quartile" =
    "<span style='color:#89b4bc'>Post-max rain</span>", "Pre-max rain rain_quartile" =
    "<span style='color:#89b4bc'>Pre-max rain</span>", "Max rain rain_quartile" =
    "<span style='color:#89b4bc'>Max rain</span>", "<20 mage" = "<span style='color:#89b4bc'><20</span>", "[20-30) mage" =
    "<span style='color:#89b4bc'>[20-30)</span>", ">=30 mage" = "<span style='color:#89b4bc'>\u226530</span>", "<30 fage" =
    "<span style='color:#89b4bc'><30</span>", ">=35 fage" = "<span style='color:#89b4bc'>\u226535</span>", "[30-35) fage" =
    "<span style='color:#89b4bc'>[30-35)</span>", "<150 mhtcm" = "<span style='color:#89b4bc'><150</span>", ">=150 mhtcm" =
    "<span style='color:#89b4bc'>\u2265150</span>", "<45 mwtkg" = "<span style='color:#89b4bc'><45</span>", ">=45 mwtkg" =
    "<span style='color:#89b4bc'>\u226545</span>", "<20 mbmi" = "<span style='color:#89b4bc'><20</span>", ">=20 mbmi" =
    "<span style='color:#89b4bc'>\u226520</span>", "Low meducyrs" = "<span style='color:#89b4bc'>Low</span>", "High meducyrs" =
    "<span style='color:#89b4bc'>High</span>", "Medium meducyrs" = "<span style='color:#89b4bc'>Medium</span>", "Low feducyrs" =
    "<span style='color:#89b4bc'>Low</span>", "High feducyrs" = "<span style='color:#89b4bc'>High</span>", "Medium feducyrs" =
    "<span style='color:#89b4bc'>Medium</span>", "No predexfd6" = "<span style='color:#89b4bc'>No</span>", "Yes predexfd6" =
    "<span style='color:#89b4bc'>Yes</span>", ">2% perdiar24" = "<span style='color:#89b4bc'>>2%</span>", "<=2% perdiar24" =
    "<span style='color:#89b4bc'>\u22642%</span>", "No earlybf" = "<span style='color:#89b4bc'>No</span>", "Yes earlybf" =
    "<span style='color:#89b4bc'>Yes</span>", "51% shifted to Female sex" =
    "51% shifted to Female", "67% shifted to >=50 birthlen" = "67% shifted to \u226550", "25% shifted to >= 2500 birthwt" =
    "25% shifted to \u2265 2500", "49% shifted to Full/late term gagebrth" =
    "49% shifted to Full/late term", "56% shifted to No hdlvry" = "56% shifted to No", "91% shifted to No vagbrth" =
    "91% shifted to No", "67% shifted to 1 parity" = "67% shifted to 1", "38% shifted to 1 nchldlt5" =
    "38% shifted to 1", "81% shifted to 3 or less nhh" = "81% shifted to 3 or less", "91% shifted to 4+ nrooms" =
    "91% shifted to 4+", "73% shifted to Q4 hhwealth_quart" = "73% shifted to Q4", "50% shifted to Food Secure hfoodsec" =
    "50% shifted to Food Secure", "31% shifted to Yes impsan" = "31% shifted to Yes", "75% shifted to Yes impfloor" =
    "75% shifted to Yes", "51% shifted to Yes cleanck" = "51% shifted to Yes", "75% shifted to Opposite max rain rain_quartile" =
    "75% shifted to Opposite max rain", "43% shifted to [20-30) mage" = "43% shifted to [20-30)", "82% shifted to >=35 fage" =
    "82% shifted to \u226535", "32% shifted to >=150 mhtcm" = "32% shifted to \u2265150", "38% shifted to >=45 mwtkg" =
    "38% shifted to \u226545", "41% shifted to >=20 mbmi" = "41% shifted to \u226520", "69% shifted to High meducyrs" =
    "69% shifted to High", "76% shifted to High feducyrs" = "76% shifted to High", "37% shifted to Yes predexfd6" =
    "37% shifted to Yes", "48% shifted to <=2% perdiar24" = "48% shifted to \u22642%", "72% shifted to Yes earlybf" =
    "72% shifted to Yes", "Male sex" = "<span style='color:#89b4bc'>Male</span>", "Female sex" =
    "<span style='color:#89b4bc'>Female</span>", "<48 birthlen" = "<span style='color:#89b4bc'><48</span>", ">=50 birthlen" =
    "<span style='color:#89b4bc'>\u226550</span>", "[48-50) birthlen" = "<span style='color:#89b4bc'>[48-50)</span>", "< 2500 birthwt" =
    "<span style='color:#89b4bc'>< 2500</span>", ">=2500 birthwt" = "<span style='color:#89b4bc'>\u22652500</span>", "Preterm gagebrth" =
    "<span style='color:#89b4bc'>Preterm</span>", "Full/late term gagebrth" =
    "<span style='color:#89b4bc'>Full/late term</span>", "Early term gagebrth" =
    "<span style='color:#89b4bc'>Early term</span>", "Yes hdlvry" = "<span style='color:#89b4bc'>Yes</span>", "No hdlvry" =
    "<span style='color:#89b4bc'>No</span>", "Yes vagbrth" = "<span style='color:#89b4bc'>Yes</span>", "No vagbrth" =
    "<span style='color:#89b4bc'>No</span>", "3+ parity" = "<span style='color:#89b4bc'>3+</span>", "2 parity" =
    "<span style='color:#89b4bc'>2</span>", "1 parity" = "<span style='color:#89b4bc'>1</span>", "2+ nchldlt5" =
    "<span style='color:#89b4bc'>2+</span>", "1 nchldlt5" = "<span style='color:#89b4bc'>1</span>", "8+ nhh" =
    "<span style='color:#89b4bc'>8+</span>", "3 or less nhh" = "<span style='color:#89b4bc'>3 or less</span>", "6-7 nhh" =
    "<span style='color:#89b4bc'>6-7</span>", "4-5 nhh" = "<span style='color:#89b4bc'>4-5</span>", "1 nrooms" =
    "<span style='color:#89b4bc'>1</span>", "3 nrooms" = "<span style='color:#89b4bc'>3</span>", "4+ nrooms" =
    "<span style='color:#89b4bc'>4+</span>", "2 nrooms" = "<span style='color:#89b4bc'>2</span>", "Q1 hhwealth_quart" =
    "<span style='color:#89b4bc'>Q1</span>", "Q3 hhwealth_quart" = "<span style='color:#89b4bc'>Q3</span>", "Q4 hhwealth_quart" =
    "<span style='color:#89b4bc'>Q4</span>", "Q2 hhwealth_quart" = "<span style='color:#89b4bc'>Q2</span>", "Food Insecure hfoodsec" =
    "<span style='color:#89b4bc'>Food Insecure</span>", "Food Secure hfoodsec" =
    "<span style='color:#89b4bc'>Food Secure</span>", "Mildly Food Insecure hfoodsec" =
    "<span style='color:#89b4bc'>Mildly Food Insecure</span>", "No impsan" =
    "<span style='color:#89b4bc'>No</span>", "Yes impsan" = "<span style='color:#89b4bc'>Yes</span>", "No impfloor" =
    "<span style='color:#89b4bc'>No</span>", "Yes impfloor" = "<span style='color:#89b4bc'>Yes</span>", "No cleanck" =
    "<span style='color:#89b4bc'>No</span>", "Yes cleanck" = "<span style='color:#89b4bc'>Yes</span>", "Post-max rain rain_quartile" =
    "<span style='color:#89b4bc'>Post-max rain</span>", "Opposite max rain rain_quartile" =
    "<span style='color:#89b4bc'>Opposite max rain</span>", "Pre-max rain rain_quartile" =
    "<span style='color:#89b4bc'>Pre-max rain</span>", "Max rain rain_quartile" =
    "<span style='color:#89b4bc'>Max rain</span>", "<20 mage" = "<span style='color:#89b4bc'><20</span>", ">=30 mage" =
    "<span style='color:#89b4bc'>\u226530</span>", "[20-30) mage" = "<span style='color:#89b4bc'>[20-30)</span>", "<30 fage" =
    "<span style='color:#89b4bc'><30</span>", ">=35 fage" = "<span style='color:#89b4bc'>\u226535</span>", "[30-35) fage" =
    "<span style='color:#89b4bc'>[30-35)</span>", "<150 mhtcm" = "<span style='color:#89b4bc'><150</span>", ">=150 mhtcm" =
    "<span style='color:#89b4bc'>\u2265150</span>", "<45 mwtkg" = "<span style='color:#89b4bc'><45</span>", ">=45 mwtkg" =
    "<span style='color:#89b4bc'>\u226545</span>", "<20 mbmi" = "<span style='color:#89b4bc'><20</span>", ">=20 mbmi" =
    "<span style='color:#89b4bc'>\u226520</span>", "Low meducyrs" = "<span style='color:#89b4bc'>Low</span>", "High meducyrs" =
    "<span style='color:#89b4bc'>High</span>", "Medium meducyrs" = "<span style='color:#89b4bc'>Medium</span>", "Low feducyrs" =
    "<span style='color:#89b4bc'>Low</span>", "High feducyrs" = "<span style='color:#89b4bc'>High</span>", "Medium feducyrs" =
    "<span style='color:#89b4bc'>Medium</span>", "No predexfd6" = "<span style='color:#89b4bc'>No</span>", "Yes predexfd6" =
    "<span style='color:#89b4bc'>Yes</span>", ">2% perdiar24" = "<span style='color:#89b4bc'>>2%</span>", "<=2% perdiar24" =
    "<span style='color:#89b4bc'>\u22642%</span>", "No earlybf" = "<span style='color:#89b4bc'>No</span>", "Yes earlybf" =
    "<span style='color:#89b4bc'>Yes</span>"
)


#----------------------------------------------------------
# plot function
#----------------------------------------------------------
d=df %>% filter(intervention_variable=="earlybf"|intervention_variable=="parity")
ylimits=c(-0.1, 0.8)
outcome_var="haz"
ylab="Adjusted difference in LAZ at 24 months"
legend=F
xaxis=F
facet_label_pos= -75


d=df[df$RFgroup=="At-birth child characteristics",]
facet_label_pos= -35
xaxis=T
ylab=""
yaxis=T

label_params=T
label_pos=c(0.4, 0.7)
lab_levels=c(">=50 birthlen", "67% shifted to >=50 birthlen")
label_format=list(
  label_pos=c(0.2, 0.6),
  lab_levels=c("[48-50) birthlen", "67% shifted to >=50 birthlen"),
  label_adj=c(0.045, 0.035),
  arrow_curve=c(-0.25,0.25),
  arrow_lengths=c(-0.01, -0.01),
  rev_arrow=c(1,1),
  arrow_size=0.3)

plot_combined_pie_ate <- function(d, ylimits=c(-0.1, 0.8), facet_label_pos= -75, outcome_var="haz", 
                                  ylab="Adjusted difference in LAZ at 24 months", legend=F, xaxis=F, 
                                  label_params=F,          
                                  label_format=list(label_pos=c(0.3, 0.75),
                                                    lab_levels=c(">=50 birthlen", "67% shifted to >=50 birthlen"),
                                                     label_adj=c(0.045, 0.035),
                                                     arrow_lengths=c(0.2, 0.2),
                                                     arrow_curve=c(0.25,0.25),
                                                     rev_arrow=c(-1,1),
                                                     nudge=c(-0.1, 0.1),
                                                     arrow_size=0.8)){
  
  plotdf <- d %>% filter(outcome_variable==outcome_var, !is.na(est))
  plotdf <- plotdf %>% mutate(
    #make order variable for non-ATE based ordering
    order_var = case_when(
      intervention_level_f2=="3 or less nhh" ~ 1,
      intervention_level_f2=="4-5 nhh" ~ 2,
      intervention_level_f2=="6-7 nhh" ~ 3,
      intervention_level_f2=="8+ nhh" ~ 4,
      intervention_level_f2=="Yes earlybf" ~ 1,
      intervention_level_f2=="1 parity" ~ 1,
      intervention_level_f2=="8+ nhh" ~ 4,
      intervention_level_f2==">=30 mage" ~ 1,
      intervention_level_f2=="[20-30) mage" ~ 2,
      outcome_variable=="haz" & intervention_level_f2=="Post-max rain rain_quartile" ~ 1,
      outcome_variable=="haz" & intervention_level_f2=="Max rain rain_quartile" ~ 2,
      outcome_variable=="haz" & intervention_level_f2=="Pre-max rain rain_quartile" ~ 3,
      outcome_variable=="haz" & intervention_level_f2=="Opposite max rain rain_quartile"  ~ 4,
      outcome_variable=="whz" & intervention_level_f2=="Post-max rain rain_quartile" ~ 4,
      outcome_variable=="whz" & intervention_level_f2=="Max rain rain_quartile" ~ 3,
      outcome_variable=="whz" & intervention_level_f2=="Pre-max rain rain_quartile" ~ 2,
      outcome_variable=="whz" & intervention_level_f2=="Opposite max rain rain_quartile"  ~ 1,
      outcome_variable=="whz" & intervention_level_f2=="Q4 hhwealth_quart"  ~ 2,
      outcome_variable=="whz" & intervention_level_f2=="4+ nrooms"  ~ 1,
      intervention_level_f2==intervention_level_f2 ~ 5,
                          ))
  


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
    ggforce::facet_col(facets = vars(RFlabel),
                       scales = "free_y",
                       space = "free" , strip.position = 'left'#,
                       #labeller =  "label_parsed"
    ) +
    scale_x_discrete(labels=variable_labels) +
    scale_y_continuous(breaks = c(-0.1,0,0.1,0.2,0.3,0.4, 0.5, 0.6, 0.7, 0.8), 
                       #labels=c("0.1","0","-0.1","-0.2","-0.3","-0.4","-0.5","-0.6","-0.7","-0.8")
                       ) +
    guides(color=guide_legend(title="Estimate type:"), shape=guide_legend(title="Estimate type:"), fill=guide_legend(title="Estimate type:")) + 
    scale_color_manual(values = c("black","#89b4bc"), guide = guide_legend(reverse = T) ) +
    scale_fill_manual(values = c("black","#89b4bc"), guide = guide_legend(reverse = T) ) +
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
            panel.grid.minor = element_blank(),
            #strip.text=element_text(lineheight=10),
            strip.text.y.left = element_markdown(angle = 0, size=6, hjust = 0,
                                             margin = margin(r = facet_label_pos)
                                             ),
            axis.text.y = element_markdown(size=6, hjust = 1, colour="black", margin = margin(r=1)),
            legend.text = element_text(size=6),
            legend.title = element_text(size=6),
            axis.ticks=element_line( colour=grey_color),
            plot.title.position = "plot",
            plot.title = element_text(size=10,hjust=0),
            panel.spacing = unit(0, "lines"),
            axis.ticks.length=unit(.05, "cm"),
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
  
  if(label_params){
    
    ann_text <- data.frame(intervention_level_f2 = label_format$lab_levels,
                           est = label_format$label_pos,
                           lab = c("ATE","PIE"), 
                           parameter=c("Mean Difference","Population Intervention Effect"),
                           RFlabel = rep(factor(levels(plotdf$RFlabel)[1],levels = levels(plotdf$RFlabel))), 2)
    ann_text$arrow_end<-c(plotdf$est[plotdf$intervention_level_f2==ann_text$intervention_level_f2[1]],  plotdf$est[plotdf$intervention_level_f2==ann_text$intervention_level_f2[2]])
    
   p <- p + geom_label(aes(y=est, color=parameter, label=lab), data=ann_text, fill="white", alpha=1, label.padding = unit(0.05, "lines"),
                       label.r = unit(0.05, "lines"),
                       label.size = 0.05, size=1.8, fontface = "bold") +
     geom_curve(aes( y = est-label_format$label_adj[1]*label_format$rev_arrow[1], xend = intervention_level_f2, yend = arrow_end-label_format$arrow_lengths[1]*label_format$rev_arrow[1],  color=parameter), curvature = label_format$arrow_curve[1], alpha=0.75, size=label_format$arrow_size, arrow = arrow(length = unit(0.2, "cm")), data=ann_text[1,]) +
     geom_curve(aes( y = est-label_format$label_adj[2]*label_format$rev_arrow[2], xend = intervention_level_f2, yend = arrow_end-label_format$arrow_lengths[2]*label_format$rev_arrow[2],  color=parameter), curvature = label_format$arrow_curve[2], alpha=0.75, size=label_format$arrow_size, arrow = arrow(length = unit(0.2, "cm")), data=ann_text[2,]) 
    
  }

  return(p)
}



#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# LAZ
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

  p1 <- plot_combined_pie_ate(df[df$RFgroup=="At-birth child characteristics",], facet_label_pos= -35, xaxis=T, ylab="", label_params=T, 
                              label_format=list(
                                      label_pos=c(0.2, 0.6),
                                      lab_levels=c("[48-50) birthlen", "67% shifted to >=50 birthlen"),
                                      label_adj=c(0.035, 0.03),
                                      arrow_curve=c(-0.5,0.5),
                                      arrow_lengths=c(-0.015, -0.015),
                                      rev_arrow=c(-1,1),
                                      arrow_size=0.3))
  p2 <- plot_combined_pie_ate(df[df$RFgroup=="Postnatal child characteristics",], facet_label_pos= -30, xaxis=T, ylab="")
  p3 <- plot_combined_pie_ate(df[df$RFgroup=="Parental Characteristics",], facet_label_pos= -12, xaxis=T, ylab="")
  p4 <- plot_combined_pie_ate(df[df$RFgroup=="Household & Environmental Characteristics",], legend=F, xaxis=T, facet_label_pos= -42)
  
  plots <- align_plots(p1, p2,  p3, p4, align = 'v', axis = 'l')
  
  p_laz <- plot_grid(plots[[1]],plots[[2]],plots[[3]],plots[[4]], 
                        ncol = 1,
                        #label_size = 8,
                        align = "h",
                        #labels = c("At-birth child characteristics","Postnatal child characteristics","Parental Characteristics","Household & Environmental Characteristics"),
                        rel_heights = c(28,15,28,40))
  
  ggsave(p_laz, file=paste0(here::here(),"/figures/fig2_alt3_laz.png"), width=4, height=9)
  #ggsave(p_laz, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2_alt3_laz.png"), width=4, height=8)
    

#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# WLZ
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

  #p_wlz <- plot_combined_pie_ate(df, ylimits=c(-0.1, 0.45), outcome_var="whz", ylab="Adjusted difference in WLZ at 24 months")

  p1 <- plot_combined_pie_ate(df[df$RFgroup=="At-birth child characteristics",], ylimits=c(-0.1, 0.45),  outcome_var="whz", facet_label_pos= -35, xaxis=T, ylab="", label_params=T,
                              label_format=list(
                                label_pos=c(0.42, 0.3),
                                lab_levels=c(">=50 birthlen", "67% shifted to >=50 birthlen"),
                                label_adj=c(-0.02, 0.015),
                                arrow_curve=c(-0.35,0.35),
                                arrow_lengths=c(-0, -0),
                                rev_arrow=c(-1,1),
                                arrow_size=0.3))
  p2 <- plot_combined_pie_ate(df[df$RFgroup=="Postnatal child characteristics",], ylimits=c(-0.1, 0.45),  outcome_var="whz", facet_label_pos= -30, xaxis=T, ylab="")
  p3 <- plot_combined_pie_ate(df[df$RFgroup=="Parental Characteristics",], ylimits=c(-0.1, 0.45),  outcome_var="whz", facet_label_pos= -12, xaxis=T, ylab="")
  p4 <- plot_combined_pie_ate(df[df$RFgroup=="Household & Environmental Characteristics",], ylimits=c(-0.1, 0.45),  outcome_var="whz", ylab="Adjusted difference in WLZ at 24 months", legend=F, xaxis=T, facet_label_pos= -55)
  

  
  plots <- align_plots(p1, p2,  p3, p4, align = 'v', axis = 'l')
  
  p_wlz <- plot_grid(plots[[1]],plots[[2]],plots[[3]],plots[[4]], 
                     ncol = 1,
                     #label_size = 8,
                     align = "h",
                     #labels = c("At-birth child characteristics","Postnatal child characteristics","Parental Characteristics","Household & Environmental Characteristics"),
                     rel_heights = c(28,15,28,40))
  

ggsave(p_wlz, file=paste0(here::here(),"/figures/fig3_alt3_wlz.png"), width=4, height=9)
#ggsave(p_wlz, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig3_alt_wlz.png"), width=4, height=8)

