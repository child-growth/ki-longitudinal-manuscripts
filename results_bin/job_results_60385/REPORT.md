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







## Methods
## Outcome Variable

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* cleanck
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_cleanck
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid         country      nhh          wast_rec90d   n_cell     n
------------  --------------  -----------  ----------  ------------  -------  ----
0-24 months   IRC             INDIA        3 or less              0       17   395
0-24 months   IRC             INDIA        3 or less              1       32   395
0-24 months   IRC             INDIA        4-5                    0       61   395
0-24 months   IRC             INDIA        4-5                    1       75   395
0-24 months   IRC             INDIA        6-7                    0       47   395
0-24 months   IRC             INDIA        6-7                    1       60   395
0-24 months   IRC             INDIA        8+                     0       37   395
0-24 months   IRC             INDIA        8+                     1       66   395
0-24 months   LCNI-5          MALAWI       3 or less              0       16    78
0-24 months   LCNI-5          MALAWI       3 or less              1        5    78
0-24 months   LCNI-5          MALAWI       4-5                    0       30    78
0-24 months   LCNI-5          MALAWI       4-5                    1        4    78
0-24 months   LCNI-5          MALAWI       6-7                    0        9    78
0-24 months   LCNI-5          MALAWI       6-7                    1        2    78
0-24 months   LCNI-5          MALAWI       8+                     0       10    78
0-24 months   LCNI-5          MALAWI       8+                     1        2    78
0-24 months   NIH-Birth       BANGLADESH   3 or less              0       39   421
0-24 months   NIH-Birth       BANGLADESH   3 or less              1       40   421
0-24 months   NIH-Birth       BANGLADESH   4-5                    0       88   421
0-24 months   NIH-Birth       BANGLADESH   4-5                    1       91   421
0-24 months   NIH-Birth       BANGLADESH   6-7                    0       45   421
0-24 months   NIH-Birth       BANGLADESH   6-7                    1       55   421
0-24 months   NIH-Birth       BANGLADESH   8+                     0       30   421
0-24 months   NIH-Birth       BANGLADESH   8+                     1       33   421
0-24 months   NIH-Crypto      BANGLADESH   3 or less              0       19   310
0-24 months   NIH-Crypto      BANGLADESH   3 or less              1       29   310
0-24 months   NIH-Crypto      BANGLADESH   4-5                    0       63   310
0-24 months   NIH-Crypto      BANGLADESH   4-5                    1       87   310
0-24 months   NIH-Crypto      BANGLADESH   6-7                    0       23   310
0-24 months   NIH-Crypto      BANGLADESH   6-7                    1       46   310
0-24 months   NIH-Crypto      BANGLADESH   8+                     0       12   310
0-24 months   NIH-Crypto      BANGLADESH   8+                     1       31   310
0-24 months   PROVIDE         BANGLADESH   3 or less              0       20   308
0-24 months   PROVIDE         BANGLADESH   3 or less              1       27   308
0-24 months   PROVIDE         BANGLADESH   4-5                    0       54   308
0-24 months   PROVIDE         BANGLADESH   4-5                    1       88   308
0-24 months   PROVIDE         BANGLADESH   6-7                    0       37   308
0-24 months   PROVIDE         BANGLADESH   6-7                    1       38   308
0-24 months   PROVIDE         BANGLADESH   8+                     0       18   308
0-24 months   PROVIDE         BANGLADESH   8+                     1       26   308
0-24 months   SAS-FoodSuppl   INDIA        3 or less              0       17   234
0-24 months   SAS-FoodSuppl   INDIA        3 or less              1        1   234
0-24 months   SAS-FoodSuppl   INDIA        4-5                    0       96   234
0-24 months   SAS-FoodSuppl   INDIA        4-5                    1        3   234
0-24 months   SAS-FoodSuppl   INDIA        6-7                    0       69   234
0-24 months   SAS-FoodSuppl   INDIA        6-7                    1        6   234
0-24 months   SAS-FoodSuppl   INDIA        8+                     0       39   234
0-24 months   SAS-FoodSuppl   INDIA        8+                     1        3   234
0-6 months    IRC             INDIA        3 or less              0       12   240
0-6 months    IRC             INDIA        3 or less              1       26   240
0-6 months    IRC             INDIA        4-5                    0       31   240
0-6 months    IRC             INDIA        4-5                    1       50   240
0-6 months    IRC             INDIA        6-7                    0       24   240
0-6 months    IRC             INDIA        6-7                    1       41   240
0-6 months    IRC             INDIA        8+                     0       20   240
0-6 months    IRC             INDIA        8+                     1       36   240
0-6 months    LCNI-5          MALAWI       3 or less              0        0     4
0-6 months    LCNI-5          MALAWI       3 or less              1        0     4
0-6 months    LCNI-5          MALAWI       4-5                    0        2     4
0-6 months    LCNI-5          MALAWI       4-5                    1        0     4
0-6 months    LCNI-5          MALAWI       6-7                    0        2     4
0-6 months    LCNI-5          MALAWI       6-7                    1        0     4
0-6 months    LCNI-5          MALAWI       8+                     0        0     4
0-6 months    LCNI-5          MALAWI       8+                     1        0     4
0-6 months    NIH-Birth       BANGLADESH   3 or less              0       14   223
0-6 months    NIH-Birth       BANGLADESH   3 or less              1       34   223
0-6 months    NIH-Birth       BANGLADESH   4-5                    0       27   223
0-6 months    NIH-Birth       BANGLADESH   4-5                    1       61   223
0-6 months    NIH-Birth       BANGLADESH   6-7                    0       13   223
0-6 months    NIH-Birth       BANGLADESH   6-7                    1       40   223
0-6 months    NIH-Birth       BANGLADESH   8+                     0       10   223
0-6 months    NIH-Birth       BANGLADESH   8+                     1       24   223
0-6 months    NIH-Crypto      BANGLADESH   3 or less              0        3   197
0-6 months    NIH-Crypto      BANGLADESH   3 or less              1       27   197
0-6 months    NIH-Crypto      BANGLADESH   4-5                    0       11   197
0-6 months    NIH-Crypto      BANGLADESH   4-5                    1       81   197
0-6 months    NIH-Crypto      BANGLADESH   6-7                    0        5   197
0-6 months    NIH-Crypto      BANGLADESH   6-7                    1       41   197
0-6 months    NIH-Crypto      BANGLADESH   8+                     0        2   197
0-6 months    NIH-Crypto      BANGLADESH   8+                     1       27   197
0-6 months    PROVIDE         BANGLADESH   3 or less              0        9   185
0-6 months    PROVIDE         BANGLADESH   3 or less              1       24   185
0-6 months    PROVIDE         BANGLADESH   4-5                    0       17   185
0-6 months    PROVIDE         BANGLADESH   4-5                    1       73   185
0-6 months    PROVIDE         BANGLADESH   6-7                    0        8   185
0-6 months    PROVIDE         BANGLADESH   6-7                    1       31   185
0-6 months    PROVIDE         BANGLADESH   8+                     0        6   185
0-6 months    PROVIDE         BANGLADESH   8+                     1       17   185
0-6 months    SAS-FoodSuppl   INDIA        3 or less              0        3    78
0-6 months    SAS-FoodSuppl   INDIA        3 or less              1        0    78
0-6 months    SAS-FoodSuppl   INDIA        4-5                    0       31    78
0-6 months    SAS-FoodSuppl   INDIA        4-5                    1        0    78
0-6 months    SAS-FoodSuppl   INDIA        6-7                    0       27    78
0-6 months    SAS-FoodSuppl   INDIA        6-7                    1        0    78
0-6 months    SAS-FoodSuppl   INDIA        8+                     0       17    78
0-6 months    SAS-FoodSuppl   INDIA        8+                     1        0    78
6-24 months   IRC             INDIA        3 or less              0        5   155
6-24 months   IRC             INDIA        3 or less              1        6   155
6-24 months   IRC             INDIA        4-5                    0       30   155
6-24 months   IRC             INDIA        4-5                    1       25   155
6-24 months   IRC             INDIA        6-7                    0       23   155
6-24 months   IRC             INDIA        6-7                    1       19   155
6-24 months   IRC             INDIA        8+                     0       17   155
6-24 months   IRC             INDIA        8+                     1       30   155
6-24 months   LCNI-5          MALAWI       3 or less              0       16    74
6-24 months   LCNI-5          MALAWI       3 or less              1        5    74
6-24 months   LCNI-5          MALAWI       4-5                    0       28    74
6-24 months   LCNI-5          MALAWI       4-5                    1        4    74
6-24 months   LCNI-5          MALAWI       6-7                    0        7    74
6-24 months   LCNI-5          MALAWI       6-7                    1        2    74
6-24 months   LCNI-5          MALAWI       8+                     0       10    74
6-24 months   LCNI-5          MALAWI       8+                     1        2    74
6-24 months   NIH-Birth       BANGLADESH   3 or less              0       25   198
6-24 months   NIH-Birth       BANGLADESH   3 or less              1        6   198
6-24 months   NIH-Birth       BANGLADESH   4-5                    0       61   198
6-24 months   NIH-Birth       BANGLADESH   4-5                    1       30   198
6-24 months   NIH-Birth       BANGLADESH   6-7                    0       32   198
6-24 months   NIH-Birth       BANGLADESH   6-7                    1       15   198
6-24 months   NIH-Birth       BANGLADESH   8+                     0       20   198
6-24 months   NIH-Birth       BANGLADESH   8+                     1        9   198
6-24 months   NIH-Crypto      BANGLADESH   3 or less              0       16   113
6-24 months   NIH-Crypto      BANGLADESH   3 or less              1        2   113
6-24 months   NIH-Crypto      BANGLADESH   4-5                    0       52   113
6-24 months   NIH-Crypto      BANGLADESH   4-5                    1        6   113
6-24 months   NIH-Crypto      BANGLADESH   6-7                    0       18   113
6-24 months   NIH-Crypto      BANGLADESH   6-7                    1        5   113
6-24 months   NIH-Crypto      BANGLADESH   8+                     0       10   113
6-24 months   NIH-Crypto      BANGLADESH   8+                     1        4   113
6-24 months   PROVIDE         BANGLADESH   3 or less              0       11   123
6-24 months   PROVIDE         BANGLADESH   3 or less              1        3   123
6-24 months   PROVIDE         BANGLADESH   4-5                    0       37   123
6-24 months   PROVIDE         BANGLADESH   4-5                    1       15   123
6-24 months   PROVIDE         BANGLADESH   6-7                    0       29   123
6-24 months   PROVIDE         BANGLADESH   6-7                    1        7   123
6-24 months   PROVIDE         BANGLADESH   8+                     0       12   123
6-24 months   PROVIDE         BANGLADESH   8+                     1        9   123
6-24 months   SAS-FoodSuppl   INDIA        3 or less              0       14   156
6-24 months   SAS-FoodSuppl   INDIA        3 or less              1        1   156
6-24 months   SAS-FoodSuppl   INDIA        4-5                    0       65   156
6-24 months   SAS-FoodSuppl   INDIA        4-5                    1        3   156
6-24 months   SAS-FoodSuppl   INDIA        6-7                    0       42   156
6-24 months   SAS-FoodSuppl   INDIA        6-7                    1        6   156
6-24 months   SAS-FoodSuppl   INDIA        8+                     0       22   156
6-24 months   SAS-FoodSuppl   INDIA        8+                     1        3   156


The following strata were considered:

* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/0e6ce359-fec3-4d92-bfe6-b44e2daf8ce6/d5d662bf-9f51-49d0-99f3-e9ff4e0a644e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0e6ce359-fec3-4d92-bfe6-b44e2daf8ce6/d5d662bf-9f51-49d0-99f3-e9ff4e0a644e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0e6ce359-fec3-4d92-bfe6-b44e2daf8ce6/d5d662bf-9f51-49d0-99f3-e9ff4e0a644e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0e6ce359-fec3-4d92-bfe6-b44e2daf8ce6/d5d662bf-9f51-49d0-99f3-e9ff4e0a644e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC          INDIA        3 or less            NA                0.6565187   0.4950181   0.8180194
0-24 months   IRC          INDIA        4-5                  NA                0.5533562   0.4609744   0.6457379
0-24 months   IRC          INDIA        6-7                  NA                0.5604842   0.4664260   0.6545423
0-24 months   IRC          INDIA        8+                   NA                0.6489511   0.5441667   0.7537355
0-24 months   NIH-Birth    BANGLADESH   3 or less            NA                0.5059765   0.3839504   0.6280026
0-24 months   NIH-Birth    BANGLADESH   4-5                  NA                0.5100890   0.4301252   0.5900527
0-24 months   NIH-Birth    BANGLADESH   6-7                  NA                0.5502869   0.4467210   0.6538528
0-24 months   NIH-Birth    BANGLADESH   8+                   NA                0.5251102   0.3956990   0.6545215
0-24 months   NIH-Crypto   BANGLADESH   3 or less            NA                0.6248704   0.4810611   0.7686798
0-24 months   NIH-Crypto   BANGLADESH   4-5                  NA                0.5679279   0.4897885   0.6460673
0-24 months   NIH-Crypto   BANGLADESH   6-7                  NA                0.6610856   0.5474756   0.7746956
0-24 months   NIH-Crypto   BANGLADESH   8+                   NA                0.6791875   0.5346789   0.8236961
0-24 months   PROVIDE      BANGLADESH   3 or less            NA                0.6028837   0.4367804   0.7689871
0-24 months   PROVIDE      BANGLADESH   4-5                  NA                0.6215280   0.5429994   0.7000565
0-24 months   PROVIDE      BANGLADESH   6-7                  NA                0.5130499   0.3997528   0.6263470
0-24 months   PROVIDE      BANGLADESH   8+                   NA                0.6207897   0.4522015   0.7893780
0-6 months    IRC          INDIA        3 or less            NA                0.6988753   0.5533390   0.8444117
0-6 months    IRC          INDIA        4-5                  NA                0.6211548   0.5096692   0.7326405
0-6 months    IRC          INDIA        6-7                  NA                0.6434107   0.5201745   0.7666470
0-6 months    IRC          INDIA        8+                   NA                0.6529377   0.5192764   0.7865990
0-6 months    NIH-Birth    BANGLADESH   3 or less            NA                0.7006400   0.5660713   0.8352088
0-6 months    NIH-Birth    BANGLADESH   4-5                  NA                0.7121029   0.6173428   0.8068629
0-6 months    NIH-Birth    BANGLADESH   6-7                  NA                0.7478181   0.6289370   0.8666992
0-6 months    NIH-Birth    BANGLADESH   8+                   NA                0.6989153   0.5371534   0.8606771
0-6 months    PROVIDE      BANGLADESH   3 or less            NA                0.7272727   0.5715327   0.8830128
0-6 months    PROVIDE      BANGLADESH   4-5                  NA                0.8111111   0.7338113   0.8884109
0-6 months    PROVIDE      BANGLADESH   6-7                  NA                0.7948718   0.6711274   0.9186162
0-6 months    PROVIDE      BANGLADESH   8+                   NA                0.7391304   0.5552004   0.9230605
6-24 months   IRC          INDIA        3 or less            NA                0.5454545   0.2197802   0.8711289
6-24 months   IRC          INDIA        4-5                  NA                0.4545455   0.3122734   0.5968175
6-24 months   IRC          INDIA        6-7                  NA                0.4523810   0.3012030   0.6035589
6-24 months   IRC          INDIA        8+                   NA                0.6382979   0.4831935   0.7934023
6-24 months   NIH-Birth    BANGLADESH   3 or less            NA                0.1935484   0.0330016   0.3540952
6-24 months   NIH-Birth    BANGLADESH   4-5                  NA                0.3296703   0.2363549   0.4229858
6-24 months   NIH-Birth    BANGLADESH   6-7                  NA                0.3191489   0.1718814   0.4664164
6-24 months   NIH-Birth    BANGLADESH   8+                   NA                0.3103448   0.1515470   0.4691427


### Parameter: E(Y)


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC          INDIA        NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   PROVIDE      BANGLADESH   NA                   NA                0.5811688   0.5245443   0.6377934
0-6 months    IRC          INDIA        NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    NIH-Birth    BANGLADESH   NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    PROVIDE      BANGLADESH   NA                   NA                0.7837838   0.7252863   0.8422812
6-24 months   IRC          INDIA        NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.3030303   0.2377927   0.3682679


### Parameter: RR


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   IRC          INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   IRC          INDIA        4-5                  3 or less         0.8428642   0.6259145   1.135012
0-24 months   IRC          INDIA        6-7                  3 or less         0.8537215   0.6336795   1.150172
0-24 months   IRC          INDIA        8+                   3 or less         0.9884731   0.7364201   1.326796
0-24 months   NIH-Birth    BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth    BANGLADESH   4-5                  3 or less         1.0081278   0.7559590   1.344414
0-24 months   NIH-Birth    BANGLADESH   6-7                  3 or less         1.0875740   0.8007549   1.477128
0-24 months   NIH-Birth    BANGLADESH   8+                   3 or less         1.0378154   0.7348829   1.465622
0-24 months   NIH-Crypto   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto   BANGLADESH   4-5                  3 or less         0.9088731   0.6954729   1.187753
0-24 months   NIH-Crypto   BANGLADESH   6-7                  3 or less         1.0579563   0.7947429   1.408344
0-24 months   NIH-Crypto   BANGLADESH   8+                   3 or less         1.0869254   0.7933946   1.489053
0-24 months   PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   PROVIDE      BANGLADESH   4-5                  3 or less         1.0309251   0.7608830   1.396807
0-24 months   PROVIDE      BANGLADESH   6-7                  3 or less         0.8509930   0.5971707   1.212700
0-24 months   PROVIDE      BANGLADESH   8+                   3 or less         1.0297006   0.6984882   1.517969
0-6 months    IRC          INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    IRC          INDIA        4-5                  3 or less         0.8887920   0.6749382   1.170405
0-6 months    IRC          INDIA        6-7                  3 or less         0.9206374   0.6929678   1.223106
0-6 months    IRC          INDIA        8+                   3 or less         0.9342693   0.6978846   1.250721
0-6 months    NIH-Birth    BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth    BANGLADESH   4-5                  3 or less         1.0163605   0.8040122   1.284792
0-6 months    NIH-Birth    BANGLADESH   6-7                  3 or less         1.0673356   0.8314881   1.370080
0-6 months    NIH-Birth    BANGLADESH   8+                   3 or less         0.9975383   0.7381299   1.348113
0-6 months    PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    PROVIDE      BANGLADESH   4-5                  3 or less         1.1152778   0.8822429   1.409866
0-6 months    PROVIDE      BANGLADESH   6-7                  3 or less         1.0929487   0.8387260   1.424228
0-6 months    PROVIDE      BANGLADESH   8+                   3 or less         1.0163043   0.7318877   1.411247
6-24 months   IRC          INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   IRC          INDIA        4-5                  3 or less         0.8333333   0.4246670   1.635268
6-24 months   IRC          INDIA        6-7                  3 or less         0.8293651   0.4183925   1.644022
6-24 months   IRC          INDIA        8+                   3 or less         1.1702128   0.6142262   2.229468
6-24 months   NIH-Birth    BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth    BANGLADESH   4-5                  3 or less         1.7032967   0.7092180   4.090730
6-24 months   NIH-Birth    BANGLADESH   6-7                  3 or less         1.6489362   0.6381154   4.260970
6-24 months   NIH-Birth    BANGLADESH   8+                   3 or less         1.6034483   0.6051792   4.248405


### Parameter: PAR


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   IRC          INDIA        3 or less            NA                -0.0666453   -0.2165979   0.0833073
0-24 months   NIH-Birth    BANGLADESH   3 or less            NA                 0.0142135   -0.0955182   0.1239452
0-24 months   NIH-Crypto   BANGLADESH   3 or less            NA                -0.0022898   -0.1333950   0.1288154
0-24 months   PROVIDE      BANGLADESH   3 or less            NA                -0.0217149   -0.1731342   0.1297044
0-6 months    IRC          INDIA        3 or less            NA                -0.0613753   -0.1979094   0.0751587
0-6 months    NIH-Birth    BANGLADESH   3 or less            NA                 0.0123644   -0.1081174   0.1328463
0-6 months    PROVIDE      BANGLADESH   3 or less            NA                 0.0565111   -0.0814157   0.1944378
6-24 months   IRC          INDIA        3 or less            NA                -0.0293255   -0.3424212   0.2837702
6-24 months   NIH-Birth    BANGLADESH   3 or less            NA                 0.1094819   -0.0388530   0.2578168


### Parameter: PAF


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   IRC          INDIA        3 or less            NA                -0.1129824   -0.3981130   0.1139987
0-24 months   NIH-Birth    BANGLADESH   3 or less            NA                 0.0273237   -0.2083495   0.2170319
0-24 months   NIH-Crypto   BANGLADESH   3 or less            NA                -0.0036779   -0.2379671   0.1862714
0-24 months   PROVIDE      BANGLADESH   3 or less            NA                -0.0373642   -0.3331809   0.1928144
0-6 months    IRC          INDIA        3 or less            NA                -0.0962750   -0.3339547   0.0990557
0-6 months    NIH-Birth    BANGLADESH   3 or less            NA                 0.0173413   -0.1670498   0.1725991
0-6 months    PROVIDE      BANGLADESH   3 or less            NA                 0.0721003   -0.1224963   0.2329616
6-24 months   IRC          INDIA        3 or less            NA                -0.0568182   -0.8760558   0.4046741
6-24 months   NIH-Birth    BANGLADESH   3 or less            NA                 0.3612903   -0.3836061   0.7051545
