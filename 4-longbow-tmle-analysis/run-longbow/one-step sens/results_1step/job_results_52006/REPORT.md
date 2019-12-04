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

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      cleanck    n_cell      n
----------  --------  -------  -----
Birth       1             248    446
Birth       0             198    446
6 months    1            1210   2398
6 months    0            1188   2398
24 months   1            1081   2206
24 months   0            1125   2206


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
![](/tmp/2d222a98-75d1-4d36-884f-f0b5e8792d9b/c3e6263b-0f2b-4a3a-bf60-806afc88dad3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2d222a98-75d1-4d36-884f-f0b5e8792d9b/c3e6263b-0f2b-4a3a-bf60-806afc88dad3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2d222a98-75d1-4d36-884f-f0b5e8792d9b/c3e6263b-0f2b-4a3a-bf60-806afc88dad3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.7402197   -0.9830648   -0.4973746
Birth       0                    NA                -0.9760055   -1.2313164   -0.7206946
6 months    1                    NA                -0.3769347   -0.4873216   -0.2665478
6 months    0                    NA                -0.4329935   -0.5604786   -0.3055084
24 months   1                    NA                -0.6899075   -0.8027955   -0.5770194
24 months   0                    NA                -0.8330599   -0.9724820   -0.6936378


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8969058   -1.0608825   -0.7329292
6 months    NA                   NA                -0.3465096   -0.3948829   -0.2981363
24 months   NA                   NA                -0.7899902   -0.8365167   -0.7434636


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    1                  0.0000000    0.0000000   0.0000000
Birth       0                    1                 -0.2357858   -0.5909895   0.1194179
6 months    1                    1                  0.0000000    0.0000000   0.0000000
6 months    0                    1                 -0.0560588   -0.2235380   0.1114205
24 months   1                    1                  0.0000000    0.0000000   0.0000000
24 months   0                    1                 -0.1431524   -0.3219891   0.0356843


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    NA                -0.1566861   -0.3285065   0.0151343
6 months    1                    NA                 0.0304251   -0.0710819   0.1319321
24 months   1                    NA                -0.1000827   -0.2053387   0.0051733
