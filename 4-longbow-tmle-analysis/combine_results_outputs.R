
rm(list=ls())
library(tidyverse)


# load("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/adjusted_binary/adjusted_binary_results.rdata")
# adj_bin <- results
# load("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/unadjusted_binary/unadjusted_binary_results.rdata")
# unadj_bin <- results
# load("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/adjusted_velocity/adjusted_velocity_results.rdata")
# adj_vel <- results
# load("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/unadjusted_velocity/unadjusted_velocity_results.rdata")
# unadj_vel <- results
load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf results/wasting rf results/binary_wasting_results.rdata")
wasting <- results
# load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf results/wasting rf results/wasting_results_cont.rdata")
# wasting_cont_par <- results %>% filter(type=="PAR")
load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf results/wasting rf results/wasting_results_cont.rdata")
Zscores <- results
load("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/opttx_vim/adjusted_binary_results.rdata")
vim <- results

d <- bind_rows(
  #adj_bin, unadj_bin, 
  wasting, Zscores)

saveRDS(d, paste0(here::here(),"/results/rf results/full_RF_results.rds"))




