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

**Outcome Variable:** ever_swasted

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

agecat        studyid         country      nhh          ever_swasted   n_cell     n
------------  --------------  -----------  ----------  -------------  -------  ----
0-24 months   IRC             INDIA        3 or less               0       35   410
0-24 months   IRC             INDIA        3 or less               1       23   410
0-24 months   IRC             INDIA        4-5                     0      109   410
0-24 months   IRC             INDIA        4-5                     1       49   410
0-24 months   IRC             INDIA        6-7                     0       69   410
0-24 months   IRC             INDIA        6-7                     1       38   410
0-24 months   IRC             INDIA        8+                      0       57   410
0-24 months   IRC             INDIA        8+                      1       30   410
0-24 months   LCNI-5          MALAWI       3 or less               0      224   817
0-24 months   LCNI-5          MALAWI       3 or less               1        1   817
0-24 months   LCNI-5          MALAWI       4-5                     0      334   817
0-24 months   LCNI-5          MALAWI       4-5                     1        6   817
0-24 months   LCNI-5          MALAWI       6-7                     0      182   817
0-24 months   LCNI-5          MALAWI       6-7                     1        0   817
0-24 months   LCNI-5          MALAWI       8+                      0       69   817
0-24 months   LCNI-5          MALAWI       8+                      1        1   817
0-24 months   NIH-Birth       BANGLADESH   3 or less               0       95   624
0-24 months   NIH-Birth       BANGLADESH   3 or less               1       20   624
0-24 months   NIH-Birth       BANGLADESH   4-5                     0      220   624
0-24 months   NIH-Birth       BANGLADESH   4-5                     1       43   624
0-24 months   NIH-Birth       BANGLADESH   6-7                     0      119   624
0-24 months   NIH-Birth       BANGLADESH   6-7                     1       22   624
0-24 months   NIH-Birth       BANGLADESH   8+                      0       91   624
0-24 months   NIH-Birth       BANGLADESH   8+                      1       14   624
0-24 months   NIH-Crypto      BANGLADESH   3 or less               0      103   758
0-24 months   NIH-Crypto      BANGLADESH   3 or less               1       11   758
0-24 months   NIH-Crypto      BANGLADESH   4-5                     0      310   758
0-24 months   NIH-Crypto      BANGLADESH   4-5                     1       32   758
0-24 months   NIH-Crypto      BANGLADESH   6-7                     0      164   758
0-24 months   NIH-Crypto      BANGLADESH   6-7                     1       14   758
0-24 months   NIH-Crypto      BANGLADESH   8+                      0      115   758
0-24 months   NIH-Crypto      BANGLADESH   8+                      1        9   758
0-24 months   PROVIDE         BANGLADESH   3 or less               0      131   700
0-24 months   PROVIDE         BANGLADESH   3 or less               1        9   700
0-24 months   PROVIDE         BANGLADESH   4-5                     0      308   700
0-24 months   PROVIDE         BANGLADESH   4-5                     1       14   700
0-24 months   PROVIDE         BANGLADESH   6-7                     0      140   700
0-24 months   PROVIDE         BANGLADESH   6-7                     1       11   700
0-24 months   PROVIDE         BANGLADESH   8+                      0       79   700
0-24 months   PROVIDE         BANGLADESH   8+                      1        8   700
0-24 months   SAS-FoodSuppl   INDIA        3 or less               0       33   418
0-24 months   SAS-FoodSuppl   INDIA        3 or less               1        5   418
0-24 months   SAS-FoodSuppl   INDIA        4-5                     0      151   418
0-24 months   SAS-FoodSuppl   INDIA        4-5                     1       32   418
0-24 months   SAS-FoodSuppl   INDIA        6-7                     0      104   418
0-24 months   SAS-FoodSuppl   INDIA        6-7                     1       23   418
0-24 months   SAS-FoodSuppl   INDIA        8+                      0       59   418
0-24 months   SAS-FoodSuppl   INDIA        8+                      1       11   418
0-6 months    IRC             INDIA        3 or less               0       36   410
0-6 months    IRC             INDIA        3 or less               1       22   410
0-6 months    IRC             INDIA        4-5                     0      114   410
0-6 months    IRC             INDIA        4-5                     1       44   410
0-6 months    IRC             INDIA        6-7                     0       72   410
0-6 months    IRC             INDIA        6-7                     1       35   410
0-6 months    IRC             INDIA        8+                      0       62   410
0-6 months    IRC             INDIA        8+                      1       25   410
0-6 months    LCNI-5          MALAWI       3 or less               0       70   269
0-6 months    LCNI-5          MALAWI       3 or less               1        0   269
0-6 months    LCNI-5          MALAWI       4-5                     0      111   269
0-6 months    LCNI-5          MALAWI       4-5                     1        0   269
0-6 months    LCNI-5          MALAWI       6-7                     0       67   269
0-6 months    LCNI-5          MALAWI       6-7                     1        0   269
0-6 months    LCNI-5          MALAWI       8+                      0       21   269
0-6 months    LCNI-5          MALAWI       8+                      1        0   269
0-6 months    NIH-Birth       BANGLADESH   3 or less               0       99   622
0-6 months    NIH-Birth       BANGLADESH   3 or less               1       15   622
0-6 months    NIH-Birth       BANGLADESH   4-5                     0      240   622
0-6 months    NIH-Birth       BANGLADESH   4-5                     1       23   622
0-6 months    NIH-Birth       BANGLADESH   6-7                     0      131   622
0-6 months    NIH-Birth       BANGLADESH   6-7                     1       10   622
0-6 months    NIH-Birth       BANGLADESH   8+                      0       96   622
0-6 months    NIH-Birth       BANGLADESH   8+                      1        8   622
0-6 months    NIH-Crypto      BANGLADESH   3 or less               0      104   758
0-6 months    NIH-Crypto      BANGLADESH   3 or less               1       10   758
0-6 months    NIH-Crypto      BANGLADESH   4-5                     0      320   758
0-6 months    NIH-Crypto      BANGLADESH   4-5                     1       22   758
0-6 months    NIH-Crypto      BANGLADESH   6-7                     0      167   758
0-6 months    NIH-Crypto      BANGLADESH   6-7                     1       11   758
0-6 months    NIH-Crypto      BANGLADESH   8+                      0      117   758
0-6 months    NIH-Crypto      BANGLADESH   8+                      1        7   758
0-6 months    PROVIDE         BANGLADESH   3 or less               0      133   700
0-6 months    PROVIDE         BANGLADESH   3 or less               1        7   700
0-6 months    PROVIDE         BANGLADESH   4-5                     0      313   700
0-6 months    PROVIDE         BANGLADESH   4-5                     1        9   700
0-6 months    PROVIDE         BANGLADESH   6-7                     0      146   700
0-6 months    PROVIDE         BANGLADESH   6-7                     1        5   700
0-6 months    PROVIDE         BANGLADESH   8+                      0       79   700
0-6 months    PROVIDE         BANGLADESH   8+                      1        8   700
0-6 months    SAS-FoodSuppl   INDIA        3 or less               0       38   418
0-6 months    SAS-FoodSuppl   INDIA        3 or less               1        0   418
0-6 months    SAS-FoodSuppl   INDIA        4-5                     0      171   418
0-6 months    SAS-FoodSuppl   INDIA        4-5                     1       12   418
0-6 months    SAS-FoodSuppl   INDIA        6-7                     0      122   418
0-6 months    SAS-FoodSuppl   INDIA        6-7                     1        5   418
0-6 months    SAS-FoodSuppl   INDIA        8+                      0       67   418
0-6 months    SAS-FoodSuppl   INDIA        8+                      1        3   418
6-24 months   IRC             INDIA        3 or less               0       55   410
6-24 months   IRC             INDIA        3 or less               1        3   410
6-24 months   IRC             INDIA        4-5                     0      148   410
6-24 months   IRC             INDIA        4-5                     1       10   410
6-24 months   IRC             INDIA        6-7                     0      102   410
6-24 months   IRC             INDIA        6-7                     1        5   410
6-24 months   IRC             INDIA        8+                      0       79   410
6-24 months   IRC             INDIA        8+                      1        8   410
6-24 months   LCNI-5          MALAWI       3 or less               0      217   805
6-24 months   LCNI-5          MALAWI       3 or less               1        1   805
6-24 months   LCNI-5          MALAWI       4-5                     0      330   805
6-24 months   LCNI-5          MALAWI       4-5                     1        6   805
6-24 months   LCNI-5          MALAWI       6-7                     0      181   805
6-24 months   LCNI-5          MALAWI       6-7                     1        0   805
6-24 months   LCNI-5          MALAWI       8+                      0       69   805
6-24 months   LCNI-5          MALAWI       8+                      1        1   805
6-24 months   NIH-Birth       BANGLADESH   3 or less               0       89   542
6-24 months   NIH-Birth       BANGLADESH   3 or less               1        6   542
6-24 months   NIH-Birth       BANGLADESH   4-5                     0      210   542
6-24 months   NIH-Birth       BANGLADESH   4-5                     1       21   542
6-24 months   NIH-Birth       BANGLADESH   6-7                     0      115   542
6-24 months   NIH-Birth       BANGLADESH   6-7                     1       14   542
6-24 months   NIH-Birth       BANGLADESH   8+                      0       80   542
6-24 months   NIH-Birth       BANGLADESH   8+                      1        7   542
6-24 months   NIH-Crypto      BANGLADESH   3 or less               0      104   730
6-24 months   NIH-Crypto      BANGLADESH   3 or less               1        3   730
6-24 months   NIH-Crypto      BANGLADESH   4-5                     0      318   730
6-24 months   NIH-Crypto      BANGLADESH   4-5                     1       12   730
6-24 months   NIH-Crypto      BANGLADESH   6-7                     0      173   730
6-24 months   NIH-Crypto      BANGLADESH   6-7                     1        3   730
6-24 months   NIH-Crypto      BANGLADESH   8+                      0      115   730
6-24 months   NIH-Crypto      BANGLADESH   8+                      1        2   730
6-24 months   PROVIDE         BANGLADESH   3 or less               0      110   615
6-24 months   PROVIDE         BANGLADESH   3 or less               1        2   615
6-24 months   PROVIDE         BANGLADESH   4-5                     0      284   615
6-24 months   PROVIDE         BANGLADESH   4-5                     1        5   615
6-24 months   PROVIDE         BANGLADESH   6-7                     0      124   615
6-24 months   PROVIDE         BANGLADESH   6-7                     1        6   615
6-24 months   PROVIDE         BANGLADESH   8+                      0       84   615
6-24 months   PROVIDE         BANGLADESH   8+                      1        0   615
6-24 months   SAS-FoodSuppl   INDIA        3 or less               0       31   402
6-24 months   SAS-FoodSuppl   INDIA        3 or less               1        5   402
6-24 months   SAS-FoodSuppl   INDIA        4-5                     0      155   402
6-24 months   SAS-FoodSuppl   INDIA        4-5                     1       20   402
6-24 months   SAS-FoodSuppl   INDIA        6-7                     0      107   402
6-24 months   SAS-FoodSuppl   INDIA        6-7                     1       18   402
6-24 months   SAS-FoodSuppl   INDIA        8+                      0       58   402
6-24 months   SAS-FoodSuppl   INDIA        8+                      1        8   402


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
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

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
![](/tmp/9a9c2e5c-7761-45da-914f-f1937ed060d7/0ce80c5a-28fb-45cd-a616-497aecdc28d9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9a9c2e5c-7761-45da-914f-f1937ed060d7/0ce80c5a-28fb-45cd-a616-497aecdc28d9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9a9c2e5c-7761-45da-914f-f1937ed060d7/0ce80c5a-28fb-45cd-a616-497aecdc28d9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9a9c2e5c-7761-45da-914f-f1937ed060d7/0ce80c5a-28fb-45cd-a616-497aecdc28d9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC             INDIA        3 or less            NA                0.3753250   0.2513235   0.4993265
0-24 months   IRC             INDIA        4-5                  NA                0.3093362   0.2343731   0.3842994
0-24 months   IRC             INDIA        6-7                  NA                0.3581211   0.2622174   0.4540248
0-24 months   IRC             INDIA        8+                   NA                0.3419349   0.2417389   0.4421309
0-24 months   NIH-Birth       BANGLADESH   3 or less            NA                0.1721280   0.1019613   0.2422946
0-24 months   NIH-Birth       BANGLADESH   4-5                  NA                0.1650277   0.1198988   0.2101566
0-24 months   NIH-Birth       BANGLADESH   6-7                  NA                0.1564706   0.0963744   0.2165667
0-24 months   NIH-Birth       BANGLADESH   8+                   NA                0.1350785   0.0682202   0.2019369
0-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.0964912   0.0422546   0.1507278
0-24 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.0935673   0.0626820   0.1244525
0-24 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.0786517   0.0390794   0.1182239
0-24 months   NIH-Crypto      BANGLADESH   8+                   NA                0.0725806   0.0268853   0.1182760
0-24 months   PROVIDE         BANGLADESH   3 or less            NA                0.0642857   0.0236298   0.1049416
0-24 months   PROVIDE         BANGLADESH   4-5                  NA                0.0434783   0.0211881   0.0657685
0-24 months   PROVIDE         BANGLADESH   6-7                  NA                0.0728477   0.0313663   0.1143291
0-24 months   PROVIDE         BANGLADESH   8+                   NA                0.0919540   0.0311912   0.1527169
0-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                0.1315789   0.0239734   0.2391845
0-24 months   SAS-FoodSuppl   INDIA        4-5                  NA                0.1748634   0.1197630   0.2299638
0-24 months   SAS-FoodSuppl   INDIA        6-7                  NA                0.1811024   0.1140455   0.2481592
0-24 months   SAS-FoodSuppl   INDIA        8+                   NA                0.1571429   0.0717850   0.2425007
0-6 months    IRC             INDIA        3 or less            NA                0.3565998   0.2278294   0.4853701
0-6 months    IRC             INDIA        4-5                  NA                0.2828269   0.2082496   0.3574042
0-6 months    IRC             INDIA        6-7                  NA                0.3284181   0.2343659   0.4224703
0-6 months    IRC             INDIA        8+                   NA                0.2811155   0.1870058   0.3752252
0-6 months    NIH-Birth       BANGLADESH   3 or less            NA                0.1315789   0.0694773   0.1936806
0-6 months    NIH-Birth       BANGLADESH   4-5                  NA                0.0874525   0.0532834   0.1216216
0-6 months    NIH-Birth       BANGLADESH   6-7                  NA                0.0709220   0.0285182   0.1133258
0-6 months    NIH-Birth       BANGLADESH   8+                   NA                0.0769231   0.0256690   0.1281771
0-6 months    NIH-Crypto      BANGLADESH   3 or less            NA                0.0877193   0.0357563   0.1396823
0-6 months    NIH-Crypto      BANGLADESH   4-5                  NA                0.0643275   0.0383090   0.0903460
0-6 months    NIH-Crypto      BANGLADESH   6-7                  NA                0.0617978   0.0264013   0.0971942
0-6 months    NIH-Crypto      BANGLADESH   8+                   NA                0.0564516   0.0158031   0.0971001
0-6 months    PROVIDE         BANGLADESH   3 or less            NA                0.0500000   0.0138722   0.0861278
0-6 months    PROVIDE         BANGLADESH   4-5                  NA                0.0279503   0.0099339   0.0459667
0-6 months    PROVIDE         BANGLADESH   6-7                  NA                0.0331126   0.0045528   0.0616723
0-6 months    PROVIDE         BANGLADESH   8+                   NA                0.0919540   0.0311912   0.1527169
6-24 months   NIH-Birth       BANGLADESH   3 or less            NA                0.0631579   0.0141987   0.1121171
6-24 months   NIH-Birth       BANGLADESH   4-5                  NA                0.0909091   0.0538026   0.1280156
6-24 months   NIH-Birth       BANGLADESH   6-7                  NA                0.1085271   0.0548020   0.1622523
6-24 months   NIH-Birth       BANGLADESH   8+                   NA                0.0804598   0.0232508   0.1376688
6-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                0.1388889   0.0257789   0.2519989
6-24 months   SAS-FoodSuppl   INDIA        4-5                  NA                0.1142857   0.0670889   0.1614825
6-24 months   SAS-FoodSuppl   INDIA        6-7                  NA                0.1440000   0.0823757   0.2056243
6-24 months   SAS-FoodSuppl   INDIA        8+                   NA                0.1212121   0.0423748   0.2000495


### Parameter: E(Y)


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC             INDIA        NA                   NA                0.3414634   0.2955068   0.3874201
0-24 months   NIH-Birth       BANGLADESH   NA                   NA                0.1586538   0.1299648   0.1873429
0-24 months   NIH-Crypto      BANGLADESH   NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   PROVIDE         BANGLADESH   NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   SAS-FoodSuppl   INDIA        NA                   NA                0.1698565   0.1338154   0.2058975
0-6 months    IRC             INDIA        NA                   NA                0.3073171   0.2626027   0.3520314
0-6 months    NIH-Birth       BANGLADESH   NA                   NA                0.0900322   0.0675202   0.1125442
0-6 months    NIH-Crypto      BANGLADESH   NA                   NA                0.0659631   0.0482810   0.0836451
0-6 months    PROVIDE         BANGLADESH   NA                   NA                0.0414286   0.0266555   0.0562017
6-24 months   NIH-Birth       BANGLADESH   NA                   NA                0.0885609   0.0646203   0.1125014
6-24 months   SAS-FoodSuppl   INDIA        NA                   NA                0.1268657   0.0942904   0.1594410


### Parameter: RR


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   IRC             INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   IRC             INDIA        4-5                  3 or less         0.8241824   0.5471888   1.241393
0-24 months   IRC             INDIA        6-7                  3 or less         0.9541627   0.6233722   1.460486
0-24 months   IRC             INDIA        8+                   3 or less         0.9110368   0.5858119   1.416817
0-24 months   NIH-Birth       BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth       BANGLADESH   4-5                  3 or less         0.9587499   0.5865603   1.567105
0-24 months   NIH-Birth       BANGLADESH   6-7                  3 or less         0.9090362   0.5194548   1.590797
0-24 months   NIH-Birth       BANGLADESH   8+                   3 or less         0.7847564   0.4129576   1.491297
0-24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         0.9696970   0.5052937   1.860922
0-24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         0.8151175   0.3833523   1.733175
0-24 months   NIH-Crypto      BANGLADESH   8+                   3 or less         0.7521994   0.3234400   1.749332
0-24 months   PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   PROVIDE         BANGLADESH   4-5                  3 or less         0.6763285   0.2996322   1.526606
0-24 months   PROVIDE         BANGLADESH   6-7                  3 or less         1.1331862   0.4838547   2.653919
0-24 months   PROVIDE         BANGLADESH   8+                   3 or less         1.4303959   0.5730891   3.570182
0-24 months   SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl   INDIA        4-5                  3 or less         1.3289617   0.5532138   3.192508
0-24 months   SAS-FoodSuppl   INDIA        6-7                  3 or less         1.3763780   0.5608709   3.377633
0-24 months   SAS-FoodSuppl   INDIA        8+                   3 or less         1.1942857   0.4474406   3.187727
0-6 months    IRC             INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    IRC             INDIA        4-5                  3 or less         0.7931214   0.5070823   1.240512
0-6 months    IRC             INDIA        6-7                  3 or less         0.9209711   0.5806921   1.460650
0-6 months    IRC             INDIA        8+                   3 or less         0.7883222   0.4817597   1.289962
0-6 months    NIH-Birth       BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth       BANGLADESH   4-5                  3 or less         0.6646388   0.3601536   1.226545
0-6 months    NIH-Birth       BANGLADESH   6-7                  3 or less         0.5390071   0.2516395   1.154543
0-6 months    NIH-Birth       BANGLADESH   8+                   3 or less         0.5846154   0.2583787   1.322768
0-6 months    NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto      BANGLADESH   4-5                  3 or less         0.7333333   0.3579198   1.502509
0-6 months    NIH-Crypto      BANGLADESH   6-7                  3 or less         0.7044944   0.3090409   1.605976
0-6 months    NIH-Crypto      BANGLADESH   8+                   3 or less         0.6435484   0.2533022   1.635022
0-6 months    PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    PROVIDE         BANGLADESH   4-5                  3 or less         0.5590062   0.2122732   1.472103
0-6 months    PROVIDE         BANGLADESH   6-7                  3 or less         0.6622517   0.2149657   2.040220
0-6 months    PROVIDE         BANGLADESH   8+                   3 or less         1.8390805   0.6908131   4.895994
6-24 months   NIH-Birth       BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth       BANGLADESH   4-5                  3 or less         1.4393939   0.5993798   3.456665
6-24 months   NIH-Birth       BANGLADESH   6-7                  3 or less         1.7183463   0.6849505   4.310843
6-24 months   NIH-Birth       BANGLADESH   8+                   3 or less         1.2739464   0.4449600   3.647383
6-24 months   SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl   INDIA        4-5                  3 or less         0.8228571   0.3301895   2.050622
6-24 months   SAS-FoodSuppl   INDIA        6-7                  3 or less         1.0368000   0.4131907   2.601594
6-24 months   SAS-FoodSuppl   INDIA        8+                   3 or less         0.8727273   0.3077792   2.474673


### Parameter: PAR


agecat        studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   IRC             INDIA        3 or less            NA                -0.0338616   -0.1487383   0.0810151
0-24 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0134741   -0.0764567   0.0495085
0-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.0094200   -0.0590201   0.0401802
0-24 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0042857   -0.0403647   0.0317933
0-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.0382775   -0.0655139   0.1420689
0-6 months    IRC             INDIA        3 or less            NA                -0.0492827   -0.1685998   0.0700344
0-6 months    NIH-Birth       BANGLADESH   3 or less            NA                -0.0415468   -0.0958582   0.0127646
0-6 months    NIH-Crypto      BANGLADESH   3 or less            NA                -0.0217562   -0.0686670   0.0251546
0-6 months    PROVIDE         BANGLADESH   3 or less            NA                -0.0085714   -0.0402159   0.0230731
6-24 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0254030   -0.0207476   0.0715536
6-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                -0.0120232   -0.1195573   0.0955109


### Parameter: PAF


agecat        studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   IRC             INDIA        3 or less            NA                -0.0991661   -0.4929998   0.1907795
0-24 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0849279   -0.5638801   0.2473409
0-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.1081871   -0.8522003   0.3369623
0-24 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0714286   -0.8774746   0.3885621
0-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.2253521   -0.7020215   0.6474314
0-6 months    IRC             INDIA        3 or less            NA                -0.1603644   -0.6213891   0.1695729
0-6 months    NIH-Birth       BANGLADESH   3 or less            NA                -0.4614662   -1.1963663   0.0275377
0-6 months    NIH-Crypto      BANGLADESH   3 or less            NA                -0.3298246   -1.2624838   0.2183664
0-6 months    PROVIDE         BANGLADESH   3 or less            NA                -0.2068966   -1.2666263   0.3573712
6-24 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.2868421   -0.4705892   0.6541562
6-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                -0.0947712   -1.3739931   0.4951443
