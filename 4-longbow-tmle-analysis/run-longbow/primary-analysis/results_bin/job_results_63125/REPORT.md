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

**Intervention Variable:** predfeed3

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid     country                        predfeed3    stunted   n_cell       n  outcome_variable 
----------  ----------  -----------------------------  ----------  --------  -------  ------  -----------------
Birth       EE          PAKISTAN                       1                  0       20      35  stunted          
Birth       EE          PAKISTAN                       1                  1       15      35  stunted          
Birth       EE          PAKISTAN                       0                  0        0      35  stunted          
Birth       EE          PAKISTAN                       0                  1        0      35  stunted          
Birth       GMS-Nepal   NEPAL                          1                  0      317     458  stunted          
Birth       GMS-Nepal   NEPAL                          1                  1       63     458  stunted          
Birth       GMS-Nepal   NEPAL                          0                  0       63     458  stunted          
Birth       GMS-Nepal   NEPAL                          0                  1       15     458  stunted          
Birth       JiVitA-3    BANGLADESH                     1                  0     8077   13276  stunted          
Birth       JiVitA-3    BANGLADESH                     1                  1     3940   13276  stunted          
Birth       JiVitA-3    BANGLADESH                     0                  0      817   13276  stunted          
Birth       JiVitA-3    BANGLADESH                     0                  1      442   13276  stunted          
Birth       JiVitA-4    BANGLADESH                     1                  0       71     116  stunted          
Birth       JiVitA-4    BANGLADESH                     1                  1       34     116  stunted          
Birth       JiVitA-4    BANGLADESH                     0                  0        7     116  stunted          
Birth       JiVitA-4    BANGLADESH                     0                  1        4     116  stunted          
Birth       MAL-ED      BANGLADESH                     1                  0      141     215  stunted          
Birth       MAL-ED      BANGLADESH                     1                  1       35     215  stunted          
Birth       MAL-ED      BANGLADESH                     0                  0       34     215  stunted          
Birth       MAL-ED      BANGLADESH                     0                  1        5     215  stunted          
Birth       MAL-ED      BRAZIL                         1                  0       21      57  stunted          
Birth       MAL-ED      BRAZIL                         1                  1        3      57  stunted          
Birth       MAL-ED      BRAZIL                         0                  0       28      57  stunted          
Birth       MAL-ED      BRAZIL                         0                  1        5      57  stunted          
Birth       MAL-ED      INDIA                          1                  0       21      41  stunted          
Birth       MAL-ED      INDIA                          1                  1        8      41  stunted          
Birth       MAL-ED      INDIA                          0                  0       12      41  stunted          
Birth       MAL-ED      INDIA                          0                  1        0      41  stunted          
Birth       MAL-ED      NEPAL                          1                  0       13      26  stunted          
Birth       MAL-ED      NEPAL                          1                  1        1      26  stunted          
Birth       MAL-ED      NEPAL                          0                  0       11      26  stunted          
Birth       MAL-ED      NEPAL                          0                  1        1      26  stunted          
Birth       MAL-ED      PERU                           1                  0      134     223  stunted          
Birth       MAL-ED      PERU                           1                  1       16     223  stunted          
Birth       MAL-ED      PERU                           0                  0       65     223  stunted          
Birth       MAL-ED      PERU                           0                  1        8     223  stunted          
Birth       MAL-ED      SOUTH AFRICA                   1                  0       32     100  stunted          
Birth       MAL-ED      SOUTH AFRICA                   1                  1        1     100  stunted          
Birth       MAL-ED      SOUTH AFRICA                   0                  0       59     100  stunted          
Birth       MAL-ED      SOUTH AFRICA                   0                  1        8     100  stunted          
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  0       21     102  stunted          
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  1        5     102  stunted          
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  0       62     102  stunted          
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  1       14     102  stunted          
6 months    EE          PAKISTAN                       1                  0       17      39  stunted          
6 months    EE          PAKISTAN                       1                  1       22      39  stunted          
6 months    EE          PAKISTAN                       0                  0        0      39  stunted          
6 months    EE          PAKISTAN                       0                  1        0      39  stunted          
6 months    GMS-Nepal   NEPAL                          1                  0      292     441  stunted          
6 months    GMS-Nepal   NEPAL                          1                  1       75     441  stunted          
6 months    GMS-Nepal   NEPAL                          0                  0       56     441  stunted          
6 months    GMS-Nepal   NEPAL                          0                  1       18     441  stunted          
6 months    JiVitA-3    BANGLADESH                     1                  0     6392    9328  stunted          
6 months    JiVitA-3    BANGLADESH                     1                  1     2124    9328  stunted          
6 months    JiVitA-3    BANGLADESH                     0                  0      596    9328  stunted          
6 months    JiVitA-3    BANGLADESH                     0                  1      216    9328  stunted          
6 months    JiVitA-4    BANGLADESH                     1                  0       64      88  stunted          
6 months    JiVitA-4    BANGLADESH                     1                  1       12      88  stunted          
6 months    JiVitA-4    BANGLADESH                     0                  0        8      88  stunted          
6 months    JiVitA-4    BANGLADESH                     0                  1        4      88  stunted          
6 months    MAL-ED      BANGLADESH                     1                  0      158     233  stunted          
6 months    MAL-ED      BANGLADESH                     1                  1       33     233  stunted          
6 months    MAL-ED      BANGLADESH                     0                  0       31     233  stunted          
6 months    MAL-ED      BANGLADESH                     0                  1       11     233  stunted          
6 months    MAL-ED      BRAZIL                         1                  0       90     187  stunted          
6 months    MAL-ED      BRAZIL                         1                  1        3     187  stunted          
6 months    MAL-ED      BRAZIL                         0                  0       92     187  stunted          
6 months    MAL-ED      BRAZIL                         0                  1        2     187  stunted          
6 months    MAL-ED      INDIA                          1                  0      118     210  stunted          
6 months    MAL-ED      INDIA                          1                  1       29     210  stunted          
6 months    MAL-ED      INDIA                          0                  0       53     210  stunted          
6 months    MAL-ED      INDIA                          0                  1       10     210  stunted          
6 months    MAL-ED      NEPAL                          1                  0      107     227  stunted          
6 months    MAL-ED      NEPAL                          1                  1        6     227  stunted          
6 months    MAL-ED      NEPAL                          0                  0      109     227  stunted          
6 months    MAL-ED      NEPAL                          0                  1        5     227  stunted          
6 months    MAL-ED      PERU                           1                  0      144     270  stunted          
6 months    MAL-ED      PERU                           1                  1       32     270  stunted          
6 months    MAL-ED      PERU                           0                  0       68     270  stunted          
6 months    MAL-ED      PERU                           0                  1       26     270  stunted          
6 months    MAL-ED      SOUTH AFRICA                   1                  0       55     244  stunted          
6 months    MAL-ED      SOUTH AFRICA                   1                  1        8     244  stunted          
6 months    MAL-ED      SOUTH AFRICA                   0                  0      142     244  stunted          
6 months    MAL-ED      SOUTH AFRICA                   0                  1       39     244  stunted          
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  0       51     212  stunted          
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  1       13     212  stunted          
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  0      108     212  stunted          
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  1       40     212  stunted          
24 months   EE          PAKISTAN                       1                  0        5      20  stunted          
24 months   EE          PAKISTAN                       1                  1       15      20  stunted          
24 months   EE          PAKISTAN                       0                  0        0      20  stunted          
24 months   EE          PAKISTAN                       0                  1        0      20  stunted          
24 months   GMS-Nepal   NEPAL                          1                  0      181     384  stunted          
24 months   GMS-Nepal   NEPAL                          1                  1      141     384  stunted          
24 months   GMS-Nepal   NEPAL                          0                  0       33     384  stunted          
24 months   GMS-Nepal   NEPAL                          0                  1       29     384  stunted          
24 months   JiVitA-3    BANGLADESH                     1                  0     2275    4852  stunted          
24 months   JiVitA-3    BANGLADESH                     1                  1     2159    4852  stunted          
24 months   JiVitA-3    BANGLADESH                     0                  0      181    4852  stunted          
24 months   JiVitA-3    BANGLADESH                     0                  1      237    4852  stunted          
24 months   JiVitA-4    BANGLADESH                     1                  0       84     151  stunted          
24 months   JiVitA-4    BANGLADESH                     1                  1       52     151  stunted          
24 months   JiVitA-4    BANGLADESH                     0                  0        6     151  stunted          
24 months   JiVitA-4    BANGLADESH                     0                  1        9     151  stunted          
24 months   MAL-ED      BANGLADESH                     1                  0       88     205  stunted          
24 months   MAL-ED      BANGLADESH                     1                  1       80     205  stunted          
24 months   MAL-ED      BANGLADESH                     0                  0       18     205  stunted          
24 months   MAL-ED      BANGLADESH                     0                  1       19     205  stunted          
24 months   MAL-ED      BRAZIL                         1                  0       75     152  stunted          
24 months   MAL-ED      BRAZIL                         1                  1        4     152  stunted          
24 months   MAL-ED      BRAZIL                         0                  0       70     152  stunted          
24 months   MAL-ED      BRAZIL                         0                  1        3     152  stunted          
24 months   MAL-ED      INDIA                          1                  0       69     202  stunted          
24 months   MAL-ED      INDIA                          1                  1       70     202  stunted          
24 months   MAL-ED      INDIA                          0                  0       46     202  stunted          
24 months   MAL-ED      INDIA                          0                  1       17     202  stunted          
24 months   MAL-ED      NEPAL                          1                  0       87     220  stunted          
24 months   MAL-ED      NEPAL                          1                  1       23     220  stunted          
24 months   MAL-ED      NEPAL                          0                  0       85     220  stunted          
24 months   MAL-ED      NEPAL                          0                  1       25     220  stunted          
24 months   MAL-ED      PERU                           1                  0       84     198  stunted          
24 months   MAL-ED      PERU                           1                  1       47     198  stunted          
24 months   MAL-ED      PERU                           0                  0       42     198  stunted          
24 months   MAL-ED      PERU                           0                  1       25     198  stunted          
24 months   MAL-ED      SOUTH AFRICA                   1                  0       41     228  stunted          
24 months   MAL-ED      SOUTH AFRICA                   1                  1       19     228  stunted          
24 months   MAL-ED      SOUTH AFRICA                   0                  0      107     228  stunted          
24 months   MAL-ED      SOUTH AFRICA                   0                  1       61     228  stunted          
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  0       13     184  stunted          
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  1       41     184  stunted          
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  0       36     184  stunted          
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  1       94     184  stunted          


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL

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
