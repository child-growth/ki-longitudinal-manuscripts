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

**Outcome Variable:** pers_wast

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
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        parity    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  -------  ----------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 0      378    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 1       30    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                 0      291    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                 1       27    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                0      583    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                1       57    1366
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0        1     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 1        1     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                 0       62     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                 1        7     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                0      247     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                1       57     375
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      238     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        4     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 0      223     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 1        4     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                0      165     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                1        7     641
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      710    2132
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       18    2132
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0      683    2132
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1       20    2132
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                0      682    2132
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                1       19    2132
0-24 months   ki1101329-Keneba           GAMBIA                         1                 0      218    1853
0-24 months   ki1101329-Keneba           GAMBIA                         1                 1       11    1853
0-24 months   ki1101329-Keneba           GAMBIA                         2                 0      190    1853
0-24 months   ki1101329-Keneba           GAMBIA                         2                 1       10    1853
0-24 months   ki1101329-Keneba           GAMBIA                         3+                0     1342    1853
0-24 months   ki1101329-Keneba           GAMBIA                         3+                1       82    1853
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      150     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       19     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 0      130     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 1       25     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                0      237     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                1       36     597
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0     3741    9526
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       63    9526
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                 0     2873    9526
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                 1       51    9526
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                0     2744    9526
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                1       54    9526
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                 0      142    1053
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                 1        4    1053
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                 0      144    1053
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                 1        3    1053
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                0      731    1053
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                1       29    1053
0-24 months   ki1135781-COHORTS          INDIA                          1                 0      550    3595
0-24 months   ki1135781-COHORTS          INDIA                          1                 1       46    3595
0-24 months   ki1135781-COHORTS          INDIA                          2                 0      825    3595
0-24 months   ki1135781-COHORTS          INDIA                          2                 1       73    3595
0-24 months   ki1135781-COHORTS          INDIA                          3+                0     1853    3595
0-24 months   ki1135781-COHORTS          INDIA                          3+                1      248    3595
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 0      583    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 1       24    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                 0      608    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                 1       19    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                0     1476    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                1      101    2811
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     5444   15803
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      365   15803
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 0     5185   15803
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 1      256   15803
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                0     4276   15803
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                1      277   15803
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      235     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        5     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                 0      224     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                 1        3     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                0      165     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                1        6     638
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      681    2030
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       14    2030
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0      652    2030
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1       17    2030
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                0      646    2030
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                1       20    2030
0-6 months    ki1101329-Keneba           GAMBIA                         1                 0      203    1633
0-6 months    ki1101329-Keneba           GAMBIA                         1                 1        5    1633
0-6 months    ki1101329-Keneba           GAMBIA                         2                 0      177    1633
0-6 months    ki1101329-Keneba           GAMBIA                         2                 1        2    1633
0-6 months    ki1101329-Keneba           GAMBIA                         3+                0     1203    1633
0-6 months    ki1101329-Keneba           GAMBIA                         3+                1       43    1633
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      139     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       15     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                 0      131     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                 1       17     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                0      235     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                1       30     567
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      248     632
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 1        6     632
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                 0      199     632
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                 1        5     632
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                0      171     632
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                1        3     632
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                 0      158     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                 1        9     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                 0      174     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                 1       13     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                0      469     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                1       30     853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0       22      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1        1      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                 0       15      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                 1        0      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                0       11      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                1        1      50
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 0      378    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 1       30    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                 0      291    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                 1       27    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                0      583    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                1       57    1366
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0        1     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 1        1     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                 0       62     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                 1        7     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                0      247     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                1       57     375
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      238     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        4     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 0      223     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 1        4     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                0      165     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                1        7     641
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      710    2132
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       18    2132
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0      683    2132
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1       20    2132
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                0      682    2132
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                1       19    2132
6-24 months   ki1101329-Keneba           GAMBIA                         1                 0      218    1853
6-24 months   ki1101329-Keneba           GAMBIA                         1                 1       11    1853
6-24 months   ki1101329-Keneba           GAMBIA                         2                 0      190    1853
6-24 months   ki1101329-Keneba           GAMBIA                         2                 1       10    1853
6-24 months   ki1101329-Keneba           GAMBIA                         3+                0     1342    1853
6-24 months   ki1101329-Keneba           GAMBIA                         3+                1       82    1853
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      150     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       19     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 0      130     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 1       25     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                0      237     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                1       36     597
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0     3741    9526
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       63    9526
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                 0     2873    9526
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                 1       51    9526
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                0     2744    9526
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                1       54    9526
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                 0      142    1053
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                 1        4    1053
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                 0      144    1053
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                 1        3    1053
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                0      731    1053
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                1       29    1053
6-24 months   ki1135781-COHORTS          INDIA                          1                 0      550    3595
6-24 months   ki1135781-COHORTS          INDIA                          1                 1       46    3595
6-24 months   ki1135781-COHORTS          INDIA                          2                 0      825    3595
6-24 months   ki1135781-COHORTS          INDIA                          2                 1       73    3595
6-24 months   ki1135781-COHORTS          INDIA                          3+                0     1853    3595
6-24 months   ki1135781-COHORTS          INDIA                          3+                1      248    3595
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 0      583    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 1       24    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                 0      608    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                 1       19    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                0     1476    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                1      101    2811
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     5444   15803
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      365   15803
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 0     5185   15803
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 1      256   15803
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                0     4276   15803
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                1      277   15803


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/b1e3e690-baec-426d-8359-bd634a19c15c/420ca67d-f164-4353-9425-e697557623f7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b1e3e690-baec-426d-8359-bd634a19c15c/420ca67d-f164-4353-9425-e697557623f7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b1e3e690-baec-426d-8359-bd634a19c15c/420ca67d-f164-4353-9425-e697557623f7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b1e3e690-baec-426d-8359-bd634a19c15c/420ca67d-f164-4353-9425-e697557623f7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0612154   0.0292447   0.0931861
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.0967276   0.0603010   0.1331541
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.0820545   0.0328692   0.1312398
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0248032   0.0134296   0.0361768
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0283693   0.0159803   0.0407584
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0268639   0.0148058   0.0389219
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1565650   0.1014357   0.2116943
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0244633   0.0096997   0.0392268
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.0520695   0.0396159   0.0645231
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0911386   0.0216073   0.1606699
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1625098   0.0311648   0.2938548
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1033944   0.0678023   0.1389865
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0155902   0.0107452   0.0204352
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0163668   0.0107614   0.0219722
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0214515   0.0120812   0.0308218
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0660866   0.0439050   0.0882683
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0709171   0.0510007   0.0908334
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1259379   0.1095853   0.1422905
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0393720   0.0239302   0.0548138
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0304997   0.0169616   0.0440378
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0640829   0.0519763   0.0761895
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0741854   0.0594601   0.0889107
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0481869   0.0381565   0.0582173
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0616368   0.0522955   0.0709781
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0153966   0.0054772   0.0253160
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0263536   0.0111915   0.0415158
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0177271   0.0095113   0.0259429
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0680972   0.0241174   0.1120770
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.0996008   0.0299810   0.1692207
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.0903797   0.0549919   0.1257674
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0538922   0.0196251   0.0881594
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0695187   0.0330444   0.1059930
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0601202   0.0392514   0.0809891
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0612154   0.0292447   0.0931861
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.0967276   0.0603010   0.1331541
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.0820545   0.0328692   0.1312398
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0246790   0.0133050   0.0360530
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0284869   0.0160921   0.0408816
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0268198   0.0147772   0.0388623
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1517109   0.0968621   0.2065598
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0253713   0.0103472   0.0403955
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.0519079   0.0396888   0.0641270
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0926810   0.0210448   0.1643172
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1679105   0.0350601   0.3007609
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.0989110   0.0656825   0.1321396
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0158145   0.0108572   0.0207718
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0174787   0.0108159   0.0241415
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0216475   0.0123418   0.0309531
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0692628   0.0450439   0.0934817
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0698000   0.0503314   0.0892685
6-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1276709   0.1114103   0.1439315
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0386238   0.0232601   0.0539875
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0303333   0.0167344   0.0439322
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0643626   0.0521513   0.0765738
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0728612   0.0576939   0.0880285
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0476252   0.0399414   0.0553089
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0634380   0.0534635   0.0734125


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267355   0.0198866   0.0335843
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0555855   0.0451506   0.0660205
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1340034   0.1066544   0.1613523
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176359   0.0149926   0.0202793
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1020862   0.0921879   0.1119845
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0568247   0.0527145   0.0609348
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0251232   0.0183136   0.0319327
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1093474   0.0836377   0.1350572
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0834553   0.0601989   0.1067118
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267355   0.0198866   0.0335843
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0555855   0.0451506   0.0660205
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1340034   0.1066544   0.1613523
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176359   0.0149926   0.0202793
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1020862   0.0921879   0.1119845
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0568247   0.0527145   0.0609348


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.5801175   0.7973545   3.1313192
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.3404226   0.5573966   3.2234364
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1437771   0.6071403   2.1547343
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0830803   0.5700629   2.0577779
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.1562500   0.0775635   0.3147622
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 0.3325743   0.2174397   0.5086729
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.7831061   0.5867062   5.4191813
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1344743   0.4903226   2.6248673
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0498134   0.6612229   1.6667726
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.3759580   0.8049907   2.3519034
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0730924   0.6928975   1.6619013
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.9056482   1.3298410   2.7307739
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.7746549   0.4284313   1.4006683
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.6276272   1.0531394   2.5154982
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.6495472   0.4884029   0.8638596
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8308485   0.6449576   1.0703173
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.7116577   0.7211600   4.0625827
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1513677   0.5200072   2.5492874
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.4626280   0.5642979   3.7910482
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.3272159   0.6230652   2.8271552
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.2899584   0.5656642   2.9416615
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.1155645   0.5406060   2.3020166
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.5801175   0.7973545   3.1313192
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.3404226   0.5573966   3.2234364
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1542973   0.6123997   2.1757067
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0867456   0.5710143   2.0682776
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.1672347   0.0834328   0.3352092
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 0.3421500   0.2224098   0.5263556
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.8117032   0.5995941   5.4741507
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.0672201   0.4586188   2.4834542
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1052300   0.6748147   1.8101759
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.3688352   0.8040970   2.3302037
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0077560   0.6443085   1.5762205
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.8432832   1.2706608   2.6739575
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.7853536   0.4313029   1.4300398
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.6663979   1.0723914   2.5894296
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.6536423   0.5033825   0.8487549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8706691   0.6680069   1.1348158


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0222399   -0.0127241    0.0572040
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0019322   -0.0074898    0.0113543
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1009795   -0.1552000   -0.0467590
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0428647   -0.0248484    0.1105779
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0020457   -0.0022095    0.0063010
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0359996    0.0145259    0.0574733
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0118553   -0.0023442    0.0260549
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0173607   -0.0312346   -0.0034868
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0097266    0.0003824    0.0190708
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0412503   -0.0014093    0.0839099
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0070691   -0.0241168    0.0382550
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0222399   -0.0127241    0.0572040
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0020565   -0.0073654    0.0114784
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0961254   -0.1501153   -0.0421355
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0413223   -0.0283197    0.1109644
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0018214   -0.0025519    0.0061948
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0328234    0.0093890    0.0562579
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0126036   -0.0015562    0.0267633
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0160365   -0.0303588   -0.0017142


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.2664890   -0.2495519    0.5694149
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0722729   -0.3558138    0.3651949
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -1.8166500   -3.0689129   -0.9497879
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.3198782   -0.4201151    0.6742759
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1159988   -0.1606014    0.3266784
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.3526390    0.1077283    0.5303267
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2314260   -0.0990792    0.4625447
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.3055141   -0.5734533   -0.0832017
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3871563   -0.0979691    0.6579345
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.3772403   -0.1425352    0.6605535
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1159604   -0.5753898    0.5039158
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.2664890   -0.2495519    0.5694149
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0769203   -0.3516050    0.3695819
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -1.7293241   -2.9781544   -0.8725292
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.3083680   -0.4580011    0.6719105
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1032799   -0.1816602    0.3195108
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.3215267    0.0511105    0.5148792
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2460319   -0.0842776    0.4757173
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.2822106   -0.5600438   -0.0538576
