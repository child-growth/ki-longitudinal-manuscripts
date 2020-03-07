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

**Outcome Variable:** stunted

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

agecat      studyid         country      nhh          stunted   n_cell     n
----------  --------------  -----------  ----------  --------  -------  ----
Birth       IRC             INDIA        3 or less          0       51   388
Birth       IRC             INDIA        3 or less          1        3   388
Birth       IRC             INDIA        4-5                0      128   388
Birth       IRC             INDIA        4-5                1       22   388
Birth       IRC             INDIA        6-7                0       89   388
Birth       IRC             INDIA        6-7                1       14   388
Birth       IRC             INDIA        8+                 0       75   388
Birth       IRC             INDIA        8+                 1        6   388
Birth       NIH-Birth       BANGLADESH   3 or less          0       93   608
Birth       NIH-Birth       BANGLADESH   3 or less          1       19   608
Birth       NIH-Birth       BANGLADESH   4-5                0      214   608
Birth       NIH-Birth       BANGLADESH   4-5                1       41   608
Birth       NIH-Birth       BANGLADESH   6-7                0      118   608
Birth       NIH-Birth       BANGLADESH   6-7                1       20   608
Birth       NIH-Birth       BANGLADESH   8+                 0       86   608
Birth       NIH-Birth       BANGLADESH   8+                 1       17   608
Birth       NIH-Crypto      BANGLADESH   3 or less          0       89   732
Birth       NIH-Crypto      BANGLADESH   3 or less          1       19   732
Birth       NIH-Crypto      BANGLADESH   4-5                0      285   732
Birth       NIH-Crypto      BANGLADESH   4-5                1       43   732
Birth       NIH-Crypto      BANGLADESH   6-7                0      151   732
Birth       NIH-Crypto      BANGLADESH   6-7                1       25   732
Birth       NIH-Crypto      BANGLADESH   8+                 0      106   732
Birth       NIH-Crypto      BANGLADESH   8+                 1       14   732
Birth       PROVIDE         BANGLADESH   3 or less          0       96   539
Birth       PROVIDE         BANGLADESH   3 or less          1        8   539
Birth       PROVIDE         BANGLADESH   4-5                0      227   539
Birth       PROVIDE         BANGLADESH   4-5                1       24   539
Birth       PROVIDE         BANGLADESH   6-7                0      107   539
Birth       PROVIDE         BANGLADESH   6-7                1        9   539
Birth       PROVIDE         BANGLADESH   8+                 0       61   539
Birth       PROVIDE         BANGLADESH   8+                 1        7   539
6 months    IRC             INDIA        3 or less          0       44   407
6 months    IRC             INDIA        3 or less          1       14   407
6 months    IRC             INDIA        4-5                0      116   407
6 months    IRC             INDIA        4-5                1       42   407
6 months    IRC             INDIA        6-7                0       81   407
6 months    IRC             INDIA        6-7                1       25   407
6 months    IRC             INDIA        8+                 0       66   407
6 months    IRC             INDIA        8+                 1       19   407
6 months    LCNI-5          MALAWI       3 or less          0      146   816
6 months    LCNI-5          MALAWI       3 or less          1       78   816
6 months    LCNI-5          MALAWI       4-5                0      212   816
6 months    LCNI-5          MALAWI       4-5                1      128   816
6 months    LCNI-5          MALAWI       6-7                0      117   816
6 months    LCNI-5          MALAWI       6-7                1       65   816
6 months    LCNI-5          MALAWI       8+                 0       45   816
6 months    LCNI-5          MALAWI       8+                 1       25   816
6 months    NIH-Birth       BANGLADESH   3 or less          0       74   537
6 months    NIH-Birth       BANGLADESH   3 or less          1       21   537
6 months    NIH-Birth       BANGLADESH   4-5                0      151   537
6 months    NIH-Birth       BANGLADESH   4-5                1       76   537
6 months    NIH-Birth       BANGLADESH   6-7                0      101   537
6 months    NIH-Birth       BANGLADESH   6-7                1       27   537
6 months    NIH-Birth       BANGLADESH   8+                 0       67   537
6 months    NIH-Birth       BANGLADESH   8+                 1       20   537
6 months    NIH-Crypto      BANGLADESH   3 or less          0       78   715
6 months    NIH-Crypto      BANGLADESH   3 or less          1       26   715
6 months    NIH-Crypto      BANGLADESH   4-5                0      257   715
6 months    NIH-Crypto      BANGLADESH   4-5                1       69   715
6 months    NIH-Crypto      BANGLADESH   6-7                0      138   715
6 months    NIH-Crypto      BANGLADESH   6-7                1       32   715
6 months    NIH-Crypto      BANGLADESH   8+                 0       92   715
6 months    NIH-Crypto      BANGLADESH   8+                 1       23   715
6 months    PROVIDE         BANGLADESH   3 or less          0       87   604
6 months    PROVIDE         BANGLADESH   3 or less          1       18   604
6 months    PROVIDE         BANGLADESH   4-5                0      242   604
6 months    PROVIDE         BANGLADESH   4-5                1       47   604
6 months    PROVIDE         BANGLADESH   6-7                0      114   604
6 months    PROVIDE         BANGLADESH   6-7                1       16   604
6 months    PROVIDE         BANGLADESH   8+                 0       65   604
6 months    PROVIDE         BANGLADESH   8+                 1       15   604
6 months    SAS-FoodSuppl   INDIA        3 or less          0       23   380
6 months    SAS-FoodSuppl   INDIA        3 or less          1       10   380
6 months    SAS-FoodSuppl   INDIA        4-5                0       96   380
6 months    SAS-FoodSuppl   INDIA        4-5                1       70   380
6 months    SAS-FoodSuppl   INDIA        6-7                0       65   380
6 months    SAS-FoodSuppl   INDIA        6-7                1       50   380
6 months    SAS-FoodSuppl   INDIA        8+                 0       33   380
6 months    SAS-FoodSuppl   INDIA        8+                 1       33   380
24 months   IRC             INDIA        3 or less          0       39   409
24 months   IRC             INDIA        3 or less          1       19   409
24 months   IRC             INDIA        4-5                0       86   409
24 months   IRC             INDIA        4-5                1       72   409
24 months   IRC             INDIA        6-7                0       66   409
24 months   IRC             INDIA        6-7                1       41   409
24 months   IRC             INDIA        8+                 0       46   409
24 months   IRC             INDIA        8+                 1       40   409
24 months   LCNI-5          MALAWI       3 or less          0       87   574
24 months   LCNI-5          MALAWI       3 or less          1       72   574
24 months   LCNI-5          MALAWI       4-5                0      129   574
24 months   LCNI-5          MALAWI       4-5                1      108   574
24 months   LCNI-5          MALAWI       6-7                0       75   574
24 months   LCNI-5          MALAWI       6-7                1       54   574
24 months   LCNI-5          MALAWI       8+                 0       29   574
24 months   LCNI-5          MALAWI       8+                 1       20   574
24 months   NIH-Birth       BANGLADESH   3 or less          0       34   429
24 months   NIH-Birth       BANGLADESH   3 or less          1       41   429
24 months   NIH-Birth       BANGLADESH   4-5                0       69   429
24 months   NIH-Birth       BANGLADESH   4-5                1      115   429
24 months   NIH-Birth       BANGLADESH   6-7                0       49   429
24 months   NIH-Birth       BANGLADESH   6-7                1       51   429
24 months   NIH-Birth       BANGLADESH   8+                 0       33   429
24 months   NIH-Birth       BANGLADESH   8+                 1       37   429
24 months   NIH-Crypto      BANGLADESH   3 or less          0       53   514
24 months   NIH-Crypto      BANGLADESH   3 or less          1       16   514
24 months   NIH-Crypto      BANGLADESH   4-5                0      168   514
24 months   NIH-Crypto      BANGLADESH   4-5                1       64   514
24 months   NIH-Crypto      BANGLADESH   6-7                0       95   514
24 months   NIH-Crypto      BANGLADESH   6-7                1       35   514
24 months   NIH-Crypto      BANGLADESH   8+                 0       66   514
24 months   NIH-Crypto      BANGLADESH   8+                 1       17   514
24 months   PROVIDE         BANGLADESH   3 or less          0       76   578
24 months   PROVIDE         BANGLADESH   3 or less          1       30   578
24 months   PROVIDE         BANGLADESH   4-5                0      177   578
24 months   PROVIDE         BANGLADESH   4-5                1       96   578
24 months   PROVIDE         BANGLADESH   6-7                0       82   578
24 months   PROVIDE         BANGLADESH   6-7                1       35   578
24 months   PROVIDE         BANGLADESH   8+                 0       53   578
24 months   PROVIDE         BANGLADESH   8+                 1       29   578


The following strata were considered:

* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: IRC, country: INDIA

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
![](/tmp/47a4b45d-66a8-481f-852a-f9d69fb220e2/4077b135-bee7-4aa1-81ea-65df3e828469/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/47a4b45d-66a8-481f-852a-f9d69fb220e2/4077b135-bee7-4aa1-81ea-65df3e828469/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/47a4b45d-66a8-481f-852a-f9d69fb220e2/4077b135-bee7-4aa1-81ea-65df3e828469/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/47a4b45d-66a8-481f-852a-f9d69fb220e2/4077b135-bee7-4aa1-81ea-65df3e828469/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NIH-Birth       BANGLADESH   3 or less            NA                0.1696429   0.1000769   0.2392088
Birth       NIH-Birth       BANGLADESH   4-5                  NA                0.1607843   0.1156617   0.2059069
Birth       NIH-Birth       BANGLADESH   6-7                  NA                0.1449275   0.0861457   0.2037093
Birth       NIH-Birth       BANGLADESH   8+                   NA                0.1650485   0.0932983   0.2367988
Birth       NIH-Crypto      BANGLADESH   3 or less            NA                0.1759259   0.1040669   0.2477849
Birth       NIH-Crypto      BANGLADESH   4-5                  NA                0.1310976   0.0945473   0.1676479
Birth       NIH-Crypto      BANGLADESH   6-7                  NA                0.1420455   0.0904354   0.1936555
Birth       NIH-Crypto      BANGLADESH   8+                   NA                0.1166667   0.0591902   0.1741431
Birth       PROVIDE         BANGLADESH   3 or less            NA                0.0769231   0.0256627   0.1281835
Birth       PROVIDE         BANGLADESH   4-5                  NA                0.0956175   0.0592043   0.1320308
Birth       PROVIDE         BANGLADESH   6-7                  NA                0.0775862   0.0288583   0.1263141
Birth       PROVIDE         BANGLADESH   8+                   NA                0.1029412   0.0306472   0.1752351
6 months    IRC             INDIA        3 or less            NA                0.2413793   0.1311161   0.3516425
6 months    IRC             INDIA        4-5                  NA                0.2658228   0.1968544   0.3347912
6 months    IRC             INDIA        6-7                  NA                0.2358491   0.1549328   0.3167654
6 months    IRC             INDIA        8+                   NA                0.2235294   0.1348541   0.3122047
6 months    LCNI-5          MALAWI       3 or less            NA                0.3482143   0.2857882   0.4106404
6 months    LCNI-5          MALAWI       4-5                  NA                0.3764706   0.3249395   0.4280016
6 months    LCNI-5          MALAWI       6-7                  NA                0.3571429   0.2874871   0.4267986
6 months    LCNI-5          MALAWI       8+                   NA                0.3571429   0.2448264   0.4694594
6 months    NIH-Birth       BANGLADESH   3 or less            NA                0.2210526   0.1375322   0.3045731
6 months    NIH-Birth       BANGLADESH   4-5                  NA                0.3348018   0.2733535   0.3962500
6 months    NIH-Birth       BANGLADESH   6-7                  NA                0.2109375   0.1401950   0.2816800
6 months    NIH-Birth       BANGLADESH   8+                   NA                0.2298851   0.1413885   0.3183816
6 months    NIH-Crypto      BANGLADESH   3 or less            NA                0.2500000   0.1667209   0.3332791
6 months    NIH-Crypto      BANGLADESH   4-5                  NA                0.2116564   0.1672837   0.2560292
6 months    NIH-Crypto      BANGLADESH   6-7                  NA                0.1882353   0.1294332   0.2470374
6 months    NIH-Crypto      BANGLADESH   8+                   NA                0.2000000   0.1268418   0.2731582
6 months    PROVIDE         BANGLADESH   3 or less            NA                0.1714286   0.0992813   0.2435758
6 months    PROVIDE         BANGLADESH   4-5                  NA                0.1626298   0.1200486   0.2052109
6 months    PROVIDE         BANGLADESH   6-7                  NA                0.1230769   0.0665565   0.1795973
6 months    PROVIDE         BANGLADESH   8+                   NA                0.1875000   0.1018997   0.2731003
6 months    SAS-FoodSuppl   INDIA        3 or less            NA                0.3030303   0.1460254   0.4600352
6 months    SAS-FoodSuppl   INDIA        4-5                  NA                0.4216867   0.3464651   0.4969084
6 months    SAS-FoodSuppl   INDIA        6-7                  NA                0.4347826   0.3440601   0.5255051
6 months    SAS-FoodSuppl   INDIA        8+                   NA                0.5000000   0.3792135   0.6207865
24 months   IRC             INDIA        3 or less            NA                0.3275862   0.2066527   0.4485198
24 months   IRC             INDIA        4-5                  NA                0.4556962   0.3779446   0.5334478
24 months   IRC             INDIA        6-7                  NA                0.3831776   0.2909485   0.4754067
24 months   IRC             INDIA        8+                   NA                0.4651163   0.3595705   0.5706621
24 months   LCNI-5          MALAWI       3 or less            NA                0.4528302   0.3753917   0.5302687
24 months   LCNI-5          MALAWI       4-5                  NA                0.4556962   0.3922346   0.5191578
24 months   LCNI-5          MALAWI       6-7                  NA                0.4186047   0.3333988   0.5038106
24 months   LCNI-5          MALAWI       8+                   NA                0.4081633   0.2704275   0.5458990
24 months   NIH-Birth       BANGLADESH   3 or less            NA                0.5466667   0.4338705   0.6594628
24 months   NIH-Birth       BANGLADESH   4-5                  NA                0.6250000   0.5549672   0.6950328
24 months   NIH-Birth       BANGLADESH   6-7                  NA                0.5100000   0.4119070   0.6080930
24 months   NIH-Birth       BANGLADESH   8+                   NA                0.5285714   0.4114960   0.6456468
24 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.2318841   0.1322070   0.3315611
24 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.2758621   0.2182937   0.3334304
24 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.2692308   0.1929084   0.3455531
24 months   NIH-Crypto      BANGLADESH   8+                   NA                0.2048193   0.1179132   0.2917254
24 months   PROVIDE         BANGLADESH   3 or less            NA                0.2830189   0.1971901   0.3688476
24 months   PROVIDE         BANGLADESH   4-5                  NA                0.3516484   0.2949589   0.4083378
24 months   PROVIDE         BANGLADESH   6-7                  NA                0.2991453   0.2161055   0.3821851
24 months   PROVIDE         BANGLADESH   8+                   NA                0.3536585   0.2500870   0.4572300


### Parameter: E(Y)


agecat      studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NIH-Birth       BANGLADESH   NA                   NA                0.1595395   0.1304091   0.1886699
Birth       NIH-Crypto      BANGLADESH   NA                   NA                0.1379781   0.1129774   0.1629789
Birth       PROVIDE         BANGLADESH   NA                   NA                0.0890538   0.0649864   0.1131212
6 months    IRC             INDIA        NA                   NA                0.2457002   0.2038248   0.2875757
6 months    LCNI-5          MALAWI       NA                   NA                0.3627451   0.3297365   0.3957537
6 months    NIH-Birth       BANGLADESH   NA                   NA                0.2681564   0.2306532   0.3056597
6 months    NIH-Crypto      BANGLADESH   NA                   NA                0.2097902   0.1799252   0.2396552
6 months    PROVIDE         BANGLADESH   NA                   NA                0.1589404   0.1297581   0.1881227
6 months    SAS-FoodSuppl   INDIA        NA                   NA                0.4289474   0.3791199   0.4787748
24 months   IRC             INDIA        NA                   NA                0.4205379   0.3726382   0.4684376
24 months   LCNI-5          MALAWI       NA                   NA                0.4425087   0.4018409   0.4831765
24 months   NIH-Birth       BANGLADESH   NA                   NA                0.5687646   0.5218455   0.6156837
24 months   NIH-Crypto      BANGLADESH   NA                   NA                0.2568093   0.2190047   0.2946140
24 months   PROVIDE         BANGLADESH   NA                   NA                0.3287197   0.2903909   0.3670485


### Parameter: RR


agecat      studyid         country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       NIH-Birth       BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
Birth       NIH-Birth       BANGLADESH   4-5                  3 or less         0.9477812   0.5766377   1.557805
Birth       NIH-Birth       BANGLADESH   6-7                  3 or less         0.8543097   0.4798728   1.520914
Birth       NIH-Birth       BANGLADESH   8+                   3 or less         0.9729177   0.5352238   1.768548
Birth       NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
Birth       NIH-Crypto      BANGLADESH   4-5                  3 or less         0.7451861   0.4544520   1.221917
Birth       NIH-Crypto      BANGLADESH   6-7                  3 or less         0.8074163   0.4673903   1.394811
Birth       NIH-Crypto      BANGLADESH   8+                   3 or less         0.6631579   0.3496917   1.257617
Birth       PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
Birth       PROVIDE         BANGLADESH   4-5                  3 or less         1.2430279   0.5769645   2.678013
Birth       PROVIDE         BANGLADESH   6-7                  3 or less         1.0086207   0.4036851   2.520072
Birth       PROVIDE         BANGLADESH   8+                   3 or less         1.3382353   0.5082528   3.523588
6 months    IRC             INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    IRC             INDIA        4-5                  3 or less         1.1012658   0.6512357   1.862285
6 months    IRC             INDIA        6-7                  3 or less         0.9770889   0.5518536   1.729993
6 months    IRC             INDIA        8+                   3 or less         0.9260504   0.5056838   1.695861
6 months    LCNI-5          MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    LCNI-5          MALAWI       4-5                  3 or less         1.0811463   0.8628331   1.354697
6 months    LCNI-5          MALAWI       6-7                  3 or less         1.0256410   0.7869469   1.336735
6 months    LCNI-5          MALAWI       8+                   3 or less         1.0256410   0.7141387   1.473019
6 months    NIH-Birth       BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    NIH-Birth       BANGLADESH   4-5                  3 or less         1.5145794   0.9951004   2.305246
6 months    NIH-Birth       BANGLADESH   6-7                  3 or less         0.9542411   0.5757728   1.581485
6 months    NIH-Birth       BANGLADESH   8+                   3 or less         1.0399562   0.6063976   1.783498
6 months    NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    NIH-Crypto      BANGLADESH   4-5                  3 or less         0.8466258   0.5711563   1.254954
6 months    NIH-Crypto      BANGLADESH   6-7                  3 or less         0.7529412   0.4769027   1.188755
6 months    NIH-Crypto      BANGLADESH   8+                   3 or less         0.8000000   0.4877826   1.312060
6 months    PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    PROVIDE         BANGLADESH   4-5                  3 or less         0.9486736   0.5779035   1.557322
6 months    PROVIDE         BANGLADESH   6-7                  3 or less         0.7179487   0.3850955   1.338500
6 months    PROVIDE         BANGLADESH   8+                   3 or less         1.0937500   0.5878334   2.035082
6 months    SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    SAS-FoodSuppl   INDIA        4-5                  3 or less         1.3915663   0.8044999   2.407031
6 months    SAS-FoodSuppl   INDIA        6-7                  3 or less         1.4347826   0.8207455   2.508209
6 months    SAS-FoodSuppl   INDIA        8+                   3 or less         1.6500000   0.9315637   2.922505
24 months   IRC             INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   IRC             INDIA        4-5                  3 or less         1.3910726   0.9262486   2.089162
24 months   IRC             INDIA        6-7                  3 or less         1.1697000   0.7528014   1.817475
24 months   IRC             INDIA        8+                   3 or less         1.4198286   0.9205382   2.189929
24 months   LCNI-5          MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   LCNI-5          MALAWI       4-5                  3 or less         1.0063291   0.8071608   1.254643
24 months   LCNI-5          MALAWI       6-7                  3 or less         0.9244186   0.7086172   1.205940
24 months   LCNI-5          MALAWI       8+                   3 or less         0.9013605   0.6174482   1.315820
24 months   NIH-Birth       BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   NIH-Birth       BANGLADESH   4-5                  3 or less         1.1432927   0.9040373   1.445868
24 months   NIH-Birth       BANGLADESH   6-7                  3 or less         0.9329268   0.7036269   1.236952
24 months   NIH-Birth       BANGLADESH   8+                   3 or less         0.9668990   0.7143577   1.308719
24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         1.1896552   0.7377339   1.918415
24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         1.1610577   0.6937899   1.943031
24 months   NIH-Crypto      BANGLADESH   8+                   3 or less         0.8832831   0.4828221   1.615894
24 months   PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   PROVIDE         BANGLADESH   4-5                  3 or less         1.2424908   0.8813242   1.751664
24 months   PROVIDE         BANGLADESH   6-7                  3 or less         1.0569801   0.7006763   1.594469
24 months   PROVIDE         BANGLADESH   8+                   3 or less         1.2495935   0.8197420   1.904848


### Parameter: PAR


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       NIH-Birth       BANGLADESH   3 or less            NA                -0.0101034   -0.0725938   0.0523871
Birth       NIH-Crypto      BANGLADESH   3 or less            NA                -0.0379478   -0.1032550   0.0273595
Birth       PROVIDE         BANGLADESH   3 or less            NA                 0.0121307   -0.0346973   0.0589588
6 months    IRC             INDIA        3 or less            NA                 0.0043209   -0.0978865   0.1065284
6 months    LCNI-5          MALAWI       3 or less            NA                 0.0145308   -0.0388269   0.0678885
6 months    NIH-Birth       BANGLADESH   3 or less            NA                 0.0471038   -0.0297991   0.1240066
6 months    NIH-Crypto      BANGLADESH   3 or less            NA                -0.0402098   -0.1164315   0.0360119
6 months    PROVIDE         BANGLADESH   3 or less            NA                -0.0124882   -0.0776577   0.0526814
6 months    SAS-FoodSuppl   INDIA        3 or less            NA                 0.1259171   -0.0252514   0.2770856
24 months   IRC             INDIA        3 or less            NA                 0.0929517   -0.0200590   0.2059623
24 months   LCNI-5          MALAWI       3 or less            NA                -0.0103215   -0.0761118   0.0554688
24 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0220979   -0.0802534   0.1244492
24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0249253   -0.0683335   0.1181840
24 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0457009   -0.0326174   0.1240191


### Parameter: PAF


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       NIH-Birth       BANGLADESH   3 or less            NA                -0.0633284   -0.5367551   0.2642501
Birth       NIH-Crypto      BANGLADESH   3 or less            NA                -0.2750275   -0.8459022   0.1192951
Birth       PROVIDE         BANGLADESH   3 or less            NA                 0.1362179   -0.5857997   0.5294996
6 months    IRC             INDIA        3 or less            NA                 0.0175862   -0.5003286   0.3567164
6 months    LCNI-5          MALAWI       3 or less            NA                 0.0400579   -0.1189093   0.1764401
6 months    NIH-Birth       BANGLADESH   3 or less            NA                 0.1756579   -0.1667458   0.4175767
6 months    NIH-Crypto      BANGLADESH   3 or less            NA                -0.1916667   -0.6159515   0.1212178
6 months    PROVIDE         BANGLADESH   3 or less            NA                -0.0785714   -0.5772042   0.2624187
6 months    SAS-FoodSuppl   INDIA        3 or less            NA                 0.2935490   -0.1635757   0.5710867
24 months   IRC             INDIA        3 or less            NA                 0.2210305   -0.1000925   0.4484159
24 months   LCNI-5          MALAWI       3 or less            NA                -0.0233249   -0.1833548   0.1150635
24 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0388525   -0.1591027   0.2030002
24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0970575   -0.3498114   0.3959859
24 months   PROVIDE         BANGLADESH   3 or less            NA                 0.1390268   -0.1353398   0.3470899
