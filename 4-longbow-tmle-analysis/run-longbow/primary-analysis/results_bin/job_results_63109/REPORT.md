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

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* cleanck
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
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country      nhh          stunted   n_cell     n  outcome_variable 
----------  --------------  -----------  ----------  --------  -------  ----  -----------------
Birth       IRC             INDIA        3 or less          0       51   388  stunted          
Birth       IRC             INDIA        3 or less          1        3   388  stunted          
Birth       IRC             INDIA        4-5                0      128   388  stunted          
Birth       IRC             INDIA        4-5                1       22   388  stunted          
Birth       IRC             INDIA        6-7                0       89   388  stunted          
Birth       IRC             INDIA        6-7                1       14   388  stunted          
Birth       IRC             INDIA        8+                 0       75   388  stunted          
Birth       IRC             INDIA        8+                 1        6   388  stunted          
Birth       NIH-Birth       BANGLADESH   3 or less          0       93   608  stunted          
Birth       NIH-Birth       BANGLADESH   3 or less          1       19   608  stunted          
Birth       NIH-Birth       BANGLADESH   4-5                0      214   608  stunted          
Birth       NIH-Birth       BANGLADESH   4-5                1       41   608  stunted          
Birth       NIH-Birth       BANGLADESH   6-7                0      118   608  stunted          
Birth       NIH-Birth       BANGLADESH   6-7                1       20   608  stunted          
Birth       NIH-Birth       BANGLADESH   8+                 0       86   608  stunted          
Birth       NIH-Birth       BANGLADESH   8+                 1       17   608  stunted          
Birth       NIH-Crypto      BANGLADESH   3 or less          0       89   732  stunted          
Birth       NIH-Crypto      BANGLADESH   3 or less          1       19   732  stunted          
Birth       NIH-Crypto      BANGLADESH   4-5                0      285   732  stunted          
Birth       NIH-Crypto      BANGLADESH   4-5                1       43   732  stunted          
Birth       NIH-Crypto      BANGLADESH   6-7                0      151   732  stunted          
Birth       NIH-Crypto      BANGLADESH   6-7                1       25   732  stunted          
Birth       NIH-Crypto      BANGLADESH   8+                 0      106   732  stunted          
Birth       NIH-Crypto      BANGLADESH   8+                 1       14   732  stunted          
Birth       PROVIDE         BANGLADESH   3 or less          0       96   539  stunted          
Birth       PROVIDE         BANGLADESH   3 or less          1        8   539  stunted          
Birth       PROVIDE         BANGLADESH   4-5                0      227   539  stunted          
Birth       PROVIDE         BANGLADESH   4-5                1       24   539  stunted          
Birth       PROVIDE         BANGLADESH   6-7                0      107   539  stunted          
Birth       PROVIDE         BANGLADESH   6-7                1        9   539  stunted          
Birth       PROVIDE         BANGLADESH   8+                 0       61   539  stunted          
Birth       PROVIDE         BANGLADESH   8+                 1        7   539  stunted          
6 months    IRC             INDIA        3 or less          0       44   407  stunted          
6 months    IRC             INDIA        3 or less          1       14   407  stunted          
6 months    IRC             INDIA        4-5                0      116   407  stunted          
6 months    IRC             INDIA        4-5                1       42   407  stunted          
6 months    IRC             INDIA        6-7                0       81   407  stunted          
6 months    IRC             INDIA        6-7                1       25   407  stunted          
6 months    IRC             INDIA        8+                 0       66   407  stunted          
6 months    IRC             INDIA        8+                 1       19   407  stunted          
6 months    LCNI-5          MALAWI       3 or less          0      146   816  stunted          
6 months    LCNI-5          MALAWI       3 or less          1       78   816  stunted          
6 months    LCNI-5          MALAWI       4-5                0      212   816  stunted          
6 months    LCNI-5          MALAWI       4-5                1      128   816  stunted          
6 months    LCNI-5          MALAWI       6-7                0      117   816  stunted          
6 months    LCNI-5          MALAWI       6-7                1       65   816  stunted          
6 months    LCNI-5          MALAWI       8+                 0       45   816  stunted          
6 months    LCNI-5          MALAWI       8+                 1       25   816  stunted          
6 months    NIH-Birth       BANGLADESH   3 or less          0       74   537  stunted          
6 months    NIH-Birth       BANGLADESH   3 or less          1       21   537  stunted          
6 months    NIH-Birth       BANGLADESH   4-5                0      151   537  stunted          
6 months    NIH-Birth       BANGLADESH   4-5                1       76   537  stunted          
6 months    NIH-Birth       BANGLADESH   6-7                0      101   537  stunted          
6 months    NIH-Birth       BANGLADESH   6-7                1       27   537  stunted          
6 months    NIH-Birth       BANGLADESH   8+                 0       67   537  stunted          
6 months    NIH-Birth       BANGLADESH   8+                 1       20   537  stunted          
6 months    NIH-Crypto      BANGLADESH   3 or less          0       78   715  stunted          
6 months    NIH-Crypto      BANGLADESH   3 or less          1       26   715  stunted          
6 months    NIH-Crypto      BANGLADESH   4-5                0      257   715  stunted          
6 months    NIH-Crypto      BANGLADESH   4-5                1       69   715  stunted          
6 months    NIH-Crypto      BANGLADESH   6-7                0      138   715  stunted          
6 months    NIH-Crypto      BANGLADESH   6-7                1       32   715  stunted          
6 months    NIH-Crypto      BANGLADESH   8+                 0       92   715  stunted          
6 months    NIH-Crypto      BANGLADESH   8+                 1       23   715  stunted          
6 months    PROVIDE         BANGLADESH   3 or less          0       87   604  stunted          
6 months    PROVIDE         BANGLADESH   3 or less          1       18   604  stunted          
6 months    PROVIDE         BANGLADESH   4-5                0      242   604  stunted          
6 months    PROVIDE         BANGLADESH   4-5                1       47   604  stunted          
6 months    PROVIDE         BANGLADESH   6-7                0      114   604  stunted          
6 months    PROVIDE         BANGLADESH   6-7                1       16   604  stunted          
6 months    PROVIDE         BANGLADESH   8+                 0       65   604  stunted          
6 months    PROVIDE         BANGLADESH   8+                 1       15   604  stunted          
6 months    SAS-FoodSuppl   INDIA        3 or less          0       23   380  stunted          
6 months    SAS-FoodSuppl   INDIA        3 or less          1       10   380  stunted          
6 months    SAS-FoodSuppl   INDIA        4-5                0       96   380  stunted          
6 months    SAS-FoodSuppl   INDIA        4-5                1       70   380  stunted          
6 months    SAS-FoodSuppl   INDIA        6-7                0       65   380  stunted          
6 months    SAS-FoodSuppl   INDIA        6-7                1       50   380  stunted          
6 months    SAS-FoodSuppl   INDIA        8+                 0       33   380  stunted          
6 months    SAS-FoodSuppl   INDIA        8+                 1       33   380  stunted          
24 months   IRC             INDIA        3 or less          0       39   409  stunted          
24 months   IRC             INDIA        3 or less          1       19   409  stunted          
24 months   IRC             INDIA        4-5                0       86   409  stunted          
24 months   IRC             INDIA        4-5                1       72   409  stunted          
24 months   IRC             INDIA        6-7                0       66   409  stunted          
24 months   IRC             INDIA        6-7                1       41   409  stunted          
24 months   IRC             INDIA        8+                 0       46   409  stunted          
24 months   IRC             INDIA        8+                 1       40   409  stunted          
24 months   LCNI-5          MALAWI       3 or less          0       87   574  stunted          
24 months   LCNI-5          MALAWI       3 or less          1       72   574  stunted          
24 months   LCNI-5          MALAWI       4-5                0      129   574  stunted          
24 months   LCNI-5          MALAWI       4-5                1      108   574  stunted          
24 months   LCNI-5          MALAWI       6-7                0       75   574  stunted          
24 months   LCNI-5          MALAWI       6-7                1       54   574  stunted          
24 months   LCNI-5          MALAWI       8+                 0       29   574  stunted          
24 months   LCNI-5          MALAWI       8+                 1       20   574  stunted          
24 months   NIH-Birth       BANGLADESH   3 or less          0       34   429  stunted          
24 months   NIH-Birth       BANGLADESH   3 or less          1       41   429  stunted          
24 months   NIH-Birth       BANGLADESH   4-5                0       69   429  stunted          
24 months   NIH-Birth       BANGLADESH   4-5                1      115   429  stunted          
24 months   NIH-Birth       BANGLADESH   6-7                0       49   429  stunted          
24 months   NIH-Birth       BANGLADESH   6-7                1       51   429  stunted          
24 months   NIH-Birth       BANGLADESH   8+                 0       33   429  stunted          
24 months   NIH-Birth       BANGLADESH   8+                 1       37   429  stunted          
24 months   NIH-Crypto      BANGLADESH   3 or less          0       53   514  stunted          
24 months   NIH-Crypto      BANGLADESH   3 or less          1       16   514  stunted          
24 months   NIH-Crypto      BANGLADESH   4-5                0      168   514  stunted          
24 months   NIH-Crypto      BANGLADESH   4-5                1       64   514  stunted          
24 months   NIH-Crypto      BANGLADESH   6-7                0       95   514  stunted          
24 months   NIH-Crypto      BANGLADESH   6-7                1       35   514  stunted          
24 months   NIH-Crypto      BANGLADESH   8+                 0       66   514  stunted          
24 months   NIH-Crypto      BANGLADESH   8+                 1       17   514  stunted          
24 months   PROVIDE         BANGLADESH   3 or less          0       76   578  stunted          
24 months   PROVIDE         BANGLADESH   3 or less          1       30   578  stunted          
24 months   PROVIDE         BANGLADESH   4-5                0      177   578  stunted          
24 months   PROVIDE         BANGLADESH   4-5                1       96   578  stunted          
24 months   PROVIDE         BANGLADESH   6-7                0       82   578  stunted          
24 months   PROVIDE         BANGLADESH   6-7                1       35   578  stunted          
24 months   PROVIDE         BANGLADESH   8+                 0       53   578  stunted          
24 months   PROVIDE         BANGLADESH   8+                 1       29   578  stunted          


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
