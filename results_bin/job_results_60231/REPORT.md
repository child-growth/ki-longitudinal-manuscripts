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

**Outcome Variable:** ever_sstunted

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

agecat        studyid          country                        parity    ever_sstunted   n_cell       n
------------  ---------------  -----------------------------  -------  --------------  -------  ------
0-24 months   COHORTS          GUATEMALA                      1                     0      121    1360
0-24 months   COHORTS          GUATEMALA                      1                     1       92    1360
0-24 months   COHORTS          GUATEMALA                      2                     0      105    1360
0-24 months   COHORTS          GUATEMALA                      2                     1       87    1360
0-24 months   COHORTS          GUATEMALA                      3+                    0      503    1360
0-24 months   COHORTS          GUATEMALA                      3+                    1      452    1360
0-24 months   COHORTS          INDIA                          1                     0      723    4630
0-24 months   COHORTS          INDIA                          1                     1       89    4630
0-24 months   COHORTS          INDIA                          2                     0     1061    4630
0-24 months   COHORTS          INDIA                          2                     1      124    4630
0-24 months   COHORTS          INDIA                          3+                    0     2205    4630
0-24 months   COHORTS          INDIA                          3+                    1      428    4630
0-24 months   COHORTS          PHILIPPINES                    1                     0      505    3058
0-24 months   COHORTS          PHILIPPINES                    1                     1      173    3058
0-24 months   COHORTS          PHILIPPINES                    2                     0      470    3058
0-24 months   COHORTS          PHILIPPINES                    2                     1      220    3058
0-24 months   COHORTS          PHILIPPINES                    3+                    0      994    3058
0-24 months   COHORTS          PHILIPPINES                    3+                    1      696    3058
0-24 months   GMS-Nepal        NEPAL                          1                     0      159     698
0-24 months   GMS-Nepal        NEPAL                          1                     1       52     698
0-24 months   GMS-Nepal        NEPAL                          2                     0      143     698
0-24 months   GMS-Nepal        NEPAL                          2                     1       38     698
0-24 months   GMS-Nepal        NEPAL                          3+                    0      227     698
0-24 months   GMS-Nepal        NEPAL                          3+                    1       79     698
0-24 months   JiVitA-3         BANGLADESH                     1                     0     7949   27227
0-24 months   JiVitA-3         BANGLADESH                     1                     1     2303   27227
0-24 months   JiVitA-3         BANGLADESH                     2                     0     7618   27227
0-24 months   JiVitA-3         BANGLADESH                     2                     1     1381   27227
0-24 months   JiVitA-3         BANGLADESH                     3+                    0     6638   27227
0-24 months   JiVitA-3         BANGLADESH                     3+                    1     1338   27227
0-24 months   Keneba           GAMBIA                         1                     0      182    1990
0-24 months   Keneba           GAMBIA                         1                     1       59    1990
0-24 months   Keneba           GAMBIA                         2                     0      173    1990
0-24 months   Keneba           GAMBIA                         2                     1       41    1990
0-24 months   Keneba           GAMBIA                         3+                    0     1158    1990
0-24 months   Keneba           GAMBIA                         3+                    1      377    1990
0-24 months   PROVIDE          BANGLADESH                     1                     0      227     700
0-24 months   PROVIDE          BANGLADESH                     1                     1       44     700
0-24 months   PROVIDE          BANGLADESH                     2                     0      214     700
0-24 months   PROVIDE          BANGLADESH                     2                     1       30     700
0-24 months   PROVIDE          BANGLADESH                     3+                    0      164     700
0-24 months   PROVIDE          BANGLADESH                     3+                    1       21     700
0-24 months   SAS-CompFeed     INDIA                          1                     0      310    1533
0-24 months   SAS-CompFeed     INDIA                          1                     1      142    1533
0-24 months   SAS-CompFeed     INDIA                          2                     0      261    1533
0-24 months   SAS-CompFeed     INDIA                          2                     1       99    1533
0-24 months   SAS-CompFeed     INDIA                          3+                    0      455    1533
0-24 months   SAS-CompFeed     INDIA                          3+                    1      266    1533
0-24 months   SAS-FoodSuppl    INDIA                          1                     0       17     418
0-24 months   SAS-FoodSuppl    INDIA                          1                     1        4     418
0-24 months   SAS-FoodSuppl    INDIA                          2                     0       46     418
0-24 months   SAS-FoodSuppl    INDIA                          2                     1       31     418
0-24 months   SAS-FoodSuppl    INDIA                          3+                    0      154     418
0-24 months   SAS-FoodSuppl    INDIA                          3+                    1      166     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      750    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       71    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      688    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       83    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                    0      685    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                    1       80    2357
0-24 months   ZVITAMBO         ZIMBABWE                       1                     0     5089   14073
0-24 months   ZVITAMBO         ZIMBABWE                       1                     1      980   14073
0-24 months   ZVITAMBO         ZIMBABWE                       2                     0     3551   14073
0-24 months   ZVITAMBO         ZIMBABWE                       2                     1      661   14073
0-24 months   ZVITAMBO         ZIMBABWE                       3+                    0     3067   14073
0-24 months   ZVITAMBO         ZIMBABWE                       3+                    1      725   14073
0-6 months    COHORTS          GUATEMALA                      1                     0      142    1091
0-6 months    COHORTS          GUATEMALA                      1                     1       17    1091
0-6 months    COHORTS          GUATEMALA                      2                     0      145    1091
0-6 months    COHORTS          GUATEMALA                      2                     1       13    1091
0-6 months    COHORTS          GUATEMALA                      3+                    0      694    1091
0-6 months    COHORTS          GUATEMALA                      3+                    1       80    1091
0-6 months    COHORTS          INDIA                          1                     0      725    4473
0-6 months    COHORTS          INDIA                          1                     1       40    4473
0-6 months    COHORTS          INDIA                          2                     0     1102    4473
0-6 months    COHORTS          INDIA                          2                     1       42    4473
0-6 months    COHORTS          INDIA                          3+                    0     2431    4473
0-6 months    COHORTS          INDIA                          3+                    1      133    4473
0-6 months    COHORTS          PHILIPPINES                    1                     0      638    3058
0-6 months    COHORTS          PHILIPPINES                    1                     1       40    3058
0-6 months    COHORTS          PHILIPPINES                    2                     0      654    3058
0-6 months    COHORTS          PHILIPPINES                    2                     1       36    3058
0-6 months    COHORTS          PHILIPPINES                    3+                    0     1575    3058
0-6 months    COHORTS          PHILIPPINES                    3+                    1      115    3058
0-6 months    GMS-Nepal        NEPAL                          1                     0      184     698
0-6 months    GMS-Nepal        NEPAL                          1                     1       27     698
0-6 months    GMS-Nepal        NEPAL                          2                     0      170     698
0-6 months    GMS-Nepal        NEPAL                          2                     1       11     698
0-6 months    GMS-Nepal        NEPAL                          3+                    0      284     698
0-6 months    GMS-Nepal        NEPAL                          3+                    1       22     698
0-6 months    JiVitA-3         BANGLADESH                     1                     0     8230   27161
0-6 months    JiVitA-3         BANGLADESH                     1                     1     1980   27161
0-6 months    JiVitA-3         BANGLADESH                     2                     0     7948   27161
0-6 months    JiVitA-3         BANGLADESH                     2                     1     1032   27161
0-6 months    JiVitA-3         BANGLADESH                     3+                    0     6980   27161
0-6 months    JiVitA-3         BANGLADESH                     3+                    1      991   27161
0-6 months    Keneba           GAMBIA                         1                     0      197    1853
0-6 months    Keneba           GAMBIA                         1                     1       38    1853
0-6 months    Keneba           GAMBIA                         2                     0      181    1853
0-6 months    Keneba           GAMBIA                         2                     1       24    1853
0-6 months    Keneba           GAMBIA                         3+                    0     1261    1853
0-6 months    Keneba           GAMBIA                         3+                    1      152    1853
0-6 months    PROVIDE          BANGLADESH                     1                     0      257     700
0-6 months    PROVIDE          BANGLADESH                     1                     1       14     700
0-6 months    PROVIDE          BANGLADESH                     2                     0      234     700
0-6 months    PROVIDE          BANGLADESH                     2                     1       10     700
0-6 months    PROVIDE          BANGLADESH                     3+                    0      178     700
0-6 months    PROVIDE          BANGLADESH                     3+                    1        7     700
0-6 months    SAS-CompFeed     INDIA                          1                     0      380    1530
0-6 months    SAS-CompFeed     INDIA                          1                     1       71    1530
0-6 months    SAS-CompFeed     INDIA                          2                     0      314    1530
0-6 months    SAS-CompFeed     INDIA                          2                     1       45    1530
0-6 months    SAS-CompFeed     INDIA                          3+                    0      607    1530
0-6 months    SAS-CompFeed     INDIA                          3+                    1      113    1530
0-6 months    SAS-FoodSuppl    INDIA                          1                     0       18     416
0-6 months    SAS-FoodSuppl    INDIA                          1                     1        2     416
0-6 months    SAS-FoodSuppl    INDIA                          2                     0       67     416
0-6 months    SAS-FoodSuppl    INDIA                          2                     1       10     416
0-6 months    SAS-FoodSuppl    INDIA                          3+                    0      281     416
0-6 months    SAS-FoodSuppl    INDIA                          3+                    1       38     416
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      781    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       40    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      738    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       33    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                    0      736    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                    1       29    2357
0-6 months    ZVITAMBO         ZIMBABWE                       1                     0     5503   14056
0-6 months    ZVITAMBO         ZIMBABWE                       1                     1      559   14056
0-6 months    ZVITAMBO         ZIMBABWE                       2                     0     3875   14056
0-6 months    ZVITAMBO         ZIMBABWE                       2                     1      332   14056
0-6 months    ZVITAMBO         ZIMBABWE                       3+                    0     3396   14056
0-6 months    ZVITAMBO         ZIMBABWE                       3+                    1      391   14056


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/ba97ed0c-267b-409f-8742-6eca89a5aa3e/932561e2-9d4f-4492-b766-b5d3c4b5401c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ba97ed0c-267b-409f-8742-6eca89a5aa3e/932561e2-9d4f-4492-b766-b5d3c4b5401c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ba97ed0c-267b-409f-8742-6eca89a5aa3e/932561e2-9d4f-4492-b766-b5d3c4b5401c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ba97ed0c-267b-409f-8742-6eca89a5aa3e/932561e2-9d4f-4492-b766-b5d3c4b5401c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                0.3454203   0.2485963   0.4422443
0-24 months   COHORTS          GUATEMALA                      2                    NA                0.4492832   0.3330482   0.5655182
0-24 months   COHORTS          GUATEMALA                      3+                   NA                0.4562993   0.4217646   0.4908341
0-24 months   COHORTS          INDIA                          1                    NA                0.1193978   0.0853641   0.1534315
0-24 months   COHORTS          INDIA                          2                    NA                0.1219169   0.0971012   0.1467327
0-24 months   COHORTS          INDIA                          3+                   NA                0.1390303   0.1251484   0.1529122
0-24 months   COHORTS          PHILIPPINES                    1                    NA                0.2613565   0.2154307   0.3072823
0-24 months   COHORTS          PHILIPPINES                    2                    NA                0.3233977   0.2691314   0.3776639
0-24 months   COHORTS          PHILIPPINES                    3+                   NA                0.3907820   0.3610483   0.4205157
0-24 months   GMS-Nepal        NEPAL                          1                    NA                0.2606856   0.1537445   0.3676268
0-24 months   GMS-Nepal        NEPAL                          2                    NA                0.2029989   0.1045235   0.3014743
0-24 months   GMS-Nepal        NEPAL                          3+                   NA                0.2475484   0.1862202   0.3088766
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.2303053   0.2149271   0.2456835
0-24 months   JiVitA-3         BANGLADESH                     2                    NA                0.1666025   0.1543520   0.1788530
0-24 months   JiVitA-3         BANGLADESH                     3+                   NA                0.1336901   0.1224251   0.1449551
0-24 months   Keneba           GAMBIA                         1                    NA                0.2073784   0.1510443   0.2637125
0-24 months   Keneba           GAMBIA                         2                    NA                0.1886666   0.1124612   0.2648721
0-24 months   Keneba           GAMBIA                         3+                   NA                0.2297974   0.2052139   0.2543809
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1800406   0.1320156   0.2280655
0-24 months   PROVIDE          BANGLADESH                     2                    NA                0.1264160   0.0827826   0.1700493
0-24 months   PROVIDE          BANGLADESH                     3+                   NA                0.1043493   0.0606537   0.1480450
0-24 months   SAS-CompFeed     INDIA                          1                    NA                0.3316637   0.2854251   0.3779023
0-24 months   SAS-CompFeed     INDIA                          2                    NA                0.2774671   0.2355385   0.3193957
0-24 months   SAS-CompFeed     INDIA                          3+                   NA                0.3263865   0.2859058   0.3668671
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0834860   0.0592474   0.1077245
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1068778   0.0784346   0.1353210
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1020490   0.0746643   0.1294338
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1613950   0.1454786   0.1773114
0-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.1608322   0.1435523   0.1781121
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.2105091   0.1916014   0.2294168
0-6 months    COHORTS          GUATEMALA                      1                    NA                0.1236990   0.0358479   0.2115502
0-6 months    COHORTS          GUATEMALA                      2                    NA                0.0688859   0.0100983   0.1276736
0-6 months    COHORTS          GUATEMALA                      3+                   NA                0.0894151   0.0693318   0.1094984
0-6 months    COHORTS          INDIA                          1                    NA                0.0625452   0.0329964   0.0920940
0-6 months    COHORTS          INDIA                          2                    NA                0.0396024   0.0249295   0.0542753
0-6 months    COHORTS          INDIA                          3+                   NA                0.0498594   0.0405820   0.0591367
0-6 months    COHORTS          PHILIPPINES                    1                    NA                0.0520930   0.0280407   0.0761453
0-6 months    COHORTS          PHILIPPINES                    2                    NA                0.0642382   0.0307699   0.0977065
0-6 months    COHORTS          PHILIPPINES                    3+                   NA                0.0598258   0.0456585   0.0739930
0-6 months    GMS-Nepal        NEPAL                          1                    NA                0.1362349   0.0870337   0.1854361
0-6 months    GMS-Nepal        NEPAL                          2                    NA                0.0653140   0.0278145   0.1028135
0-6 months    GMS-Nepal        NEPAL                          3+                   NA                0.0697103   0.0395387   0.0998820
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.2076887   0.1927444   0.2226330
0-6 months    JiVitA-3         BANGLADESH                     2                    NA                0.1242768   0.1128178   0.1357359
0-6 months    JiVitA-3         BANGLADESH                     3+                   NA                0.0925562   0.0828641   0.1022484
0-6 months    Keneba           GAMBIA                         1                    NA                0.0994182   0.0700008   0.1288357
0-6 months    Keneba           GAMBIA                         2                    NA                0.1313623   0.0588313   0.2038932
0-6 months    Keneba           GAMBIA                         3+                   NA                0.1045676   0.0852580   0.1238771
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.0516605   0.0252890   0.0780320
0-6 months    PROVIDE          BANGLADESH                     2                    NA                0.0409836   0.0160904   0.0658769
0-6 months    PROVIDE          BANGLADESH                     3+                   NA                0.0378378   0.0103234   0.0653522
0-6 months    SAS-CompFeed     INDIA                          1                    NA                0.1690563   0.1357724   0.2023401
0-6 months    SAS-CompFeed     INDIA                          2                    NA                0.1503966   0.1048802   0.1959130
0-6 months    SAS-CompFeed     INDIA                          3+                   NA                0.1188528   0.0726487   0.1650569
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0421627   0.0263200   0.0580053
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0450220   0.0265206   0.0635234
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0276386   0.0166975   0.0385797
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.0982506   0.0841449   0.1123563
0-6 months    ZVITAMBO         ZIMBABWE                       2                    NA                0.0892258   0.0757898   0.1026619
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   NA                0.1101824   0.0960875   0.1242774


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.4639706   0.4374564   0.4904847
0-24 months   COHORTS          INDIA                          NA                   NA                0.1384449   0.1284958   0.1483940
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.3561151   0.3391405   0.3730897
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.2421203   0.2103189   0.2739218
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1844493   0.1788538   0.1900447
0-24 months   Keneba           GAMBIA                         NA                   NA                0.2396985   0.2209375   0.2584595
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1357143   0.1103250   0.1611036
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3307241   0.3024794   0.3589688
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0992787   0.0872038   0.1113537
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1681234   0.1619444   0.1743023
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.1008249   0.0829501   0.1186997
0-6 months    COHORTS          INDIA                          NA                   NA                0.0480662   0.0417969   0.0543355
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0624591   0.0538810   0.0710373
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.0859599   0.0651504   0.1067694
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.1473804   0.1423344   0.1524264
0-6 months    Keneba           GAMBIA                         NA                   NA                0.1154884   0.1009322   0.1300446
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0442857   0.0290345   0.0595370
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.1496732   0.1307571   0.1685893
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0432754   0.0350591   0.0514916
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0912066   0.0864469   0.0959663


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      2                    1                 1.3006855   0.8888077   1.9034296
0-24 months   COHORTS          GUATEMALA                      3+                   1                 1.3209973   0.9888559   1.7647000
0-24 months   COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          2                    1                 1.0210988   0.7198829   1.4483503
0-24 months   COHORTS          INDIA                          3+                   1                 1.1644295   0.8617166   1.5734825
0-24 months   COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    2                    1                 1.2373814   0.9720276   1.5751743
0-24 months   COHORTS          PHILIPPINES                    3+                   1                 1.4952069   1.2361536   1.8085485
0-24 months   GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          2                    1                 0.7787117   0.4126037   1.4696715
0-24 months   GMS-Nepal        NEPAL                          3+                   1                 0.9496052   0.5880271   1.5335177
0-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     2                    1                 0.7233984   0.6556036   0.7982037
0-24 months   JiVitA-3         BANGLADESH                     3+                   1                 0.5804907   0.5235884   0.6435770
0-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         2                    1                 0.9097696   0.5589987   1.4806489
0-24 months   Keneba           GAMBIA                         3+                   1                 1.1081065   0.8274435   1.4839685
0-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     2                    1                 0.7021527   0.4544003   1.0849871
0-24 months   PROVIDE          BANGLADESH                     3+                   1                 0.5795879   0.3536667   0.9498269
0-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          2                    1                 0.8365918   0.7300045   0.9587418
0-24 months   SAS-CompFeed     INDIA                          3+                   1                 0.9840886   0.8635849   1.1214073
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.2801886   0.8636369   1.8976527
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.2223498   0.8235115   1.8143510
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 0.9965129   0.8614789   1.1527130
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 1.3043098   1.1416549   1.4901387
0-6 months    COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      2                    1                 0.5568832   0.1834000   1.6909422
0-6 months    COHORTS          GUATEMALA                      3+                   1                 0.7228441   0.3432194   1.5223603
0-6 months    COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          2                    1                 0.6331812   0.3474571   1.1538647
0-6 months    COHORTS          INDIA                          3+                   1                 0.7971736   0.4799336   1.3241120
0-6 months    COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    2                    1                 1.2331459   0.6157188   2.4697131
0-6 months    COHORTS          PHILIPPINES                    3+                   1                 1.1484428   0.6843704   1.9272030
0-6 months    GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          2                    1                 0.4794220   0.2435248   0.9438278
0-6 months    GMS-Nepal        NEPAL                          3+                   1                 0.5116923   0.2913320   0.8987307
0-6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     2                    1                 0.5983803   0.5332041   0.6715234
0-6 months    JiVitA-3         BANGLADESH                     3+                   1                 0.4456489   0.3930838   0.5052434
0-6 months    Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         2                    1                 1.3213094   0.7066669   2.4705535
0-6 months    Keneba           GAMBIA                         3+                   1                 1.0517946   0.7423090   1.4903118
0-6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     2                    1                 0.7933255   0.3588172   1.7540002
0-6 months    PROVIDE          BANGLADESH                     3+                   1                 0.7324324   0.3012417   1.7808198
0-6 months    SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          2                    1                 0.8896242   0.6024242   1.3137440
0-6 months    SAS-CompFeed     INDIA                          3+                   1                 0.7030368   0.4059761   1.2174628
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0678159   0.6120771   1.8628875
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.6555232   0.3796910   1.1317379
0-6 months    ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       2                    1                 0.9081454   0.7376488   1.1180496
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   1                 1.1214428   0.9253500   1.3590900


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                 0.1185503    0.0246113    0.2124892
0-24 months   COHORTS          INDIA                          1                    NA                 0.0190471   -0.0140343    0.0521286
0-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.0947586    0.0506782    0.1388390
0-24 months   GMS-Nepal        NEPAL                          1                    NA                -0.0185653   -0.1202800    0.0831495
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0458560   -0.0600761   -0.0316360
0-24 months   Keneba           GAMBIA                         1                    NA                 0.0323201   -0.0235071    0.0881472
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0443263   -0.0813703   -0.0072822
0-24 months   SAS-CompFeed     INDIA                          1                    NA                -0.0009396   -0.0251088    0.0232296
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0157928   -0.0062980    0.0378836
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0067284   -0.0081330    0.0215897
0-6 months    COHORTS          GUATEMALA                      1                    NA                -0.0228741   -0.1089098    0.0631616
0-6 months    COHORTS          INDIA                          1                    NA                -0.0144790   -0.0430863    0.0141283
0-6 months    COHORTS          PHILIPPINES                    1                    NA                 0.0103662   -0.0127839    0.0335162
0-6 months    GMS-Nepal        NEPAL                          1                    NA                -0.0502750   -0.0896155   -0.0109345
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0603082   -0.0741597   -0.0464568
0-6 months    Keneba           GAMBIA                         1                    NA                 0.0160701   -0.0126865    0.0448268
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0073748   -0.0271125    0.0123629
0-6 months    SAS-CompFeed     INDIA                          1                    NA                -0.0193831   -0.0628814    0.0241152
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0011127   -0.0125329    0.0147582
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0070440   -0.0203158    0.0062278


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                 0.2555124    0.0227350    0.4328440
0-24 months   COHORTS          INDIA                          1                    NA                 0.1375792   -0.1373302    0.3460390
0-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.2660899    0.1317133    0.3796702
0-24 months   GMS-Nepal        NEPAL                          1                    NA                -0.0766779   -0.5905179    0.2711586
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.2486106   -0.3283773   -0.1736338
0-24 months   Keneba           GAMBIA                         1                    NA                 0.1348363   -0.1307958    0.3380695
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.3266146   -0.6265173   -0.0820090
0-24 months   SAS-CompFeed     INDIA                          1                    NA                -0.0028410   -0.0785051    0.0675147
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1590752   -0.0945608    0.3539376
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0400203   -0.0525361    0.1244376
0-6 months    COHORTS          GUATEMALA                      1                    NA                -0.2268695   -1.4615782    0.3885188
0-6 months    COHORTS          INDIA                          1                    NA                -0.3012302   -1.0552404    0.1761547
0-6 months    COHORTS          PHILIPPINES                    1                    NA                 0.1659672   -0.2990348    0.4645172
0-6 months    GMS-Nepal        NEPAL                          1                    NA                -0.5848656   -1.0936138   -0.1997432
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.4092012   -0.5068617   -0.3178701
0-6 months    Keneba           GAMBIA                         1                    NA                 0.1391495   -0.1455556    0.3530967
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.1665278   -0.7044880    0.2016446
0-6 months    SAS-CompFeed     INDIA                          1                    NA                -0.1295027   -0.4760039    0.1356552
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0257116   -0.3465836    0.2950769
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0772311   -0.2330885    0.0589265
