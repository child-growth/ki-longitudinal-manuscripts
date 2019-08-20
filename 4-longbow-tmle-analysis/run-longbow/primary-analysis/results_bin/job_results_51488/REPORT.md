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

agecat        studyid                    country      nhh          ever_co   n_cell     n
------------  -------------------------  -----------  ----------  --------  -------  ----
0-24 months   ki1000108-IRC              INDIA        3 or less          0       51   410
0-24 months   ki1000108-IRC              INDIA        3 or less          1        7   410
0-24 months   ki1000108-IRC              INDIA        4-5                0      129   410
0-24 months   ki1000108-IRC              INDIA        4-5                1       29   410
0-24 months   ki1000108-IRC              INDIA        6-7                0       89   410
0-24 months   ki1000108-IRC              INDIA        6-7                1       18   410
0-24 months   ki1000108-IRC              INDIA        8+                 0       65   410
0-24 months   ki1000108-IRC              INDIA        8+                 1       22   410
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less          0       28   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less          1       10   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                0      113   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                1       70   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                0       79   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                1       48   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                 0       43   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                 1       27   418
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less          0       93   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less          1       22   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                0      196   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                1       67   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                0      114   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                1       27   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                 0       84   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                 1       21   624
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less          0      128   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less          1       12   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                0      281   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                1       41   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                0      127   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                1       24   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                 0       74   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                 1       13   700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less          0      105   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less          1        9   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                0      304   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                1       38   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                0      163   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                1       15   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                 0      115   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                 1        9   758
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less          0      214   817
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less          1       11   817
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                0      323   817
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                1       17   817
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                0      176   817
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                1        6   817
0-24 months   ki1148112-LCNI-5           MALAWI       8+                 0       62   817
0-24 months   ki1148112-LCNI-5           MALAWI       8+                 1        8   817
0-6 months    ki1000108-IRC              INDIA        3 or less          0       55   409
0-6 months    ki1000108-IRC              INDIA        3 or less          1        3   409
0-6 months    ki1000108-IRC              INDIA        4-5                0      145   409
0-6 months    ki1000108-IRC              INDIA        4-5                1       13   409
0-6 months    ki1000108-IRC              INDIA        6-7                0      101   409
0-6 months    ki1000108-IRC              INDIA        6-7                1        5   409
0-6 months    ki1000108-IRC              INDIA        8+                 0       83   409
0-6 months    ki1000108-IRC              INDIA        8+                 1        4   409
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less          0       37   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less          1        1   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                0      164   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                1       18   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                0      120   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                1        6   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                 0       63   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                 1        7   416
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less          0      109   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less          1        5   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                0      242   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                1       21   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                0      132   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                1        9   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                 0       94   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                 1       10   622
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less          0      137   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less          1        3   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                0      305   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                1       17   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                0      146   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                1        5   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                 0       82   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                 1        5   700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less          0      113   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less          1        1   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                0      331   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                1       11   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                0      174   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                1        4   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                 0      123   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                 1        1   758
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less          0       70   269
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less          1        0   269
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                0      111   269
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                1        0   269
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                0       67   269
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                1        0   269
0-6 months    ki1148112-LCNI-5           MALAWI       8+                 0       21   269
0-6 months    ki1148112-LCNI-5           MALAWI       8+                 1        0   269
6-24 months   ki1000108-IRC              INDIA        3 or less          0       53   410
6-24 months   ki1000108-IRC              INDIA        3 or less          1        5   410
6-24 months   ki1000108-IRC              INDIA        4-5                0      134   410
6-24 months   ki1000108-IRC              INDIA        4-5                1       24   410
6-24 months   ki1000108-IRC              INDIA        6-7                0       91   410
6-24 months   ki1000108-IRC              INDIA        6-7                1       16   410
6-24 months   ki1000108-IRC              INDIA        8+                 0       68   410
6-24 months   ki1000108-IRC              INDIA        8+                 1       19   410
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less          0       27   401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less          1        9   401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                0      110   401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                1       65   401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                0       76   401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                1       48   401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                 0       43   401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                 1       23   401
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less          0       75   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less          1       20   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                0      175   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                1       56   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                0      107   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                1       22   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                 0       71   542
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                 1       16   542
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less          0      102   614
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less          1       10   614
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                0      256   614
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                1       33   614
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                0      109   614
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                1       21   614
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                 0       72   614
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                 1       11   614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less          0       99   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less          1        8   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                0      296   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                1       34   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                0      163   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                1       13   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                 0      109   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                 1        8   730
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less          0      207   805
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less          1       11   805
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                0      319   805
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                1       17   805
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                0      175   805
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                1        6   805
6-24 months   ki1148112-LCNI-5           MALAWI       8+                 0       62   805
6-24 months   ki1148112-LCNI-5           MALAWI       8+                 1        8   805


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

* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/830b06da-ccd6-4c4f-8865-eeb93199f1ff/ec2894e6-9b0a-4f64-a735-d01a8b20f5e9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/830b06da-ccd6-4c4f-8865-eeb93199f1ff/ec2894e6-9b0a-4f64-a735-d01a8b20f5e9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/830b06da-ccd6-4c4f-8865-eeb93199f1ff/ec2894e6-9b0a-4f64-a735-d01a8b20f5e9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/830b06da-ccd6-4c4f-8865-eeb93199f1ff/ec2894e6-9b0a-4f64-a735-d01a8b20f5e9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.1206897   0.0367494   0.2046299
0-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.1835443   0.1231096   0.2439790
0-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.1682243   0.0972610   0.2391876
0-24 months   ki1000108-IRC              INDIA        8+                   NA                0.2528736   0.1614270   0.3443202
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.2493601   0.1237539   0.3749663
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.3819139   0.3090759   0.4547519
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.3660022   0.2754192   0.4565851
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.3713784   0.2432880   0.4994688
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.2963090   0.2157434   0.3768746
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.2574035   0.2013905   0.3134166
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.1806330   0.1149253   0.2463408
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.2144608   0.1195588   0.3093628
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.0851644   0.0382826   0.1320463
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.1286232   0.0919421   0.1653043
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.1582039   0.0989262   0.2174817
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.1449376   0.0739433   0.2159319
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.0789474   0.0294145   0.1284802
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.1111111   0.0777820   0.1444403
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.0842697   0.0434336   0.1251058
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.0725806   0.0268853   0.1182760
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.0488889   0.0206957   0.0770820
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.0500000   0.0268196   0.0731804
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.0329670   0.0070110   0.0589231
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.1142857   0.0397082   0.1888632
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.0438597   0.0062379   0.0814814
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.0798479   0.0470625   0.1126334
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.0638298   0.0234488   0.1042108
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.0961538   0.0394501   0.1528575
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.0862069   0.0138868   0.1585271
6-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.1518987   0.0958648   0.2079326
6-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.1495327   0.0818803   0.2171851
6-24 months   ki1000108-IRC              INDIA        8+                   NA                0.2183908   0.1314686   0.3053130
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.2500000   0.1083751   0.3916249
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.3714286   0.2997505   0.4431066
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.3870968   0.3012577   0.4729359
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.3484848   0.2333856   0.4635841
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.2770690   0.1787201   0.3754179
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.2509191   0.1909007   0.3109376
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.1781970   0.1008562   0.2555379
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.1795130   0.0774813   0.2815447
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.0879508   0.0341448   0.1417568
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.1178138   0.0805183   0.1551093
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.1599164   0.0969269   0.2229060
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.1301915   0.0602234   0.2001596
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.0747664   0.0248971   0.1246356
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.1030303   0.0702087   0.1358519
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.0738636   0.0351965   0.1125308
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.0683761   0.0226119   0.1141402
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.0504587   0.0213840   0.0795334
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.0505952   0.0271460   0.0740445
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.0331492   0.0070519   0.0592464
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.1142857   0.0397075   0.1888639


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.0514076   0.0362561   0.0665591
0-6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.0723473   0.0519719   0.0927227
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.0521739   0.0368026   0.0675452


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.5207957   0.7044945   3.2829487
0-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.3938585   0.6179437   3.1440430
0-24 months   ki1000108-IRC              INDIA        8+                   3 or less         2.0952381   0.9567285   4.5885773
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.5315757   0.8934565   2.6254485
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.4677654   0.8369135   2.5741433
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.4893255   0.8083760   2.7438849
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         0.8686997   0.6143566   1.2283405
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.6096104   0.3877703   0.9583633
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.7237742   0.4307427   1.2161533
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.5102922   0.8119186   2.8093735
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.8576290   0.9551297   3.6128970
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.7018562   0.8146495   3.5552893
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.4074074   0.7020963   2.8212592
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.0674157   0.4831033   2.3584529
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.9193548   0.3779794   2.2361361
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.0227273   0.4879936   2.1434115
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         0.6743257   0.2541124   1.7894254
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         2.3376623   0.9785333   5.5845470
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.8205322   0.7033826   4.7119982
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         1.4553191   0.5012700   4.2251753
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         2.1923076   0.7741573   6.2083155
6-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.7620249   0.7047073   4.4057038
6-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.7345790   0.6687336   4.4991972
6-24 months   ki1000108-IRC              INDIA        8+                   3 or less         2.5333328   1.0009946   6.4113984
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.4857143   0.8166281   2.7030014
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.5483871   0.8427029   2.8450153
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.3939394   0.7235269   2.6855492
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         0.9056196   0.5910248   1.3876693
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.6431504   0.3673412   1.1260440
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.6478999   0.3316210   1.2658251
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.3395417   0.6716409   2.6716240
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.8182488   0.8783913   3.7637308
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.4802763   0.6551842   3.3444303
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.3780303   0.6580232   2.8858670
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         0.9879261   0.4231416   2.3065517
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.9145299   0.3554914   2.3527011
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.0027056   0.4786582   2.1004939
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         0.6569563   0.2476491   1.7427542
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         2.2649351   0.9483814   5.4091433


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0646762   -0.0157649    0.1451173
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1214533   -0.0014201    0.2443267
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0767577   -0.1512993   -0.0022162
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0434070   -0.0006549    0.0874689
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0147202   -0.0316081    0.0610485
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0025187   -0.0217015    0.0267389
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0284876   -0.0077301    0.0647053
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0698906   -0.0007330    0.1405143
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1115960   -0.0250539    0.2482459
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0667369   -0.1596173    0.0261434
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0341990   -0.0161078    0.0845059
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0115350   -0.0350848    0.0581549
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0017152   -0.0232601    0.0266905


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.3489111   -0.2600050    0.6635594
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.3275321   -0.0961905    0.5874685
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.3496118   -0.7423671   -0.0453893
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.3376099   -0.1036441    0.6024438
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1571534   -0.5138446    0.5307376
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0489947   -0.5604430    0.4204139
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.3937622   -0.3589707    0.7295569
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.4477370   -0.2326073    0.7525615
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.3086207   -0.1934670    0.5994817
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.3172931   -0.8476594    0.0608328
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.2799761   -0.2708970    0.5920720
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1336597   -0.6147363    0.5351900
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0328746   -0.5863693    0.4103948
