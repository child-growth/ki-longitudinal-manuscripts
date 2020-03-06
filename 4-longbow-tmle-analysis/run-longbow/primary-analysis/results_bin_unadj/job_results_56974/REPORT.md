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

unadjusted

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
![](/tmp/26a8e141-b81c-4b29-811e-5e80d1307c0f/f87ae357-358d-40cd-bd9a-b5cdbaedf9d7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/26a8e141-b81c-4b29-811e-5e80d1307c0f/f87ae357-358d-40cd-bd9a-b5cdbaedf9d7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/26a8e141-b81c-4b29-811e-5e80d1307c0f/f87ae357-358d-40cd-bd9a-b5cdbaedf9d7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/26a8e141-b81c-4b29-811e-5e80d1307c0f/f87ae357-358d-40cd-bd9a-b5cdbaedf9d7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC          INDIA        3 or less            NA                0.6530612   0.4957283   0.8103942
0-24 months   IRC          INDIA        4-5                  NA                0.5514706   0.4595591   0.6433820
0-24 months   IRC          INDIA        6-7                  NA                0.5607477   0.4676055   0.6538899
0-24 months   IRC          INDIA        8+                   NA                0.6407767   0.5401604   0.7413930
0-24 months   NIH-Birth    BANGLADESH   3 or less            NA                0.5063291   0.3872714   0.6253869
0-24 months   NIH-Birth    BANGLADESH   4-5                  NA                0.5083799   0.4291011   0.5876587
0-24 months   NIH-Birth    BANGLADESH   6-7                  NA                0.5500000   0.4493259   0.6506741
0-24 months   NIH-Birth    BANGLADESH   8+                   NA                0.5238095   0.3992857   0.6483333
0-24 months   NIH-Crypto   BANGLADESH   3 or less            NA                0.6041667   0.4581362   0.7501972
0-24 months   NIH-Crypto   BANGLADESH   4-5                  NA                0.5800000   0.5022921   0.6577079
0-24 months   NIH-Crypto   BANGLADESH   6-7                  NA                0.6666667   0.5519237   0.7814097
0-24 months   NIH-Crypto   BANGLADESH   8+                   NA                0.7209302   0.5871474   0.8547130
0-24 months   PROVIDE      BANGLADESH   3 or less            NA                0.5744681   0.4148767   0.7340595
0-24 months   PROVIDE      BANGLADESH   4-5                  NA                0.6197183   0.5419797   0.6974569
0-24 months   PROVIDE      BANGLADESH   6-7                  NA                0.5066667   0.3938262   0.6195072
0-24 months   PROVIDE      BANGLADESH   8+                   NA                0.5909091   0.4288617   0.7529564
0-6 months    IRC          INDIA        3 or less            NA                0.6842105   0.5433626   0.8250585
0-6 months    IRC          INDIA        4-5                  NA                0.6172840   0.5071231   0.7274448
0-6 months    IRC          INDIA        6-7                  NA                0.6307692   0.5104178   0.7511207
0-6 months    IRC          INDIA        8+                   NA                0.6428571   0.5116435   0.7740708
0-6 months    NIH-Birth    BANGLADESH   3 or less            NA                0.7083333   0.5824756   0.8341911
0-6 months    NIH-Birth    BANGLADESH   4-5                  NA                0.6931818   0.5961748   0.7901888
0-6 months    NIH-Birth    BANGLADESH   6-7                  NA                0.7547170   0.6380983   0.8713357
0-6 months    NIH-Birth    BANGLADESH   8+                   NA                0.7058824   0.5516883   0.8600764
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
0-24 months   IRC          INDIA        4-5                  3 or less         0.8444393   0.6299810   1.131904
0-24 months   IRC          INDIA        6-7                  3 or less         0.8586449   0.6407711   1.150600
0-24 months   IRC          INDIA        8+                   3 or less         0.9811893   0.7360153   1.308033
0-24 months   NIH-Birth    BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth    BANGLADESH   4-5                  3 or less         1.0040503   0.7572030   1.331370
0-24 months   NIH-Birth    BANGLADESH   6-7                  3 or less         1.0862500   0.8061978   1.463585
0-24 months   NIH-Birth    BANGLADESH   8+                   3 or less         1.0345238   0.7404263   1.445437
0-24 months   NIH-Crypto   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto   BANGLADESH   4-5                  3 or less         0.9600000   0.7278651   1.266169
0-24 months   NIH-Crypto   BANGLADESH   6-7                  3 or less         1.1034483   0.8199026   1.485052
0-24 months   NIH-Crypto   BANGLADESH   8+                   3 or less         1.1932638   0.8797048   1.618587
0-24 months   PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   PROVIDE      BANGLADESH   4-5                  3 or less         1.0787689   0.7951642   1.463525
0-24 months   PROVIDE      BANGLADESH   6-7                  3 or less         0.8819753   0.6177189   1.259279
0-24 months   PROVIDE      BANGLADESH   8+                   3 or less         1.0286195   0.6961493   1.519872
0-6 months    IRC          INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    IRC          INDIA        4-5                  3 or less         0.9021842   0.6870280   1.184721
0-6 months    IRC          INDIA        6-7                  3 or less         0.9218935   0.6962754   1.220620
0-6 months    IRC          INDIA        8+                   3 or less         0.9395604   0.7031128   1.255522
0-6 months    NIH-Birth    BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth    BANGLADESH   4-5                  3 or less         0.9786096   0.7805179   1.226976
0-6 months    NIH-Birth    BANGLADESH   6-7                  3 or less         1.0654828   0.8419421   1.348375
0-6 months    NIH-Birth    BANGLADESH   8+                   3 or less         0.9965398   0.7519793   1.320637
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
0-24 months   IRC          INDIA        3 or less            NA                -0.0631878   -0.2091334   0.0827577
0-24 months   NIH-Birth    BANGLADESH   3 or less            NA                 0.0138609   -0.0930759   0.1207977
0-24 months   NIH-Crypto   BANGLADESH   3 or less            NA                 0.0184140   -0.1148320   0.1516599
0-24 months   PROVIDE      BANGLADESH   3 or less            NA                 0.0067007   -0.1379971   0.1513986
0-6 months    IRC          INDIA        3 or less            NA                -0.0467105   -0.1788035   0.0853824
0-6 months    NIH-Birth    BANGLADESH   3 or less            NA                 0.0046712   -0.1073646   0.1167069
0-6 months    PROVIDE      BANGLADESH   3 or less            NA                 0.0565111   -0.0814157   0.1944378
6-24 months   IRC          INDIA        3 or less            NA                -0.0293255   -0.3424212   0.2837702
6-24 months   NIH-Birth    BANGLADESH   3 or less            NA                 0.1094819   -0.0388530   0.2578168


### Parameter: PAF


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   IRC          INDIA        3 or less            NA                -0.1071210   -0.3840235   0.1143815
0-24 months   NIH-Birth    BANGLADESH   3 or less            NA                 0.0266459   -0.2023207   0.2120087
0-24 months   NIH-Crypto   BANGLADESH   3 or less            NA                 0.0295769   -0.2100426   0.2217455
0-24 months   PROVIDE      BANGLADESH   3 or less            NA                 0.0115298   -0.2717312   0.2316982
0-6 months    IRC          INDIA        3 or less            NA                -0.0732714   -0.3027688   0.1157974
0-6 months    NIH-Birth    BANGLADESH   3 or less            NA                 0.0065514   -0.1636785   0.1518790
0-6 months    PROVIDE      BANGLADESH   3 or less            NA                 0.0721003   -0.1224963   0.2329616
6-24 months   IRC          INDIA        3 or less            NA                -0.0568182   -0.8760558   0.4046741
6-24 months   NIH-Birth    BANGLADESH   3 or less            NA                 0.3612903   -0.3836061   0.7051545
