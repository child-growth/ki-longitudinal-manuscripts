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

agecat      nhh          n_cell      n
----------  ----------  -------  -----
Birth       3 or less        67    394
Birth       4-5             149    394
Birth       6-7              96    394
Birth       8+               82    394
6 months    3 or less       615   3437
6 months    4-5            1493   3437
6 months    6-7             827   3437
6 months    8+              502   3437
24 months   3 or less       463   2487
24 months   4-5            1077   2487
24 months   6-7             577   2487
24 months   8+              370   2487


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
![](/tmp/ff7a2854-6a89-4ef8-804a-d520052a1cda/6215585b-cc11-40ee-9a51-dd6b0310d784/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ff7a2854-6a89-4ef8-804a-d520052a1cda/6215585b-cc11-40ee-9a51-dd6b0310d784/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ff7a2854-6a89-4ef8-804a-d520052a1cda/6215585b-cc11-40ee-9a51-dd6b0310d784/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       3 or less            NA                -1.3343287   -1.7698488   -0.8988086
Birth       4-5                  NA                -0.9473479   -1.2195548   -0.6751411
Birth       6-7                  NA                -0.8531846   -1.1829475   -0.5234217
Birth       8+                   NA                -1.1109104   -1.5157531   -0.7060677
6 months    3 or less            NA                -0.0530749   -0.1843349    0.0781852
6 months    4-5                  NA                -0.1669403   -0.2416006   -0.0922800
6 months    6-7                  NA                -0.1911595   -0.2903984   -0.0919206
6 months    8+                   NA                -0.3256521   -0.4584260   -0.1928782
24 months   3 or less            NA                -0.4591408   -0.5795605   -0.3387210
24 months   4-5                  NA                -0.6328434   -0.7110914   -0.5545954
24 months   6-7                  NA                -0.5957441   -0.7323783   -0.4591099
24 months   8+                   NA                -0.7847062   -0.9283908   -0.6410216


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -1.0247970   -1.1918809   -0.8577130
6 months    NA                   NA                -0.1756505   -0.2161196   -0.1351815
24 months   NA                   NA                -0.6227801   -0.6662037   -0.5793565


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       4-5                  3 or less          0.3869808   -0.1253884    0.8993500
Birth       6-7                  3 or less          0.4811441   -0.0665703    1.0288586
Birth       8+                   3 or less          0.2234184   -0.3709297    0.8177664
6 months    3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    4-5                  3 or less         -0.1138654   -0.2648912    0.0371603
6 months    6-7                  3 or less         -0.1380846   -0.3024229    0.0262536
6 months    8+                   3 or less         -0.2725773   -0.4596692   -0.0854853
24 months   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   4-5                  3 or less         -0.1737026   -0.3173083   -0.0300970
24 months   6-7                  3 or less         -0.1366033   -0.3188236    0.0456170
24 months   8+                   3 or less         -0.3255654   -0.5129601   -0.1381708


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       3 or less            NA                 0.3095318   -0.0866323    0.7056959
6 months    3 or less            NA                -0.1225757   -0.2476223    0.0024710
24 months   3 or less            NA                -0.1636393   -0.2779736   -0.0493051
