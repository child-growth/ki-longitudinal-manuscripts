
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
d$RE <- 2


dRR <- readRDS(paste0(here::here(),"/results/rf results/pooled_RR_results.rds"))
dATE <- readRDS(paste0(here::here(),"/results/rf results/pooled_ATE_results.rds"))
dZ_PAR <- readRDS(paste0(here::here(),"/results/rf results/pooled_Zscore_PAR_results.rds"))
dPAF <- readRDS(paste0(here::here(),"/results/rf results/pooled_PAF_results.rds"))

dRR_FE <- readRDS(paste0(here::here(),"/results/rf results/pooled_RR_FE_results.rds"))
dATE_FE <- readRDS(paste0(here::here(),"/results/rf results/pooled_ATE_results_FE.rds"))
dZ_PAR_FE <- readRDS(paste0(here::here(),"/results/rf results/pooled_Zscore_PAR_results_FE.rds"))
dPAF_FE <- readRDS(paste0(here::here(),"/results/rf results/pooled_PAF_results_FE.rds"))

dRR_unadj <- readRDS(paste0(here::here(),"/results/rf results/pooled_RR_results_unadj.rds"))
dATE_unadj <- readRDS(paste0(here::here(),"/results/rf results/pooled_ATE_results_unadj.rds"))
dZ_PAR_unadj <- readRDS(paste0(here::here(),"/results/rf results/pooled_Zscore_PAR_results_unadj.rds"))
dPAF_unadj <- readRDS(paste0(here::here(),"/results/rf results/pooled_PAF_results_unadj.rds"))

dRR_unadj_FE <- readRDS(paste0(here::here(),"/results/rf results/pooled_RR_results_unadj_FE.rds"))
dATE_unadj_FE <- readRDS(paste0(here::here(),"/results/rf results/pooled_ATE_results_unadj_FE.rds"))
dZ_PAR_unadj_FE <- readRDS(paste0(here::here(),"/results/rf results/pooled_Zscore_PAR_results_unadj_FE.rds"))
dPAF_unadj_FE <- readRDS(paste0(here::here(),"/results/rf results/pooled_PAF_results_unadj_FE.rds"))





head(d)
head(dRR)

dRR <- dRR %>% rename(estimate=RR, ci_lower=RR.CI1, ci_upper=RR.CI2) %>% mutate(type="RR", studyid="Pooled", country="", continuous=0) %>% mutate(adjusted = 1, pooled = 1, RE = 1)
dRR_unadj <- dRR_unadj %>% rename(estimate=RR, ci_lower=RR.CI1, ci_upper=RR.CI2) %>% mutate(type="RR", studyid="Pooled", country="", continuous=0) %>% mutate(adjusted = 0, pooled = 1, RE = 1)
dRR_FE <- dRR_FE %>% rename(estimate=RR, ci_lower=RR.CI1, ci_upper=RR.CI2) %>% mutate(type="RR", studyid="Pooled", country="", continuous=0) %>% mutate(adjusted = 1, pooled = 1, RE = 0)
dRR_unadj_FE <- dRR_unadj_FE %>% rename(estimate=RR, ci_lower=RR.CI1, ci_upper=RR.CI2) %>% mutate(type="RR", studyid="Pooled", country="", continuous=0) %>% mutate(adjusted = 0, pooled = 1, RE = 0)


head(dATE)
dATE <- dATE %>% rename(estimate=ATE, ci_lower=CI1, ci_upper=CI2) %>% mutate(type="ATE", studyid="Pooled", country="", continuous=1) %>% mutate(adjusted = 1, pooled = 1, RE = 1)
dATE_unadj <- dATE_unadj %>% rename(estimate=ATE, ci_lower=CI1, ci_upper=CI2) %>% mutate(type="ATE", studyid="Pooled", country="", continuous=1) %>% mutate(adjusted = 0, pooled = 1, RE = 1)
dATE_FE <- dATE_FE %>% rename(estimate=ATE, ci_lower=CI1, ci_upper=CI2) %>% mutate(type="ATE", studyid="Pooled", country="", continuous=1) %>% mutate(adjusted = 1, pooled = 1, RE = 0)
dATE_unadj_FE <- dATE_unadj_FE %>% rename(estimate=ATE, ci_lower=CI1, ci_upper=CI2) %>% mutate(type="ATE", studyid="Pooled", country="", continuous=1) %>% mutate(adjusted = 0, pooled = 1, RE = 0)


head(dZ_PAR)
dZ_PAR <- dZ_PAR %>% rename(estimate=PAR, ci_lower=CI1, ci_upper=CI2) %>% mutate(type="PAR", studyid="Pooled", country="", continuous=1) %>% mutate(adjusted = 1, pooled = 1, RE = 1)
dZ_PAR_unadj <- dZ_PAR_unadj %>% rename(estimate=PAR, ci_lower=CI1, ci_upper=CI2) %>% mutate(type="PAR", studyid="Pooled", country="", continuous=1) %>% mutate(adjusted = 0, pooled = 1, RE = 1)
dZ_PAR_FE <- dZ_PAR_FE %>% rename(estimate=PAR, ci_lower=CI1, ci_upper=CI2) %>% mutate(type="PAR", studyid="Pooled", country="", continuous=1) %>% mutate(adjusted = 1, pooled = 1, RE = 0)
dZ_PAR_unadj_FE <- dZ_PAR_unadj_FE %>% rename(estimate=PAR, ci_lower=CI1, ci_upper=CI2) %>% mutate(type="PAR", studyid="Pooled", country="", continuous=1) %>% mutate(adjusted = 0, pooled = 1, RE = 0)

head(dPAF)
dPAF <- dPAF %>% rename(estimate=PAF, ci_lower=PAF.CI1, ci_upper=PAF.CI2) %>% mutate(type="PAF", studyid="Pooled", country="", continuous=0) %>% mutate(adjusted = 1, pooled = 1, RE = 1)
dPAF_unadj <- dPAF_unadj %>% rename(estimate=PAF, ci_lower=PAF.CI1, ci_upper=PAF.CI2) %>% mutate(type="PAF", studyid="Pooled", country="", continuous=0) %>% mutate(adjusted = 0, pooled = 1, RE = 1)
dPAF_FE <- dPAF_FE %>% rename(estimate=PAF, ci_lower=PAF.CI1, ci_upper=PAF.CI2) %>% mutate(type="PAF", studyid="Pooled", country="", continuous=0) %>% mutate(adjusted = 1, pooled = 1, RE = 0)
dPAF_unadj_FE <- dPAF_unadj_FE %>% rename(estimate=PAF, ci_lower=PAF.CI1, ci_upper=PAF.CI2) %>% mutate(type="PAF", studyid="Pooled", country="", continuous=0) %>% mutate(adjusted = 0, pooled = 1, RE = 0)



df <- bind_rows(dRR, 
                dATE, 
                dZ_PAR, 
                dPAF, 
                dRR_unadj, 
                dATE_unadj, 
                dZ_PAR_unadj, 
                dPAF_unadj, 
                dRR_FE, 
                dATE_FE, 
                dZ_PAR_FE, 
                dPAF_FE, 
                dRR_unadj_FE, 
                dATE_unadj_FE, 
                dZ_PAR_unadj_FE, 
                dPAF_unadj_FE, 
                d) 
                

unique(df$type)
df <- df %>% filter(type=="RR" | type=="ATE" | type=="PAR" | type=="PAF")
df <- df %>% select("agecat","studyid","country","strata_label","adjustment_set","intervention_variable", "outcome_variable","type","parameter","intervention_level","baseline_level","region","continuous","RE","adjusted", "pooled", "estimate",   "ci_lower", "ci_upper")

#Fill in attributable parameter baseline levels
df$baseline_level[df$type=="PAR" | df$type=="PAF"] <- df$intervention_level[df$type=="PAR" | df$type=="PAF"]

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


df$pooled <- factor(df$pooled, levels=c("1","0"))
df <- df %>% arrange(pooled, studyid)

head(df)
df <- df %>% select("agecat", "studyid", "country", "adjustment_set", 
                    "intervention_variable", "outcome_variable", "type", 
                    "intervention_level", "baseline_level", "region", "continuous", 
                    "adjusted", "RE", "pooled", "estimate", "ci_lower", "ci_upper", "RFlabel")




var_key = read.csv("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/data/C&C Variable Transformation.csv")

intervention_levels = levels(df$intervention_variable)

df <- df %>%
  dplyr::mutate(intervention_variable = df %>% left_join(var_key, by = c("intervention_variable" = "variable")) %>%
                  replace_na(list(variable.type = "exposure")) %>%
                  filter(variable.type == "exposure") %>%
                  pull("description")) %>%
  
  dplyr::mutate(outcome_variable = df %>% left_join(var_key, by = c("outcome_variable" = "variable")) %>%
                  replace_na(list(variable.type = "outcome")) %>%
                  filter(variable.type == "outcome") %>%
                  pull("description"))

df$intervention_variable = factor(df$intervention_variable)
df$outcome_variable = factor(df$outcome_variable)

# Set order for outcome
outcome_levels = c("Cumulative incidence of stunting", "Cumulative incidence of severe stunting",
                   "Cumulative incidence of wasting", "Cumulative incidence of severe wasting",
                   "Prevalence of stunting", "Prevalence of severe stunting",
                   "Prevalence of wasting", "Prevalence of severe wasting",
                   "Prevalence of persistent wasting", "Persistently wasted 624",
                   "Wasting recovery",
                   "Prevalence of the co-occurance of stunting and wasting",
                   "Cumulative incidence of the co-occurance of stunting and wasting",
                   "Deceased", "Unspecified")
df$outcome_variable = factor(df$outcome_variable, levels = unique(c(outcome_levels, !(levels(df$outcome_variable) %in% outcome_levels))))



# Set order for exposure
intervention_var_levels = c("Birth weight (kg)", "Sex", "# of children <5 in HH", "# of people in HH", "# of rooms in HH",
                            "Any wasting <6 mo.", "Birth length (cm)", "Birth month",
                            "Birth order","Breastfed hour after birth",
                            "Child delivered at home", "Clean cooking fuel usage", "Diarrhea <24 mo. (% days)",
                            "Diarrhea <6 mo. (% days)", "Enrolled wasted", "Excl/Pred breastfed <6mo.",
                            "Father's age", "Father's education", "Father's height",
                            "Gestational age at birth", "HH food security", "HH wealth",
                            "Improved floor", "Improved sanitation", "Mean WHZ in the prior 3 mo.",
                            "Month of measurement", "Mother's age", "Mother's BMI",
                            "Mother's education","Mother's height", "Mother's weight",
                            "Persistent wasting <6 mo.", "Safe water source", 
                            "Single parent", "Vaginal birth", "Rain quartile")
df$intervention_variable = factor(df$intervention_variable, levels = unique(c(intervention_var_levels, !(levels(df$intervention_variable) %in% intervention_var_levels))))

# Set order for parameter
df  = df %>% mutate(type = case_when(
  type == "ATE" ~ "Average Treatment Effect",
  type == "RR" ~ "Relative Risk",
  type == "PAR" ~ "Population Attributable Risk",
  type == "PAF" ~ "Population Attributable Fraction"))

df$type <- factor(df$type, levels = c("Relative Risk", "Average Treatment Effect", "Population Attributable Fraction",
                                      "Population Attributable Risk"))

# Set order for age category
agecat_levels = c("0-24 months", "24 months",  "Birth", "6 months", "0-6 months", "6-24 months", "12 months",
                  "15 months", "18 months", "21 months", "3 months", "9 months", "3-6 months", "6-9 months",
                  "9-12 months", "12-15 months", "15-18 months", "Unspecified")
df$agecat = factor(df$agecat, levels = unique(c(agecat_levels, !(levels(df$agecat) %in% agecat_levels))))

levels(df$region) = c("Pooled", "South Asia", "Africa", "Latin America", "N.America & Europe")

df = df %>% replace_na(list(outcome_variable = "Unspecified", agecat = "Unspecified"))


spline_variables =  list.files(path = "figures/risk factor/Splines/HAZ/")
spline_variables <- data_frame(spline_vars = (spline_variables %>% gsub("haz_stat_by_", "", ., perl = TRUE) %>% gsub(".png", "", ., perl = TRUE)))
spline_variables$spline_vars_raw = spline_variables$spline_vars
spline_variables <- spline_variables %>% mutate(spline_vars = (spline_variables %>% left_join(var_key, by = c("spline_vars" = "variable")) %>%
                                                                 replace_na(list(variable.type = "exposure")) %>%
                                                                 filter(variable.type == "exposure") %>%
                                                                 pull("description")))
spline_variables

saveRDS(df, paste0(here::here(),"/7-cc-shiny-app/shiny_rf_results.rds"))
saveRDS(spline_variables, paste0(here::here(),"/7-cc-shiny-app/spline_variables.rds"))




