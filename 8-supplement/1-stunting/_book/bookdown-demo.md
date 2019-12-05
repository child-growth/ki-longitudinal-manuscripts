--- 
title: "Longitudinal analysis of early childhood stunting in low-resource settings"
author: "Jade Benjamin-Chung et al."
date: "2019-12-04"
site: bookdown::bookdown_site
output: bookdown::gitbook
documentclass: book
bibliography: [book.bib, packages.bib]
biblio-style: apalike
link-citations: yes
github-repo: rstudio/bookdown-demo
description: "This is supplementary information to Longitudinal analysis of early childhood stunting in low-resource settings"
---
--- 
title: "Longitudinal analysis of early childhood stunting in low-resource settings"
author: "Jade Benjamin-Chung et al."
date: "2019-12-04"
site: bookdown::bookdown_site
output: bookdown::gitbook
documentclass: book
bibliography: [book.bib, packages.bib]
biblio-style: apalike
link-citations: yes
github-repo: rstudio/bookdown-demo
description: "This is supplementary information to Longitudinal analysis of early childhood stunting in low-resource settings"
---

# Overview

**Recommended citation:** Benjamin-Chung J, et al. 2020. Longitudinal analyses of early childhood stunting in low-resource settings. *Journal Name*. doi. 

Add a description of what this book is




<!--chapter:end:index.Rmd-->

# Sensitivity analysis using fixed effects {#fixed-effects}

The primary analyses presented in this manuscript pooled across individual studies using random effects. Inferences about estimates from fixed effects models are restricted to only the included studies.[^1] The random effects approach was more conservative in the presence of study heterogeneity, as evidenced by larger confidence intervals around each point estimates. Overall, the inference from results produced by each method was similar. 



<!-- ##################################################################################### -->
## Age-specific prevalence

### Random effects
<img src="figure-copies/fig-stunt-2-prev-overall_region--allage-primary.png" width="2100" />

### Fixed effects
<img src="figure-copies/fig-stunt-2-prev-overall_region--allage-fe.png" width="2100" />

[ADD CAPTION]

<!-- ##################################################################################### -->
## Age-specific incidence

### Random effects
<img src="figure-copies/fig-stunt-2-inc-overall_region--allage-primary.png" width="2400" />

### Fixed effects
<img src="figure-copies/fig-stunt-2-inc-overall_region--allage-fe.png" width="2400" />

[ADD CAPTION]

<!-- ##################################################################################### -->
## Changes in stunting status by age

### Random effects
<img src="figure-copies/fig-stunt-2-flow-overall--allage-re.png" width="1500" />

### Fixed effects
<img src="figure-copies/fig-stunt-2-flow-overall--allage-fe.png" width="1500" />

[ADD CAPTION] 


<!-- ##################################################################################### -->
## Linear growth velocity

### Random effects
<img src="figure-copies/fig-stunt-2-vel-overall--allage-primary.png" width="1500" />

### Fixed effects
<img src="figure-copies/fig-stunt-2-vel-overall--allage-fe.png" width="1500" />

[ADD CAPTION]


[^1]: Hedges, L. V. & Vevea, J. L. Fixed- and random-effects models in meta-analysis. Psychol. Methods 3, 486–504 (1998).

<!--chapter:end:01-fixed-effects.Rmd-->

# Assessment of potential secular trends {#secular-trends}

---
output:
  pdf_document:
    keep_tex: yes
fontfamily: mathpazo
fontsize: 9pt
---

\raggedright

This study included cohorts that measured child growth from 1969 to 2014. To assess potential secular trends, we plotted the mean length-for-age Z-score (LAZ) over time. The plot below shows the individual observations from included studies over this range of years. There does not appear to be a secular trend in LAZ. 




<img src="figure-copies/laz_secular_trend.png" width="2400" />



<!--chapter:end:02-secular-trends.Rmd-->


# Primary analyses excluding the PROBIT study {#exclude-PROBIT}

Placeholder


## Mean length-for-age Z-score by age
### Including PROBIT
### Excluding PROBIT
## Age-specific prevalence
### Including PROBIT
### Excluding PROBIT
## Age-specific incidence
### Including PROBIT
### Excluding PROBIT

<!--chapter:end:03-excluding-PROBIT.Rmd-->

# Severe stunting analyses {#severe-stunting}

---
output:
  pdf_document:
    keep_tex: yes
fontfamily: mathpazo
fontsize: 9pt
---

\raggedright

xxx




## Age-specific severe stunting prevalence
<img src="figure-copies/fig-stunt-3-prev-overall_region--allage-primary.png" width="4200" />


## Age-specific severe stunting incidence
<img src="figure-copies/fig-stunt-3-inc-overall_region--allage-primary.png" width="4200" />

<!--chapter:end:04-severe-stunting.Rmd-->

# Analyses of gestational age {#gestational}

---
output:
  pdf_document:
    keep_tex: yes
fontfamily: mathpazo
fontsize: 9pt
---

\raggedright

xxx




<img src="figure-copies/fig-GA-correction-sensitivity.png" width="4200" />



<!--chapter:end:05-gestational-age.Rmd-->


# Analyses of age at first measurement {#age-meas}

Placeholder


## Histogram of age from 0-30 days
### All cohorts
### Cohort-stratified
## Histogram of age at enrollment
### All cohorts
### Cohort-stratified

<!--chapter:end:06-age-at-first-measurement.Rmd-->


# References {-}


<!--chapter:end:07-references.Rmd-->


# Overview

Placeholder


## Age-specific prevalence
### Random effects
### Fixed effects
## Age-specific incidence
### Random effects
### Fixed effects
## Changes in stunting status by age
### Random effects
### Fixed effects
## Linear growth velocity
### Random effects
### Fixed effects
## Mean length-for-age Z-score by age
### Including PROBIT
### Excluding PROBIT
## Age-specific prevalence
### Including PROBIT
### Excluding PROBIT
## Age-specific incidence
### Including PROBIT
### Excluding PROBIT
## Age-specific severe stunting prevalence
## Age-specific severe stunting incidence
## Histogram of age from 0-30 days
### All cohorts
### Cohort-stratified
## Histogram of age at enrollment
### All cohorts
### Cohort-stratified
## Age-specific prevalence
### Random effects1
### Fixed effects1
## Age-specific incidence
### Random effects2
### Fixed effects2
## Changes in stunting status by age
### Random effects3
### Fixed effects3
## Linear growth velocity
### Random effects4
### Fixed effects4
## Mean length-for-age Z-score by age
### Including PROBIT
### Excluding PROBIT
## Age-specific prevalence
### Including PROBIT
### Excluding PROBIT
## Age-specific incidence
### Including PROBIT
### Excluding PROBIT
## Age-specific severe stunting prevalence
## Age-specific severe stunting incidence
## Histogram of age from 0-30 days
### All cohorts
### Cohort-stratified
## Histogram of age at enrollment
### All cohorts
### Cohort-stratified
## Age-specific prevalence
## Age-specific incidence
## Relationship between LAZ and stunting status
## Linear growth velocity
## Example one
## Example two

<!--chapter:end:bookdown-demo.Rmd-->

