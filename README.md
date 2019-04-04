# ki-longitudinal-manuscripts
This repository includes scripts to replicate the analyses included in the UC Berkeley team's analysis of wasting and stunting as part of the Bill and Melinda Gates Foundation's KI project.

### Directory structure

**`0-project-functions`** : internal functions used in analysis and figure generation

**`1-data-cleaning`** : scripts to prepare data for analysis

**`2-descriptive outcomes`** : analysis scripts

**`3-prep-tmle-analysis`** :  scripts to prepare data for tmle

**`4-tmle3`** :  folder to be added later containing risk factor analysis scripts

**`5-visualizations`** :  scripts that produce figures

* risk factors
    *  [Andrew to add]
* shared
    *  
* stunting
    * `fig-study-inventory-heatmaps-stunt.R`: corresponds to stunting manuscript Fig 1
    * `fig-stunting-rec-density.R`: corresponds to stunting manuscript Fig 4b
    * `fig-stunting-rec-prev.R`: corresponds to stunting manuscript Fig 4c
    * `fig-stunting-flow.R`: corresponds to stunting manuscript Fig 4a
    * `fig-stunting-length-velocity.R`: corresponds to stunting manuscript Fig 5
    * `fig-stunting-descriptive-epi-plots.R`: corresponds to stunting manuscript Fig 3 (includes many other figures as well, some of which are not included in the manuscript currently)
    * `fig-stunting-length-velocity-subset.R`: sensitivity analysis for Fig 5 that excludes COHORTS Guatemala and Content cohorts
    * `fig-stunting-descriptive-epi-plot-monthly24.R`: sensitivity analysis for Fig 3 that subsets cohorts to those with monthly measurements each month from 0 to 24 months
    * `fig-DHS-plots-laz.R`: corresponds to stunting manuscript Fig 2
    * `fig-stunting-prevalence-map.R`: corresponds to stunting manuscript Extended Data Fig 2

* wasting
    * [Andrew to add]
    
**`data`** : folder containing datasets that live off GHAP

**`figures`** : folder containing datasets that live off GHAP

**`results`** : folder containing output from analyses that do not contain identifiers





