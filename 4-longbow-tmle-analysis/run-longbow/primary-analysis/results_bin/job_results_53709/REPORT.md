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

agecat        studyid                    country      nhh          ever_swasted   n_cell     n
------------  -------------------------  -----------  ----------  -------------  -------  ----
0-24 months   ki1000108-IRC              INDIA        3 or less               0       35   410
0-24 months   ki1000108-IRC              INDIA        3 or less               1       23   410
0-24 months   ki1000108-IRC              INDIA        4-5                     0      109   410
0-24 months   ki1000108-IRC              INDIA        4-5                     1       49   410
0-24 months   ki1000108-IRC              INDIA        6-7                     0       69   410
0-24 months   ki1000108-IRC              INDIA        6-7                     1       38   410
0-24 months   ki1000108-IRC              INDIA        8+                      0       57   410
0-24 months   ki1000108-IRC              INDIA        8+                      1       30   410
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               0       33   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               1        5   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     0      151   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     1       32   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     0      104   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     1       23   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      0       59   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      1       11   418
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               0       95   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               1       20   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     0      220   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     1       43   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     0      119   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     1       22   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      0       91   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      1       14   624
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               0      131   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               1        9   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     0      308   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     1       14   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     0      140   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     1       11   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      0       79   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      1        8   700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               0      103   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               1       11   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     0      310   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     1       32   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     0      164   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     1       14   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      0      115   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      1        9   758
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less               0      224   817
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less               1        1   817
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                     0      334   817
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                     1        6   817
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                     0      182   817
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                     1        0   817
0-24 months   ki1148112-LCNI-5           MALAWI       8+                      0       69   817
0-24 months   ki1148112-LCNI-5           MALAWI       8+                      1        1   817
0-6 months    ki1000108-IRC              INDIA        3 or less               0       36   410
0-6 months    ki1000108-IRC              INDIA        3 or less               1       22   410
0-6 months    ki1000108-IRC              INDIA        4-5                     0      114   410
0-6 months    ki1000108-IRC              INDIA        4-5                     1       44   410
0-6 months    ki1000108-IRC              INDIA        6-7                     0       72   410
0-6 months    ki1000108-IRC              INDIA        6-7                     1       35   410
0-6 months    ki1000108-IRC              INDIA        8+                      0       62   410
0-6 months    ki1000108-IRC              INDIA        8+                      1       25   410
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less               0       38   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less               1        0   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                     0      171   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                     1       12   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                     0      122   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                     1        5   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                      0       67   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                      1        3   418
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less               0       99   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less               1       15   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                     0      240   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                     1       23   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                     0      131   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                     1       10   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                      0       96   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                      1        8   622
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less               0      133   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less               1        7   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                     0      313   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                     1        9   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                     0      146   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                     1        5   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                      0       79   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                      1        8   700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less               0      104   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less               1       10   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                     0      320   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                     1       22   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                     0      167   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                     1       11   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                      0      117   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                      1        7   758
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less               0       70   269
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less               1        0   269
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                     0      111   269
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                     1        0   269
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                     0       67   269
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                     1        0   269
0-6 months    ki1148112-LCNI-5           MALAWI       8+                      0       21   269
0-6 months    ki1148112-LCNI-5           MALAWI       8+                      1        0   269
6-24 months   ki1000108-IRC              INDIA        3 or less               0       55   410
6-24 months   ki1000108-IRC              INDIA        3 or less               1        3   410
6-24 months   ki1000108-IRC              INDIA        4-5                     0      148   410
6-24 months   ki1000108-IRC              INDIA        4-5                     1       10   410
6-24 months   ki1000108-IRC              INDIA        6-7                     0      102   410
6-24 months   ki1000108-IRC              INDIA        6-7                     1        5   410
6-24 months   ki1000108-IRC              INDIA        8+                      0       79   410
6-24 months   ki1000108-IRC              INDIA        8+                      1        8   410
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               0       31   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               1        5   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     0      155   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     1       20   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     0      107   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     1       18   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      0       58   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      1        8   402
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               0       89   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               1        6   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     0      210   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     1       21   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     0      115   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     1       14   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      0       80   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      1        7   542
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               0      110   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               1        2   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     0      284   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     1        5   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     0      124   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     1        6   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      0       84   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      1        0   615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               0      104   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               1        3   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     0      318   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     1       12   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     0      173   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     1        3   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      0      115   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      1        2   730
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less               0      217   805
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less               1        1   805
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                     0      330   805
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                     1        6   805
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                     0      181   805
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                     1        0   805
6-24 months   ki1148112-LCNI-5           MALAWI       8+                      0       69   805
6-24 months   ki1148112-LCNI-5           MALAWI       8+                      1        1   805


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/31b37c1f-a730-498f-8ddb-bd380fdabbdb/177cde95-1881-4e0d-b70e-e71d5e210aa7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/31b37c1f-a730-498f-8ddb-bd380fdabbdb/177cde95-1881-4e0d-b70e-e71d5e210aa7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/31b37c1f-a730-498f-8ddb-bd380fdabbdb/177cde95-1881-4e0d-b70e-e71d5e210aa7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/31b37c1f-a730-498f-8ddb-bd380fdabbdb/177cde95-1881-4e0d-b70e-e71d5e210aa7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.3694637   0.2407515   0.4981758
0-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.3129792   0.2379395   0.3880189
0-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.3644207   0.2677962   0.4610453
0-24 months   ki1000108-IRC              INDIA        8+                   NA                0.3344491   0.2374939   0.4314042
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.1315789   0.0239734   0.2391845
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.1748634   0.1197630   0.2299638
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.1811024   0.1140455   0.2481592
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.1571429   0.0717850   0.2425007
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.1682569   0.0994085   0.2371052
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.1640426   0.1188880   0.2091973
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.1570722   0.0971269   0.2170175
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.1363934   0.0693747   0.2034120
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.0642857   0.0236298   0.1049416
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.0434783   0.0211881   0.0657685
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.0728477   0.0313663   0.1143291
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.0919540   0.0311912   0.1527169
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.0964912   0.0422546   0.1507278
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.0935673   0.0626820   0.1244525
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.0786517   0.0390794   0.1182239
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.0725806   0.0268853   0.1182760
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                0.3642678   0.2380359   0.4904996
0-6 months    ki1000108-IRC              INDIA        4-5                  NA                0.2805226   0.2078710   0.3531742
0-6 months    ki1000108-IRC              INDIA        6-7                  NA                0.3282410   0.2352998   0.4211821
0-6 months    ki1000108-IRC              INDIA        8+                   NA                0.2870537   0.1909303   0.3831771
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.1315789   0.0694773   0.1936806
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.0874525   0.0532834   0.1216216
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.0709220   0.0285182   0.1133258
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.0769231   0.0256690   0.1281771
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.0500000   0.0138722   0.0861278
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.0279503   0.0099339   0.0459667
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.0331126   0.0045528   0.0616723
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.0919540   0.0311912   0.1527169
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.0877193   0.0357563   0.1396823
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.0643275   0.0383090   0.0903460
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.0617978   0.0264013   0.0971942
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.0564516   0.0158031   0.0971001
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.1388889   0.0257789   0.2519989
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.1142857   0.0670889   0.1614825
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.1440000   0.0823757   0.2056243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.1212121   0.0423748   0.2000495
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.0631579   0.0141987   0.1121171
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.0909091   0.0538026   0.1280156
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.1085271   0.0548020   0.1622523
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.0804598   0.0232508   0.1376688


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.3414634   0.2955068   0.3874201
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1698565   0.1338154   0.2058975
0-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.1586538   0.1299648   0.1873429
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0870712   0.0669870   0.1071555
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.3073171   0.2626027   0.3520314
0-6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.0900322   0.0675202   0.1125442
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0414286   0.0266555   0.0562017
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0659631   0.0482810   0.0836451
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1268657   0.0942904   0.1594410
6-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.0885609   0.0646203   0.1125014


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         0.8471176   0.5550432   1.292887
0-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         0.9863507   0.6364980   1.528501
0-24 months   ki1000108-IRC              INDIA        8+                   3 or less         0.9052285   0.5753907   1.424143
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.3289617   0.5532138   3.192508
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.3763780   0.5608709   3.377633
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.1942857   0.4474406   3.187727
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         0.9749536   0.5954158   1.596421
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.9335262   0.5342222   1.631290
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.8106258   0.4276309   1.536639
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         0.6763285   0.2996322   1.526606
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.1331862   0.4838547   2.653919
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.4303959   0.5730891   3.570182
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         0.9696970   0.5052937   1.860922
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         0.8151175   0.3833523   1.733175
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.7521994   0.3234400   1.749332
0-6 months    ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA        4-5                  3 or less         0.7700999   0.4994258   1.187472
0-6 months    ki1000108-IRC              INDIA        6-7                  3 or less         0.9010980   0.5757142   1.410383
0-6 months    ki1000108-IRC              INDIA        8+                   3 or less         0.7880294   0.4865922   1.276203
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         0.6646388   0.3601536   1.226545
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.5390071   0.2516395   1.154543
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.5846154   0.2583787   1.322768
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         0.5590062   0.2122732   1.472103
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         0.6622517   0.2149657   2.040220
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.8390805   0.6908131   4.895994
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         0.7333333   0.3579198   1.502509
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         0.7044944   0.3090409   1.605976
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.6435484   0.2533022   1.635022
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         0.8228571   0.3301895   2.050622
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.0368000   0.4131907   2.601594
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         0.8727273   0.3077792   2.474673
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.4393939   0.5993798   3.456665
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         1.7183463   0.6849505   4.310843
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         1.2739464   0.4449600   3.647383


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                -0.0280003   -0.1472746   0.0912741
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0382775   -0.0655139   0.1420689
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0096030   -0.0713627   0.0521567
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0042857   -0.0403647   0.0317933
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0094200   -0.0590201   0.0401802
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0569507   -0.1735671   0.0596657
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0415468   -0.0958582   0.0127646
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0085714   -0.0402159   0.0230731
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0217562   -0.0686670   0.0251546
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.0120232   -0.1195573   0.0955109
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0254030   -0.0207476   0.0715536


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                -0.0820008   -0.4942010   0.2164871
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.2253521   -0.7020215   0.6474314
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0605281   -0.5306138   0.2651838
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0714286   -0.8774745   0.3885621
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.1081871   -0.8522003   0.3369623
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.1853158   -0.6326827   0.1394693
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.4614662   -1.1963663   0.0275377
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.2068966   -1.2666263   0.3573712
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.3298246   -1.2624838   0.2183664
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.0947712   -1.3739931   0.4951443
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.2868421   -0.4705892   0.6541562
