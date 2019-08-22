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

**Outcome Variable:** haz

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

agecat      studyid                    country                        parity    n_cell       n
----------  -------------------------  -----------------------------  -------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1             47     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2             53     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+            87     187
Birth       ki1101329-Keneba           GAMBIA                         1            156    1407
Birth       ki1101329-Keneba           GAMBIA                         2            146    1407
Birth       ki1101329-Keneba           GAMBIA                         3+          1105    1407
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           5972   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2           4125   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+          3732   13829
Birth       ki1135781-COHORTS          GUATEMALA                      1            112     852
Birth       ki1135781-COHORTS          GUATEMALA                      2            137     852
Birth       ki1135781-COHORTS          GUATEMALA                      3+           603     852
Birth       ki1135781-COHORTS          INDIA                          1            696    4122
Birth       ki1135781-COHORTS          INDIA                          2           1037    4122
Birth       ki1135781-COHORTS          INDIA                          3+          2389    4122
Birth       ki1135781-COHORTS          PHILIPPINES                    1            675    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    2            687    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    3+          1688    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           6271   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           6710   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+          6613   19594
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            392    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2            304    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+           640    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             72     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             84     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+           217     373
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            211     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2            212     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+           160     583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            680    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            657    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           658    1995
6 months    ki1101329-Keneba           GAMBIA                         1            194    1623
6 months    ki1101329-Keneba           GAMBIA                         2            164    1623
6 months    ki1101329-Keneba           GAMBIA                         3+          1265    1623
6 months    ki1113344-GMS-Nepal        NEPAL                          1            153     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2            149     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3+           261     563
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           3302    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           2522    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+          2470    8294
6 months    ki1135781-COHORTS          GUATEMALA                      1            132     961
6 months    ki1135781-COHORTS          GUATEMALA                      2            139     961
6 months    ki1135781-COHORTS          GUATEMALA                      3+           690     961
6 months    ki1135781-COHORTS          INDIA                          1            740    4291
6 months    ki1135781-COHORTS          INDIA                          2           1096    4291
6 months    ki1135781-COHORTS          INDIA                          3+          2455    4291
6 months    ki1135781-COHORTS          PHILIPPINES                    1            574    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    2            606    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    3+          1528    2708
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           6388   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           5700   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+          4715   16803
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            211     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2            213     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+           153     577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       6
24 months   ki1101329-Keneba           GAMBIA                         1            137    1376
24 months   ki1101329-Keneba           GAMBIA                         2            139    1376
24 months   ki1101329-Keneba           GAMBIA                         3+          1100    1376
24 months   ki1113344-GMS-Nepal        NEPAL                          1            136     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2            130     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3+           233     499
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            177     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            134     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           145     456
24 months   ki1135781-COHORTS          GUATEMALA                      1            167    1067
24 months   ki1135781-COHORTS          GUATEMALA                      2            151    1067
24 months   ki1135781-COHORTS          GUATEMALA                      3+           749    1067
24 months   ki1135781-COHORTS          INDIA                          1            565    3383
24 months   ki1135781-COHORTS          INDIA                          2            850    3383
24 months   ki1135781-COHORTS          INDIA                          3+          1968    3383
24 months   ki1135781-COHORTS          PHILIPPINES                    1            524    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    2            544    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    3+          1377    2445
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           3165    8624
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2923    8624
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+          2536    8624


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
![](/tmp/6b9f994b-e50e-49ef-805c-3c8495da341a/8bfb9171-bc42-4a36-87de-c0694c8833f5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6b9f994b-e50e-49ef-805c-3c8495da341a/8bfb9171-bc42-4a36-87de-c0694c8833f5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6b9f994b-e50e-49ef-805c-3c8495da341a/8bfb9171-bc42-4a36-87de-c0694c8833f5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.4585106   -1.8541897   -1.0628316
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -1.6077358   -1.9401615   -1.2753102
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -1.2303448   -1.4631389   -0.9975507
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -0.3278846   -0.5117293   -0.1440399
Birth       ki1101329-Keneba           GAMBIA                         2                    NA                -0.0329452   -0.2164585    0.1505681
Birth       ki1101329-Keneba           GAMBIA                         3+                   NA                 0.1137919    0.0374859    0.1900979
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.5347338   -0.5662204   -0.5032471
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.4934909   -0.5295287   -0.4574531
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.4553778   -0.4964009   -0.4143547
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.2955357   -0.4961176   -0.0949538
Birth       ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.0281752   -0.2562105    0.1998601
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   NA                 0.2445937    0.1463298    0.3428576
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.8560489   -0.9418893   -0.7702084
Birth       ki1135781-COHORTS          INDIA                          2                    NA                -0.6238284   -0.6910831   -0.5565736
Birth       ki1135781-COHORTS          INDIA                          3+                   NA                -0.6484763   -0.6951610   -0.6017917
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.3580296   -0.4429059   -0.2731534
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.2091994   -0.2907964   -0.1276025
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -0.2216884   -0.2736422   -0.1697346
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.8066592   -1.8385884   -1.7747300
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.4891624   -1.5213900   -1.4569349
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -1.4423741   -1.4707280   -1.4140203
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.3118367   -1.4373576   -1.1863158
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -1.3070888   -1.4410886   -1.1730890
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -1.5020078   -1.5877472   -1.4162684
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -1.7179167   -1.9871700   -1.4486633
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                -1.7209524   -1.9164103   -1.5254944
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                -2.0004147   -2.1496420   -1.8511875
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.1618088   -1.2838757   -1.0397420
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.0549764   -1.1824321   -0.9275208
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -1.0311562   -1.1824160   -0.8798965
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5386838   -0.6201834   -0.4571842
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.5657902   -0.6562982   -0.4752822
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.5255471   -0.6099074   -0.4411868
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.8062506   -0.9513604   -0.6611408
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                -0.6999654   -0.8511450   -0.5487859
6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                -0.9710240   -1.0317692   -0.9102787
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.3173747   -1.4765615   -1.1581880
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.3532998   -1.4941009   -1.2124987
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -1.3287420   -1.4440326   -1.2134514
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.8830103   -0.9244545   -0.8415661
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.8593953   -0.9054914   -0.8132992
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.9332672   -0.9814029   -0.8851315
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -1.8418939   -2.0228076   -1.6609802
6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                -1.6951799   -1.8774684   -1.5128913
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                -1.8350145   -1.9150976   -1.7549314
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.9470541   -1.0297223   -0.8643858
6 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.8993339   -0.9666636   -0.8320043
6 months    ki1135781-COHORTS          INDIA                          3+                   NA                -1.1404318   -1.1872366   -1.0936270
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -1.0339895   -1.1258821   -0.9420970
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                -1.0007261   -1.0872914   -0.9141607
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -1.2360733   -1.2917219   -1.1804247
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3976378   -1.4314066   -1.3638689
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.2072930   -1.2384526   -1.1761333
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -1.3268653   -1.3640511   -1.2896796
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.5208531   -1.6642827   -1.3774235
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.5848357   -1.7186723   -1.4509991
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -1.6779085   -1.8340014   -1.5218156
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -1.4648017   -1.6375143   -1.2920891
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -1.3779556   -1.5281633   -1.2277480
24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                -1.6116744   -1.6755419   -1.5478069
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.7255515   -1.8989056   -1.5521973
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.8985385   -2.0618372   -1.7352397
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -1.9674964   -2.0853799   -1.8496129
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -2.3604520   -2.5486016   -2.1723024
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -2.3375373   -2.5327844   -2.1422902
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -2.5142069   -2.7267670   -2.3016468
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.8205389   -2.9754533   -2.6656245
24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                -2.8675497   -3.0314134   -2.7036859
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                -2.8669025   -2.9451903   -2.7886148
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -1.7211150   -1.8215657   -1.6206644
24 months   ki1135781-COHORTS          INDIA                          2                    NA                -1.7875059   -1.8682524   -1.7067594
24 months   ki1135781-COHORTS          INDIA                          3+                   NA                -2.2195884   -2.2725608   -2.1666160
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -2.0537214   -2.1469638   -1.9604789
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                -2.3031618   -2.3954576   -2.2108660
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -2.5520334   -2.6115668   -2.4925000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.9938452   -2.0355447   -1.9521456
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.9537667   -1.9940089   -1.9135245
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -2.1039314   -2.1471384   -2.0607244


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.3946524   -1.5833612   -1.2059436
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0495949   -0.0169135    0.1161033
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5010160   -0.5215903   -0.4804417
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6773241   -0.7124609   -0.6421873
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5749852   -1.5947616   -1.5552088
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8829491   -1.9941876   -1.7717105
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5432778   -0.5926218   -0.4939338
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9239386   -0.9768148   -0.8710623
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3321522   -1.4103691   -1.2539352
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8907964   -0.9167695   -0.8648233
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8157336   -1.8837688   -1.7476985
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -1.0455022   -1.0805318   -1.0104727
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3132090   -1.3363486   -1.2900693
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5734415   -1.6295670   -1.5173160
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8835905   -1.9681499   -1.7990312
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -2.4026096   -2.5176913   -2.2875280
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.8597376   -2.9241330   -2.7953421
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.0277742   -2.0690209   -1.9865275
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.3898650   -2.4346888   -2.3450412
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0126333   -2.0403442   -1.9849225


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.1492252   -0.7860765    0.4876261
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   1                  0.2281658   -0.1300640    0.5863956
Birth       ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         2                    1                  0.2949394    0.0351780    0.5547009
Birth       ki1101329-Keneba           GAMBIA                         3+                   1                  0.4416765    0.2426250    0.6407279
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0412428   -0.0066125    0.0890982
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                  0.0793559    0.0276423    0.1310696
Birth       ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      2                    1                  0.2673605   -0.0363386    0.5710597
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.5401294    0.3167712    0.7634876
Birth       ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          2                    1                  0.2322205    0.1231711    0.3412699
Birth       ki1135781-COHORTS          INDIA                          3+                   1                  0.2075725    0.1098585    0.3052865
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    1                  0.1488302    0.0310930    0.2665674
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   1                  0.1363412    0.0368266    0.2358559
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.3174968    0.2725455    0.3624480
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                  0.3642851    0.3249024    0.4036678
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.0047479   -0.1210126    0.1305084
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.1901711   -0.3323896   -0.0479526
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 -0.0030357   -0.3357536    0.3296822
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 -0.2824981   -0.5903392    0.0253430
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.1068324   -0.0696477    0.2833126
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.1306526   -0.0637178    0.3250229
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0271064   -0.1489009    0.0946881
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0131367   -0.1041614    0.1304348
6 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                  0.1062851   -0.1032670    0.3158373
6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 -0.1647734   -0.3220847   -0.0074621
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0359250   -0.2484465    0.1765964
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0113673   -0.2079184    0.1851838
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0236150   -0.0383727    0.0856026
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0502569   -0.1137760    0.0132621
6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                  0.1467141   -0.1101105    0.4035387
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0068794   -0.1909666    0.2047255
6 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          2                    1                  0.0477201   -0.0588975    0.1543378
6 months    ki1135781-COHORTS          INDIA                          3+                   1                 -0.1933777   -0.2883763   -0.0983791
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                  0.0332635   -0.0929815    0.1595085
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.2020838   -0.3095128   -0.0946547
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.1903448    0.1501180    0.2305715
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                  0.0707724    0.0239924    0.1175524
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0639826   -0.2601567    0.1321915
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.1570554   -0.3690390    0.0549282
24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0868461   -0.1420468    0.3157390
24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 -0.1468727   -0.3310158    0.0372704
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.1729870   -0.4111427    0.0651687
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.2419450   -0.4515832   -0.0323067
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0229147   -0.2482342    0.2940635
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.1537549   -0.4376247    0.1301149
24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0470107   -0.2725097    0.1784882
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0463636   -0.2199362    0.1272090
24 months   ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          2                    1                 -0.0663908   -0.1952719    0.0624902
24 months   ki1135781-COHORTS          INDIA                          3+                   1                 -0.4984734   -0.6120357   -0.3849110
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 -0.2494404   -0.3806375   -0.1182433
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.4983120   -0.6089393   -0.3876848
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0400785   -0.0121752    0.0923322
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.1100862   -0.1660588   -0.0541137


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0638582   -0.2748841    0.4026005
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                 0.3774795    0.2021872    0.5527718
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0337178    0.0100865    0.0573491
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.4252658    0.2336950    0.6168365
Birth       ki1135781-COHORTS          INDIA                          1                    NA                 0.1787247    0.1005275    0.2569219
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1089804    0.0345693    0.1833916
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.2316740    0.2061563    0.2571917
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0900196   -0.1744402   -0.0055989
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.1650324   -0.4035342    0.0734694
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0747048   -0.0250920    0.1745016
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0045940   -0.0720403    0.0628524
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1176880   -0.2548697    0.0194938
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0147774   -0.1477638    0.1182089
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0077861   -0.0397952    0.0242231
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0261603   -0.1422654    0.1945861
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0984482   -0.1739730   -0.0229234
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1065828   -0.1879586   -0.0252070
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0844288    0.0609619    0.1078958
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0652648   -0.1768743    0.0463447
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1086398   -0.2730776    0.0557980
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1580390   -0.3023342   -0.0137439
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0421577   -0.1876302    0.1033149
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0391987   -0.1828408    0.1044435
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.3066591   -0.3984263   -0.2148919
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.3361437   -0.4196706   -0.2526167
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0187882   -0.0481918    0.0106155
