# ki-longitudinal-growth
This repository includes scripts to replicate the analyses included in the UC Berkeley team's analysis of wasting and stunting as part of the Bill and Melinda Gates Foundation's KI project.

### Directory structure

**`0-project-functions`** : internal functions used in analysis and figure generation

**`1-data-cleaning`** : scripts to prepare data for analysis

**`2-descriptive outcomes`** : analysis scripts

**`3-prep-tmle-analysis`** :  scripts to prepare data for tmle

**`4-longbow-tmle-analysis** :  scripts to run TMLE analysis on the Longbow platform (within the "run-longbow" subfolder) as well as scripts to compile and pool results

**`5-visualizations`** :  scripts that produce figures

* risk factors
    *  `fig-rf-study-inventory-heatmap.R` corresponds to C+C manuscript __Fig 1__
    *  `fig-Zscore-PAR-plots.R` corresponds to C+C manuscript __Fig 2__
    *  `fig-PAR-VIM-comparison.R` corresponds to C+C manuscript __Fig 2__ inset
    *  `fig-age-strat-rf-comp.R` corresponds to C+C manuscript __Fig 3b__
    *  `fig-wast-perswast-comp.R` corresponds to C+C manuscript __Fig 3c__
    *  `fig-spline-plots.R` corresponds to C+C manuscript __Fig 3a__
    *  `fig-early-wast.R` corresponds to C+C manuscript __Fig 4b__
    *  `fig-wlz-quart-laz-velocity.R` corresponds to C+C manuscript __Fig 4a__
    *  `fig-mortality-plots.R` corresponds to C+C manuscript __Fig 4c__
    *  `rf_manuscript_figure_grids.R` compiles figures into manuscript grids
    *  Extended data figures
    	*  `fig-example-forest.R`  corresponds to C+C manuscript __Extended Fig 1__
    	*  `fig-sig-heatmap.R`  corresponds to C+C manuscript __Extended Fig 2__
    	*  `fig-Zscore-PAR-extended-data-plots.R`  corresponds to C+C manuscript __Extended Fig 3,4,7,8__
    	*  `fig-PAF-plots.R`  corresponds to C+C manuscript __Extended Fig 5__
    	*  `fig-mediation-analysis.R`  corresponds to C+C manuscript __Extended Fig 6__    	
    	*  `fig-wlz-quart-stunting.R` corresponds to C+C manuscript __Extended Fig 9__
    	*  `fig-mortality-timing.R` corresponds to C+C manuscript __Extended Fig 10__
    	*  `fig-adjustment-effect-by-cov-number.R` corresponds to C+C manuscript __Extended Fig 11__
    	*  `fig-EValues.R` corresponds to C+C manuscript __Extended Fig 12__
    *  Supplimental figures - used in online supplimentary information
	 *  `fig-kaplan-meier-curves.R`
	 *  `fig-Zscore-PAR-extended-data-plots-FE.R` 
    	 *  `fig.RR-plots.R`
   	 *  `fig-spline-plots_sensitivity.R`
   	 *  `fig-sig-heatmap-FE.R`
   	 *  `fig-pooled.RR-plots.R`
   	 *  `fig-muac-mort.R`
  	 *  `fig-mortality-plots-sens-birth.R`
  	 *  `fig-mortality-plots-sens.R`
  	 *  `fig-mortality-plots-sens2.R`
  	 *  `fig-mortality-plots-sens3.R`
  	 *  `fig-muac-mort.R`
* shared
    *  `fig-CONSORT-figure1`  corresponds to stunting and wasting manuscripts __Extended Fig 1__
* stunting
    * `fig-DHS-plots-laz.R`: corresponds to stunting manuscript __Fig 2__
    * `fig-study-inventory-heatmaps-stunt.R`: corresponds to stunting manuscript __Fig 1__
    * `fig-stunting-descriptive-epi-plots.R`: corresponds to stunting manuscript __Fig 3__ (includes other figures as well, some of which are not included in the manuscript currently)
    * `fig-stunting-descriptive-epi-plot-monthly24.R`: sensitivity analysis for __Fig 3__ that subsets cohorts to those with monthly measurements each month from 0 to 24 months
    * `fig-stunting-flow.R`: corresponds to stunting manuscript __Fig 4a__
    * `fig-stunting-length-velocity.R`: corresponds to stunting manuscript __Fig 5__
    * `fig-stunting-length-velocity-subset.R`: sensitivity analysis for __Fig 5__ that excludes COHORTS Guatemala and Content cohorts
    * `fig-stunting-prevalence-map.R`: corresponds to stunting manuscript __Extended Data Fig 2__
    * `fig-stunting-rec-density.R`: corresponds to stunting manuscript __Fig 4b__
    * `fig-stunting-rec-prev.R`: corresponds to stunting manuscript __Fig 4c__

* wasting
    * `fig-wasting-study-inventory-heatmap.R`  corresponds to wasting manuscript __Fig 1__
    * `fig-wasting-descriptive-epi-plots.R`   corresponds to wasting manuscript __Fig 2a-c__, __Fig4b,d__, and __Fig5a__ (includes many other figures as well, some of which are not included in the manuscript currently)
    * `fig-wasting-classification-example.R` corresponds to wasting manuscript __Fig 4a__
    * `fig-wasting-rec-hist.R` corresponds to wasting manuscript __Fig 4c__
    * `fig-wasting-seasonality.R` corresponds to wasting manuscript __Fig 3a-c__
    * `fig-wasting-seasonality-diff-plot.R` corresponds to wasting manuscript __Fig 3d__
    * `fig-wasting-birth-traj.R` corresponds to wasting manuscript __Fig 4e__
    * `fig-birth-wasting-recovery-stats.R` corresponds to wasting manuscript __Fig 4e inset__
    * `fig-wasting-prevalence-map.R` corresponds to wasting manuscript __Extended Fig 2__
    * `fig-DHS-plots-zscores.R` corresponds to wasting manuscript __Extended Fig 3__
    * `fig-pers-wasting.R` corresponds to wasting manuscript __Extended Fig 4a__
    * `fig-co-flow.R` corresponds to wasting manuscript __Fig 5b__
    * `fig-co-initial-onset.R` in progress: creates plot of initial onset of wasting and stunting in children with both
    * `fig-wasting-traj.R` archived; not used

    
**`data`** : folder containing datasets that live off secure remote data server (agregate results or external data, but no subject-level data)

**`figures`** : folder containing figure outputs from scripts from `5-visualizations`  

**`results`** : folder containing output from analyses that do not contain identifiers





