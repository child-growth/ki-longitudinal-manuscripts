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

# define directories
res_dir = paste0(here::here(),"/results/")

  

# source base functions  
source(paste0(here::here(), "/5-visualizations/0-plot-themes.R"))
theme_set(theme_ki())