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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        hdlvry    sstunted   n_cell      n  outcome_variable 
----------  ---------------  -----------------------------  -------  ---------  -------  -----  -----------------
Birth       CMC-V-BCS-2002   INDIA                          0                0       88     92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          0                1        4     92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          1                0        0     92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          1                1        0     92  sstunted         
Birth       COHORTS          INDIA                          0                0     2855   4694  sstunted         
Birth       COHORTS          INDIA                          0                1       83   4694  sstunted         
Birth       COHORTS          INDIA                          1                0     1702   4694  sstunted         
Birth       COHORTS          INDIA                          1                1       54   4694  sstunted         
Birth       EE               PAKISTAN                       0                0      130    238  sstunted         
Birth       EE               PAKISTAN                       0                1       31    238  sstunted         
Birth       EE               PAKISTAN                       1                0       60    238  sstunted         
Birth       EE               PAKISTAN                       1                1       17    238  sstunted         
Birth       GMS-Nepal        NEPAL                          0                0      150    646  sstunted         
Birth       GMS-Nepal        NEPAL                          0                1        7    646  sstunted         
Birth       GMS-Nepal        NEPAL                          1                0      469    646  sstunted         
Birth       GMS-Nepal        NEPAL                          1                1       20    646  sstunted         
Birth       IRC              INDIA                          0                0      365    388  sstunted         
Birth       IRC              INDIA                          0                1       16    388  sstunted         
Birth       IRC              INDIA                          1                0        7    388  sstunted         
Birth       IRC              INDIA                          1                1        0    388  sstunted         
Birth       JiVitA-3         BANGLADESH                     0                0       30    334  sstunted         
Birth       JiVitA-3         BANGLADESH                     0                1        0    334  sstunted         
Birth       JiVitA-3         BANGLADESH                     1                0      284    334  sstunted         
Birth       JiVitA-3         BANGLADESH                     1                1       20    334  sstunted         
Birth       JiVitA-4         BANGLADESH                     0                0      520   2808  sstunted         
Birth       JiVitA-4         BANGLADESH                     0                1       34   2808  sstunted         
Birth       JiVitA-4         BANGLADESH                     1                0     2056   2808  sstunted         
Birth       JiVitA-4         BANGLADESH                     1                1      198   2808  sstunted         
Birth       NIH-Crypto       BANGLADESH                     0                0      558    732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     0                1        9    732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     1                0      164    732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     1                1        1    732  sstunted         
Birth       PROVIDE          BANGLADESH                     0                0      389    539  sstunted         
Birth       PROVIDE          BANGLADESH                     0                1        2    539  sstunted         
Birth       PROVIDE          BANGLADESH                     1                0      146    539  sstunted         
Birth       PROVIDE          BANGLADESH                     1                1        2    539  sstunted         
Birth       SAS-CompFeed     INDIA                          0                0      117   1085  sstunted         
Birth       SAS-CompFeed     INDIA                          0                1        7   1085  sstunted         
Birth       SAS-CompFeed     INDIA                          1                0      894   1085  sstunted         
Birth       SAS-CompFeed     INDIA                          1                1       67   1085  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          0                0      318    366  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          0                1       40    366  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                0        7    366  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                1        1    366  sstunted         
6 months    COHORTS          INDIA                          0                0     2788   4699  sstunted         
6 months    COHORTS          INDIA                          0                1      112   4699  sstunted         
6 months    COHORTS          INDIA                          1                0     1680   4699  sstunted         
6 months    COHORTS          INDIA                          1                1      119   4699  sstunted         
6 months    EE               PAKISTAN                       0                0      198    371  sstunted         
6 months    EE               PAKISTAN                       0                1       52    371  sstunted         
6 months    EE               PAKISTAN                       1                0       93    371  sstunted         
6 months    EE               PAKISTAN                       1                1       28    371  sstunted         
6 months    GMS-Nepal        NEPAL                          0                0      127    528  sstunted         
6 months    GMS-Nepal        NEPAL                          0                1        2    528  sstunted         
6 months    GMS-Nepal        NEPAL                          1                0      383    528  sstunted         
6 months    GMS-Nepal        NEPAL                          1                1       16    528  sstunted         
6 months    IRC              INDIA                          0                0      370    407  sstunted         
6 months    IRC              INDIA                          0                1       29    407  sstunted         
6 months    IRC              INDIA                          1                0        8    407  sstunted         
6 months    IRC              INDIA                          1                1        0    407  sstunted         
6 months    JiVitA-3         BANGLADESH                     0                0       37    332  sstunted         
6 months    JiVitA-3         BANGLADESH                     0                1        2    332  sstunted         
6 months    JiVitA-3         BANGLADESH                     1                0      283    332  sstunted         
6 months    JiVitA-3         BANGLADESH                     1                1       10    332  sstunted         
6 months    JiVitA-4         BANGLADESH                     0                0     1028   4038  sstunted         
6 months    JiVitA-4         BANGLADESH                     0                1       53   4038  sstunted         
6 months    JiVitA-4         BANGLADESH                     1                0     2790   4038  sstunted         
6 months    JiVitA-4         BANGLADESH                     1                1      167   4038  sstunted         
6 months    NIH-Crypto       BANGLADESH                     0                0      535    715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     0                1       19    715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     1                0      157    715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     1                1        4    715  sstunted         
6 months    PROVIDE          BANGLADESH                     0                0      443    604  sstunted         
6 months    PROVIDE          BANGLADESH                     0                1        7    604  sstunted         
6 months    PROVIDE          BANGLADESH                     1                0      147    604  sstunted         
6 months    PROVIDE          BANGLADESH                     1                1        7    604  sstunted         
6 months    SAS-CompFeed     INDIA                          0                0      141   1091  sstunted         
6 months    SAS-CompFeed     INDIA                          0                1        6   1091  sstunted         
6 months    SAS-CompFeed     INDIA                          1                0      839   1091  sstunted         
6 months    SAS-CompFeed     INDIA                          1                1      105   1091  sstunted         
6 months    SAS-FoodSuppl    INDIA                          0                0       69    380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          0                1        7    380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          1                0      257    380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          1                1       47    380  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1873   1921  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       16   1921  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0       30   1921  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        2   1921  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          0                0      238    368  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          0                1      122    368  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                0        6    368  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                1        2    368  sstunted         
24 months   COHORTS          INDIA                          0                0     1819   3556  sstunted         
24 months   COHORTS          INDIA                          0                1      414   3556  sstunted         
24 months   COHORTS          INDIA                          1                0      816   3556  sstunted         
24 months   COHORTS          INDIA                          1                1      507   3556  sstunted         
24 months   EE               PAKISTAN                       0                0       70    166  sstunted         
24 months   EE               PAKISTAN                       0                1       42    166  sstunted         
24 months   EE               PAKISTAN                       1                0       37    166  sstunted         
24 months   EE               PAKISTAN                       1                1       17    166  sstunted         
24 months   GMS-Nepal        NEPAL                          0                0      105    456  sstunted         
24 months   GMS-Nepal        NEPAL                          0                1       13    456  sstunted         
24 months   GMS-Nepal        NEPAL                          1                0      305    456  sstunted         
24 months   GMS-Nepal        NEPAL                          1                1       33    456  sstunted         
24 months   IRC              INDIA                          0                0      362    409  sstunted         
24 months   IRC              INDIA                          0                1       39    409  sstunted         
24 months   IRC              INDIA                          1                0        6    409  sstunted         
24 months   IRC              INDIA                          1                1        2    409  sstunted         
24 months   JiVitA-3         BANGLADESH                     0                0       31    291  sstunted         
24 months   JiVitA-3         BANGLADESH                     0                1        4    291  sstunted         
24 months   JiVitA-3         BANGLADESH                     1                0      204    291  sstunted         
24 months   JiVitA-3         BANGLADESH                     1                1       52    291  sstunted         
24 months   JiVitA-4         BANGLADESH                     0                0      971   4005  sstunted         
24 months   JiVitA-4         BANGLADESH                     0                1       62   4005  sstunted         
24 months   JiVitA-4         BANGLADESH                     1                0     2659   4005  sstunted         
24 months   JiVitA-4         BANGLADESH                     1                1      313   4005  sstunted         
24 months   NIH-Crypto       BANGLADESH                     0                0      364    514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     0                1       27    514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     1                0      114    514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     1                1        9    514  sstunted         
24 months   PROVIDE          BANGLADESH                     0                0      397    578  sstunted         
24 months   PROVIDE          BANGLADESH                     0                1       36    578  sstunted         
24 months   PROVIDE          BANGLADESH                     1                0      129    578  sstunted         
24 months   PROVIDE          BANGLADESH                     1                1       16    578  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        5      6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        1      6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0      6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0      6  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
