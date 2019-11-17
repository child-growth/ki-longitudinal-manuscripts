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




# Results Detail

## Results Plots
![](/tmp/13935405-398f-47ed-b8e6-327679c5dc1f/389f597d-c9f8-4c92-be95-2b633be18f1a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/13935405-398f-47ed-b8e6-327679c5dc1f/389f597d-c9f8-4c92-be95-2b633be18f1a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/13935405-398f-47ed-b8e6-327679c5dc1f/389f597d-c9f8-4c92-be95-2b633be18f1a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/13935405-398f-47ed-b8e6-327679c5dc1f/389f597d-c9f8-4c92-be95-2b633be18f1a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1873398   0.1132187   0.2614610
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.0999430   0.0595513   0.1403347
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1005863   0.0634188   0.1377537
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2138301   0.1484375   0.2792228
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2225334   0.1355217   0.3095451
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.2031170   0.1170332   0.2892009
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                0.5858887   0.4902577   0.6815198
Birth       ki1101329-Keneba           GAMBIA                         2                    NA                0.2003227   0.1191545   0.2814910
Birth       ki1101329-Keneba           GAMBIA                         3+                   NA                0.2336218   0.1982847   0.2689590
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2083562   0.1238137   0.2928986
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2283108   0.0988965   0.3577252
Birth       ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1818065   0.1193810   0.2442320
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1888449   0.1723313   0.2053585
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1397482   0.1221405   0.1573560
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1097513   0.0948154   0.1246872
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                0.4523023   0.3278631   0.5767415
Birth       ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2777706   0.1234516   0.4320896
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.2518393   0.2070452   0.2966335
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.2227633   0.1832259   0.2623006
Birth       ki1135781-COHORTS          INDIA                          2                    NA                0.1656780   0.1354752   0.1958808
Birth       ki1135781-COHORTS          INDIA                          3+                   NA                0.1565795   0.1396239   0.1735351
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2096771   0.1660420   0.2533123
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1749167   0.1228135   0.2270198
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.1260599   0.1038940   0.1482258
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1796085   0.1590139   0.2002032
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0974632   0.0848029   0.1101234
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0854579   0.0745975   0.0963182
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1111601   0.0657453   0.1565748
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1279740   0.0806122   0.1753357
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1187305   0.0875485   0.1499124
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0412844   0.0148531   0.0677157
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0360360   0.0114985   0.0605736
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0490798   0.0158874   0.0822721
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0445183   0.0216734   0.0673633
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0513881   0.0261870   0.0765892
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0334726   0.0190899   0.0478552
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.0410256   0.0131775   0.0688738
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0548780   0.0200120   0.0897441
6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.0625000   0.0491515   0.0758485
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0522876   0.0169835   0.0875917
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1073826   0.0576272   0.1571379
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1030534   0.0662068   0.1399000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0201334   0.0147028   0.0255640
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0319403   0.0236770   0.0402036
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0467385   0.0314649   0.0620122
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.0976264   0.0700560   0.1251968
6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1173712   0.0913764   0.1433660
6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.1521988   0.1356768   0.1687208
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0347277   0.0189161   0.0505394
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0406140   0.0219708   0.0592572
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0745023   0.0553438   0.0936609
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0853815   0.0709553   0.0998078
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0763892   0.0657183   0.0870601
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0839863   0.0737164   0.0942561
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1297953   0.0835941   0.1759966
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0741803   0.0384775   0.1098831
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1255194   0.0727350   0.1783038
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1326312   0.0699044   0.1953579
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0780072   0.0287914   0.1272230
24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.0936257   0.0759134   0.1113380
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1622873   0.0543710   0.2702037
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1572328   0.0676891   0.2467764
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1278721   0.0852248   0.1705194
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1529061   0.0969573   0.2088549
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1737958   0.1075351   0.2400566
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2220449   0.1559205   0.2881694
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0598802   0.0238784   0.0958821
24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0397351   0.0085646   0.0709056
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.0448549   0.0301129   0.0595968
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0501665   0.0272740   0.0730590
24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0635500   0.0416701   0.0854300
24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1166091   0.1012287   0.1319896
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0602752   0.0343674   0.0861831
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0637476   0.0234769   0.1040184
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.1191226   0.0987936   0.1394517
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1924448   0.1664774   0.2184123
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2219993   0.1963554   0.2476432
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.1956651   0.1643899   0.2269404


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1069810   0.0760961   0.1378659
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.2421525   0.2191900   0.2651149
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2059282   0.1745993   0.2372572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1595695   0.1532538   0.1658853
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
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.5334851   0.3129945   0.9093016
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.5369189   0.2829364   1.0188929
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0407017   0.6339731   1.7083690
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9498990   0.5644368   1.5985991
Birth       ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         2                    1                 0.3419126   0.2208860   0.5292512
Birth       ki1101329-Keneba           GAMBIA                         3+                   1                 0.3987478   0.3191419   0.4982103
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0957720   0.5454642   2.2012742
Birth       ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.8725756   0.5129705   1.4842729
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.7400160   0.6347885   0.8626869
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.5811715   0.4943641   0.6832219
Birth       ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      2                    1                 0.6141259   0.3304085   1.1414678
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.5567943   0.4013131   0.7725137
Birth       ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          2                    1                 0.7437402   0.5766437   0.9592570
Birth       ki1135781-COHORTS          INDIA                          3+                   1                 0.7028965   0.5709644   0.8653140
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.8342192   0.5799860   1.1998940
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.6012094   0.4578172   0.7895133
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.5426422   0.4585732   0.6421235
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.4758007   0.4004198   0.5653724
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.1512584   0.7966466   1.6637188
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.0681036   0.7457601   1.5297752
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8728729   0.3428041   2.2225725
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.1888207   0.4684591   3.0169011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1543134   0.5679563   2.3460243
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.7518823   0.3849838   1.4684437
6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                 1.3376523   0.5279118   3.3894177
6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 1.5234373   0.7477881   3.1036350
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 2.0536913   0.9055194   4.6577113
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.9708969   0.9180260   4.2312905
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.5864345   1.0917548   2.3052559
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 2.3214455   1.5196882   3.5461940
6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          2                    1                 1.2022481   0.8396505   1.7214311
6 months    ki1135781-COHORTS          INDIA                          3+                   1                 1.5589916   1.1519407   2.1098784
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.1694982   0.6129690   2.2313136
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 2.1453270   1.2717547   3.6189590
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8946809   0.7171020   1.1162345
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9836582   0.8029726   1.2050019
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.5715175   0.3139183   1.0405006
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9670563   0.5574317   1.6776905
24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.5881513   0.2672393   1.2944274
24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 0.7059103   0.4242412   1.1745898
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9688542   0.4044564   2.3208396
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.7879365   0.3736227   1.6616868
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1366177   0.6728236   1.9201165
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.4521650   0.9058945   2.3278465
24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 0.6635762   0.2469743   1.7829113
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.7490765   0.3775276   1.4862905
24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.2667828   0.7154036   2.2431235
24 months   ki1135781-COHORTS          INDIA                          3+                   1                 2.3244435   1.4455817   3.7376218
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0576087   0.4925825   2.2707591
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.9763112   1.2443661   3.1387916
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.1535737   0.9640870   1.3803030
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.0167338   0.8238825   1.2547271


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0803588   -0.1599846   -0.0007331
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0060947   -0.0498136    0.0620029
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -0.3437363   -0.4380002   -0.2494724
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0024279   -0.0807258    0.0758700
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0292754   -0.0442221   -0.0143286
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1983340   -0.3191895   -0.0774786
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.0538917   -0.0911093   -0.0166740
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0541062   -0.0948956   -0.0133169
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0700826   -0.0897680   -0.0503972
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0132777   -0.0206639    0.0472194
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0001750   -0.0209691    0.0213190
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0018905   -0.0227527    0.0189718
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0181241   -0.0087267    0.0449749
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0381380    0.0045024    0.0717735
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0110284    0.0059931    0.0160638
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.0335287    0.0068724    0.0601851
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0247697    0.0093807    0.0401586
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0007176   -0.0142204    0.0127852
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0227142   -0.0581858    0.0127575
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0330672   -0.0952578    0.0291234
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0245710   -0.0790922    0.1282342
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0299642   -0.0157011    0.0756295
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0134118   -0.0458485    0.0190249
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0443475    0.0216308    0.0670642
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0079159   -0.0165031    0.0323349
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0258511    0.0010623    0.0506400


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.7511509   -1.8421001   -0.0789660
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0277125   -0.2627501    0.2513618
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -1.4195035   -1.8777839   -1.0342032
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0117901   -0.4732950    0.3051499
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1834646   -0.2808536   -0.0934806
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.7809403   -1.3402578   -0.3552986
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.3191281   -0.5591935   -0.1160251
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.3477916   -0.6370380   -0.1096518
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6398724   -0.8308792   -0.4687923
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1067017   -0.2181554    0.3449261
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0042202   -0.6618377    0.4033247
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0443479   -0.6684680    0.3463090
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.3064102   -0.3277241    0.6376756
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.4217609   -0.0723843    0.6882083
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.3539084    0.1771770    0.4926802
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.2556418    0.0232193    0.4327599
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.4163152    0.1027194    0.6203106
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0084755   -0.1812548    0.1390317
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2121210   -0.5891619    0.0754640
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.3321204   -1.1404359    0.1709424
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1314952   -0.6441464    0.5412206
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1638550   -0.1262452    0.3792307
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.2886228   -1.2084474    0.2480923
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.4692165    0.1728181    0.6594085
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1160834   -0.3247334    0.4102145
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1184224   -0.0024513    0.2247214
