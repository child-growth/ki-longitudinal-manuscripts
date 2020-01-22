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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country      nhh          ever_stunted   n_cell     n  outcome_variable 
------------  -------------------------  -----------  ----------  -------------  -------  ----  -----------------
0-24 months   ki1000108-IRC              INDIA        3 or less               0       25   410  ever_stunted     
0-24 months   ki1000108-IRC              INDIA        3 or less               1       33   410  ever_stunted     
0-24 months   ki1000108-IRC              INDIA        4-5                     0       52   410  ever_stunted     
0-24 months   ki1000108-IRC              INDIA        4-5                     1      106   410  ever_stunted     
0-24 months   ki1000108-IRC              INDIA        6-7                     0       41   410  ever_stunted     
0-24 months   ki1000108-IRC              INDIA        6-7                     1       66   410  ever_stunted     
0-24 months   ki1000108-IRC              INDIA        8+                      0       29   410  ever_stunted     
0-24 months   ki1000108-IRC              INDIA        8+                      1       58   410  ever_stunted     
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               0        9   418  ever_stunted     
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               1       29   418  ever_stunted     
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     0       35   418  ever_stunted     
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     1      148   418  ever_stunted     
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     0       16   418  ever_stunted     
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     1      111   418  ever_stunted     
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      0       12   418  ever_stunted     
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      1       58   418  ever_stunted     
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               0       47   629  ever_stunted     
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               1       70   629  ever_stunted     
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     0       77   629  ever_stunted     
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     1      187   629  ever_stunted     
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     0       42   629  ever_stunted     
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     1      100   629  ever_stunted     
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      0       45   629  ever_stunted     
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      1       61   629  ever_stunted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               0       82   700  ever_stunted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               1       58   700  ever_stunted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     0      179   700  ever_stunted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     1      143   700  ever_stunted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     0       84   700  ever_stunted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     1       67   700  ever_stunted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      0       50   700  ever_stunted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      1       37   700  ever_stunted     
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               0       60   758  ever_stunted     
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               1       54   758  ever_stunted     
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     0      171   758  ever_stunted     
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     1      171   758  ever_stunted     
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     0       99   758  ever_stunted     
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     1       79   758  ever_stunted     
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      0       66   758  ever_stunted     
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      1       58   758  ever_stunted     
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less               0       85   817  ever_stunted     
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less               1      140   817  ever_stunted     
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                     0      122   817  ever_stunted     
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                     1      218   817  ever_stunted     
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                     0       61   817  ever_stunted     
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                     1      121   817  ever_stunted     
0-24 months   ki1148112-LCNI-5           MALAWI       8+                      0       28   817  ever_stunted     
0-24 months   ki1148112-LCNI-5           MALAWI       8+                      1       42   817  ever_stunted     
0-6 months    ki1000108-IRC              INDIA        3 or less               0       36   410  ever_stunted     
0-6 months    ki1000108-IRC              INDIA        3 or less               1       22   410  ever_stunted     
0-6 months    ki1000108-IRC              INDIA        4-5                     0       83   410  ever_stunted     
0-6 months    ki1000108-IRC              INDIA        4-5                     1       75   410  ever_stunted     
0-6 months    ki1000108-IRC              INDIA        6-7                     0       65   410  ever_stunted     
0-6 months    ki1000108-IRC              INDIA        6-7                     1       42   410  ever_stunted     
0-6 months    ki1000108-IRC              INDIA        8+                      0       52   410  ever_stunted     
0-6 months    ki1000108-IRC              INDIA        8+                      1       35   410  ever_stunted     
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less               0       26   416  ever_stunted     
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less               1       12   416  ever_stunted     
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                     0      109   416  ever_stunted     
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                     1       73   416  ever_stunted     
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                     0       78   416  ever_stunted     
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                     1       48   416  ever_stunted     
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                      0       41   416  ever_stunted     
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                      1       29   416  ever_stunted     
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less               0       79   629  ever_stunted     
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less               1       38   629  ever_stunted     
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                     0      166   629  ever_stunted     
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                     1       98   629  ever_stunted     
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                     0       90   629  ever_stunted     
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                     1       52   629  ever_stunted     
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                      0       74   629  ever_stunted     
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                      1       32   629  ever_stunted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less               0      108   700  ever_stunted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less               1       32   700  ever_stunted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                     0      240   700  ever_stunted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                     1       82   700  ever_stunted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                     0      116   700  ever_stunted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                     1       35   700  ever_stunted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                      0       68   700  ever_stunted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                      1       19   700  ever_stunted     
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less               0       74   758  ever_stunted     
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less               1       40   758  ever_stunted     
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                     0      244   758  ever_stunted     
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                     1       98   758  ever_stunted     
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                     0      129   758  ever_stunted     
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                     1       49   758  ever_stunted     
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                      0       82   758  ever_stunted     
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                      1       42   758  ever_stunted     
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less               0       48   269  ever_stunted     
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less               1       22   269  ever_stunted     
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                     0       66   269  ever_stunted     
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                     1       45   269  ever_stunted     
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                     0       43   269  ever_stunted     
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                     1       24   269  ever_stunted     
0-6 months    ki1148112-LCNI-5           MALAWI       8+                      0       17   269  ever_stunted     
0-6 months    ki1148112-LCNI-5           MALAWI       8+                      1        4   269  ever_stunted     
6-24 months   ki1000108-IRC              INDIA        3 or less               0       25   236  ever_stunted     
6-24 months   ki1000108-IRC              INDIA        3 or less               1       11   236  ever_stunted     
6-24 months   ki1000108-IRC              INDIA        4-5                     0       52   236  ever_stunted     
6-24 months   ki1000108-IRC              INDIA        4-5                     1       31   236  ever_stunted     
6-24 months   ki1000108-IRC              INDIA        6-7                     0       41   236  ever_stunted     
6-24 months   ki1000108-IRC              INDIA        6-7                     1       24   236  ever_stunted     
6-24 months   ki1000108-IRC              INDIA        8+                      0       29   236  ever_stunted     
6-24 months   ki1000108-IRC              INDIA        8+                      1       23   236  ever_stunted     
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               0        9   243  ever_stunted     
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               1       17   243  ever_stunted     
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     0       28   243  ever_stunted     
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     1       75   243  ever_stunted     
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     0       14   243  ever_stunted     
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     1       63   243  ever_stunted     
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      0        8   243  ever_stunted     
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      1       29   243  ever_stunted     
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               0       30   345  ever_stunted     
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               1       32   345  ever_stunted     
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     0       55   345  ever_stunted     
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     1       89   345  ever_stunted     
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     0       30   345  ever_stunted     
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     1       48   345  ever_stunted     
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      0       32   345  ever_stunted     
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      1       29   345  ever_stunted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               0       58   456  ever_stunted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               1       26   456  ever_stunted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     0      150   456  ever_stunted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     1       61   456  ever_stunted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     0       64   456  ever_stunted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     1       32   456  ever_stunted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      0       47   456  ever_stunted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      1       18   456  ever_stunted     
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               0       55   506  ever_stunted     
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               1       14   506  ever_stunted     
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     0      161   506  ever_stunted     
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     1       73   506  ever_stunted     
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     0       97   506  ever_stunted     
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     1       30   506  ever_stunted     
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      0       60   506  ever_stunted     
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      1       16   506  ever_stunted     
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less               0       78   710  ever_stunted     
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less               1      118   710  ever_stunted     
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                     0      118   710  ever_stunted     
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                     1      173   710  ever_stunted     
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                     0       60   710  ever_stunted     
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                     1       97   710  ever_stunted     
6-24 months   ki1148112-LCNI-5           MALAWI       8+                      0       28   710  ever_stunted     
6-24 months   ki1148112-LCNI-5           MALAWI       8+                      1       38   710  ever_stunted     


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
![](/tmp/c9bf4400-d22a-4895-916c-b3162a6267be/522a4bf4-a413-4cd9-830d-aa22e126a214/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c9bf4400-d22a-4895-916c-b3162a6267be/522a4bf4-a413-4cd9-830d-aa22e126a214/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c9bf4400-d22a-4895-916c-b3162a6267be/522a4bf4-a413-4cd9-830d-aa22e126a214/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c9bf4400-d22a-4895-916c-b3162a6267be/522a4bf4-a413-4cd9-830d-aa22e126a214/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.5689655   0.4413618   0.6965692
0-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.6708861   0.5975281   0.7442441
0-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.6168224   0.5245936   0.7090512
0-24 months   ki1000108-IRC              INDIA        8+                   NA                0.6666667   0.5674893   0.7658440
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.7631579   0.6278220   0.8984938
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.8087432   0.7516931   0.8657933
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.8740157   0.8162349   0.9317966
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.8285714   0.7401768   0.9169660
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.5982906   0.5093883   0.6871928
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.7083333   0.6534609   0.7632057
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.7042254   0.6291001   0.7793506
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.5754717   0.4813031   0.6696403
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.4142857   0.3326298   0.4959416
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.4440994   0.3897907   0.4984081
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.4437086   0.3644092   0.5230081
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.4252874   0.3213275   0.5292472
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.4736842   0.3819672   0.5654012
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.5000000   0.4469737   0.5530263
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.4438202   0.3707844   0.5168560
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.4677419   0.3798623   0.5556216
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.6222222   0.5588332   0.6856112
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.6411765   0.5901608   0.6921922
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.6648352   0.5962130   0.7334574
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.6000000   0.4851660   0.7148340
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                0.3793103   0.2542847   0.5043360
0-6 months    ki1000108-IRC              INDIA        4-5                  NA                0.4746835   0.3967252   0.5526419
0-6 months    ki1000108-IRC              INDIA        6-7                  NA                0.3925234   0.2998865   0.4851603
0-6 months    ki1000108-IRC              INDIA        8+                   NA                0.4022989   0.2991332   0.5054645
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.3157895   0.1678198   0.4637591
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.4010989   0.3298073   0.4723905
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.3809524   0.2960572   0.4658475
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.4142857   0.2987504   0.5298210
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.3247863   0.2398643   0.4097083
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.3712121   0.3128871   0.4295371
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.3661972   0.2868952   0.4454992
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.3018868   0.2144235   0.3893500
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.2285714   0.1589644   0.2981785
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.2546584   0.2070386   0.3022782
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.2317881   0.1644352   0.2991410
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.2183908   0.1315126   0.3052690
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.3508772   0.2632128   0.4385416
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.2865497   0.2385981   0.3345014
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.2752809   0.2096214   0.3409404
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.3387097   0.2553543   0.4220651
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.3055556   0.1547620   0.4563491
6-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.3734940   0.2692057   0.4777823
6-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.3692308   0.2516605   0.4868011
6-24 months   ki1000108-IRC              INDIA        8+                   NA                0.4423077   0.3070294   0.5775860
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.6538462   0.4706024   0.8370899
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.7281553   0.6420565   0.8142542
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.8181818   0.7318558   0.9045078
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.7837838   0.6508654   0.9167021
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.5161290   0.3915553   0.6407028
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.6180556   0.5385841   0.6975270
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.6153846   0.5072617   0.7235075
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.4754098   0.3499058   0.6009139
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.3095238   0.2105531   0.4084945
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.2890995   0.2278628   0.3503362
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.3333333   0.2389310   0.4277357
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.2769231   0.1680200   0.3858261
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.2028986   0.1079148   0.2978823
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.3119658   0.2525464   0.3713852
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.2362205   0.1622738   0.3101671
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.2105263   0.1187791   0.3022735
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.6020408   0.5334670   0.6706146
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.5945017   0.5380498   0.6509536
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.6178344   0.5417727   0.6938961
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.5757576   0.4564387   0.6950764


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.6414634   0.5949863   0.6879405
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.4357143   0.3989556   0.4724730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.6376989   0.6047193   0.6706785
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2400000   0.2083392   0.2716608
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.3021108   0.2694011   0.3348205
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.6000000   0.5639396   0.6360604


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.1791331   0.9187607   1.513294
0-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.0841121   0.8279642   1.419505
0-24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.1717172   0.8952453   1.533570
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.0597324   0.8756092   1.282573
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.1452620   0.9477874   1.383881
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.0857143   0.8827484   1.335347
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.1839286   1.0012645   1.399917
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         1.1770624   0.9802971   1.413322
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.9618598   0.7711108   1.199794
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.0719640   0.8500477   1.351815
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.0710208   0.8208209   1.397486
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.0265557   0.7499108   1.405256
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.0555556   0.8464543   1.316312
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         0.9369538   0.7267085   1.208025
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.9874552   0.7539571   1.293267
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.0304622   0.9055101   1.172656
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         1.0684851   0.9242403   1.235242
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         0.9642857   0.7763262   1.197753
0-6 months    ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA        4-5                  3 or less         1.2514384   0.8659151   1.808605
0-6 months    ki1000108-IRC              INDIA        6-7                  3 or less         1.0348343   0.6899402   1.552137
0-6 months    ki1000108-IRC              INDIA        8+                   3 or less         1.0606061   0.6985284   1.610364
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.2701465   0.7694983   2.096525
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.2063492   0.7180143   2.026810
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.3119048   0.7604834   2.263158
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.1429426   0.8424503   1.550617
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         1.1275019   0.8029205   1.583295
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.9294935   0.6291542   1.373206
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.1141304   0.7793573   1.592706
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.0140728   0.6656791   1.544804
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         0.9554598   0.5789413   1.576850
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         0.8166667   0.6045737   1.103165
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         0.7845506   0.5554031   1.108239
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.9653226   0.6797801   1.370807
6-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.2223439   0.6933282   2.155004
6-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.2083916   0.6716451   2.174080
6-24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.4475524   0.8100002   2.586923
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.1136493   0.8215720   1.509563
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.2513369   0.9275155   1.688213
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.1987281   0.8638907   1.663346
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.1974826   0.9109619   1.574121
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         1.1923077   0.8845742   1.607098
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.9211066   0.6441162   1.317211
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         0.9340139   0.6364746   1.370647
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.0769231   0.7025558   1.650778
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         0.8946746   0.5389441   1.485205
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.5375458   0.9275478   2.548707
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.1642295   0.6629232   2.044627
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         1.0375940   0.5473418   1.966963
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         0.9874774   0.8513827   1.145327
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         1.0262334   0.8677737   1.213629
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         0.9563431   0.7549412   1.211475


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0724979   -0.0451287   0.1901245
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0645933   -0.0630747   0.1922613
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0662563   -0.0132858   0.1457984
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0214286   -0.0517275   0.0945846
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0038883   -0.0806566   0.0884333
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0154767   -0.0383065   0.0692599
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                 0.0450799   -0.0711236   0.1612834
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0736336   -0.0681265   0.2153937
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0249752   -0.0519664   0.1019168
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0114286   -0.0510974   0.0739545
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0487664   -0.1290370   0.0315043
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0715631   -0.0685843   0.2117105
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1033555   -0.0678495   0.2745605
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0577840   -0.0547845   0.1703525
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0090852   -0.0983091   0.0801387
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0599473   -0.0296924   0.1495870
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0020408   -0.0604059   0.0563243


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.1130195   -0.0911727   0.2790011
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0780347   -0.0902029   0.2203102
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0997015   -0.0286889   0.2120675
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0491803   -0.1344841   0.2031109
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0081419   -0.1856716   0.1702740
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0242696   -0.0638471   0.1050877
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                 0.1062228   -0.2142775   0.3421291
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1890838   -0.2704186   0.4823871
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0714064   -0.1768189   0.2672737
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0476190   -0.2519835   0.2755260
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.1614188   -0.4599708   0.0760817
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.1897628   -0.2817232   0.4878112
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1364967   -0.1231626   0.3361264
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.1006843   -0.1188697   0.2771555
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0302398   -0.3744450   0.2277653
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.2280702   -0.1995971   0.5032702
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0034014   -0.1055483   0.0893077
