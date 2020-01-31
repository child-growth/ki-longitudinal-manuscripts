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

**Intervention Variable:** pers_wast

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

agecat      pers_wast    n_cell      n
----------  ----------  -------  -----
Birth       0              3391   3543
Birth       1               152   3543
6 months    0              9243   9673
6 months    1               430   9673
24 months   0              5266   5552
24 months   1               286   5552


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
![](/tmp/955cbbb8-e032-40d3-9b5a-07b2d581c633/54988e0e-3462-4f21-a9be-5c5e0b4da986/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/955cbbb8-e032-40d3-9b5a-07b2d581c633/54988e0e-3462-4f21-a9be-5c5e0b4da986/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/955cbbb8-e032-40d3-9b5a-07b2d581c633/54988e0e-3462-4f21-a9be-5c5e0b4da986/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.4289415   -0.4748945   -0.3829884
Birth       1                    NA                -0.1456087   -0.4135299    0.1223125
6 months    0                    NA                -0.9671488   -0.9937583   -0.9405393
6 months    1                    NA                -1.2702275   -1.4058764   -1.1345787
24 months   0                    NA                -1.6829732   -1.7162545   -1.6496918
24 months   1                    NA                -2.1086796   -2.2471850   -1.9701742


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
Birth       1                    0                  0.2833328    0.0116208    0.5550447
6 months    0                    0                  0.0000000    0.0000000    0.0000000
6 months    1                    0                 -0.3030787   -0.4407590   -0.1653984
24 months   0                    0                  0.0000000    0.0000000    0.0000000
24 months   1                    0                 -0.4257064   -0.5678624   -0.2835505


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                 0.0158085    0.0050644    0.0265526
6 months    0                    NA                -0.0114829   -0.0170501   -0.0059157
24 months   0                    NA                -0.0186240   -0.0245147   -0.0127333
