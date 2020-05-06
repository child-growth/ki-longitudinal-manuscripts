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

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_nrooms
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        parity    sstunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -------  ---------  -------  ------  -----------------
Birth       COHORTS          GUATEMALA                      1                0      109     852  sstunted         
Birth       COHORTS          GUATEMALA                      1                1        3     852  sstunted         
Birth       COHORTS          GUATEMALA                      2                0      134     852  sstunted         
Birth       COHORTS          GUATEMALA                      2                1        3     852  sstunted         
Birth       COHORTS          GUATEMALA                      3+               0      598     852  sstunted         
Birth       COHORTS          GUATEMALA                      3+               1        5     852  sstunted         
Birth       COHORTS          INDIA                          1                0      674    4122  sstunted         
Birth       COHORTS          INDIA                          1                1       22    4122  sstunted         
Birth       COHORTS          INDIA                          2                0     1016    4122  sstunted         
Birth       COHORTS          INDIA                          2                1       21    4122  sstunted         
Birth       COHORTS          INDIA                          3+               0     2319    4122  sstunted         
Birth       COHORTS          INDIA                          3+               1       70    4122  sstunted         
Birth       COHORTS          PHILIPPINES                    1                0      661    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    1                1       14    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    2                0      677    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    2                1       10    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    3+               0     1666    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    3+               1       22    3050  sstunted         
Birth       GMS-Nepal        NEPAL                          1                0      196     696  sstunted         
Birth       GMS-Nepal        NEPAL                          1                1       15     696  sstunted         
Birth       GMS-Nepal        NEPAL                          2                0      175     696  sstunted         
Birth       GMS-Nepal        NEPAL                          2                1        5     696  sstunted         
Birth       GMS-Nepal        NEPAL                          3+               0      294     696  sstunted         
Birth       GMS-Nepal        NEPAL                          3+               1       11     696  sstunted         
Birth       JiVitA-3         BANGLADESH                     1                0     6332   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     1                1     1124   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     2                0     6940   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     2                1      675   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     3+               0     6735   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     3+               1      649   22455  sstunted         
Birth       Keneba           GAMBIA                         1                0      153    1407  sstunted         
Birth       Keneba           GAMBIA                         1                1        3    1407  sstunted         
Birth       Keneba           GAMBIA                         2                0      144    1407  sstunted         
Birth       Keneba           GAMBIA                         2                1        2    1407  sstunted         
Birth       Keneba           GAMBIA                         3+               0     1084    1407  sstunted         
Birth       Keneba           GAMBIA                         3+               1       21    1407  sstunted         
Birth       PROVIDE          BANGLADESH                     1                0      204     539  sstunted         
Birth       PROVIDE          BANGLADESH                     1                1        2     539  sstunted         
Birth       PROVIDE          BANGLADESH                     2                0      183     539  sstunted         
Birth       PROVIDE          BANGLADESH                     2                1        0     539  sstunted         
Birth       PROVIDE          BANGLADESH                     3+               0      148     539  sstunted         
Birth       PROVIDE          BANGLADESH                     3+               1        2     539  sstunted         
Birth       SAS-CompFeed     INDIA                          1                0      334    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          1                1       27    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          2                0      269    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          2                1       20    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          3+               0      558    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          3+               1       44    1252  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       1                0     5794   13874  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       1                1      195   13874  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       2                0     4040   13874  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       2                1      104   13874  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       3+               0     3598   13874  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       3+               1      143   13874  sstunted         
6 months    COHORTS          GUATEMALA                      1                0      116     961  sstunted         
6 months    COHORTS          GUATEMALA                      1                1       16     961  sstunted         
6 months    COHORTS          GUATEMALA                      2                0      122     961  sstunted         
6 months    COHORTS          GUATEMALA                      2                1       17     961  sstunted         
6 months    COHORTS          GUATEMALA                      3+               0      599     961  sstunted         
6 months    COHORTS          GUATEMALA                      3+               1       91     961  sstunted         
6 months    COHORTS          INDIA                          1                0      713    4291  sstunted         
6 months    COHORTS          INDIA                          1                1       27    4291  sstunted         
6 months    COHORTS          INDIA                          2                0     1056    4291  sstunted         
6 months    COHORTS          INDIA                          2                1       40    4291  sstunted         
6 months    COHORTS          INDIA                          3+               0     2314    4291  sstunted         
6 months    COHORTS          INDIA                          3+               1      141    4291  sstunted         
6 months    COHORTS          PHILIPPINES                    1                0      553    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    1                1       21    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    2                0      584    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    2                1       22    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    3+               0     1439    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    3+               1       89    2708  sstunted         
6 months    GMS-Nepal        NEPAL                          1                0      147     564  sstunted         
6 months    GMS-Nepal        NEPAL                          1                1        6     564  sstunted         
6 months    GMS-Nepal        NEPAL                          2                0      143     564  sstunted         
6 months    GMS-Nepal        NEPAL                          2                1        6     564  sstunted         
6 months    GMS-Nepal        NEPAL                          3+               0      253     564  sstunted         
6 months    GMS-Nepal        NEPAL                          3+               1        9     564  sstunted         
6 months    JiVitA-3         BANGLADESH                     1                0     5910   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     1                1      486   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     2                0     5435   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     2                1      265   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     3+               0     4446   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     3+               1      269   16811  sstunted         
6 months    Keneba           GAMBIA                         1                0      190    1623  sstunted         
6 months    Keneba           GAMBIA                         1                1        4    1623  sstunted         
6 months    Keneba           GAMBIA                         2                0      159    1623  sstunted         
6 months    Keneba           GAMBIA                         2                1        5    1623  sstunted         
6 months    Keneba           GAMBIA                         3+               0     1218    1623  sstunted         
6 months    Keneba           GAMBIA                         3+               1       47    1623  sstunted         
6 months    PROVIDE          BANGLADESH                     1                0      213     604  sstunted         
6 months    PROVIDE          BANGLADESH                     1                1        5     604  sstunted         
6 months    PROVIDE          BANGLADESH                     2                0      217     604  sstunted         
6 months    PROVIDE          BANGLADESH                     2                1        5     604  sstunted         
6 months    PROVIDE          BANGLADESH                     3+               0      160     604  sstunted         
6 months    PROVIDE          BANGLADESH                     3+               1        4     604  sstunted         
6 months    SAS-CompFeed     INDIA                          1                0      360    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          1                1       32    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          2                0      279    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          2                1       25    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          3+               0      569    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          3+               1       71    1336  sstunted         
6 months    SAS-FoodSuppl    INDIA                          1                0        4     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          1                1        3     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          2                0       64     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          2                1        8     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          3+               0      258     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          3+               1       43     380  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      674    1995  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        6    1995  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      649    1995  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        8    1995  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               0      654    1995  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               1        4    1995  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       1                0     3321    8668  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       1                1      145    8668  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       2                0     2545    8668  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       2                1       93    8668  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       3+               0     2451    8668  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       3+               1      113    8668  sstunted         
24 months   COHORTS          GUATEMALA                      1                0       83    1064  sstunted         
24 months   COHORTS          GUATEMALA                      1                1       83    1064  sstunted         
24 months   COHORTS          GUATEMALA                      2                0       80    1064  sstunted         
24 months   COHORTS          GUATEMALA                      2                1       71    1064  sstunted         
24 months   COHORTS          GUATEMALA                      3+               0      380    1064  sstunted         
24 months   COHORTS          GUATEMALA                      3+               1      367    1064  sstunted         
24 months   COHORTS          INDIA                          1                0      457    3380  sstunted         
24 months   COHORTS          INDIA                          1                1      107    3380  sstunted         
24 months   COHORTS          INDIA                          2                0      679    3380  sstunted         
24 months   COHORTS          INDIA                          2                1      169    3380  sstunted         
24 months   COHORTS          INDIA                          3+               0     1355    3380  sstunted         
24 months   COHORTS          INDIA                          3+               1      613    3380  sstunted         
24 months   COHORTS          PHILIPPINES                    1                0      428    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    1                1       96    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    2                0      400    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    2                1      144    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    3+               0      910    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    3+               1      467    2445  sstunted         
24 months   GMS-Nepal        NEPAL                          1                0      116     488  sstunted         
24 months   GMS-Nepal        NEPAL                          1                1       14     488  sstunted         
24 months   GMS-Nepal        NEPAL                          2                0      116     488  sstunted         
24 months   GMS-Nepal        NEPAL                          2                1       14     488  sstunted         
24 months   GMS-Nepal        NEPAL                          3+               0      203     488  sstunted         
24 months   GMS-Nepal        NEPAL                          3+               1       25     488  sstunted         
24 months   JiVitA-3         BANGLADESH                     1                0     2692    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     1                1      481    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     2                0     2513    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     2                1      410    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     3+               0     2080    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     3+               1      456    8632  sstunted         
24 months   Keneba           GAMBIA                         1                0      129    1376  sstunted         
24 months   Keneba           GAMBIA                         1                1        8    1376  sstunted         
24 months   Keneba           GAMBIA                         2                0      134    1376  sstunted         
24 months   Keneba           GAMBIA                         2                1        5    1376  sstunted         
24 months   Keneba           GAMBIA                         3+               0      996    1376  sstunted         
24 months   Keneba           GAMBIA                         3+               1      104    1376  sstunted         
24 months   PROVIDE          BANGLADESH                     1                0      193     578  sstunted         
24 months   PROVIDE          BANGLADESH                     1                1       18     578  sstunted         
24 months   PROVIDE          BANGLADESH                     2                0      193     578  sstunted         
24 months   PROVIDE          BANGLADESH                     2                1       20     578  sstunted         
24 months   PROVIDE          BANGLADESH                     3+               0      140     578  sstunted         
24 months   PROVIDE          BANGLADESH                     3+               1       14     578  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               0        3       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               1        1       6  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       1                0      570    1639  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       1                1       70    1639  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       2                0      458    1639  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       2                1       49    1639  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       3+               0      433    1639  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       3+               1       59    1639  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
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
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
