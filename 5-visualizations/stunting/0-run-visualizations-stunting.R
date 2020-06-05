


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


source(here("5-visualizations/stunting/fig-study-inventory-heatmaps-stunt.R"))

#Primary pooled stunting descriptive epi plots
source(here("5-visualizations/stunting/fig-stunting-plot-mean-laz.R"))
source(here("5-visualizations/stunting/fig-stunting-laz-quantile.R"))
source(here("5-visualizations/stunting/fig-stunting-plot-laz-quantile-monthly.R"))
source(here("5-visualizations/stunting/fig-stunting-plot-prev.R"))
source(here("5-visualizations/stunting/fig-stunting-plot-inc.R"))

source(here("5-visualizations/stunting/fig-stunting-rec-density.R"))
source(here("5-visualizations/stunting/fig-stunting-rec-prev.R"))

#Velocity 
source(here("5-visualizations/stunting/fig-stunting-length-velocity.R"))
source(here("5-visualizations/stunting/fig-stunting-length-velocity-fe.R"))
source(here("5-visualizations/stunting/fig-stunting-length-velocity-monthly24.R"))
source(here("5-visualizations/stunting/fig-stunting-length-velocity-subset.R"))

#Stunting flow 
source(here("5-visualizations/stunting/fig-stunting-flow-strat-prep.R"))
source(here("5-visualizations/stunting/fig-stunting-flow.R"))
source(here("5-visualizations/stunting/fig-stunting-flow-fe.R"))
source(here("5-visualizations/stunting/fig-stunting-flow-re.R"))


#Incidence by age growth curves
source(here("5-visualizations/stunting/fig-stunting-meanlaz-incage.R"))
source(here("5-visualizations/stunting/fig-stunting-velocity-incage.R"))




#extended data
source(here("5-visualizations/stunting/fig-stunting-prevalence-map.R"))

#DHS
source(here("5-visualizations/stunting/fig-DHS-plots-laz.R"))
source(here("5-visualizations/stunting/fig-DHS-quantile-plots.R"))
#No probit
source(here("5-visualizations/stunting/fig-stunting-descriptive-epi-plots_no_probit.R"))
source(here("5-visualizations/stunting/fig-stunting-descriptive-epi-plots-fe_no_probit.R"))



