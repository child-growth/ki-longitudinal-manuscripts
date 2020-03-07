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

**Intervention Variable:** parity

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        parity    ever_sstunted   n_cell       n
------------  ---------------  -----------------------------  -------  --------------  -------  ------
0-24 months   COHORTS          GUATEMALA                      1                     0      121    1360
0-24 months   COHORTS          GUATEMALA                      1                     1       92    1360
0-24 months   COHORTS          GUATEMALA                      2                     0      105    1360
0-24 months   COHORTS          GUATEMALA                      2                     1       87    1360
0-24 months   COHORTS          GUATEMALA                      3+                    0      503    1360
0-24 months   COHORTS          GUATEMALA                      3+                    1      452    1360
0-24 months   COHORTS          INDIA                          1                     0      723    4630
0-24 months   COHORTS          INDIA                          1                     1       89    4630
0-24 months   COHORTS          INDIA                          2                     0     1061    4630
0-24 months   COHORTS          INDIA                          2                     1      124    4630
0-24 months   COHORTS          INDIA                          3+                    0     2205    4630
0-24 months   COHORTS          INDIA                          3+                    1      428    4630
0-24 months   COHORTS          PHILIPPINES                    1                     0      505    3058
0-24 months   COHORTS          PHILIPPINES                    1                     1      173    3058
0-24 months   COHORTS          PHILIPPINES                    2                     0      470    3058
0-24 months   COHORTS          PHILIPPINES                    2                     1      220    3058
0-24 months   COHORTS          PHILIPPINES                    3+                    0      994    3058
0-24 months   COHORTS          PHILIPPINES                    3+                    1      696    3058
0-24 months   GMS-Nepal        NEPAL                          1                     0      159     698
0-24 months   GMS-Nepal        NEPAL                          1                     1       52     698
0-24 months   GMS-Nepal        NEPAL                          2                     0      143     698
0-24 months   GMS-Nepal        NEPAL                          2                     1       38     698
0-24 months   GMS-Nepal        NEPAL                          3+                    0      227     698
0-24 months   GMS-Nepal        NEPAL                          3+                    1       79     698
0-24 months   JiVitA-3         BANGLADESH                     1                     0     7949   27227
0-24 months   JiVitA-3         BANGLADESH                     1                     1     2303   27227
0-24 months   JiVitA-3         BANGLADESH                     2                     0     7618   27227
0-24 months   JiVitA-3         BANGLADESH                     2                     1     1381   27227
0-24 months   JiVitA-3         BANGLADESH                     3+                    0     6638   27227
0-24 months   JiVitA-3         BANGLADESH                     3+                    1     1338   27227
0-24 months   Keneba           GAMBIA                         1                     0      182    1990
0-24 months   Keneba           GAMBIA                         1                     1       59    1990
0-24 months   Keneba           GAMBIA                         2                     0      173    1990
0-24 months   Keneba           GAMBIA                         2                     1       41    1990
0-24 months   Keneba           GAMBIA                         3+                    0     1158    1990
0-24 months   Keneba           GAMBIA                         3+                    1      377    1990
0-24 months   PROVIDE          BANGLADESH                     1                     0      227     700
0-24 months   PROVIDE          BANGLADESH                     1                     1       44     700
0-24 months   PROVIDE          BANGLADESH                     2                     0      214     700
0-24 months   PROVIDE          BANGLADESH                     2                     1       30     700
0-24 months   PROVIDE          BANGLADESH                     3+                    0      164     700
0-24 months   PROVIDE          BANGLADESH                     3+                    1       21     700
0-24 months   SAS-CompFeed     INDIA                          1                     0      310    1533
0-24 months   SAS-CompFeed     INDIA                          1                     1      142    1533
0-24 months   SAS-CompFeed     INDIA                          2                     0      261    1533
0-24 months   SAS-CompFeed     INDIA                          2                     1       99    1533
0-24 months   SAS-CompFeed     INDIA                          3+                    0      455    1533
0-24 months   SAS-CompFeed     INDIA                          3+                    1      266    1533
0-24 months   SAS-FoodSuppl    INDIA                          1                     0       17     418
0-24 months   SAS-FoodSuppl    INDIA                          1                     1        4     418
0-24 months   SAS-FoodSuppl    INDIA                          2                     0       46     418
0-24 months   SAS-FoodSuppl    INDIA                          2                     1       31     418
0-24 months   SAS-FoodSuppl    INDIA                          3+                    0      154     418
0-24 months   SAS-FoodSuppl    INDIA                          3+                    1      166     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      750    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       71    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      688    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       83    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                    0      685    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                    1       80    2357
0-24 months   ZVITAMBO         ZIMBABWE                       1                     0     5089   14073
0-24 months   ZVITAMBO         ZIMBABWE                       1                     1      980   14073
0-24 months   ZVITAMBO         ZIMBABWE                       2                     0     3551   14073
0-24 months   ZVITAMBO         ZIMBABWE                       2                     1      661   14073
0-24 months   ZVITAMBO         ZIMBABWE                       3+                    0     3067   14073
0-24 months   ZVITAMBO         ZIMBABWE                       3+                    1      725   14073
0-6 months    COHORTS          GUATEMALA                      1                     0      142    1091
0-6 months    COHORTS          GUATEMALA                      1                     1       17    1091
0-6 months    COHORTS          GUATEMALA                      2                     0      145    1091
0-6 months    COHORTS          GUATEMALA                      2                     1       13    1091
0-6 months    COHORTS          GUATEMALA                      3+                    0      694    1091
0-6 months    COHORTS          GUATEMALA                      3+                    1       80    1091
0-6 months    COHORTS          INDIA                          1                     0      725    4473
0-6 months    COHORTS          INDIA                          1                     1       40    4473
0-6 months    COHORTS          INDIA                          2                     0     1102    4473
0-6 months    COHORTS          INDIA                          2                     1       42    4473
0-6 months    COHORTS          INDIA                          3+                    0     2431    4473
0-6 months    COHORTS          INDIA                          3+                    1      133    4473
0-6 months    COHORTS          PHILIPPINES                    1                     0      638    3058
0-6 months    COHORTS          PHILIPPINES                    1                     1       40    3058
0-6 months    COHORTS          PHILIPPINES                    2                     0      654    3058
0-6 months    COHORTS          PHILIPPINES                    2                     1       36    3058
0-6 months    COHORTS          PHILIPPINES                    3+                    0     1575    3058
0-6 months    COHORTS          PHILIPPINES                    3+                    1      115    3058
0-6 months    GMS-Nepal        NEPAL                          1                     0      184     698
0-6 months    GMS-Nepal        NEPAL                          1                     1       27     698
0-6 months    GMS-Nepal        NEPAL                          2                     0      170     698
0-6 months    GMS-Nepal        NEPAL                          2                     1       11     698
0-6 months    GMS-Nepal        NEPAL                          3+                    0      284     698
0-6 months    GMS-Nepal        NEPAL                          3+                    1       22     698
0-6 months    JiVitA-3         BANGLADESH                     1                     0     8230   27161
0-6 months    JiVitA-3         BANGLADESH                     1                     1     1980   27161
0-6 months    JiVitA-3         BANGLADESH                     2                     0     7948   27161
0-6 months    JiVitA-3         BANGLADESH                     2                     1     1032   27161
0-6 months    JiVitA-3         BANGLADESH                     3+                    0     6980   27161
0-6 months    JiVitA-3         BANGLADESH                     3+                    1      991   27161
0-6 months    Keneba           GAMBIA                         1                     0      197    1853
0-6 months    Keneba           GAMBIA                         1                     1       38    1853
0-6 months    Keneba           GAMBIA                         2                     0      181    1853
0-6 months    Keneba           GAMBIA                         2                     1       24    1853
0-6 months    Keneba           GAMBIA                         3+                    0     1261    1853
0-6 months    Keneba           GAMBIA                         3+                    1      152    1853
0-6 months    PROVIDE          BANGLADESH                     1                     0      257     700
0-6 months    PROVIDE          BANGLADESH                     1                     1       14     700
0-6 months    PROVIDE          BANGLADESH                     2                     0      234     700
0-6 months    PROVIDE          BANGLADESH                     2                     1       10     700
0-6 months    PROVIDE          BANGLADESH                     3+                    0      178     700
0-6 months    PROVIDE          BANGLADESH                     3+                    1        7     700
0-6 months    SAS-CompFeed     INDIA                          1                     0      380    1530
0-6 months    SAS-CompFeed     INDIA                          1                     1       71    1530
0-6 months    SAS-CompFeed     INDIA                          2                     0      314    1530
0-6 months    SAS-CompFeed     INDIA                          2                     1       45    1530
0-6 months    SAS-CompFeed     INDIA                          3+                    0      607    1530
0-6 months    SAS-CompFeed     INDIA                          3+                    1      113    1530
0-6 months    SAS-FoodSuppl    INDIA                          1                     0       18     416
0-6 months    SAS-FoodSuppl    INDIA                          1                     1        2     416
0-6 months    SAS-FoodSuppl    INDIA                          2                     0       67     416
0-6 months    SAS-FoodSuppl    INDIA                          2                     1       10     416
0-6 months    SAS-FoodSuppl    INDIA                          3+                    0      281     416
0-6 months    SAS-FoodSuppl    INDIA                          3+                    1       38     416
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      781    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       40    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      738    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       33    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                    0      736    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                    1       29    2357
0-6 months    ZVITAMBO         ZIMBABWE                       1                     0     5503   14056
0-6 months    ZVITAMBO         ZIMBABWE                       1                     1      559   14056
0-6 months    ZVITAMBO         ZIMBABWE                       2                     0     3875   14056
0-6 months    ZVITAMBO         ZIMBABWE                       2                     1      332   14056
0-6 months    ZVITAMBO         ZIMBABWE                       3+                    0     3396   14056
0-6 months    ZVITAMBO         ZIMBABWE                       3+                    1      391   14056


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/0ba54b2e-98cc-4042-b799-78288ff80952/67065f75-e38b-44ff-907b-cbf3e78394d7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0ba54b2e-98cc-4042-b799-78288ff80952/67065f75-e38b-44ff-907b-cbf3e78394d7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0ba54b2e-98cc-4042-b799-78288ff80952/67065f75-e38b-44ff-907b-cbf3e78394d7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0ba54b2e-98cc-4042-b799-78288ff80952/67065f75-e38b-44ff-907b-cbf3e78394d7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                0.4319249   0.3653784   0.4984714
0-24 months   COHORTS          GUATEMALA                      2                    NA                0.4531250   0.3826865   0.5235635
0-24 months   COHORTS          GUATEMALA                      3+                   NA                0.4732984   0.4416206   0.5049763
0-24 months   COHORTS          INDIA                          1                    NA                0.1096059   0.0881165   0.1310954
0-24 months   COHORTS          INDIA                          2                    NA                0.1046414   0.0872118   0.1220709
0-24 months   COHORTS          INDIA                          3+                   NA                0.1625522   0.1484579   0.1766466
0-24 months   COHORTS          PHILIPPINES                    1                    NA                0.2551622   0.2223419   0.2879826
0-24 months   COHORTS          PHILIPPINES                    2                    NA                0.3188406   0.2840625   0.3536187
0-24 months   COHORTS          PHILIPPINES                    3+                   NA                0.4118343   0.3883657   0.4353029
0-24 months   GMS-Nepal        NEPAL                          1                    NA                0.2464455   0.1882572   0.3046338
0-24 months   GMS-Nepal        NEPAL                          2                    NA                0.2099448   0.1505701   0.2693194
0-24 months   GMS-Nepal        NEPAL                          3+                   NA                0.2581699   0.2091013   0.3072385
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.2246391   0.2154013   0.2338769
0-24 months   JiVitA-3         BANGLADESH                     2                    NA                0.1534615   0.1450391   0.1618839
0-24 months   JiVitA-3         BANGLADESH                     3+                   NA                0.1677533   0.1592428   0.1762637
0-24 months   Keneba           GAMBIA                         1                    NA                0.2448133   0.1905141   0.2991125
0-24 months   Keneba           GAMBIA                         2                    NA                0.1915888   0.1388474   0.2443302
0-24 months   Keneba           GAMBIA                         3+                   NA                0.2456026   0.2240639   0.2671413
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1623616   0.1184233   0.2063000
0-24 months   PROVIDE          BANGLADESH                     2                    NA                0.1229508   0.0817182   0.1641835
0-24 months   PROVIDE          BANGLADESH                     3+                   NA                0.1135135   0.0677697   0.1592573
0-24 months   SAS-CompFeed     INDIA                          1                    NA                0.3141593   0.2753794   0.3529392
0-24 months   SAS-CompFeed     INDIA                          2                    NA                0.2750000   0.2320870   0.3179130
0-24 months   SAS-CompFeed     INDIA                          3+                   NA                0.3689320   0.3349333   0.4029308
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0864799   0.0672496   0.1057102
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1076524   0.0857702   0.1295346
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1045752   0.0828862   0.1262641
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1614764   0.1522184   0.1707344
0-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.1569326   0.1459474   0.1679178
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.1911920   0.1786754   0.2037086
0-6 months    COHORTS          GUATEMALA                      1                    NA                0.1069182   0.0588653   0.1549712
0-6 months    COHORTS          GUATEMALA                      2                    NA                0.0822785   0.0394121   0.1251449
0-6 months    COHORTS          GUATEMALA                      3+                   NA                0.1033592   0.0819026   0.1248158
0-6 months    COHORTS          INDIA                          1                    NA                0.0522876   0.0365113   0.0680638
0-6 months    COHORTS          INDIA                          2                    NA                0.0367133   0.0258146   0.0476119
0-6 months    COHORTS          INDIA                          3+                   NA                0.0518721   0.0432871   0.0604570
0-6 months    COHORTS          PHILIPPINES                    1                    NA                0.0589971   0.0412586   0.0767355
0-6 months    COHORTS          PHILIPPINES                    2                    NA                0.0521739   0.0355786   0.0687692
0-6 months    COHORTS          PHILIPPINES                    3+                   NA                0.0680473   0.0560391   0.0800555
0-6 months    GMS-Nepal        NEPAL                          1                    NA                0.1279621   0.0828569   0.1730673
0-6 months    GMS-Nepal        NEPAL                          2                    NA                0.0607735   0.0259428   0.0956042
0-6 months    GMS-Nepal        NEPAL                          3+                   NA                0.0718954   0.0429321   0.1008587
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.1939275   0.1853191   0.2025359
0-6 months    JiVitA-3         BANGLADESH                     2                    NA                0.1149220   0.1072641   0.1225800
0-6 months    JiVitA-3         BANGLADESH                     3+                   NA                0.1243257   0.1168634   0.1317879
0-6 months    Keneba           GAMBIA                         1                    NA                0.1617021   0.1146165   0.2087878
0-6 months    Keneba           GAMBIA                         2                    NA                0.1170732   0.0730502   0.1610961
0-6 months    Keneba           GAMBIA                         3+                   NA                0.1075725   0.0914129   0.1237322
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.0516605   0.0252890   0.0780320
0-6 months    PROVIDE          BANGLADESH                     2                    NA                0.0409836   0.0160904   0.0658769
0-6 months    PROVIDE          BANGLADESH                     3+                   NA                0.0378378   0.0103234   0.0653522
0-6 months    SAS-CompFeed     INDIA                          1                    NA                0.1574279   0.1267104   0.1881455
0-6 months    SAS-CompFeed     INDIA                          2                    NA                0.1253482   0.1101129   0.1405835
0-6 months    SAS-CompFeed     INDIA                          3+                   NA                0.1569444   0.1176418   0.1962471
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0487211   0.0339918   0.0634503
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0428016   0.0285112   0.0570919
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0379085   0.0243726   0.0514444
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.0922138   0.0849302   0.0994974
0-6 months    ZVITAMBO         ZIMBABWE                       2                    NA                0.0789161   0.0707689   0.0870633
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   NA                0.1032480   0.0935564   0.1129395


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.4639706   0.4374564   0.4904847
0-24 months   COHORTS          INDIA                          NA                   NA                0.1384449   0.1284958   0.1483940
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.3561151   0.3391405   0.3730897
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.2421203   0.2103189   0.2739218
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1844493   0.1788538   0.1900447
0-24 months   Keneba           GAMBIA                         NA                   NA                0.2396985   0.2209375   0.2584595
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1357143   0.1103250   0.1611036
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3307241   0.3024794   0.3589688
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0992787   0.0872038   0.1113537
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1681234   0.1619444   0.1743023
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.1008249   0.0829501   0.1186997
0-6 months    COHORTS          INDIA                          NA                   NA                0.0480662   0.0417969   0.0543355
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0624591   0.0538810   0.0710373
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.0859599   0.0651504   0.1067694
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.1473804   0.1423344   0.1524264
0-6 months    Keneba           GAMBIA                         NA                   NA                0.1154884   0.1009322   0.1300446
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0442857   0.0290345   0.0595370
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.1496732   0.1307571   0.1685893
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0432754   0.0350591   0.0514916
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0912066   0.0864469   0.0959663


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      2                    1                 1.0490829   0.8428641   1.3057561
0-24 months   COHORTS          GUATEMALA                      3+                   1                 1.0957888   0.9263484   1.2962218
0-24 months   COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          2                    1                 0.9547054   0.7381455   1.2348004
0-24 months   COHORTS          INDIA                          3+                   1                 1.4830607   1.1968942   1.8376471
0-24 months   COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    2                    1                 1.2495602   1.0556359   1.4791091
0-24 months   COHORTS          PHILIPPINES                    3+                   1                 1.6140096   1.4021938   1.8578224
0-24 months   GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          2                    1                 0.8518912   0.5893634   1.2313601
0-24 months   GMS-Nepal        NEPAL                          3+                   1                 1.0475742   0.7736567   1.4184736
0-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     2                    1                 0.6831469   0.6406254   0.7284907
0-24 months   JiVitA-3         BANGLADESH                     3+                   1                 0.7467679   0.7011189   0.7953890
0-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         2                    1                 0.7825915   0.5495454   1.1144656
0-24 months   Keneba           GAMBIA                         3+                   1                 1.0032242   0.7903436   1.2734446
0-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     2                    1                 0.7572653   0.4921499   1.1651953
0-24 months   PROVIDE          BANGLADESH                     3+                   1                 0.6991400   0.4302792   1.1359990
0-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          2                    1                 0.8753521   0.7700930   0.9949985
0-24 months   SAS-CompFeed     INDIA                          3+                   1                 1.1743471   1.0140791   1.3599442
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.2448256   0.9210173   1.6824774
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.2092424   0.8921851   1.6389728
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 0.9718610   0.8877859   1.0638982
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 1.1840246   1.0853436   1.2916779
0-6 months    COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      2                    1                 0.7695458   0.3867355   1.5312810
0-6 months    COHORTS          GUATEMALA                      3+                   1                 0.9667123   0.5892423   1.5859904
0-6 months    COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          2                    1                 0.7021416   0.4598322   1.0721364
0-6 months    COHORTS          INDIA                          3+                   1                 0.9920534   0.7032030   1.3995531
0-6 months    COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    2                    1                 0.8843478   0.5708690   1.3699659
0-6 months    COHORTS          PHILIPPINES                    3+                   1                 1.1534024   0.8139051   1.6345113
0-6 months    GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          2                    1                 0.4749335   0.2423374   0.9307760
0-6 months    GMS-Nepal        NEPAL                          3+                   1                 0.5618494   0.3289615   0.9596101
0-6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     2                    1                 0.5926031   0.5495670   0.6390093
0-6 months    JiVitA-3         BANGLADESH                     3+                   1                 0.6410935   0.5965710   0.6889388
0-6 months    Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         2                    1                 0.7240051   0.4499812   1.1649008
0-6 months    Keneba           GAMBIA                         3+                   1                 0.6652512   0.4793888   0.9231739
0-6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     2                    1                 0.7933255   0.3588172   1.7540002
0-6 months    PROVIDE          BANGLADESH                     3+                   1                 0.7324324   0.3012417   1.7808198
0-6 months    SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          2                    1                 0.7962258   0.6163824   1.0285426
0-6 months    SAS-CompFeed     INDIA                          3+                   1                 0.9969288   0.6922798   1.4356436
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8785019   0.5599281   1.3783300
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.7780719   0.4873385   1.2422492
0-6 months    ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       2                    1                 0.8557949   0.7514781   0.9745926
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   1                 1.1196585   0.9903929   1.2657958


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                 0.0320457   -0.0291449    0.0932363
0-24 months   COHORTS          INDIA                          1                    NA                 0.0288390    0.0088690    0.0488091
0-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.1009529    0.0711592    0.1307466
0-24 months   GMS-Nepal        NEPAL                          1                    NA                -0.0043252   -0.0528037    0.0441533
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0401898   -0.0467327   -0.0336470
0-24 months   Keneba           GAMBIA                         1                    NA                -0.0051148   -0.0559699    0.0457403
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0266473   -0.0595164    0.0062217
0-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0165648   -0.0124377    0.0455673
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0127988   -0.0032630    0.0288607
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0066470   -0.0004215    0.0137155
0-6 months    COHORTS          GUATEMALA                      1                    NA                -0.0060933   -0.0503149    0.0381283
0-6 months    COHORTS          INDIA                          1                    NA                -0.0042214   -0.0184713    0.0100285
0-6 months    COHORTS          PHILIPPINES                    1                    NA                 0.0034621   -0.0123085    0.0192327
0-6 months    GMS-Nepal        NEPAL                          1                    NA                -0.0420022   -0.0771803   -0.0068241
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0465471   -0.0525456   -0.0405486
0-6 months    Keneba           GAMBIA                         1                    NA                -0.0462137   -0.0894179   -0.0030096
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0073748   -0.0271125    0.0123629
0-6 months    SAS-CompFeed     INDIA                          1                    NA                -0.0077547   -0.0421491    0.0266396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0054457   -0.0169921    0.0061007
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0010072   -0.0064795    0.0044651


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                 0.0690684   -0.0726572    0.1920684
0-24 months   COHORTS          INDIA                          1                    NA                 0.2083068    0.0507808    0.3396908
0-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.2834838    0.1949952    0.3622455
0-24 months   GMS-Nepal        NEPAL                          1                    NA                -0.0178637   -0.2391332    0.1638942
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.2178910   -0.2534741   -0.1833180
0-24 months   Keneba           GAMBIA                         1                    NA                -0.0213384   -0.2571432    0.1702360
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.1963488   -0.4626635    0.0214766
0-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0500864   -0.0415103    0.1336275
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1289182   -0.0481262    0.2760572
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0395365   -0.0034250    0.0806586
0-6 months    COHORTS          GUATEMALA                      1                    NA                -0.0604345   -0.6034972    0.2987070
0-6 months    COHORTS          INDIA                          1                    NA                -0.0878249   -0.4283632    0.1715251
0-6 months    COHORTS          PHILIPPINES                    1                    NA                 0.0554294   -0.2339004    0.2769160
0-6 months    GMS-Nepal        NEPAL                          1                    NA                -0.4886256   -0.9432601   -0.1403549
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.3158295   -0.3563066   -0.2765603
0-6 months    Keneba           GAMBIA                         1                    NA                -0.4001591   -0.8261769   -0.0735244
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.1665278   -0.7044880    0.2016446
0-6 months    SAS-CompFeed     INDIA                          1                    NA                -0.0518111   -0.3124778    0.1570855
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1258389   -0.4257008    0.1109543
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0110429   -0.0728560    0.0472087
