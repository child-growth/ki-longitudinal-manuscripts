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

**Outcome Variable:** ever_sstunted

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

agecat        studyid         country      nhh          ever_sstunted   n_cell     n
------------  --------------  -----------  ----------  --------------  -------  ----
0-24 months   IRC             INDIA        3 or less                0       47   410
0-24 months   IRC             INDIA        3 or less                1       11   410
0-24 months   IRC             INDIA        4-5                      0      114   410
0-24 months   IRC             INDIA        4-5                      1       44   410
0-24 months   IRC             INDIA        6-7                      0       80   410
0-24 months   IRC             INDIA        6-7                      1       27   410
0-24 months   IRC             INDIA        8+                       0       67   410
0-24 months   IRC             INDIA        8+                       1       20   410
0-24 months   LCNI-5          MALAWI       3 or less                0      183   817
0-24 months   LCNI-5          MALAWI       3 or less                1       42   817
0-24 months   LCNI-5          MALAWI       4-5                      0      263   817
0-24 months   LCNI-5          MALAWI       4-5                      1       77   817
0-24 months   LCNI-5          MALAWI       6-7                      0      146   817
0-24 months   LCNI-5          MALAWI       6-7                      1       36   817
0-24 months   LCNI-5          MALAWI       8+                       0       55   817
0-24 months   LCNI-5          MALAWI       8+                       1       15   817
0-24 months   NIH-Birth       BANGLADESH   3 or less                0       87   629
0-24 months   NIH-Birth       BANGLADESH   3 or less                1       30   629
0-24 months   NIH-Birth       BANGLADESH   4-5                      0      172   629
0-24 months   NIH-Birth       BANGLADESH   4-5                      1       92   629
0-24 months   NIH-Birth       BANGLADESH   6-7                      0       98   629
0-24 months   NIH-Birth       BANGLADESH   6-7                      1       44   629
0-24 months   NIH-Birth       BANGLADESH   8+                       0       76   629
0-24 months   NIH-Birth       BANGLADESH   8+                       1       30   629
0-24 months   NIH-Crypto      BANGLADESH   3 or less                0      102   758
0-24 months   NIH-Crypto      BANGLADESH   3 or less                1       12   758
0-24 months   NIH-Crypto      BANGLADESH   4-5                      0      295   758
0-24 months   NIH-Crypto      BANGLADESH   4-5                      1       47   758
0-24 months   NIH-Crypto      BANGLADESH   6-7                      0      153   758
0-24 months   NIH-Crypto      BANGLADESH   6-7                      1       25   758
0-24 months   NIH-Crypto      BANGLADESH   8+                       0      109   758
0-24 months   NIH-Crypto      BANGLADESH   8+                       1       15   758
0-24 months   PROVIDE         BANGLADESH   3 or less                0      117   700
0-24 months   PROVIDE         BANGLADESH   3 or less                1       23   700
0-24 months   PROVIDE         BANGLADESH   4-5                      0      280   700
0-24 months   PROVIDE         BANGLADESH   4-5                      1       42   700
0-24 months   PROVIDE         BANGLADESH   6-7                      0      135   700
0-24 months   PROVIDE         BANGLADESH   6-7                      1       16   700
0-24 months   PROVIDE         BANGLADESH   8+                       0       73   700
0-24 months   PROVIDE         BANGLADESH   8+                       1       14   700
0-24 months   SAS-FoodSuppl   INDIA        3 or less                0       28   418
0-24 months   SAS-FoodSuppl   INDIA        3 or less                1       10   418
0-24 months   SAS-FoodSuppl   INDIA        4-5                      0       97   418
0-24 months   SAS-FoodSuppl   INDIA        4-5                      1       86   418
0-24 months   SAS-FoodSuppl   INDIA        6-7                      0       58   418
0-24 months   SAS-FoodSuppl   INDIA        6-7                      1       69   418
0-24 months   SAS-FoodSuppl   INDIA        8+                       0       34   418
0-24 months   SAS-FoodSuppl   INDIA        8+                       1       36   418
0-6 months    IRC             INDIA        3 or less                0       51   410
0-6 months    IRC             INDIA        3 or less                1        7   410
0-6 months    IRC             INDIA        4-5                      0      127   410
0-6 months    IRC             INDIA        4-5                      1       31   410
0-6 months    IRC             INDIA        6-7                      0       91   410
0-6 months    IRC             INDIA        6-7                      1       16   410
0-6 months    IRC             INDIA        8+                       0       79   410
0-6 months    IRC             INDIA        8+                       1        8   410
0-6 months    LCNI-5          MALAWI       3 or less                0       65   269
0-6 months    LCNI-5          MALAWI       3 or less                1        5   269
0-6 months    LCNI-5          MALAWI       4-5                      0      102   269
0-6 months    LCNI-5          MALAWI       4-5                      1        9   269
0-6 months    LCNI-5          MALAWI       6-7                      0       63   269
0-6 months    LCNI-5          MALAWI       6-7                      1        4   269
0-6 months    LCNI-5          MALAWI       8+                       0       20   269
0-6 months    LCNI-5          MALAWI       8+                       1        1   269
0-6 months    NIH-Birth       BANGLADESH   3 or less                0      105   629
0-6 months    NIH-Birth       BANGLADESH   3 or less                1       12   629
0-6 months    NIH-Birth       BANGLADESH   4-5                      0      236   629
0-6 months    NIH-Birth       BANGLADESH   4-5                      1       28   629
0-6 months    NIH-Birth       BANGLADESH   6-7                      0      132   629
0-6 months    NIH-Birth       BANGLADESH   6-7                      1       10   629
0-6 months    NIH-Birth       BANGLADESH   8+                       0       97   629
0-6 months    NIH-Birth       BANGLADESH   8+                       1        9   629
0-6 months    NIH-Crypto      BANGLADESH   3 or less                0      108   758
0-6 months    NIH-Crypto      BANGLADESH   3 or less                1        6   758
0-6 months    NIH-Crypto      BANGLADESH   4-5                      0      319   758
0-6 months    NIH-Crypto      BANGLADESH   4-5                      1       23   758
0-6 months    NIH-Crypto      BANGLADESH   6-7                      0      168   758
0-6 months    NIH-Crypto      BANGLADESH   6-7                      1       10   758
0-6 months    NIH-Crypto      BANGLADESH   8+                       0      116   758
0-6 months    NIH-Crypto      BANGLADESH   8+                       1        8   758
0-6 months    PROVIDE         BANGLADESH   3 or less                0      133   700
0-6 months    PROVIDE         BANGLADESH   3 or less                1        7   700
0-6 months    PROVIDE         BANGLADESH   4-5                      0      306   700
0-6 months    PROVIDE         BANGLADESH   4-5                      1       16   700
0-6 months    PROVIDE         BANGLADESH   6-7                      0      149   700
0-6 months    PROVIDE         BANGLADESH   6-7                      1        2   700
0-6 months    PROVIDE         BANGLADESH   8+                       0       81   700
0-6 months    PROVIDE         BANGLADESH   8+                       1        6   700
0-6 months    SAS-FoodSuppl   INDIA        3 or less                0       35   416
0-6 months    SAS-FoodSuppl   INDIA        3 or less                1        3   416
0-6 months    SAS-FoodSuppl   INDIA        4-5                      0      163   416
0-6 months    SAS-FoodSuppl   INDIA        4-5                      1       19   416
0-6 months    SAS-FoodSuppl   INDIA        6-7                      0      107   416
0-6 months    SAS-FoodSuppl   INDIA        6-7                      1       19   416
0-6 months    SAS-FoodSuppl   INDIA        8+                       0       61   416
0-6 months    SAS-FoodSuppl   INDIA        8+                       1        9   416


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
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




# Results Detail

## Results Plots
![](/tmp/09c4324b-94a5-444b-b645-2a3890a58fd8/4e9bd77a-d320-4653-aab7-977b13f44d24/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/09c4324b-94a5-444b-b645-2a3890a58fd8/4e9bd77a-d320-4653-aab7-977b13f44d24/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/09c4324b-94a5-444b-b645-2a3890a58fd8/4e9bd77a-d320-4653-aab7-977b13f44d24/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/09c4324b-94a5-444b-b645-2a3890a58fd8/4e9bd77a-d320-4653-aab7-977b13f44d24/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC             INDIA        3 or less            NA                0.1896552   0.0886412   0.2906692
0-24 months   IRC             INDIA        4-5                  NA                0.2784810   0.2085014   0.3484606
0-24 months   IRC             INDIA        6-7                  NA                0.2523364   0.1699360   0.3347369
0-24 months   IRC             INDIA        8+                   NA                0.2298851   0.1413629   0.3184072
0-24 months   LCNI-5          MALAWI       3 or less            NA                0.1866667   0.1357230   0.2376104
0-24 months   LCNI-5          MALAWI       4-5                  NA                0.2264706   0.1819543   0.2709869
0-24 months   LCNI-5          MALAWI       6-7                  NA                0.1978022   0.1398947   0.2557097
0-24 months   LCNI-5          MALAWI       8+                   NA                0.2142857   0.1181037   0.3104677
0-24 months   NIH-Birth       BANGLADESH   3 or less            NA                0.2564103   0.1772267   0.3355938
0-24 months   NIH-Birth       BANGLADESH   4-5                  NA                0.3484848   0.2909613   0.4060084
0-24 months   NIH-Birth       BANGLADESH   6-7                  NA                0.3098592   0.2337389   0.3859794
0-24 months   NIH-Birth       BANGLADESH   8+                   NA                0.2830189   0.1971962   0.3688416
0-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.1052632   0.0488905   0.1616358
0-24 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.1374269   0.1009132   0.1739406
0-24 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.1404494   0.0893730   0.1915259
0-24 months   NIH-Crypto      BANGLADESH   8+                   NA                0.1209677   0.0635348   0.1784007
0-24 months   PROVIDE         BANGLADESH   3 or less            NA                0.1642857   0.1028638   0.2257076
0-24 months   PROVIDE         BANGLADESH   4-5                  NA                0.1304348   0.0936237   0.1672458
0-24 months   PROVIDE         BANGLADESH   6-7                  NA                0.1059603   0.0568333   0.1550872
0-24 months   PROVIDE         BANGLADESH   8+                   NA                0.1609195   0.0836506   0.2381885
0-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                0.2631579   0.1229825   0.4033333
0-24 months   SAS-FoodSuppl   INDIA        4-5                  NA                0.4699454   0.3975473   0.5423434
0-24 months   SAS-FoodSuppl   INDIA        6-7                  NA                0.5433071   0.4565707   0.6300434
0-24 months   SAS-FoodSuppl   INDIA        8+                   NA                0.5142857   0.3970630   0.6315085
0-6 months    IRC             INDIA        3 or less            NA                0.1206897   0.0367494   0.2046299
0-6 months    IRC             INDIA        4-5                  NA                0.1962025   0.1342049   0.2582002
0-6 months    IRC             INDIA        6-7                  NA                0.1495327   0.0818803   0.2171851
0-6 months    IRC             INDIA        8+                   NA                0.0919540   0.0311604   0.1527476
0-6 months    NIH-Birth       BANGLADESH   3 or less            NA                0.1025641   0.0475467   0.1575815
0-6 months    NIH-Birth       BANGLADESH   4-5                  NA                0.1060606   0.0688880   0.1432332
0-6 months    NIH-Birth       BANGLADESH   6-7                  NA                0.0704225   0.0283064   0.1125386
0-6 months    NIH-Birth       BANGLADESH   8+                   NA                0.0849057   0.0317999   0.1380115
0-6 months    NIH-Crypto      BANGLADESH   3 or less            NA                0.0526316   0.0116145   0.0936487
0-6 months    NIH-Crypto      BANGLADESH   4-5                  NA                0.0672515   0.0406898   0.0938131
0-6 months    NIH-Crypto      BANGLADESH   6-7                  NA                0.0561798   0.0223297   0.0900298
0-6 months    NIH-Crypto      BANGLADESH   8+                   NA                0.0645161   0.0212472   0.1077851


### Parameter: E(Y)


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC             INDIA        NA                   NA                0.2487805   0.2068840   0.2906770
0-24 months   LCNI-5          MALAWI       NA                   NA                0.2080783   0.1802263   0.2359304
0-24 months   NIH-Birth       BANGLADESH   NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   NIH-Crypto      BANGLADESH   NA                   NA                0.1306069   0.1066024   0.1546113
0-24 months   PROVIDE         BANGLADESH   NA                   NA                0.1357143   0.1103250   0.1611036
0-24 months   SAS-FoodSuppl   INDIA        NA                   NA                0.4808612   0.4329065   0.5288160
0-6 months    IRC             INDIA        NA                   NA                0.1512195   0.1164988   0.1859402
0-6 months    NIH-Birth       BANGLADESH   NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    NIH-Crypto      BANGLADESH   NA                   NA                0.0620053   0.0448256   0.0791849


### Parameter: RR


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   IRC             INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   IRC             INDIA        4-5                  3 or less         1.4683544   0.8148260   2.646043
0-24 months   IRC             INDIA        6-7                  3 or less         1.3305013   0.7123408   2.485094
0-24 months   IRC             INDIA        8+                   3 or less         1.2121212   0.6282185   2.338737
0-24 months   LCNI-5          MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   LCNI-5          MALAWI       4-5                  3 or less         1.2132353   0.8667181   1.698291
0-24 months   LCNI-5          MALAWI       6-7                  3 or less         1.0596546   0.7101422   1.581187
0-24 months   LCNI-5          MALAWI       8+                   3 or less         1.1479592   0.6788731   1.941173
0-24 months   NIH-Birth       BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth       BANGLADESH   4-5                  3 or less         1.3590909   0.9575784   1.928958
0-24 months   NIH-Birth       BANGLADESH   6-7                  3 or less         1.2084507   0.8144272   1.793105
0-24 months   NIH-Birth       BANGLADESH   8+                   3 or less         1.1037736   0.7160021   1.701554
0-24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         1.3055556   0.7180629   2.373713
0-24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         1.3342697   0.6984022   2.549069
0-24 months   NIH-Crypto      BANGLADESH   8+                   3 or less         1.1491935   0.5617863   2.350797
0-24 months   PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   PROVIDE         BANGLADESH   4-5                  3 or less         0.7939509   0.4970002   1.268325
0-24 months   PROVIDE         BANGLADESH   6-7                  3 or less         0.6449755   0.3555311   1.170062
0-24 months   PROVIDE         BANGLADESH   8+                   3 or less         0.9795102   0.5329847   1.800127
0-24 months   SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl   INDIA        4-5                  3 or less         1.7857923   1.0256896   3.109181
0-24 months   SAS-FoodSuppl   INDIA        6-7                  3 or less         2.0645669   1.1839363   3.600225
0-24 months   SAS-FoodSuppl   INDIA        8+                   3 or less         1.9542857   1.0948744   3.488284
0-6 months    IRC             INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    IRC             INDIA        4-5                  3 or less         1.6256781   0.7572995   3.489807
0-6 months    IRC             INDIA        6-7                  3 or less         1.2389853   0.5404161   2.840561
0-6 months    IRC             INDIA        8+                   3 or less         0.7619048   0.2918463   1.989057
0-6 months    NIH-Birth       BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth       BANGLADESH   4-5                  3 or less         1.0340909   0.5448490   1.962643
0-6 months    NIH-Birth       BANGLADESH   6-7                  3 or less         0.6866197   0.3074793   1.533263
0-6 months    NIH-Birth       BANGLADESH   8+                   3 or less         0.8278302   0.3631514   1.887099
0-6 months    NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto      BANGLADESH   4-5                  3 or less         1.2777778   0.5333533   3.061228
0-6 months    NIH-Crypto      BANGLADESH   6-7                  3 or less         1.0674157   0.3985813   2.858579
0-6 months    NIH-Crypto      BANGLADESH   8+                   3 or less         1.2258065   0.4384209   3.427304


### Parameter: PAR


agecat        studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   IRC             INDIA        3 or less            NA                 0.0591253   -0.0361229   0.1543735
0-24 months   LCNI-5          MALAWI       3 or less            NA                 0.0214117   -0.0226512   0.0654746
0-24 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0551955   -0.0172587   0.1276496
0-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0253437   -0.0275544   0.0782418
0-24 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0285714   -0.0824992   0.0253564
0-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.2177033    0.0821444   0.3532623
0-6 months    IRC             INDIA        3 or less            NA                 0.0305299   -0.0485777   0.1096374
0-6 months    NIH-Birth       BANGLADESH   3 or less            NA                -0.0087644   -0.0579660   0.0404372
0-6 months    NIH-Crypto      BANGLADESH   3 or less            NA                 0.0093737   -0.0289863   0.0477337


### Parameter: PAF


agecat        studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   IRC             INDIA        3 or less            NA                 0.2376606   -0.2579630   0.5380139
0-24 months   LCNI-5          MALAWI       3 or less            NA                 0.1029020   -0.1356408   0.2913385
0-24 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.1771324   -0.0912550   0.3795116
0-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.1940457   -0.3301941   0.5116786
0-24 months   PROVIDE         BANGLADESH   3 or less            NA                -0.2105263   -0.6791882   0.1273319
0-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.4527363    0.0838811   0.6730800
0-6 months    IRC             INDIA        3 or less            NA                 0.2018910   -0.5343522   0.5848554
0-6 months    NIH-Birth       BANGLADESH   3 or less            NA                -0.0934376   -0.7659589   0.3229707
0-6 months    NIH-Crypto      BANGLADESH   3 or less            NA                 0.1511758   -0.7567274   0.5898610
