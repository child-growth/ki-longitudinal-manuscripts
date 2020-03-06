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

**Outcome Variable:** ever_swasted

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

agecat        studyid          country                        parity    ever_swasted   n_cell       n
------------  ---------------  -----------------------------  -------  -------------  -------  ------
0-24 months   COHORTS          GUATEMALA                      1                    0      191    1341
0-24 months   COHORTS          GUATEMALA                      1                    1       17    1341
0-24 months   COHORTS          GUATEMALA                      2                    0      172    1341
0-24 months   COHORTS          GUATEMALA                      2                    1       15    1341
0-24 months   COHORTS          GUATEMALA                      3+                   0      881    1341
0-24 months   COHORTS          GUATEMALA                      3+                   1       65    1341
0-24 months   COHORTS          INDIA                          1                    0      737    4624
0-24 months   COHORTS          INDIA                          1                    1       73    4624
0-24 months   COHORTS          INDIA                          2                    0     1082    4624
0-24 months   COHORTS          INDIA                          2                    1      102    4624
0-24 months   COHORTS          INDIA                          3+                   0     2336    4624
0-24 months   COHORTS          INDIA                          3+                   1      294    4624
0-24 months   COHORTS          PHILIPPINES                    1                    0      584    3045
0-24 months   COHORTS          PHILIPPINES                    1                    1       93    3045
0-24 months   COHORTS          PHILIPPINES                    2                    0      609    3045
0-24 months   COHORTS          PHILIPPINES                    2                    1       73    3045
0-24 months   COHORTS          PHILIPPINES                    3+                   0     1470    3045
0-24 months   COHORTS          PHILIPPINES                    3+                   1      216    3045
0-24 months   GMS-Nepal        NEPAL                          1                    0      158     686
0-24 months   GMS-Nepal        NEPAL                          1                    1       45     686
0-24 months   GMS-Nepal        NEPAL                          2                    0      127     686
0-24 months   GMS-Nepal        NEPAL                          2                    1       53     686
0-24 months   GMS-Nepal        NEPAL                          3+                   0      224     686
0-24 months   GMS-Nepal        NEPAL                          3+                   1       79     686
0-24 months   Keneba           GAMBIA                         1                    0      195    1990
0-24 months   Keneba           GAMBIA                         1                    1       45    1990
0-24 months   Keneba           GAMBIA                         2                    0      175    1990
0-24 months   Keneba           GAMBIA                         2                    1       39    1990
0-24 months   Keneba           GAMBIA                         3+                   0     1222    1990
0-24 months   Keneba           GAMBIA                         3+                   1      314    1990
0-24 months   PROVIDE          BANGLADESH                     1                    0      252     700
0-24 months   PROVIDE          BANGLADESH                     1                    1       19     700
0-24 months   PROVIDE          BANGLADESH                     2                    0      236     700
0-24 months   PROVIDE          BANGLADESH                     2                    1        8     700
0-24 months   PROVIDE          BANGLADESH                     3+                   0      170     700
0-24 months   PROVIDE          BANGLADESH                     3+                   1       15     700
0-24 months   SAS-CompFeed     INDIA                          1                    0      400    1513
0-24 months   SAS-CompFeed     INDIA                          1                    1       48    1513
0-24 months   SAS-CompFeed     INDIA                          2                    0      300    1513
0-24 months   SAS-CompFeed     INDIA                          2                    1       54    1513
0-24 months   SAS-CompFeed     INDIA                          3+                   0      590    1513
0-24 months   SAS-CompFeed     INDIA                          3+                   1      121    1513
0-24 months   SAS-FoodSuppl    INDIA                          1                    0       17     418
0-24 months   SAS-FoodSuppl    INDIA                          1                    1        4     418
0-24 months   SAS-FoodSuppl    INDIA                          2                    0       70     418
0-24 months   SAS-FoodSuppl    INDIA                          2                    1        7     418
0-24 months   SAS-FoodSuppl    INDIA                          3+                   0      260     418
0-24 months   SAS-FoodSuppl    INDIA                          3+                   1       60     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      767    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       54    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      717    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1       54    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      716    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1       49    2357
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0     5431   13945
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1      575   13945
0-24 months   ZVITAMBO         ZIMBABWE                       2                    0     3816   13945
0-24 months   ZVITAMBO         ZIMBABWE                       2                    1      362   13945
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   0     3412   13945
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   1      349   13945
0-6 months    COHORTS          GUATEMALA                      1                    0      141    1063
0-6 months    COHORTS          GUATEMALA                      1                    1       11    1063
0-6 months    COHORTS          GUATEMALA                      2                    0      139    1063
0-6 months    COHORTS          GUATEMALA                      2                    1       10    1063
0-6 months    COHORTS          GUATEMALA                      3+                   0      716    1063
0-6 months    COHORTS          GUATEMALA                      3+                   1       46    1063
0-6 months    COHORTS          INDIA                          1                    0      704    4444
0-6 months    COHORTS          INDIA                          1                    1       55    4444
0-6 months    COHORTS          INDIA                          2                    0     1068    4444
0-6 months    COHORTS          INDIA                          2                    1       69    4444
0-6 months    COHORTS          INDIA                          3+                   0     2372    4444
0-6 months    COHORTS          INDIA                          3+                   1      176    4444
0-6 months    COHORTS          PHILIPPINES                    1                    0      609    3044
0-6 months    COHORTS          PHILIPPINES                    1                    1       67    3044
0-6 months    COHORTS          PHILIPPINES                    2                    0      638    3044
0-6 months    COHORTS          PHILIPPINES                    2                    1       44    3044
0-6 months    COHORTS          PHILIPPINES                    3+                   0     1586    3044
0-6 months    COHORTS          PHILIPPINES                    3+                   1      100    3044
0-6 months    GMS-Nepal        NEPAL                          1                    0      179     686
0-6 months    GMS-Nepal        NEPAL                          1                    1       24     686
0-6 months    GMS-Nepal        NEPAL                          2                    0      155     686
0-6 months    GMS-Nepal        NEPAL                          2                    1       25     686
0-6 months    GMS-Nepal        NEPAL                          3+                   0      273     686
0-6 months    GMS-Nepal        NEPAL                          3+                   1       30     686
0-6 months    Keneba           GAMBIA                         1                    0      205    1851
0-6 months    Keneba           GAMBIA                         1                    1       29    1851
0-6 months    Keneba           GAMBIA                         2                    0      191    1851
0-6 months    Keneba           GAMBIA                         2                    1       14    1851
0-6 months    Keneba           GAMBIA                         3+                   0     1265    1851
0-6 months    Keneba           GAMBIA                         3+                   1      147    1851
0-6 months    PROVIDE          BANGLADESH                     1                    0      255     700
0-6 months    PROVIDE          BANGLADESH                     1                    1       16     700
0-6 months    PROVIDE          BANGLADESH                     2                    0      240     700
0-6 months    PROVIDE          BANGLADESH                     2                    1        4     700
0-6 months    PROVIDE          BANGLADESH                     3+                   0      176     700
0-6 months    PROVIDE          BANGLADESH                     3+                   1        9     700
0-6 months    SAS-CompFeed     INDIA                          1                    0      419    1505
0-6 months    SAS-CompFeed     INDIA                          1                    1       26    1505
0-6 months    SAS-CompFeed     INDIA                          2                    0      329    1505
0-6 months    SAS-CompFeed     INDIA                          2                    1       23    1505
0-6 months    SAS-CompFeed     INDIA                          3+                   0      657    1505
0-6 months    SAS-CompFeed     INDIA                          3+                   1       51    1505
0-6 months    SAS-FoodSuppl    INDIA                          1                    0       19     418
0-6 months    SAS-FoodSuppl    INDIA                          1                    1        2     418
0-6 months    SAS-FoodSuppl    INDIA                          2                    0       76     418
0-6 months    SAS-FoodSuppl    INDIA                          2                    1        1     418
0-6 months    SAS-FoodSuppl    INDIA                          3+                   0      303     418
0-6 months    SAS-FoodSuppl    INDIA                          3+                   1       17     418
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      790    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       31    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      744    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1       27    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      744    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1       21    2357
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0     5500   13852
0-6 months    ZVITAMBO         ZIMBABWE                       1                    1      461   13852
0-6 months    ZVITAMBO         ZIMBABWE                       2                    0     3897   13852
0-6 months    ZVITAMBO         ZIMBABWE                       2                    1      258   13852
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   0     3502   13852
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   1      234   13852
6-24 months   COHORTS          GUATEMALA                      1                    0      176    1213
6-24 months   COHORTS          GUATEMALA                      1                    1        6    1213
6-24 months   COHORTS          GUATEMALA                      2                    0      166    1213
6-24 months   COHORTS          GUATEMALA                      2                    1        5    1213
6-24 months   COHORTS          GUATEMALA                      3+                   0      841    1213
6-24 months   COHORTS          GUATEMALA                      3+                   1       19    1213
6-24 months   COHORTS          INDIA                          1                    0      734    4339
6-24 months   COHORTS          INDIA                          1                    1       19    4339
6-24 months   COHORTS          INDIA                          2                    0     1070    4339
6-24 months   COHORTS          INDIA                          2                    1       35    4339
6-24 months   COHORTS          INDIA                          3+                   0     2360    4339
6-24 months   COHORTS          INDIA                          3+                   1      121    4339
6-24 months   COHORTS          PHILIPPINES                    1                    0      579    2809
6-24 months   COHORTS          PHILIPPINES                    1                    1       29    2809
6-24 months   COHORTS          PHILIPPINES                    2                    0      595    2809
6-24 months   COHORTS          PHILIPPINES                    2                    1       30    2809
6-24 months   COHORTS          PHILIPPINES                    3+                   0     1447    2809
6-24 months   COHORTS          PHILIPPINES                    3+                   1      129    2809
6-24 months   GMS-Nepal        NEPAL                          1                    0      143     590
6-24 months   GMS-Nepal        NEPAL                          1                    1       24     590
6-24 months   GMS-Nepal        NEPAL                          2                    0      119     590
6-24 months   GMS-Nepal        NEPAL                          2                    1       33     590
6-24 months   GMS-Nepal        NEPAL                          3+                   0      216     590
6-24 months   GMS-Nepal        NEPAL                          3+                   1       55     590
6-24 months   Keneba           GAMBIA                         1                    0      207    1924
6-24 months   Keneba           GAMBIA                         1                    1       20    1924
6-24 months   Keneba           GAMBIA                         2                    0      172    1924
6-24 months   Keneba           GAMBIA                         2                    1       26    1924
6-24 months   Keneba           GAMBIA                         3+                   0     1314    1924
6-24 months   Keneba           GAMBIA                         3+                   1      185    1924
6-24 months   PROVIDE          BANGLADESH                     1                    0      224     615
6-24 months   PROVIDE          BANGLADESH                     1                    1        3     615
6-24 months   PROVIDE          BANGLADESH                     2                    0      220     615
6-24 months   PROVIDE          BANGLADESH                     2                    1        4     615
6-24 months   PROVIDE          BANGLADESH                     3+                   0      158     615
6-24 months   PROVIDE          BANGLADESH                     3+                   1        6     615
6-24 months   SAS-CompFeed     INDIA                          1                    0      393    1389
6-24 months   SAS-CompFeed     INDIA                          1                    1       24    1389
6-24 months   SAS-CompFeed     INDIA                          2                    0      287    1389
6-24 months   SAS-CompFeed     INDIA                          2                    1       34    1389
6-24 months   SAS-CompFeed     INDIA                          3+                   0      575    1389
6-24 months   SAS-CompFeed     INDIA                          3+                   1       76    1389
6-24 months   SAS-FoodSuppl    INDIA                          1                    0        5     402
6-24 months   SAS-FoodSuppl    INDIA                          1                    1        2     402
6-24 months   SAS-FoodSuppl    INDIA                          2                    0       71     402
6-24 months   SAS-FoodSuppl    INDIA                          2                    1        6     402
6-24 months   SAS-FoodSuppl    INDIA                          3+                   0      275     402
6-24 months   SAS-FoodSuppl    INDIA                          3+                   1       43     402
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      648    1987
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       25    1987
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      623    1987
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1       29    1987
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      634    1987
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1       28    1987
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0     4348   10814
6-24 months   ZVITAMBO         ZIMBABWE                       1                    1      122   10814
6-24 months   ZVITAMBO         ZIMBABWE                       2                    0     3175   10814
6-24 months   ZVITAMBO         ZIMBABWE                       2                    1      113   10814
6-24 months   ZVITAMBO         ZIMBABWE                       3+                   0     2935   10814
6-24 months   ZVITAMBO         ZIMBABWE                       3+                   1      121   10814


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
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
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
![](/tmp/7e4cff86-5bbb-4405-bae7-c1cba8f13f5a/a5d8d7cb-1738-42ff-9065-1c1ccddf29a0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7e4cff86-5bbb-4405-bae7-c1cba8f13f5a/a5d8d7cb-1738-42ff-9065-1c1ccddf29a0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7e4cff86-5bbb-4405-bae7-c1cba8f13f5a/a5d8d7cb-1738-42ff-9065-1c1ccddf29a0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7e4cff86-5bbb-4405-bae7-c1cba8f13f5a/a5d8d7cb-1738-42ff-9065-1c1ccddf29a0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                0.0817308   0.0444868   0.1189748
0-24 months   COHORTS          GUATEMALA                      2                    NA                0.0802139   0.0412684   0.1191594
0-24 months   COHORTS          GUATEMALA                      3+                   NA                0.0687104   0.0525847   0.0848360
0-24 months   COHORTS          INDIA                          1                    NA                0.0901235   0.0704009   0.1098460
0-24 months   COHORTS          INDIA                          2                    NA                0.0861486   0.0701648   0.1021325
0-24 months   COHORTS          INDIA                          3+                   NA                0.1117871   0.0997431   0.1238311
0-24 months   COHORTS          PHILIPPINES                    1                    NA                0.1373708   0.1114359   0.1633056
0-24 months   COHORTS          PHILIPPINES                    2                    NA                0.1070381   0.0838314   0.1302448
0-24 months   COHORTS          PHILIPPINES                    3+                   NA                0.1281139   0.1121581   0.1440697
0-24 months   GMS-Nepal        NEPAL                          1                    NA                0.2216749   0.1644934   0.2788564
0-24 months   GMS-Nepal        NEPAL                          2                    NA                0.2944444   0.2278104   0.3610784
0-24 months   GMS-Nepal        NEPAL                          3+                   NA                0.2607261   0.2112565   0.3101957
0-24 months   Keneba           GAMBIA                         1                    NA                0.1875000   0.1381072   0.2368928
0-24 months   Keneba           GAMBIA                         2                    NA                0.1822430   0.1305076   0.2339784
0-24 months   Keneba           GAMBIA                         3+                   NA                0.2044271   0.1842541   0.2246001
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.0701107   0.0396891   0.1005323
0-24 months   PROVIDE          BANGLADESH                     2                    NA                0.0327869   0.0104267   0.0551470
0-24 months   PROVIDE          BANGLADESH                     3+                   NA                0.0810811   0.0417196   0.1204425
0-24 months   SAS-CompFeed     INDIA                          1                    NA                0.1071429   0.0611715   0.1531142
0-24 months   SAS-CompFeed     INDIA                          2                    NA                0.1525424   0.1210961   0.1839887
0-24 months   SAS-CompFeed     INDIA                          3+                   NA                0.1701828   0.1429957   0.1973699
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0657734   0.0488137   0.0827332
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0700389   0.0520206   0.0880573
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0640523   0.0466982   0.0814064
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0957376   0.0882961   0.1031791
0-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.0866443   0.0781139   0.0951747
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.0927945   0.0835213   0.1020676
0-6 months    COHORTS          GUATEMALA                      1                    NA                0.0723684   0.0311593   0.1135775
0-6 months    COHORTS          GUATEMALA                      2                    NA                0.0671141   0.0269183   0.1073099
0-6 months    COHORTS          GUATEMALA                      3+                   NA                0.0603675   0.0434492   0.0772857
0-6 months    COHORTS          INDIA                          1                    NA                0.0724638   0.0540178   0.0909098
0-6 months    COHORTS          INDIA                          2                    NA                0.0606860   0.0468068   0.0745653
0-6 months    COHORTS          INDIA                          3+                   NA                0.0690738   0.0592266   0.0789210
0-6 months    COHORTS          PHILIPPINES                    1                    NA                0.0991124   0.0765832   0.1216416
0-6 months    COHORTS          PHILIPPINES                    2                    NA                0.0645161   0.0460753   0.0829569
0-6 months    COHORTS          PHILIPPINES                    3+                   NA                0.0593120   0.0480352   0.0705887
0-6 months    GMS-Nepal        NEPAL                          1                    NA                0.1182266   0.0737785   0.1626747
0-6 months    GMS-Nepal        NEPAL                          2                    NA                0.1388889   0.0883306   0.1894471
0-6 months    GMS-Nepal        NEPAL                          3+                   NA                0.0990099   0.0653554   0.1326644
0-6 months    Keneba           GAMBIA                         1                    NA                0.1239316   0.0817020   0.1661613
0-6 months    Keneba           GAMBIA                         2                    NA                0.0682927   0.0337532   0.1028321
0-6 months    Keneba           GAMBIA                         3+                   NA                0.1041076   0.0881739   0.1200414
0-6 months    SAS-CompFeed     INDIA                          1                    NA                0.0584270   0.0200291   0.0968249
0-6 months    SAS-CompFeed     INDIA                          2                    NA                0.0653409   0.0365066   0.0941752
0-6 months    SAS-CompFeed     INDIA                          3+                   NA                0.0720339   0.0508271   0.0932407
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0377588   0.0247176   0.0508001
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0350195   0.0220409   0.0479980
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0274510   0.0158700   0.0390319
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.0773360   0.0705547   0.0841174
0-6 months    ZVITAMBO         ZIMBABWE                       2                    NA                0.0620939   0.0547558   0.0694319
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   NA                0.0626338   0.0548639   0.0704038
6-24 months   COHORTS          GUATEMALA                      1                    NA                0.0329670   0.0070162   0.0589179
6-24 months   COHORTS          GUATEMALA                      2                    NA                0.0292398   0.0039775   0.0545020
6-24 months   COHORTS          GUATEMALA                      3+                   NA                0.0220930   0.0122653   0.0319208
6-24 months   COHORTS          INDIA                          1                    NA                0.0252324   0.0140295   0.0364353
6-24 months   COHORTS          INDIA                          2                    NA                0.0316742   0.0213471   0.0420014
6-24 months   COHORTS          INDIA                          3+                   NA                0.0487707   0.0402943   0.0572470
6-24 months   COHORTS          PHILIPPINES                    1                    NA                0.0476974   0.0307537   0.0646411
6-24 months   COHORTS          PHILIPPINES                    2                    NA                0.0480000   0.0312381   0.0647619
6-24 months   COHORTS          PHILIPPINES                    3+                   NA                0.0818528   0.0683159   0.0953897
6-24 months   GMS-Nepal        NEPAL                          1                    NA                0.1437126   0.0904631   0.1969621
6-24 months   GMS-Nepal        NEPAL                          2                    NA                0.2171053   0.1515086   0.2827019
6-24 months   GMS-Nepal        NEPAL                          3+                   NA                0.2029520   0.1550261   0.2508780
6-24 months   Keneba           GAMBIA                         1                    NA                0.0881057   0.0512231   0.1249884
6-24 months   Keneba           GAMBIA                         2                    NA                0.1313131   0.0842572   0.1783690
6-24 months   Keneba           GAMBIA                         3+                   NA                0.1234156   0.1067607   0.1400705
6-24 months   SAS-CompFeed     INDIA                          1                    NA                0.0575540   0.0316515   0.0834564
6-24 months   SAS-CompFeed     INDIA                          2                    NA                0.1059190   0.0759818   0.1358562
6-24 months   SAS-CompFeed     INDIA                          3+                   NA                0.1167435   0.0845970   0.1488899
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0371471   0.0228551   0.0514391
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0444785   0.0286504   0.0603066
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0422961   0.0269607   0.0576314
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0272931   0.0225163   0.0320698
6-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.0343674   0.0281404   0.0405944
6-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.0395942   0.0326802   0.0465083


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0723341   0.0584645   0.0862036
0-24 months   COHORTS          INDIA                          NA                   NA                0.1014273   0.0927249   0.1101298
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1254516   0.1136848   0.1372183
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.2580175   0.2252514   0.2907836
0-24 months   Keneba           GAMBIA                         NA                   NA                0.2000000   0.1824211   0.2175789
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.1473893   0.1184132   0.1763654
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0666101   0.0565417   0.0766785
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0922194   0.0874171   0.0970218
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.0630292   0.0484135   0.0776449
0-6 months    COHORTS          INDIA                          NA                   NA                0.0675068   0.0601293   0.0748842
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0693167   0.0602923   0.0783411
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.1151603   0.0912555   0.1390652
0-6 months    Keneba           GAMBIA                         NA                   NA                0.1026472   0.0888174   0.1164771
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.0664452   0.0425975   0.0902929
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0335172   0.0262496   0.0407848
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0687987   0.0645835   0.0730139
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0247321   0.0159885   0.0334756
6-24 months   COHORTS          INDIA                          NA                   NA                0.0403319   0.0344774   0.0461863
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1898305   0.1581595   0.2215015
6-24 months   Keneba           GAMBIA                         NA                   NA                0.1200624   0.1055350   0.1345898
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.0964723   0.0729872   0.1199573
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0412682   0.0325201   0.0500164
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0329203   0.0295572   0.0362834


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      2                    1                 0.9814407   0.5042893   1.9100662
0-24 months   COHORTS          GUATEMALA                      3+                   1                 0.8406915   0.5035327   1.4036071
0-24 months   COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          2                    1                 0.9558960   0.7174788   1.2735388
0-24 months   COHORTS          INDIA                          3+                   1                 1.2403771   0.9718946   1.5830270
0-24 months   COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    2                    1                 0.7791915   0.5845074   1.0387198
0-24 months   COHORTS          PHILIPPINES                    3+                   1                 0.9326139   0.7438336   1.1693055
0-24 months   GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          2                    1                 1.3282716   0.9424496   1.8720422
0-24 months   GMS-Nepal        NEPAL                          3+                   1                 1.1761643   0.8538841   1.6200821
0-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         2                    1                 0.9719626   0.6598685   1.4316660
0-24 months   Keneba           GAMBIA                         3+                   1                 1.0902778   0.8229397   1.4444626
0-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     2                    1                 0.4676445   0.2083855   1.0494558
0-24 months   PROVIDE          BANGLADESH                     3+                   1                 1.1564723   0.6030613   2.2177317
0-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          2                    1                 1.4237288   1.0432777   1.9429187
0-24 months   SAS-CompFeed     INDIA                          3+                   1                 1.5883732   1.0979498   2.2978550
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0648508   0.7397776   1.5327679
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9738320   0.6699577   1.4155352
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 0.9050188   0.7983267   1.0259698
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 0.9692584   0.8539986   1.1000743
0-6 months    COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      2                    1                 0.9273948   0.4058432   2.1191954
0-6 months    COHORTS          GUATEMALA                      3+                   1                 0.8341685   0.4422040   1.5735655
0-6 months    COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          2                    1                 0.8374670   0.5947710   1.1791951
0-6 months    COHORTS          INDIA                          3+                   1                 0.9532182   0.7120072   1.2761458
0-6 months    COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    2                    1                 0.6509389   0.4517901   0.9378723
0-6 months    COHORTS          PHILIPPINES                    3+                   1                 0.5984313   0.4449543   0.8048469
0-6 months    GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          2                    1                 1.1747685   0.6961160   1.9825447
0-6 months    GMS-Nepal        NEPAL                          3+                   1                 0.8374587   0.5044841   1.3902066
0-6 months    Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         2                    1                 0.5510513   0.2994634   1.0140055
0-6 months    Keneba           GAMBIA                         3+                   1                 0.8400410   0.5781927   1.2204736
0-6 months    SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          2                    1                 1.1183348   0.6747011   1.8536692
0-6 months    SAS-CompFeed     INDIA                          3+                   1                 1.2328879   0.6664251   2.2808451
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9274507   0.5588279   1.5392305
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.7270082   0.4214549   1.2540865
0-6 months    ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       2                    1                 0.8029100   0.6930393   0.9301990
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   1                 0.8098921   0.6957465   0.9427648
6-24 months   COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          GUATEMALA                      2                    1                 0.8869396   0.2756077   2.8542808
6-24 months   COHORTS          GUATEMALA                      3+                   1                 0.6701550   0.2713306   1.6552051
6-24 months   COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          INDIA                          2                    1                 1.2552989   0.7236329   2.1775894
6-24 months   COHORTS          INDIA                          3+                   1                 1.9328581   1.1998616   3.1136430
6-24 months   COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    2                    1                 1.0063448   0.6115196   1.6560874
6-24 months   COHORTS          PHILIPPINES                    3+                   1                 1.7160861   1.1597472   2.5393048
6-24 months   GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          2                    1                 1.5106908   0.9365672   2.4367569
6-24 months   GMS-Nepal        NEPAL                          3+                   1                 1.4122079   0.9100773   2.1913864
6-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         2                    1                 1.4904040   0.8589867   2.5859589
6-24 months   Keneba           GAMBIA                         3+                   1                 1.4007672   0.9022961   2.1746173
6-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          2                    1                 1.8403427   1.2039450   2.8131361
6-24 months   SAS-CompFeed     INDIA                          3+                   1                 2.0284178   1.3428048   3.0640930
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1973620   0.7089571   2.0222319
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1386103   0.6710892   1.9318347
6-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 1.2591989   0.9787897   1.6199412
6-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 1.4507070   1.1329422   1.8575978


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                -0.0093967   -0.0432962    0.0245028
0-24 months   COHORTS          INDIA                          1                    NA                 0.0113039   -0.0068189    0.0294266
0-24 months   COHORTS          PHILIPPINES                    1                    NA                -0.0119192   -0.0345463    0.0107079
0-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0363426   -0.0127308    0.0854160
0-24 months   Keneba           GAMBIA                         1                    NA                 0.0125000   -0.0339781    0.0589781
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0101107   -0.0328889    0.0126675
0-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0402464    0.0160860    0.0644069
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0008367   -0.0128975    0.0145708
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0035182   -0.0090624    0.0020261
0-6 months    COHORTS          GUATEMALA                      1                    NA                -0.0093393   -0.0471037    0.0284252
0-6 months    COHORTS          INDIA                          1                    NA                -0.0049570   -0.0216440    0.0117300
0-6 months    COHORTS          PHILIPPINES                    1                    NA                -0.0297957   -0.0488632   -0.0107283
0-6 months    GMS-Nepal        NEPAL                          1                    NA                -0.0030663   -0.0401853    0.0340528
0-6 months    Keneba           GAMBIA                         1                    NA                -0.0212844   -0.0603192    0.0177504
0-6 months    SAS-CompFeed     INDIA                          1                    NA                 0.0080182   -0.0156131    0.0316495
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0042416   -0.0144598    0.0059765
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0085373   -0.0134541   -0.0036204
6-24 months   COHORTS          GUATEMALA                      1                    NA                -0.0082350   -0.0316403    0.0151703
6-24 months   COHORTS          INDIA                          1                    NA                 0.0150995    0.0043190    0.0258800
6-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.0192304    0.0034747    0.0349861
6-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0461179   -0.0011406    0.0933765
6-24 months   Keneba           GAMBIA                         1                    NA                 0.0319566   -0.0034041    0.0673174
6-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0389183    0.0204764    0.0573603
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0041211   -0.0078130    0.0160553
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0056272    0.0017203    0.0095342


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                -0.1299068   -0.7098785    0.2533449
0-24 months   COHORTS          INDIA                          1                    NA                 0.1114481   -0.0862109    0.2731388
0-24 months   COHORTS          PHILIPPINES                    1                    NA                -0.0950103   -0.2909022    0.0711554
0-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.1408533   -0.0716135    0.3111947
0-24 months   Keneba           GAMBIA                         1                    NA                 0.0625000   -0.2011839    0.2683000
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.1685117   -0.6132761    0.1536356
0-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.2730621    0.0480619    0.4448813
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0125604   -0.2167250    0.1986382
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0381499   -0.1000176    0.0202382
0-6 months    COHORTS          GUATEMALA                      1                    NA                -0.1481736   -0.9334049    0.3181446
0-6 months    COHORTS          INDIA                          1                    NA                -0.0734300   -0.3512595    0.1472756
0-6 months    COHORTS          PHILIPPINES                    1                    NA                -0.4298494   -0.7277015   -0.1833464
0-6 months    GMS-Nepal        NEPAL                          1                    NA                -0.0266259   -0.4052413    0.2499788
0-6 months    Keneba           GAMBIA                         1                    NA                -0.2073549   -0.6533219    0.1183169
0-6 months    SAS-CompFeed     INDIA                          1                    NA                 0.1206742   -0.3413032    0.4235353
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1265514   -0.4751575    0.1396728
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.1240908   -0.1975185   -0.0551654
6-24 months   COHORTS          GUATEMALA                      1                    NA                -0.3329670   -1.6972387    0.3412518
6-24 months   COHORTS          INDIA                          1                    NA                 0.3743806    0.0489747    0.5884445
6-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.2873303    0.0125714    0.4856356
6-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.2429427   -0.0488562    0.4535612
6-24 months   Keneba           GAMBIA                         1                    NA                 0.2661670   -0.0941166    0.5078122
6-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.4034146    0.1777945    0.5671226
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0998623   -0.2401896    0.3466742
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.1709348    0.0447453    0.2804547
