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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        parity    stunted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0       34     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1       13     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               0       37     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               1       16     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+              0       70     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+              1       17     187
Birth       ki1101329-Keneba           GAMBIA                         1               0      140    1407
Birth       ki1101329-Keneba           GAMBIA                         1               1       16    1407
Birth       ki1101329-Keneba           GAMBIA                         2               0      138    1407
Birth       ki1101329-Keneba           GAMBIA                         2               1        8    1407
Birth       ki1101329-Keneba           GAMBIA                         3+              0     1054    1407
Birth       ki1101329-Keneba           GAMBIA                         3+              1       51    1407
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0     5332   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1      640   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               0     3718   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               1      407   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     3347   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      385   13829
Birth       ki1135781-COHORTS          GUATEMALA                      1               0      103     852
Birth       ki1135781-COHORTS          GUATEMALA                      1               1        9     852
Birth       ki1135781-COHORTS          GUATEMALA                      2               0      124     852
Birth       ki1135781-COHORTS          GUATEMALA                      2               1       13     852
Birth       ki1135781-COHORTS          GUATEMALA                      3+              0      575     852
Birth       ki1135781-COHORTS          GUATEMALA                      3+              1       28     852
Birth       ki1135781-COHORTS          INDIA                          1               0      582    4122
Birth       ki1135781-COHORTS          INDIA                          1               1      114    4122
Birth       ki1135781-COHORTS          INDIA                          2               0      939    4122
Birth       ki1135781-COHORTS          INDIA                          2               1       98    4122
Birth       ki1135781-COHORTS          INDIA                          3+              0     2126    4122
Birth       ki1135781-COHORTS          INDIA                          3+              1      263    4122
Birth       ki1135781-COHORTS          PHILIPPINES                    1               0      629    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1               1       46    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    2               0      645    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    2               1       42    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    3+              0     1589    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    3+              1       99    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     3777   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1     2494   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               0     4711   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               1     1999   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+              0     4772   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+              1     1841   19594
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      288    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1      104    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               0      222    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               1       82    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              0      446    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              1      194    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0       44     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1       28     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               0       53     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               1       31     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+              0      118     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+              1       99     373
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      170     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1       41     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               0      179     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               1       33     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+              0      140     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+              1       20     583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      625    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       55    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      584    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1       73    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0      593    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1       65    1995
6 months    ki1101329-Keneba           GAMBIA                         1               0      175    1623
6 months    ki1101329-Keneba           GAMBIA                         1               1       19    1623
6 months    ki1101329-Keneba           GAMBIA                         2               0      150    1623
6 months    ki1101329-Keneba           GAMBIA                         2               1       14    1623
6 months    ki1101329-Keneba           GAMBIA                         3+              0     1071    1623
6 months    ki1101329-Keneba           GAMBIA                         3+              1      194    1623
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      118     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1       35     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2               0      120     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2               1       29     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3+              0      206     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3+              1       55     563
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0     2761    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1      541    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               0     2133    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               1      389    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     2021    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      449    8294
6 months    ki1135781-COHORTS          GUATEMALA                      1               0       78     961
6 months    ki1135781-COHORTS          GUATEMALA                      1               1       54     961
6 months    ki1135781-COHORTS          GUATEMALA                      2               0       88     961
6 months    ki1135781-COHORTS          GUATEMALA                      2               1       51     961
6 months    ki1135781-COHORTS          GUATEMALA                      3+              0      401     961
6 months    ki1135781-COHORTS          GUATEMALA                      3+              1      289     961
6 months    ki1135781-COHORTS          INDIA                          1               0      616    4291
6 months    ki1135781-COHORTS          INDIA                          1               1      124    4291
6 months    ki1135781-COHORTS          INDIA                          2               0      925    4291
6 months    ki1135781-COHORTS          INDIA                          2               1      171    4291
6 months    ki1135781-COHORTS          INDIA                          3+              0     1910    4291
6 months    ki1135781-COHORTS          INDIA                          3+              1      545    4291
6 months    ki1135781-COHORTS          PHILIPPINES                    1               0      474    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    1               1      100    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    2               0      497    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    2               1      109    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    3+              0     1165    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    3+              1      363    2708
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     4612   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1     1776   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               0     4463   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               1     1237   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              0     3504   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              1     1211   16803
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      149     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       62     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               0      138     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               1       75     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              0      100     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              1       53     577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1        1       6
24 months   ki1101329-Keneba           GAMBIA                         1               0       95    1376
24 months   ki1101329-Keneba           GAMBIA                         1               1       42    1376
24 months   ki1101329-Keneba           GAMBIA                         2               0      104    1376
24 months   ki1101329-Keneba           GAMBIA                         2               1       35    1376
24 months   ki1101329-Keneba           GAMBIA                         3+              0      711    1376
24 months   ki1101329-Keneba           GAMBIA                         3+              1      389    1376
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0       82     499
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       54     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0       68     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2               1       62     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3+              0      126     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3+              1      107     499
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0       64     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1      113     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               0       50     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               1       84     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              0       44     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      101     456
24 months   ki1135781-COHORTS          GUATEMALA                      1               0       32    1067
24 months   ki1135781-COHORTS          GUATEMALA                      1               1      135    1067
24 months   ki1135781-COHORTS          GUATEMALA                      2               0       33    1067
24 months   ki1135781-COHORTS          GUATEMALA                      2               1      118    1067
24 months   ki1135781-COHORTS          GUATEMALA                      3+              0      157    1067
24 months   ki1135781-COHORTS          GUATEMALA                      3+              1      592    1067
24 months   ki1135781-COHORTS          INDIA                          1               0      347    3383
24 months   ki1135781-COHORTS          INDIA                          1               1      218    3383
24 months   ki1135781-COHORTS          INDIA                          2               0      492    3383
24 months   ki1135781-COHORTS          INDIA                          2               1      358    3383
24 months   ki1135781-COHORTS          INDIA                          3+              0      852    3383
24 months   ki1135781-COHORTS          INDIA                          3+              1     1116    3383
24 months   ki1135781-COHORTS          PHILIPPINES                    1               0      258    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1               1      266    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    2               0      227    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    2               1      317    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    3+              0      452    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    3+              1      925    2445
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     1619    8624
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1     1546    8624
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0     1553    8624
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1     1370    8624
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              0     1219    8624
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              1     1317    8624


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/46c260de-364d-479e-93f8-5976784f44ee/e4ccbbf6-79de-4937-850d-a69d7a7013ec/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/46c260de-364d-479e-93f8-5976784f44ee/e4ccbbf6-79de-4937-850d-a69d7a7013ec/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/46c260de-364d-479e-93f8-5976784f44ee/e4ccbbf6-79de-4937-850d-a69d7a7013ec/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/46c260de-364d-479e-93f8-5976784f44ee/e4ccbbf6-79de-4937-850d-a69d7a7013ec/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2753371   0.2010563   0.3496179
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3186234   0.1694742   0.4677726
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1956179   0.0647369   0.3264990
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                0.1025641   0.0549386   0.1501896
Birth       ki1101329-Keneba           GAMBIA                         2                    NA                0.0547945   0.0178664   0.0917227
Birth       ki1101329-Keneba           GAMBIA                         3+                   NA                0.0461538   0.0337783   0.0585294
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1099041   0.0959512   0.1238570
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1015510   0.0875222   0.1155798
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1068450   0.0930086   0.1206813
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0803571   0.0299820   0.1307322
Birth       ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0948905   0.0457879   0.1439931
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.0464345   0.0296294   0.0632396
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.1670922   0.1317173   0.2024671
Birth       ki1135781-COHORTS          INDIA                          2                    NA                0.1010641   0.0766054   0.1255227
Birth       ki1135781-COHORTS          INDIA                          3+                   NA                0.1150137   0.1004445   0.1295828
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0869061   0.0508979   0.1229143
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0603379   0.0329616   0.0877143
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0495778   0.0385446   0.0606111
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4030528   0.3788944   0.4272112
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3020916   0.2846260   0.3195572
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2864968   0.2668026   0.3061911
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3156762   0.2567219   0.3746306
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2651645   0.1935443   0.3367847
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2997611   0.2558996   0.3436225
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2960349   0.1798624   0.4122075
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3934943   0.2446172   0.5423713
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.4242481   0.3502738   0.4982223
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2086235   0.1326791   0.2845679
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1734062   0.0983096   0.2485028
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0851798   0.0470377   0.1233220
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0853616   0.0562598   0.1144635
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1143693   0.0812251   0.1475136
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1052336   0.0765437   0.1339236
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1211273   0.0696143   0.1726403
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0892949   0.0251078   0.1534821
6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.1423260   0.1197567   0.1648953
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2504097   0.1264617   0.3743578
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2024559   0.0783330   0.3265789
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1800584   0.1292054   0.2309113
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1550905   0.1362301   0.1739509
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1574767   0.1375501   0.1774033
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1980024   0.1723526   0.2236522
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3608787   0.2443037   0.4774537
6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.3586336   0.2360410   0.4812261
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.4393207   0.3954330   0.4832084
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1413062   0.1112714   0.1713409
6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1547254   0.1270502   0.1824007
6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.2124761   0.1945714   0.2303807
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1314392   0.0972267   0.1656517
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1732043   0.1250334   0.2213753
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2312442   0.2048620   0.2576263
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2563995   0.2346607   0.2781384
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2238710   0.2073853   0.2403568
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2433388   0.2214117   0.2652660
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2594258   0.1774572   0.3413944
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3441155   0.2562303   0.4320007
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.2500242   0.1773007   0.3227477
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2907799   0.2006267   0.3809330
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2978256   0.1890730   0.4065781
24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.3467471   0.3124586   0.3810355
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3717001   0.2407451   0.5026551
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4207128   0.2503376   0.5910879
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.4362354   0.3592059   0.5132648
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5823506   0.4988517   0.6658496
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.6260644   0.5116100   0.7405188
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.6920416   0.5947304   0.7893528
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7584643   0.6671254   0.8498031
24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.7734515   0.6598383   0.8870647
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.8004219   0.7674037   0.8334401
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3587379   0.3093268   0.4081490
24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.4260776   0.3856629   0.4664923
24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.5703880   0.5462664   0.5945096
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4455838   0.3887414   0.5024262
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.5341486   0.4645316   0.6037656
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.6887523   0.6603800   0.7171245
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4589632   0.4241174   0.4938091
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4810462   0.4506349   0.5114575
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.5405612   0.5090765   0.5720459


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2459893   0.1594019   0.3325767
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0533049   0.0415629   0.0650470
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1035505   0.0984723   0.1086287
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0586854   0.0428942   0.0744767
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1152353   0.1054865   0.1249842
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3232622   0.3156056   0.3309189
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4235925   0.3733796   0.4738054
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0967419   0.0837671   0.1097166
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1398644   0.1229849   0.1567440
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2113677   0.1776128   0.2451225
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1662648   0.1582516   0.1742780
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4099896   0.3788775   0.4411017
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1957586   0.1838852   0.2076319
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2513837   0.2432545   0.2595129
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3386628   0.3136483   0.3636773
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4468938   0.4032281   0.4905594
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6535088   0.6097853   0.6972322
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7919400   0.7675726   0.8163075
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.5001478   0.4832966   0.5169990
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6167689   0.5974942   0.6360437
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4908395   0.4777071   0.5039719


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.1572120   0.7007696   1.9109554
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.7104669   0.3591843   1.4053044
Birth       ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         2                    1                 0.5342466   0.2356709   1.2110933
Birth       ki1101329-Keneba           GAMBIA                         3+                   1                 0.4500000   0.2632335   0.7692791
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9239964   0.7659500   1.1146541
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.9721653   0.8109413   1.1654424
Birth       ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      2                    1                 1.1808597   0.5238079   2.6621012
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.5778515   0.2801877   1.1917454
Birth       ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          2                    1                 0.6048401   0.4386936   0.8339113
Birth       ki1135781-COHORTS          INDIA                          3+                   1                 0.6883245   0.5379269   0.8807714
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.6942888   0.3757572   1.2828415
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.5704761   0.3566259   0.9125613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7495088   0.6901591   0.8139622
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7108171   0.6498772   0.7774715
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.8399889   0.6151692   1.1469710
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.9495839   0.7429351   1.2137126
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.3292155   0.7737308   2.2834997
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.4331013   0.9359708   2.1942770
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8311920   0.4728487   1.4611017
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.4082944   0.2295985   0.7260688
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.3398217   0.8568536   2.0950164
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.2327980   0.7967830   1.9074089
6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.7371992   0.3197595   1.6995981
6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 1.1750118   0.7463962   1.8497584
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.8084987   0.3673800   1.7792750
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.7190549   0.4067283   1.2712173
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0153861   0.8520993   1.2099633
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.2766897   1.0690564   1.5246496
6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 0.9937787   0.6219074   1.5880113
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.2173639   0.8690160   1.7053482
6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          2                    1                 1.0949659   0.8297877   1.4448881
6 months    ki1135781-COHORTS          INDIA                          3+                   1                 1.5036573   1.1968812   1.8890642
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.3177524   0.9014364   1.9263383
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.7593240   1.3248089   2.3363529
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8731336   0.7787740   0.9789262
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9490611   0.8427151   1.0688274
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.3264504   0.8847189   1.9887342
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9637597   0.6271916   1.4809394
24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.0242304   0.6345980   1.6530906
24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.1924728   0.8615886   1.6504296
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.1318608   0.6630499   1.9321456
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1736218   0.7920002   1.7391261
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0750643   0.8545678   1.3524536
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.1883590   0.9738185   1.4501646
24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.0197600   0.8434511   1.2329232
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.0553192   0.9295859   1.1980588
24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.1877127   1.0058184   1.4025011
24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.5899852   1.3774333   1.8353360
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.1987613   1.0001658   1.4367904
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.5457302   1.3527944   1.7661825
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0481149   0.9522281   1.1536572
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.1777876   1.0723885   1.2935459


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0293478   -0.1170494    0.0583538
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -0.0492592   -0.0928837   -0.0056347
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0063536   -0.0193058    0.0065986
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0216717   -0.0677134    0.0243700
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.0518569   -0.0850788   -0.0186349
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0255946   -0.0601773    0.0089881
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0797906   -0.1024393   -0.0571419
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0312451   -0.0758264    0.0133362
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1275575    0.0178132    0.2373019
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0473885   -0.1148510    0.0200740
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0113802   -0.0152525    0.0380130
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0187372   -0.0332523    0.0707266
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0390421   -0.1572962    0.0792121
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0111743   -0.0061482    0.0284968
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0491109   -0.0643721    0.1625939
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.0544524    0.0255494    0.0833554
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0797868    0.0465820    0.1129916
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0050159   -0.0253550    0.0153233
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0698636   -0.0055447    0.1452719
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0478829   -0.0416223    0.1373882
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0751937   -0.0499777    0.2003651
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0711581   -0.0015029    0.1438192
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0334758   -0.0546725    0.1216241
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.1414099    0.0941458    0.1886739
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1711851    0.1173678    0.2250025
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0318763   -0.0013138    0.0650664


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1193053   -0.5782931    0.2062030
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -0.9241025   -1.9135260   -0.2706839
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0613574   -0.1941188    0.0566437
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3692857   -1.4191803    0.2249675
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.4500085   -0.7682546   -0.1890396
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.4174522   -1.1105367    0.0480285
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.2468293   -0.3189415   -0.1786597
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1098512   -0.2724453    0.0319665
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.3011327   -0.0110415    0.5169184
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2939097   -0.7867466    0.0629884
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1176351   -0.2051055    0.3539423
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.1339666   -0.3260713    0.4344091
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1847116   -0.8996145    0.2611439
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0672078   -0.0429642    0.1657419
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1197857   -0.2052261    0.3571520
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.2781609    0.1153903    0.4109813
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.3777319    0.2016514    0.5149768
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0199530   -0.1041756    0.0578454
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.2121647   -0.0528626    0.4104791
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1413882   -0.1667561    0.3681506
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1682585   -0.1645456    0.4059538
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1088863   -0.0095195    0.2134043
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0422706   -0.0757636    0.1473539
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.2827361    0.1817015    0.3712961
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2775515    0.1844939    0.3599903
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0649423   -0.0050775    0.1300841
