

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(table1)
library(flextable)
library(magrittr)

dfull <- readRDS(file="/data/KI/UCB-SuperLearner/Manuscript analysis data/ki-country-metric-categories_wasting.rds")
colnames(dfull)


df <- dfull %>% subset(., select = c(studyid,          subjid,           country,         
                                     brthyr,           region,           decade,           gdp_cat,         
                                     gdi_cat,          gii_cat,          chi_cat,         
                                     gini_cat,         he_cat,           pov_cat,         
                                     mort_cat)) %>% distinct()



df <- df %>% 
  mutate(gdi_cat = case_when(
    gdi_cat == "Overall" ~ "Overall",
    gdi_cat == "Very low" ~ "69-84%",
    gdi_cat == "Low" ~ "84-90%",
    gdi_cat == "High/Medium" ~ "90-100%"),
    gdi_cat = factor(gdi_cat, levels = c(
    "Overall", "69-84%", "84-90%", "90-100%"
    )),
    gii_cat = case_when(
    gii_cat == "Overall" ~ "Overall",
    gii_cat == "Low" ~ "0.43-0.59",
    gii_cat == "Medium" ~ "0.59-0.61",
    gii_cat == "High" ~ "0.61-0.76"
  ),
  gii_cat = factor(gii_cat, levels = c(
    "Overall", "0.43-0.59", "0.59-0.61", "0.61-0.76"
  )),
  he_cat = case_when(
    he_cat == "Overall" ~ "Overall",
    he_cat == "Low" ~ "0-4.4%",
    he_cat == "Medium" ~ "4.5-5.5%",
    he_cat == "High" ~ ">5.5%"
  ),
  he_cat = factor(he_cat, levels = c(
    "Overall", "0-4.4%", "4.5-5.5%", ">5.5%"
  )),
  pov_cat = case_when(
    pov_cat == "Overall" ~ "Overall",
    pov_cat == "Low" ~ "0-18%",
    pov_cat == "Medium" ~ "18-51%",
    pov_cat == "High" ~ "51-100%"
  ), pov_cat = factor(pov_cat, levels = c(
    "Overall", "0-18%", "18-51%", "51-100%"
  )))



df$region <- recode_factor(df$region, `N.America & Europe` = "Europe")
df$region <- factor(df$region, levels = c( "Africa", "South Asia", "Latin America", "Europe" ))
wastdf <- df %>% filter(studyid %in% monthly_and_quarterly_cohorts) %>% subset(., select = c(studyid, subjid, region, decade, gdp_cat,         
                                                                                              gdi_cat, gii_cat, chi_cat,         
                                                                                              gini_cat, he_cat, pov_cat,         
                                                                                              mort_cat)) %>%
  distinct() %>% subset(., select = -c(studyid, subjid)) %>%
  rename(Region=region, 
         Decade=decade, 
         `Gross domestic product per capita`=gdp_cat,         
         `Gender development index`=gdi_cat, 
         `Gender inequality index`=gii_cat, 
         `Coefficient of human inequality`=chi_cat,         
         `GINI coefficient`=gini_cat, 
         `Total expenditure on health (% of GDP)`=he_cat, 
         `% living 0n below $1.90 per day`=pov_cat,         
         `Child mortality rate under 5`=mort_cat)

tab2 <- table1(~. |Region , format_number = TRUE, data=wastdf)
t1flex(tab2) %>% 
  fit_to_width(max_width = 7) %>%
  save_as_docx(path=paste0(here::here(),"/tables/Wasting_country_balance_table.docx"))

