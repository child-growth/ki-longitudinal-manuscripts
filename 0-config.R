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
library(data.table)
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

# for parallel computing 
# (will need to configure in each script)
library(foreach)
library(doParallel)


# define directories
res_dir = paste0(here::here(),"/results/")
data_dir = paste0(here::here(), "/data/")
  

# source base functions  
source(paste0(here::here(), "/0-project-functions/0_descriptive_epi_shared_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_descriptive_epi_stunt_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_descriptive_epi_wast_functions.R"))
source(paste0(here::here(),"/0-project-functions/0_clean_study_data_functions.R"))


source(paste0(here::here(), "/5-visualizations/0-plot-themes.R"))
theme_set(theme_ki())