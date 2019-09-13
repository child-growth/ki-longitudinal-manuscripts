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
* vagbrth
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
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
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0       62     373
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 1        7     373
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                 0       76     373
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                 1       11     373
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                0      171     373
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                1       46     373
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      237     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        4     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 0      223     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 1        4     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                0      165     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                1        7     640
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      710    2132
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       18    2132
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0      683    2132
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1       20    2132
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                0      682    2132
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                1       19    2132
0-24 months   ki1101329-Keneba           GAMBIA                         1                 0      220    1850
0-24 months   ki1101329-Keneba           GAMBIA                         1                 1        9    1850
0-24 months   ki1101329-Keneba           GAMBIA                         2                 0      190    1850
0-24 months   ki1101329-Keneba           GAMBIA                         2                 1        9    1850
0-24 months   ki1101329-Keneba           GAMBIA                         3+                0     1350    1850
0-24 months   ki1101329-Keneba           GAMBIA                         3+                1       72    1850
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      148     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       19     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 0      130     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 1       25     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                0      229     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                1       41     592
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0     3651    9332
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       61    9332
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                 0     2816    9332
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                 1       51    9332
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                0     2698    9332
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                1       55    9332
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     5333   15672
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      365   15672
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 0     5166   15672
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 1      257   15672
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                0     4276   15672
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                1      275   15672
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      234     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        5     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                 0      224     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                 1        3     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                0      165     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                1        6     637
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      681    2030
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       14    2030
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0      652    2030
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1       17    2030
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                0      646    2030
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                1       20    2030
0-6 months    ki1101329-Keneba           GAMBIA                         1                 0      203    1624
0-6 months    ki1101329-Keneba           GAMBIA                         1                 1        3    1624
0-6 months    ki1101329-Keneba           GAMBIA                         2                 0      177    1624
0-6 months    ki1101329-Keneba           GAMBIA                         2                 1        0    1624
0-6 months    ki1101329-Keneba           GAMBIA                         3+                0     1205    1624
0-6 months    ki1101329-Keneba           GAMBIA                         3+                1       36    1624
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      128     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       16     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                 0      122     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                 1       17     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                0      227     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                1       32     542
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      235     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 1        6     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                 0      194     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                 1        5     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                0      167     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                1        3     610
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                 0      158     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                 1        9     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                 0      174     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                 1       13     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                0      469     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                1       30     853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0       18      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1        1      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                 0       15      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                 1        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                0       11      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                1        1      46
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 0      378    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 1       30    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                 0      291    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                 1       27    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                0      583    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                1       57    1366
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0       62     373
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 1        7     373
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                 0       76     373
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                 1       11     373
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                0      171     373
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                1       46     373
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      237     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        4     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 0      223     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 1        4     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                0      165     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                1        7     640
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      710    2132
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       18    2132
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0      683    2132
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1       20    2132
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                0      682    2132
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                1       19    2132
6-24 months   ki1101329-Keneba           GAMBIA                         1                 0      220    1850
6-24 months   ki1101329-Keneba           GAMBIA                         1                 1        9    1850
6-24 months   ki1101329-Keneba           GAMBIA                         2                 0      190    1850
6-24 months   ki1101329-Keneba           GAMBIA                         2                 1        9    1850
6-24 months   ki1101329-Keneba           GAMBIA                         3+                0     1350    1850
6-24 months   ki1101329-Keneba           GAMBIA                         3+                1       72    1850
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      148     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       19     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 0      130     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 1       25     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                0      229     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                1       41     592
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0     3651    9332
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       61    9332
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                 0     2816    9332
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                 1       51    9332
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                0     2698    9332
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                1       55    9332
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     5333   15672
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      365   15672
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 0     5166   15672
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 1      257   15672
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                0     4276   15672
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                1      275   15672


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

* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/f87ad602-0b7c-4a90-bd01-b2757e36b7dc/90ee5d3c-7ccd-4886-9739-24972703cbf5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f87ad602-0b7c-4a90-bd01-b2757e36b7dc/90ee5d3c-7ccd-4886-9739-24972703cbf5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f87ad602-0b7c-4a90-bd01-b2757e36b7dc/90ee5d3c-7ccd-4886-9739-24972703cbf5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f87ad602-0b7c-4a90-bd01-b2757e36b7dc/90ee5d3c-7ccd-4886-9739-24972703cbf5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0612154   0.0292447   0.0931861
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.0967276   0.0603010   0.1331541
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.0820545   0.0328692   0.1312398
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1014493   0.0301143   0.1727842
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.1264368   0.0565081   0.1963655
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.2119816   0.1575290   0.2664341
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0246073   0.0131688   0.0360458
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0282231   0.0158684   0.0405779
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0268993   0.0147871   0.0390115
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.0393013   0.0141277   0.0644749
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0452261   0.0163470   0.0741053
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.0506329   0.0392344   0.0620315
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0963510   0.0185660   0.1741361
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1410399   0.0697395   0.2123402
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1056210   0.0729865   0.1382555
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0157797   0.0107688   0.0207907
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0183727   0.0101624   0.0265829
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0205542   0.0112364   0.0298720
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0657889   0.0426811   0.0888966
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0730091   0.0526783   0.0933398
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1280679   0.1116673   0.1444685
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0391054   0.0237114   0.0544994
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0305949   0.0171096   0.0440802
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0640144   0.0519084   0.0761203
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0765803   0.0605793   0.0925813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0490466   0.0375255   0.0605677
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0621901   0.0520886   0.0722916
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0155460   0.0057229   0.0253690
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0282031   0.0093556   0.0470506
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0181179   0.0096318   0.0266040
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0709793   0.0259926   0.1159660
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1063733   0.0378133   0.1749333
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.0982663   0.0595581   0.1369745
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0538922   0.0196251   0.0881594
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0695187   0.0330444   0.1059930
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0601202   0.0392514   0.0809891
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0612154   0.0292447   0.0931861
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.0967276   0.0603010   0.1331541
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.0820545   0.0328692   0.1312398
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1014493   0.0301143   0.1727842
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.1264368   0.0565081   0.1963655
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.2119816   0.1575290   0.2664341
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0246091   0.0132439   0.0359744
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0283226   0.0159804   0.0406647
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0270187   0.0149227   0.0391148
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.0393013   0.0141277   0.0644749
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0452261   0.0163470   0.0741053
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.0506329   0.0392344   0.0620315
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0932835   0.0219605   0.1646064
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1447833   0.0709328   0.2186337
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1109390   0.0754001   0.1464778
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0165322   0.0109762   0.0220883
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0179295   0.0107278   0.0251312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0206789   0.0113714   0.0299864
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0672587   0.0440903   0.0904271
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0707176   0.0503290   0.0911062
6-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1281185   0.1115448   0.1446922
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0386727   0.0232898   0.0540557
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0308109   0.0169367   0.0446851
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0644410   0.0522452   0.0766369
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0758723   0.0593331   0.0924114
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0482282   0.0396292   0.0568273
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0603196   0.0506332   0.0700059


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1715818   0.1332696   0.2098940
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267355   0.0198866   0.0335843
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0486486   0.0388428   0.0584545
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1435811   0.1153098   0.1718524
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178954   0.0152055   0.0205853
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1020862   0.0921879   0.1119845
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572358   0.0531429   0.0613287
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0251232   0.0183136   0.0319327
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1199262   0.0925504   0.1473020
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0834553   0.0601989   0.1067118
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1715818   0.1332696   0.2098940
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267355   0.0198866   0.0335843
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0486486   0.0388428   0.0584545
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1435811   0.1153098   0.1718524
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178954   0.0152055   0.0205853
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1020862   0.0921879   0.1119845
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572358   0.0531429   0.0613287


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.5801175   0.7973545   3.1313192
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.3404226   0.5573966   3.2234364
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.2463054   0.5094502   3.0489281
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 2.0895326   0.9883986   4.4173943
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1469402   0.6055280   2.1724373
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0931414   0.5722080   2.0883282
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.1507536   0.4657865   2.8430063
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.2883261   0.6533823   2.5402955
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.4638125   0.5656072   3.7884011
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.0962104   0.4607393   2.6081501
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1643196   0.6729047   2.0146093
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.3025663   0.7488884   2.2655965
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.1097478   0.7089944   1.7370238
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.9466503   1.3396230   2.8287415
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.7823706   0.4332584   1.4127913
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.6369699   1.0576941   2.5335023
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.6404598   0.4693116   0.8740222
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8120898   0.6199254   1.0638213
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.8141699   0.7227638   4.5536485
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1654388   0.5300816   2.5623366
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.4986528   0.6065478   3.7028576
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.3844365   0.6558700   2.9223237
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.2899584   0.5656642   2.9416615
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.1155645   0.5406060   2.3020166
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.5801175   0.7973545   3.1313192
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.3404226   0.5573966   3.2234364
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.2463054   0.5094502   3.0489281
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 2.0895326   0.9883986   4.4173943
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1508961   0.6099389   2.1716303
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0979144   0.5770771   2.0888302
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.1507536   0.4657865   2.8430063
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.2883261   0.6533823   2.5402955
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.5520783   0.6197993   3.8866569
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1892670   0.5180159   2.7303335
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0845191   0.6423408   1.8310869
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.2508245   0.7132385   2.1936029
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0514264   0.6710639   1.6473805
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.9048615   1.3185883   2.7518047
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.7967091   0.4368758   1.4529194
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.6663178   1.0726688   2.5885110
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.6356505   0.4814331   0.8392685
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7950146   0.6029350   1.0482859


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0222399   -0.0127241    0.0572040
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0701325    0.0017671    0.1384979
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0021281   -0.0073487    0.0116050
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0093473   -0.0145896    0.0332843
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0472300   -0.0288634    0.1233235
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0021157   -0.0023209    0.0065523
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0362974    0.0138917    0.0587031
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0121219   -0.0020376    0.0262814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0193445   -0.0345249   -0.0041641
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0095772    0.0003303    0.0188240
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0489469    0.0050799    0.0928140
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0070691   -0.0241168    0.0382550
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0222399   -0.0127241    0.0572040
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0701325    0.0017671    0.1384979
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0021263   -0.0072845    0.0115371
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0093473   -0.0145896    0.0332843
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0502976   -0.0194576    0.1200528
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0013632   -0.0036153    0.0063416
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0348275    0.0123854    0.0572696
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0125546   -0.0016155    0.0267247
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0186364   -0.0343827   -0.0028902


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.2664890   -0.2495519    0.5694149
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.4087409   -0.1444251    0.6945302
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0795996   -0.3523036    0.3735601
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1921396   -0.4828459    0.5598744
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.3289434   -0.4690753    0.6934691
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1182241   -0.1671139    0.3338022
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.3555559    0.0974939    0.5398278
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2366299   -0.0931011    0.4668985
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.3379784   -0.6305651   -0.0978931
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3812087   -0.0951174    0.6503547
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.4081422   -0.0731081    0.6735691
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1159604   -0.5753898    0.5039158
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.2664890   -0.2495519    0.5694149
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.4087409   -0.1444251    0.6945302
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0795321   -0.3486392    0.3717659
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1921396   -0.4828459    0.5598744
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.3503080   -0.3613162    0.6899327
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0761753   -0.2481042    0.3162012
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.3411580    0.0834820    0.5263893
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2450762   -0.0855165    0.4749873
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.3256077   -0.6305947   -0.0776656
