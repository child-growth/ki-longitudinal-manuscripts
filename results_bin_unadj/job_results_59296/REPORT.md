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

**Outcome Variable:** ever_co

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

agecat        studyid         country      nhh          ever_co   n_cell     n
------------  --------------  -----------  ----------  --------  -------  ----
0-24 months   IRC             INDIA        3 or less          0       51   410
0-24 months   IRC             INDIA        3 or less          1        7   410
0-24 months   IRC             INDIA        4-5                0      129   410
0-24 months   IRC             INDIA        4-5                1       29   410
0-24 months   IRC             INDIA        6-7                0       89   410
0-24 months   IRC             INDIA        6-7                1       18   410
0-24 months   IRC             INDIA        8+                 0       65   410
0-24 months   IRC             INDIA        8+                 1       22   410
0-24 months   LCNI-5          MALAWI       3 or less          0      214   817
0-24 months   LCNI-5          MALAWI       3 or less          1       11   817
0-24 months   LCNI-5          MALAWI       4-5                0      323   817
0-24 months   LCNI-5          MALAWI       4-5                1       17   817
0-24 months   LCNI-5          MALAWI       6-7                0      176   817
0-24 months   LCNI-5          MALAWI       6-7                1        6   817
0-24 months   LCNI-5          MALAWI       8+                 0       62   817
0-24 months   LCNI-5          MALAWI       8+                 1        8   817
0-24 months   NIH-Birth       BANGLADESH   3 or less          0       93   624
0-24 months   NIH-Birth       BANGLADESH   3 or less          1       22   624
0-24 months   NIH-Birth       BANGLADESH   4-5                0      196   624
0-24 months   NIH-Birth       BANGLADESH   4-5                1       67   624
0-24 months   NIH-Birth       BANGLADESH   6-7                0      114   624
0-24 months   NIH-Birth       BANGLADESH   6-7                1       27   624
0-24 months   NIH-Birth       BANGLADESH   8+                 0       84   624
0-24 months   NIH-Birth       BANGLADESH   8+                 1       21   624
0-24 months   NIH-Crypto      BANGLADESH   3 or less          0      105   758
0-24 months   NIH-Crypto      BANGLADESH   3 or less          1        9   758
0-24 months   NIH-Crypto      BANGLADESH   4-5                0      304   758
0-24 months   NIH-Crypto      BANGLADESH   4-5                1       38   758
0-24 months   NIH-Crypto      BANGLADESH   6-7                0      163   758
0-24 months   NIH-Crypto      BANGLADESH   6-7                1       15   758
0-24 months   NIH-Crypto      BANGLADESH   8+                 0      115   758
0-24 months   NIH-Crypto      BANGLADESH   8+                 1        9   758
0-24 months   PROVIDE         BANGLADESH   3 or less          0      128   700
0-24 months   PROVIDE         BANGLADESH   3 or less          1       12   700
0-24 months   PROVIDE         BANGLADESH   4-5                0      281   700
0-24 months   PROVIDE         BANGLADESH   4-5                1       41   700
0-24 months   PROVIDE         BANGLADESH   6-7                0      127   700
0-24 months   PROVIDE         BANGLADESH   6-7                1       24   700
0-24 months   PROVIDE         BANGLADESH   8+                 0       74   700
0-24 months   PROVIDE         BANGLADESH   8+                 1       13   700
0-24 months   SAS-FoodSuppl   INDIA        3 or less          0       28   418
0-24 months   SAS-FoodSuppl   INDIA        3 or less          1       10   418
0-24 months   SAS-FoodSuppl   INDIA        4-5                0      113   418
0-24 months   SAS-FoodSuppl   INDIA        4-5                1       70   418
0-24 months   SAS-FoodSuppl   INDIA        6-7                0       79   418
0-24 months   SAS-FoodSuppl   INDIA        6-7                1       48   418
0-24 months   SAS-FoodSuppl   INDIA        8+                 0       43   418
0-24 months   SAS-FoodSuppl   INDIA        8+                 1       27   418
0-6 months    IRC             INDIA        3 or less          0       55   409
0-6 months    IRC             INDIA        3 or less          1        3   409
0-6 months    IRC             INDIA        4-5                0      145   409
0-6 months    IRC             INDIA        4-5                1       13   409
0-6 months    IRC             INDIA        6-7                0      101   409
0-6 months    IRC             INDIA        6-7                1        5   409
0-6 months    IRC             INDIA        8+                 0       83   409
0-6 months    IRC             INDIA        8+                 1        4   409
0-6 months    LCNI-5          MALAWI       3 or less          0       70   269
0-6 months    LCNI-5          MALAWI       3 or less          1        0   269
0-6 months    LCNI-5          MALAWI       4-5                0      111   269
0-6 months    LCNI-5          MALAWI       4-5                1        0   269
0-6 months    LCNI-5          MALAWI       6-7                0       67   269
0-6 months    LCNI-5          MALAWI       6-7                1        0   269
0-6 months    LCNI-5          MALAWI       8+                 0       21   269
0-6 months    LCNI-5          MALAWI       8+                 1        0   269
0-6 months    NIH-Birth       BANGLADESH   3 or less          0      109   622
0-6 months    NIH-Birth       BANGLADESH   3 or less          1        5   622
0-6 months    NIH-Birth       BANGLADESH   4-5                0      242   622
0-6 months    NIH-Birth       BANGLADESH   4-5                1       21   622
0-6 months    NIH-Birth       BANGLADESH   6-7                0      132   622
0-6 months    NIH-Birth       BANGLADESH   6-7                1        9   622
0-6 months    NIH-Birth       BANGLADESH   8+                 0       94   622
0-6 months    NIH-Birth       BANGLADESH   8+                 1       10   622
0-6 months    NIH-Crypto      BANGLADESH   3 or less          0      113   758
0-6 months    NIH-Crypto      BANGLADESH   3 or less          1        1   758
0-6 months    NIH-Crypto      BANGLADESH   4-5                0      331   758
0-6 months    NIH-Crypto      BANGLADESH   4-5                1       11   758
0-6 months    NIH-Crypto      BANGLADESH   6-7                0      174   758
0-6 months    NIH-Crypto      BANGLADESH   6-7                1        4   758
0-6 months    NIH-Crypto      BANGLADESH   8+                 0      123   758
0-6 months    NIH-Crypto      BANGLADESH   8+                 1        1   758
0-6 months    PROVIDE         BANGLADESH   3 or less          0      137   700
0-6 months    PROVIDE         BANGLADESH   3 or less          1        3   700
0-6 months    PROVIDE         BANGLADESH   4-5                0      305   700
0-6 months    PROVIDE         BANGLADESH   4-5                1       17   700
0-6 months    PROVIDE         BANGLADESH   6-7                0      146   700
0-6 months    PROVIDE         BANGLADESH   6-7                1        5   700
0-6 months    PROVIDE         BANGLADESH   8+                 0       82   700
0-6 months    PROVIDE         BANGLADESH   8+                 1        5   700
0-6 months    SAS-FoodSuppl   INDIA        3 or less          0       37   416
0-6 months    SAS-FoodSuppl   INDIA        3 or less          1        1   416
0-6 months    SAS-FoodSuppl   INDIA        4-5                0      164   416
0-6 months    SAS-FoodSuppl   INDIA        4-5                1       18   416
0-6 months    SAS-FoodSuppl   INDIA        6-7                0      120   416
0-6 months    SAS-FoodSuppl   INDIA        6-7                1        6   416
0-6 months    SAS-FoodSuppl   INDIA        8+                 0       63   416
0-6 months    SAS-FoodSuppl   INDIA        8+                 1        7   416
6-24 months   IRC             INDIA        3 or less          0       53   410
6-24 months   IRC             INDIA        3 or less          1        5   410
6-24 months   IRC             INDIA        4-5                0      134   410
6-24 months   IRC             INDIA        4-5                1       24   410
6-24 months   IRC             INDIA        6-7                0       91   410
6-24 months   IRC             INDIA        6-7                1       16   410
6-24 months   IRC             INDIA        8+                 0       68   410
6-24 months   IRC             INDIA        8+                 1       19   410
6-24 months   LCNI-5          MALAWI       3 or less          0      207   805
6-24 months   LCNI-5          MALAWI       3 or less          1       11   805
6-24 months   LCNI-5          MALAWI       4-5                0      319   805
6-24 months   LCNI-5          MALAWI       4-5                1       17   805
6-24 months   LCNI-5          MALAWI       6-7                0      175   805
6-24 months   LCNI-5          MALAWI       6-7                1        6   805
6-24 months   LCNI-5          MALAWI       8+                 0       62   805
6-24 months   LCNI-5          MALAWI       8+                 1        8   805
6-24 months   NIH-Birth       BANGLADESH   3 or less          0       75   542
6-24 months   NIH-Birth       BANGLADESH   3 or less          1       20   542
6-24 months   NIH-Birth       BANGLADESH   4-5                0      175   542
6-24 months   NIH-Birth       BANGLADESH   4-5                1       56   542
6-24 months   NIH-Birth       BANGLADESH   6-7                0      107   542
6-24 months   NIH-Birth       BANGLADESH   6-7                1       22   542
6-24 months   NIH-Birth       BANGLADESH   8+                 0       71   542
6-24 months   NIH-Birth       BANGLADESH   8+                 1       16   542
6-24 months   NIH-Crypto      BANGLADESH   3 or less          0       99   730
6-24 months   NIH-Crypto      BANGLADESH   3 or less          1        8   730
6-24 months   NIH-Crypto      BANGLADESH   4-5                0      296   730
6-24 months   NIH-Crypto      BANGLADESH   4-5                1       34   730
6-24 months   NIH-Crypto      BANGLADESH   6-7                0      163   730
6-24 months   NIH-Crypto      BANGLADESH   6-7                1       13   730
6-24 months   NIH-Crypto      BANGLADESH   8+                 0      109   730
6-24 months   NIH-Crypto      BANGLADESH   8+                 1        8   730
6-24 months   PROVIDE         BANGLADESH   3 or less          0      102   614
6-24 months   PROVIDE         BANGLADESH   3 or less          1       10   614
6-24 months   PROVIDE         BANGLADESH   4-5                0      256   614
6-24 months   PROVIDE         BANGLADESH   4-5                1       33   614
6-24 months   PROVIDE         BANGLADESH   6-7                0      109   614
6-24 months   PROVIDE         BANGLADESH   6-7                1       21   614
6-24 months   PROVIDE         BANGLADESH   8+                 0       72   614
6-24 months   PROVIDE         BANGLADESH   8+                 1       11   614
6-24 months   SAS-FoodSuppl   INDIA        3 or less          0       27   401
6-24 months   SAS-FoodSuppl   INDIA        3 or less          1        9   401
6-24 months   SAS-FoodSuppl   INDIA        4-5                0      110   401
6-24 months   SAS-FoodSuppl   INDIA        4-5                1       65   401
6-24 months   SAS-FoodSuppl   INDIA        6-7                0       76   401
6-24 months   SAS-FoodSuppl   INDIA        6-7                1       48   401
6-24 months   SAS-FoodSuppl   INDIA        8+                 0       43   401
6-24 months   SAS-FoodSuppl   INDIA        8+                 1       23   401


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

* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA

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
![](/tmp/ead13f2b-1654-49f0-8128-d116cb2a57d3/402c8441-089e-43ee-9573-742f68520d9a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ead13f2b-1654-49f0-8128-d116cb2a57d3/402c8441-089e-43ee-9573-742f68520d9a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ead13f2b-1654-49f0-8128-d116cb2a57d3/402c8441-089e-43ee-9573-742f68520d9a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ead13f2b-1654-49f0-8128-d116cb2a57d3/402c8441-089e-43ee-9573-742f68520d9a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC             INDIA        3 or less            NA                0.1206897   0.0367494   0.2046299
0-24 months   IRC             INDIA        4-5                  NA                0.1835443   0.1231096   0.2439790
0-24 months   IRC             INDIA        6-7                  NA                0.1682243   0.0972610   0.2391876
0-24 months   IRC             INDIA        8+                   NA                0.2528736   0.1614270   0.3443202
0-24 months   LCNI-5          MALAWI       3 or less            NA                0.0488889   0.0206957   0.0770820
0-24 months   LCNI-5          MALAWI       4-5                  NA                0.0500000   0.0268196   0.0731804
0-24 months   LCNI-5          MALAWI       6-7                  NA                0.0329670   0.0070110   0.0589231
0-24 months   LCNI-5          MALAWI       8+                   NA                0.1142857   0.0397082   0.1888632
0-24 months   NIH-Birth       BANGLADESH   3 or less            NA                0.1913043   0.1193590   0.2632496
0-24 months   NIH-Birth       BANGLADESH   4-5                  NA                0.2547529   0.2020507   0.3074550
0-24 months   NIH-Birth       BANGLADESH   6-7                  NA                0.1914894   0.1264911   0.2564877
0-24 months   NIH-Birth       BANGLADESH   8+                   NA                0.2000000   0.1234295   0.2765705
0-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.0789474   0.0294145   0.1284802
0-24 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.1111111   0.0777820   0.1444403
0-24 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.0842697   0.0434336   0.1251058
0-24 months   NIH-Crypto      BANGLADESH   8+                   NA                0.0725806   0.0268853   0.1182760
0-24 months   PROVIDE         BANGLADESH   3 or less            NA                0.0857143   0.0393096   0.1321190
0-24 months   PROVIDE         BANGLADESH   4-5                  NA                0.1273292   0.0908941   0.1637643
0-24 months   PROVIDE         BANGLADESH   6-7                  NA                0.1589404   0.1005824   0.2172984
0-24 months   PROVIDE         BANGLADESH   8+                   NA                0.1494253   0.0744588   0.2243918
0-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                0.2631579   0.1229825   0.4033333
0-24 months   SAS-FoodSuppl   INDIA        4-5                  NA                0.3825137   0.3120152   0.4530122
0-24 months   SAS-FoodSuppl   INDIA        6-7                  NA                0.3779528   0.2935228   0.4623828
0-24 months   SAS-FoodSuppl   INDIA        8+                   NA                0.3857143   0.2715482   0.4998804
0-6 months    NIH-Birth       BANGLADESH   3 or less            NA                0.0438596   0.0062379   0.0814814
0-6 months    NIH-Birth       BANGLADESH   4-5                  NA                0.0798479   0.0470625   0.1126334
0-6 months    NIH-Birth       BANGLADESH   6-7                  NA                0.0638298   0.0234488   0.1042108
0-6 months    NIH-Birth       BANGLADESH   8+                   NA                0.0961538   0.0394501   0.1528575
6-24 months   IRC             INDIA        3 or less            NA                0.0862069   0.0138867   0.1585270
6-24 months   IRC             INDIA        4-5                  NA                0.1518987   0.0958648   0.2079326
6-24 months   IRC             INDIA        6-7                  NA                0.1495327   0.0818803   0.2171851
6-24 months   IRC             INDIA        8+                   NA                0.2183908   0.1314686   0.3053130
6-24 months   LCNI-5          MALAWI       3 or less            NA                0.0504587   0.0213840   0.0795334
6-24 months   LCNI-5          MALAWI       4-5                  NA                0.0505952   0.0271460   0.0740445
6-24 months   LCNI-5          MALAWI       6-7                  NA                0.0331492   0.0070519   0.0592464
6-24 months   LCNI-5          MALAWI       8+                   NA                0.1142857   0.0397075   0.1888639
6-24 months   NIH-Birth       BANGLADESH   3 or less            NA                0.2105263   0.1284705   0.2925821
6-24 months   NIH-Birth       BANGLADESH   4-5                  NA                0.2424242   0.1871091   0.2977394
6-24 months   NIH-Birth       BANGLADESH   6-7                  NA                0.1705426   0.1055794   0.2355059
6-24 months   NIH-Birth       BANGLADESH   8+                   NA                0.1839080   0.1024265   0.2653896
6-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.0747664   0.0248971   0.1246356
6-24 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.1030303   0.0702087   0.1358519
6-24 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.0738636   0.0351965   0.1125308
6-24 months   NIH-Crypto      BANGLADESH   8+                   NA                0.0683761   0.0226119   0.1141402
6-24 months   PROVIDE         BANGLADESH   3 or less            NA                0.0892857   0.0364321   0.1421394
6-24 months   PROVIDE         BANGLADESH   4-5                  NA                0.1141869   0.0774897   0.1508840
6-24 months   PROVIDE         BANGLADESH   6-7                  NA                0.1615385   0.0982230   0.2248539
6-24 months   PROVIDE         BANGLADESH   8+                   NA                0.1325301   0.0595260   0.2055343
6-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                0.2500000   0.1083751   0.3916249
6-24 months   SAS-FoodSuppl   INDIA        4-5                  NA                0.3714286   0.2997505   0.4431066
6-24 months   SAS-FoodSuppl   INDIA        6-7                  NA                0.3870968   0.3012577   0.4729359
6-24 months   SAS-FoodSuppl   INDIA        8+                   NA                0.3484848   0.2333856   0.4635841


### Parameter: E(Y)


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC             INDIA        NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   LCNI-5          MALAWI       NA                   NA                0.0514076   0.0362561   0.0665591
0-24 months   NIH-Birth       BANGLADESH   NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   NIH-Crypto      BANGLADESH   NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   PROVIDE         BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   SAS-FoodSuppl   INDIA        NA                   NA                0.3708134   0.3244530   0.4171738
0-6 months    NIH-Birth       BANGLADESH   NA                   NA                0.0723473   0.0519719   0.0927227
6-24 months   IRC             INDIA        NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   LCNI-5          MALAWI       NA                   NA                0.0521739   0.0368026   0.0675452
6-24 months   NIH-Birth       BANGLADESH   NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   NIH-Crypto      BANGLADESH   NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   PROVIDE         BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   SAS-FoodSuppl   INDIA        NA                   NA                0.3615960   0.3145115   0.4086805


### Parameter: RR


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   IRC             INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   IRC             INDIA        4-5                  3 or less         1.5207957   0.7044945   3.282949
0-24 months   IRC             INDIA        6-7                  3 or less         1.3938585   0.6179437   3.144043
0-24 months   IRC             INDIA        8+                   3 or less         2.0952381   0.9567285   4.588577
0-24 months   LCNI-5          MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   LCNI-5          MALAWI       4-5                  3 or less         1.0227273   0.4879936   2.143412
0-24 months   LCNI-5          MALAWI       6-7                  3 or less         0.6743257   0.2541124   1.789425
0-24 months   LCNI-5          MALAWI       8+                   3 or less         2.3376623   0.9785333   5.584547
0-24 months   NIH-Birth       BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth       BANGLADESH   4-5                  3 or less         1.3316626   0.8669325   2.045517
0-24 months   NIH-Birth       BANGLADESH   6-7                  3 or less         1.0009671   0.6031191   1.661256
0-24 months   NIH-Birth       BANGLADESH   8+                   3 or less         1.0454545   0.6112713   1.788036
0-24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         1.4074074   0.7020963   2.821259
0-24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         1.0674157   0.4831033   2.358453
0-24 months   NIH-Crypto      BANGLADESH   8+                   3 or less         0.9193548   0.3779794   2.236136
0-24 months   PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   PROVIDE         BANGLADESH   4-5                  3 or less         1.4855072   0.8052506   2.740429
0-24 months   PROVIDE         BANGLADESH   6-7                  3 or less         1.8543046   0.9640212   3.566774
0-24 months   PROVIDE         BANGLADESH   8+                   3 or less         1.7432950   0.8333257   3.646926
0-24 months   SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl   INDIA        4-5                  3 or less         1.4535519   0.8272570   2.553998
0-24 months   SAS-FoodSuppl   INDIA        6-7                  3 or less         1.4362205   0.8060600   2.559027
0-24 months   SAS-FoodSuppl   INDIA        8+                   3 or less         1.4657143   0.7968927   2.695869
0-6 months    NIH-Birth       BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth       BANGLADESH   4-5                  3 or less         1.8205323   0.7033826   4.711998
0-6 months    NIH-Birth       BANGLADESH   6-7                  3 or less         1.4553191   0.5012700   4.225176
0-6 months    NIH-Birth       BANGLADESH   8+                   3 or less         2.1923077   0.7741573   6.208316
6-24 months   IRC             INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   IRC             INDIA        4-5                  3 or less         1.7620253   0.7047074   4.405706
6-24 months   IRC             INDIA        6-7                  3 or less         1.7345794   0.6687337   4.499199
6-24 months   IRC             INDIA        8+                   3 or less         2.5333333   1.0009946   6.411401
6-24 months   LCNI-5          MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   LCNI-5          MALAWI       4-5                  3 or less         1.0027056   0.4786582   2.100494
6-24 months   LCNI-5          MALAWI       6-7                  3 or less         0.6569563   0.2476491   1.742754
6-24 months   LCNI-5          MALAWI       8+                   3 or less         2.2649351   0.9483814   5.409143
6-24 months   NIH-Birth       BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth       BANGLADESH   4-5                  3 or less         1.1515152   0.7330337   1.808903
6-24 months   NIH-Birth       BANGLADESH   6-7                  3 or less         0.8100775   0.4697200   1.397057
6-24 months   NIH-Birth       BANGLADESH   8+                   3 or less         0.8735632   0.4841925   1.576052
6-24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         1.3780303   0.6580232   2.885867
6-24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         0.9879261   0.4231416   2.306552
6-24 months   NIH-Crypto      BANGLADESH   8+                   3 or less         0.9145299   0.3554914   2.352701
6-24 months   PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   PROVIDE         BANGLADESH   4-5                  3 or less         1.2788927   0.6520858   2.508208
6-24 months   PROVIDE         BANGLADESH   6-7                  3 or less         1.8092308   0.8895323   3.679817
6-24 months   PROVIDE         BANGLADESH   8+                   3 or less         1.4843373   0.6612368   3.332025
6-24 months   SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl   INDIA        4-5                  3 or less         1.4857143   0.8166281   2.703001
6-24 months   SAS-FoodSuppl   INDIA        6-7                  3 or less         1.5483871   0.8427029   2.845015
6-24 months   SAS-FoodSuppl   INDIA        8+                   3 or less         1.3939394   0.7235269   2.685549


### Parameter: PAR


agecat        studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   IRC             INDIA        3 or less            NA                 0.0646762   -0.0157649   0.1451173
0-24 months   LCNI-5          MALAWI       3 or less            NA                 0.0025187   -0.0217015   0.0267389
0-24 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0282469   -0.0375163   0.0940102
0-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0147202   -0.0316081   0.0610485
0-24 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0428571   -0.0008209   0.0865352
0-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.1076555   -0.0273477   0.2426587
0-6 months    NIH-Birth       BANGLADESH   3 or less            NA                 0.0284876   -0.0077301   0.0647053
6-24 months   IRC             INDIA        3 or less            NA                 0.0698907   -0.0007330   0.1405143
6-24 months   LCNI-5          MALAWI       3 or less            NA                 0.0017152   -0.0232601   0.0266905
6-24 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0001942   -0.0747072   0.0743188
6-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0115350   -0.0350848   0.0581549
6-24 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0328641   -0.0165964   0.0823247
6-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.1115960   -0.0250539   0.2482459


### Parameter: PAF


agecat        studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   IRC             INDIA        3 or less            NA                 0.3489111   -0.2600050   0.6635594
0-24 months   LCNI-5          MALAWI       3 or less            NA                 0.0489947   -0.5604430   0.4204139
0-24 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.1286576   -0.2283696   0.3819143
0-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.1571534   -0.5138446   0.5307376
0-24 months   PROVIDE         BANGLADESH   3 or less            NA                 0.3333333   -0.1015512   0.5965286
0-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.2903226   -0.1848905   0.5749463
0-6 months    NIH-Birth       BANGLADESH   3 or less            NA                 0.3937622   -0.3589707   0.7295569
6-24 months   IRC             INDIA        3 or less            NA                 0.4477371   -0.2326072   0.7525616
6-24 months   LCNI-5          MALAWI       3 or less            NA                 0.0328746   -0.5863693   0.4103948
6-24 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0009234   -0.4259807   0.2974326
6-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.1336597   -0.6147363   0.5351900
6-24 months   PROVIDE         BANGLADESH   3 or less            NA                 0.2690476   -0.2663603   0.5780890
6-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.3086207   -0.1934670   0.5994817
