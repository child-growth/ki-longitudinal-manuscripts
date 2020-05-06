---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      count_A:
        input: checkbox
        value: TRUE
      count_Y:
        input: checkbox
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---






```
## Warning in set(data, , char_cols, data[, lapply(.SD, as.factor), .SDcols =
## char_cols]): length(LHS)==0; no columns to delete or assign RHS to.
```

## Methods
## Outcome Variable

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** birthwt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      birthwt                       n_cell       n  outcome_variable 
----------  ---------------------------  -------  ------  -----------------
Birth       Normal or high birthweight     54564   70418  haz              
Birth       Low birthweight                15854   70418  haz              
6 months    Normal or high birthweight     51027   62130  haz              
6 months    Low birthweight                11103   62130  haz              
24 months   Normal or high birthweight     23800   30318  haz              
24 months   Low birthweight                 6518   30318  haz              


The following strata were considered:

* agecat: 24 months
* agecat: 6 months
* agecat: Birth



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d3c660c7-db56-457f-84de-9963caa23074/2460d203-fc91-4cc9-ab19-1ad770eb7dff/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d3c660c7-db56-457f-84de-9963caa23074/2460d203-fc91-4cc9-ab19-1ad770eb7dff/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d3c660c7-db56-457f-84de-9963caa23074/2460d203-fc91-4cc9-ab19-1ad770eb7dff/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       Normal or high birthweight   NA                -0.2285264   -0.2419792   -0.2150736
Birth       Low birthweight              NA                -2.8418201   -2.8930079   -2.7906323
6 months    Normal or high birthweight   NA                -0.6579868   -0.6729085   -0.6430651
6 months    Low birthweight              NA                -2.7087630   -2.7744396   -2.6430864
24 months   Normal or high birthweight   NA                -1.6034633   -1.6250669   -1.5818597
24 months   Low birthweight              NA                -2.8303102   -2.8877984   -2.7728220


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.5616112   -0.5756397   -0.5475827
6 months    NA                   NA                -0.8273148   -0.8418372   -0.8127925
24 months   NA                   NA                -1.7396473   -1.7598056   -1.7194889


### Parameter: ATE


agecat      intervention_level           baseline_level                 estimate    ci_lower    ci_upper
----------  ---------------------------  ---------------------------  ----------  ----------  ----------
Birth       Normal or high birthweight   Normal or high birthweight     0.000000    0.000000    0.000000
Birth       Low birthweight              Normal or high birthweight    -2.613294   -2.666272   -2.560316
6 months    Normal or high birthweight   Normal or high birthweight     0.000000    0.000000    0.000000
6 months    Low birthweight              Normal or high birthweight    -2.050776   -2.118060   -1.983493
24 months   Normal or high birthweight   Normal or high birthweight     0.000000    0.000000    0.000000
24 months   Low birthweight              Normal or high birthweight    -1.226847   -1.287673   -1.166021


### Parameter: PAR


agecat      intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       Normal or high birthweight   NA                -0.3330848   -0.3417208   -0.3244488
6 months    Normal or high birthweight   NA                -0.1693281   -0.1769850   -0.1616712
24 months   Normal or high birthweight   NA                -0.1361840   -0.1465424   -0.1258255
