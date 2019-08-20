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

agecat      studyid                    country                        parity    swasted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0       39     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1        2     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               0       43     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+              0       79     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+              1        2     166
Birth       ki1101329-Keneba           GAMBIA                         1               0      141    1292
Birth       ki1101329-Keneba           GAMBIA                         1               1        1    1292
Birth       ki1101329-Keneba           GAMBIA                         2               0      133    1292
Birth       ki1101329-Keneba           GAMBIA                         2               1        0    1292
Birth       ki1101329-Keneba           GAMBIA                         3+              0     1008    1292
Birth       ki1101329-Keneba           GAMBIA                         3+              1        9    1292
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0     5154   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1      407   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               0     3671   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               1      211   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     3299   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      173   12915
Birth       ki1135781-COHORTS          GUATEMALA                      1               0       84     756
Birth       ki1135781-COHORTS          GUATEMALA                      1               1       10     756
Birth       ki1135781-COHORTS          GUATEMALA                      2               0      109     756
Birth       ki1135781-COHORTS          GUATEMALA                      2               1        9     756
Birth       ki1135781-COHORTS          GUATEMALA                      3+              0      503     756
Birth       ki1135781-COHORTS          GUATEMALA                      3+              1       41     756
Birth       ki1135781-COHORTS          INDIA                          1               0      599    3855
Birth       ki1135781-COHORTS          INDIA                          1               1       42    3855
Birth       ki1135781-COHORTS          INDIA                          2               0      941    3855
Birth       ki1135781-COHORTS          INDIA                          2               1       41    3855
Birth       ki1135781-COHORTS          INDIA                          3+              0     2138    3855
Birth       ki1135781-COHORTS          INDIA                          3+              1       94    3855
Birth       ki1135781-COHORTS          PHILIPPINES                    1               0      595    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    1               1       45    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    2               0      631    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    2               1       26    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    3+              0     1552    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    3+              1       50    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     4515   15692
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1       89   15692
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               0     5455   15692
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               1       84   15692
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+              0     5468   15692
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+              1       81   15692
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      381    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1       11    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               0      293    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               1        9    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              0      617    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              1       23    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0       72     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1        0     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               0       79     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               1        5     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+              0      204     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+              1       13     373
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      208     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1        3     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               0      212     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               1        0     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+              0      157     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+              1        2     582
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      674    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        5    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      653    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        4    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0      655    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1        3    1994
6 months    ki1101329-Keneba           GAMBIA                         1               0      192    1623
6 months    ki1101329-Keneba           GAMBIA                         1               1        3    1623
6 months    ki1101329-Keneba           GAMBIA                         2               0      163    1623
6 months    ki1101329-Keneba           GAMBIA                         2               1        1    1623
6 months    ki1101329-Keneba           GAMBIA                         3+              0     1242    1623
6 months    ki1101329-Keneba           GAMBIA                         3+              1       22    1623
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      153     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2               0      144     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2               1        5     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3+              0      259     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3+              1        2     563
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0     3265    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1       20    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               0     2484    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               1       30    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     2435    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              1       29    8263
6 months    ki1135781-COHORTS          GUATEMALA                      1               0      131     963
6 months    ki1135781-COHORTS          GUATEMALA                      1               1        1     963
6 months    ki1135781-COHORTS          GUATEMALA                      2               0      138     963
6 months    ki1135781-COHORTS          GUATEMALA                      2               1        1     963
6 months    ki1135781-COHORTS          GUATEMALA                      3+              0      688     963
6 months    ki1135781-COHORTS          GUATEMALA                      3+              1        4     963
6 months    ki1135781-COHORTS          INDIA                          1               0      722    4285
6 months    ki1135781-COHORTS          INDIA                          1               1       19    4285
6 months    ki1135781-COHORTS          INDIA                          2               0     1073    4285
6 months    ki1135781-COHORTS          INDIA                          2               1       20    4285
6 months    ki1135781-COHORTS          INDIA                          3+              0     2356    4285
6 months    ki1135781-COHORTS          INDIA                          3+              1       95    4285
6 months    ki1135781-COHORTS          PHILIPPINES                    1               0      569    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    1               1        5    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    2               0      605    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    2               1        2    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    3+              0     1497    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    3+              1       28    2706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     6298   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1       92   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               0     5611   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               1       74   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              0     4638   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              1       63   16776
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      209     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1        2     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               0      210     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               1        3     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              0      150     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              1        4     578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1        0       6
24 months   ki1101329-Keneba           GAMBIA                         1               0      137    1376
24 months   ki1101329-Keneba           GAMBIA                         1               1        0    1376
24 months   ki1101329-Keneba           GAMBIA                         2               0      137    1376
24 months   ki1101329-Keneba           GAMBIA                         2               1        2    1376
24 months   ki1101329-Keneba           GAMBIA                         3+              0     1080    1376
24 months   ki1101329-Keneba           GAMBIA                         3+              1       20    1376
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      132     498
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1        4     498
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0      125     498
24 months   ki1113344-GMS-Nepal        NEPAL                          2               1        5     498
24 months   ki1113344-GMS-Nepal        NEPAL                          3+              0      226     498
24 months   ki1113344-GMS-Nepal        NEPAL                          3+              1        6     498
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0      149     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       11     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               0      114     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               1        7     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              0      129     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              1       12     422
24 months   ki1135781-COHORTS          GUATEMALA                      1               0      167    1076
24 months   ki1135781-COHORTS          GUATEMALA                      1               1        0    1076
24 months   ki1135781-COHORTS          GUATEMALA                      2               0      151    1076
24 months   ki1135781-COHORTS          GUATEMALA                      2               1        0    1076
24 months   ki1135781-COHORTS          GUATEMALA                      3+              0      754    1076
24 months   ki1135781-COHORTS          GUATEMALA                      3+              1        4    1076
24 months   ki1135781-COHORTS          INDIA                          1               0      558    3354
24 months   ki1135781-COHORTS          INDIA                          1               1        3    3354
24 months   ki1135781-COHORTS          INDIA                          2               0      831    3354
24 months   ki1135781-COHORTS          INDIA                          2               1        6    3354
24 months   ki1135781-COHORTS          INDIA                          3+              0     1929    3354
24 months   ki1135781-COHORTS          INDIA                          3+              1       27    3354
24 months   ki1135781-COHORTS          PHILIPPINES                    1               0      520    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    1               1        3    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    2               0      540    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    2               1        4    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    3+              0     1364    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    3+              1       18    2449
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     3045    8595
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      113    8595
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0     2786    8595
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1      123    8595
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              0     2431    8595
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              1       97    8595


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/83d9f160-7097-43bf-9cff-dbcf2d4426ba/49b1b546-9e69-4bd7-b00a-94afe7a26ca6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/83d9f160-7097-43bf-9cff-dbcf2d4426ba/49b1b546-9e69-4bd7-b00a-94afe7a26ca6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/83d9f160-7097-43bf-9cff-dbcf2d4426ba/49b1b546-9e69-4bd7-b00a-94afe7a26ca6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/83d9f160-7097-43bf-9cff-dbcf2d4426ba/49b1b546-9e69-4bd7-b00a-94afe7a26ca6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0716151   0.0622246   0.0810056
Birth       ki1126311-ZVITAMBO        ZIMBABWE      2                    NA                0.0543005   0.0436186   0.0649824
Birth       ki1126311-ZVITAMBO        ZIMBABWE      3+                   NA                0.0535075   0.0403871   0.0666280
Birth       ki1135781-COHORTS         GUATEMALA     1                    NA                0.1063830   0.0440119   0.1687541
Birth       ki1135781-COHORTS         GUATEMALA     2                    NA                0.0762712   0.0283479   0.1241945
Birth       ki1135781-COHORTS         GUATEMALA     3+                   NA                0.0753676   0.0531697   0.0975656
Birth       ki1135781-COHORTS         INDIA         1                    NA                0.0654190   0.0444874   0.0863507
Birth       ki1135781-COHORTS         INDIA         2                    NA                0.0402956   0.0262372   0.0543541
Birth       ki1135781-COHORTS         INDIA         3+                   NA                0.0426191   0.0332224   0.0520157
Birth       ki1135781-COHORTS         PHILIPPINES   1                    NA                0.0814272   0.0486340   0.1142205
Birth       ki1135781-COHORTS         PHILIPPINES   2                    NA                0.0434402   0.0126489   0.0742315
Birth       ki1135781-COHORTS         PHILIPPINES   3+                   NA                0.0262678   0.0186947   0.0338410
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.0238263   0.0171455   0.0305071
Birth       kiGH5241-JiVitA-3         BANGLADESH    2                    NA                0.0156349   0.0079318   0.0233381
Birth       kiGH5241-JiVitA-3         BANGLADESH    3+                   NA                0.0195126   0.0128821   0.0261431
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.0280612   0.0140579   0.0420646
6 months    ki1000304b-SAS-CompFeed   INDIA         2                    NA                0.0298013   0.0154373   0.0441654
6 months    ki1000304b-SAS-CompFeed   INDIA         3+                   NA                0.0359375   0.0218263   0.0500487
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0058240   0.0021541   0.0094939
6 months    ki1126311-ZVITAMBO        ZIMBABWE      2                    NA                0.0133863   0.0063105   0.0204621
6 months    ki1126311-ZVITAMBO        ZIMBABWE      3+                   NA                0.0083285   0.0048677   0.0117893
6 months    ki1135781-COHORTS         INDIA         1                    NA                0.0251947   0.0139286   0.0364608
6 months    ki1135781-COHORTS         INDIA         2                    NA                0.0193646   0.0108217   0.0279074
6 months    ki1135781-COHORTS         INDIA         3+                   NA                0.0383507   0.0307637   0.0459378
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.0157582   0.0087496   0.0227668
6 months    kiGH5241-JiVitA-3         BANGLADESH    2                    NA                0.0126517   0.0082083   0.0170952
6 months    kiGH5241-JiVitA-3         BANGLADESH    3+                   NA                0.0089367   0.0059099   0.0119635
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0687500   0.0294970   0.1080030
24 months   ki1126311-ZVITAMBO        ZIMBABWE      2                    NA                0.0578512   0.0162040   0.0994985
24 months   ki1126311-ZVITAMBO        ZIMBABWE      3+                   NA                0.0851064   0.0389937   0.1312190
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.0266324   0.0187678   0.0344970
24 months   kiGH5241-JiVitA-3         BANGLADESH    2                    NA                0.0434576   0.0259147   0.0610005
24 months   kiGH5241-JiVitA-3         BANGLADESH    3+                   NA                0.0363363   0.0270486   0.0456239


### Parameter: E(Y)


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0612466   0.0571111   0.0653822
Birth       ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0793651   0.0600839   0.0986462
Birth       ki1135781-COHORTS         INDIA         NA                   NA                0.0459144   0.0393065   0.0525222
Birth       ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0161866   0.0138216   0.0185515
6 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0322339   0.0235219   0.0409459
6 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0095607   0.0074624   0.0116590
6 months    ki1135781-COHORTS         INDIA         NA                   NA                0.0312719   0.0260599   0.0364838
6 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0136505   0.0115778   0.0157231
24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0710900   0.0465431   0.0956370
24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0387435   0.0344172   0.0430697


### Parameter: RR


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE      2                    1                 0.7582269   0.5985877   0.9604410
Birth       ki1126311-ZVITAMBO        ZIMBABWE      3+                   1                 0.7471542   0.5657717   0.9866867
Birth       ki1135781-COHORTS         GUATEMALA     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         GUATEMALA     2                    1                 0.7169492   0.3035745   1.6932122
Birth       ki1135781-COHORTS         GUATEMALA     3+                   1                 0.7084559   0.3675932   1.3653943
Birth       ki1135781-COHORTS         INDIA         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         INDIA         2                    1                 0.6159622   0.3837068   0.9888006
Birth       ki1135781-COHORTS         INDIA         3+                   1                 0.6514781   0.4417716   0.9607311
Birth       ki1135781-COHORTS         PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         PHILIPPINES   2                    1                 0.5334850   0.2361071   1.2054118
Birth       ki1135781-COHORTS         PHILIPPINES   3+                   1                 0.3225928   0.1966062   0.5293127
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH    2                    1                 0.6562056   0.3714375   1.1592955
Birth       kiGH5241-JiVitA-3         BANGLADESH    3+                   1                 0.8189543   0.5272619   1.2720173
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA         2                    1                 1.0620108   0.6052683   1.8634168
6 months    ki1000304b-SAS-CompFeed   INDIA         3+                   1                 1.2806818   0.6228782   2.6331726
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE      2                    1                 2.2984544   1.0098248   5.2314943
6 months    ki1126311-ZVITAMBO        ZIMBABWE      3+                   1                 1.4300189   0.6722211   3.0420854
6 months    ki1135781-COHORTS         INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         INDIA         2                    1                 0.7685974   0.4100998   1.4404836
6 months    ki1135781-COHORTS         INDIA         3+                   1                 1.5221751   0.9335491   2.4819447
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH    2                    1                 0.8028668   0.4602159   1.4006364
6 months    kiGH5241-JiVitA-3         BANGLADESH    3+                   1                 0.5671110   0.3263008   0.9856392
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE      2                    1                 0.8414726   0.3357357   2.1090285
24 months   ki1126311-ZVITAMBO        ZIMBABWE      3+                   1                 1.2379110   0.5634392   2.7197677
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH    2                    1                 1.6317543   0.9939422   2.6788500
24 months   kiGH5241-JiVitA-3         BANGLADESH    3+                   1                 1.3643622   0.9177950   2.0282134


### Parameter: PAR


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                -0.0103685   -0.0185275   -0.0022094
Birth       ki1135781-COHORTS         GUATEMALA     1                    NA                -0.0270179   -0.0844158    0.0303800
Birth       ki1135781-COHORTS         INDIA         1                    NA                -0.0195046   -0.0387080   -0.0003013
Birth       ki1135781-COHORTS         PHILIPPINES   1                    NA                -0.0396887   -0.0703530   -0.0090244
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -0.0076397   -0.0139716   -0.0013078
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    NA                 0.0041727   -0.0094235    0.0177689
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                 0.0037366    0.0001829    0.0072904
6 months    ki1135781-COHORTS         INDIA         1                    NA                 0.0060772   -0.0044060    0.0165605
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -0.0021078   -0.0086200    0.0044044
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                 0.0023400   -0.0288845    0.0335646
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    NA                 0.0121110    0.0045532    0.0196688


### Parameter: PAF


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                -0.1692908   -0.3100859   -0.0436270
Birth       ki1135781-COHORTS         GUATEMALA     1                    NA                -0.3404255   -1.2928794    0.2163824
Birth       ki1135781-COHORTS         INDIA         1                    NA                -0.4248042   -0.9085941   -0.0636452
Birth       ki1135781-COHORTS         PHILIPPINES   1                    NA                -0.9508889   -1.8258021   -0.3468628
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -0.4719761   -0.9310665   -0.1220295
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    NA                 0.1294495   -0.4000328    0.4586853
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                 0.3908339   -0.1017098    0.6631751
6 months    ki1135781-COHORTS         INDIA         1                    NA                 0.1943344   -0.2192206    0.4676131
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -0.1544098   -0.7428586    0.2353585
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                 0.0329167   -0.5228379    0.3858505
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    NA                 0.3125956    0.0928415    0.4791155
