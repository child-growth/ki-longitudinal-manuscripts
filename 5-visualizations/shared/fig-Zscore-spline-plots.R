

rm(list=ls())
library(tidyverse)
try(setwd("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/"))

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())

#Load data

#spline plot (object: p_laz_spline and p_whz_spline)
load("results/ki_spline_plot_data.Rdata")


#Edit plots here



ggsave(p_laz_spline, file="figures/stunting/laz_splines.png", width=10, height=8)
ggsave(p_wlz_spline, file="figures/stunting/wlz_splines.png", width=10, height=8)
