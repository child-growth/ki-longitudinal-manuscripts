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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        parity    sstunted   n_cell       n
----------  -------------------------  -----------------------------  -------  ---------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                0      334    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                1       27    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                0      269    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                1       20    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+               0      558    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+               1       44    1252
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                0      204     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                1        2     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                0      183     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                1        0     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+               0      148     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+               1        2     539
Birth       ki1101329-Keneba           GAMBIA                         1                0      153    1407
Birth       ki1101329-Keneba           GAMBIA                         1                1        3    1407
Birth       ki1101329-Keneba           GAMBIA                         2                0      144    1407
Birth       ki1101329-Keneba           GAMBIA                         2                1        2    1407
Birth       ki1101329-Keneba           GAMBIA                         3+               0     1084    1407
Birth       ki1101329-Keneba           GAMBIA                         3+               1       21    1407
Birth       ki1113344-GMS-Nepal        NEPAL                          1                0      196     696
Birth       ki1113344-GMS-Nepal        NEPAL                          1                1       15     696
Birth       ki1113344-GMS-Nepal        NEPAL                          2                0      175     696
Birth       ki1113344-GMS-Nepal        NEPAL                          2                1        5     696
Birth       ki1113344-GMS-Nepal        NEPAL                          3+               0      294     696
Birth       ki1113344-GMS-Nepal        NEPAL                          3+               1       11     696
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0     5794   13874
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1      195   13874
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                0     4040   13874
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                1      104   13874
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+               0     3598   13874
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+               1      143   13874
Birth       ki1135781-COHORTS          GUATEMALA                      1                0      109     852
Birth       ki1135781-COHORTS          GUATEMALA                      1                1        3     852
Birth       ki1135781-COHORTS          GUATEMALA                      2                0      134     852
Birth       ki1135781-COHORTS          GUATEMALA                      2                1        3     852
Birth       ki1135781-COHORTS          GUATEMALA                      3+               0      598     852
Birth       ki1135781-COHORTS          GUATEMALA                      3+               1        5     852
Birth       ki1135781-COHORTS          INDIA                          1                0      674    4122
Birth       ki1135781-COHORTS          INDIA                          1                1       22    4122
Birth       ki1135781-COHORTS          INDIA                          2                0     1016    4122
Birth       ki1135781-COHORTS          INDIA                          2                1       21    4122
Birth       ki1135781-COHORTS          INDIA                          3+               0     2319    4122
Birth       ki1135781-COHORTS          INDIA                          3+               1       70    4122
Birth       ki1135781-COHORTS          PHILIPPINES                    1                0      661    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1                1       14    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    2                0      677    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    2                1       10    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    3+               0     1666    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    3+               1       22    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0     6332   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1     1124   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                0     6940   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                1      675   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+               0     6735   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+               1      649   22455
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      360    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1       32    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                0      279    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                1       25    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+               0      569    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+               1       71    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0        4     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                0       64     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                1        8     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+               0      258     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+               1       43     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      213     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        5     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                0      217     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                1        5     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+               0      160     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+               1        4     604
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      674    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        6    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      649    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        8    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               0      654    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               1        4    1995
6 months    ki1101329-Keneba           GAMBIA                         1                0      190    1623
6 months    ki1101329-Keneba           GAMBIA                         1                1        4    1623
6 months    ki1101329-Keneba           GAMBIA                         2                0      159    1623
6 months    ki1101329-Keneba           GAMBIA                         2                1        5    1623
6 months    ki1101329-Keneba           GAMBIA                         3+               0     1218    1623
6 months    ki1101329-Keneba           GAMBIA                         3+               1       47    1623
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0      147     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1        6     564
6 months    ki1113344-GMS-Nepal        NEPAL                          2                0      143     564
6 months    ki1113344-GMS-Nepal        NEPAL                          2                1        6     564
6 months    ki1113344-GMS-Nepal        NEPAL                          3+               0      253     564
6 months    ki1113344-GMS-Nepal        NEPAL                          3+               1        9     564
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0     3321    8668
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1      145    8668
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                0     2545    8668
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                1       93    8668
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+               0     2451    8668
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+               1      113    8668
6 months    ki1135781-COHORTS          GUATEMALA                      1                0      116     961
6 months    ki1135781-COHORTS          GUATEMALA                      1                1       16     961
6 months    ki1135781-COHORTS          GUATEMALA                      2                0      122     961
6 months    ki1135781-COHORTS          GUATEMALA                      2                1       17     961
6 months    ki1135781-COHORTS          GUATEMALA                      3+               0      599     961
6 months    ki1135781-COHORTS          GUATEMALA                      3+               1       91     961
6 months    ki1135781-COHORTS          INDIA                          1                0      713    4291
6 months    ki1135781-COHORTS          INDIA                          1                1       27    4291
6 months    ki1135781-COHORTS          INDIA                          2                0     1056    4291
6 months    ki1135781-COHORTS          INDIA                          2                1       40    4291
6 months    ki1135781-COHORTS          INDIA                          3+               0     2314    4291
6 months    ki1135781-COHORTS          INDIA                          3+               1      141    4291
6 months    ki1135781-COHORTS          PHILIPPINES                    1                0      553    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    1                1       21    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    2                0      584    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    2                1       22    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    3+               0     1439    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    3+               1       89    2708
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     5910   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      486   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                0     5435   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                1      265   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+               0     4446   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+               1      269   16811
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      193     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       18     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                0      193     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                1       20     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+               0      140     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+               1       14     578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               1        1       6
24 months   ki1101329-Keneba           GAMBIA                         1                0      129    1376
24 months   ki1101329-Keneba           GAMBIA                         1                1        8    1376
24 months   ki1101329-Keneba           GAMBIA                         2                0      134    1376
24 months   ki1101329-Keneba           GAMBIA                         2                1        5    1376
24 months   ki1101329-Keneba           GAMBIA                         3+               0      996    1376
24 months   ki1101329-Keneba           GAMBIA                         3+               1      104    1376
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0      116     488
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       14     488
24 months   ki1113344-GMS-Nepal        NEPAL                          2                0      116     488
24 months   ki1113344-GMS-Nepal        NEPAL                          2                1       14     488
24 months   ki1113344-GMS-Nepal        NEPAL                          3+               0      203     488
24 months   ki1113344-GMS-Nepal        NEPAL                          3+               1       25     488
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      570    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       70    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                0      458    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                1       49    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+               0      433    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+               1       59    1639
24 months   ki1135781-COHORTS          GUATEMALA                      1                0       83    1064
24 months   ki1135781-COHORTS          GUATEMALA                      1                1       83    1064
24 months   ki1135781-COHORTS          GUATEMALA                      2                0       80    1064
24 months   ki1135781-COHORTS          GUATEMALA                      2                1       71    1064
24 months   ki1135781-COHORTS          GUATEMALA                      3+               0      380    1064
24 months   ki1135781-COHORTS          GUATEMALA                      3+               1      367    1064
24 months   ki1135781-COHORTS          INDIA                          1                0      457    3380
24 months   ki1135781-COHORTS          INDIA                          1                1      107    3380
24 months   ki1135781-COHORTS          INDIA                          2                0      679    3380
24 months   ki1135781-COHORTS          INDIA                          2                1      169    3380
24 months   ki1135781-COHORTS          INDIA                          3+               0     1355    3380
24 months   ki1135781-COHORTS          INDIA                          3+               1      613    3380
24 months   ki1135781-COHORTS          PHILIPPINES                    1                0      428    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1                1       96    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    2                0      400    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    2                1      144    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    3+               0      910    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    3+               1      467    2445
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     2692    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      481    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                0     2513    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                1      410    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+               0     2080    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+               1      456    8632


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

* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
![](/tmp/f15bf99d-85e9-412f-b537-92e7b5d74636/23d2e9db-63e6-41bd-b111-7b22e23a103a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f15bf99d-85e9-412f-b537-92e7b5d74636/23d2e9db-63e6-41bd-b111-7b22e23a103a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f15bf99d-85e9-412f-b537-92e7b5d74636/23d2e9db-63e6-41bd-b111-7b22e23a103a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f15bf99d-85e9-412f-b537-92e7b5d74636/23d2e9db-63e6-41bd-b111-7b22e23a103a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.0794299    0.0247399   0.1341199
Birth       ki1000304b-SAS-CompFeed   INDIA         2                    NA                0.1000590    0.0485154   0.1516026
Birth       ki1000304b-SAS-CompFeed   INDIA         3+                   NA                0.0596398    0.0199262   0.0993533
Birth       ki1113344-GMS-Nepal       NEPAL         1                    NA                0.0710900    0.0363916   0.1057885
Birth       ki1113344-GMS-Nepal       NEPAL         2                    NA                0.0277778    0.0037532   0.0518023
Birth       ki1113344-GMS-Nepal       NEPAL         3+                   NA                0.0360656    0.0151254   0.0570058
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0328173    0.0248578   0.0407768
Birth       ki1126311-ZVITAMBO        ZIMBABWE      2                    NA                0.0273413    0.0197047   0.0349778
Birth       ki1126311-ZVITAMBO        ZIMBABWE      3+                   NA                0.0524859    0.0412791   0.0636927
Birth       ki1135781-COHORTS         INDIA         1                    NA                0.0315460    0.0185094   0.0445826
Birth       ki1135781-COHORTS         INDIA         2                    NA                0.0199416    0.0114531   0.0284301
Birth       ki1135781-COHORTS         INDIA         3+                   NA                0.0294321    0.0226662   0.0361980
Birth       ki1135781-COHORTS         PHILIPPINES   1                    NA                0.0156288    0.0054834   0.0257742
Birth       ki1135781-COHORTS         PHILIPPINES   2                    NA                0.0197555   -0.0006961   0.0402071
Birth       ki1135781-COHORTS         PHILIPPINES   3+                   NA                0.0092904    0.0053547   0.0132261
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.1607806    0.1442008   0.1773604
Birth       kiGH5241-JiVitA-3         BANGLADESH    2                    NA                0.0937748    0.0826100   0.1049395
Birth       kiGH5241-JiVitA-3         BANGLADESH    3+                   NA                0.0789124    0.0679747   0.0898501
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.1163526    0.0589468   0.1737585
6 months    ki1000304b-SAS-CompFeed   INDIA         2                    NA                0.0922177    0.0385571   0.1458784
6 months    ki1000304b-SAS-CompFeed   INDIA         3+                   NA                0.1004848    0.0517072   0.1492624
6 months    ki1113344-GMS-Nepal       NEPAL         1                    NA                0.0392157    0.0084313   0.0700001
6 months    ki1113344-GMS-Nepal       NEPAL         2                    NA                0.0402685    0.0086750   0.0718620
6 months    ki1113344-GMS-Nepal       NEPAL         3+                   NA                0.0343511    0.0122781   0.0564242
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0396153    0.0296828   0.0495477
6 months    ki1126311-ZVITAMBO        ZIMBABWE      2                    NA                0.0374081    0.0260764   0.0487398
6 months    ki1126311-ZVITAMBO        ZIMBABWE      3+                   NA                0.0486013    0.0353962   0.0618064
6 months    ki1135781-COHORTS         GUATEMALA     1                    NA                0.1266213    0.0398883   0.2133542
6 months    ki1135781-COHORTS         GUATEMALA     2                    NA                0.1054643    0.0387628   0.1721657
6 months    ki1135781-COHORTS         GUATEMALA     3+                   NA                0.1088380    0.0868022   0.1308737
6 months    ki1135781-COHORTS         INDIA         1                    NA                0.0280953    0.0156686   0.0405220
6 months    ki1135781-COHORTS         INDIA         2                    NA                0.0280632    0.0188092   0.0373173
6 months    ki1135781-COHORTS         INDIA         3+                   NA                0.0562712    0.0465065   0.0660359
6 months    ki1135781-COHORTS         PHILIPPINES   1                    NA                0.0269975    0.0073082   0.0466867
6 months    ki1135781-COHORTS         PHILIPPINES   2                    NA                0.0481086    0.0149205   0.0812966
6 months    ki1135781-COHORTS         PHILIPPINES   3+                   NA                0.0574608    0.0414135   0.0735080
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.0671263    0.0551314   0.0791213
6 months    kiGH5241-JiVitA-3         BANGLADESH    2                    NA                0.0504791    0.0422954   0.0586628
6 months    kiGH5241-JiVitA-3         BANGLADESH    3+                   NA                0.0529612    0.0430037   0.0629187
24 months   ki1017093b-PROVIDE        BANGLADESH    1                    NA                0.0860295    0.0480034   0.1240556
24 months   ki1017093b-PROVIDE        BANGLADESH    2                    NA                0.0934057    0.0534761   0.1333353
24 months   ki1017093b-PROVIDE        BANGLADESH    3+                   NA                0.0947083    0.0494933   0.1399234
24 months   ki1101329-Keneba          GAMBIA        1                    NA                0.0583942    0.0191148   0.0976736
24 months   ki1101329-Keneba          GAMBIA        2                    NA                0.0359712    0.0050027   0.0669398
24 months   ki1101329-Keneba          GAMBIA        3+                   NA                0.0945455    0.0772488   0.1118422
24 months   ki1113344-GMS-Nepal       NEPAL         1                    NA                0.0720142    0.0091599   0.1348686
24 months   ki1113344-GMS-Nepal       NEPAL         2                    NA                0.1332670   -0.0034804   0.2700144
24 months   ki1113344-GMS-Nepal       NEPAL         3+                   NA                0.0864595    0.0502608   0.1226581
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.1037968    0.0672521   0.1403414
24 months   ki1126311-ZVITAMBO        ZIMBABWE      2                    NA                0.0910141    0.0539666   0.1280616
24 months   ki1126311-ZVITAMBO        ZIMBABWE      3+                   NA                0.1086305    0.0761297   0.1411314
24 months   ki1135781-COHORTS         GUATEMALA     1                    NA                0.4889954    0.3790026   0.5989881
24 months   ki1135781-COHORTS         GUATEMALA     2                    NA                0.4277291    0.2862764   0.5691817
24 months   ki1135781-COHORTS         GUATEMALA     3+                   NA                0.5005845    0.4563574   0.5448116
24 months   ki1135781-COHORTS         INDIA         1                    NA                0.1514194    0.1155194   0.1873195
24 months   ki1135781-COHORTS         INDIA         2                    NA                0.2115811    0.1762336   0.2469285
24 months   ki1135781-COHORTS         INDIA         3+                   NA                0.3111055    0.2881883   0.3340227
24 months   ki1135781-COHORTS         PHILIPPINES   1                    NA                0.1757649    0.1304121   0.2211177
24 months   ki1135781-COHORTS         PHILIPPINES   2                    NA                0.2560936    0.1892222   0.3229650
24 months   ki1135781-COHORTS         PHILIPPINES   3+                   NA                0.3548854    0.3242200   0.3855508
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.1263308    0.1074883   0.1451734
24 months   kiGH5241-JiVitA-3         BANGLADESH    2                    NA                0.1478503    0.1269135   0.1687871
24 months   kiGH5241-JiVitA-3         BANGLADESH    3+                   NA                0.1670552    0.1455076   0.1886027


### Parameter: E(Y)


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0726837   0.0523147   0.0930527
Birth       ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.0445402   0.0292033   0.0598771
Birth       ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0318582   0.0289357   0.0347806
Birth       ki1135781-COHORTS         INDIA         NA                   NA                0.0274139   0.0224285   0.0323992
Birth       ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0150820   0.0107558   0.0194081
Birth       kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.1090180   0.1044666   0.1135695
6 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.0372340   0.0215945   0.0528736
6 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0404938   0.0363439   0.0446436
6 months    ki1135781-COHORTS         GUATEMALA     NA                   NA                0.1290323   0.1078261   0.1502385
6 months    ki1135781-COHORTS         INDIA         NA                   NA                0.0484735   0.0420469   0.0549002
6 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0487445   0.0406327   0.0568562
6 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0606746   0.0568229   0.0645262
24 months   ki1017093b-PROVIDE        BANGLADESH    NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.0850291   0.0702861   0.0997720
24 months   ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.1086066   0.0809724   0.1362407
24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.1086028   0.0935351   0.1236705
24 months   ki1135781-COHORTS         GUATEMALA     NA                   NA                0.4896617   0.4596107   0.5197126
24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.2630178   0.2481729   0.2778626
24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.2891616   0.2711872   0.3071359
24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.1560473   0.1472898   0.1648047


### Parameter: RR


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed   INDIA         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA         2                    1                 1.2597152   0.5597490   2.8349889
Birth       ki1000304b-SAS-CompFeed   INDIA         3+                   1                 0.7508480   0.2708168   2.0817493
Birth       ki1113344-GMS-Nepal       NEPAL         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal       NEPAL         2                    1                 0.3907407   0.1447400   1.0548458
Birth       ki1113344-GMS-Nepal       NEPAL         3+                   1                 0.5073224   0.2376100   1.0831868
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE      2                    1                 0.8331362   0.5755448   1.2060154
Birth       ki1126311-ZVITAMBO        ZIMBABWE      3+                   1                 1.5993360   1.1578210   2.2092151
Birth       ki1135781-COHORTS         INDIA         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         INDIA         2                    1                 0.6321443   0.3492672   1.1441281
Birth       ki1135781-COHORTS         INDIA         3+                   1                 0.9329894   0.5814539   1.4970563
Birth       ki1135781-COHORTS         PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         PHILIPPINES   2                    1                 1.2640481   0.3723069   4.2916682
Birth       ki1135781-COHORTS         PHILIPPINES   3+                   1                 0.5944418   0.2736246   1.2914081
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH    2                    1                 0.5832467   0.4966287   0.6849719
Birth       kiGH5241-JiVitA-3         BANGLADESH    3+                   1                 0.4908078   0.4119926   0.5847004
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA         2                    1                 0.7925712   0.3764194   1.6688012
6 months    ki1000304b-SAS-CompFeed   INDIA         3+                   1                 0.8636230   0.4184301   1.7824834
6 months    ki1113344-GMS-Nepal       NEPAL         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL         2                    1                 1.0268456   0.3384548   3.1153701
6 months    ki1113344-GMS-Nepal       NEPAL         3+                   1                 0.8759542   0.3176197   2.4157685
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE      2                    1                 0.9442861   0.6373690   1.3989954
6 months    ki1126311-ZVITAMBO        ZIMBABWE      3+                   1                 1.2268325   0.8477556   1.7754150
6 months    ki1135781-COHORTS         GUATEMALA     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         GUATEMALA     2                    1                 0.8329109   0.3277421   2.1167270
6 months    ki1135781-COHORTS         GUATEMALA     3+                   1                 0.8595551   0.4208682   1.7555019
6 months    ki1135781-COHORTS         INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         INDIA         2                    1                 0.9988591   0.5755365   1.7335468
6 months    ki1135781-COHORTS         INDIA         3+                   1                 2.0028713   1.2455119   3.2207587
6 months    ki1135781-COHORTS         PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         PHILIPPINES   2                    1                 1.7819665   0.6541182   4.8544815
6 months    ki1135781-COHORTS         PHILIPPINES   3+                   1                 2.1283778   0.9761507   4.6406688
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH    2                    1                 0.7520014   0.5911808   0.9565704
6 months    kiGH5241-JiVitA-3         BANGLADESH    3+                   1                 0.7889784   0.6059604   1.0272732
24 months   ki1017093b-PROVIDE        BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH    2                    1                 1.0857401   0.5867962   2.0089285
24 months   ki1017093b-PROVIDE        BANGLADESH    3+                   1                 1.1008820   0.5739100   2.1117271
24 months   ki1101329-Keneba          GAMBIA        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba          GAMBIA        2                    1                 0.6160075   0.2065845   1.8368524
24 months   ki1101329-Keneba          GAMBIA        3+                   1                 1.6190909   0.8063563   3.2509887
24 months   ki1113344-GMS-Nepal       NEPAL         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL         2                    1                 1.8505649   0.4819388   7.1058618
24 months   ki1113344-GMS-Nepal       NEPAL         3+                   1                 1.2005887   0.4552109   3.1664736
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE      2                    1                 0.8768492   0.5122988   1.5008127
24 months   ki1126311-ZVITAMBO        ZIMBABWE      3+                   1                 1.0465695   0.6595038   1.6608057
24 months   ki1135781-COHORTS         GUATEMALA     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS         GUATEMALA     2                    1                 0.8747099   0.5865296   1.3044822
24 months   ki1135781-COHORTS         GUATEMALA     3+                   1                 1.0236999   0.8045870   1.3024838
24 months   ki1135781-COHORTS         INDIA         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS         INDIA         2                    1                 1.3973178   1.0463538   1.8660007
24 months   ki1135781-COHORTS         INDIA         3+                   1                 2.0545941   1.6041847   2.6314657
24 months   ki1135781-COHORTS         PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS         PHILIPPINES   2                    1                 1.4570234   1.0108743   2.1000804
24 months   ki1135781-COHORTS         PHILIPPINES   3+                   1                 2.0190908   1.5402623   2.6467750
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH    2                    1                 1.1703423   0.9540606   1.4356542
24 months   kiGH5241-JiVitA-3         BANGLADESH    3+                   1                 1.3223627   1.0833692   1.6140786


### Parameter: PAR


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed   INDIA         1                    NA                -0.0067462   -0.0605906    0.0470983
Birth       ki1113344-GMS-Nepal       NEPAL         1                    NA                -0.0265498   -0.0531807    0.0000811
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                -0.0009591   -0.0083574    0.0064391
Birth       ki1135781-COHORTS         INDIA         1                    NA                -0.0041321   -0.0158638    0.0075996
Birth       ki1135781-COHORTS         PHILIPPINES   1                    NA                -0.0005468   -0.0097402    0.0086466
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -0.0517626   -0.0674637   -0.0360615
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    NA                -0.0205442   -0.0756305    0.0345420
6 months    ki1113344-GMS-Nepal       NEPAL         1                    NA                -0.0019816   -0.0280222    0.0240589
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                 0.0008785   -0.0082023    0.0099593
6 months    ki1135781-COHORTS         GUATEMALA     1                    NA                 0.0024110   -0.0827611    0.0875831
6 months    ki1135781-COHORTS         INDIA         1                    NA                 0.0203783    0.0082469    0.0325096
6 months    ki1135781-COHORTS         PHILIPPINES   1                    NA                 0.0217470    0.0021924    0.0413017
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -0.0064518   -0.0174919    0.0045884
24 months   ki1017093b-PROVIDE        BANGLADESH    1                    NA                 0.0039359   -0.0268170    0.0346888
24 months   ki1101329-Keneba          GAMBIA        1                    NA                 0.0266349   -0.0114833    0.0647531
24 months   ki1113344-GMS-Nepal       NEPAL         1                    NA                 0.0365923   -0.0242406    0.0974252
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                 0.0048061   -0.0287784    0.0383905
24 months   ki1135781-COHORTS         GUATEMALA     1                    NA                 0.0006663   -0.1060204    0.1073530
24 months   ki1135781-COHORTS         INDIA         1                    NA                 0.1115983    0.0765515    0.1466451
24 months   ki1135781-COHORTS         PHILIPPINES   1                    NA                 0.1133966    0.0692333    0.1575600
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    NA                 0.0297164    0.0118635    0.0475694


### Parameter: PAF


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed   INDIA         1                    NA                -0.0928154   -1.1609686    0.4473564
Birth       ki1113344-GMS-Nepal       NEPAL         1                    NA                -0.5960862   -1.2770413   -0.1187725
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                -0.0301067   -0.2906033    0.1778111
Birth       ki1135781-COHORTS         INDIA         1                    NA                -0.1507303   -0.6678427    0.2060522
Birth       ki1135781-COHORTS         PHILIPPINES   1                    NA                -0.0362559   -0.8663278    0.4246314
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -0.4748075   -0.6264314   -0.3373187
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    NA                -0.2144306   -0.9545500    0.2454316
6 months    ki1113344-GMS-Nepal       NEPAL         1                    NA                -0.0532213   -1.0453620    0.4576632
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                 0.0216951   -0.2303153    0.2220853
6 months    ki1135781-COHORTS         GUATEMALA     1                    NA                 0.0186850   -0.9225275    0.4991078
6 months    ki1135781-COHORTS         INDIA         1                    NA                 0.4203998    0.1166554    0.6196995
6 months    ki1135781-COHORTS         PHILIPPINES   1                    NA                 0.4461432   -0.1276958    0.7279786
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -0.1063341   -0.3035865    0.0610711
24 months   ki1017093b-PROVIDE        BANGLADESH    1                    NA                 0.0437490   -0.3669218    0.3310399
24 months   ki1101329-Keneba          GAMBIA        1                    NA                 0.3132448   -0.3136430    0.6409734
24 months   ki1113344-GMS-Nepal       NEPAL         1                    NA                 0.3369254   -0.5279866    0.7122567
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                 0.0442535   -0.3207994    0.3084102
24 months   ki1135781-COHORTS         GUATEMALA     1                    NA                 0.0013607   -0.2421097    0.1971076
24 months   ki1135781-COHORTS         INDIA         1                    NA                 0.4242995    0.2763011    0.5420318
24 months   ki1135781-COHORTS         PHILIPPINES   1                    NA                 0.3921567    0.2203076    0.5261291
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    NA                 0.1904322    0.0685643    0.2963550
