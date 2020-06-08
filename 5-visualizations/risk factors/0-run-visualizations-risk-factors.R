

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

source(here("5-visualizations/risk factors/fig-rf-study-inventory-heatmap.R"))

source(here("5-visualizations/risk factors/fig-Zscore-PAR-plots.R"))
source(here("5-visualizations/risk factors/fig-PAR-VIM-comparison.R"))

source(here("5-visualizations/risk factors/fig-age-strat-rf-comp.R"))
source(here("5-visualizations/risk factors/fig-wast-perswast-comp.R"))

source(here("5-visualizations/risk factors/fig-spline-plots.R"))

source(here("5-visualizations/risk factors/fig-early-wast-RR.R"))
source(here("5-visualizations/risk factors/fig-wlz-quart-laz-velocity.R"))
source(here("5-visualizations/risk factors/fig-wlz-quart-stunting.R"))


source(here("5-visualizations/risk factors/fig-mortality-plots.R"))
source(here("5-visualizations/risk factors/fig-mortality-timing.R"))


#Combine plots
source(here("5-visualizations/risk factors/rf_manuscript_figure_grids.R"))


#Extended data figures
source(here("5-visualizations/risk factors/fig-example-forest.R"))

source(here("5-visualizations/risk factors/fig-sig-heatmap.R"))

source(here("5-visualizations/risk factors/fig-PAF-plots.R"))

source(here("5-visualizations/risk factors/fig-Zscore-PAR-extended-data-plots.R"))
source(here("5-visualizations/risk factors/fig-Zscore-PAR-extended-data-plots-FE.R"))
source(here("5-visualizations/risk factors/fig-adjustment-effect-by-cov-number.R"))

source(here("5-visualizations/risk factors/fig-mediation-analysis.R"))
source(here("5-visualizations/risk factors/fig-EValues.R"))


#Supplimental figures
source(here("5-visualizations/risk factors/fig-kaplan-meier-curves.R"))

source(here("5-visualizations/risk factors/fig-RR-plots.R"))

source(here("5-visualizations/risk factors/fig-spline-plots_sensitivity.R"))
source(here("5-visualizations/risk factors/fig-sig-heatmap-FE.R"))

source(here("5-visualizations/risk factors/fig-pooled-RR-plots.R"))

source('~/HBGDki/ki-longitudinal-manuscripts/5-visualizations/risk factors/fig-muac-mort.R', echo=TRUE)
source('~/HBGDki/ki-longitudinal-manuscripts/5-visualizations/risk factors/fig-mortality-plots-sens-birth.R', echo=TRUE)
source('~/HBGDki/ki-longitudinal-manuscripts/5-visualizations/risk factors/fig-mortality-plots-sens.R', echo=TRUE)
source('~/HBGDki/ki-longitudinal-manuscripts/5-visualizations/risk factors/fig-mortality-plots-sens2.R', echo=TRUE)
source('~/HBGDki/ki-longitudinal-manuscripts/5-visualizations/risk factors/fig-mortality-plots-sens3.R', echo=TRUE)
source('~/HBGDki/ki-longitudinal-manuscripts/5-visualizations/risk factors/fig-muac-mort.R', echo=TRUE)



