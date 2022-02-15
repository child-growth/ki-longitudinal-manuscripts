
rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))

load(paste0(ghapdata_dir, "Underweight_inc_rf_data.RData"))

#load covariates
cov<-readRDS(paste0(ghapdata_dir,"FINAL_clean_covariates.rds"))

head(d)
cov <- cov %>% 
  subset(., select = c(studyid, subjid, birthwt, gagebrth)) %>% 
  filter(!is.na(birthwt) | !is.na(gagebrth)) %>% droplevels()

d <- left_join(d, cov,by=c("studyid", "subjid"))
d$gagebrth <- factor(d$gagebrth, levels = c("Full or late term","Early term","Preterm"))

table(d$studyid, d$birthwt)
table(d$studyid, d$birthwt, d$measurefreq)

table(d$studyid, d$gagebrth)
table(d$studyid, d$gagebrth, d$measurefreq)

table(d$studyid, d$gagebrth, d$region)
table(d$studyid, d$birthwt, d$gagebrth)

#Quarterly
d6 <- calc.ci.agecat(d, range = 6)

#functions
tabulate_function <- function(df){
  tab1 <- table(df$birthwt)
  tab2 <- round(prop.table(table(df$birthwt))*100, 1)
  levels <- names(tab1)
  Ns <- c(paste0(tab1[1], " (", tab2[1],"%)"),
          paste0(tab1[2], " (", tab2[2],"%)"))
  tab_birthwt <- data.frame(`Birth weight`=levels, N=Ns)
  
  
  tab1 <- table(df$gagebrth)
  tab2 <- round(prop.table(table(df$gagebrth))*100, 1)
  levels <- names(tab1)
  Ns <- c(paste0(tab1[1], " (", tab2[1],"%)"),
          paste0(tab1[2], " (", tab2[2],"%)"),
          paste0(tab1[3], " (", tab2[3],"%)"))
  tab_gagebrth <- data.frame(`Gestational age`=levels, N=Ns)
  
  return(list(tab_birthwt=tab_birthwt, tab_gagebrth=tab_gagebrth))
}

tabulate_wrapper_function <- function(df){
  overall <- tabulate_function(df)
  africa <- tabulate_function(df %>% filter(region=="Africa"))
  asia <- tabulate_function(df%>% filter(region=="South Asia"))
  return(list(overall=overall, africa=africa, asia=asia))
}


#Overall numbers:
d6 <- calc.ci.agecat(d, range = 6)
df <- d6 %>% filter(agecat=="0-6 months") %>%
  group_by(studyid, country, subjid) %>% slice(1)

overall <- tabulate_wrapper_function(df)
overall_monthly <- tabulate_wrapper_function(df %>% filter(measurefreq == "monthly"))

#Underweight
df <- d6 %>% filter(agecat=="0-6 months") %>%
  group_by(studyid, country, subjid) %>%
  filter(max(wast)==1) %>% slice(1)

underweight <- tabulate_wrapper_function(df)
underweight_monthly <- tabulate_wrapper_function(df %>% filter(measurefreq == "monthly"))




#----------------------------------------------------------
# wasting
#----------------------------------------------------------

load(paste0(ghapdata_dir, "Wasting_inc_rf_data.RData"))

#load covariates
cov<-readRDS(paste0(ghapdata_dir,"FINAL_clean_covariates.rds"))

head(d)
cov <- cov %>%
  subset(., select = c(studyid, subjid, birthwt, gagebrth)) %>%
  filter(!is.na(birthwt) | !is.na(gagebrth)) %>% droplevels()

d <- left_join(d, cov,by=c("studyid", "subjid"))
d$gagebrth <- factor(d$gagebrth, levels = c("Full or late term","Early term","Preterm"))


#Quarterly
d6 <- calc.ci.agecat(d, range = 6)

df <- d6 %>% filter(agecat=="0-6 months") %>%
  group_by(studyid, country, subjid) %>%
  filter(max(wast)==1) %>% slice(1)

wasting <- tabulate_wrapper_function(df)
wasting_monthly <- tabulate_wrapper_function(df %>% filter(measurefreq == "monthly"))


save(overall,overall_monthly, 
     underweight,underweight_monthly, 
     wasting,wasting_monthly, 
     file=paste0(figdata_dir_underweight,"Uwt_u6_strat_tabs.Rdata"))
