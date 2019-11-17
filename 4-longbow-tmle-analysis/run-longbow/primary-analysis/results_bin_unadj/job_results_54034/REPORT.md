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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        parity    wasted   n_cell       n
----------  -------------------------  -----------------------------  -------  -------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              0      259    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              1       45    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          2              0      232    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          2              1       26    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+             0      494    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+             1       47    1103
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              0      152     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              1       50     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     2              0      144     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     2              1       38     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+             0      119     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+             1       29     532
Birth       ki1101329-Keneba           GAMBIA                         1              0       99    1338
Birth       ki1101329-Keneba           GAMBIA                         1              1       47    1338
Birth       ki1101329-Keneba           GAMBIA                         2              0      110    1338
Birth       ki1101329-Keneba           GAMBIA                         2              1       32    1338
Birth       ki1101329-Keneba           GAMBIA                         3+             0      805    1338
Birth       ki1101329-Keneba           GAMBIA                         3+             1      245    1338
Birth       ki1113344-GMS-Nepal        NEPAL                          1              0      137     641
Birth       ki1113344-GMS-Nepal        NEPAL                          1              1       48     641
Birth       ki1113344-GMS-Nepal        NEPAL                          2              0      132     641
Birth       ki1113344-GMS-Nepal        NEPAL                          2              1       37     641
Birth       ki1113344-GMS-Nepal        NEPAL                          3+             0      240     641
Birth       ki1113344-GMS-Nepal        NEPAL                          3+             1       47     641
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1              0     4497   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1              1     1064   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2              0     3358   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2              1      524   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+             0     3000   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+             1      473   12916
Birth       ki1135781-COHORTS          GUATEMALA                      1              0       66     756
Birth       ki1135781-COHORTS          GUATEMALA                      1              1       28     756
Birth       ki1135781-COHORTS          GUATEMALA                      2              0       87     756
Birth       ki1135781-COHORTS          GUATEMALA                      2              1       31     756
Birth       ki1135781-COHORTS          GUATEMALA                      3+             0      411     756
Birth       ki1135781-COHORTS          GUATEMALA                      3+             1      133     756
Birth       ki1135781-COHORTS          INDIA                          1              0      505    3855
Birth       ki1135781-COHORTS          INDIA                          1              1      136    3855
Birth       ki1135781-COHORTS          INDIA                          2              0      823    3855
Birth       ki1135781-COHORTS          INDIA                          2              1      159    3855
Birth       ki1135781-COHORTS          INDIA                          3+             0     1876    3855
Birth       ki1135781-COHORTS          INDIA                          3+             1      356    3855
Birth       ki1135781-COHORTS          PHILIPPINES                    1              0      497    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    1              1      143    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    2              0      552    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    2              1      105    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    3+             0     1399    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    3+             1      203    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              0     4770   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              1      750   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2              0     5688   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2              1      615   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+             0     5583   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+             1      608   18014
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              0      352    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              1       40    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2              0      262    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2              1       40    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+             0      554    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+             1       86    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              0        4     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2              0       67     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2              1        5     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+             0      240     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+             1       61     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              0      209     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              1        9     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     2              0      214     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     2              1        8     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+             0      155     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+             1        8     603
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      652    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       27    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0      627    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       30    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             0      630    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             1       28    1994
6 months    ki1101329-Keneba           GAMBIA                         1              0      187    1623
6 months    ki1101329-Keneba           GAMBIA                         1              1        8    1623
6 months    ki1101329-Keneba           GAMBIA                         2              0      155    1623
6 months    ki1101329-Keneba           GAMBIA                         2              1        9    1623
6 months    ki1101329-Keneba           GAMBIA                         3+             0     1185    1623
6 months    ki1101329-Keneba           GAMBIA                         3+             1       79    1623
6 months    ki1113344-GMS-Nepal        NEPAL                          1              0      145     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1              1        8     564
6 months    ki1113344-GMS-Nepal        NEPAL                          2              0      133     564
6 months    ki1113344-GMS-Nepal        NEPAL                          2              1       16     564
6 months    ki1113344-GMS-Nepal        NEPAL                          3+             0      235     564
6 months    ki1113344-GMS-Nepal        NEPAL                          3+             1       27     564
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1              0     3311    8504
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1              1       81    8504
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2              0     2498    8504
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2              1       89    8504
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+             0     2430    8504
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+             1       95    8504
6 months    ki1135781-COHORTS          GUATEMALA                      1              0      128     963
6 months    ki1135781-COHORTS          GUATEMALA                      1              1        4     963
6 months    ki1135781-COHORTS          GUATEMALA                      2              0      136     963
6 months    ki1135781-COHORTS          GUATEMALA                      2              1        3     963
6 months    ki1135781-COHORTS          GUATEMALA                      3+             0      667     963
6 months    ki1135781-COHORTS          GUATEMALA                      3+             1       25     963
6 months    ki1135781-COHORTS          INDIA                          1              0      669    4285
6 months    ki1135781-COHORTS          INDIA                          1              1       72    4285
6 months    ki1135781-COHORTS          INDIA                          2              0      970    4285
6 months    ki1135781-COHORTS          INDIA                          2              1      123    4285
6 months    ki1135781-COHORTS          INDIA                          3+             0     2084    4285
6 months    ki1135781-COHORTS          INDIA                          3+             1      367    4285
6 months    ki1135781-COHORTS          PHILIPPINES                    1              0      548    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    1              1       26    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    2              0      580    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    2              1       27    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    3+             0     1417    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    3+             1      108    2706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              0     5857   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              1      541   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2              0     5246   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2              1      439   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+             0     4260   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+             1      441   16784
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              0      184     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              1       27     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     2              0      198     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     2              1       15     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+             0      135     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+             1       20     579
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             1        0       6
24 months   ki1101329-Keneba           GAMBIA                         1              0      125    1376
24 months   ki1101329-Keneba           GAMBIA                         1              1       12    1376
24 months   ki1101329-Keneba           GAMBIA                         2              0      127    1376
24 months   ki1101329-Keneba           GAMBIA                         2              1       12    1376
24 months   ki1101329-Keneba           GAMBIA                         3+             0      987    1376
24 months   ki1101329-Keneba           GAMBIA                         3+             1      113    1376
24 months   ki1113344-GMS-Nepal        NEPAL                          1              0      104     487
24 months   ki1113344-GMS-Nepal        NEPAL                          1              1       26     487
24 months   ki1113344-GMS-Nepal        NEPAL                          2              0      106     487
24 months   ki1113344-GMS-Nepal        NEPAL                          2              1       24     487
24 months   ki1113344-GMS-Nepal        NEPAL                          3+             0      186     487
24 months   ki1113344-GMS-Nepal        NEPAL                          3+             1       41     487
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              0      135     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              1       26     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2              0      102     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2              1       21     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+             0      116     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+             1       32     432
24 months   ki1135781-COHORTS          GUATEMALA                      1              0      157    1076
24 months   ki1135781-COHORTS          GUATEMALA                      1              1       10    1076
24 months   ki1135781-COHORTS          GUATEMALA                      2              0      145    1076
24 months   ki1135781-COHORTS          GUATEMALA                      2              1        6    1076
24 months   ki1135781-COHORTS          GUATEMALA                      3+             0      724    1076
24 months   ki1135781-COHORTS          GUATEMALA                      3+             1       34    1076
24 months   ki1135781-COHORTS          INDIA                          1              0      529    3354
24 months   ki1135781-COHORTS          INDIA                          1              1       32    3354
24 months   ki1135781-COHORTS          INDIA                          2              0      779    3354
24 months   ki1135781-COHORTS          INDIA                          2              1       58    3354
24 months   ki1135781-COHORTS          INDIA                          3+             0     1729    3354
24 months   ki1135781-COHORTS          INDIA                          3+             1      227    3354
24 months   ki1135781-COHORTS          PHILIPPINES                    1              0      491    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    1              1       32    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    2              0      512    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    2              1       32    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    3+             0     1279    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    3+             1      103    2449
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              0     2478    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              1      688    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              0     2267    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              1      642    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+             0     1980    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+             1      548    8603


The following strata were considered:

* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/e39d53e9-6288-43d0-95b6-157e7f2ebfd4/baba29fd-fbe8-45fb-ba90-807655c1c3c6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e39d53e9-6288-43d0-95b6-157e7f2ebfd4/baba29fd-fbe8-45fb-ba90-807655c1c3c6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e39d53e9-6288-43d0-95b6-157e7f2ebfd4/baba29fd-fbe8-45fb-ba90-807655c1c3c6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e39d53e9-6288-43d0-95b6-157e7f2ebfd4/baba29fd-fbe8-45fb-ba90-807655c1c3c6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1480263   0.0996843   0.1963683
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1007752   0.0609820   0.1405684
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.0868762   0.0582808   0.1154715
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2475248   0.1879535   0.3070960
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2087912   0.1496864   0.2678960
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1959459   0.1319376   0.2599543
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                0.3219178   0.2461041   0.3977315
Birth       ki1101329-Keneba           GAMBIA                         2                    NA                0.2253521   0.1566058   0.2940984
Birth       ki1101329-Keneba           GAMBIA                         3+                   NA                0.2333333   0.2077411   0.2589255
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2594595   0.1962459   0.3226730
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2189349   0.1565406   0.2813292
Birth       ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1637631   0.1209162   0.2066099
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1913325   0.1809937   0.2016712
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1349820   0.1242325   0.1457315
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1361935   0.1247858   0.1476012
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2978723   0.2053611   0.3903836
Birth       ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2627119   0.1832511   0.3421727
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.2444853   0.2083456   0.2806249
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.2121685   0.1805142   0.2438228
Birth       ki1135781-COHORTS          INDIA                          2                    NA                0.1619145   0.1388716   0.1849573
Birth       ki1135781-COHORTS          INDIA                          3+                   NA                0.1594982   0.1443066   0.1746898
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2234375   0.1911600   0.2557150
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1598174   0.1317928   0.1878419
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.1267166   0.1104242   0.1430090
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1358696   0.1259658   0.1457733
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0975726   0.0893771   0.1057681
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0982071   0.0902743   0.1061399
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1020408   0.0710963   0.1329853
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1324503   0.1003673   0.1645334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1343750   0.1025712   0.1661788
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0412844   0.0148531   0.0677157
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0360360   0.0114985   0.0605736
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0490798   0.0158874   0.0822721
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0397644   0.0250630   0.0544657
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0456621   0.0296958   0.0616284
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0425532   0.0271267   0.0579797
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.0410256   0.0131775   0.0688738
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0548780   0.0200120   0.0897441
6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.0625000   0.0491515   0.0758485
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0522876   0.0169835   0.0875917
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1073826   0.0576272   0.1571379
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1030534   0.0662068   0.1399000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0238797   0.0187415   0.0290179
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0344028   0.0273790   0.0414266
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0376238   0.0302013   0.0450462
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.0971660   0.0758380   0.1184940
6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1125343   0.0937970   0.1312716
6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.1497348   0.1356073   0.1638623
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0452962   0.0282810   0.0623114
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0444811   0.0280774   0.0608847
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0708197   0.0579425   0.0836968
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0845577   0.0769209   0.0921945
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0772208   0.0692022   0.0852393
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0938098   0.0854717   0.1021479
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1279621   0.0828502   0.1730739
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0704225   0.0360325   0.1048125
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1290323   0.0762111   0.1818534
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.0875912   0.0402357   0.1349468
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0863309   0.0396246   0.1330373
24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1027273   0.0847793   0.1206752
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2000000   0.1311692   0.2688308
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1846154   0.1178521   0.2513787
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1806167   0.1305206   0.2307129
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1614907   0.1045836   0.2183977
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1707317   0.1041579   0.2373055
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2162162   0.1498170   0.2826154
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0598802   0.0238784   0.0958821
24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0397351   0.0085646   0.0709056
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.0448549   0.0301129   0.0595968
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0570410   0.0378467   0.0762353
24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0692951   0.0520880   0.0865022
24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1160532   0.1018570   0.1302493
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0611855   0.0406408   0.0817302
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0588235   0.0390471   0.0786000
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0745297   0.0606803   0.0883790
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2173089   0.2012068   0.2334111
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2206944   0.2034959   0.2378929
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2167722   0.1994005   0.2341438


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1069810   0.0760961   0.1378659
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.2421525   0.2191900   0.2651149
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2059282   0.1745993   0.2372572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1595695   0.1532537   0.1658853
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2539683   0.2229196   0.2850169
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1688716   0.1570438   0.1806994
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1555709   0.1423748   0.1687670
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1095259   0.1044047   0.1146471
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1244378   0.0992652   0.1496104
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0414594   0.0255348   0.0573839
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0426279   0.0337587   0.0514970
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0591497   0.0476693   0.0706302
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0904255   0.0667359   0.1141152
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0311618   0.0274686   0.0348550
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1311552   0.1210467   0.1412637
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0594974   0.0505830   0.0684118
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0846640   0.0798626   0.0894653
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0995640   0.0837378   0.1153901
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1868583   0.1522030   0.2215136
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1828704   0.1463759   0.2193648
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0464684   0.0338852   0.0590516
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0945140   0.0846121   0.1044160
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0681911   0.0582056   0.0781766
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2182959   0.2084450   0.2281469


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.6807924   0.4916830   0.9426365
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.5868967   0.4562565   0.7549432
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8435165   0.5817385   1.2230926
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.7916216   0.5275995   1.1877660
Birth       ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         2                    1                 0.7000300   0.4761498   1.0291759
Birth       ki1101329-Keneba           GAMBIA                         3+                   1                 0.7248227   0.5589906   0.9398511
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.8438116   0.5799792   1.2276613
Birth       ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.6311702   0.4414503   0.9024250
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.7054838   0.6407539   0.7767527
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.7118158   0.6442848   0.7864251
Birth       ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      2                    1                 0.8819613   0.5717074   1.3605835
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.8207721   0.5818940   1.1577139
Birth       ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          2                    1                 0.7631409   0.6209543   0.9378857
Birth       ki1135781-COHORTS          INDIA                          3+                   1                 0.7517526   0.6298000   0.8973197
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.7152665   0.5699000   0.8977121
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.5671233   0.4674008   0.6881220
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7181342   0.6430309   0.8020094
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7228041   0.6496312   0.8042190
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.2980132   0.9174974   1.8363413
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.3168750   0.9548190   1.8162182
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8728729   0.3428041   2.2225725
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.1888207   0.4684591   3.0169011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1483173   0.6903380   1.9101259
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0701340   0.6376220   1.7960275
6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                 1.3376523   0.5279118   3.3894177
6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 1.5234373   0.7477881   3.1036350
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 2.0536913   0.9055194   4.6577113
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.9708969   0.9180260   4.2312905
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.4406696   1.0708925   1.9381301
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.5755531   1.1766662   2.1096616
6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          2                    1                 1.1581656   0.8792647   1.5255332
6 months    ki1135781-COHORTS          INDIA                          3+                   1                 1.5410206   1.2135200   1.9569061
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9820048   0.5800925   1.6623787
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.5634804   1.0300188   2.3732294
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9132318   0.7977959   1.0453705
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.1094183   0.9827835   1.2523703
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.5503391   0.3013402   1.0050870
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.0083632   0.5874785   1.7307806
24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9856115   0.4587083   2.1177511
24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.1728030   0.6644635   2.0700412
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9230769   0.5603108   1.5207114
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9030837   0.5804519   1.4050434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0572233   0.6250502   1.7882101
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.3388773   0.8389609   2.1366819
24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 0.6635762   0.2469743   1.7829113
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.7490765   0.3775276   1.4862905
24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.2148297   0.7996367   1.8456023
24 months   ki1135781-COHORTS          INDIA                          3+                   1                 2.0345571   1.4222424   2.9104904
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9613971   0.5977829   1.5461872
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.2180942   0.8298760   1.7879221
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0155792   0.9113400   1.1317412
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9975300   0.8949358   1.1118854


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0410454   -0.0629909   -0.0190998
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0275999   -0.0733705    0.0181706
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -0.0797653   -0.1506217   -0.0089089
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0535312   -0.1052120   -0.0018505
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0317630   -0.0391613   -0.0243646
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0439041   -0.1298930    0.0420848
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.0432969   -0.0717341   -0.0148597
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0678666   -0.0953615   -0.0403717
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0263436   -0.0341665   -0.0185208
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0223970   -0.0025603    0.0473543
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0001750   -0.0209691    0.0213190
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0028635   -0.0092855    0.0150125
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0181241   -0.0087267    0.0449749
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0381380    0.0045024    0.0717735
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0072821    0.0029256    0.0116386
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.0339892    0.0139957    0.0539827
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0142012   -0.0014882    0.0298907
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0001063   -0.0055789    0.0057915
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0208809   -0.0553380    0.0135762
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0119727   -0.0332651    0.0572105
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0131417   -0.0715310    0.0452476
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0213797   -0.0250578    0.0678172
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0134118   -0.0458485    0.0190249
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0374730    0.0189468    0.0559993
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0070056   -0.0114746    0.0254858
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0009870   -0.0119077    0.0138818


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.3836697   -0.5480599   -0.2367363
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1254972   -0.3536742    0.0642180
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -0.3294013   -0.6564009   -0.0669566
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2599509   -0.5363358   -0.0332873
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1990541   -0.2459462   -0.1539268
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1728723   -0.5652092    0.1211210
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.2563894   -0.4360548   -0.0992020
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.4362424   -0.6222398   -0.2715705
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.2405242   -0.3133958   -0.1716959
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1799852   -0.0403159    0.3536346
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0042202   -0.6618377    0.4033247
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0671749   -0.2657313    0.3125218
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.3064102   -0.3277241    0.6376756
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.4217609   -0.0723843    0.6882083
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2336864    0.0834725    0.3592810
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.2591525    0.0911448    0.3961029
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2386868   -0.0733386    0.4600047
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0012555   -0.0682081    0.0662019
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1950008   -0.5612097    0.0853075
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1202515   -0.4739966    0.4749259
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0703297   -0.4330197    0.2005654
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1169117   -0.1764367    0.3371127
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.2886228   -1.2084474    0.2480923
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.3964810    0.1702468    0.5610320
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1027353   -0.2131577    0.3363732
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0045216   -0.0563333    0.0618706
