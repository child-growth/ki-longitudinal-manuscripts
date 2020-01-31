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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      mbmi             n_cell       n
----------  --------------  -------  ------
Birth       Normal weight     23123   24236
Birth       Underweight        1113   24236
6 months    Normal weight     25949   27674
6 months    Underweight        1725   27674
24 months   Normal weight      7283    7869
24 months   Underweight         586    7869


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
![](/tmp/3713d2a4-50d7-4cfd-bb2d-66ecb7c46981/49fdccbf-465a-434e-ac15-20ff58bc321c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3713d2a4-50d7-4cfd-bb2d-66ecb7c46981/49fdccbf-465a-434e-ac15-20ff58bc321c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3713d2a4-50d7-4cfd-bb2d-66ecb7c46981/49fdccbf-465a-434e-ac15-20ff58bc321c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Normal weight        NA                -0.8383966   -0.8671123   -0.8096810
Birth       Underweight          NA                -1.0803365   -1.2102998   -0.9503732
6 months    Normal weight        NA                 0.3721868    0.3510824    0.3932912
6 months    Underweight          NA                 0.0075960   -0.0885309    0.1037228
24 months   Normal weight        NA                 0.1352508    0.0967512    0.1737504
24 months   Underweight          NA                -0.4323027   -0.5959453   -0.2686601


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8494054   -0.8774598   -0.8213511
6 months    NA                   NA                 0.3487408    0.3282117    0.3692700
24 months   NA                   NA                 0.0976514    0.0614049    0.1338980


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       Underweight          Normal weight     -0.2419399   -0.3750298   -0.1088500
6 months    Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    Underweight          Normal weight     -0.3645908   -0.4629206   -0.2662611
24 months   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   Underweight          Normal weight     -0.5675535   -0.7382754   -0.3968316


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Normal weight        NA                -0.0110088   -0.0174597   -0.0045579
6 months    Normal weight        NA                -0.0234459   -0.0291421   -0.0177498
24 months   Normal weight        NA                -0.0375994   -0.0560200   -0.0191787
