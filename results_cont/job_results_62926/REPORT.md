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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* impsan
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        feducyrs    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------  -------  ------  -----------------
Birth       COHORTS          GUATEMALA                      High           155     804  haz              
Birth       COHORTS          GUATEMALA                      Low            355     804  haz              
Birth       COHORTS          GUATEMALA                      Medium         294     804  haz              
Birth       COHORTS          INDIA                          High           527    1354  haz              
Birth       COHORTS          INDIA                          Low            439    1354  haz              
Birth       COHORTS          INDIA                          Medium         388    1354  haz              
Birth       COHORTS          PHILIPPINES                    High          1027    2873  haz              
Birth       COHORTS          PHILIPPINES                    Low            827    2873  haz              
Birth       COHORTS          PHILIPPINES                    Medium        1019    2873  haz              
Birth       GMS-Nepal        NEPAL                          High           172     694  haz              
Birth       GMS-Nepal        NEPAL                          Low            296     694  haz              
Birth       GMS-Nepal        NEPAL                          Medium         226     694  haz              
Birth       JiVitA-3         BANGLADESH                     High          4726   21624  haz              
Birth       JiVitA-3         BANGLADESH                     Low           9468   21624  haz              
Birth       JiVitA-3         BANGLADESH                     Medium        7430   21624  haz              
Birth       JiVitA-4         BANGLADESH                     High           582    2740  haz              
Birth       JiVitA-4         BANGLADESH                     Low           1102    2740  haz              
Birth       JiVitA-4         BANGLADESH                     Medium        1056    2740  haz              
Birth       MAL-ED           BANGLADESH                     High            47     129  haz              
Birth       MAL-ED           BANGLADESH                     Low             36     129  haz              
Birth       MAL-ED           BANGLADESH                     Medium          46     129  haz              
Birth       MAL-ED           INDIA                          High             7      24  haz              
Birth       MAL-ED           INDIA                          Low             14      24  haz              
Birth       MAL-ED           INDIA                          Medium           3      24  haz              
Birth       MAL-ED           NEPAL                          High             3      10  haz              
Birth       MAL-ED           NEPAL                          Low              4      10  haz              
Birth       MAL-ED           NEPAL                          Medium           3      10  haz              
Birth       MAL-ED           PERU                           High            86     194  haz              
Birth       MAL-ED           PERU                           Low             58     194  haz              
Birth       MAL-ED           PERU                           Medium          50     194  haz              
Birth       MAL-ED           SOUTH AFRICA                   High            10      33  haz              
Birth       MAL-ED           SOUTH AFRICA                   Low             14      33  haz              
Birth       MAL-ED           SOUTH AFRICA                   Medium           9      33  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High            66     103  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             27     103  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          10     103  haz              
Birth       NIH-Crypto       BANGLADESH                     High           284     732  haz              
Birth       NIH-Crypto       BANGLADESH                     Low            235     732  haz              
Birth       NIH-Crypto       BANGLADESH                     Medium         213     732  haz              
Birth       PROBIT           BELARUS                        High          2059   13424  haz              
Birth       PROBIT           BELARUS                        Low           5320   13424  haz              
Birth       PROBIT           BELARUS                        Medium        6045   13424  haz              
Birth       PROVIDE          BANGLADESH                     High           163     539  haz              
Birth       PROVIDE          BANGLADESH                     Low            187     539  haz              
Birth       PROVIDE          BANGLADESH                     Medium         189     539  haz              
Birth       SAS-CompFeed     INDIA                          High           299    1249  haz              
Birth       SAS-CompFeed     INDIA                          Low            543    1249  haz              
Birth       SAS-CompFeed     INDIA                          Medium         407    1249  haz              
Birth       ZVITAMBO         ZIMBABWE                       High           982   13501  haz              
Birth       ZVITAMBO         ZIMBABWE                       Low           2281   13501  haz              
Birth       ZVITAMBO         ZIMBABWE                       Medium       10238   13501  haz              
6 months    COHORTS          GUATEMALA                      High           165     904  haz              
6 months    COHORTS          GUATEMALA                      Low            406     904  haz              
6 months    COHORTS          GUATEMALA                      Medium         333     904  haz              
6 months    COHORTS          INDIA                          High           544    1385  haz              
6 months    COHORTS          INDIA                          Low            450    1385  haz              
6 months    COHORTS          INDIA                          Medium         391    1385  haz              
6 months    COHORTS          PHILIPPINES                    High           891    2564  haz              
6 months    COHORTS          PHILIPPINES                    Low            746    2564  haz              
6 months    COHORTS          PHILIPPINES                    Medium         927    2564  haz              
6 months    GMS-Nepal        NEPAL                          High           137     563  haz              
6 months    GMS-Nepal        NEPAL                          Low            243     563  haz              
6 months    GMS-Nepal        NEPAL                          Medium         183     563  haz              
6 months    JiVitA-3         BANGLADESH                     High          4279   16132  haz              
6 months    JiVitA-3         BANGLADESH                     Low           6304   16132  haz              
6 months    JiVitA-3         BANGLADESH                     Medium        5549   16132  haz              
6 months    JiVitA-4         BANGLADESH                     High          1099    4689  haz              
6 months    JiVitA-4         BANGLADESH                     Low           1725    4689  haz              
6 months    JiVitA-4         BANGLADESH                     Medium        1865    4689  haz              
6 months    LCNI-5           MALAWI                         High           251     812  haz              
6 months    LCNI-5           MALAWI                         Low            290     812  haz              
6 months    LCNI-5           MALAWI                         Medium         271     812  haz              
6 months    MAL-ED           BANGLADESH                     High            50     132  haz              
6 months    MAL-ED           BANGLADESH                     Low             36     132  haz              
6 months    MAL-ED           BANGLADESH                     Medium          46     132  haz              
6 months    MAL-ED           INDIA                          High            43     138  haz              
6 months    MAL-ED           INDIA                          Low             54     138  haz              
6 months    MAL-ED           INDIA                          Medium          41     138  haz              
6 months    MAL-ED           NEPAL                          High            40      95  haz              
6 months    MAL-ED           NEPAL                          Low             27      95  haz              
6 months    MAL-ED           NEPAL                          Medium          28      95  haz              
6 months    MAL-ED           PERU                           High           107     224  haz              
6 months    MAL-ED           PERU                           Low             60     224  haz              
6 months    MAL-ED           PERU                           Medium          57     224  haz              
6 months    MAL-ED           SOUTH AFRICA                   High            33      92  haz              
6 months    MAL-ED           SOUTH AFRICA                   Low             35      92  haz              
6 months    MAL-ED           SOUTH AFRICA                   Medium          24      92  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           127     201  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             55     201  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          19     201  haz              
6 months    NIH-Crypto       BANGLADESH                     High           279     715  haz              
6 months    NIH-Crypto       BANGLADESH                     Low            223     715  haz              
6 months    NIH-Crypto       BANGLADESH                     Medium         213     715  haz              
6 months    PROBIT           BELARUS                        High          2513   15210  haz              
6 months    PROBIT           BELARUS                        Low           5961   15210  haz              
6 months    PROBIT           BELARUS                        Medium        6736   15210  haz              
6 months    PROVIDE          BANGLADESH                     High           209     604  haz              
6 months    PROVIDE          BANGLADESH                     Low            209     604  haz              
6 months    PROVIDE          BANGLADESH                     Medium         186     604  haz              
6 months    SAS-CompFeed     INDIA                          High           348    1333  haz              
6 months    SAS-CompFeed     INDIA                          Low            550    1333  haz              
6 months    SAS-CompFeed     INDIA                          Medium         435    1333  haz              
6 months    SAS-FoodSuppl    INDIA                          High           101     380  haz              
6 months    SAS-FoodSuppl    INDIA                          Low            132     380  haz              
6 months    SAS-FoodSuppl    INDIA                          Medium         147     380  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           371    2018  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low           1083    2018  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         564    2018  haz              
6 months    ZVITAMBO         ZIMBABWE                       High           586    8429  haz              
6 months    ZVITAMBO         ZIMBABWE                       Low           1459    8429  haz              
6 months    ZVITAMBO         ZIMBABWE                       Medium        6384    8429  haz              
24 months   COHORTS          GUATEMALA                      High           177     992  haz              
24 months   COHORTS          GUATEMALA                      Low            462     992  haz              
24 months   COHORTS          GUATEMALA                      Medium         353     992  haz              
24 months   COHORTS          INDIA                          High           539    1380  haz              
24 months   COHORTS          INDIA                          Low            450    1380  haz              
24 months   COHORTS          INDIA                          Medium         391    1380  haz              
24 months   COHORTS          PHILIPPINES                    High           798    2314  haz              
24 months   COHORTS          PHILIPPINES                    Low            692    2314  haz              
24 months   COHORTS          PHILIPPINES                    Medium         824    2314  haz              
24 months   GMS-Nepal        NEPAL                          High           113     487  haz              
24 months   GMS-Nepal        NEPAL                          Low            219     487  haz              
24 months   GMS-Nepal        NEPAL                          Medium         155     487  haz              
24 months   JiVitA-3         BANGLADESH                     High          2070    8293  haz              
24 months   JiVitA-3         BANGLADESH                     Low           3379    8293  haz              
24 months   JiVitA-3         BANGLADESH                     Medium        2844    8293  haz              
24 months   JiVitA-4         BANGLADESH                     High          1096    4619  haz              
24 months   JiVitA-4         BANGLADESH                     Low           1703    4619  haz              
24 months   JiVitA-4         BANGLADESH                     Medium        1820    4619  haz              
24 months   LCNI-5           MALAWI                         High           173     571  haz              
24 months   LCNI-5           MALAWI                         Low            203     571  haz              
24 months   LCNI-5           MALAWI                         Medium         195     571  haz              
24 months   MAL-ED           BANGLADESH                     High            40     117  haz              
24 months   MAL-ED           BANGLADESH                     Low             35     117  haz              
24 months   MAL-ED           BANGLADESH                     Medium          42     117  haz              
24 months   MAL-ED           INDIA                          High            42     132  haz              
24 months   MAL-ED           INDIA                          Low             51     132  haz              
24 months   MAL-ED           INDIA                          Medium          39     132  haz              
24 months   MAL-ED           NEPAL                          High            38      91  haz              
24 months   MAL-ED           NEPAL                          Low             27      91  haz              
24 months   MAL-ED           NEPAL                          Medium          26      91  haz              
24 months   MAL-ED           PERU                           High            77     164  haz              
24 months   MAL-ED           PERU                           Low             44     164  haz              
24 months   MAL-ED           PERU                           Medium          43     164  haz              
24 months   MAL-ED           SOUTH AFRICA                   High            34      91  haz              
24 months   MAL-ED           SOUTH AFRICA                   Low             34      91  haz              
24 months   MAL-ED           SOUTH AFRICA                   Medium          23      91  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           114     177  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             47     177  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          16     177  haz              
24 months   NIH-Crypto       BANGLADESH                     High           211     514  haz              
24 months   NIH-Crypto       BANGLADESH                     Low            144     514  haz              
24 months   NIH-Crypto       BANGLADESH                     Medium         159     514  haz              
24 months   PROBIT           BELARUS                        High           627    3913  haz              
24 months   PROBIT           BELARUS                        Low           1516    3913  haz              
24 months   PROBIT           BELARUS                        Medium        1770    3913  haz              
24 months   PROVIDE          BANGLADESH                     High           202     578  haz              
24 months   PROVIDE          BANGLADESH                     Low            197     578  haz              
24 months   PROVIDE          BANGLADESH                     Medium         179     578  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           5       6  haz              
24 months   ZVITAMBO         ZIMBABWE                       High            96    1594  haz              
24 months   ZVITAMBO         ZIMBABWE                       Low            298    1594  haz              
24 months   ZVITAMBO         ZIMBABWE                       Medium        1200    1594  haz              


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_gam_NULL_NULL_GCV.Cp
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
