

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

source(here("5-visualizations/risk factors/fig-rf-study-inventory-heatmap.R"))

source(here("5-visualizations/risk factors/fig-Zscore-PAR-plots.R"))
source(here("5-visualizations/risk factors/fig-PAR-VIM-comparison.R"))

source(here("5-visualizations/risk factors/fig-age-strat-rf-comp.R"))
source(here("5-visualizations/risk factors/fig-extra-manuscript-plots.R"))

source(here("5-visualizations/risk factors/fig-spline-plots.R"))

source(here("5-visualizations/risk factors/fig-wast-perswast-comp.R"))
source(here("5-visualizations/risk factors/fig-wlz-quart-laz-velocity.R"))

source(here("5-visualizations/risk factors/fig-mortality-plots.R"))
source(here("5-visualizations/risk factors/fig-mortality-timing.R"))


#Combine plots
source(here("5-visualizations/risk factors/rf_manuscript_figure_grids.R"))


#Extended data figures
source(here("5-visualizations/risk factors/fig-example-forest.R"))

source(here("5-visualizations/risk factors/fig-sig-heatmap.R"))

source(here("5-visualizations/risk factors/fig-PAF-plots.R"))

source(here("5-visualizations/risk factors/fig-Zscore-PAR-extended-data-plots.R"))
source(here("5-visualizations/risk factors/fig-adjustment-effect-by-cov-number.R"))

#Supplimental figures
source(here("5-visualizations/risk factors/fig-kaplan-meier-curves.R"))

source(here("5-visualizations/risk factors/fig-RR-plots.R"))

source(here("5-visualizations/risk factors/fig-spline-plots_sensitivity.R"))



