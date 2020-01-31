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

**Intervention Variable:** anywast06

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* month
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_month
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      anywast06    n_cell      n
----------  ----------  -------  -----
Birth       0              2793   3543
Birth       1               750   3543
6 months    0              7720   9673
6 months    1              1953   9673
24 months   0              4276   5552
24 months   1              1276   5552


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
![](/tmp/bddba4db-59f3-406a-ae3c-37e36a5834ed/28e8f861-8167-44c9-ad1c-e6795aedfc64/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bddba4db-59f3-406a-ae3c-37e36a5834ed/28e8f861-8167-44c9-ad1c-e6795aedfc64/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/bddba4db-59f3-406a-ae3c-37e36a5834ed/28e8f861-8167-44c9-ad1c-e6795aedfc64/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.4812669   -0.5307864   -0.4317474
Birth       1                    NA                -0.2015399   -0.3046807   -0.0983990
6 months    0                    NA                -0.9528520   -0.9815365   -0.9241675
6 months    1                    NA                -1.1001370   -1.1673616   -1.0329124
24 months   0                    NA                -1.6568754   -1.6940205   -1.6197303
24 months   1                    NA                -1.8667320   -1.9378226   -1.7956415


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.4131329   -0.4584662   -0.3677996
6 months    NA                   NA                -0.9786317   -1.0048619   -0.9524015
24 months   NA                   NA                -1.7015972   -1.7338648   -1.6693295


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    0                  0.0000000    0.0000000    0.0000000
Birth       1                    0                  0.2797270    0.1669809    0.3924731
6 months    0                    0                  0.0000000    0.0000000    0.0000000
6 months    1                    0                 -0.1472850   -0.2195040   -0.0750659
24 months   0                    0                  0.0000000    0.0000000    0.0000000
24 months   1                    0                 -0.2098566   -0.2894330   -0.1302802


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                 0.0681340    0.0444806    0.0917873
6 months    0                    NA                -0.0257797   -0.0379569   -0.0136024
24 months   0                    NA                -0.0447218   -0.0610050   -0.0284385
