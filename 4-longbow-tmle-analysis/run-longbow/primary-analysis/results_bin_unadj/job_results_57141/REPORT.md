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

**Outcome Variable:** ever_co

## Predictor Variables

**Intervention Variable:** parity

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        parity    ever_co   n_cell       n
------------  ---------------  -----------------------------  -------  --------  -------  ------
0-24 months   COHORTS          GUATEMALA                      1               0      191    1341
0-24 months   COHORTS          GUATEMALA                      1               1       17    1341
0-24 months   COHORTS          GUATEMALA                      2               0      164    1341
0-24 months   COHORTS          GUATEMALA                      2               1       23    1341
0-24 months   COHORTS          GUATEMALA                      3+              0      838    1341
0-24 months   COHORTS          GUATEMALA                      3+              1      108    1341
0-24 months   COHORTS          INDIA                          1               0      757    4623
0-24 months   COHORTS          INDIA                          1               1       53    4623
0-24 months   COHORTS          INDIA                          2               0     1093    4623
0-24 months   COHORTS          INDIA                          2               1       91    4623
0-24 months   COHORTS          INDIA                          3+              0     2307    4623
0-24 months   COHORTS          INDIA                          3+              1      322    4623
0-24 months   COHORTS          PHILIPPINES                    1               0      586    3045
0-24 months   COHORTS          PHILIPPINES                    1               1       91    3045
0-24 months   COHORTS          PHILIPPINES                    2               0      572    3045
0-24 months   COHORTS          PHILIPPINES                    2               1      110    3045
0-24 months   COHORTS          PHILIPPINES                    3+              0     1327    3045
0-24 months   COHORTS          PHILIPPINES                    3+              1      359    3045
0-24 months   GMS-Nepal        NEPAL                          1               0      151     686
0-24 months   GMS-Nepal        NEPAL                          1               1       52     686
0-24 months   GMS-Nepal        NEPAL                          2               0      134     686
0-24 months   GMS-Nepal        NEPAL                          2               1       46     686
0-24 months   GMS-Nepal        NEPAL                          3+              0      199     686
0-24 months   GMS-Nepal        NEPAL                          3+              1      104     686
0-24 months   Keneba           GAMBIA                         1               0      211    1989
0-24 months   Keneba           GAMBIA                         1               1       29    1989
0-24 months   Keneba           GAMBIA                         2               0      193    1989
0-24 months   Keneba           GAMBIA                         2               1       21    1989
0-24 months   Keneba           GAMBIA                         3+              0     1256    1989
0-24 months   Keneba           GAMBIA                         3+              1      279    1989
0-24 months   PROVIDE          BANGLADESH                     1               0      232     700
0-24 months   PROVIDE          BANGLADESH                     1               1       39     700
0-24 months   PROVIDE          BANGLADESH                     2               0      217     700
0-24 months   PROVIDE          BANGLADESH                     2               1       27     700
0-24 months   PROVIDE          BANGLADESH                     3+              0      161     700
0-24 months   PROVIDE          BANGLADESH                     3+              1       24     700
0-24 months   SAS-CompFeed     INDIA                          1               0      359    1513
0-24 months   SAS-CompFeed     INDIA                          1               1       89    1513
0-24 months   SAS-CompFeed     INDIA                          2               0      285    1513
0-24 months   SAS-CompFeed     INDIA                          2               1       69    1513
0-24 months   SAS-CompFeed     INDIA                          3+              0      518    1513
0-24 months   SAS-CompFeed     INDIA                          3+              1      193    1513
0-24 months   SAS-FoodSuppl    INDIA                          1               0       17     418
0-24 months   SAS-FoodSuppl    INDIA                          1               1        4     418
0-24 months   SAS-FoodSuppl    INDIA                          2               0       57     418
0-24 months   SAS-FoodSuppl    INDIA                          2               1       20     418
0-24 months   SAS-FoodSuppl    INDIA                          3+              0      189     418
0-24 months   SAS-FoodSuppl    INDIA                          3+              1      131     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      783    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       38    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      732    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1       39    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0      724    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1       41    2357
0-24 months   ZVITAMBO         ZIMBABWE                       1               0     5790   13941
0-24 months   ZVITAMBO         ZIMBABWE                       1               1      216   13941
0-24 months   ZVITAMBO         ZIMBABWE                       2               0     3991   13941
0-24 months   ZVITAMBO         ZIMBABWE                       2               1      186   13941
0-24 months   ZVITAMBO         ZIMBABWE                       3+              0     3569   13941
0-24 months   ZVITAMBO         ZIMBABWE                       3+              1      189   13941
0-6 months    COHORTS          GUATEMALA                      1               0      152    1062
0-6 months    COHORTS          GUATEMALA                      1               1        0    1062
0-6 months    COHORTS          GUATEMALA                      2               0      146    1062
0-6 months    COHORTS          GUATEMALA                      2               1        3    1062
0-6 months    COHORTS          GUATEMALA                      3+              0      744    1062
0-6 months    COHORTS          GUATEMALA                      3+              1       17    1062
0-6 months    COHORTS          INDIA                          1               0      739    4443
0-6 months    COHORTS          INDIA                          1               1       20    4443
0-6 months    COHORTS          INDIA                          2               0     1114    4443
0-6 months    COHORTS          INDIA                          2               1       23    4443
0-6 months    COHORTS          INDIA                          3+              0     2473    4443
0-6 months    COHORTS          INDIA                          3+              1       74    4443
0-6 months    COHORTS          PHILIPPINES                    1               0      658    3044
0-6 months    COHORTS          PHILIPPINES                    1               1       18    3044
0-6 months    COHORTS          PHILIPPINES                    2               0      671    3044
0-6 months    COHORTS          PHILIPPINES                    2               1       11    3044
0-6 months    COHORTS          PHILIPPINES                    3+              0     1643    3044
0-6 months    COHORTS          PHILIPPINES                    3+              1       43    3044
0-6 months    GMS-Nepal        NEPAL                          1               0      189     686
0-6 months    GMS-Nepal        NEPAL                          1               1       14     686
0-6 months    GMS-Nepal        NEPAL                          2               0      173     686
0-6 months    GMS-Nepal        NEPAL                          2               1        7     686
0-6 months    GMS-Nepal        NEPAL                          3+              0      288     686
0-6 months    GMS-Nepal        NEPAL                          3+              1       15     686
0-6 months    Keneba           GAMBIA                         1               0      225    1851
0-6 months    Keneba           GAMBIA                         1               1        9    1851
0-6 months    Keneba           GAMBIA                         2               0      203    1851
0-6 months    Keneba           GAMBIA                         2               1        2    1851
0-6 months    Keneba           GAMBIA                         3+              0     1370    1851
0-6 months    Keneba           GAMBIA                         3+              1       42    1851
0-6 months    PROVIDE          BANGLADESH                     1               0      261     700
0-6 months    PROVIDE          BANGLADESH                     1               1       10     700
0-6 months    PROVIDE          BANGLADESH                     2               0      235     700
0-6 months    PROVIDE          BANGLADESH                     2               1        9     700
0-6 months    PROVIDE          BANGLADESH                     3+              0      174     700
0-6 months    PROVIDE          BANGLADESH                     3+              1       11     700
0-6 months    SAS-CompFeed     INDIA                          1               0      414    1504
0-6 months    SAS-CompFeed     INDIA                          1               1       31    1504
0-6 months    SAS-CompFeed     INDIA                          2               0      328    1504
0-6 months    SAS-CompFeed     INDIA                          2               1       24    1504
0-6 months    SAS-CompFeed     INDIA                          3+              0      656    1504
0-6 months    SAS-CompFeed     INDIA                          3+              1       51    1504
0-6 months    SAS-FoodSuppl    INDIA                          1               0       18     416
0-6 months    SAS-FoodSuppl    INDIA                          1               1        2     416
0-6 months    SAS-FoodSuppl    INDIA                          2               0       71     416
0-6 months    SAS-FoodSuppl    INDIA                          2               1        6     416
0-6 months    SAS-FoodSuppl    INDIA                          3+              0      295     416
0-6 months    SAS-FoodSuppl    INDIA                          3+              1       24     416
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      816    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        5    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      766    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        5    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0      756    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1        9    2357
0-6 months    ZVITAMBO         ZIMBABWE                       1               0     5881   13845
0-6 months    ZVITAMBO         ZIMBABWE                       1               1       79   13845
0-6 months    ZVITAMBO         ZIMBABWE                       2               0     4116   13845
0-6 months    ZVITAMBO         ZIMBABWE                       2               1       36   13845
0-6 months    ZVITAMBO         ZIMBABWE                       3+              0     3681   13845
0-6 months    ZVITAMBO         ZIMBABWE                       3+              1       52   13845
6-24 months   COHORTS          GUATEMALA                      1               0      165    1211
6-24 months   COHORTS          GUATEMALA                      1               1       17    1211
6-24 months   COHORTS          GUATEMALA                      2               0      151    1211
6-24 months   COHORTS          GUATEMALA                      2               1       20    1211
6-24 months   COHORTS          GUATEMALA                      3+              0      759    1211
6-24 months   COHORTS          GUATEMALA                      3+              1       99    1211
6-24 months   COHORTS          INDIA                          1               0      714    4338
6-24 months   COHORTS          INDIA                          1               1       39    4338
6-24 months   COHORTS          INDIA                          2               0     1024    4338
6-24 months   COHORTS          INDIA                          2               1       81    4338
6-24 months   COHORTS          INDIA                          3+              0     2181    4338
6-24 months   COHORTS          INDIA                          3+              1      299    4338
6-24 months   COHORTS          PHILIPPINES                    1               0      525    2808
6-24 months   COHORTS          PHILIPPINES                    1               1       83    2808
6-24 months   COHORTS          PHILIPPINES                    2               0      519    2808
6-24 months   COHORTS          PHILIPPINES                    2               1      106    2808
6-24 months   COHORTS          PHILIPPINES                    3+              0     1228    2808
6-24 months   COHORTS          PHILIPPINES                    3+              1      347    2808
6-24 months   GMS-Nepal        NEPAL                          1               0      121     590
6-24 months   GMS-Nepal        NEPAL                          1               1       46     590
6-24 months   GMS-Nepal        NEPAL                          2               0      107     590
6-24 months   GMS-Nepal        NEPAL                          2               1       45     590
6-24 months   GMS-Nepal        NEPAL                          3+              0      170     590
6-24 months   GMS-Nepal        NEPAL                          3+              1      101     590
6-24 months   Keneba           GAMBIA                         1               0      203    1923
6-24 months   Keneba           GAMBIA                         1               1       24    1923
6-24 months   Keneba           GAMBIA                         2               0      179    1923
6-24 months   Keneba           GAMBIA                         2               1       19    1923
6-24 months   Keneba           GAMBIA                         3+              0     1231    1923
6-24 months   Keneba           GAMBIA                         3+              1      267    1923
6-24 months   PROVIDE          BANGLADESH                     1               0      194     614
6-24 months   PROVIDE          BANGLADESH                     1               1       33     614
6-24 months   PROVIDE          BANGLADESH                     2               0      201     614
6-24 months   PROVIDE          BANGLADESH                     2               1       23     614
6-24 months   PROVIDE          BANGLADESH                     3+              0      144     614
6-24 months   PROVIDE          BANGLADESH                     3+              1       19     614
6-24 months   SAS-CompFeed     INDIA                          1               0      340    1389
6-24 months   SAS-CompFeed     INDIA                          1               1       77    1389
6-24 months   SAS-CompFeed     INDIA                          2               0      257    1389
6-24 months   SAS-CompFeed     INDIA                          2               1       64    1389
6-24 months   SAS-CompFeed     INDIA                          3+              0      478    1389
6-24 months   SAS-CompFeed     INDIA                          3+              1      173    1389
6-24 months   SAS-FoodSuppl    INDIA                          1               0        3     401
6-24 months   SAS-FoodSuppl    INDIA                          1               1        4     401
6-24 months   SAS-FoodSuppl    INDIA                          2               0       61     401
6-24 months   SAS-FoodSuppl    INDIA                          2               1       16     401
6-24 months   SAS-FoodSuppl    INDIA                          3+              0      192     401
6-24 months   SAS-FoodSuppl    INDIA                          3+              1      125     401
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      637    1986
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       36    1986
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      613    1986
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1       38    1986
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0      624    1986
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1       38    1986
6-24 months   ZVITAMBO         ZIMBABWE                       1               0     4327   10812
6-24 months   ZVITAMBO         ZIMBABWE                       1               1      143   10812
6-24 months   ZVITAMBO         ZIMBABWE                       2               0     3131   10812
6-24 months   ZVITAMBO         ZIMBABWE                       2               1      155   10812
6-24 months   ZVITAMBO         ZIMBABWE                       3+              0     2910   10812
6-24 months   ZVITAMBO         ZIMBABWE                       3+              1      146   10812


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/18c15dfb-e9ec-424b-bd0c-34585cf194ac/61de1505-6e96-49ba-b693-06a8ed98419b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/18c15dfb-e9ec-424b-bd0c-34585cf194ac/61de1505-6e96-49ba-b693-06a8ed98419b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/18c15dfb-e9ec-424b-bd0c-34585cf194ac/61de1505-6e96-49ba-b693-06a8ed98419b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/18c15dfb-e9ec-424b-bd0c-34585cf194ac/61de1505-6e96-49ba-b693-06a8ed98419b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                0.0817308   0.0444868   0.1189748
0-24 months   COHORTS          GUATEMALA                      2                    NA                0.1229947   0.0759041   0.1700852
0-24 months   COHORTS          GUATEMALA                      3+                   NA                0.1141649   0.0938924   0.1344374
0-24 months   COHORTS          INDIA                          1                    NA                0.0654321   0.0484006   0.0824636
0-24 months   COHORTS          INDIA                          2                    NA                0.0768581   0.0616842   0.0920320
0-24 months   COHORTS          INDIA                          3+                   NA                0.1224800   0.1099469   0.1350132
0-24 months   COHORTS          PHILIPPINES                    1                    NA                0.1344165   0.1087182   0.1601149
0-24 months   COHORTS          PHILIPPINES                    2                    NA                0.1612903   0.1336822   0.1888985
0-24 months   COHORTS          PHILIPPINES                    3+                   NA                0.2129300   0.1933859   0.2324741
0-24 months   GMS-Nepal        NEPAL                          1                    NA                0.2561576   0.1960664   0.3162488
0-24 months   GMS-Nepal        NEPAL                          2                    NA                0.2555556   0.1917898   0.3193213
0-24 months   GMS-Nepal        NEPAL                          3+                   NA                0.3432343   0.2897355   0.3967331
0-24 months   Keneba           GAMBIA                         1                    NA                0.1208333   0.0795874   0.1620792
0-24 months   Keneba           GAMBIA                         2                    NA                0.0981308   0.0582628   0.1379989
0-24 months   Keneba           GAMBIA                         3+                   NA                0.1817590   0.1624619   0.2010560
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1439114   0.1020917   0.1857311
0-24 months   PROVIDE          BANGLADESH                     2                    NA                0.1106557   0.0712658   0.1500457
0-24 months   PROVIDE          BANGLADESH                     3+                   NA                0.1297297   0.0812769   0.1781826
0-24 months   SAS-CompFeed     INDIA                          1                    NA                0.1986607   0.1666984   0.2306230
0-24 months   SAS-CompFeed     INDIA                          2                    NA                0.1949153   0.1473796   0.2424509
0-24 months   SAS-CompFeed     INDIA                          3+                   NA                0.2714487   0.2193669   0.3235305
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0462850   0.0319103   0.0606597
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0505837   0.0351117   0.0660557
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0535948   0.0376320   0.0695576
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0359640   0.0312548   0.0406733
0-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.0445296   0.0382740   0.0507851
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.0502927   0.0433050   0.0572804
0-6 months    COHORTS          INDIA                          1                    NA                0.0263505   0.0149540   0.0377470
0-6 months    COHORTS          INDIA                          2                    NA                0.0202287   0.0120447   0.0284126
0-6 months    COHORTS          INDIA                          3+                   NA                0.0290538   0.0225303   0.0355773
0-6 months    COHORTS          PHILIPPINES                    1                    NA                0.0266272   0.0144892   0.0387653
0-6 months    COHORTS          PHILIPPINES                    2                    NA                0.0161290   0.0066732   0.0255849
0-6 months    COHORTS          PHILIPPINES                    3+                   NA                0.0255042   0.0179778   0.0330305
0-6 months    GMS-Nepal        NEPAL                          1                    NA                0.0689655   0.0340824   0.1038487
0-6 months    GMS-Nepal        NEPAL                          2                    NA                0.0388889   0.0106252   0.0671525
0-6 months    GMS-Nepal        NEPAL                          3+                   NA                0.0495050   0.0250626   0.0739473
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.0369004   0.0144396   0.0593611
0-6 months    PROVIDE          BANGLADESH                     2                    NA                0.0368852   0.0132190   0.0605515
0-6 months    PROVIDE          BANGLADESH                     3+                   NA                0.0594595   0.0253581   0.0935608
0-6 months    SAS-CompFeed     INDIA                          1                    NA                0.0696629   0.0390803   0.1002456
0-6 months    SAS-CompFeed     INDIA                          2                    NA                0.0681818   0.0431193   0.0932443
0-6 months    SAS-CompFeed     INDIA                          3+                   NA                0.0721358   0.0454418   0.0988297
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0060901   0.0007671   0.0114131
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0064851   0.0008180   0.0121521
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0117647   0.0041223   0.0194071
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.0132550   0.0103515   0.0161586
0-6 months    ZVITAMBO         ZIMBABWE                       2                    NA                0.0086705   0.0058504   0.0114906
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   NA                0.0139298   0.0101700   0.0176896
6-24 months   COHORTS          GUATEMALA                      1                    NA                0.0934066   0.0511118   0.1357014
6-24 months   COHORTS          GUATEMALA                      2                    NA                0.1169591   0.0687713   0.1651468
6-24 months   COHORTS          GUATEMALA                      3+                   NA                0.1153846   0.0939983   0.1367709
6-24 months   COHORTS          INDIA                          1                    NA                0.0517928   0.0359626   0.0676231
6-24 months   COHORTS          INDIA                          2                    NA                0.0733032   0.0579341   0.0886722
6-24 months   COHORTS          INDIA                          3+                   NA                0.1205645   0.1077476   0.1333814
6-24 months   COHORTS          PHILIPPINES                    1                    NA                0.1365132   0.1092178   0.1638085
6-24 months   COHORTS          PHILIPPINES                    2                    NA                0.1696000   0.1401733   0.1990267
6-24 months   COHORTS          PHILIPPINES                    3+                   NA                0.2203175   0.1998451   0.2407898
6-24 months   GMS-Nepal        NEPAL                          1                    NA                0.2754491   0.2076360   0.3432622
6-24 months   GMS-Nepal        NEPAL                          2                    NA                0.2960526   0.2234171   0.3686882
6-24 months   GMS-Nepal        NEPAL                          3+                   NA                0.3726937   0.3150771   0.4303103
6-24 months   Keneba           GAMBIA                         1                    NA                0.1057269   0.0657162   0.1457375
6-24 months   Keneba           GAMBIA                         2                    NA                0.0959596   0.0549234   0.1369957
6-24 months   Keneba           GAMBIA                         3+                   NA                0.1782377   0.1588521   0.1976232
6-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1453744   0.0994841   0.1912648
6-24 months   PROVIDE          BANGLADESH                     2                    NA                0.1026786   0.0628961   0.1424611
6-24 months   PROVIDE          BANGLADESH                     3+                   NA                0.1165644   0.0672608   0.1658680
6-24 months   SAS-CompFeed     INDIA                          1                    NA                0.1846523   0.1558028   0.2135018
6-24 months   SAS-CompFeed     INDIA                          2                    NA                0.1993769   0.1641326   0.2346213
6-24 months   SAS-CompFeed     INDIA                          3+                   NA                0.2657450   0.2163993   0.3150907
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0534918   0.0364876   0.0704960
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0583717   0.0403578   0.0763856
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0574018   0.0396781   0.0751255
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0319911   0.0268320   0.0371501
6-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.0471698   0.0399209   0.0544187
6-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.0477749   0.0402124   0.0553373


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1103654   0.0935883   0.1271425
0-24 months   COHORTS          INDIA                          NA                   NA                0.1008003   0.0921209   0.1094798
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1839080   0.1701456   0.1976705
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.2944606   0.2603274   0.3285938
0-24 months   Keneba           GAMBIA                         NA                   NA                0.1654098   0.1490771   0.1817424
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2319894   0.1917264   0.2722524
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0500636   0.0412578   0.0588694
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0423929   0.0390482   0.0457376
0-6 months    COHORTS          INDIA                          NA                   NA                0.0263336   0.0216247   0.0310424
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0236531   0.0182537   0.0290525
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.0524781   0.0357793   0.0691770
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.0704787   0.0478990   0.0930584
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0080611   0.0044503   0.0116719
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120621   0.0102437   0.0138805
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1123039   0.0945135   0.1300942
6-24 months   COHORTS          INDIA                          NA                   NA                0.0965883   0.0877969   0.1053797
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.3254237   0.2875855   0.3632619
6-24 months   Keneba           GAMBIA                         NA                   NA                0.1612064   0.1447669   0.1776460
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0563948   0.0462467   0.0665428
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0410655   0.0373248   0.0448061


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      2                    1                 1.5048757   0.8298824   2.7288819
0-24 months   COHORTS          GUATEMALA                      3+                   1                 1.3968412   0.8565408   2.2779597
0-24 months   COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          2                    1                 1.1746239   0.8472598   1.6284750
0-24 months   COHORTS          INDIA                          3+                   1                 1.8718646   1.4151709   2.4759391
0-24 months   COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    2                    1                 1.1999291   0.9283450   1.5509643
0-24 months   COHORTS          PHILIPPINES                    3+                   1                 1.5841057   1.2813878   1.9583383
0-24 months   GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          2                    1                 0.9976496   0.7083408   1.4051211
0-24 months   GMS-Nepal        NEPAL                          3+                   1                 1.3399340   1.0110331   1.7758302
0-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         2                    1                 0.8121173   0.4777120   1.3806113
0-24 months   Keneba           GAMBIA                         3+                   1                 1.5042121   1.0521064   2.1505942
0-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     2                    1                 0.7689155   0.4856371   1.2174338
0-24 months   PROVIDE          BANGLADESH                     3+                   1                 0.9014553   0.5615987   1.4469792
0-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          2                    1                 0.9811464   0.8070433   1.1928087
0-24 months   SAS-CompFeed     INDIA                          3+                   1                 1.3663933   1.2089727   1.5443116
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0928732   0.7067416   1.6899697
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1579291   0.7530130   1.7805799
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 1.2381693   1.0218247   1.5003193
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 1.3984167   1.1553698   1.6925916
0-6 months    COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          2                    1                 0.7676781   0.4245986   1.3879690
0-6 months    COHORTS          INDIA                          3+                   1                 1.1025913   0.6772977   1.7949382
0-6 months    COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    2                    1                 0.6057348   0.2882445   1.2729283
0-6 months    COHORTS          PHILIPPINES                    3+                   1                 0.9578226   0.5564783   1.6486252
0-6 months    GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          2                    1                 0.5638889   0.2326168   1.3669291
0-6 months    GMS-Nepal        NEPAL                          3+                   1                 0.7178218   0.3540321   1.4554277
0-6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     2                    1                 0.9995902   0.4127903   2.4205521
0-6 months    PROVIDE          BANGLADESH                     3+                   1                 1.6113514   0.6982030   3.7187656
0-6 months    SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          2                    1                 0.9787390   0.5937712   1.6132982
0-6 months    SAS-CompFeed     INDIA                          3+                   1                 1.0354976   0.6806029   1.5754490
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0648508   0.3094018   3.6648369
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.9317647   0.6501403   5.7398606
0-6 months    ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       2                    1                 0.6541304   0.4419362   0.9682088
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   1                 1.0509076   0.7423312   1.4877546
6-24 months   COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          GUATEMALA                      2                    1                 1.2521500   0.6788671   2.3095531
6-24 months   COHORTS          GUATEMALA                      3+                   1                 1.2352941   0.7573271   2.0149175
6-24 months   COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          INDIA                          2                    1                 1.4153150   0.9769759   2.0503235
6-24 months   COHORTS          INDIA                          3+                   1                 2.3278226   1.6842632   3.2172869
6-24 months   COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    2                    1                 1.2423711   0.9534096   1.6189117
6-24 months   COHORTS          PHILIPPINES                    3+                   1                 1.6138918   1.2945517   2.0120067
6-24 months   GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          2                    1                 1.0747998   0.7592412   1.5215119
6-24 months   GMS-Nepal        NEPAL                          3+                   1                 1.3530403   1.0117169   1.8095161
6-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         2                    1                 0.9076178   0.5127467   1.6065831
6-24 months   Keneba           GAMBIA                         3+                   1                 1.6858311   1.1371274   2.4993036
6-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     2                    1                 0.7063041   0.4284969   1.1642220
6-24 months   PROVIDE          BANGLADESH                     3+                   1                 0.8018219   0.4730044   1.3592227
6-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          2                    1                 1.0797427   0.9186419   1.2690955
6-24 months   SAS-CompFeed     INDIA                          3+                   1                 1.4391645   1.2362405   1.6753977
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0912272   0.7006538   1.6995222
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0730950   0.6889353   1.6714675
6-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 1.4744689   1.1800247   1.8423839
6-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 1.4933823   1.1913323   1.8720139


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                 0.0286346   -0.0065546   0.0638239
0-24 months   COHORTS          INDIA                          1                    NA                 0.0353682    0.0191276   0.0516089
0-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.0494915    0.0259086   0.0730744
0-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0383030   -0.0130676   0.0896736
0-24 months   Keneba           GAMBIA                         1                    NA                 0.0445764    0.0051122   0.0840407
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0153400   -0.0471282   0.0164481
0-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0333287    0.0137346   0.0529228
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0037786   -0.0080630   0.0156202
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0064289    0.0026532   0.0102046
0-6 months    COHORTS          INDIA                          1                    NA                -0.0000169   -0.0103937   0.0103599
0-6 months    COHORTS          PHILIPPINES                    1                    NA                -0.0029741   -0.0135120   0.0075638
0-6 months    GMS-Nepal        NEPAL                          1                    NA                -0.0164874   -0.0443355   0.0113608
0-6 months    PROVIDE          BANGLADESH                     1                    NA                 0.0059568   -0.0124634   0.0243770
0-6 months    SAS-CompFeed     INDIA                          1                    NA                 0.0008158   -0.0201979   0.0218295
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0019710   -0.0026802   0.0066221
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0011929   -0.0033092   0.0009234
6-24 months   COHORTS          GUATEMALA                      1                    NA                 0.0188973   -0.0206964   0.0584909
6-24 months   COHORTS          INDIA                          1                    NA                 0.0447955    0.0292749   0.0603160
6-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.0543700    0.0291954   0.0795447
6-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0499746   -0.0085665   0.1085157
6-24 months   Keneba           GAMBIA                         1                    NA                 0.0554796    0.0168380   0.0941211
6-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0232246   -0.0581637   0.0117145
6-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0414096    0.0193523   0.0634670
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0029029   -0.0111028   0.0169087
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0090744    0.0047616   0.0133873


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                 0.2594530   -0.1359703   0.5172322
0-24 months   COHORTS          INDIA                          1                    NA                 0.3508743    0.1711203   0.4916461
0-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.2691100    0.1302095   0.3858290
0-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.1300785   -0.0628832   0.2880089
0-24 months   Keneba           GAMBIA                         1                    NA                 0.2694909   -0.0112031   0.4722687
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.1193112   -0.3950884   0.1019511
0-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.1436648    0.0689590   0.2123763
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0754764   -0.1936321   0.2839134
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.1516504    0.0585725   0.2355258
0-6 months    COHORTS          INDIA                          1                    NA                -0.0006419   -0.4835574   0.3250789
0-6 months    COHORTS          PHILIPPINES                    1                    NA                -0.1257396   -0.6709957   0.2415961
0-6 months    GMS-Nepal        NEPAL                          1                    NA                -0.3141762   -0.9558762   0.1169895
0-6 months    PROVIDE          BANGLADESH                     1                    NA                 0.1389914   -0.4142101   0.4757951
0-6 months    SAS-CompFeed     INDIA                          1                    NA                 0.0115752   -0.3363813   0.2689334
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2445029   -0.5993898   0.6431289
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0988978   -0.2884090   0.0627383
6-24 months   COHORTS          GUATEMALA                      1                    NA                 0.1682692   -0.2695733   0.4551113
6-24 months   COHORTS          INDIA                          1                    NA                 0.4637773    0.2831145   0.5989112
6-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.2848341    0.1414317   0.4042846
6-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.1535679   -0.0466686   0.3154974
6-24 months   Keneba           GAMBIA                         1                    NA                 0.3441523    0.0575609   0.5435926
6-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.1901322   -0.5110407   0.0626232
6-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.1831783    0.0941375   0.2634669
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0514753   -0.2322238   0.2698573
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.2209747    0.1106176   0.3176383
