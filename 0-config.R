#-------------------------------------
# ki longitudinal analysis manuscripts

# configure data directories
# source base functions
# load libraries
#-------------------------------------
library(here)
library(tidyverse)
library(ggplot2)
library(dplyr)
library(gridExtra)
library(reshape2)
library(metafor)
library(data.table)
library(viridis)
library(ggrepel)
library(ggthemes)
library(maps)
library(FField)
library(ggjoy)
library(ggridges)
library(RColorBrewer)
library(gridExtra)
library(assertthat)
# library(haven)
library(tidyselect)
# options(repos = c(CRAN = "http://cran.rstudio.com/",
#                   deltarho = "http://packages.deltarho.org"))
# install.packages("growthstandards")
library(growthstandards)
library(stringr)
library(mgcv)
library(grid)
library(lazyeval)
library(rlang)
library(scales)
library(xtable)

# for parallel computing 
# (will need to configure in each script)
library(foreach)
library(doParallel)
library(survey)
# install.packages("bit64")
library(bit64)

# Define directories
res_dir                         = paste0(here::here(),"/results/")
data_dir                        = paste0(here::here(), "/data/")
ghapdata_dir                    = "U://ucb-superlearner/Manuscript analysis data/"

project_functions_dir           = paste0(here::here(),"/0-project-functions/")
data_cleaning_dir               = paste0(here::here(),"/1-data-cleaning/")
descriptive_outcomes_dir        = paste0(here::here(),"/2-descriptive-outcomes/")
prep_tmle_analysis_dir          = paste0(here::here(),"/3-prep-tmle-analysis/")
longbow_tmle_analysis_dir       = paste0(here::here(),"/4-longbow-tmle-analysis/")
visualizations_dir              = paste0(here::here(),"/5-visualizations/")
shiny_app_dir                   = paste0(here::here(),"/6-shiny-app/")
cc_shiny_app_dir                = paste0(here::here(),"/7-cc-shiny-app/")

# note: figures must be saved in same directory 
# as shiny app in order to publish it
fig_dir                         = paste0(here::here(),"/6-shiny-app/figures/")
figdata_dir                     = paste0(here::here(),"/6-shiny-app/figure-data/")

#################################
# Data Cleaning Scripts
asset_PCA_allstudies_path       = paste0(project_functions_dir, "1_assetPCA-allstudies.R")
##################################

# Source base functions  
source(paste0(project_functions_dir, "0_clean_study_data_functions.R"))
source(paste0(project_functions_dir, "0_descriptive_epi_shared_functions.R"))
source(paste0(project_functions_dir, "0_descriptive_epi_stunt_functions.R"))
source(paste0(project_functions_dir, "0_descriptive_epi_wast_functions.R"))
# what about these other ones?
source(paste0(project_functions_dir, "0_descriptive_epi_co_functions.R")) # NP
source(paste0(project_functions_dir, "0_helper_sampling_weights.R")) # NP
source(paste0(project_functions_dir, "0_risk_factor_functions.R")) # NP
source(paste0(project_functions_dir, "0_risk_factor_shared_functions.R")) # NP
source(paste0(project_functions_dir, "0_wast_inc_functions.R")) # NP

# Set theme
source(paste0(here::here(), "/5-visualizations/0-plot-themes.R"))
theme_set(theme_ki())
