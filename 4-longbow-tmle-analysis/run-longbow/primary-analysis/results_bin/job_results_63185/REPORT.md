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

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
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
* delta_hhwealth_quart
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

agecat        studyid         country      nhh          ever_stunted   n_cell     n  outcome_variable 
------------  --------------  -----------  ----------  -------------  -------  ----  -----------------
0-24 months   IRC             INDIA        3 or less               0       25   410  ever_stunted     
0-24 months   IRC             INDIA        3 or less               1       33   410  ever_stunted     
0-24 months   IRC             INDIA        4-5                     0       52   410  ever_stunted     
0-24 months   IRC             INDIA        4-5                     1      106   410  ever_stunted     
0-24 months   IRC             INDIA        6-7                     0       41   410  ever_stunted     
0-24 months   IRC             INDIA        6-7                     1       66   410  ever_stunted     
0-24 months   IRC             INDIA        8+                      0       29   410  ever_stunted     
0-24 months   IRC             INDIA        8+                      1       58   410  ever_stunted     
0-24 months   LCNI-5          MALAWI       3 or less               0       85   817  ever_stunted     
0-24 months   LCNI-5          MALAWI       3 or less               1      140   817  ever_stunted     
0-24 months   LCNI-5          MALAWI       4-5                     0      122   817  ever_stunted     
0-24 months   LCNI-5          MALAWI       4-5                     1      218   817  ever_stunted     
0-24 months   LCNI-5          MALAWI       6-7                     0       61   817  ever_stunted     
0-24 months   LCNI-5          MALAWI       6-7                     1      121   817  ever_stunted     
0-24 months   LCNI-5          MALAWI       8+                      0       28   817  ever_stunted     
0-24 months   LCNI-5          MALAWI       8+                      1       42   817  ever_stunted     
0-24 months   NIH-Birth       BANGLADESH   3 or less               0       47   629  ever_stunted     
0-24 months   NIH-Birth       BANGLADESH   3 or less               1       70   629  ever_stunted     
0-24 months   NIH-Birth       BANGLADESH   4-5                     0       77   629  ever_stunted     
0-24 months   NIH-Birth       BANGLADESH   4-5                     1      187   629  ever_stunted     
0-24 months   NIH-Birth       BANGLADESH   6-7                     0       42   629  ever_stunted     
0-24 months   NIH-Birth       BANGLADESH   6-7                     1      100   629  ever_stunted     
0-24 months   NIH-Birth       BANGLADESH   8+                      0       45   629  ever_stunted     
0-24 months   NIH-Birth       BANGLADESH   8+                      1       61   629  ever_stunted     
0-24 months   NIH-Crypto      BANGLADESH   3 or less               0       60   758  ever_stunted     
0-24 months   NIH-Crypto      BANGLADESH   3 or less               1       54   758  ever_stunted     
0-24 months   NIH-Crypto      BANGLADESH   4-5                     0      171   758  ever_stunted     
0-24 months   NIH-Crypto      BANGLADESH   4-5                     1      171   758  ever_stunted     
0-24 months   NIH-Crypto      BANGLADESH   6-7                     0       99   758  ever_stunted     
0-24 months   NIH-Crypto      BANGLADESH   6-7                     1       79   758  ever_stunted     
0-24 months   NIH-Crypto      BANGLADESH   8+                      0       66   758  ever_stunted     
0-24 months   NIH-Crypto      BANGLADESH   8+                      1       58   758  ever_stunted     
0-24 months   PROVIDE         BANGLADESH   3 or less               0       82   700  ever_stunted     
0-24 months   PROVIDE         BANGLADESH   3 or less               1       58   700  ever_stunted     
0-24 months   PROVIDE         BANGLADESH   4-5                     0      179   700  ever_stunted     
0-24 months   PROVIDE         BANGLADESH   4-5                     1      143   700  ever_stunted     
0-24 months   PROVIDE         BANGLADESH   6-7                     0       84   700  ever_stunted     
0-24 months   PROVIDE         BANGLADESH   6-7                     1       67   700  ever_stunted     
0-24 months   PROVIDE         BANGLADESH   8+                      0       50   700  ever_stunted     
0-24 months   PROVIDE         BANGLADESH   8+                      1       37   700  ever_stunted     
0-24 months   SAS-FoodSuppl   INDIA        3 or less               0        9   418  ever_stunted     
0-24 months   SAS-FoodSuppl   INDIA        3 or less               1       29   418  ever_stunted     
0-24 months   SAS-FoodSuppl   INDIA        4-5                     0       35   418  ever_stunted     
0-24 months   SAS-FoodSuppl   INDIA        4-5                     1      148   418  ever_stunted     
0-24 months   SAS-FoodSuppl   INDIA        6-7                     0       16   418  ever_stunted     
0-24 months   SAS-FoodSuppl   INDIA        6-7                     1      111   418  ever_stunted     
0-24 months   SAS-FoodSuppl   INDIA        8+                      0       12   418  ever_stunted     
0-24 months   SAS-FoodSuppl   INDIA        8+                      1       58   418  ever_stunted     
0-6 months    IRC             INDIA        3 or less               0       36   410  ever_stunted     
0-6 months    IRC             INDIA        3 or less               1       22   410  ever_stunted     
0-6 months    IRC             INDIA        4-5                     0       83   410  ever_stunted     
0-6 months    IRC             INDIA        4-5                     1       75   410  ever_stunted     
0-6 months    IRC             INDIA        6-7                     0       65   410  ever_stunted     
0-6 months    IRC             INDIA        6-7                     1       42   410  ever_stunted     
0-6 months    IRC             INDIA        8+                      0       52   410  ever_stunted     
0-6 months    IRC             INDIA        8+                      1       35   410  ever_stunted     
0-6 months    LCNI-5          MALAWI       3 or less               0       48   269  ever_stunted     
0-6 months    LCNI-5          MALAWI       3 or less               1       22   269  ever_stunted     
0-6 months    LCNI-5          MALAWI       4-5                     0       66   269  ever_stunted     
0-6 months    LCNI-5          MALAWI       4-5                     1       45   269  ever_stunted     
0-6 months    LCNI-5          MALAWI       6-7                     0       43   269  ever_stunted     
0-6 months    LCNI-5          MALAWI       6-7                     1       24   269  ever_stunted     
0-6 months    LCNI-5          MALAWI       8+                      0       17   269  ever_stunted     
0-6 months    LCNI-5          MALAWI       8+                      1        4   269  ever_stunted     
0-6 months    NIH-Birth       BANGLADESH   3 or less               0       79   629  ever_stunted     
0-6 months    NIH-Birth       BANGLADESH   3 or less               1       38   629  ever_stunted     
0-6 months    NIH-Birth       BANGLADESH   4-5                     0      166   629  ever_stunted     
0-6 months    NIH-Birth       BANGLADESH   4-5                     1       98   629  ever_stunted     
0-6 months    NIH-Birth       BANGLADESH   6-7                     0       90   629  ever_stunted     
0-6 months    NIH-Birth       BANGLADESH   6-7                     1       52   629  ever_stunted     
0-6 months    NIH-Birth       BANGLADESH   8+                      0       74   629  ever_stunted     
0-6 months    NIH-Birth       BANGLADESH   8+                      1       32   629  ever_stunted     
0-6 months    NIH-Crypto      BANGLADESH   3 or less               0       74   758  ever_stunted     
0-6 months    NIH-Crypto      BANGLADESH   3 or less               1       40   758  ever_stunted     
0-6 months    NIH-Crypto      BANGLADESH   4-5                     0      244   758  ever_stunted     
0-6 months    NIH-Crypto      BANGLADESH   4-5                     1       98   758  ever_stunted     
0-6 months    NIH-Crypto      BANGLADESH   6-7                     0      129   758  ever_stunted     
0-6 months    NIH-Crypto      BANGLADESH   6-7                     1       49   758  ever_stunted     
0-6 months    NIH-Crypto      BANGLADESH   8+                      0       82   758  ever_stunted     
0-6 months    NIH-Crypto      BANGLADESH   8+                      1       42   758  ever_stunted     
0-6 months    PROVIDE         BANGLADESH   3 or less               0      108   700  ever_stunted     
0-6 months    PROVIDE         BANGLADESH   3 or less               1       32   700  ever_stunted     
0-6 months    PROVIDE         BANGLADESH   4-5                     0      240   700  ever_stunted     
0-6 months    PROVIDE         BANGLADESH   4-5                     1       82   700  ever_stunted     
0-6 months    PROVIDE         BANGLADESH   6-7                     0      116   700  ever_stunted     
0-6 months    PROVIDE         BANGLADESH   6-7                     1       35   700  ever_stunted     
0-6 months    PROVIDE         BANGLADESH   8+                      0       68   700  ever_stunted     
0-6 months    PROVIDE         BANGLADESH   8+                      1       19   700  ever_stunted     
0-6 months    SAS-FoodSuppl   INDIA        3 or less               0       26   416  ever_stunted     
0-6 months    SAS-FoodSuppl   INDIA        3 or less               1       12   416  ever_stunted     
0-6 months    SAS-FoodSuppl   INDIA        4-5                     0      109   416  ever_stunted     
0-6 months    SAS-FoodSuppl   INDIA        4-5                     1       73   416  ever_stunted     
0-6 months    SAS-FoodSuppl   INDIA        6-7                     0       78   416  ever_stunted     
0-6 months    SAS-FoodSuppl   INDIA        6-7                     1       48   416  ever_stunted     
0-6 months    SAS-FoodSuppl   INDIA        8+                      0       41   416  ever_stunted     
0-6 months    SAS-FoodSuppl   INDIA        8+                      1       29   416  ever_stunted     
6-24 months   IRC             INDIA        3 or less               0       25   236  ever_stunted     
6-24 months   IRC             INDIA        3 or less               1       11   236  ever_stunted     
6-24 months   IRC             INDIA        4-5                     0       52   236  ever_stunted     
6-24 months   IRC             INDIA        4-5                     1       31   236  ever_stunted     
6-24 months   IRC             INDIA        6-7                     0       41   236  ever_stunted     
6-24 months   IRC             INDIA        6-7                     1       24   236  ever_stunted     
6-24 months   IRC             INDIA        8+                      0       29   236  ever_stunted     
6-24 months   IRC             INDIA        8+                      1       23   236  ever_stunted     
6-24 months   LCNI-5          MALAWI       3 or less               0       78   710  ever_stunted     
6-24 months   LCNI-5          MALAWI       3 or less               1      118   710  ever_stunted     
6-24 months   LCNI-5          MALAWI       4-5                     0      118   710  ever_stunted     
6-24 months   LCNI-5          MALAWI       4-5                     1      173   710  ever_stunted     
6-24 months   LCNI-5          MALAWI       6-7                     0       60   710  ever_stunted     
6-24 months   LCNI-5          MALAWI       6-7                     1       97   710  ever_stunted     
6-24 months   LCNI-5          MALAWI       8+                      0       28   710  ever_stunted     
6-24 months   LCNI-5          MALAWI       8+                      1       38   710  ever_stunted     
6-24 months   NIH-Birth       BANGLADESH   3 or less               0       30   345  ever_stunted     
6-24 months   NIH-Birth       BANGLADESH   3 or less               1       32   345  ever_stunted     
6-24 months   NIH-Birth       BANGLADESH   4-5                     0       55   345  ever_stunted     
6-24 months   NIH-Birth       BANGLADESH   4-5                     1       89   345  ever_stunted     
6-24 months   NIH-Birth       BANGLADESH   6-7                     0       30   345  ever_stunted     
6-24 months   NIH-Birth       BANGLADESH   6-7                     1       48   345  ever_stunted     
6-24 months   NIH-Birth       BANGLADESH   8+                      0       32   345  ever_stunted     
6-24 months   NIH-Birth       BANGLADESH   8+                      1       29   345  ever_stunted     
6-24 months   NIH-Crypto      BANGLADESH   3 or less               0       55   506  ever_stunted     
6-24 months   NIH-Crypto      BANGLADESH   3 or less               1       14   506  ever_stunted     
6-24 months   NIH-Crypto      BANGLADESH   4-5                     0      161   506  ever_stunted     
6-24 months   NIH-Crypto      BANGLADESH   4-5                     1       73   506  ever_stunted     
6-24 months   NIH-Crypto      BANGLADESH   6-7                     0       97   506  ever_stunted     
6-24 months   NIH-Crypto      BANGLADESH   6-7                     1       30   506  ever_stunted     
6-24 months   NIH-Crypto      BANGLADESH   8+                      0       60   506  ever_stunted     
6-24 months   NIH-Crypto      BANGLADESH   8+                      1       16   506  ever_stunted     
6-24 months   PROVIDE         BANGLADESH   3 or less               0       58   456  ever_stunted     
6-24 months   PROVIDE         BANGLADESH   3 or less               1       26   456  ever_stunted     
6-24 months   PROVIDE         BANGLADESH   4-5                     0      150   456  ever_stunted     
6-24 months   PROVIDE         BANGLADESH   4-5                     1       61   456  ever_stunted     
6-24 months   PROVIDE         BANGLADESH   6-7                     0       64   456  ever_stunted     
6-24 months   PROVIDE         BANGLADESH   6-7                     1       32   456  ever_stunted     
6-24 months   PROVIDE         BANGLADESH   8+                      0       47   456  ever_stunted     
6-24 months   PROVIDE         BANGLADESH   8+                      1       18   456  ever_stunted     
6-24 months   SAS-FoodSuppl   INDIA        3 or less               0        9   243  ever_stunted     
6-24 months   SAS-FoodSuppl   INDIA        3 or less               1       17   243  ever_stunted     
6-24 months   SAS-FoodSuppl   INDIA        4-5                     0       28   243  ever_stunted     
6-24 months   SAS-FoodSuppl   INDIA        4-5                     1       75   243  ever_stunted     
6-24 months   SAS-FoodSuppl   INDIA        6-7                     0       14   243  ever_stunted     
6-24 months   SAS-FoodSuppl   INDIA        6-7                     1       63   243  ever_stunted     
6-24 months   SAS-FoodSuppl   INDIA        8+                      0        8   243  ever_stunted     
6-24 months   SAS-FoodSuppl   INDIA        8+                      1       29   243  ever_stunted     


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

* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI

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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
