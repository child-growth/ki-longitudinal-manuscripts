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

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_impfloor
* delta_impsan
* delta_safeh20

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




# Results Detail

## Results Plots
![](/tmp/f2f3d3fe-f1a8-4c97-aea1-9960cf597e09/33b72ab1-668f-4910-bf5f-75508cb44d0c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f2f3d3fe-f1a8-4c97-aea1-9960cf597e09/33b72ab1-668f-4910-bf5f-75508cb44d0c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f2f3d3fe-f1a8-4c97-aea1-9960cf597e09/33b72ab1-668f-4910-bf5f-75508cb44d0c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f2f3d3fe-f1a8-4c97-aea1-9960cf597e09/33b72ab1-668f-4910-bf5f-75508cb44d0c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   NIH-Birth       BANGLADESH   3 or less            NA                0.2878867   0.2082272   0.3675462
0-24 months   NIH-Birth       BANGLADESH   4-5                  NA                0.2523990   0.1971744   0.3076235
0-24 months   NIH-Birth       BANGLADESH   6-7                  NA                0.1795967   0.1101388   0.2490547
0-24 months   NIH-Birth       BANGLADESH   8+                   NA                0.2127037   0.1198847   0.3055227
0-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.0789474   0.0294145   0.1284802
0-24 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.1111111   0.0777820   0.1444403
0-24 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.0842697   0.0434336   0.1251058
0-24 months   NIH-Crypto      BANGLADESH   8+                   NA                0.0725806   0.0268853   0.1182760
0-24 months   PROVIDE         BANGLADESH   3 or less            NA                0.0884801   0.0411094   0.1358508
0-24 months   PROVIDE         BANGLADESH   4-5                  NA                0.1263755   0.0900526   0.1626983
0-24 months   PROVIDE         BANGLADESH   6-7                  NA                0.1601819   0.1014624   0.2189015
0-24 months   PROVIDE         BANGLADESH   8+                   NA                0.1459295   0.0722250   0.2196340
0-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                0.2567536   0.1131315   0.4003758
0-24 months   SAS-FoodSuppl   INDIA        4-5                  NA                0.3877714   0.3166768   0.4588661
0-24 months   SAS-FoodSuppl   INDIA        6-7                  NA                0.3760734   0.2903961   0.4617507
0-24 months   SAS-FoodSuppl   INDIA        8+                   NA                0.3801406   0.2628909   0.4973902
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
6-24 months   NIH-Birth       BANGLADESH   3 or less            NA                0.2359609   0.1426738   0.3292480
6-24 months   NIH-Birth       BANGLADESH   4-5                  NA                0.2397759   0.1847737   0.2947781
6-24 months   NIH-Birth       BANGLADESH   6-7                  NA                0.1474632   0.0878012   0.2071252
6-24 months   NIH-Birth       BANGLADESH   8+                   NA                0.1883304   0.1017042   0.2749567
6-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.0747664   0.0248971   0.1246356
6-24 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.1030303   0.0702087   0.1358519
6-24 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.0738636   0.0351965   0.1125308
6-24 months   NIH-Crypto      BANGLADESH   8+                   NA                0.0683761   0.0226119   0.1141402
6-24 months   PROVIDE         BANGLADESH   3 or less            NA                0.0915432   0.0365028   0.1465835
6-24 months   PROVIDE         BANGLADESH   4-5                  NA                0.1136658   0.0768781   0.1504536
6-24 months   PROVIDE         BANGLADESH   6-7                  NA                0.1577366   0.0931781   0.2222951
6-24 months   PROVIDE         BANGLADESH   8+                   NA                0.1328554   0.0568969   0.2088139
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
0-24 months   NIH-Birth       BANGLADESH   4-5                  3 or less         0.8767302   0.6172346   1.245322
0-24 months   NIH-Birth       BANGLADESH   6-7                  3 or less         0.6238452   0.3880907   1.002814
0-24 months   NIH-Birth       BANGLADESH   8+                   3 or less         0.7388452   0.4411403   1.237457
0-24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         1.4074074   0.7020963   2.821259
0-24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         1.0674157   0.4831033   2.358453
0-24 months   NIH-Crypto      BANGLADESH   8+                   3 or less         0.9193548   0.3779794   2.236136
0-24 months   PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   PROVIDE         BANGLADESH   4-5                  3 or less         1.4282927   0.7776133   2.623438
0-24 months   PROVIDE         BANGLADESH   6-7                  3 or less         1.8103726   0.9465902   3.462374
0-24 months   PROVIDE         BANGLADESH   8+                   3 or less         1.6492918   0.7902553   3.442133
0-24 months   SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl   INDIA        4-5                  3 or less         1.5102861   0.8385778   2.720039
0-24 months   SAS-FoodSuppl   INDIA        6-7                  3 or less         1.4647248   0.8005307   2.679995
0-24 months   SAS-FoodSuppl   INDIA        8+                   3 or less         1.4805657   0.7816711   2.804344
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
6-24 months   NIH-Birth       BANGLADESH   4-5                  3 or less         1.0161680   0.6441538   1.603029
6-24 months   NIH-Birth       BANGLADESH   6-7                  3 or less         0.6249476   0.3554513   1.098771
6-24 months   NIH-Birth       BANGLADESH   8+                   3 or less         0.7981427   0.4355656   1.462539
6-24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         1.3780303   0.6580232   2.885867
6-24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         0.9879261   0.4231416   2.306552
6-24 months   NIH-Crypto      BANGLADESH   8+                   3 or less         0.9145299   0.3554914   2.352701
6-24 months   PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   PROVIDE         BANGLADESH   4-5                  3 or less         1.2416635   0.6289313   2.451346
6-24 months   PROVIDE         BANGLADESH   6-7                  3 or less         1.7230847   0.8319588   3.568712
6-24 months   PROVIDE         BANGLADESH   8+                   3 or less         1.4512868   0.6318811   3.333275
6-24 months   SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl   INDIA        4-5                  3 or less         1.4857143   0.8166281   2.703001
6-24 months   SAS-FoodSuppl   INDIA        6-7                  3 or less         1.5483871   0.8427029   2.845015
6-24 months   SAS-FoodSuppl   INDIA        8+                   3 or less         1.3939394   0.7235269   2.685549


### Parameter: PAR


agecat        studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   IRC             INDIA        3 or less            NA                 0.0646762   -0.0157649   0.1451173
0-24 months   LCNI-5          MALAWI       3 or less            NA                 0.0025187   -0.0217015   0.0267389
0-24 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0683354   -0.1422082   0.0055374
0-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0147202   -0.0316081   0.0610485
0-24 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0400913   -0.0043972   0.0845798
0-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.1140598   -0.0242748   0.2523944
0-6 months    NIH-Birth       BANGLADESH   3 or less            NA                 0.0284876   -0.0077301   0.0647053
6-24 months   IRC             INDIA        3 or less            NA                 0.0698907   -0.0007330   0.1405143
6-24 months   LCNI-5          MALAWI       3 or less            NA                 0.0017152   -0.0232601   0.0266905
6-24 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0256288   -0.1113724   0.0601149
6-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0115350   -0.0350848   0.0581549
6-24 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0306067   -0.0208049   0.0820183
6-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.1115960   -0.0250539   0.2482459


### Parameter: PAF


agecat        studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   IRC             INDIA        3 or less            NA                 0.3489111   -0.2600050    0.6635594
0-24 months   LCNI-5          MALAWI       3 or less            NA                 0.0489947   -0.5604430    0.4204139
0-24 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.3112504   -0.7009655   -0.0108244
0-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.1571534   -0.5138446    0.5307376
0-24 months   PROVIDE         BANGLADESH   3 or less            NA                 0.3118215   -0.1306178    0.5811231
0-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.3075935   -0.1867434    0.5960148
0-6 months    NIH-Birth       BANGLADESH   3 or less            NA                 0.3937622   -0.3589707    0.7295569
6-24 months   IRC             INDIA        3 or less            NA                 0.4477371   -0.2326072    0.7525616
6-24 months   LCNI-5          MALAWI       3 or less            NA                 0.0328746   -0.5863693    0.4103948
6-24 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.1218491   -0.6132913    0.2198896
6-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.1336597   -0.6147363    0.5351900
6-24 months   PROVIDE         BANGLADESH   3 or less            NA                 0.2505666   -0.3100187    0.5712653
6-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.3086207   -0.1934670    0.5994817
