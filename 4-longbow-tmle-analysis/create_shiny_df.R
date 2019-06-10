
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

d <- rbind(d_adj, d_unadj)
d$pooled <- 0


dRR <- readRDS(paste0(here::here(),"/results/rf results/pooled_RR_results.rds"))

head(d)
head(dRR)

dRR <- dRR %>% rename(estimate=RR, ci_lower=RR.CI1, ci_upper=RR.CI2) %>% mutate(type="RR", studyid="Pooled", country="", continuous=0)

dRR$adjusted = 1
dRR$pooled = 1


df <- bind_rows(dRR, d)

df <- df %>% filter(type=="RR" | type=="ATE")
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
df$outcome_variable <- factor(df$outcome_variable, levels=c("ever_stunted","stunted", "sstunted",  "ever_sstunted", "wasted", 
                                                            "swasted", "wast_rec90d", "ever_wasted", "ever_swasted", "pers_wast", 
                                                            "ever_co", "dead", "co_occurence", "pers_wasted624"))

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

saveRDS(df, paste0(here::here(),"/6-shiny-app/RF app/shiny_rf_results.rds"))



# library(rsconnect)
# rsconnect::deployApp('C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/6-shiny-app/RF app')
