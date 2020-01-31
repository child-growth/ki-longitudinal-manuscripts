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

agecat      birthwt                       n_cell       n
----------  ---------------------------  -------  ------
Birth       Normal or high birthweight     49813   62481
Birth       Low birth weight               12668   62481
6 months    Normal or high birthweight     52849   63881
6 months    Low birth weight               11032   63881
24 months   Normal or high birthweight     23568   29822
24 months   Low birth weight                6254   29822


The following strata were considered:

* agecat: 24 months
* agecat: 6 months
* agecat: Birth



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```




# Results Detail

## Results Plots
![](/tmp/6ff29c4d-4a58-4307-9ea0-39be58165bf4/ec32b7c3-d325-4525-aa50-75d579913144/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6ff29c4d-4a58-4307-9ea0-39be58165bf4/ec32b7c3-d325-4525-aa50-75d579913144/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6ff29c4d-4a58-4307-9ea0-39be58165bf4/ec32b7c3-d325-4525-aa50-75d579913144/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       Normal or high birthweight   NA                -0.1385803   -0.1524125   -0.1247481
Birth       Low birth weight             NA                -2.8865811   -2.9414928   -2.8316693
6 months    Normal or high birthweight   NA                -0.6753160   -0.6903049   -0.6603270
6 months    Low birth weight             NA                -2.6859463   -2.7559435   -2.6159491
24 months   Normal or high birthweight   NA                -1.5726253   -1.5953358   -1.5499149
24 months   Low birth weight             NA                -2.7804693   -2.8438989   -2.7170396


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.4405043   -0.4549895   -0.4260192
6 months    NA                   NA                -0.8362611   -0.8508842   -0.8216379
24 months   NA                   NA                -1.7019215   -1.7230914   -1.6807516


### Parameter: ATE


agecat      intervention_level           baseline_level                 estimate    ci_lower    ci_upper
----------  ---------------------------  ---------------------------  ----------  ----------  ----------
Birth       Normal or high birthweight   Normal or high birthweight     0.000000    0.000000    0.000000
Birth       Low birth weight             Normal or high birthweight    -2.748001   -2.804551   -2.691451
6 months    Normal or high birthweight   Normal or high birthweight     0.000000    0.000000    0.000000
6 months    Low birth weight             Normal or high birthweight    -2.010630   -2.082150   -1.939111
24 months   Normal or high birthweight   Normal or high birthweight     0.000000    0.000000    0.000000
24 months   Low birth weight             Normal or high birthweight    -1.207844   -1.274596   -1.141092


### Parameter: PAR


agecat      intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       Normal or high birthweight   NA                -0.3019240   -0.3109513   -0.2928968
6 months    Normal or high birthweight   NA                -0.1609451   -0.1686021   -0.1532881
24 months   Normal or high birthweight   NA                -0.1292962   -0.1400656   -0.1185267
