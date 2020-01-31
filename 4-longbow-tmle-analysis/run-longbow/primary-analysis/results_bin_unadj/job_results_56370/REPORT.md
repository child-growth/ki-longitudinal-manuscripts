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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        parity    swasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -------  --------  -------  ------  -----------------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0      289    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1       15    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               0      253    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               1        5    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+              0      532    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+              1        9    1103  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               0      194     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               1        8     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     2               0      180     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     2               1        2     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+              0      145     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+              1        3     532  swasted          
Birth       ki1101329-Keneba           GAMBIA                         1               0      131    1338  swasted          
Birth       ki1101329-Keneba           GAMBIA                         1               1       15    1338  swasted          
Birth       ki1101329-Keneba           GAMBIA                         2               0      133    1338  swasted          
Birth       ki1101329-Keneba           GAMBIA                         2               1        9    1338  swasted          
Birth       ki1101329-Keneba           GAMBIA                         3+              0      978    1338  swasted          
Birth       ki1101329-Keneba           GAMBIA                         3+              1       72    1338  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1               0      174     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1               1       11     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          2               0      160     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          2               1        9     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          3+              0      280     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          3+              1        7     641  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0     5154   12916  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1      407   12916  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               0     3671   12916  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               1      211   12916  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     3299   12916  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      174   12916  swasted          
Birth       ki1135781-COHORTS          GUATEMALA                      1               0       84     756  swasted          
Birth       ki1135781-COHORTS          GUATEMALA                      1               1       10     756  swasted          
Birth       ki1135781-COHORTS          GUATEMALA                      2               0      109     756  swasted          
Birth       ki1135781-COHORTS          GUATEMALA                      2               1        9     756  swasted          
Birth       ki1135781-COHORTS          GUATEMALA                      3+              0      503     756  swasted          
Birth       ki1135781-COHORTS          GUATEMALA                      3+              1       41     756  swasted          
Birth       ki1135781-COHORTS          INDIA                          1               0      599    3855  swasted          
Birth       ki1135781-COHORTS          INDIA                          1               1       42    3855  swasted          
Birth       ki1135781-COHORTS          INDIA                          2               0      941    3855  swasted          
Birth       ki1135781-COHORTS          INDIA                          2               1       41    3855  swasted          
Birth       ki1135781-COHORTS          INDIA                          3+              0     2138    3855  swasted          
Birth       ki1135781-COHORTS          INDIA                          3+              1       94    3855  swasted          
Birth       ki1135781-COHORTS          PHILIPPINES                    1               0      595    2899  swasted          
Birth       ki1135781-COHORTS          PHILIPPINES                    1               1       45    2899  swasted          
Birth       ki1135781-COHORTS          PHILIPPINES                    2               0      631    2899  swasted          
Birth       ki1135781-COHORTS          PHILIPPINES                    2               1       26    2899  swasted          
Birth       ki1135781-COHORTS          PHILIPPINES                    3+              0     1552    2899  swasted          
Birth       ki1135781-COHORTS          PHILIPPINES                    3+              1       50    2899  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     5387   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1      133   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               0     6193   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               1      110   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+              0     6085   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+              1      106   18014  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      381    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1       11    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               0      293    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               1        9    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              0      617    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              1       23    1334  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0        6     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1        1     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               0       72     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               1        0     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+              0      283     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+              1       18     380  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      215     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1        3     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               0      222     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               1        0     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+              0      161     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+              1        2     603  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      674    1994  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        5    1994  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      653    1994  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        4    1994  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0      655    1994  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1        3    1994  swasted          
6 months    ki1101329-Keneba           GAMBIA                         1               0      192    1623  swasted          
6 months    ki1101329-Keneba           GAMBIA                         1               1        3    1623  swasted          
6 months    ki1101329-Keneba           GAMBIA                         2               0      163    1623  swasted          
6 months    ki1101329-Keneba           GAMBIA                         2               1        1    1623  swasted          
6 months    ki1101329-Keneba           GAMBIA                         3+              0     1242    1623  swasted          
6 months    ki1101329-Keneba           GAMBIA                         3+              1       22    1623  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      153     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1        0     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          2               0      144     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          2               1        5     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          3+              0      260     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          3+              1        2     564  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0     3372    8504  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1       20    8504  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               0     2557    8504  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               1       30    8504  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     2496    8504  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              1       29    8504  swasted          
6 months    ki1135781-COHORTS          GUATEMALA                      1               0      131     963  swasted          
6 months    ki1135781-COHORTS          GUATEMALA                      1               1        1     963  swasted          
6 months    ki1135781-COHORTS          GUATEMALA                      2               0      138     963  swasted          
6 months    ki1135781-COHORTS          GUATEMALA                      2               1        1     963  swasted          
6 months    ki1135781-COHORTS          GUATEMALA                      3+              0      688     963  swasted          
6 months    ki1135781-COHORTS          GUATEMALA                      3+              1        4     963  swasted          
6 months    ki1135781-COHORTS          INDIA                          1               0      722    4285  swasted          
6 months    ki1135781-COHORTS          INDIA                          1               1       19    4285  swasted          
6 months    ki1135781-COHORTS          INDIA                          2               0     1073    4285  swasted          
6 months    ki1135781-COHORTS          INDIA                          2               1       20    4285  swasted          
6 months    ki1135781-COHORTS          INDIA                          3+              0     2356    4285  swasted          
6 months    ki1135781-COHORTS          INDIA                          3+              1       95    4285  swasted          
6 months    ki1135781-COHORTS          PHILIPPINES                    1               0      569    2706  swasted          
6 months    ki1135781-COHORTS          PHILIPPINES                    1               1        5    2706  swasted          
6 months    ki1135781-COHORTS          PHILIPPINES                    2               0      605    2706  swasted          
6 months    ki1135781-COHORTS          PHILIPPINES                    2               1        2    2706  swasted          
6 months    ki1135781-COHORTS          PHILIPPINES                    3+              0     1497    2706  swasted          
6 months    ki1135781-COHORTS          PHILIPPINES                    3+              1       28    2706  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     6305   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1       93   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               0     5611   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               1       74   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              0     4638   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              1       63   16784  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      209     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1        2     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               0      210     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               1        3     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              0      151     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              1        4     579  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        1       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0        1       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0        4       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1        0       6  swasted          
24 months   ki1101329-Keneba           GAMBIA                         1               0      137    1376  swasted          
24 months   ki1101329-Keneba           GAMBIA                         1               1        0    1376  swasted          
24 months   ki1101329-Keneba           GAMBIA                         2               0      137    1376  swasted          
24 months   ki1101329-Keneba           GAMBIA                         2               1        2    1376  swasted          
24 months   ki1101329-Keneba           GAMBIA                         3+              0     1080    1376  swasted          
24 months   ki1101329-Keneba           GAMBIA                         3+              1       20    1376  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      126     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1        4     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0      125     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          2               1        5     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          3+              0      221     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          3+              1        6     487  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0      150     432  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       11     432  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               0      116     432  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               1        7     432  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              0      135     432  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              1       13     432  swasted          
24 months   ki1135781-COHORTS          GUATEMALA                      1               0      167    1076  swasted          
24 months   ki1135781-COHORTS          GUATEMALA                      1               1        0    1076  swasted          
24 months   ki1135781-COHORTS          GUATEMALA                      2               0      151    1076  swasted          
24 months   ki1135781-COHORTS          GUATEMALA                      2               1        0    1076  swasted          
24 months   ki1135781-COHORTS          GUATEMALA                      3+              0      754    1076  swasted          
24 months   ki1135781-COHORTS          GUATEMALA                      3+              1        4    1076  swasted          
24 months   ki1135781-COHORTS          INDIA                          1               0      558    3354  swasted          
24 months   ki1135781-COHORTS          INDIA                          1               1        3    3354  swasted          
24 months   ki1135781-COHORTS          INDIA                          2               0      831    3354  swasted          
24 months   ki1135781-COHORTS          INDIA                          2               1        6    3354  swasted          
24 months   ki1135781-COHORTS          INDIA                          3+              0     1929    3354  swasted          
24 months   ki1135781-COHORTS          INDIA                          3+              1       27    3354  swasted          
24 months   ki1135781-COHORTS          PHILIPPINES                    1               0      520    2449  swasted          
24 months   ki1135781-COHORTS          PHILIPPINES                    1               1        3    2449  swasted          
24 months   ki1135781-COHORTS          PHILIPPINES                    2               0      540    2449  swasted          
24 months   ki1135781-COHORTS          PHILIPPINES                    2               1        4    2449  swasted          
24 months   ki1135781-COHORTS          PHILIPPINES                    3+              0     1364    2449  swasted          
24 months   ki1135781-COHORTS          PHILIPPINES                    3+              1       18    2449  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     3051    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      115    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0     2786    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1      123    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              0     2431    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              1       97    8603  swasted          


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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES

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




# Results Detail

## Results Plots
![](/tmp/83f23716-162f-446c-b432-40ca57009914/31a5e30c-37d3-44a5-8b9e-d44cef0f7c43/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/83f23716-162f-446c-b432-40ca57009914/31a5e30c-37d3-44a5-8b9e-d44cef0f7c43/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/83f23716-162f-446c-b432-40ca57009914/31a5e30c-37d3-44a5-8b9e-d44cef0f7c43/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/83f23716-162f-446c-b432-40ca57009914/31a5e30c-37d3-44a5-8b9e-d44cef0f7c43/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.0493421   0.0195565   0.0791278
Birth       ki1000304b-SAS-CompFeed   INDIA         2                    NA                0.0193798   0.0085871   0.0301725
Birth       ki1000304b-SAS-CompFeed   INDIA         3+                   NA                0.0166359   0.0036649   0.0296069
Birth       ki1101329-Keneba          GAMBIA        1                    NA                0.1027397   0.0534720   0.1520074
Birth       ki1101329-Keneba          GAMBIA        2                    NA                0.0633803   0.0232913   0.1034693
Birth       ki1101329-Keneba          GAMBIA        3+                   NA                0.0685714   0.0532795   0.0838634
Birth       ki1113344-GMS-Nepal       NEPAL         1                    NA                0.0594595   0.0253558   0.0935631
Birth       ki1113344-GMS-Nepal       NEPAL         2                    NA                0.0532544   0.0193748   0.0871340
Birth       ki1113344-GMS-Nepal       NEPAL         3+                   NA                0.0243902   0.0065298   0.0422507
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0731883   0.0663428   0.0800338
Birth       ki1126311-ZVITAMBO        ZIMBABWE      2                    NA                0.0543534   0.0472214   0.0614855
Birth       ki1126311-ZVITAMBO        ZIMBABWE      3+                   NA                0.0501008   0.0428452   0.0573564
Birth       ki1135781-COHORTS         GUATEMALA     1                    NA                0.1063830   0.0440119   0.1687541
Birth       ki1135781-COHORTS         GUATEMALA     2                    NA                0.0762712   0.0283479   0.1241945
Birth       ki1135781-COHORTS         GUATEMALA     3+                   NA                0.0753676   0.0531697   0.0975656
Birth       ki1135781-COHORTS         INDIA         1                    NA                0.0655226   0.0463644   0.0846809
Birth       ki1135781-COHORTS         INDIA         2                    NA                0.0417515   0.0292396   0.0542634
Birth       ki1135781-COHORTS         INDIA         3+                   NA                0.0421147   0.0337811   0.0504483
Birth       ki1135781-COHORTS         PHILIPPINES   1                    NA                0.0703125   0.0505010   0.0901240
Birth       ki1135781-COHORTS         PHILIPPINES   2                    NA                0.0395738   0.0246639   0.0544838
Birth       ki1135781-COHORTS         PHILIPPINES   3+                   NA                0.0312110   0.0226945   0.0397275
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.0240942   0.0193638   0.0288246
Birth       kiGH5241-JiVitA-3         BANGLADESH    2                    NA                0.0174520   0.0137105   0.0211935
Birth       kiGH5241-JiVitA-3         BANGLADESH    3+                   NA                0.0171216   0.0133069   0.0209364
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.0280612   0.0140579   0.0420646
6 months    ki1000304b-SAS-CompFeed   INDIA         2                    NA                0.0298013   0.0154373   0.0441654
6 months    ki1000304b-SAS-CompFeed   INDIA         3+                   NA                0.0359375   0.0218263   0.0500487
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0058962   0.0033196   0.0084728
6 months    ki1126311-ZVITAMBO        ZIMBABWE      2                    NA                0.0115964   0.0074707   0.0157222
6 months    ki1126311-ZVITAMBO        ZIMBABWE      3+                   NA                0.0114851   0.0073289   0.0156414
6 months    ki1135781-COHORTS         INDIA         1                    NA                0.0256410   0.0142591   0.0370230
6 months    ki1135781-COHORTS         INDIA         2                    NA                0.0182983   0.0103516   0.0262449
6 months    ki1135781-COHORTS         INDIA         3+                   NA                0.0387597   0.0311172   0.0464022
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.0145358   0.0109434   0.0181281
6 months    kiGH5241-JiVitA-3         BANGLADESH    2                    NA                0.0130167   0.0097085   0.0163249
6 months    kiGH5241-JiVitA-3         BANGLADESH    3+                   NA                0.0134014   0.0100032   0.0167996
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0683230   0.0293059   0.1073400
24 months   ki1126311-ZVITAMBO        ZIMBABWE      2                    NA                0.0569106   0.0159212   0.0979000
24 months   ki1126311-ZVITAMBO        ZIMBABWE      3+                   NA                0.0878378   0.0421819   0.1334938
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.0363234   0.0296503   0.0429966
24 months   kiGH5241-JiVitA-3         BANGLADESH    2                    NA                0.0422826   0.0339138   0.0506514
24 months   kiGH5241-JiVitA-3         BANGLADESH    3+                   NA                0.0383703   0.0306068   0.0461337


### Parameter: E(Y)


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0262919   0.0122874   0.0402964
Birth       ki1101329-Keneba          GAMBIA        NA                   NA                0.0717489   0.0579157   0.0855821
Birth       ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.0421217   0.0265597   0.0576837
Birth       ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0613193   0.0571816   0.0654570
Birth       ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0793651   0.0600839   0.0986462
Birth       ki1135781-COHORTS         INDIA         NA                   NA                0.0459144   0.0393065   0.0525222
Birth       ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0193738   0.0169653   0.0217823
6 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0322339   0.0235219   0.0409459
6 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0092897   0.0072507   0.0113288
6 months    ki1135781-COHORTS         INDIA         NA                   NA                0.0312719   0.0260599   0.0364838
6 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0137035   0.0116269   0.0157801
24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0717593   0.0473936   0.0961250
24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0389399   0.0346167   0.0432631


### Parameter: RR


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed   INDIA         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA         2                    1                 0.3927649   0.2076508   0.7429023
Birth       ki1000304b-SAS-CompFeed   INDIA         3+                   1                 0.3371534   0.1521067   0.7473205
Birth       ki1101329-Keneba          GAMBIA        1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba          GAMBIA        2                    1                 0.6169014   0.2789306   1.3643800
Birth       ki1101329-Keneba          GAMBIA        3+                   1                 0.6674286   0.3933010   1.1326209
Birth       ki1113344-GMS-Nepal       NEPAL         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal       NEPAL         2                    1                 0.8956428   0.3803066   2.1092877
Birth       ki1113344-GMS-Nepal       NEPAL         3+                   1                 0.4101996   0.1618193   1.0398242
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE      2                    1                 0.7426521   0.6321253   0.8725044
Birth       ki1126311-ZVITAMBO        ZIMBABWE      3+                   1                 0.6845465   0.5761442   0.8133448
Birth       ki1135781-COHORTS         GUATEMALA     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         GUATEMALA     2                    1                 0.7169492   0.3035745   1.6932122
Birth       ki1135781-COHORTS         GUATEMALA     3+                   1                 0.7084559   0.3675932   1.3653943
Birth       ki1135781-COHORTS         INDIA         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         INDIA         2                    1                 0.6372078   0.4192258   0.9685325
Birth       ki1135781-COHORTS         INDIA         3+                   1                 0.6427505   0.4515567   0.9148976
Birth       ki1135781-COHORTS         PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         PHILIPPINES   2                    1                 0.5628277   0.3516036   0.9009436
Birth       ki1135781-COHORTS         PHILIPPINES   3+                   1                 0.4438896   0.2998677   0.6570829
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH    2                    1                 0.7243239   0.5416289   0.9686432
Birth       kiGH5241-JiVitA-3         BANGLADESH    3+                   1                 0.7106120   0.5314052   0.9502529
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA         2                    1                 1.0620108   0.6052683   1.8634168
6 months    ki1000304b-SAS-CompFeed   INDIA         3+                   1                 1.2806818   0.6228782   2.6331726
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE      2                    1                 1.9667565   1.1194949   3.4552467
6 months    ki1126311-ZVITAMBO        ZIMBABWE      3+                   1                 1.9478808   1.1044652   3.4353636
6 months    ki1135781-COHORTS         INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         INDIA         2                    1                 0.7136322   0.3835092   1.3279238
6 months    ki1135781-COHORTS         INDIA         3+                   1                 1.5116279   0.9300370   2.4569119
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH    2                    1                 0.8954937   0.6353147   1.2622232
6 months    kiGH5241-JiVitA-3         BANGLADESH    3+                   1                 0.9219590   0.6461534   1.3154900
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE      2                    1                 0.8329638   0.3322286   2.0884073
24 months   ki1126311-ZVITAMBO        ZIMBABWE      3+                   1                 1.2856265   0.5939568   2.7827538
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH    2                    1                 1.1640576   0.8909410   1.5208977
24 months   kiGH5241-JiVitA-3         BANGLADESH    3+                   1                 1.0563498   0.8019389   1.3914710


### Parameter: PAR


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed   INDIA         1                    NA                -0.0230502   -0.0425694   -0.0035310
Birth       ki1101329-Keneba          GAMBIA        1                    NA                -0.0309908   -0.0766958    0.0147141
Birth       ki1113344-GMS-Nepal       NEPAL         1                    NA                -0.0173378   -0.0444282    0.0097526
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                -0.0118690   -0.0167300   -0.0070080
Birth       ki1135781-COHORTS         GUATEMALA     1                    NA                -0.0270179   -0.0844158    0.0303800
Birth       ki1135781-COHORTS         INDIA         1                    NA                -0.0196082   -0.0365977   -0.0026188
Birth       ki1135781-COHORTS         PHILIPPINES   1                    NA                -0.0285740   -0.0450729   -0.0120751
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -0.0047204   -0.0084488   -0.0009920
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    NA                 0.0041727   -0.0094235    0.0177689
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                 0.0033935    0.0010482    0.0057389
6 months    ki1135781-COHORTS         INDIA         1                    NA                 0.0056309   -0.0049478    0.0162095
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -0.0008323   -0.0034642    0.0017996
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                 0.0034363   -0.0278897    0.0347623
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    NA                 0.0026165   -0.0028735    0.0081065


### Parameter: PAF


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed   INDIA         1                    NA                -0.8767014   -1.6019224   -0.3536177
Birth       ki1101329-Keneba          GAMBIA        1                    NA                -0.4319349   -1.2275847    0.0795243
Birth       ki1113344-GMS-Nepal       NEPAL         1                    NA                -0.4116116   -1.2013007    0.0947864
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                -0.1935603   -0.2745500   -0.1177170
Birth       ki1135781-COHORTS         GUATEMALA     1                    NA                -0.3404255   -1.2928794    0.2163824
Birth       ki1135781-COHORTS         INDIA         1                    NA                -0.4270605   -0.8437543   -0.1045406
Birth       ki1135781-COHORTS         PHILIPPINES   1                    NA                -0.6845945   -1.1103485   -0.3447346
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -0.2436474   -0.4492881   -0.0671853
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    NA                 0.1294495   -0.4000328    0.4586853
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                 0.3652973    0.0742669    0.5648340
6 months    ki1135781-COHORTS         INDIA         1                    NA                 0.1800612   -0.2367681    0.4564061
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -0.0607337   -0.2698591    0.1139522
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                 0.0478862   -0.5055473    0.3978796
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    NA                 0.0671925   -0.0844487    0.1976292
