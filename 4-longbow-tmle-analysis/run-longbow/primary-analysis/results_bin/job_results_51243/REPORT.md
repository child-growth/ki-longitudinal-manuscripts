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
* vagbrth
* W_nrooms
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
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
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              0       37     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              1        4     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2              0       41     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2              1        3     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+             0       77     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+             1        4     166
Birth       ki1101329-Keneba           GAMBIA                         1              0      139    1292
Birth       ki1101329-Keneba           GAMBIA                         1              1        3    1292
Birth       ki1101329-Keneba           GAMBIA                         2              0      131    1292
Birth       ki1101329-Keneba           GAMBIA                         2              1        2    1292
Birth       ki1101329-Keneba           GAMBIA                         3+             0      996    1292
Birth       ki1101329-Keneba           GAMBIA                         3+             1       21    1292
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1              0     4497   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1              1     1064   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2              0     3358   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2              1      524   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+             0     3000   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+             1      472   12915
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              0     4068   15692
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              1      536   15692
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2              0     5059   15692
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2              1      480   15692
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+             0     5059   15692
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+             1      490   15692
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              0      352    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              1       40    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2              0      262    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2              1       40    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+             0      554    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+             1       86    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              0       67     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              1        5     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2              0       70     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2              1       14     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+             0      170     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+             1       47     373
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              0      202     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              1        9     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2              0      205     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2              1        7     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+             0      151     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+             1        8     582
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
6 months    ki1113344-GMS-Nepal        NEPAL                          1              0      145     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1              1        8     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2              0      133     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2              1       16     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3+             0      234     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3+             1       27     563
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1              0     3204    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1              1       81    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2              0     2425    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2              1       89    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+             0     2369    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+             1       95    8263
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              0     5851   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              1      539   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2              0     5246   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2              1      439   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+             0     4260   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+             1      441   16776
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              0      183     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              1       28     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2              0      197     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2              1       16     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+             0      133     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+             1       21     578
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
24 months   ki1113344-GMS-Nepal        NEPAL                          1              0      109     498
24 months   ki1113344-GMS-Nepal        NEPAL                          1              1       27     498
24 months   ki1113344-GMS-Nepal        NEPAL                          2              0      107     498
24 months   ki1113344-GMS-Nepal        NEPAL                          2              1       23     498
24 months   ki1113344-GMS-Nepal        NEPAL                          3+             0      191     498
24 months   ki1113344-GMS-Nepal        NEPAL                          3+             1       41     498
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              0      135     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              1       25     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2              0      100     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2              1       21     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+             0      111     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+             1       30     422
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              0     2474    8595
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              1      684    8595
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              0     2267    8595
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              1      642    8595
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+             0     1980    8595
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+             1      548    8595


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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
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




# Results Detail

## Results Plots
![](/tmp/512e577c-126e-4296-a4ee-9eb4bccb0196/a60b216f-3455-4c46-9c19-0c1bc3efe610/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/512e577c-126e-4296-a4ee-9eb4bccb0196/a60b216f-3455-4c46-9c19-0c1bc3efe610/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/512e577c-126e-4296-a4ee-9eb4bccb0196/a60b216f-3455-4c46-9c19-0c1bc3efe610/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/512e577c-126e-4296-a4ee-9eb4bccb0196/a60b216f-3455-4c46-9c19-0c1bc3efe610/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1952151   0.1776556   0.2127746
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1384833   0.1214372   0.1555294
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1187118   0.1024244   0.1349992
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                0.4740188   0.3611249   0.5869127
Birth       ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2824429   0.1313608   0.4335251
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.2510502   0.2071466   0.2949538
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.2271739   0.1866060   0.2677418
Birth       ki1135781-COHORTS          INDIA                          2                    NA                0.1643673   0.1342732   0.1944615
Birth       ki1135781-COHORTS          INDIA                          3+                   NA                0.1584520   0.1411087   0.1757953
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2039939   0.1623488   0.2456389
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1707948   0.1204379   0.2211517
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.1226081   0.1011455   0.1440707
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1444451   0.1252815   0.1636087
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0860821   0.0733436   0.0988206
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0802925   0.0692233   0.0913616
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0872611   0.0509447   0.1235775
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1396185   0.0883647   0.1908723
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1196359   0.0885710   0.1507008
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.0694444   0.0106475   0.1282414
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.1666667   0.0868626   0.2464708
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.2165899   0.1617098   0.2714700
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0426540   0.0153646   0.0699435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0330189   0.0089451   0.0570926
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0503145   0.0163082   0.0843208
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0438831   0.0230995   0.0646667
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0492729   0.0264273   0.0721185
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0352151   0.0186568   0.0517735
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.0410256   0.0131775   0.0688738
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0548780   0.0200120   0.0897441
6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.0625000   0.0491515   0.0758485
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0522876   0.0169834   0.0875917
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1073826   0.0576271   0.1571380
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1034483   0.0664686   0.1404280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0207268   0.0153212   0.0261324
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0355174   0.0254267   0.0456080
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0424959   0.0281330   0.0568588
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.0988048   0.0709239   0.1266858
6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1175010   0.0919412   0.1430608
6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.1500496   0.1338520   0.1662472
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0356704   0.0198243   0.0515165
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0401956   0.0226542   0.0577369
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0739222   0.0548341   0.0930103
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0866596   0.0730128   0.1003065
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0756920   0.0654942   0.0858897
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0848714   0.0741708   0.0955721
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1352117   0.0884240   0.1819994
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0777613   0.0410329   0.1144896
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1326748   0.0784309   0.1869188
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1213989   0.0586992   0.1840986
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0733736   0.0255622   0.1211850
24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.0937074   0.0761285   0.1112864
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1672790   0.0699235   0.2646346
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1435261   0.0691437   0.2179085
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1254576   0.0832091   0.1677060
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1127545   0.0537374   0.1717717
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1314620   0.0649968   0.1979273
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2752215   0.1725636   0.3778793
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0598802   0.0238784   0.0958821
24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0397351   0.0085646   0.0709056
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.0448549   0.0301129   0.0595968
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0480808   0.0257353   0.0704263
24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0642356   0.0423745   0.0860968
24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1125357   0.0977606   0.1273107
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0593503   0.0358997   0.0828008
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0623439   0.0287279   0.0959599
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.1109432   0.0906686   0.1312178
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1983667   0.1699809   0.2267526
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2213958   0.1982364   0.2445553
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2032337   0.1720842   0.2343832


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1595045   0.1531895   0.1658194
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2539683   0.2229196   0.2850169
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1688716   0.1570438   0.1806994
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1555709   0.1423748   0.1687670
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0959725   0.0907703   0.1011747
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1244378   0.0992652   0.1496104
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1769437   0.1381636   0.2157238
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0412371   0.0250690   0.0574052
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0426279   0.0337587   0.0514970
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0591497   0.0476693   0.0706302
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0905861   0.0668565   0.1143158
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0320707   0.0282716   0.0358698
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1311552   0.1210467   0.1412637
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0594974   0.0505830   0.0684118
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0845851   0.0797798   0.0893904
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0995640   0.0837378   0.1153901
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1827309   0.1487560   0.2167058
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1800948   0.1433886   0.2168010
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0464684   0.0338852   0.0590516
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0945140   0.0846121   0.1044160
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0681911   0.0582056   0.0781766
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2180337   0.2081516   0.2279159


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.7093882   0.6090665   0.8262343
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.6081078   0.5161049   0.7165114
Birth       ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      2                    1                 0.5958476   0.3319548   1.0695262
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.5296207   0.3943887   0.7112226
Birth       ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          2                    1                 0.7235309   0.5602256   0.9344395
Birth       ki1135781-COHORTS          INDIA                          3+                   1                 0.6974920   0.5656910   0.8600016
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.8372546   0.5848637   1.1985619
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.6010383   0.4593113   0.7864972
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.5959503   0.4887850   0.7266113
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.5558684   0.4578532   0.6748663
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.6000079   1.0023412   2.5540457
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.3710104   0.9273774   2.0268658
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 2.4000000   0.9073519   6.3481435
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 3.1188940   1.2887863   7.5477991
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.7741090   0.2934517   2.0420557
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.1795947   0.4651051   2.9916758
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1228213   0.5789119   2.1777539
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8024758   0.4117079   1.5641367
6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                 1.3376523   0.5279118   3.3894177
6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 1.5234373   0.7477881   3.1036350
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 2.0536913   0.9055182   4.6577174
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.9784483   0.9215762   4.2473510
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.7135942   1.1650378   2.5204376
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 2.0502845   1.3379480   3.1418759
6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          2                    1                 1.1892229   0.8326885   1.6984156
6 months    ki1135781-COHORTS          INDIA                          3+                   1                 1.5186464   1.1226224   2.0543746
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.1268609   0.6048711   2.0993159
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 2.0723695   1.2396982   3.4643230
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8734399   0.7072404   1.0786958
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9793655   0.8046225   1.1920580
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.5751077   0.3200953   1.0332826
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9812381   0.5742837   1.6765724
24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.6044008   0.2630880   1.3885100
24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 0.7718968   0.4456080   1.3371047
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.8580043   0.3944944   1.8661137
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.7499900   0.3818236   1.4731542
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1659133   0.5644451   2.4083009
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 2.4408903   1.2863449   4.6316859
24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 0.6635762   0.2469743   1.7829113
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.7490765   0.3775276   1.4862905
24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.3359933   0.7511544   2.3761801
24 months   ki1135781-COHORTS          INDIA                          3+                   1                 2.3405540   1.4439131   3.7939908
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0504399   0.5383784   2.0495321
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.8692959   1.2093418   2.8893957
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.1160935   0.9326541   1.3356128
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.0245354   0.8305503   1.2638279


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0357107   -0.0517368   -0.0196845
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.2200505   -0.3296279   -0.1104732
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.0583023   -0.0966299   -0.0199747
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0484230   -0.0871938   -0.0096521
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0484726   -0.0669773   -0.0299679
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0371767    0.0112745    0.0630788
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1074993    0.0472802    0.1677183
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0014169   -0.0230072    0.0201734
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0012552   -0.0200257    0.0175153
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0181241   -0.0087267    0.0449749
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0382986    0.0046526    0.0719445
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0113439    0.0063478    0.0163399
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.0323504    0.0053978    0.0593030
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0238270    0.0084731    0.0391810
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0020745   -0.0149006    0.0107516
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0227549   -0.0587426    0.0132328
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0218350   -0.0840113    0.0403414
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0154519   -0.0769794    0.1078832
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0673402    0.0132638    0.1214166
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0134118   -0.0458485    0.0190249
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0464332    0.0242229    0.0686436
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0088408   -0.0131443    0.0308260
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0196670   -0.0075899    0.0469239


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.2238850   -0.3284708   -0.1275329
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.8664490   -1.3723811   -0.4684116
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.3452463   -0.5928403   -0.1361388
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.3112599   -0.5856469   -0.0843539
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.5050682   -0.7133350   -0.3221175
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.2987570    0.0439082    0.4856752
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.6075337    0.1176744    0.8254275
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0343602   -0.7156685    0.3763941
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0294461   -0.5789869    0.3288360
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.3064102   -0.3277241    0.6376756
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.4227861   -0.0704734    0.6887584
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.3537141    0.1847715    0.4876462
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.2466571    0.0115911    0.4258191
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.4004717    0.0889370    0.6054782
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0245257   -0.1879829    0.1164411
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2023436   -0.5658806    0.0767941
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.2193061   -1.0419854    0.2719305
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0845610   -0.5902193    0.4730107
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.3739156   -0.0025141    0.6090013
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.2886228   -1.2084474    0.2480923
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.4912840    0.2007868    0.6761916
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1296480   -0.2593157    0.3984729
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0902016   -0.0435800    0.2068332
