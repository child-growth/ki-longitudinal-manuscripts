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

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
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

agecat        studyid          country                        mbmi             ever_sstunted   n_cell       n  outcome_variable 
------------  ---------------  -----------------------------  --------------  --------------  -------  ------  -----------------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight                0     2480    3216  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight                1      282    3216  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                  0      398    3216  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                  1       56    3216  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     Normal weight                0    13500   27105  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     Normal weight                1     3222   27105  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     Underweight                  0     8606   27105  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     Underweight                  1     1777   27105  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         Normal weight                0      550     837  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         Normal weight                1      142     837  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         Underweight                  0      110     837  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         Underweight                  1       35     837  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     Normal weight                0      176     254  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     Normal weight                1       46     254  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     Underweight                  0       22     254  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     Underweight                  1       10     254  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         Normal weight                0      192     221  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         Normal weight                1       19     221  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         Underweight                  0        8     221  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         Underweight                  1        2     221  ever_sstunted    
0-24 months   MAL-ED           INDIA                          Normal weight                0      148     242  ever_sstunted    
0-24 months   MAL-ED           INDIA                          Normal weight                1       45     242  ever_sstunted    
0-24 months   MAL-ED           INDIA                          Underweight                  0       36     242  ever_sstunted    
0-24 months   MAL-ED           INDIA                          Underweight                  1       13     242  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          Normal weight                0      217     238  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          Normal weight                1       21     238  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          Underweight                  0        0     238  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          Underweight                  1        0     238  ever_sstunted    
0-24 months   MAL-ED           PERU                           Normal weight                0      225     290  ever_sstunted    
0-24 months   MAL-ED           PERU                           Normal weight                1       60     290  ever_sstunted    
0-24 months   MAL-ED           PERU                           Underweight                  0        2     290  ever_sstunted    
0-24 months   MAL-ED           PERU                           Underweight                  1        3     290  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   Normal weight                0      195     270  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   Normal weight                1       67     270  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   Underweight                  0        5     270  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   Underweight                  1        3     270  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight                0      114     256  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight                1      128     256  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                  0        6     256  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                  1        8     256  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     Normal weight                0      374     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     Normal weight                1      149     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     Underweight                  0       59     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     Underweight                  1       47     629  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight                0      603     755  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight                1       84     755  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     Underweight                  0       53     755  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     Underweight                  1       15     755  ever_sstunted    
0-24 months   PROBIT           BELARUS                        Normal weight                0    12850   13728  ever_sstunted    
0-24 months   PROBIT           BELARUS                        Normal weight                1      355   13728  ever_sstunted    
0-24 months   PROBIT           BELARUS                        Underweight                  0      506   13728  ever_sstunted    
0-24 months   PROBIT           BELARUS                        Underweight                  1       17   13728  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     Normal weight                0      477     669  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     Normal weight                1       65     669  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     Underweight                  0       98     669  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     Underweight                  1       29     669  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          Normal weight                0      712    1407  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          Normal weight                1      316    1407  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          Underweight                  0      231    1407  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          Underweight                  1      148    1407  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                0     2078    2345  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                1      229    2345  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  0       34    2345  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  1        4    2345  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight                0     7629    9819  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight                1     1673    9819  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight                  0      394    9819  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight                  1      123    9819  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     Normal weight                0    14120   27039  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     Normal weight                1     2567   27039  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     Underweight                  0     8937   27039  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     Underweight                  1     1415   27039  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         Normal weight                0      206     271  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         Normal weight                1       18     271  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         Underweight                  0       45     271  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         Underweight                  1        2     271  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     Normal weight                0      206     254  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     Normal weight                1       16     254  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     Underweight                  0       29     254  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     Underweight                  1        3     254  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         Normal weight                0      196     221  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         Normal weight                1       15     221  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         Underweight                  0        9     221  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         Underweight                  1        1     221  ever_sstunted    
0-6 months    MAL-ED           INDIA                          Normal weight                0      179     242  ever_sstunted    
0-6 months    MAL-ED           INDIA                          Normal weight                1       14     242  ever_sstunted    
0-6 months    MAL-ED           INDIA                          Underweight                  0       43     242  ever_sstunted    
0-6 months    MAL-ED           INDIA                          Underweight                  1        6     242  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          Normal weight                0      228     238  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          Normal weight                1       10     238  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          Underweight                  0        0     238  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          Underweight                  1        0     238  ever_sstunted    
0-6 months    MAL-ED           PERU                           Normal weight                0      250     290  ever_sstunted    
0-6 months    MAL-ED           PERU                           Normal weight                1       35     290  ever_sstunted    
0-6 months    MAL-ED           PERU                           Underweight                  0        3     290  ever_sstunted    
0-6 months    MAL-ED           PERU                           Underweight                  1        2     290  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   Normal weight                0      237     270  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   Normal weight                1       25     270  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   Underweight                  0        6     270  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   Underweight                  1        2     270  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight                0      208     256  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight                1       34     256  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                  0       11     256  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                  1        3     256  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     Normal weight                0      478     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     Normal weight                1       45     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     Underweight                  0       92     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     Underweight                  1       14     629  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight                0      649     755  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight                1       38     755  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     Underweight                  0       59     755  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     Underweight                  1        9     755  ever_sstunted    
0-6 months    PROBIT           BELARUS                        Normal weight                0    13077   13728  ever_sstunted    
0-6 months    PROBIT           BELARUS                        Normal weight                1      128   13728  ever_sstunted    
0-6 months    PROBIT           BELARUS                        Underweight                  0      518   13728  ever_sstunted    
0-6 months    PROBIT           BELARUS                        Underweight                  1        5   13728  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     Normal weight                0      515     669  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     Normal weight                1       27     669  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     Underweight                  0      123     669  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     Underweight                  1        4     669  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          Normal weight                0      884    1404  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          Normal weight                1      141    1404  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          Underweight                  0      304    1404  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          Underweight                  1       75    1404  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                0     2209    2345  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                1       98    2345  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  0       35    2345  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  1        3    2345  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight                0     8377    9808  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight                1      914    9808  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight                  0      443    9808  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight                  1       74    9808  ever_sstunted    


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
