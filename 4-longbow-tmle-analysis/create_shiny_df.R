
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))
library(Hmisc)

simpleCap <- function(x){
  s <- strsplit(x, " ")[[1]]
  paste(toupper(substring(s, 1,1)), substring(s, 2),
        sep="", collapse=" ")
}


d_adj <- readRDS(paste0(here::here(),"/results/rf results/full_RF_results.rds"))
d_unadj <- readRDS(paste0(here::here(),"/results/rf results/full_RF_unadj_results.rds"))
d_adj$adjusted = 1
d_unadj$adjusted = 0

d <- rbind(d_adj, d_unadj)
d$pooled <- 0


dRR <- readRDS(paste0(here::here(),"/results/rf results/pooled_RR_results.rds"))
dATE <- readRDS(paste0(here::here(),"/results/rf results/pooled_ATE_results.rds"))
dZ_PAR <- readRDS(paste0(here::here(),"/results/rf results/pooled_Zscore_PAR_results.rds"))
dPAF <- readRDS(paste0(here::here(),"/results/rf results/pooled_PAF_results.rds"))

head(d)
head(dRR)

dRR <- dRR %>% rename(estimate=RR, ci_lower=RR.CI1, ci_upper=RR.CI2) %>% mutate(type="RR", studyid="Pooled", country="", continuous=0)
dRR$adjusted = 1
dRR$pooled = 1

head(dATE)
dATE <- dATE %>% rename(estimate=ATE, ci_lower=CI1, ci_upper=CI2) %>% mutate(type="ATE", studyid="Pooled", country="", continuous=1)
dATE$adjusted = 1
dATE$pooled = 1

head(dZ_PAR)
dZ_PAR <- dZ_PAR %>% rename(estimate=PAR, ci_lower=CI1, ci_upper=CI2) %>% mutate(type="PAR", studyid="Pooled", country="", continuous=1)
dZ_PAR$adjusted = 1
dZ_PAR$pooled = 1

head(dPAF)
dPAF <- dPAF %>% rename(estimate=PAF, ci_lower=PAF.CI1, ci_upper=PAF.CI2) %>% mutate(type="PAF", studyid="Pooled", country="", continuous=0)
dPAF$adjusted = 1
dPAF$pooled = 1


df <- bind_rows(dRR, dATE, dZ_PAR, dPAF, d)

unique(df$type)
df <- df %>% filter(type=="RR" | type=="ATE" | type=="PAR" | type=="PAF")
df <- df %>% select("agecat","studyid","country","strata_label","adjustment_set","intervention_variable", "outcome_variable","type","parameter","intervention_level","baseline_level","region","continuous","adjusted", "pooled", "estimate",   "ci_lower", "ci_upper")


#Clean up dataframe 
df <- RMA_clean(df)


#remove grant identifiers from studyid
df$studyid <- gsub("^k.*?-" , "", df$studyid)

#Cohort specific ids
df$country[df$country=="TANZANIA, UNITED REPUBLIC OF"] <- "TANZANIA"
df$country <- capitalize(tolower(df$country))
df$country[df$country=="South africa"] <- "South Africa"
df$country[df$country=="Guinea-bissau"] <- "Guinea-Bissau"
df$country[df$country=="Burkina faso"] <- "Burkina Faso"

df$studyid <- paste0(df$studyid, ", ", df$country)
df$studyid <- gsub("Pooled,","Pooled",df$studyid)

dput(as.character(unique(df$intervention_variable)))
df$intervention_variable <- factor(df$intervention_variable, levels=c("birthwt", "sex", "brthmon", "month", "gagebrth", "birthlen", 
                                                                       "enwast", "vagbrth", "hdlvry", "mage", "fage", "mhtcm", "mwtkg", 
                                                                      "mbmi", "single", "fhtcm", "nrooms", "nhh", "nchldlt5", "hhwealth_quart", 
                                                                      "parity", "meducyrs", "feducyrs", "hfoodsec", "anywast06", "pers_wast", 
                                                                      "cleanck", "impfloor", "impsan", "safeh20", "perdiar6", "perdiar24", 
                                                                      "predexfd6", "earlybf", "lag_WHZ_quart"))

dput(as.character(unique(df$outcome_variable)))
df$outcome_variable <- factor(df$outcome_variable, c("sstunted", "stunted", "ever_stunted", "ever_co", "ever_wasted", 
                                                     "wasted", "ever_swasted", "pers_wast", "wast_rec90d", "swasted", 
                                                     "ever_sstunted", "y_rate_haz", "y_rate_len", "haz", "y_rate_wtkg", 
                                                     "whz", "dead", "co_occurence", "pers_wasted624"))

dput(as.character(unique(df$type)))
df$type <- factor(df$type)

dput(as.character(unique(df$agecat)))
df$agecat <- factor(df$agecat, levels = c( "0-24 months", "Birth", "6 months", "24 months","0-6 months", 
                                          "6-24 months", "12 months", "15 months", "18 months", "21 months", 
                                          "3 months", "9 months", "3-6 months", "6-9 months", "9-12 months", 
                                          "12-15 months", "15-18 months"))

df$pooled <- factor(df$pooled, levels=c("1","0"))
df <- df %>% arrange(pooled, studyid)

unique(df$region)
df$region <- factor(df$region, levels = c("Pooled","South Asia","Africa","Latin America","N.America & Europe"))

head(df)
df <- df %>% select("agecat", "studyid", "country", "adjustment_set", 
                    "intervention_variable", "outcome_variable", "type", 
                    "intervention_level", "baseline_level", "region", "continuous", 
                    "adjusted", "pooled", "estimate", "ci_lower", "ci_upper", "RFlabel")



unique(df$intervention_variable)
df  = df %>% filter(!(intervention_variable %in% c("lag_WHZ_quart"))) %>%
  mutate(intervention_variable = case_when(
  intervention_variable == "sex" ~  "Sex",
  intervention_variable == "enwast"~  "Enrolled wasted",
  intervention_variable == "gagebrth"~  "Gestational age at birth",
  intervention_variable == "predexfd6"~  "Excl/Pred breastfed <6mo.",
  intervention_variable == "mage"~ "Mother's age",
  intervention_variable == "mhtcm"~ "Mother's height" ,
  intervention_variable == "mwtkg"~ "Mother's weight" ,
  intervention_variable == "mbmi"~ "Mother's BMI" ,
  intervention_variable == "meducyrs"~ "Mother's education" ,
  intervention_variable == "feducyrs"~ "Father's education" ,
  intervention_variable == "parity"~  "Birth order" ,
  intervention_variable == "hfoodsec"~ "HH food security", 
  intervention_variable == "nchldlt5"~   "# of children <5 in HH",
  intervention_variable == "hhwealth_quart"~  "HH wealth" ,
  intervention_variable == "fage"~ "Father's age" ,
  intervention_variable == "fhtcm"~ "Father's height", 
  intervention_variable == "birthwt"~ "Birth weight (kg)", 
  intervention_variable == "birthlen"~ "Birth length (cm)", 
  intervention_variable == "vagbrth"~ "Vaginal birth" ,
  intervention_variable == "hdlvry"~ "Child delivered at home" ,
  intervention_variable == "single"~ "Single parent" ,
  intervention_variable == "nrooms"~ "# of rooms in HH", 
  intervention_variable == "nhh"~ "# of people in HH" ,
  intervention_variable == "anywast06"~ "Any wasting  <6 mo.", 
  intervention_variable == "pers_wast"~ "Persistent wasting  <6 mo.", 
  intervention_variable == "cleanck"~ "Clean cooking fuel usage", 
  intervention_variable == "impfloor"~ "Improved floor" ,
  intervention_variable == "impsan"~ "Improved sanitation", 
  intervention_variable == "safeh20"~ "Safe water source" ,
  intervention_variable == "perdiar6"~ "Diarrhea <6 mo. (% days)", 
  intervention_variable == "perdiar24"~ "Diarrhea <24 mo.  (% days)", 
  intervention_variable == "earlybf"~ "Breastfed hour after birth", 
  intervention_variable == "month"~  "Month of measurement",
  intervention_variable == "brthmon"~  "Birth month",
  intervention_variable == "lag_WHZ_quart"~  "Mean WHZ in the prior 3 mo."))

df$intervention_variable <- factor(df$intervention_variable)


unique(df$outcome_variable)
df  = df %>% mutate(outcome_variable = case_when(
  outcome_variable == "sstunted" ~ "Prevalence of severe stunting",
  outcome_variable == "stunted" ~ "Prevalence of stunting",
  outcome_variable == "ever_stunted" ~ "Cumulative incidence of stunting",
  outcome_variable == "ever_sstunted" ~ "Cumulative incidence of severe stunting",
  outcome_variable == "ever_wasted" ~ "Cumulative incidence of wasting",
  outcome_variable == "pers_wast" ~ "Prevalence of persistent wasting",
  outcome_variable == "wast_rec90d" ~ "Wasting recovery",
  outcome_variable == "swasted" ~ "Prevalence of severe wasting",
  outcome_variable == "wasted" ~ "Prevalence of wasting",
  outcome_variable == "ever_co" ~ "Cumulative incidence of the co-occurance of stunting and wasting",
  outcome_variable == "ever_swasted" ~ "Cumulative incidence of severe wasting",
  outcome_variable == "dead" ~ "Deceased",
  outcome_variable == "co_occurence" ~ "Prevalence of the co-occurance of stunting and wasting",
  outcome_variable == "pers_wast624" ~ "Persistently wasted 624",
  outcome_variable == "haz" ~ "Length-for-age Z-score",
  outcome_variable == "whz" ~ "Weight-for-length Z-score",
  outcome_variable == "y_rate_haz" ~ "Length-for-age Z-score change",
  outcome_variable == "y_rate_len" ~ "Length velocity (cm)",
  outcome_variable == "y_rate_wtkg" ~ "Weight velocity (kg)"
))


df$outcome_variable <- factor(df$outcome_variable, levels = c("Prevalence of stunting", "Prevalence of severe stunting",
                                "Cumulative incidence of stunting", "Cumulative incidence of severe stunting",
                                "Prevalence of wasting", "Prevalence of severe wasting",
                                "Cumulative incidence of wasting", "Cumulative incidence of severe wasting",
                                "Prevalence of persistent wasting", "Persistently wasted 624", 
                                "Wasting recovery",
                                "Prevalence of the co-occurance of stunting and wasting", 
                                "Cumulative incidence of the co-occurance of stunting and wasting",
                                "Length-for-age Z-score","Weight-for-length Z-score",
                                "Length-for-age Z-score change","Length velocity (cm)", "Weight velocity (kg)",
                                "Deceased"))

df  = df %>% mutate(type = case_when(
  type == "ATE" ~ "Average Treatment Effect",
  type == "RR" ~ "Relative Risk",
  type == "PAR" ~ "Population Attributable Risk",
  type == "PAF" ~ "Population Attributable Fraction"))

df$type <- factor(df$type)


df <- droplevels.data.frame(df)
table(df$agecat, df$outcome_variable)

saveRDS(df, paste0(here::here(),"/7-cc-shiny-app/shiny_rf_results.rds"))



# library(rsconnect)
# rsconnect::deployApp('C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/6-shiny-app/RF app')
