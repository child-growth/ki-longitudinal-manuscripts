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

agecat      studyid          country                        single    stunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -------  --------  -------  ------  -----------------
Birth       COHORTS          GUATEMALA                      0               0      679     767  stunted          
Birth       COHORTS          GUATEMALA                      0               1       40     767  stunted          
Birth       COHORTS          GUATEMALA                      1               0       43     767  stunted          
Birth       COHORTS          GUATEMALA                      1               1        5     767  stunted          
Birth       COHORTS          INDIA                          0               0     4206    4778  stunted          
Birth       COHORTS          INDIA                          0               1      565    4778  stunted          
Birth       COHORTS          INDIA                          1               0        7    4778  stunted          
Birth       COHORTS          INDIA                          1               1        0    4778  stunted          
Birth       COHORTS          PHILIPPINES                    0               0     2760    3010  stunted          
Birth       COHORTS          PHILIPPINES                    0               1      176    3010  stunted          
Birth       COHORTS          PHILIPPINES                    1               0       68    3010  stunted          
Birth       COHORTS          PHILIPPINES                    1               1        6    3010  stunted          
Birth       JiVitA-4         BANGLADESH                     0               0     1959    2819  stunted          
Birth       JiVitA-4         BANGLADESH                     0               1      855    2819  stunted          
Birth       JiVitA-4         BANGLADESH                     1               0        4    2819  stunted          
Birth       JiVitA-4         BANGLADESH                     1               1        1    2819  stunted          
Birth       MAL-ED           BANGLADESH                     0               0      187     231  stunted          
Birth       MAL-ED           BANGLADESH                     0               1       44     231  stunted          
Birth       MAL-ED           BANGLADESH                     1               0        0     231  stunted          
Birth       MAL-ED           BANGLADESH                     1               1        0     231  stunted          
Birth       MAL-ED           BRAZIL                         0               0       51      65  stunted          
Birth       MAL-ED           BRAZIL                         0               1        6      65  stunted          
Birth       MAL-ED           BRAZIL                         1               0        5      65  stunted          
Birth       MAL-ED           BRAZIL                         1               1        3      65  stunted          
Birth       MAL-ED           INDIA                          0               0       37      47  stunted          
Birth       MAL-ED           INDIA                          0               1       10      47  stunted          
Birth       MAL-ED           INDIA                          1               0        0      47  stunted          
Birth       MAL-ED           INDIA                          1               1        0      47  stunted          
Birth       MAL-ED           NEPAL                          0               0       25      27  stunted          
Birth       MAL-ED           NEPAL                          0               1        2      27  stunted          
Birth       MAL-ED           NEPAL                          1               0        0      27  stunted          
Birth       MAL-ED           NEPAL                          1               1        0      27  stunted          
Birth       MAL-ED           PERU                           0               0      187     233  stunted          
Birth       MAL-ED           PERU                           0               1       22     233  stunted          
Birth       MAL-ED           PERU                           1               0       20     233  stunted          
Birth       MAL-ED           PERU                           1               1        4     233  stunted          
Birth       MAL-ED           SOUTH AFRICA                   0               0       60     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   0               1        3     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1               0       53     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1               1        7     123  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0       99     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1       23     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        3     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        0     125  stunted          
Birth       PROBIT           BELARUS                        0               0    13319   13893  stunted          
Birth       PROBIT           BELARUS                        0               1       32   13893  stunted          
Birth       PROBIT           BELARUS                        1               0      540   13893  stunted          
Birth       PROBIT           BELARUS                        1               1        2   13893  stunted          
Birth       ZVITAMBO         ZIMBABWE                       0               0    11620   13817  stunted          
Birth       ZVITAMBO         ZIMBABWE                       0               1     1322   13817  stunted          
Birth       ZVITAMBO         ZIMBABWE                       1               0      768   13817  stunted          
Birth       ZVITAMBO         ZIMBABWE                       1               1      107   13817  stunted          
6 months    COHORTS          GUATEMALA                      0               0      499     893  stunted          
6 months    COHORTS          GUATEMALA                      0               1      327     893  stunted          
6 months    COHORTS          GUATEMALA                      1               0       30     893  stunted          
6 months    COHORTS          GUATEMALA                      1               1       37     893  stunted          
6 months    COHORTS          INDIA                          0               0     3991    4971  stunted          
6 months    COHORTS          INDIA                          0               1      971    4971  stunted          
6 months    COHORTS          INDIA                          1               0        7    4971  stunted          
6 months    COHORTS          INDIA                          1               1        2    4971  stunted          
6 months    COHORTS          PHILIPPINES                    0               0     2055    2676  stunted          
6 months    COHORTS          PHILIPPINES                    0               1      553    2676  stunted          
6 months    COHORTS          PHILIPPINES                    1               0       54    2676  stunted          
6 months    COHORTS          PHILIPPINES                    1               1       14    2676  stunted          
6 months    Guatemala BSC    GUATEMALA                      0               0      173     277  stunted          
6 months    Guatemala BSC    GUATEMALA                      0               1       75     277  stunted          
6 months    Guatemala BSC    GUATEMALA                      1               0       18     277  stunted          
6 months    Guatemala BSC    GUATEMALA                      1               1       11     277  stunted          
6 months    JiVitA-4         BANGLADESH                     0               0     3598    4822  stunted          
6 months    JiVitA-4         BANGLADESH                     0               1     1216    4822  stunted          
6 months    JiVitA-4         BANGLADESH                     1               0        7    4822  stunted          
6 months    JiVitA-4         BANGLADESH                     1               1        1    4822  stunted          
6 months    MAL-ED           BANGLADESH                     0               0      197     241  stunted          
6 months    MAL-ED           BANGLADESH                     0               1       44     241  stunted          
6 months    MAL-ED           BANGLADESH                     1               0        0     241  stunted          
6 months    MAL-ED           BANGLADESH                     1               1        0     241  stunted          
6 months    MAL-ED           BRAZIL                         0               0      175     209  stunted          
6 months    MAL-ED           BRAZIL                         0               1        4     209  stunted          
6 months    MAL-ED           BRAZIL                         1               0       28     209  stunted          
6 months    MAL-ED           BRAZIL                         1               1        2     209  stunted          
6 months    MAL-ED           INDIA                          0               0      191     234  stunted          
6 months    MAL-ED           INDIA                          0               1       43     234  stunted          
6 months    MAL-ED           INDIA                          1               0        0     234  stunted          
6 months    MAL-ED           INDIA                          1               1        0     234  stunted          
6 months    MAL-ED           NEPAL                          0               0      224     236  stunted          
6 months    MAL-ED           NEPAL                          0               1       12     236  stunted          
6 months    MAL-ED           NEPAL                          1               0        0     236  stunted          
6 months    MAL-ED           NEPAL                          1               1        0     236  stunted          
6 months    MAL-ED           PERU                           0               0      192     273  stunted          
6 months    MAL-ED           PERU                           0               1       48     273  stunted          
6 months    MAL-ED           PERU                           1               0       21     273  stunted          
6 months    MAL-ED           PERU                           1               1       12     273  stunted          
6 months    MAL-ED           SOUTH AFRICA                   0               0      121     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   0               1       19     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1               0       83     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1               1       31     254  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0      182     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1       57     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        6     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        2     247  stunted          
6 months    PROBIT           BELARUS                        0               0    14538   15760  stunted          
6 months    PROBIT           BELARUS                        0               1      579   15760  stunted          
6 months    PROBIT           BELARUS                        1               0      602   15760  stunted          
6 months    PROBIT           BELARUS                        1               1       41   15760  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1654    2013  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      181    2013  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      164    2013  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       14    2013  stunted          
6 months    ZVITAMBO         ZIMBABWE                       0               0     6820    8638  stunted          
6 months    ZVITAMBO         ZIMBABWE                       0               1     1305    8638  stunted          
6 months    ZVITAMBO         ZIMBABWE                       1               0      411    8638  stunted          
6 months    ZVITAMBO         ZIMBABWE                       1               1      102    8638  stunted          
24 months   COHORTS          GUATEMALA                      0               0      177    1010  stunted          
24 months   COHORTS          GUATEMALA                      0               1      746    1010  stunted          
24 months   COHORTS          GUATEMALA                      1               0       10    1010  stunted          
24 months   COHORTS          GUATEMALA                      1               1       77    1010  stunted          
24 months   COHORTS          INDIA                          0               0     1622    3753  stunted          
24 months   COHORTS          INDIA                          0               1     2122    3753  stunted          
24 months   COHORTS          INDIA                          1               0        3    3753  stunted          
24 months   COHORTS          INDIA                          1               1        6    3753  stunted          
24 months   COHORTS          PHILIPPINES                    0               0      880    2416  stunted          
24 months   COHORTS          PHILIPPINES                    0               1     1477    2416  stunted          
24 months   COHORTS          PHILIPPINES                    1               0       24    2416  stunted          
24 months   COHORTS          PHILIPPINES                    1               1       35    2416  stunted          
24 months   JiVitA-4         BANGLADESH                     0               0     2836    4744  stunted          
24 months   JiVitA-4         BANGLADESH                     0               1     1902    4744  stunted          
24 months   JiVitA-4         BANGLADESH                     1               0        5    4744  stunted          
24 months   JiVitA-4         BANGLADESH                     1               1        1    4744  stunted          
24 months   MAL-ED           BANGLADESH                     0               0      111     212  stunted          
24 months   MAL-ED           BANGLADESH                     0               1      101     212  stunted          
24 months   MAL-ED           BANGLADESH                     1               0        0     212  stunted          
24 months   MAL-ED           BANGLADESH                     1               1        0     212  stunted          
24 months   MAL-ED           BRAZIL                         0               0      144     169  stunted          
24 months   MAL-ED           BRAZIL                         0               1        4     169  stunted          
24 months   MAL-ED           BRAZIL                         1               0       18     169  stunted          
24 months   MAL-ED           BRAZIL                         1               1        3     169  stunted          
24 months   MAL-ED           INDIA                          0               0      129     225  stunted          
24 months   MAL-ED           INDIA                          0               1       96     225  stunted          
24 months   MAL-ED           INDIA                          1               0        0     225  stunted          
24 months   MAL-ED           INDIA                          1               1        0     225  stunted          
24 months   MAL-ED           NEPAL                          0               0      178     228  stunted          
24 months   MAL-ED           NEPAL                          0               1       50     228  stunted          
24 months   MAL-ED           NEPAL                          1               0        0     228  stunted          
24 months   MAL-ED           NEPAL                          1               1        0     228  stunted          
24 months   MAL-ED           PERU                           0               0      111     201  stunted          
24 months   MAL-ED           PERU                           0               1       65     201  stunted          
24 months   MAL-ED           PERU                           1               0       16     201  stunted          
24 months   MAL-ED           PERU                           1               1        9     201  stunted          
24 months   MAL-ED           SOUTH AFRICA                   0               0       85     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   0               1       46     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1               0       69     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1               1       38     238  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0       59     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1      149     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        0     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        6     214  stunted          
24 months   PROBIT           BELARUS                        0               0     3628    4035  stunted          
24 months   PROBIT           BELARUS                        0               1      262    4035  stunted          
24 months   PROBIT           BELARUS                        1               0      132    4035  stunted          
24 months   PROBIT           BELARUS                        1               1       13    4035  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        5       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6  stunted          
24 months   ZVITAMBO         ZIMBABWE                       0               0     1014    1637  stunted          
24 months   ZVITAMBO         ZIMBABWE                       0               1      519    1637  stunted          
24 months   ZVITAMBO         ZIMBABWE                       1               0       56    1637  stunted          
24 months   ZVITAMBO         ZIMBABWE                       1               1       48    1637  stunted          


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
