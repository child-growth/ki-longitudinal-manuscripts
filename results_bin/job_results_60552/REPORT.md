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
0-24 months   JiVitA-3         BANGLADESH                     1               0     9121   26923
0-24 months   JiVitA-3         BANGLADESH                     1               1      985   26923
0-24 months   JiVitA-3         BANGLADESH                     2               0     8216   26923
0-24 months   JiVitA-3         BANGLADESH                     2               1      711   26923
0-24 months   JiVitA-3         BANGLADESH                     3+              0     7194   26923
0-24 months   JiVitA-3         BANGLADESH                     3+              1      696   26923
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
0-6 months    JiVitA-3         BANGLADESH                     1               0     9542   26816
0-6 months    JiVitA-3         BANGLADESH                     1               1      497   26816
0-6 months    JiVitA-3         BANGLADESH                     2               0     8619   26816
0-6 months    JiVitA-3         BANGLADESH                     2               1      284   26816
0-6 months    JiVitA-3         BANGLADESH                     3+              0     7591   26816
0-6 months    JiVitA-3         BANGLADESH                     3+              1      283   26816
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
6-24 months   JiVitA-3         BANGLADESH                     1               0     6050   17280
6-24 months   JiVitA-3         BANGLADESH                     1               1      564   17280
6-24 months   JiVitA-3         BANGLADESH                     2               0     5373   17280
6-24 months   JiVitA-3         BANGLADESH                     2               1      468   17280
6-24 months   JiVitA-3         BANGLADESH                     3+              0     4355   17280
6-24 months   JiVitA-3         BANGLADESH                     3+              1      470   17280
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
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/2339a54e-270b-4cf6-aca4-7897f67eab63/48209813-1b35-428f-841f-94dbbf083d17/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2339a54e-270b-4cf6-aca4-7897f67eab63/48209813-1b35-428f-841f-94dbbf083d17/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2339a54e-270b-4cf6-aca4-7897f67eab63/48209813-1b35-428f-841f-94dbbf083d17/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2339a54e-270b-4cf6-aca4-7897f67eab63/48209813-1b35-428f-841f-94dbbf083d17/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                0.0811011   0.0432275   0.1189746
0-24 months   COHORTS          GUATEMALA                      2                    NA                0.1265369   0.0795162   0.1735576
0-24 months   COHORTS          GUATEMALA                      3+                   NA                0.1132857   0.0930985   0.1334730
0-24 months   COHORTS          INDIA                          1                    NA                0.0786115   0.0503334   0.1068896
0-24 months   COHORTS          INDIA                          2                    NA                0.0827604   0.0610421   0.1044788
0-24 months   COHORTS          INDIA                          3+                   NA                0.1115757   0.0979558   0.1251956
0-24 months   COHORTS          PHILIPPINES                    1                    NA                0.0966966   0.0615211   0.1318721
0-24 months   COHORTS          PHILIPPINES                    2                    NA                0.1617938   0.1186347   0.2049529
0-24 months   COHORTS          PHILIPPINES                    3+                   NA                0.2187905   0.1908525   0.2467285
0-24 months   GMS-Nepal        NEPAL                          1                    NA                0.2687603   0.1611999   0.3763207
0-24 months   GMS-Nepal        NEPAL                          2                    NA                0.2332885   0.1326755   0.3339014
0-24 months   GMS-Nepal        NEPAL                          3+                   NA                0.3089735   0.2482925   0.3696544
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.0983430   0.0879570   0.1087290
0-24 months   JiVitA-3         BANGLADESH                     2                    NA                0.0830925   0.0735960   0.0925890
0-24 months   JiVitA-3         BANGLADESH                     3+                   NA                0.0736705   0.0644883   0.0828528
0-24 months   Keneba           GAMBIA                         1                    NA                0.1354941   0.0874585   0.1835297
0-24 months   Keneba           GAMBIA                         2                    NA                0.0719677   0.0293740   0.1145615
0-24 months   Keneba           GAMBIA                         3+                   NA                0.1711611   0.1457427   0.1965795
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1567968   0.1130777   0.2005159
0-24 months   PROVIDE          BANGLADESH                     2                    NA                0.1090681   0.0698125   0.1483237
0-24 months   PROVIDE          BANGLADESH                     3+                   NA                0.1180410   0.0719718   0.1641102
0-24 months   SAS-CompFeed     INDIA                          1                    NA                0.2365909   0.1733777   0.2998042
0-24 months   SAS-CompFeed     INDIA                          2                    NA                0.2202750   0.1535240   0.2870259
0-24 months   SAS-CompFeed     INDIA                          3+                   NA                0.2425453   0.2137468   0.2713437
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0569726   0.0314413   0.0825039
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0481248   0.0290086   0.0672409
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0581484   0.0373512   0.0789457
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0393562   0.0323636   0.0463487
0-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.0455989   0.0351384   0.0560594
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.0586065   0.0467760   0.0704369
0-6 months    COHORTS          INDIA                          1                    NA                0.0306139   0.0171260   0.0441018
0-6 months    COHORTS          INDIA                          2                    NA                0.0221160   0.0128319   0.0314002
0-6 months    COHORTS          INDIA                          3+                   NA                0.0276166   0.0212061   0.0340272
0-6 months    COHORTS          PHILIPPINES                    1                    NA                0.0161072   0.0067077   0.0255066
0-6 months    COHORTS          PHILIPPINES                    2                    NA                0.0130554   0.0049488   0.0211621
0-6 months    COHORTS          PHILIPPINES                    3+                   NA                0.0246268   0.0149572   0.0342964
0-6 months    GMS-Nepal        NEPAL                          1                    NA                0.0689655   0.0340824   0.1038487
0-6 months    GMS-Nepal        NEPAL                          2                    NA                0.0388889   0.0106252   0.0671525
0-6 months    GMS-Nepal        NEPAL                          3+                   NA                0.0495050   0.0250626   0.0739473
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.0536956   0.0458398   0.0615513
0-6 months    JiVitA-3         BANGLADESH                     2                    NA                0.0318957   0.0259540   0.0378374
0-6 months    JiVitA-3         BANGLADESH                     3+                   NA                0.0230816   0.0193236   0.0268396
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.0369004   0.0144396   0.0593611
0-6 months    PROVIDE          BANGLADESH                     2                    NA                0.0368852   0.0132190   0.0605515
0-6 months    PROVIDE          BANGLADESH                     3+                   NA                0.0594595   0.0253581   0.0935608
0-6 months    SAS-CompFeed     INDIA                          1                    NA                0.1092207   0.0542228   0.1642186
0-6 months    SAS-CompFeed     INDIA                          2                    NA                0.0907155   0.0403939   0.1410371
0-6 months    SAS-CompFeed     INDIA                          3+                   NA                0.0561099   0.0311198   0.0811000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0060901   0.0007671   0.0114131
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0064851   0.0008180   0.0121521
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0117647   0.0041223   0.0194071
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.0130841   0.0093535   0.0168147
0-6 months    ZVITAMBO         ZIMBABWE                       2                    NA                0.0106099   0.0041252   0.0170947
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   NA                0.0111435   0.0066673   0.0156197
6-24 months   COHORTS          GUATEMALA                      1                    NA                0.0938376   0.0511093   0.1365659
6-24 months   COHORTS          GUATEMALA                      2                    NA                0.1215450   0.0729270   0.1701629
6-24 months   COHORTS          GUATEMALA                      3+                   NA                0.1145771   0.0932655   0.1358887
6-24 months   COHORTS          INDIA                          1                    NA                0.0558297   0.0317060   0.0799535
6-24 months   COHORTS          INDIA                          2                    NA                0.0822407   0.0577137   0.1067677
6-24 months   COHORTS          INDIA                          3+                   NA                0.1123349   0.0973411   0.1273287
6-24 months   COHORTS          PHILIPPINES                    1                    NA                0.0937648   0.0573232   0.1302064
6-24 months   COHORTS          PHILIPPINES                    2                    NA                0.1694660   0.1219067   0.2170253
6-24 months   COHORTS          PHILIPPINES                    3+                   NA                0.2352205   0.2080590   0.2623820
6-24 months   GMS-Nepal        NEPAL                          1                    NA                0.3001931   0.1847813   0.4156048
6-24 months   GMS-Nepal        NEPAL                          2                    NA                0.2741846   0.1419940   0.4063753
6-24 months   GMS-Nepal        NEPAL                          3+                   NA                0.3301568   0.2664174   0.3938962
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.0802688   0.0701231   0.0904144
6-24 months   JiVitA-3         BANGLADESH                     2                    NA                0.0861833   0.0745015   0.0978650
6-24 months   JiVitA-3         BANGLADESH                     3+                   NA                0.0811052   0.0698298   0.0923806
6-24 months   Keneba           GAMBIA                         1                    NA                0.1168204   0.0712064   0.1624345
6-24 months   Keneba           GAMBIA                         2                    NA                0.0820966   0.0349853   0.1292078
6-24 months   Keneba           GAMBIA                         3+                   NA                0.1590785   0.1399395   0.1782175
6-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1565096   0.1081962   0.2048230
6-24 months   PROVIDE          BANGLADESH                     2                    NA                0.0996691   0.0600434   0.1392949
6-24 months   PROVIDE          BANGLADESH                     3+                   NA                0.1092333   0.0608469   0.1576197
6-24 months   SAS-CompFeed     INDIA                          1                    NA                0.2128715   0.1462820   0.2794611
6-24 months   SAS-CompFeed     INDIA                          2                    NA                0.2425205   0.1891590   0.2958819
6-24 months   SAS-CompFeed     INDIA                          3+                   NA                0.2374421   0.2029746   0.2719095
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0585435   0.0341575   0.0829296
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0529248   0.0321746   0.0736749
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0670888   0.0418084   0.0923691
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0422599   0.0310600   0.0534598
6-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.0466095   0.0356017   0.0576173
6-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.0633951   0.0484681   0.0783221


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1103654   0.0935883   0.1271425
0-24 months   COHORTS          INDIA                          NA                   NA                0.1008003   0.0921209   0.1094798
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1839080   0.1701456   0.1976705
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.2944606   0.2603274   0.3285938
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0888460   0.0849398   0.0927521
0-24 months   Keneba           GAMBIA                         NA                   NA                0.1654098   0.1490771   0.1817424
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2319894   0.1917264   0.2722524
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0500636   0.0412578   0.0588694
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0423929   0.0390482   0.0457376
0-6 months    COHORTS          INDIA                          NA                   NA                0.0263336   0.0216247   0.0310424
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0236531   0.0182537   0.0290525
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.0524781   0.0357793   0.0691770
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0396778   0.0371765   0.0421791
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.0704787   0.0478990   0.0930584
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0080611   0.0044503   0.0116719
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120621   0.0102437   0.0138805
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1123039   0.0945135   0.1300942
6-24 months   COHORTS          INDIA                          NA                   NA                0.0965883   0.0877969   0.1053797
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.3254237   0.2875855   0.3632619
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0869213   0.0822621   0.0915805
6-24 months   Keneba           GAMBIA                         NA                   NA                0.1612064   0.1447669   0.1776460
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0563948   0.0462467   0.0665428
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0410655   0.0373248   0.0448061


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      2                    1                 1.5602374   0.8600530   2.8304546
0-24 months   COHORTS          GUATEMALA                      3+                   1                 1.3968464   0.8478623   2.3012933
0-24 months   COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          2                    1                 1.0527772   0.6750592   1.6418410
0-24 months   COHORTS          INDIA                          3+                   1                 1.4193300   0.9716127   2.0733547
0-24 months   COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    2                    1                 1.6732101   1.0666608   2.6246696
0-24 months   COHORTS          PHILIPPINES                    3+                   1                 2.2626487   1.5393067   3.3258994
0-24 months   GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          2                    1                 0.8680170   0.4819294   1.5634104
0-24 months   GMS-Nepal        NEPAL                          3+                   1                 1.1496248   0.7358973   1.7959532
0-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     2                    1                 0.8449250   0.7267021   0.9823809
0-24 months   JiVitA-3         BANGLADESH                     3+                   1                 0.7491182   0.6376605   0.8800578
0-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         2                    1                 0.5311501   0.2663803   1.0590890
0-24 months   Keneba           GAMBIA                         3+                   1                 1.2632364   0.8610854   1.8532031
0-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     2                    1                 0.6956015   0.4420006   1.0947077
0-24 months   PROVIDE          BANGLADESH                     3+                   1                 0.7528278   0.4669080   1.2138358
0-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          2                    1                 0.9310372   0.7152936   1.2118523
0-24 months   SAS-CompFeed     INDIA                          3+                   1                 1.0251672   0.8295032   1.2669847
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8447004   0.4642019   1.5370872
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0206385   0.5752447   1.8108866
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 1.1586221   0.8671191   1.5481208
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 1.4891306   1.1383376   1.9480250
0-6 months    COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          2                    1                 0.7224183   0.3931805   1.3273501
0-6 months    COHORTS          INDIA                          3+                   1                 0.9020942   0.5484348   1.4838117
0-6 months    COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    2                    1                 0.8105348   0.3458446   1.8996008
0-6 months    COHORTS          PHILIPPINES                    3+                   1                 1.5289322   0.7564955   3.0900827
0-6 months    GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          2                    1                 0.5638889   0.2326168   1.3669291
0-6 months    GMS-Nepal        NEPAL                          3+                   1                 0.7178218   0.3540321   1.4554277
0-6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     2                    1                 0.5940093   0.4722042   0.7472340
0-6 months    JiVitA-3         BANGLADESH                     3+                   1                 0.4298605   0.3464208   0.5333977
0-6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     2                    1                 0.9995902   0.4127903   2.4205521
0-6 months    PROVIDE          BANGLADESH                     3+                   1                 1.6113514   0.6982030   3.7187656
0-6 months    SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          2                    1                 0.8305708   0.5695461   1.2112239
0-6 months    SAS-CompFeed     INDIA                          3+                   1                 0.5137298   0.2747892   0.9604392
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0648508   0.3094018   3.6648369
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.9317647   0.6501403   5.7398606
0-6 months    ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       2                    1                 0.8109018   0.4131093   1.5917380
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   1                 0.8516800   0.5204168   1.3938037
6-24 months   COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          GUATEMALA                      2                    1                 1.2952693   0.7069466   2.3731955
6-24 months   COHORTS          GUATEMALA                      3+                   1                 1.2210150   0.7468477   1.9962270
6-24 months   COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          INDIA                          2                    1                 1.4730621   0.8721924   2.4878823
6-24 months   COHORTS          INDIA                          3+                   1                 2.0120977   1.2811200   3.1601545
6-24 months   COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    2                    1                 1.8073520   1.1200858   2.9163133
6-24 months   COHORTS          PHILIPPINES                    3+                   1                 2.5086224   1.6732933   3.7609582
6-24 months   GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          2                    1                 0.9133610   0.4928002   1.6928327
6-24 months   GMS-Nepal        NEPAL                          3+                   1                 1.0998149   0.7148460   1.6921025
6-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     2                    1                 1.0736839   0.8936561   1.2899785
6-24 months   JiVitA-3         BANGLADESH                     3+                   1                 1.0104204   0.8385453   1.2175245
6-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         2                    1                 0.7027586   0.3510897   1.4066762
6-24 months   Keneba           GAMBIA                         3+                   1                 1.3617349   0.9052158   2.0484859
6-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     2                    1                 0.6368243   0.3853653   1.0523658
6-24 months   PROVIDE          BANGLADESH                     3+                   1                 0.6979333   0.4068438   1.1972924
6-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          2                    1                 1.1392808   0.8728765   1.4869924
6-24 months   SAS-CompFeed     INDIA                          3+                   1                 1.1154243   0.8524803   1.4594721
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9040240   0.5101476   1.6020057
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1459634   0.6532566   2.0102852
6-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 1.1029249   0.7735534   1.5725394
6-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 1.5001240   1.0524601   2.1382018


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                 0.0292643   -0.0064312    0.0649599
0-24 months   COHORTS          INDIA                          1                    NA                 0.0221888   -0.0054547    0.0498324
0-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.0872114    0.0524970    0.1219259
0-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0257004   -0.0769445    0.1283452
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0094970   -0.0189493   -0.0000447
0-24 months   Keneba           GAMBIA                         1                    NA                 0.0299156   -0.0182900    0.0781213
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0282254   -0.0617988    0.0053480
0-24 months   SAS-CompFeed     INDIA                          1                    NA                -0.0046015   -0.0363694    0.0271664
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0069090   -0.0305876    0.0167697
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0030368   -0.0033317    0.0094052
0-6 months    COHORTS          INDIA                          1                    NA                -0.0042803   -0.0166616    0.0081009
0-6 months    COHORTS          PHILIPPINES                    1                    NA                 0.0075459   -0.0013239    0.0164157
0-6 months    GMS-Nepal        NEPAL                          1                    NA                -0.0164874   -0.0443355    0.0113608
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0140178   -0.0213121   -0.0067234
0-6 months    PROVIDE          BANGLADESH                     1                    NA                 0.0059568   -0.0124634    0.0243770
0-6 months    SAS-CompFeed     INDIA                          1                    NA                -0.0387419   -0.0852113    0.0077275
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0019710   -0.0026802    0.0066221
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0010220   -0.0042405    0.0021965
6-24 months   COHORTS          GUATEMALA                      1                    NA                 0.0184663   -0.0214946    0.0584272
6-24 months   COHORTS          INDIA                          1                    NA                 0.0407586    0.0167677    0.0647494
6-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.0971184    0.0610130    0.1332238
6-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0252307   -0.0845510    0.1350123
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0066525   -0.0026045    0.0159096
6-24 months   Keneba           GAMBIA                         1                    NA                 0.0443860   -0.0017993    0.0905713
6-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0343598   -0.0716800    0.0029604
6-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0131904   -0.0298698    0.0562506
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0021488   -0.0243421    0.0200445
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0011944   -0.0118002    0.0094114


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                 0.2651587   -0.1387100    0.5257864
0-24 months   COHORTS          INDIA                          1                    NA                 0.2201266   -0.1072105    0.4506893
0-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.4742121    0.2507210    0.6310414
0-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0872795   -0.3371580    0.3769930
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.1068932   -0.2184494   -0.0055507
0-24 months   Keneba           GAMBIA                         1                    NA                 0.1808578   -0.1653392    0.4242072
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.2195308   -0.5096707    0.0148478
0-24 months   SAS-CompFeed     INDIA                          1                    NA                -0.0198350   -0.1643269    0.1067256
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1380038   -0.7241614    0.2488797
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0716340   -0.0911081    0.2101027
0-6 months    COHORTS          INDIA                          1                    NA                -0.1625432   -0.7409483    0.2236951
0-6 months    COHORTS          PHILIPPINES                    1                    NA                 0.3190239   -0.1676142    0.6028410
0-6 months    GMS-Nepal        NEPAL                          1                    NA                -0.3141762   -0.9558762    0.1169895
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.3532900   -0.5501743   -0.1814115
0-6 months    PROVIDE          BANGLADESH                     1                    NA                 0.1389914   -0.4142101    0.4757951
0-6 months    SAS-CompFeed     INDIA                          1                    NA                -0.5496970   -1.3618079   -0.0168315
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2445029   -0.5993898    0.6431289
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0847265   -0.3872783    0.1518417
6-24 months   COHORTS          GUATEMALA                      1                    NA                 0.1644314   -0.2781668    0.4537686
6-24 months   COHORTS          INDIA                          1                    NA                 0.4219823    0.1170697    0.6215959
6-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.5087844    0.2823869    0.6637565
6-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0775318   -0.3296810    0.3600362
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0765351   -0.0361983    0.1770036
6-24 months   Keneba           GAMBIA                         1                    NA                 0.2753364   -0.0692081    0.5088540
6-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.2812922   -0.6231657   -0.0114246
6-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0583485   -0.1579165    0.2342215
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0381025   -0.5167272    0.2894854
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0290856   -0.3227116    0.1993589
