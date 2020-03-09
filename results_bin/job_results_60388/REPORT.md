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

**Outcome Variable:** wast_rec90d

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

agecat        studyid          country                        parity    wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  -------  ------------  -------  -----
0-24 months   COHORTS          GUATEMALA                      1                   0       26    380
0-24 months   COHORTS          GUATEMALA                      1                   1       23    380
0-24 months   COHORTS          GUATEMALA                      2                   0       27    380
0-24 months   COHORTS          GUATEMALA                      2                   1       32    380
0-24 months   COHORTS          GUATEMALA                      3+                  0      159    380
0-24 months   COHORTS          GUATEMALA                      3+                  1      113    380
0-24 months   COHORTS          INDIA                          1                   0      188   1708
0-24 months   COHORTS          INDIA                          1                   1       82   1708
0-24 months   COHORTS          INDIA                          2                   0      296   1708
0-24 months   COHORTS          INDIA                          2                   1       98   1708
0-24 months   COHORTS          INDIA                          3+                  0      830   1708
0-24 months   COHORTS          INDIA                          3+                  1      214   1708
0-24 months   COHORTS          PHILIPPINES                    1                   0      140   1689
0-24 months   COHORTS          PHILIPPINES                    1                   1      241   1689
0-24 months   COHORTS          PHILIPPINES                    2                   0      133   1689
0-24 months   COHORTS          PHILIPPINES                    2                   1      226   1689
0-24 months   COHORTS          PHILIPPINES                    3+                  0      391   1689
0-24 months   COHORTS          PHILIPPINES                    3+                  1      558   1689
0-24 months   GMS-Nepal        NEPAL                          1                   0       79    643
0-24 months   GMS-Nepal        NEPAL                          1                   1      101    643
0-24 months   GMS-Nepal        NEPAL                          2                   0       72    643
0-24 months   GMS-Nepal        NEPAL                          2                   1       86    643
0-24 months   GMS-Nepal        NEPAL                          3+                  0      145    643
0-24 months   GMS-Nepal        NEPAL                          3+                  1      160    643
0-24 months   JiVitA-3         BANGLADESH                     1                   0     1654   7571
0-24 months   JiVitA-3         BANGLADESH                     1                   1     1306   7571
0-24 months   JiVitA-3         BANGLADESH                     2                   0     1354   7571
0-24 months   JiVitA-3         BANGLADESH                     2                   1      986   7571
0-24 months   JiVitA-3         BANGLADESH                     3+                  0     1367   7571
0-24 months   JiVitA-3         BANGLADESH                     3+                  1      904   7571
0-24 months   Keneba           GAMBIA                         1                   0       46   1438
0-24 months   Keneba           GAMBIA                         1                   1      120   1438
0-24 months   Keneba           GAMBIA                         2                   0       44   1438
0-24 months   Keneba           GAMBIA                         2                   1       95   1438
0-24 months   Keneba           GAMBIA                         3+                  0      436   1438
0-24 months   Keneba           GAMBIA                         3+                  1      697   1438
0-24 months   PROVIDE          BANGLADESH                     1                   0       52    308
0-24 months   PROVIDE          BANGLADESH                     1                   1       76    308
0-24 months   PROVIDE          BANGLADESH                     2                   0       40    308
0-24 months   PROVIDE          BANGLADESH                     2                   1       63    308
0-24 months   PROVIDE          BANGLADESH                     3+                  0       37    308
0-24 months   PROVIDE          BANGLADESH                     3+                  1       40    308
0-24 months   SAS-CompFeed     INDIA                          1                   0      136    814
0-24 months   SAS-CompFeed     INDIA                          1                   1       91    814
0-24 months   SAS-CompFeed     INDIA                          2                   0      110    814
0-24 months   SAS-CompFeed     INDIA                          2                   1       62    814
0-24 months   SAS-CompFeed     INDIA                          3+                  0      258    814
0-24 months   SAS-CompFeed     INDIA                          3+                  1      157    814
0-24 months   SAS-FoodSuppl    INDIA                          1                   0       11    234
0-24 months   SAS-FoodSuppl    INDIA                          1                   1        0    234
0-24 months   SAS-FoodSuppl    INDIA                          2                   0       30    234
0-24 months   SAS-FoodSuppl    INDIA                          2                   1        2    234
0-24 months   SAS-FoodSuppl    INDIA                          3+                  0      180    234
0-24 months   SAS-FoodSuppl    INDIA                          3+                  1       11    234
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       90    702
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1      158    702
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0       83    702
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1      155    702
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0       90    702
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1      126    702
0-24 months   ZVITAMBO         ZIMBABWE                       1                   0      690   3615
0-24 months   ZVITAMBO         ZIMBABWE                       1                   1      929   3615
0-24 months   ZVITAMBO         ZIMBABWE                       2                   0      499   3615
0-24 months   ZVITAMBO         ZIMBABWE                       2                   1      536   3615
0-24 months   ZVITAMBO         ZIMBABWE                       3+                  0      462   3615
0-24 months   ZVITAMBO         ZIMBABWE                       3+                  1      499   3615
0-6 months    COHORTS          GUATEMALA                      1                   0        7    214
0-6 months    COHORTS          GUATEMALA                      1                   1       23    214
0-6 months    COHORTS          GUATEMALA                      2                   0        5    214
0-6 months    COHORTS          GUATEMALA                      2                   1       29    214
0-6 months    COHORTS          GUATEMALA                      3+                  0       42    214
0-6 months    COHORTS          GUATEMALA                      3+                  1      108    214
0-6 months    COHORTS          INDIA                          1                   0      115   1082
0-6 months    COHORTS          INDIA                          1                   1       82   1082
0-6 months    COHORTS          INDIA                          2                   0      161   1082
0-6 months    COHORTS          INDIA                          2                   1       98   1082
0-6 months    COHORTS          INDIA                          3+                  0      412   1082
0-6 months    COHORTS          INDIA                          3+                  1      214   1082
0-6 months    COHORTS          PHILIPPINES                    1                   0       53    752
0-6 months    COHORTS          PHILIPPINES                    1                   1      154    752
0-6 months    COHORTS          PHILIPPINES                    2                   0       37    752
0-6 months    COHORTS          PHILIPPINES                    2                   1      126    752
0-6 months    COHORTS          PHILIPPINES                    3+                  0      108    752
0-6 months    COHORTS          PHILIPPINES                    3+                  1      274    752
0-6 months    GMS-Nepal        NEPAL                          1                   0       29    263
0-6 months    GMS-Nepal        NEPAL                          1                   1       51    263
0-6 months    GMS-Nepal        NEPAL                          2                   0       31    263
0-6 months    GMS-Nepal        NEPAL                          2                   1       40    263
0-6 months    GMS-Nepal        NEPAL                          3+                  0       44    263
0-6 months    GMS-Nepal        NEPAL                          3+                  1       68    263
0-6 months    JiVitA-3         BANGLADESH                     1                   0      574   4734
0-6 months    JiVitA-3         BANGLADESH                     1                   1     1306   4734
0-6 months    JiVitA-3         BANGLADESH                     2                   0      454   4734
0-6 months    JiVitA-3         BANGLADESH                     2                   1      986   4734
0-6 months    JiVitA-3         BANGLADESH                     3+                  0      510   4734
0-6 months    JiVitA-3         BANGLADESH                     3+                  1      904   4734
0-6 months    Keneba           GAMBIA                         1                   0       13    592
0-6 months    Keneba           GAMBIA                         1                   1       69    592
0-6 months    Keneba           GAMBIA                         2                   0       12    592
0-6 months    Keneba           GAMBIA                         2                   1       48    592
0-6 months    Keneba           GAMBIA                         3+                  0       94    592
0-6 months    Keneba           GAMBIA                         3+                  1      356    592
0-6 months    PROVIDE          BANGLADESH                     1                   0       15    185
0-6 months    PROVIDE          BANGLADESH                     1                   1       64    185
0-6 months    PROVIDE          BANGLADESH                     2                   0       12    185
0-6 months    PROVIDE          BANGLADESH                     2                   1       48    185
0-6 months    PROVIDE          BANGLADESH                     3+                  0       13    185
0-6 months    PROVIDE          BANGLADESH                     3+                  1       33    185
0-6 months    SAS-CompFeed     INDIA                          1                   0       43    341
0-6 months    SAS-CompFeed     INDIA                          1                   1       56    341
0-6 months    SAS-CompFeed     INDIA                          2                   0       40    341
0-6 months    SAS-CompFeed     INDIA                          2                   1       39    341
0-6 months    SAS-CompFeed     INDIA                          3+                  0       83    341
0-6 months    SAS-CompFeed     INDIA                          3+                  1       80    341
0-6 months    SAS-FoodSuppl    INDIA                          1                   0        7     78
0-6 months    SAS-FoodSuppl    INDIA                          1                   1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          2                   0       12     78
0-6 months    SAS-FoodSuppl    INDIA                          2                   1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          3+                  0       59     78
0-6 months    SAS-FoodSuppl    INDIA                          3+                  1        0     78
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       32    336
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       93    336
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0       32    336
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1       77    336
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0       35    336
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1       67    336
0-6 months    ZVITAMBO         ZIMBABWE                       1                   0      334   2519
0-6 months    ZVITAMBO         ZIMBABWE                       1                   1      902   2519
0-6 months    ZVITAMBO         ZIMBABWE                       2                   0      151   2519
0-6 months    ZVITAMBO         ZIMBABWE                       2                   1      510   2519
0-6 months    ZVITAMBO         ZIMBABWE                       3+                  0      151   2519
0-6 months    ZVITAMBO         ZIMBABWE                       3+                  1      471   2519
6-24 months   COHORTS          GUATEMALA                      1                   0       19    166
6-24 months   COHORTS          GUATEMALA                      1                   1        0    166
6-24 months   COHORTS          GUATEMALA                      2                   0       22    166
6-24 months   COHORTS          GUATEMALA                      2                   1        3    166
6-24 months   COHORTS          GUATEMALA                      3+                  0      117    166
6-24 months   COHORTS          GUATEMALA                      3+                  1        5    166
6-24 months   COHORTS          INDIA                          1                   0       73    626
6-24 months   COHORTS          INDIA                          1                   1        0    626
6-24 months   COHORTS          INDIA                          2                   0      135    626
6-24 months   COHORTS          INDIA                          2                   1        0    626
6-24 months   COHORTS          INDIA                          3+                  0      418    626
6-24 months   COHORTS          INDIA                          3+                  1        0    626
6-24 months   COHORTS          PHILIPPINES                    1                   0       87    937
6-24 months   COHORTS          PHILIPPINES                    1                   1       87    937
6-24 months   COHORTS          PHILIPPINES                    2                   0       96    937
6-24 months   COHORTS          PHILIPPINES                    2                   1      100    937
6-24 months   COHORTS          PHILIPPINES                    3+                  0      283    937
6-24 months   COHORTS          PHILIPPINES                    3+                  1      284    937
6-24 months   GMS-Nepal        NEPAL                          1                   0       50    380
6-24 months   GMS-Nepal        NEPAL                          1                   1       50    380
6-24 months   GMS-Nepal        NEPAL                          2                   0       41    380
6-24 months   GMS-Nepal        NEPAL                          2                   1       46    380
6-24 months   GMS-Nepal        NEPAL                          3+                  0      101    380
6-24 months   GMS-Nepal        NEPAL                          3+                  1       92    380
6-24 months   JiVitA-3         BANGLADESH                     1                   0     1080   2837
6-24 months   JiVitA-3         BANGLADESH                     1                   1        0   2837
6-24 months   JiVitA-3         BANGLADESH                     2                   0      900   2837
6-24 months   JiVitA-3         BANGLADESH                     2                   1        0   2837
6-24 months   JiVitA-3         BANGLADESH                     3+                  0      857   2837
6-24 months   JiVitA-3         BANGLADESH                     3+                  1        0   2837
6-24 months   Keneba           GAMBIA                         1                   0       33    846
6-24 months   Keneba           GAMBIA                         1                   1       51    846
6-24 months   Keneba           GAMBIA                         2                   0       32    846
6-24 months   Keneba           GAMBIA                         2                   1       47    846
6-24 months   Keneba           GAMBIA                         3+                  0      342    846
6-24 months   Keneba           GAMBIA                         3+                  1      341    846
6-24 months   PROVIDE          BANGLADESH                     1                   0       37    123
6-24 months   PROVIDE          BANGLADESH                     1                   1       12    123
6-24 months   PROVIDE          BANGLADESH                     2                   0       28    123
6-24 months   PROVIDE          BANGLADESH                     2                   1       15    123
6-24 months   PROVIDE          BANGLADESH                     3+                  0       24    123
6-24 months   PROVIDE          BANGLADESH                     3+                  1        7    123
6-24 months   SAS-CompFeed     INDIA                          1                   0       93    473
6-24 months   SAS-CompFeed     INDIA                          1                   1       35    473
6-24 months   SAS-CompFeed     INDIA                          2                   0       70    473
6-24 months   SAS-CompFeed     INDIA                          2                   1       23    473
6-24 months   SAS-CompFeed     INDIA                          3+                  0      175    473
6-24 months   SAS-CompFeed     INDIA                          3+                  1       77    473
6-24 months   SAS-FoodSuppl    INDIA                          1                   0        4    156
6-24 months   SAS-FoodSuppl    INDIA                          1                   1        0    156
6-24 months   SAS-FoodSuppl    INDIA                          2                   0       18    156
6-24 months   SAS-FoodSuppl    INDIA                          2                   1        2    156
6-24 months   SAS-FoodSuppl    INDIA                          3+                  0      121    156
6-24 months   SAS-FoodSuppl    INDIA                          3+                  1       11    156
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       58    366
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       65    366
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0       51    366
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1       78    366
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0       55    366
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1       59    366
6-24 months   ZVITAMBO         ZIMBABWE                       1                   0      356   1096
6-24 months   ZVITAMBO         ZIMBABWE                       1                   1       27   1096
6-24 months   ZVITAMBO         ZIMBABWE                       2                   0      348   1096
6-24 months   ZVITAMBO         ZIMBABWE                       2                   1       26   1096
6-24 months   ZVITAMBO         ZIMBABWE                       3+                  0      311   1096
6-24 months   ZVITAMBO         ZIMBABWE                       3+                  1       28   1096


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
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/c2f609ec-fbdc-4000-9398-87cbc47a27ce/f9406a88-39b6-476b-b132-6f7d56a113e1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c2f609ec-fbdc-4000-9398-87cbc47a27ce/f9406a88-39b6-476b-b132-6f7d56a113e1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c2f609ec-fbdc-4000-9398-87cbc47a27ce/f9406a88-39b6-476b-b132-6f7d56a113e1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c2f609ec-fbdc-4000-9398-87cbc47a27ce/f9406a88-39b6-476b-b132-6f7d56a113e1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                0.5374104   0.3131661   0.7616547
0-24 months   COHORTS          GUATEMALA                      2                    NA                0.6183059   0.4495205   0.7870914
0-24 months   COHORTS          GUATEMALA                      3+                   NA                0.4431801   0.3728208   0.5135393
0-24 months   COHORTS          INDIA                          1                    NA                0.3251678   0.2500212   0.4003143
0-24 months   COHORTS          INDIA                          2                    NA                0.2457668   0.1856342   0.3058993
0-24 months   COHORTS          INDIA                          3+                   NA                0.2055861   0.1758511   0.2353211
0-24 months   COHORTS          PHILIPPINES                    1                    NA                0.6362672   0.5783562   0.6941783
0-24 months   COHORTS          PHILIPPINES                    2                    NA                0.6337866   0.5582239   0.7093493
0-24 months   COHORTS          PHILIPPINES                    3+                   NA                0.5805929   0.5433745   0.6178113
0-24 months   GMS-Nepal        NEPAL                          1                    NA                0.5897141   0.4542364   0.7251919
0-24 months   GMS-Nepal        NEPAL                          2                    NA                0.5175224   0.3417158   0.6933290
0-24 months   GMS-Nepal        NEPAL                          3+                   NA                0.5784223   0.4993160   0.6575286
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.4374362   0.4035296   0.4713428
0-24 months   JiVitA-3         BANGLADESH                     2                    NA                0.4191941   0.3856304   0.4527577
0-24 months   JiVitA-3         BANGLADESH                     3+                   NA                0.3710123   0.3372396   0.4047850
0-24 months   Keneba           GAMBIA                         1                    NA                0.8230285   0.7602307   0.8858264
0-24 months   Keneba           GAMBIA                         2                    NA                0.7123467   0.6026125   0.8220809
0-24 months   Keneba           GAMBIA                         3+                   NA                0.6313430   0.5877937   0.6748924
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.5857231   0.4932640   0.6781822
0-24 months   PROVIDE          BANGLADESH                     2                    NA                0.6051440   0.5200163   0.6902717
0-24 months   PROVIDE          BANGLADESH                     3+                   NA                0.5113612   0.3889424   0.6337800
0-24 months   SAS-CompFeed     INDIA                          1                    NA                0.3399527   0.2591188   0.4207867
0-24 months   SAS-CompFeed     INDIA                          2                    NA                0.3188810   0.2093217   0.4284403
0-24 months   SAS-CompFeed     INDIA                          3+                   NA                0.4252980   0.3692042   0.4813918
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6409009   0.5759667   0.7058350
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.6488944   0.5756147   0.7221741
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.6183084   0.5465850   0.6900318
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.5867483   0.5505060   0.6229906
0-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.5022412   0.4532922   0.5511903
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.4564992   0.4081708   0.5048276
0-6 months    COHORTS          GUATEMALA                      1                    NA                0.7666667   0.6142490   0.9190843
0-6 months    COHORTS          GUATEMALA                      2                    NA                0.8529412   0.7330548   0.9728275
0-6 months    COHORTS          GUATEMALA                      3+                   NA                0.7200000   0.6482985   0.7917015
0-6 months    COHORTS          INDIA                          1                    NA                0.4747858   0.3920791   0.5574925
0-6 months    COHORTS          INDIA                          2                    NA                0.4048197   0.3190878   0.4905515
0-6 months    COHORTS          INDIA                          3+                   NA                0.3302969   0.2880278   0.3725660
0-6 months    COHORTS          PHILIPPINES                    1                    NA                0.7584957   0.6953352   0.8216561
0-6 months    COHORTS          PHILIPPINES                    2                    NA                0.7815165   0.6968114   0.8662215
0-6 months    COHORTS          PHILIPPINES                    3+                   NA                0.7067711   0.6567109   0.7568313
0-6 months    GMS-Nepal        NEPAL                          1                    NA                0.6842807   0.5364751   0.8320864
0-6 months    GMS-Nepal        NEPAL                          2                    NA                0.5247721   0.3257565   0.7237877
0-6 months    GMS-Nepal        NEPAL                          3+                   NA                0.6822707   0.5928127   0.7717286
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.6439644   0.6027180   0.6852107
0-6 months    JiVitA-3         BANGLADESH                     2                    NA                0.7003603   0.6608760   0.7398447
0-6 months    JiVitA-3         BANGLADESH                     3+                   NA                0.6029971   0.5608600   0.6451342
0-6 months    Keneba           GAMBIA                         1                    NA                0.8325588   0.7470845   0.9180331
0-6 months    Keneba           GAMBIA                         2                    NA                0.7888088   0.6790919   0.8985257
0-6 months    Keneba           GAMBIA                         3+                   NA                0.7992407   0.7629521   0.8355293
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.8286351   0.7421326   0.9151376
0-6 months    PROVIDE          BANGLADESH                     2                    NA                0.7833903   0.6918437   0.8749370
0-6 months    PROVIDE          BANGLADESH                     3+                   NA                0.7197770   0.5903061   0.8492479
0-6 months    SAS-CompFeed     INDIA                          1                    NA                0.5617956   0.4618809   0.6617104
0-6 months    SAS-CompFeed     INDIA                          2                    NA                0.4878695   0.3754085   0.6003305
0-6 months    SAS-CompFeed     INDIA                          3+                   NA                0.4922210   0.4142152   0.5702268
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7388183   0.6613605   0.8162761
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.6920577   0.6041474   0.7799679
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.6464364   0.5530423   0.7398304
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.7364994   0.7019134   0.7710853
0-6 months    ZVITAMBO         ZIMBABWE                       2                    NA                0.7645486   0.7087832   0.8203139
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   NA                0.7274863   0.6751789   0.7797937
6-24 months   COHORTS          PHILIPPINES                    1                    NA                0.4734440   0.3775821   0.5693058
6-24 months   COHORTS          PHILIPPINES                    2                    NA                0.5194423   0.4113694   0.6275153
6-24 months   COHORTS          PHILIPPINES                    3+                   NA                0.5116868   0.4626923   0.5606813
6-24 months   GMS-Nepal        NEPAL                          1                    NA                0.4892537   0.3418292   0.6366782
6-24 months   GMS-Nepal        NEPAL                          2                    NA                0.6033514   0.3754578   0.8312450
6-24 months   GMS-Nepal        NEPAL                          3+                   NA                0.5103011   0.4179458   0.6026564
6-24 months   Keneba           GAMBIA                         1                    NA                0.6461006   0.5082488   0.7839523
6-24 months   Keneba           GAMBIA                         2                    NA                0.6059337   0.4694280   0.7424393
6-24 months   Keneba           GAMBIA                         3+                   NA                0.4894708   0.4284339   0.5505078
6-24 months   PROVIDE          BANGLADESH                     1                    NA                0.2448980   0.1297835   0.3600124
6-24 months   PROVIDE          BANGLADESH                     2                    NA                0.3488372   0.1975901   0.5000843
6-24 months   PROVIDE          BANGLADESH                     3+                   NA                0.2258065   0.0656328   0.3859801
6-24 months   SAS-CompFeed     INDIA                          1                    NA                0.2760254   0.1968883   0.3551625
6-24 months   SAS-CompFeed     INDIA                          2                    NA                0.2555594   0.1628184   0.3483005
6-24 months   SAS-CompFeed     INDIA                          3+                   NA                0.3047179   0.2459973   0.3634386
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5427588   0.4447204   0.6407972
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.6038320   0.5040775   0.7035864
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.5374645   0.4346023   0.6403267
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0726962   0.0463259   0.0990666
6-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.0668922   0.0418789   0.0919055
6-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.0865335   0.0550017   0.1180654


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.4421053   0.3904403   0.4937702
0-24 months   COHORTS          INDIA                          NA                   NA                0.2306792   0.2105836   0.2507747
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.5396579   0.4973524   0.5819633
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4221371   0.4110175   0.4332567
0-24 months   Keneba           GAMBIA                         NA                   NA                0.6342142   0.6073589   0.6610695
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3808354   0.3457640   0.4159068
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6253561   0.5873792   0.6633330
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.5432918   0.5268968   0.5596869
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.7476636   0.6894668   0.8058603
0-6 months    COHORTS          INDIA                          NA                   NA                0.3641405   0.3354558   0.3928252
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.6045627   0.5449300   0.6641955
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.6751162   0.6617750   0.6884574
0-6 months    Keneba           GAMBIA                         NA                   NA                0.7989865   0.7673199   0.8306531
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.5131965   0.4596632   0.5667297
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7053571   0.6558827   0.7548316
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.7475189   0.7305656   0.7644721
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4947368   0.4401559   0.5493178
6-24 months   Keneba           GAMBIA                         NA                   NA                0.5189125   0.4826376   0.5551875
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2854123   0.2436284   0.3271961
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5519126   0.4992021   0.6046230
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0739051   0.0584895   0.0893208


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      2                    1                 1.1505284   0.6988137   1.8942324
0-24 months   COHORTS          GUATEMALA                      3+                   1                 0.8246585   0.5272903   1.2897291
0-24 months   COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          2                    1                 0.7558153   0.5399230   1.0580337
0-24 months   COHORTS          INDIA                          3+                   1                 0.6322463   0.4814648   0.8302485
0-24 months   COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    2                    1                 0.9961013   0.8575111   1.1570902
0-24 months   COHORTS          PHILIPPINES                    3+                   1                 0.9124985   0.8164808   1.0198077
0-24 months   GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          2                    1                 0.8775818   0.5823601   1.3224633
0-24 months   GMS-Nepal        NEPAL                          3+                   1                 0.9808520   0.7505961   1.2817422
0-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     2                    1                 0.9582976   0.8572432   1.0712646
0-24 months   JiVitA-3         BANGLADESH                     3+                   1                 0.8481518   0.7525854   0.9558537
0-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         2                    1                 0.8655188   0.7287681   1.0279303
0-24 months   Keneba           GAMBIA                         3+                   1                 0.7670974   0.6920267   0.8503116
0-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     2                    1                 1.0331571   0.8364381   1.2761418
0-24 months   PROVIDE          BANGLADESH                     3+                   1                 0.8730425   0.6549826   1.1637000
0-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          2                    1                 0.9380156   0.6177757   1.4242602
0-24 months   SAS-CompFeed     INDIA                          3+                   1                 1.2510503   0.9535170   1.6414251
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0124723   0.8696875   1.1786994
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9647489   0.8270085   1.1254303
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 0.8559739   0.7630927   0.9601604
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 0.7780154   0.6886548   0.8789714
0-6 months    COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      2                    1                 1.1125320   0.8721133   1.4192277
0-6 months    COHORTS          GUATEMALA                      3+                   1                 0.9391304   0.7518984   1.1729855
0-6 months    COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          2                    1                 0.8526364   0.6481826   1.1215805
0-6 months    COHORTS          INDIA                          3+                   1                 0.6956757   0.5605661   0.8633498
0-6 months    COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    2                    1                 1.0303506   0.8987780   1.1811842
0-6 months    COHORTS          PHILIPPINES                    3+                   1                 0.9318063   0.8352787   1.0394890
0-6 months    GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          2                    1                 0.7668959   0.4950118   1.1881119
0-6 months    GMS-Nepal        NEPAL                          3+                   1                 0.9970625   0.7734215   1.2853711
0-6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     2                    1                 1.0875762   0.9986939   1.1843690
0-6 months    JiVitA-3         BANGLADESH                     3+                   1                 0.9363828   0.8516551   1.0295397
0-6 months    Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         2                    1                 0.9474511   0.7968884   1.1264608
0-6 months    Keneba           GAMBIA                         3+                   1                 0.9599811   0.8578898   1.0742215
0-6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     2                    1                 0.9453984   0.8102786   1.1030505
0-6 months    PROVIDE          BANGLADESH                     3+                   1                 0.8686296   0.7069580   1.0672733
0-6 months    SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          2                    1                 0.8684110   0.6488299   1.1623042
0-6 months    SAS-CompFeed     INDIA                          3+                   1                 0.8761567   0.6901132   1.1123546
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9367089   0.7946642   1.1041438
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8749599   0.7319377   1.0459288
0-6 months    ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       2                    1                 1.0380845   0.9531760   1.1305565
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   1                 0.9877623   0.9075141   1.0751065
6-24 months   COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    2                    1                 1.0971570   0.8208691   1.4664378
6-24 months   COHORTS          PHILIPPINES                    3+                   1                 1.0807759   0.8639193   1.3520667
6-24 months   GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          2                    1                 1.2332076   0.7611286   1.9980868
6-24 months   GMS-Nepal        NEPAL                          3+                   1                 1.0430193   0.7336821   1.4827803
6-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         2                    1                 0.9378318   0.6876043   1.2791202
6-24 months   Keneba           GAMBIA                         3+                   1                 0.7575768   0.5918451   0.9697177
6-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     2                    1                 1.4244186   0.7513743   2.7003430
6-24 months   PROVIDE          BANGLADESH                     3+                   1                 0.9220430   0.3937421   2.1591882
6-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          2                    1                 0.9258549   0.5824076   1.4718340
6-24 months   SAS-CompFeed     INDIA                          3+                   1                 1.1039490   0.7817040   1.5590344
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1125236   0.8709045   1.4211763
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9902456   0.7615083   1.2876896
6-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 0.9201607   0.5463976   1.5495961
6-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 1.1903441   0.7116886   1.9909256


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                -0.0953052   -0.3124479    0.1218376
0-24 months   COHORTS          INDIA                          1                    NA                -0.0944886   -0.1656118   -0.0233655
0-24 months   COHORTS          PHILIPPINES                    1                    NA                -0.0293993   -0.0838242    0.0250256
0-24 months   GMS-Nepal        NEPAL                          1                    NA                -0.0500563   -0.1788430    0.0787304
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0152991   -0.0474918    0.0168936
0-24 months   Keneba           GAMBIA                         1                    NA                -0.1888144   -0.2531349   -0.1244938
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0045543   -0.0733717    0.0642631
0-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0408826   -0.0336361    0.1154014
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0155447   -0.0703070    0.0392175
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0434564   -0.0761207   -0.0107922
0-6 months    COHORTS          GUATEMALA                      1                    NA                -0.0190031   -0.1607938    0.1227875
0-6 months    COHORTS          INDIA                          1                    NA                -0.1106453   -0.1886425   -0.0326481
0-6 months    COHORTS          PHILIPPINES                    1                    NA                -0.0217935   -0.0788095    0.0352224
0-6 months    GMS-Nepal        NEPAL                          1                    NA                -0.0797180   -0.2182544    0.0588184
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0311518   -0.0079356    0.0702392
0-6 months    Keneba           GAMBIA                         1                    NA                -0.0335723   -0.1146972    0.0475525
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0448513   -0.1105386    0.0208359
0-6 months    SAS-CompFeed     INDIA                          1                    NA                -0.0485992   -0.1332034    0.0360051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0334612   -0.0968161    0.0298938
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.0110195   -0.0190897    0.0411286
6-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.0292241   -0.0621391    0.1205874
6-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0054831   -0.1339952    0.1449614
6-24 months   Keneba           GAMBIA                         1                    NA                -0.1271881   -0.2641645    0.0097884
6-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0315248   -0.0648316    0.1278812
6-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0093869   -0.0589054    0.0776792
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0091538   -0.0741785    0.0924861
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0012089   -0.0203518    0.0227696


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                -0.2155712   -0.8209707    0.1885573
0-24 months   COHORTS          INDIA                          1                    NA                -0.4096106   -0.7539499   -0.1328727
0-24 months   COHORTS          PHILIPPINES                    1                    NA                -0.0484443   -0.1422631    0.0376688
0-24 months   GMS-Nepal        NEPAL                          1                    NA                -0.0927556   -0.3596202    0.1217291
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0362420   -0.1154008    0.0372989
0-24 months   Keneba           GAMBIA                         1                    NA                -0.2977139   -0.4075762   -0.1964264
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0078364   -0.1334212    0.1038334
0-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.1073499   -0.1111492    0.2828828
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0248574   -0.1163801    0.0591621
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0799873   -0.1419194   -0.0214141
0-6 months    COHORTS          GUATEMALA                      1                    NA                -0.0254167   -0.2337815    0.1477589
0-6 months    COHORTS          INDIA                          1                    NA                -0.3038534   -0.5386325   -0.1048991
0-6 months    COHORTS          PHILIPPINES                    1                    NA                -0.0295826   -0.1100684    0.0450676
0-6 months    GMS-Nepal        NEPAL                          1                    NA                -0.1318606   -0.3871751    0.0764624
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0461429   -0.0135510    0.1023211
0-6 months    Keneba           GAMBIA                         1                    NA                -0.0420187   -0.1487792    0.0548202
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0572241   -0.1447136    0.0235786
0-6 months    SAS-CompFeed     INDIA                          1                    NA                -0.0946989   -0.2730125    0.0586378
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0474386   -0.1415556    0.0389187
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.0147414   -0.0263743    0.0542100
6-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.0581380   -0.1421596    0.2233100
6-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0110829   -0.3150634    0.2563423
6-24 months   Keneba           GAMBIA                         1                    NA                -0.2451050   -0.5421099   -0.0053022
6-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.1140456   -0.3070302    0.3994667
6-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0328889   -0.2384900    0.2448030
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0165856   -0.1465966    0.1565438
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0163574   -0.3232310    0.2687952
