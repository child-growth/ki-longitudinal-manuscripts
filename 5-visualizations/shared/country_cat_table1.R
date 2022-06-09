

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(table1)
library(flextable)
library(magrittr)

dfull <- readRDS(file="/data/KI/UCB-SuperLearner/Manuscript analysis data/ki-country-metric-categories.rds")
colnames(dfull)


df <- dfull %>% subset(., select = c(studyid,          subjid,           country,         
                                     brthyr,           region,           decade,           gdp_cat,         
                                     gdi_cat,          gii_cat,          chi_cat,         
                                     gini_cat,         he_cat,           pov_cat,         
                                     mort_cat
)) %>% distinct()
saveRDS(df, paste0(here::here(),"/data/country_category_balance_tab.rds"))

#NOTE! Need to check that its subset to HAZ observations first

#-------------------------------------------------------------------------------
# XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
#-------------------------------------------------------------------------------
df <- readRDS(paste0(here::here(),"/data/country_category_balance_tab.rds"))
unique(df$studyid)
table(df$gdi_cat)
table(df$gii_cat)

stuntdf <- df %>% filter(studyid %in% monthly_and_quarterly_cohorts) %>% subset(., select = c(studyid, subjid, region, decade, gdp_cat,         
                                                                                              gdi_cat, gii_cat, chi_cat,         
                                                                                              gini_cat, he_cat, pov_cat,         
                                                                                              mort_cat)) %>%
  distinct() %>% subset(., select = -c(studyid, subjid)) %>%
  mutate(gdi_cat=factor(gdi_cat, levels=rev(c("High/Medium","Low","Very low"))),
         gii_cat=factor(gii_cat, levels=rev(c("High","Medium","Low"))),
         chi_cat=factor(chi_cat, levels=rev(c("High","Medium","Low")))
         ) %>%
  rename(Region=region, 
         Decade=decade, 
         `Gross domestic product per capita`=gdp_cat,         
         `Gender development index`=gdi_cat, 
         `Gender inequality index`=gii_cat, 
         `Coefficient of human inequality`=chi_cat,         
         `GINI coefficient`=gini_cat, 
         `Health expenditure per capita`=he_cat, 
         `% living 0n below $1.90 per day`=pov_cat,         
         `Child mortality rate under 5`=mort_cat)

tab2 <- table1(~. |Region , format_number = TRUE, data=stuntdf)
t1flex(tab2) %>% 
  fit_to_width(max_width = 7) %>%
  save_as_docx(path=paste0(here::here(),"/tables/Stunting_country_balance_table.docx"))

