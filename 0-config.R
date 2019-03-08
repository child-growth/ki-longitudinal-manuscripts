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
library(ggalluvial)
library(reshape2)
library(metafor)
library(data.table)
library(viridis)
library(ggrepel)
library(maps)
library(FField)
library(data.table)


# define directories
res_dir = paste0(here::here(),"/results/")

  

# source base functions  
source(paste0(here::here(), "/0-project-functions/0_descriptive_epi_shared_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_descriptive_epi_stunt_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_descriptive_epi_wast_functions.R"))


source(paste0(here::here(), "/5-visualizations/0-plot-themes.R"))
theme_set(theme_ki())