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

**Outcome Variable:** ever_wasted

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

agecat        studyid                    country      nhh          ever_wasted   n_cell     n
------------  -------------------------  -----------  ----------  ------------  -------  ----
0-24 months   ki1000108-IRC              INDIA        3 or less              0       20   410
0-24 months   ki1000108-IRC              INDIA        3 or less              1       38   410
0-24 months   ki1000108-IRC              INDIA        4-5                    0       63   410
0-24 months   ki1000108-IRC              INDIA        4-5                    1       95   410
0-24 months   ki1000108-IRC              INDIA        6-7                    0       38   410
0-24 months   ki1000108-IRC              INDIA        6-7                    1       69   410
0-24 months   ki1000108-IRC              INDIA        8+                     0       20   410
0-24 months   ki1000108-IRC              INDIA        8+                     1       67   410
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              0       24   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              1       14   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    0       95   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    1       88   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    0       66   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    1       61   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     0       36   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     1       34   418
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              0       58   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              1       57   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    0      134   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    1      129   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    0       72   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    1       69   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     0       62   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     1       43   624
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              0       98   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              1       42   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    0      211   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    1      111   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    0       94   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    1       57   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     0       51   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     1       36   700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              0       75   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              1       39   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    0      224   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    1      118   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    0      120   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    1       58   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     0       89   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     1       35   758
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less              0      210   817
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less              1       15   817
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                    0      310   817
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                    1       30   817
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                    0      172   817
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                    1       10   817
0-24 months   ki1148112-LCNI-5           MALAWI       8+                     0       59   817
0-24 months   ki1148112-LCNI-5           MALAWI       8+                     1       11   817
0-6 months    ki1000108-IRC              INDIA        3 or less              0       25   410
0-6 months    ki1000108-IRC              INDIA        3 or less              1       33   410
0-6 months    ki1000108-IRC              INDIA        4-5                    0       81   410
0-6 months    ki1000108-IRC              INDIA        4-5                    1       77   410
0-6 months    ki1000108-IRC              INDIA        6-7                    0       47   410
0-6 months    ki1000108-IRC              INDIA        6-7                    1       60   410
0-6 months    ki1000108-IRC              INDIA        8+                     0       34   410
0-6 months    ki1000108-IRC              INDIA        8+                     1       53   410
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less              0       35   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less              1        3   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                    0      152   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                    1       31   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                    0      100   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                    1       27   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                     0       53   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                     1       17   418
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less              0       67   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less              1       47   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                    0      175   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                    1       88   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                    0       88   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                    1       53   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                     0       70   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                     1       34   622
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less              0      107   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less              1       33   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                    0      235   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                    1       87   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                    0      113   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                    1       38   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                     0       64   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                     1       23   700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less              0       84   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less              1       30   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                    0      251   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                    1       91   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                    0      133   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                    1       45   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                     0       95   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                     1       29   758
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less              0       70   269
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less              1        0   269
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                    0      109   269
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                    1        2   269
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                    0       65   269
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                    1        2   269
0-6 months    ki1148112-LCNI-5           MALAWI       8+                     0       21   269
0-6 months    ki1148112-LCNI-5           MALAWI       8+                     1        0   269
6-24 months   ki1000108-IRC              INDIA        3 or less              0       48   410
6-24 months   ki1000108-IRC              INDIA        3 or less              1       10   410
6-24 months   ki1000108-IRC              INDIA        4-5                    0      112   410
6-24 months   ki1000108-IRC              INDIA        4-5                    1       46   410
6-24 months   ki1000108-IRC              INDIA        6-7                    0       74   410
6-24 months   ki1000108-IRC              INDIA        6-7                    1       33   410
6-24 months   ki1000108-IRC              INDIA        8+                     0       49   410
6-24 months   ki1000108-IRC              INDIA        8+                     1       38   410
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              0       24   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              1       12   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    0      111   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    1       64   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    0       81   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    1       44   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     0       43   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     1       23   402
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              0       68   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              1       27   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    0      159   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    1       72   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    0       91   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    1       38   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     0       65   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     1       22   542
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              0      101   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              1       11   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    0      249   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    1       40   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    0      101   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    1       29   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     0       65   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     1       19   615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              0       94   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              1       13   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    0      279   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    1       51   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    0      155   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    1       21   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     0      106   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     1       11   730
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less              0      203   805
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less              1       15   805
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                    0      307   805
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                    1       29   805
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                    0      173   805
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                    1        8   805
6-24 months   ki1148112-LCNI-5           MALAWI       8+                     0       59   805
6-24 months   ki1148112-LCNI-5           MALAWI       8+                     1       11   805


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

* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/30b7382a-c785-4e17-a9e8-320d4ea48b13/a1f93162-f77d-4a77-98d8-7f149582f682/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/30b7382a-c785-4e17-a9e8-320d4ea48b13/a1f93162-f77d-4a77-98d8-7f149582f682/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/30b7382a-c785-4e17-a9e8-320d4ea48b13/a1f93162-f77d-4a77-98d8-7f149582f682/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/30b7382a-c785-4e17-a9e8-320d4ea48b13/a1f93162-f77d-4a77-98d8-7f149582f682/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.6551724   0.5326986   0.7776462
0-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.6012658   0.5248251   0.6777066
0-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.6448598   0.5540738   0.7356458
0-24 months   ki1000108-IRC              INDIA        8+                   NA                0.7701149   0.6815928   0.8586371
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.3684211   0.2148666   0.5219755
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.4808743   0.4083982   0.5533504
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.4803150   0.3933189   0.5673110
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.4857143   0.3684915   0.6029370
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.4956522   0.4041985   0.5871058
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.4904943   0.4300285   0.5509601
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.4893617   0.4067848   0.5719386
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.4095238   0.3153907   0.5036569
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.3000000   0.2240366   0.3759634
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.3447205   0.2927715   0.3966695
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.3774834   0.3001095   0.4548573
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.4137931   0.3102274   0.5173588
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.3421053   0.2549607   0.4292498
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.3450292   0.2946141   0.3954443
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.3258427   0.2569443   0.3947411
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.2822581   0.2029840   0.3615322
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.0666667   0.0340533   0.0992800
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.0882353   0.0580679   0.1184026
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.0549451   0.0218189   0.0880712
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.1571429   0.0718349   0.2424508
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                0.5689655   0.4413618   0.6965692
0-6 months    ki1000108-IRC              INDIA        4-5                  NA                0.4873418   0.4093084   0.5653752
0-6 months    ki1000108-IRC              INDIA        6-7                  NA                0.5607477   0.4665962   0.6548992
0-6 months    ki1000108-IRC              INDIA        8+                   NA                0.6091954   0.5065412   0.7118496
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.4122807   0.3218478   0.5027136
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.3346008   0.2775286   0.3916729
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.3758865   0.2958758   0.4558972
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.3269231   0.2366962   0.4171500
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.2357143   0.1653560   0.3060726
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.2701863   0.2216499   0.3187228
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.2516556   0.1823890   0.3209223
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.2643678   0.1716350   0.3571007
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.2631579   0.1822711   0.3440447
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.2660819   0.2192164   0.3129474
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.2528090   0.1889184   0.3166996
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.2338710   0.1593183   0.3084236
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.1724138   0.0750815   0.2697461
6-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.2911392   0.2202173   0.3620612
6-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.3084112   0.2207968   0.3960256
6-24 months   ki1000108-IRC              INDIA        8+                   NA                0.4367816   0.3324324   0.5411309
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.3333333   0.1791521   0.4875145
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.3657143   0.2942674   0.4371612
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.3520000   0.2681713   0.4358287
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.3484848   0.2333859   0.4635837
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.2842105   0.1934285   0.3749926
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.3116883   0.2519028   0.3714738
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.2945736   0.2158370   0.3733103
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.2528736   0.1614542   0.3442929
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.0982143   0.0430534   0.1533752
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.1384083   0.0985623   0.1782543
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.2230769   0.1514550   0.2946989
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.2261905   0.1366507   0.3157303
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.1214953   0.0595504   0.1834402
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.1545455   0.1155187   0.1935722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.1193182   0.0713943   0.1672421
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.0940171   0.0410975   0.1469367
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.0688073   0.0351851   0.1024296
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.0863095   0.0562642   0.1163549
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.0441989   0.0142371   0.0741607
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.1571429   0.0718342   0.2424516


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.4712919   0.4233811   0.5192026
0-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.3298153   0.2963239   0.3633067
0-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.0807834   0.0620863   0.0994804
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2572559   0.2261171   0.2883948
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1315069   0.1069744   0.1560393
6-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.0782609   0.0596958   0.0968259


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         0.9177215   0.7320329   1.150512
0-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         0.9842597   0.7788916   1.243777
0-24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.1754386   0.9438335   1.463877
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.3052303   0.8379264   2.033145
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.3037120   0.8275969   2.053736
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.3183673   0.8144615   2.134039
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         0.9895938   0.7926569   1.235460
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.9873087   0.7688874   1.267778
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.8262323   0.6153071   1.109462
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.1490683   0.8558063   1.542823
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.2582781   0.9084354   1.742847
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.3793103   0.9661394   1.969174
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.0085470   0.7518995   1.352796
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         0.9524633   0.6840265   1.326244
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.8250620   0.5646979   1.205472
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.3235294   0.7286720   2.404004
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         0.8241758   0.3791687   1.791460
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         2.3571429   1.1350552   4.895024
0-6 months    ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA        4-5                  3 or less         0.8565401   0.6502353   1.128301
0-6 months    ki1000108-IRC              INDIA        6-7                  3 or less         0.9855565   0.7447478   1.304229
0-6 months    ki1000108-IRC              INDIA        8+                   3 or less         1.0707071   0.8087995   1.417426
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         0.8115848   0.6146958   1.071538
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.9117248   0.6716165   1.237674
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.7929624   0.5573748   1.128127
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.1462451   0.8090568   1.623962
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.0676299   0.7113558   1.602340
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.1215604   0.7076098   1.777672
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.0111111   0.7094906   1.440957
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         0.9606742   0.6452962   1.430188
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.8887097   0.5707462   1.383811
6-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.6886076   0.9130730   3.122856
6-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.7887850   0.9508111   3.365287
6-24 months   ki1000108-IRC              INDIA        8+                   3 or less         2.5333333   1.3723682   4.676426
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.0971429   0.6640490   1.812701
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.0560000   0.6276557   1.776668
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.0454545   0.5922011   1.845615
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.0966811   0.7555593   1.591813
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         1.0364628   0.6833924   1.571945
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.8897403   0.5492274   1.441366
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.4092482   0.7497114   2.648993
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         2.2713286   1.1893821   4.337491
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         2.3030303   1.1584689   4.578412
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.2720280   0.7201094   2.246958
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         0.9820804   0.5131756   1.879439
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.7738330   0.3620921   1.653772
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.2543651   0.6884364   2.285515
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         0.6423573   0.2785228   1.481469
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         2.2838095   1.1001482   4.740985


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0009251   -0.1125438   0.1143941
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1028708   -0.0440555   0.2497971
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0180881   -0.1006676   0.0644915
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0514286   -0.0172363   0.1200934
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0122900   -0.0924871   0.0679072
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0141167   -0.0146473   0.0428807
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0250631   -0.1434095   0.0932833
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0553675   -0.1366090   0.0258740
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0228571   -0.0405760   0.0862902
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0059020   -0.0803622   0.0685583
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.1373423    0.0435266   0.2311580
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0223881   -0.1249541   0.1697302
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0091474   -0.0734619   0.0917567
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0627613    0.0100404   0.1154822
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0100115   -0.0475571   0.0675801
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0094535   -0.0199207   0.0388278


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0014101   -0.1874147   0.1602076
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.2182741   -0.1652623   0.4755727
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0378757   -0.2260628   0.1214268
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.1463415   -0.0731627   0.3209484
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0372632   -0.3112865   0.1794968
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.1747475   -0.2674509   0.4626682
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0460801   -0.2880219   0.1504154
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.1551288   -0.4069294   0.0516066
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0883978   -0.1929846   0.3034122
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0229420   -0.3574769   0.2291506
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.4433885    0.0467691   0.6749829
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0629371   -0.4579403   0.3977209
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0311817   -0.2956055   0.2755443
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.3898809   -0.0336624   0.6398773
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0761293   -0.4835996   0.4246850
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.1207951   -0.3459615   0.4256884
