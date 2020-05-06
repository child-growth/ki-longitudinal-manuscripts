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

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* cleanck
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      nhh          n_cell      n  outcome_variable 
----------  ----------  -------  -----  -----------------
Birth       3 or less       362   2157  whz              
Birth       4-5             942   2157  whz              
Birth       6-7             495   2157  whz              
Birth       8+              358   2157  whz              
6 months    3 or less       618   3459  whz              
6 months    4-5            1505   3459  whz              
6 months    6-7             832   3459  whz              
6 months    8+              504   3459  whz              
24 months   3 or less       464   2488  whz              
24 months   4-5            1077   2488  whz              
24 months   6-7             577   2488  whz              
24 months   8+              370   2488  whz              


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
![](/tmp/6faa610b-8e20-4eb0-84fe-3207a4f14bad/19c41cfd-e1c2-43c0-9cc0-ba2d6f02b3cd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6faa610b-8e20-4eb0-84fe-3207a4f14bad/19c41cfd-e1c2-43c0-9cc0-ba2d6f02b3cd/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6faa610b-8e20-4eb0-84fe-3207a4f14bad/19c41cfd-e1c2-43c0-9cc0-ba2d6f02b3cd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       3 or less            NA                -1.4064167   -1.5318873   -1.2809462
Birth       4-5                  NA                -1.2579394   -1.3512591   -1.1646198
Birth       6-7                  NA                -1.1581306   -1.2760866   -1.0401746
Birth       8+                   NA                -1.0909141   -1.2470597   -0.9347685
6 months    3 or less            NA                -0.0046025   -0.1324011    0.1231960
6 months    4-5                  NA                -0.1632424   -0.2367639   -0.0897209
6 months    6-7                  NA                -0.2072500   -0.3047683   -0.1097316
6 months    8+                   NA                -0.3541661   -0.4992934   -0.2090389
24 months   3 or less            NA                -0.4736418   -0.5978855   -0.3493981
24 months   4-5                  NA                -0.6244807   -0.6999721   -0.5489894
24 months   6-7                  NA                -0.6175670   -0.7424562   -0.4926778
24 months   8+                   NA                -0.7424438   -0.8798577   -0.6050298


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -1.2485999   -1.3002191   -1.1969807
6 months    NA                   NA                -0.1756377   -0.2160536   -0.1352218
24 months   NA                   NA                -0.6240149   -0.6674145   -0.5806154


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       4-5                  3 or less          0.1484773   -0.0074133    0.3043679
Birth       6-7                  3 or less          0.2482862    0.0766981    0.4198742
Birth       8+                   3 or less          0.3155026    0.1154853    0.5155199
6 months    3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    4-5                  3 or less         -0.1586398   -0.3062139   -0.0110658
6 months    6-7                  3 or less         -0.2026474   -0.3633177   -0.0419772
6 months    8+                   3 or less         -0.3495636   -0.5431932   -0.1559340
24 months   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   4-5                  3 or less         -0.1508390   -0.2959267   -0.0057512
24 months   6-7                  3 or less         -0.1439252   -0.3199672    0.0321168
24 months   8+                   3 or less         -0.2688020   -0.4538466   -0.0837573


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       3 or less            NA                 0.1578168    0.0401619    0.2754718
6 months    3 or less            NA                -0.1710352   -0.2931450   -0.0489254
24 months   3 or less            NA                -0.1503732   -0.2683103   -0.0324361
