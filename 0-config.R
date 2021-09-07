#-------------------------------------
# ki longitudinal analysis manuscripts

# configure data directories
# source base functions
# load libraries
#-------------------------------------
kiPath <- c("/data/KI/R/x86_64-pc-linux-gnu-library/4.0/" , .libPaths())
.libPaths(kiPath)

#suppress grouping messages
options(dplyr.summarise.inform=F) 

library(tidyverse)
library(here)
library(ggplot2)
library(ggpubr)
library(ggnewscale)
#library(dplyr)
library(gridExtra)
library(reshape2)
library(metafor)
library(data.table)
library(viridis)
library(ggthemes)
library(maps)
library(FField)
library(ggridges)
library(ggridges)
library(RColorBrewer)
library(gridExtra)
library(assertthat)
# library(haven)
#library(tidyselect)
# options(repos = c(CRAN = "http://cran.rstudio.com/",
#                   deltarho = "http://packages.deltarho.org"))
library(stringr)
library(mgcv)
library(grid)
library(lazyeval)
#library(rlang)
library(scales)
library(xtable)


# for parallel computing 
# (will need to configure in each script)
library(foreach)
library(doParallel)
library(survey)
# install.packages("bit64")
library(bit64)
library(zoo)



# Define directories
# results that can be pushed to github:
#res_dir                           = here::here("results/")
res_dir                           = "data/KI/ki-manuscript-output/results/"


# results that cannot be pushed to github:
res_bluevelvet_dir                = "/data/KI/UCB-SuperLearner/ki-results/"

#dhs_res_dir                       = here::here("results", "dhs")
dhs_res_dir                       = "/data/KI/ki-manuscript-output/results/dhs/"

#data_dir                          = here::here("data")
data_dir                           = "/data/KI/ki-manuscript-output/data/"
res_dir                           = "/data/KI/ki-manuscript-output/results/"

metadata_dir                      = "U:/results/Metadata/"


#ghapdata_dir                      = "/home/andrew.mertens/data/KI/UCB-SuperLearner/Manuscript analysis data/"
ghapdata_dir                      = "/data/KI/UCB-SuperLearner/Manuscript analysis data/"

#Bluevelvet directory
BV_dir                           = "/data/KI/ki-manuscript-output/"


project_functions_dir             = paste0(here::here(),"/0-project-functions")
data_cleaning_dir                 = paste0(here::here(),"/1-data-cleaning")
descriptive_outcomes_dir          = paste0(here::here(),"/2-descriptive-outcomes")
prep_tmle_analysis_dir            = paste0(here::here(),"/3-prep-tmle-analysis")
longbow_tmle_analysis_dir         = paste0(here::here(),"/4-longbow-tmle-analysis")
visualizations_dir                = paste0(here::here(),"/5-visualizations")
shiny_app_dir                     = paste0(here::here(),"/6-shiny-app")
cc_shiny_app_dir                  = paste0(here::here(),"/7-cc-shiny-app")

#Set cohort data file path
cohortdata_dir                    = paste0(ghapdata_dir, "cleaned individual study datasets/")
deriveddata_dir                   = paste0(ghapdata_dir, "covariate creation intermediate datasets/derived covariate datasets/")

# note: figures must be saved in same directory
# as shiny app in order to publish it
# fig_dir                           = paste0(here::here(),"/figures/")
# figdata_dir_stunting              = paste0(here::here(),"/figures/stunting/figure-data/")
# figdata_dir_wasting               = paste0(here::here(),"/figures/wasting/figure-data/")
BV_dir                           = "/data/KI/ki-manuscript-output"
fig_dir                           = "/data/KI/ki-manuscript-output/figures/"
figdata_dir_stunting              = paste0(fig_dir,"stunting/figure-data/")
figdata_dir_wasting               = paste0(fig_dir,"wasting/figure-data/")


#################################
# Data Cleaning Scripts
included_studies_path             = paste0(ghapdata_dir, "FINAL_only_included_studies.rds")
temp_clean_covariates_path        = paste0(ghapdata_dir, "FINAL_temp_clean_covariates.rds")
clean_covariates_path             = paste0(ghapdata_dir,"FINAL_clean_covariates.rds")
ki_manuscript_dataset_path        = paste0(ghapdata_dir,"ki-manuscript-dataset.rds")
mortality_path                    = paste0(ghapdata_dir,"mortality.rds")
mortality_age_path                = paste0(ghapdata_dir,"mortality_age.rds")
rf_stunting_data_path             = paste0(ghapdata_dir, "rf_stunting_data.rds")
rf_wasting_data_path              = paste0(ghapdata_dir, "rf_wasting_data.rds")
rf_underweight_path               = paste0(ghapdata_dir, "rf_underweight_data.rds")
rf_co_occurrence_path             = paste0(ghapdata_dir, "rf_co_occurrence_data.rds")
stunting_data_path                = paste0(ghapdata_dir, "stunting_data.rds")
wasting_data_path                 = paste0(ghapdata_dir, "wasting_data.rds")
underweight_data_path             = paste0(ghapdata_dir, "underweight_data.rds")
co_occurrence_data_path           = paste0(ghapdata_dir, "co_occurrence_data.rds")
clean_DHS_haz_path                  = paste0(dhs_res_dir, "clean-DHS-haz.rds")
clean_DHS_waz_path                  = paste0(dhs_res_dir, "clean-DHS-waz.rds")
clean_DHS_whz_path                  = paste0(dhs_res_dir, "clean-DHS-whz.rds")
dhs_quantiles_path                  = paste0(dhs_res_dir, "/dhs_quantiles.rds")
seasonality_data_path               = paste0(ghapdata_dir,"seasonality_data.rds")
HBDGki_CONSORT_inclusion_Ns_path    = paste0(res_dir, "HBGDki_CONSORT_inclusion_Ns.rds")
metadata_GHAP_metadata_wasting_path = paste0(metadata_dir, "GHAP_metadata_wasting.RDS")
results_GHAP_metadata_wasting_path  = paste0(res_dir, "GHAP_metadata_wasting.RDS")
metadata_GHAP_metadata_stunting_path = paste0(metadata_dir, "GHAP_metadata_stunting.RDS")
results_GHAP_metadata_stunting_path  = paste0(res_dir, "GHAP_metadata_stunting.RDS")
metadata_GHAP_metadata_stunting_xlsx_path = paste0(metadata_dir, "GHAP_metadata_stunting.xlsx")
icc_res_path                          = paste0(res_dir,"icc_res.rds")
test_data_path                       = "C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/data/simulated test data/testdata.rds"
asset_PCA_allstudies_path       = paste0(project_functions_dir, "1_assetPCA-allstudies.R")

filenames = paste0(here::here(), "/ki-filenames.csv")

##################################

# Source base functions
source(paste0(project_functions_dir, "/0_clean_study_data_functions.R"))
source(paste0(project_functions_dir, "/0_descriptive_epi_shared_functions.R"))
source(paste0(project_functions_dir, "/0_descriptive_epi_stunt_functions.R"))
source(paste0(project_functions_dir, "/0_descriptive_epi_wast_functions.R"))
source(paste0(project_functions_dir, "/0_helper_sampling_weights.R"))
source(paste0(project_functions_dir, "/0_risk_factor_functions.R"))
source(paste0(project_functions_dir, "/0_mort_functions.R"))


# Set theme
source(paste0(here::here(), "/5-visualizations/0-plot-themes.R"))
theme_set(theme_ki())


#list of monthy and monthly+quarterly cohorts
monthly_cohorts <- c("CMC-V-BCS-2002",   "CMIN Peru95",      "CMIN Peru89",     
                     "CMIN Bangladesh93","CONTENT",          "EE",              
                     "GMS-Nepal",        "Guatemala BSC",    "IRC",             
                     "Keneba",           "MAL-ED", "PROVIDE" , "ResPak",          
                     "TanzaniaChild2",   "TDC")


monthly_and_quarterly_cohorts <- c("CMC-V-BCS-2002",   "CMIN Peru95",      "CMIN Brazil89",   
                                   "CMIN GB94",        "CMIN Peru89",      "CMIN Bangladesh93",
                                   "CONTENT",          "EE",               "GMS-Nepal",       
                                   "Guatemala BSC",          "IRC",             
                                   "JiVitA-3",         "JiVitA-4",         "Keneba",          
                                   "LCNI-5",           "MAL-ED",           "PROBIT",          
                                   "ResPak",           "SAS-CompFeed",     "SAS-FoodSuppl",   
                                   "TanzaniaChild2",   "ZVITAMBO",         "TDC", "NIH-Birth",
                                   "NIH-Crypto", "PROVIDE"      )

monthly_and_quarterly_cohorts_cc <- c("CMC-V-BCS-2002",   "CMIN Peru95",      "CMIN Brazil89",   
                                   "CMIN GB94",        "CMIN Peru89",      "CMIN Bangladesh93",
                                   "CONTENT",          "EE",               "GMS-Nepal",       
                                   "Guatemala BSC",    "iLiNS-Zinc",       "IRC",             
                                   "JiVitA-3",         "JiVitA-4",         "Keneba",          
                                   "LCNI-5",           "MAL-ED",           "PROBIT",          
                                   "ResPak",           "SAS-CompFeed",     "SAS-FoodSuppl",   
                                   "TanzaniaChild2",   "ZVITAMBO",         "TDC", "NIH-Birth",
                                   "NIH-Crypto", "PROVIDE"      )

ki_countries <- c( "India",        "Peru",         "Brazil",       "Guinea-Bissau","Bangladesh",   "Pakistan",    
                  "Nepal",        "Guatemala",    "Burkina Faso", "Gambia",       "Malawi",       "South Africa",
                   "Tanzania",     "Belarus",      "Zimbabwe"  )
ki_countries_monthly <- c("India","Bangladesh","Peru","Pakistan","Nepal","Guatemala",
                          "Gambia","South Africa", "Tanzania","Brazil"    )






