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

agecat      studyid                    country                        parity    sstunted   n_cell       n
----------  -------------------------  -----------------------------  -------  ---------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                0       44     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                1        3     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                0       47     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                1        6     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+               0       85     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+               1        2     187
Birth       ki1101329-Keneba           GAMBIA                         1                0      153    1407
Birth       ki1101329-Keneba           GAMBIA                         1                1        3    1407
Birth       ki1101329-Keneba           GAMBIA                         2                0      144    1407
Birth       ki1101329-Keneba           GAMBIA                         2                1        2    1407
Birth       ki1101329-Keneba           GAMBIA                         3+               0     1084    1407
Birth       ki1101329-Keneba           GAMBIA                         3+               1       21    1407
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0     5777   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1      195   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                0     4022   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                1      103   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+               0     3589   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+               1      143   13829
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0     5372   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1      899   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                0     6127   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                1      583   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+               0     6055   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+               1      558   19594
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      360    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1       32    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                0      279    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                1       25    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+               0      569    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+               1       71    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0       64     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1        8     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                0       78     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                1        6     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+               0      180     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+               1       37     373
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      206     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        5     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                0      207     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                1        5     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+               0      156     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+               1        4     583
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
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0      147     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1        6     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2                0      143     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2                1        6     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3+               0      253     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3+               1        8     563
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0     3160    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1      142    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                0     2430    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                1       92    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+               0     2358    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+               1      112    8294
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     5903   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      485   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                0     5435   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                1      265   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+               0     4446   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+               1      269   16803
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      193     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       18     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                0      195     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                1       18     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+               0      140     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+               1       13     577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               1        1       6
24 months   ki1101329-Keneba           GAMBIA                         1                0      129    1376
24 months   ki1101329-Keneba           GAMBIA                         1                1        8    1376
24 months   ki1101329-Keneba           GAMBIA                         2                0      135    1376
24 months   ki1101329-Keneba           GAMBIA                         2                1        4    1376
24 months   ki1101329-Keneba           GAMBIA                         3+               0      997    1376
24 months   ki1101329-Keneba           GAMBIA                         3+               1      103    1376
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0      122     499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       14     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2                0      116     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2                1       14     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3+               0      207     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3+               1       26     499
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      126     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       51     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                0       97     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                1       37     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+               0      102     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+               1       43     456
24 months   ki1135781-COHORTS          GUATEMALA                      1                0      102    1067
24 months   ki1135781-COHORTS          GUATEMALA                      1                1       65    1067
24 months   ki1135781-COHORTS          GUATEMALA                      2                0       87    1067
24 months   ki1135781-COHORTS          GUATEMALA                      2                1       64    1067
24 months   ki1135781-COHORTS          GUATEMALA                      3+               0      420    1067
24 months   ki1135781-COHORTS          GUATEMALA                      3+               1      329    1067
24 months   ki1135781-COHORTS          INDIA                          1                0      476    3383
24 months   ki1135781-COHORTS          INDIA                          1                1       89    3383
24 months   ki1135781-COHORTS          INDIA                          2                0      715    3383
24 months   ki1135781-COHORTS          INDIA                          2                1      135    3383
24 months   ki1135781-COHORTS          INDIA                          3+               0     1474    3383
24 months   ki1135781-COHORTS          INDIA                          3+               1      494    3383
24 months   ki1135781-COHORTS          PHILIPPINES                    1                0      431    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1                1       93    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    2                0      403    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    2                1      141    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    3+               0      922    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    3+               1      455    2445
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     2686    8624
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      479    8624
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                0     2513    8624
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                1      410    8624
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+               0     2081    8624
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+               1      455    8624


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
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA

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




# Results Detail

## Results Plots
![](/tmp/2e31fde0-4eda-411d-86ee-bc75992da1e0/dcbcf925-134e-4cfb-8881-d5704002eb85/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2e31fde0-4eda-411d-86ee-bc75992da1e0/dcbcf925-134e-4cfb-8881-d5704002eb85/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2e31fde0-4eda-411d-86ee-bc75992da1e0/dcbcf925-134e-4cfb-8881-d5704002eb85/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2e31fde0-4eda-411d-86ee-bc75992da1e0/dcbcf925-134e-4cfb-8881-d5704002eb85/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.0331645    0.0245340   0.0417949
Birth       ki1126311-ZVITAMBO         ZIMBABWE      2                    NA                0.0269718    0.0195320   0.0344117
Birth       ki1126311-ZVITAMBO         ZIMBABWE      3+                   NA                0.0485098    0.0378063   0.0592133
Birth       ki1135781-COHORTS          INDIA         1                    NA                0.0314770    0.0184434   0.0445106
Birth       ki1135781-COHORTS          INDIA         2                    NA                0.0199388    0.0114246   0.0284530
Birth       ki1135781-COHORTS          INDIA         3+                   NA                0.0295188    0.0227484   0.0362892
Birth       ki1135781-COHORTS          PHILIPPINES   1                    NA                0.0157055    0.0054458   0.0259653
Birth       ki1135781-COHORTS          PHILIPPINES   2                    NA                0.0202093   -0.0016454   0.0420641
Birth       ki1135781-COHORTS          PHILIPPINES   3+                   NA                0.0093222    0.0053634   0.0132810
Birth       kiGH5241-JiVitA-3          BANGLADESH    1                    NA                0.1409016    0.1248906   0.1569126
Birth       kiGH5241-JiVitA-3          BANGLADESH    2                    NA                0.0914325    0.0797870   0.1030779
Birth       kiGH5241-JiVitA-3          BANGLADESH    3+                   NA                0.0805195    0.0683707   0.0926682
6 months    ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.1163526    0.0589468   0.1737585
6 months    ki1000304b-SAS-CompFeed    INDIA         2                    NA                0.0922177    0.0385571   0.1458784
6 months    ki1000304b-SAS-CompFeed    INDIA         3+                   NA                0.1004848    0.0517072   0.1492624
6 months    ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.1111111    0.0384223   0.1837999
6 months    ki1000304b-SAS-FoodSuppl   INDIA         2                    NA                0.0714286    0.0162799   0.1265772
6 months    ki1000304b-SAS-FoodSuppl   INDIA         3+                   NA                0.1705069    0.1204022   0.2206116
6 months    ki1113344-GMS-Nepal        NEPAL         1                    NA                0.0392157    0.0084312   0.0700001
6 months    ki1113344-GMS-Nepal        NEPAL         2                    NA                0.0402685    0.0086749   0.0718620
6 months    ki1113344-GMS-Nepal        NEPAL         3+                   NA                0.0306513    0.0097209   0.0515818
6 months    ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.0420155    0.0320208   0.0520102
6 months    ki1126311-ZVITAMBO         ZIMBABWE      2                    NA                0.0380096    0.0277323   0.0482868
6 months    ki1126311-ZVITAMBO         ZIMBABWE      3+                   NA                0.0505213    0.0361974   0.0648452
6 months    ki1135781-COHORTS          GUATEMALA     1                    NA                0.1296257    0.0421208   0.2171307
6 months    ki1135781-COHORTS          GUATEMALA     2                    NA                0.1129840    0.0440032   0.1819647
6 months    ki1135781-COHORTS          GUATEMALA     3+                   NA                0.1097486    0.0872165   0.1322807
6 months    ki1135781-COHORTS          INDIA         1                    NA                0.0283590    0.0159271   0.0407909
6 months    ki1135781-COHORTS          INDIA         2                    NA                0.0276056    0.0187749   0.0364363
6 months    ki1135781-COHORTS          INDIA         3+                   NA                0.0564185    0.0466684   0.0661687
6 months    ki1135781-COHORTS          PHILIPPINES   1                    NA                0.0312953    0.0085897   0.0540009
6 months    ki1135781-COHORTS          PHILIPPINES   2                    NA                0.0429983    0.0137532   0.0722434
6 months    ki1135781-COHORTS          PHILIPPINES   3+                   NA                0.0575489    0.0410284   0.0740694
6 months    kiGH5241-JiVitA-3          BANGLADESH    1                    NA                0.0659640    0.0543571   0.0775708
6 months    kiGH5241-JiVitA-3          BANGLADESH    2                    NA                0.0505255    0.0419071   0.0591438
6 months    kiGH5241-JiVitA-3          BANGLADESH    3+                   NA                0.0534848    0.0436286   0.0633410
24 months   ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.1108835    0.0029744   0.2187926
24 months   ki1017093b-PROVIDE         BANGLADESH    2                    NA                0.1191796    0.0161599   0.2221993
24 months   ki1017093b-PROVIDE         BANGLADESH    3+                   NA                0.1051579    0.0546307   0.1556850
24 months   ki1113344-GMS-Nepal        NEPAL         1                    NA                0.0693703    0.0107909   0.1279498
24 months   ki1113344-GMS-Nepal        NEPAL         2                    NA                0.1375073   -0.0062986   0.2813132
24 months   ki1113344-GMS-Nepal        NEPAL         3+                   NA                0.0862482    0.0511524   0.1213440
24 months   ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.2461986    0.1735448   0.3188525
24 months   ki1126311-ZVITAMBO         ZIMBABWE      2                    NA                0.2374197    0.1397678   0.3350716
24 months   ki1126311-ZVITAMBO         ZIMBABWE      3+                   NA                0.2916570    0.2045550   0.3787589
24 months   ki1135781-COHORTS          GUATEMALA     1                    NA                0.3174333    0.2076334   0.4272333
24 months   ki1135781-COHORTS          GUATEMALA     2                    NA                0.3934891    0.2509133   0.5360649
24 months   ki1135781-COHORTS          GUATEMALA     3+                   NA                0.4430176    0.4003679   0.4856673
24 months   ki1135781-COHORTS          INDIA         1                    NA                0.1316979    0.0962123   0.1671835
24 months   ki1135781-COHORTS          INDIA         2                    NA                0.1591037    0.1284484   0.1897590
24 months   ki1135781-COHORTS          INDIA         3+                   NA                0.2493705    0.2281847   0.2705563
24 months   ki1135781-COHORTS          PHILIPPINES   1                    NA                0.1850239    0.1372440   0.2328038
24 months   ki1135781-COHORTS          PHILIPPINES   2                    NA                0.2509964    0.1868675   0.3151253
24 months   ki1135781-COHORTS          PHILIPPINES   3+                   NA                0.3550247    0.3236210   0.3864284
24 months   kiGH5241-JiVitA-3          BANGLADESH    1                    NA                0.1258943    0.1085349   0.1432536
24 months   kiGH5241-JiVitA-3          BANGLADESH    2                    NA                0.1461853    0.1262678   0.1661029
24 months   kiGH5241-JiVitA-3          BANGLADESH    3+                   NA                0.1764732    0.1521754   0.2007710


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0318895   0.0289609   0.0348181
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0274139   0.0224285   0.0323992
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0150820   0.0107558   0.0194081
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1041135   0.0994385   0.1087885
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1367292   0.1018167   0.1716417
6 months    ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.0355240   0.0202206   0.0508273
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0417169   0.0374137   0.0460201
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1290323   0.1078261   0.1502384
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0484735   0.0420469   0.0549002
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0487445   0.0406327   0.0568562
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0606439   0.0567894   0.0644985
24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1082164   0.0809323   0.1355005
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.2872807   0.2457035   0.3288579
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4292409   0.3995279   0.4589539
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.2122377   0.1984570   0.2260183
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2817996   0.2639639   0.2996353
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1558442   0.1471109   0.1645774


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      2                    1                 0.8132746   0.5566045   1.1883042
Birth       ki1126311-ZVITAMBO         ZIMBABWE      3+                   1                 1.4627028   1.0398910   2.0574267
Birth       ki1135781-COHORTS          INDIA         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA         2                    1                 0.6334412   0.3494734   1.1481497
Birth       ki1135781-COHORTS          INDIA         3+                   1                 0.9377912   0.5841652   1.5054855
Birth       ki1135781-COHORTS          PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   2                    1                 1.2867646   0.3636509   4.5531664
Birth       ki1135781-COHORTS          PHILIPPINES   3+                   1                 0.5935613   0.2721560   1.2945333
Birth       kiGH5241-JiVitA-3          BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    2                    1                 0.6489101   0.5475323   0.7690584
Birth       kiGH5241-JiVitA-3          BANGLADESH    3+                   1                 0.5714588   0.4738005   0.6892461
6 months    ki1000304b-SAS-CompFeed    INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         2                    1                 0.7925712   0.3764194   1.6688012
6 months    ki1000304b-SAS-CompFeed    INDIA         3+                   1                 0.8636230   0.4184301   1.7824834
6 months    ki1000304b-SAS-FoodSuppl   INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         2                    1                 0.6428571   0.2336797   1.7685119
6 months    ki1000304b-SAS-FoodSuppl   INDIA         3+                   1                 1.5345622   0.7490708   3.1437363
6 months    ki1113344-GMS-Nepal        NEPAL         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL         2                    1                 1.0268456   0.3384542   3.1153756
6 months    ki1113344-GMS-Nepal        NEPAL         3+                   1                 0.7816092   0.2761410   2.2123227
6 months    ki1126311-ZVITAMBO         ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      2                    1                 0.9046557   0.6311605   1.2966623
6 months    ki1126311-ZVITAMBO         ZIMBABWE      3+                   1                 1.2024437   0.8305432   1.7408739
6 months    ki1135781-COHORTS          GUATEMALA     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     2                    1                 0.8716170   0.3507335   2.1660782
6 months    ki1135781-COHORTS          GUATEMALA     3+                   1                 0.8466574   0.4181068   1.7144636
6 months    ki1135781-COHORTS          INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA         2                    1                 0.9734348   0.5660118   1.6741266
6 months    ki1135781-COHORTS          INDIA         3+                   1                 1.9894409   1.2420376   3.1865983
6 months    ki1135781-COHORTS          PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   2                    1                 1.3739523   0.5092800   3.7066934
6 months    ki1135781-COHORTS          PHILIPPINES   3+                   1                 1.8388979   0.8439038   4.0070272
6 months    kiGH5241-JiVitA-3          BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    2                    1                 0.7659551   0.6001708   0.9775338
6 months    kiGH5241-JiVitA-3          BANGLADESH    3+                   1                 0.8108182   0.6263446   1.0496236
24 months   ki1017093b-PROVIDE         BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH    2                    1                 1.0748187   0.2915336   3.9626146
24 months   ki1017093b-PROVIDE         BANGLADESH    3+                   1                 0.9483639   0.3202842   2.8081122
24 months   ki1113344-GMS-Nepal        NEPAL         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL         2                    1                 1.9822203   0.5180018   7.5852963
24 months   ki1113344-GMS-Nepal        NEPAL         3+                   1                 1.2433004   0.4861502   3.1796676
24 months   ki1126311-ZVITAMBO         ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      2                    1                 0.9643420   0.5822024   1.5973060
24 months   ki1126311-ZVITAMBO         ZIMBABWE      3+                   1                 1.1846409   0.7792298   1.8009757
24 months   ki1135781-COHORTS          GUATEMALA     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     2                    1                 1.2395960   0.7517852   2.0439327
24 months   ki1135781-COHORTS          GUATEMALA     3+                   1                 1.3956241   0.9754587   1.9967700
24 months   ki1135781-COHORTS          INDIA         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA         2                    1                 1.2080956   0.8684591   1.6805571
24 months   ki1135781-COHORTS          INDIA         3+                   1                 1.8935040   1.4288317   2.5092930
24 months   ki1135781-COHORTS          PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   2                    1                 1.3565619   0.9447481   1.9478846
24 months   ki1135781-COHORTS          PHILIPPINES   3+                   1                 1.9188041   1.4626983   2.5171350
24 months   kiGH5241-JiVitA-3          BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    2                    1                 1.1611754   0.9577543   1.4078020
24 months   kiGH5241-JiVitA-3          BANGLADESH    3+                   1                 1.4017573   1.1522358   1.7053137


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                -0.0012750   -0.0093773    0.0068273
Birth       ki1135781-COHORTS          INDIA         1                    NA                -0.0040631   -0.0157914    0.0076652
Birth       ki1135781-COHORTS          PHILIPPINES   1                    NA                -0.0006236   -0.0099265    0.0086793
Birth       kiGH5241-JiVitA-3          BANGLADESH    1                    NA                -0.0367881   -0.0517727   -0.0218035
6 months    ki1000304b-SAS-CompFeed    INDIA         1                    NA                -0.0205442   -0.0756305    0.0345420
6 months    ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                 0.0256181   -0.0411856    0.0924218
6 months    ki1113344-GMS-Nepal        NEPAL         1                    NA                -0.0036917   -0.0295140    0.0221306
6 months    ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                -0.0002986   -0.0093481    0.0087509
6 months    ki1135781-COHORTS          GUATEMALA     1                    NA                -0.0005935   -0.0864397    0.0852528
6 months    ki1135781-COHORTS          INDIA         1                    NA                 0.0201146    0.0079779    0.0322512
6 months    ki1135781-COHORTS          PHILIPPINES   1                    NA                 0.0174491   -0.0050294    0.0399277
6 months    kiGH5241-JiVitA-3          BANGLADESH    1                    NA                -0.0053201   -0.0159218    0.0052817
24 months   ki1017093b-PROVIDE         BANGLADESH    1                    NA                -0.0259614   -0.1295275    0.0776046
24 months   ki1113344-GMS-Nepal        NEPAL         1                    NA                 0.0388461   -0.0179933    0.0956855
24 months   ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                 0.0410821   -0.0226951    0.1048592
24 months   ki1135781-COHORTS          GUATEMALA     1                    NA                 0.1118075    0.0048356    0.2187794
24 months   ki1135781-COHORTS          INDIA         1                    NA                 0.0805398    0.0459537    0.1151258
24 months   ki1135781-COHORTS          PHILIPPINES   1                    NA                 0.0967757    0.0502738    0.1432775
24 months   kiGH5241-JiVitA-3          BANGLADESH    1                    NA                 0.0299499    0.0135382    0.0463616


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                -0.0399813   -0.3277895    0.1854423
Birth       ki1135781-COHORTS          INDIA         1                    NA                -0.1482130   -0.6653687    0.2083476
Birth       ki1135781-COHORTS          PHILIPPINES   1                    NA                -0.0413459   -0.8831655    0.4241604
Birth       kiGH5241-JiVitA-3          BANGLADESH    1                    NA                -0.3533463   -0.5049215   -0.2170376
6 months    ki1000304b-SAS-CompFeed    INDIA         1                    NA                -0.2144306   -0.9545500    0.2454316
6 months    ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                 0.1873638   -0.4793715    0.5536094
6 months    ki1113344-GMS-Nepal        NEPAL         1                    NA                -0.1039216   -1.1301455    0.4279063
6 months    ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                -0.0071577   -0.2492242    0.1880028
6 months    ki1135781-COHORTS          GUATEMALA     1                    NA                -0.0045993   -0.9481602    0.4819627
6 months    ki1135781-COHORTS          INDIA         1                    NA                 0.4149594    0.1116830    0.6146955
6 months    ki1135781-COHORTS          PHILIPPINES   1                    NA                 0.3579718   -0.3059925    0.6843779
6 months    kiGH5241-JiVitA-3          BANGLADESH    1                    NA                -0.0877260   -0.2768833    0.0734095
24 months   ki1017093b-PROVIDE         BANGLADESH    1                    NA                -0.3057093   -2.3119287    0.4852315
24 months   ki1113344-GMS-Nepal        NEPAL         1                    NA                 0.3589668   -0.4362126    0.7138839
24 months   ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                 0.1430032   -0.1090371    0.3377648
24 months   ki1135781-COHORTS          GUATEMALA     1                    NA                 0.2604774   -0.0357096    0.4719623
24 months   ki1135781-COHORTS          INDIA         1                    NA                 0.3794791    0.1949673    0.5217012
24 months   ki1135781-COHORTS          PHILIPPINES   1                    NA                 0.3434202    0.1573066    0.4884295
24 months   kiGH5241-JiVitA-3          BANGLADESH    1                    NA                 0.1921784    0.0809708    0.2899294
