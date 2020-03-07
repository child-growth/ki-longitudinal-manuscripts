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
0-24 months   JiVitA-3         BANGLADESH                     1                    0     9487   26956
0-24 months   JiVitA-3         BANGLADESH                     1                    1      639   26956
0-24 months   JiVitA-3         BANGLADESH                     2                    0     8441   26956
0-24 months   JiVitA-3         BANGLADESH                     2                    1      493   26956
0-24 months   JiVitA-3         BANGLADESH                     3+                   0     7383   26956
0-24 months   JiVitA-3         BANGLADESH                     3+                   1      513   26956
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
0-6 months    JiVitA-3         BANGLADESH                     1                    0     9639   26859
0-6 months    JiVitA-3         BANGLADESH                     1                    1      424   26859
0-6 months    JiVitA-3         BANGLADESH                     2                    0     8583   26859
0-6 months    JiVitA-3         BANGLADESH                     2                    1      331   26859
0-6 months    JiVitA-3         BANGLADESH                     3+                   0     7526   26859
0-6 months    JiVitA-3         BANGLADESH                     3+                   1      356   26859
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
6-24 months   JiVitA-3         BANGLADESH                     1                    0     6404   17298
6-24 months   JiVitA-3         BANGLADESH                     1                    1      222   17298
6-24 months   JiVitA-3         BANGLADESH                     2                    0     5674   17298
6-24 months   JiVitA-3         BANGLADESH                     2                    1      169   17298
6-24 months   JiVitA-3         BANGLADESH                     3+                   0     4667   17298
6-24 months   JiVitA-3         BANGLADESH                     3+                   1      162   17298
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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
![](/tmp/8f3bf18c-7af4-4042-b74b-060726da6a2a/922e929c-5c46-4aa0-86b5-dc7effde89fa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8f3bf18c-7af4-4042-b74b-060726da6a2a/922e929c-5c46-4aa0-86b5-dc7effde89fa/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8f3bf18c-7af4-4042-b74b-060726da6a2a/922e929c-5c46-4aa0-86b5-dc7effde89fa/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8f3bf18c-7af4-4042-b74b-060726da6a2a/922e929c-5c46-4aa0-86b5-dc7effde89fa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                0.0814685   0.0441113   0.1188256
0-24 months   COHORTS          GUATEMALA                      2                    NA                0.0793108   0.0402181   0.1184036
0-24 months   COHORTS          GUATEMALA                      3+                   NA                0.0686356   0.0525076   0.0847636
0-24 months   COHORTS          INDIA                          1                    NA                0.0991199   0.0703923   0.1278474
0-24 months   COHORTS          INDIA                          2                    NA                0.0867264   0.0648182   0.1086347
0-24 months   COHORTS          INDIA                          3+                   NA                0.1036178   0.0904873   0.1167482
0-24 months   COHORTS          PHILIPPINES                    1                    NA                0.1241160   0.0895071   0.1587249
0-24 months   COHORTS          PHILIPPINES                    2                    NA                0.1118364   0.0720787   0.1515942
0-24 months   COHORTS          PHILIPPINES                    3+                   NA                0.1403666   0.1169648   0.1637684
0-24 months   GMS-Nepal        NEPAL                          1                    NA                0.2215913   0.1304952   0.3126874
0-24 months   GMS-Nepal        NEPAL                          2                    NA                0.2643832   0.1601812   0.3685852
0-24 months   GMS-Nepal        NEPAL                          3+                   NA                0.2016047   0.1508080   0.2524014
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.0583215   0.0494690   0.0671739
0-24 months   JiVitA-3         BANGLADESH                     2                    NA                0.0549568   0.0447033   0.0652102
0-24 months   JiVitA-3         BANGLADESH                     3+                   NA                0.0546898   0.0471505   0.0622291
0-24 months   Keneba           GAMBIA                         1                    NA                0.1817971   0.1244441   0.2391501
0-24 months   Keneba           GAMBIA                         2                    NA                0.1920970   0.1133752   0.2708188
0-24 months   Keneba           GAMBIA                         3+                   NA                0.1847000   0.1640091   0.2053908
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.0701107   0.0396891   0.1005323
0-24 months   PROVIDE          BANGLADESH                     2                    NA                0.0327869   0.0104267   0.0551470
0-24 months   PROVIDE          BANGLADESH                     3+                   NA                0.0810811   0.0417196   0.1204425
0-24 months   SAS-CompFeed     INDIA                          1                    NA                0.1053179   0.0411083   0.1695275
0-24 months   SAS-CompFeed     INDIA                          2                    NA                0.1659550   0.1081999   0.2237101
0-24 months   SAS-CompFeed     INDIA                          3+                   NA                0.1529723   0.1219458   0.1839988
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0837991   0.0559109   0.1116873
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0782618   0.0513617   0.1051618
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0767266   0.0496590   0.1037942
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1008621   0.0882471   0.1134772
0-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.0881947   0.0745182   0.1018713
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.0891690   0.0757013   0.1026367
0-6 months    COHORTS          GUATEMALA                      1                    NA                0.0753882   0.0341306   0.1166458
0-6 months    COHORTS          GUATEMALA                      2                    NA                0.0707379   0.0309762   0.1104997
0-6 months    COHORTS          GUATEMALA                      3+                   NA                0.0608155   0.0438784   0.0777526
0-6 months    COHORTS          INDIA                          1                    NA                0.0833352   0.0578274   0.1088430
0-6 months    COHORTS          INDIA                          2                    NA                0.0636322   0.0415369   0.0857274
0-6 months    COHORTS          INDIA                          3+                   NA                0.0640160   0.0536690   0.0743631
0-6 months    COHORTS          PHILIPPINES                    1                    NA                0.0983838   0.0678977   0.1288699
0-6 months    COHORTS          PHILIPPINES                    2                    NA                0.0731300   0.0337120   0.1125480
0-6 months    COHORTS          PHILIPPINES                    3+                   NA                0.0586327   0.0449136   0.0723519
0-6 months    GMS-Nepal        NEPAL                          1                    NA                0.0779150   0.0416672   0.1141627
0-6 months    GMS-Nepal        NEPAL                          2                    NA                0.1141922   0.0611944   0.1671900
0-6 months    GMS-Nepal        NEPAL                          3+                   NA                0.0713509   0.0416313   0.1010705
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.0403375   0.0331066   0.0475684
0-6 months    JiVitA-3         BANGLADESH                     2                    NA                0.0368351   0.0279965   0.0456738
0-6 months    JiVitA-3         BANGLADESH                     3+                   NA                0.0409105   0.0341597   0.0476613
0-6 months    Keneba           GAMBIA                         1                    NA                0.1460965   0.0913070   0.2008859
0-6 months    Keneba           GAMBIA                         2                    NA                0.0654541   0.0280972   0.1028110
0-6 months    Keneba           GAMBIA                         3+                   NA                0.1018846   0.0861981   0.1175711
0-6 months    SAS-CompFeed     INDIA                          1                    NA                0.0542006   0.0054920   0.1029092
0-6 months    SAS-CompFeed     INDIA                          2                    NA                0.0592229   0.0339427   0.0845030
0-6 months    SAS-CompFeed     INDIA                          3+                   NA                0.0587765   0.0391261   0.0784269
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0399877   0.0231811   0.0567944
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0367876   0.0186489   0.0549263
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0285105   0.0134589   0.0435620
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.0786140   0.0676511   0.0895769
0-6 months    ZVITAMBO         ZIMBABWE                       2                    NA                0.0649535   0.0524559   0.0774511
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   NA                0.0521033   0.0422837   0.0619229
6-24 months   COHORTS          GUATEMALA                      1                    NA                0.0329670   0.0070162   0.0589179
6-24 months   COHORTS          GUATEMALA                      2                    NA                0.0292398   0.0039775   0.0545020
6-24 months   COHORTS          GUATEMALA                      3+                   NA                0.0220930   0.0122653   0.0319208
6-24 months   COHORTS          INDIA                          1                    NA                0.0314889   0.0173175   0.0456604
6-24 months   COHORTS          INDIA                          2                    NA                0.0360186   0.0239621   0.0480752
6-24 months   COHORTS          INDIA                          3+                   NA                0.0451098   0.0369748   0.0532447
6-24 months   COHORTS          PHILIPPINES                    1                    NA                0.0480685   0.0312513   0.0648856
6-24 months   COHORTS          PHILIPPINES                    2                    NA                0.0486514   0.0318346   0.0654681
6-24 months   COHORTS          PHILIPPINES                    3+                   NA                0.0811056   0.0676215   0.0945897
6-24 months   GMS-Nepal        NEPAL                          1                    NA                0.1592562   0.0479795   0.2705328
6-24 months   GMS-Nepal        NEPAL                          2                    NA                0.2170191   0.0779291   0.3561091
6-24 months   GMS-Nepal        NEPAL                          3+                   NA                0.1372526   0.1000561   0.1744491
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.0317434   0.0243239   0.0391628
6-24 months   JiVitA-3         BANGLADESH                     2                    NA                0.0287905   0.0216907   0.0358902
6-24 months   JiVitA-3         BANGLADESH                     3+                   NA                0.0204623   0.0161121   0.0248124
6-24 months   Keneba           GAMBIA                         1                    NA                0.0583391   0.0165175   0.1001608
6-24 months   Keneba           GAMBIA                         2                    NA                0.1420944   0.0734853   0.2107035
6-24 months   Keneba           GAMBIA                         3+                   NA                0.1081004   0.0925263   0.1236745
6-24 months   SAS-CompFeed     INDIA                          1                    NA                0.0626076   0.0212599   0.1039553
6-24 months   SAS-CompFeed     INDIA                          2                    NA                0.1487843   0.0310122   0.2665565
6-24 months   SAS-CompFeed     INDIA                          3+                   NA                0.1205811   0.0825782   0.1585840
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0555968   0.0236630   0.0875306
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0443660   0.0235642   0.0651678
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0581883   0.0352643   0.0811123
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0282546   0.0209592   0.0355500
6-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.0331251   0.0243572   0.0418929
6-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.0403416   0.0308279   0.0498554


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0723341   0.0584645   0.0862036
0-24 months   COHORTS          INDIA                          NA                   NA                0.1014273   0.0927249   0.1101298
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1254516   0.1136848   0.1372183
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.2580175   0.2252514   0.2907836
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0610254   0.0575469   0.0645038
0-24 months   Keneba           GAMBIA                         NA                   NA                0.2000000   0.1824211   0.2175789
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.1473893   0.1184132   0.1763654
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0666101   0.0565417   0.0766785
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0922194   0.0874171   0.0970218
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.0630292   0.0484135   0.0776449
0-6 months    COHORTS          INDIA                          NA                   NA                0.0675068   0.0601293   0.0748842
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0693167   0.0602923   0.0783411
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.1151603   0.0912555   0.1390652
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0413642   0.0383846   0.0443438
0-6 months    Keneba           GAMBIA                         NA                   NA                0.1026472   0.0888174   0.1164771
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.0664452   0.0425975   0.0902929
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0335172   0.0262496   0.0407848
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0687987   0.0645835   0.0730139
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0247321   0.0159885   0.0334756
6-24 months   COHORTS          INDIA                          NA                   NA                0.0403319   0.0344774   0.0461864
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1898305   0.1581595   0.2215015
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0319690   0.0290813   0.0348568
6-24 months   Keneba           GAMBIA                         NA                   NA                0.1200624   0.1055350   0.1345898
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.0964723   0.0729872   0.1199573
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0412682   0.0325201   0.0500164
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0329203   0.0295572   0.0362834


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      2                    1                 0.9735157   0.4965465   1.9086486
0-24 months   COHORTS          GUATEMALA                      3+                   1                 0.8424808   0.5032562   1.4103630
0-24 months   COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          2                    1                 0.8749651   0.5957789   1.2849798
0-24 months   COHORTS          INDIA                          3+                   1                 1.0453782   0.7620581   1.4340318
0-24 months   COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    2                    1                 0.9010637   0.5735224   1.4156655
0-24 months   COHORTS          PHILIPPINES                    3+                   1                 1.1309308   0.8172902   1.5649332
0-24 months   GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          2                    1                 1.1931117   0.6752765   2.1080485
0-24 months   GMS-Nepal        NEPAL                          3+                   1                 0.9098042   0.5617802   1.4734300
0-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     2                    1                 0.9423076   0.7378373   1.2034409
0-24 months   JiVitA-3         BANGLADESH                     3+                   1                 0.9377303   0.7664512   1.1472853
0-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         2                    1                 1.0566562   0.6299111   1.7725079
0-24 months   Keneba           GAMBIA                         3+                   1                 1.0159676   0.7269689   1.4198546
0-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     2                    1                 0.4676445   0.2083855   1.0494558
0-24 months   PROVIDE          BANGLADESH                     3+                   1                 1.1564723   0.6030613   2.2177317
0-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          2                    1                 1.5757532   0.7204119   3.4466369
0-24 months   SAS-CompFeed     INDIA                          3+                   1                 1.4524817   0.8049257   2.6209910
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9339212   0.5795043   1.5050947
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9156015   0.5635527   1.4875738
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 0.8744088   0.7164537   1.0671881
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 0.8840683   0.7266410   1.0756023
0-6 months    COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      2                    1                 0.9383159   0.4282045   2.0561124
0-6 months    COHORTS          GUATEMALA                      3+                   1                 0.8066985   0.4366592   1.4903212
0-6 months    COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          2                    1                 0.7635688   0.4806010   1.2131420
0-6 months    COHORTS          INDIA                          3+                   1                 0.7681753   0.5435014   1.0857255
0-6 months    COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    2                    1                 0.7433135   0.3991930   1.3840798
0-6 months    COHORTS          PHILIPPINES                    3+                   1                 0.5959589   0.4041833   0.8787276
0-6 months    GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          2                    1                 1.4656002   0.7612971   2.8214791
0-6 months    GMS-Nepal        NEPAL                          3+                   1                 0.9157532   0.4893567   1.7136866
0-6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     2                    1                 0.9131737   0.6727996   1.2394274
0-6 months    JiVitA-3         BANGLADESH                     3+                   1                 1.0142058   0.8010091   1.2841471
0-6 months    Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         2                    1                 0.4480196   0.2262671   0.8871001
0-6 months    Keneba           GAMBIA                         3+                   1                 0.6973786   0.4649820   1.0459265
0-6 months    SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          2                    1                 1.0926618   0.4635907   2.5753534
0-6 months    SAS-CompFeed     INDIA                          3+                   1                 1.0844258   0.4330424   2.7156215
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9199722   0.4813479   1.7582892
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.7129797   0.3630705   1.4001136
0-6 months    ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       2                    1                 0.8262326   0.6514711   1.0478751
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   1                 0.6627737   0.5242603   0.8378834
6-24 months   COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          GUATEMALA                      2                    1                 0.8869396   0.2756077   2.8542808
6-24 months   COHORTS          GUATEMALA                      3+                   1                 0.6701550   0.2713306   1.6552051
6-24 months   COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          INDIA                          2                    1                 1.1438502   0.6530449   2.0035273
6-24 months   COHORTS          INDIA                          3+                   1                 1.4325596   0.8824418   2.3256231
6-24 months   COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    2                    1                 1.0121266   0.6190766   1.6547227
6-24 months   COHORTS          PHILIPPINES                    3+                   1                 1.6872936   1.1456616   2.4849919
6-24 months   GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          2                    1                 1.3627045   0.5274899   3.5203774
6-24 months   GMS-Nepal        NEPAL                          3+                   1                 0.8618355   0.4067107   1.8262622
6-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     2                    1                 0.9069756   0.6459146   1.2735503
6-24 months   JiVitA-3         BANGLADESH                     3+                   1                 0.6446146   0.4709871   0.8822492
6-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         2                    1                 2.4356628   1.0262466   5.7807288
6-24 months   Keneba           GAMBIA                         3+                   1                 1.8529659   0.8916384   3.8507567
6-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          2                    1                 2.3764579   0.8344581   6.7679279
6-24 months   SAS-CompFeed     INDIA                          3+                   1                 1.9259815   1.2410631   2.9888931
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7979957   0.3805626   1.6733047
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0466131   0.5212532   2.1014719
6-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 1.1723782   0.8100155   1.6968447
6-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 1.4277894   1.0065034   2.0254106


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                -0.0091344   -0.0431388    0.0248700
0-24 months   COHORTS          INDIA                          1                    NA                 0.0023075   -0.0253007    0.0299156
0-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.0013355   -0.0314284    0.0340995
0-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0364262   -0.0500065    0.1228589
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0027039   -0.0056036    0.0110114
0-24 months   Keneba           GAMBIA                         1                    NA                 0.0182029   -0.0387083    0.0751141
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0101107   -0.0328889    0.0126675
0-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0420714   -0.0123684    0.0965112
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0171890   -0.0426143    0.0082363
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0086427   -0.0202615    0.0029761
0-6 months    COHORTS          GUATEMALA                      1                    NA                -0.0123590   -0.0501589    0.0254408
0-6 months    COHORTS          INDIA                          1                    NA                -0.0158284   -0.0400022    0.0083453
0-6 months    COHORTS          PHILIPPINES                    1                    NA                -0.0290671   -0.0573354   -0.0007988
0-6 months    GMS-Nepal        NEPAL                          1                    NA                 0.0372454    0.0035373    0.0709534
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0010267   -0.0057348    0.0077882
0-6 months    Keneba           GAMBIA                         1                    NA                -0.0434493   -0.0951131    0.0082145
0-6 months    SAS-CompFeed     INDIA                          1                    NA                 0.0122446   -0.0320036    0.0564928
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0064706   -0.0210314    0.0080903
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0098153   -0.0197857    0.0001551
6-24 months   COHORTS          GUATEMALA                      1                    NA                -0.0082350   -0.0316403    0.0151703
6-24 months   COHORTS          INDIA                          1                    NA                 0.0088429   -0.0046323    0.0223182
6-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.0188593    0.0032055    0.0345131
6-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0305744   -0.0777161    0.1388648
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0002256   -0.0066963    0.0071476
6-24 months   Keneba           GAMBIA                         1                    NA                 0.0617233    0.0193732    0.1040733
6-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0338647    0.0086273    0.0591020
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0143285   -0.0442057    0.0155487
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0046657   -0.0020771    0.0114084


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                -0.1262804   -0.7088117    0.2576669
0-24 months   COHORTS          INDIA                          1                    NA                 0.0227499   -0.2910748    0.2602925
0-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.0106459   -0.2882169    0.2401734
0-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.1411772   -0.2680935    0.4183579
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0443081   -0.1018849    0.1711048
0-24 months   Keneba           GAMBIA                         1                    NA                 0.0910145   -0.2418555    0.3346612
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.1685117   -0.6132761    0.1536356
0-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.2854441   -0.2147682    0.5796810
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2580541   -0.7036020    0.0709684
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0937188   -0.2273057    0.0253277
0-6 months    COHORTS          GUATEMALA                      1                    NA                -0.1960840   -0.9735642    0.2751100
0-6 months    COHORTS          INDIA                          1                    NA                -0.2344720   -0.6499997    0.0764112
0-6 months    COHORTS          PHILIPPINES                    1                    NA                -0.4193380   -0.8896764   -0.0660663
0-6 months    GMS-Nepal        NEPAL                          1                    NA                 0.3234218   -0.0292761    0.5552621
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0248201   -0.1530314    0.1752386
0-6 months    Keneba           GAMBIA                         1                    NA                -0.4232874   -1.0236367   -0.0010428
0-6 months    SAS-CompFeed     INDIA                          1                    NA                 0.1842814   -0.8418998    0.6387443
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1930522   -0.7150007    0.1700449
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.1426665   -0.2971232   -0.0066020
6-24 months   COHORTS          GUATEMALA                      1                    NA                -0.3329670   -1.6972387    0.3412518
6-24 months   COHORTS          INDIA                          1                    NA                 0.2192541   -0.1954048    0.4900773
6-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.2817858    0.0097302    0.4790999
6-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.1610613   -0.6544867    0.5746003
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0070577   -0.2348613    0.2015828
6-24 months   Keneba           GAMBIA                         1                    NA                 0.5140932    0.0112074    0.7612185
6-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.3510301   -0.0445179    0.5967882
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3472048   -1.2999942    0.2108846
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.1417264   -0.0888094    0.3234503
