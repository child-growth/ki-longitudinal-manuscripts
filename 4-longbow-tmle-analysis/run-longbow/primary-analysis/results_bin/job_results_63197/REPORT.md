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

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        single    ever_sstunted   n_cell       n  outcome_variable 
------------  ---------------  -----------------------------  -------  --------------  -------  ------  -----------------
0-24 months   COHORTS          GUATEMALA                      0                     0      582    1207  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      0                     1      527    1207  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      1                     0       43    1207  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      1                     1       55    1207  ever_sstunted    
0-24 months   COHORTS          INDIA                          0                     0     4639    5384  ever_sstunted    
0-24 months   COHORTS          INDIA                          0                     1      736    5384  ever_sstunted    
0-24 months   COHORTS          INDIA                          1                     0        7    5384  ever_sstunted    
0-24 months   COHORTS          INDIA                          1                     1        2    5384  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    0                     0     1889    3018  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    0                     1     1054    3018  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    1                     0       50    3018  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    1                     1       25    3018  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      0                     0      207     282  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      0                     1       45     282  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      1                     0       22     282  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      1                     1        8     282  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     0                     0     4312    5423  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     0                     1     1103    5423  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     1                     0        8    5423  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     1                     1        0    5423  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     0                     0      207     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     0                     1       58     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     1                     0        0     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     1                     1        0     265  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         0                     0      183     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         0                     1       14     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         1                     0       28     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         1                     1        8     233  ever_sstunted    
0-24 months   MAL-ED           INDIA                          0                     0      192     249  ever_sstunted    
0-24 months   MAL-ED           INDIA                          0                     1       57     249  ever_sstunted    
0-24 months   MAL-ED           INDIA                          1                     0        0     249  ever_sstunted    
0-24 months   MAL-ED           INDIA                          1                     1        0     249  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          0                     0      219     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          0                     1       21     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          1                     0        0     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          1                     1        0     240  ever_sstunted    
0-24 months   MAL-ED           PERU                           0                     0      214     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           0                     1       54     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           1                     0       25     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           1                     1       10     303  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   0                     0      138     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   0                     1       38     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   1                     0      103     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   1                     1       35     314  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      119     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1      133     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        6     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        4     262  ever_sstunted    
0-24 months   PROBIT           BELARUS                        0                     0    15765   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        0                     1      439   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        1                     0      665   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        1                     1       28   16897  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0     1933    2375  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1      218    2375  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      205    2375  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       19    2375  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       0                     0    10952   14016  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       0                     1     2175   14016  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       1                     0      709   14016  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       1                     1      180   14016  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      0                     0      816     974  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      0                     1       89     974  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      1                     0       57     974  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      1                     1       12     974  ever_sstunted    
0-6 months    COHORTS          INDIA                          0                     0     4942    5203  ever_sstunted    
0-6 months    COHORTS          INDIA                          0                     1      253    5203  ever_sstunted    
0-6 months    COHORTS          INDIA                          1                     0        8    5203  ever_sstunted    
0-6 months    COHORTS          INDIA                          1                     1        0    5203  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    0                     0     2762    3018  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    0                     1      181    3018  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    1                     0       68    3018  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    1                     1        7    3018  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      0                     0      220     265  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      0                     1       18     265  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      1                     0       21     265  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      1                     1        6     265  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     0                     0     4590    5115  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     0                     1      518    5115  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     1                     0        7    5115  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     1                     1        0    5115  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     0                     0      244     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     0                     1       21     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     1                     0        0     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     1                     1        0     265  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         0                     0      186     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         0                     1       11     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         1                     0       30     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         1                     1        6     233  ever_sstunted    
0-6 months    MAL-ED           INDIA                          0                     0      230     249  ever_sstunted    
0-6 months    MAL-ED           INDIA                          0                     1       19     249  ever_sstunted    
0-6 months    MAL-ED           INDIA                          1                     0        0     249  ever_sstunted    
0-6 months    MAL-ED           INDIA                          1                     1        0     249  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          0                     0      230     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          0                     1       10     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          1                     0        0     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          1                     1        0     240  ever_sstunted    
0-6 months    MAL-ED           PERU                           0                     0      237     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           0                     1       31     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           1                     0       28     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           1                     1        7     303  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   0                     0      161     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   0                     1       15     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   1                     0      124     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   1                     1       14     314  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      215     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1       37     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        9     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        1     262  ever_sstunted    
0-6 months    PROBIT           BELARUS                        0                     0    16032   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        0                     1      167   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        1                     0      675   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        1                     1       18   16892  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0     2057    2375  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       94    2375  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      215    2375  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1        9    2375  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       0                     0    11942   13999  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       0                     1     1170   13999  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       1                     0      780   13999  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       1                     1      107   13999  ever_sstunted    


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
