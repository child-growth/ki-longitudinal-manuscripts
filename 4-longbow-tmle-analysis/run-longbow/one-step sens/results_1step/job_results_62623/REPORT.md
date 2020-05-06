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

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_nrooms
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      parity    n_cell       n  outcome_variable 
----------  -------  -------  ------  -----------------
Birth       1          13293   42054  whz              
Birth       2          12693   42054  whz              
Birth       3+         16068   42054  whz              
6 months    1          12881   39740  whz              
6 months    2          11677   39740  whz              
6 months    3+         15182   39740  whz              
24 months   1           5057   18362  whz              
24 months   2           5047   18362  whz              
24 months   3+          8258   18362  whz              


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
![](/tmp/d4b15bfc-ebb7-4a3f-9e5b-81537e0a465a/da12fd98-9399-4818-b525-247001f04ebd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d4b15bfc-ebb7-4a3f-9e5b-81537e0a465a/da12fd98-9399-4818-b525-247001f04ebd/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d4b15bfc-ebb7-4a3f-9e5b-81537e0a465a/da12fd98-9399-4818-b525-247001f04ebd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.9800287   -1.0306724   -0.9293851
Birth       2                    NA                -0.6945142   -0.7394583   -0.6495702
Birth       3+                   NA                -0.6123392   -0.6520109   -0.5726674
6 months    1                    NA                -0.3190066   -0.3632278   -0.2747855
6 months    2                    NA                -0.3007407   -0.3422734   -0.2592080
6 months    3+                   NA                -0.3311876   -0.3656119   -0.2967633
24 months   1                    NA                -0.8967637   -0.9596205   -0.8339070
24 months   2                    NA                -0.9500102   -1.0073670   -0.8926534
24 months   3+                   NA                -0.9585161   -0.9913597   -0.9256725


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.7382278   -0.7563753   -0.7200802
6 months    NA                   NA                -0.3229863   -0.3396103   -0.3063623
24 months   NA                   NA                -0.9706433   -0.9903417   -0.9509449


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    1                  0.0000000    0.0000000   0.0000000
Birth       2                    1                  0.2855145    0.2180090   0.3530199
Birth       3+                   1                  0.3676896    0.3035624   0.4318167
6 months    1                    1                  0.0000000    0.0000000   0.0000000
6 months    2                    1                  0.0182659   -0.0420055   0.0785373
6 months    3+                   1                 -0.0121809   -0.0677301   0.0433683
24 months   1                    1                  0.0000000    0.0000000   0.0000000
24 months   2                    1                 -0.0532465   -0.1380088   0.0315159
24 months   3+                   1                 -0.0617523   -0.1322767   0.0087720


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                 0.2418010    0.1940565    0.2895454
6 months    1                    NA                -0.0039796   -0.0458298    0.0378705
24 months   1                    NA                -0.0738796   -0.1343945   -0.0133646
