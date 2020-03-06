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

**Outcome Variable:** y_rate_wtkg

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

agecat         studyid          country                        parity    n_cell      n
-------------  ---------------  -----------------------------  -------  -------  -----
0-3 months     COHORTS          GUATEMALA                      1            103    798
0-3 months     COHORTS          GUATEMALA                      2            114    798
0-3 months     COHORTS          GUATEMALA                      3+           581    798
0-3 months     COHORTS          INDIA                          1            713   4147
0-3 months     COHORTS          INDIA                          2           1045   4147
0-3 months     COHORTS          INDIA                          3+          2389   4147
0-3 months     GMS-Nepal        NEPAL                          1            137    509
0-3 months     GMS-Nepal        NEPAL                          2            130    509
0-3 months     GMS-Nepal        NEPAL                          3+           242    509
0-3 months     Keneba           GAMBIA                         1            192   1441
0-3 months     Keneba           GAMBIA                         2            149   1441
0-3 months     Keneba           GAMBIA                         3+          1100   1441
0-3 months     PROVIDE          BANGLADESH                     1            242    640
0-3 months     PROVIDE          BANGLADESH                     2            226    640
0-3 months     PROVIDE          BANGLADESH                     3+           172    640
0-3 months     SAS-CompFeed     INDIA                          1            346   1265
0-3 months     SAS-CompFeed     INDIA                          2            300   1265
0-3 months     SAS-CompFeed     INDIA                          3+           619   1265
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            680   1996
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            659   1996
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           657   1996
0-3 months     ZVITAMBO         ZIMBABWE                       1           3175   8171
0-3 months     ZVITAMBO         ZIMBABWE                       2           2534   8171
0-3 months     ZVITAMBO         ZIMBABWE                       3+          2462   8171
3-6 months     COHORTS          GUATEMALA                      1            107    809
3-6 months     COHORTS          GUATEMALA                      2            115    809
3-6 months     COHORTS          GUATEMALA                      3+           587    809
3-6 months     COHORTS          INDIA                          1            718   4194
3-6 months     COHORTS          INDIA                          2           1072   4194
3-6 months     COHORTS          INDIA                          3+          2404   4194
3-6 months     GMS-Nepal        NEPAL                          1            122    469
3-6 months     GMS-Nepal        NEPAL                          2            120    469
3-6 months     GMS-Nepal        NEPAL                          3+           227    469
3-6 months     Keneba           GAMBIA                         1            146   1131
3-6 months     Keneba           GAMBIA                         2            107   1131
3-6 months     Keneba           GAMBIA                         3+           878   1131
3-6 months     PROVIDE          BANGLADESH                     1            216    601
3-6 months     PROVIDE          BANGLADESH                     2            222    601
3-6 months     PROVIDE          BANGLADESH                     3+           163    601
3-6 months     SAS-CompFeed     INDIA                          1            300   1118
3-6 months     SAS-CompFeed     INDIA                          2            259   1118
3-6 months     SAS-CompFeed     INDIA                          3+           559   1118
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            567   1640
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            536   1640
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           537   1640
3-6 months     ZVITAMBO         ZIMBABWE                       1           2306   6138
3-6 months     ZVITAMBO         ZIMBABWE                       2           1933   6138
3-6 months     ZVITAMBO         ZIMBABWE                       3+          1899   6138
6-9 months     COHORTS          GUATEMALA                      1            112    824
6-9 months     COHORTS          GUATEMALA                      2            118    824
6-9 months     COHORTS          GUATEMALA                      3+           594    824
6-9 months     COHORTS          INDIA                          1            648   3775
6-9 months     COHORTS          INDIA                          2            951   3775
6-9 months     COHORTS          INDIA                          3+          2176   3775
6-9 months     GMS-Nepal        NEPAL                          1            126    477
6-9 months     GMS-Nepal        NEPAL                          2            128    477
6-9 months     GMS-Nepal        NEPAL                          3+           223    477
6-9 months     Keneba           GAMBIA                         1             90    725
6-9 months     Keneba           GAMBIA                         2             67    725
6-9 months     Keneba           GAMBIA                         3+           568    725
6-9 months     PROVIDE          BANGLADESH                     1            207    576
6-9 months     PROVIDE          BANGLADESH                     2            213    576
6-9 months     PROVIDE          BANGLADESH                     3+           156    576
6-9 months     SAS-CompFeed     INDIA                          1            307   1138
6-9 months     SAS-CompFeed     INDIA                          2            264   1138
6-9 months     SAS-CompFeed     INDIA                          3+           567   1138
6-9 months     SAS-FoodSuppl    INDIA                          1              1    309
6-9 months     SAS-FoodSuppl    INDIA                          2             56    309
6-9 months     SAS-FoodSuppl    INDIA                          3+           252    309
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            512   1470
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            474   1470
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           484   1470
6-9 months     ZVITAMBO         ZIMBABWE                       1           2132   5570
6-9 months     ZVITAMBO         ZIMBABWE                       2           1723   5570
6-9 months     ZVITAMBO         ZIMBABWE                       3+          1715   5570
9-12 months    COHORTS          GUATEMALA                      1            129    930
9-12 months    COHORTS          GUATEMALA                      2            134    930
9-12 months    COHORTS          GUATEMALA                      3+           667    930
9-12 months    COHORTS          INDIA                          1            566   3291
9-12 months    COHORTS          INDIA                          2            825   3291
9-12 months    COHORTS          INDIA                          3+          1900   3291
9-12 months    GMS-Nepal        NEPAL                          1            116    454
9-12 months    GMS-Nepal        NEPAL                          2            121    454
9-12 months    GMS-Nepal        NEPAL                          3+           217    454
9-12 months    Keneba           GAMBIA                         1             75    714
9-12 months    Keneba           GAMBIA                         2             65    714
9-12 months    Keneba           GAMBIA                         3+           574    714
9-12 months    PROVIDE          BANGLADESH                     1            209    569
9-12 months    PROVIDE          BANGLADESH                     2            209    569
9-12 months    PROVIDE          BANGLADESH                     3+           151    569
9-12 months    SAS-CompFeed     INDIA                          1            322   1141
9-12 months    SAS-CompFeed     INDIA                          2            258   1141
9-12 months    SAS-CompFeed     INDIA                          3+           561   1141
9-12 months    SAS-FoodSuppl    INDIA                          1              0    298
9-12 months    SAS-FoodSuppl    INDIA                          2             53    298
9-12 months    SAS-FoodSuppl    INDIA                          3+           245    298
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            376   1064
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            339   1064
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           349   1064
9-12 months    ZVITAMBO         ZIMBABWE                       1           1912   5053
9-12 months    ZVITAMBO         ZIMBABWE                       2           1569   5053
9-12 months    ZVITAMBO         ZIMBABWE                       3+          1572   5053
12-15 months   COHORTS          GUATEMALA                      1            133    886
12-15 months   COHORTS          GUATEMALA                      2            120    886
12-15 months   COHORTS          GUATEMALA                      3+           633    886
12-15 months   GMS-Nepal        NEPAL                          1            116    452
12-15 months   GMS-Nepal        NEPAL                          2            120    452
12-15 months   GMS-Nepal        NEPAL                          3+           216    452
12-15 months   Keneba           GAMBIA                         1            104   1104
12-15 months   Keneba           GAMBIA                         2            103   1104
12-15 months   Keneba           GAMBIA                         3+           897   1104
12-15 months   PROVIDE          BANGLADESH                     1            199    537
12-15 months   PROVIDE          BANGLADESH                     2            201    537
12-15 months   PROVIDE          BANGLADESH                     3+           137    537
12-15 months   SAS-CompFeed     INDIA                          1            339   1165
12-15 months   SAS-CompFeed     INDIA                          2            260   1165
12-15 months   SAS-CompFeed     INDIA                          3+           566   1165
12-15 months   SAS-FoodSuppl    INDIA                          1              0    300
12-15 months   SAS-FoodSuppl    INDIA                          2             59    300
12-15 months   SAS-FoodSuppl    INDIA                          3+           241    300
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            266    776
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            256    776
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           254    776
12-15 months   ZVITAMBO         ZIMBABWE                       1            662   1858
12-15 months   ZVITAMBO         ZIMBABWE                       2            566   1858
12-15 months   ZVITAMBO         ZIMBABWE                       3+           630   1858
15-18 months   COHORTS          GUATEMALA                      1            117    797
15-18 months   COHORTS          GUATEMALA                      2            108    797
15-18 months   COHORTS          GUATEMALA                      3+           572    797
15-18 months   GMS-Nepal        NEPAL                          1            125    477
15-18 months   GMS-Nepal        NEPAL                          2            129    477
15-18 months   GMS-Nepal        NEPAL                          3+           223    477
15-18 months   Keneba           GAMBIA                         1            110   1124
15-18 months   Keneba           GAMBIA                         2            101   1124
15-18 months   Keneba           GAMBIA                         3+           913   1124
15-18 months   PROVIDE          BANGLADESH                     1            197    533
15-18 months   PROVIDE          BANGLADESH                     2            199    533
15-18 months   PROVIDE          BANGLADESH                     3+           137    533
15-18 months   SAS-CompFeed     INDIA                          1            343   1171
15-18 months   SAS-CompFeed     INDIA                          2            258   1171
15-18 months   SAS-CompFeed     INDIA                          3+           570   1171
15-18 months   SAS-FoodSuppl    INDIA                          1              0    290
15-18 months   SAS-FoodSuppl    INDIA                          2             53    290
15-18 months   SAS-FoodSuppl    INDIA                          3+           237    290
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            219    649
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            217    649
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           213    649
15-18 months   ZVITAMBO         ZIMBABWE                       1            425   1198
15-18 months   ZVITAMBO         ZIMBABWE                       2            368   1198
15-18 months   ZVITAMBO         ZIMBABWE                       3+           405   1198
18-21 months   COHORTS          GUATEMALA                      1            112    793
18-21 months   COHORTS          GUATEMALA                      2            107    793
18-21 months   COHORTS          GUATEMALA                      3+           574    793
18-21 months   GMS-Nepal        NEPAL                          1            117    447
18-21 months   GMS-Nepal        NEPAL                          2            121    447
18-21 months   GMS-Nepal        NEPAL                          3+           209    447
18-21 months   Keneba           GAMBIA                         1            115   1126
18-21 months   Keneba           GAMBIA                         2            109   1126
18-21 months   Keneba           GAMBIA                         3+           902   1126
18-21 months   PROVIDE          BANGLADESH                     1            200    542
18-21 months   PROVIDE          BANGLADESH                     2            197    542
18-21 months   PROVIDE          BANGLADESH                     3+           145    542
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              3     11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              4     11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4     11
18-21 months   ZVITAMBO         ZIMBABWE                       1            244    657
18-21 months   ZVITAMBO         ZIMBABWE                       2            201    657
18-21 months   ZVITAMBO         ZIMBABWE                       3+           212    657
21-24 months   COHORTS          GUATEMALA                      1            129    872
21-24 months   COHORTS          GUATEMALA                      2            117    872
21-24 months   COHORTS          GUATEMALA                      3+           626    872
21-24 months   GMS-Nepal        NEPAL                          1             85    343
21-24 months   GMS-Nepal        NEPAL                          2             95    343
21-24 months   GMS-Nepal        NEPAL                          3+           163    343
21-24 months   Keneba           GAMBIA                         1            102   1004
21-24 months   Keneba           GAMBIA                         2             98   1004
21-24 months   Keneba           GAMBIA                         3+           804   1004
21-24 months   PROVIDE          BANGLADESH                     1            176    485
21-24 months   PROVIDE          BANGLADESH                     2            180    485
21-24 months   PROVIDE          BANGLADESH                     3+           129    485
21-24 months   ZVITAMBO         ZIMBABWE                       1            103    303
21-24 months   ZVITAMBO         ZIMBABWE                       2             91    303
21-24 months   ZVITAMBO         ZIMBABWE                       3+           109    303


The following strata were considered:

* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: COHORTS, country: INDIA
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: COHORTS, country: INDIA
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: COHORTS, country: INDIA
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/e7d34a12-5798-4b3c-ad1c-7181ae43642f/d585470e-5d0f-436a-9932-bbcca9baed35/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e7d34a12-5798-4b3c-ad1c-7181ae43642f/d585470e-5d0f-436a-9932-bbcca9baed35/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e7d34a12-5798-4b3c-ad1c-7181ae43642f/d585470e-5d0f-436a-9932-bbcca9baed35/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS          GUATEMALA                      1                    NA                0.8525928   0.8077020   0.8974835
0-3 months     COHORTS          GUATEMALA                      2                    NA                0.8453618   0.8044867   0.8862370
0-3 months     COHORTS          GUATEMALA                      3+                   NA                0.7790411   0.7591358   0.7989464
0-3 months     COHORTS          INDIA                          1                    NA                0.8340761   0.8208305   0.8473218
0-3 months     COHORTS          INDIA                          2                    NA                0.8364009   0.8249784   0.8478234
0-3 months     COHORTS          INDIA                          3+                   NA                0.7876403   0.7797524   0.7955282
0-3 months     GMS-Nepal        NEPAL                          1                    NA                0.8642331   0.8317490   0.8967173
0-3 months     GMS-Nepal        NEPAL                          2                    NA                0.8481265   0.8193539   0.8768990
0-3 months     GMS-Nepal        NEPAL                          3+                   NA                0.7945984   0.7688298   0.8203670
0-3 months     Keneba           GAMBIA                         1                    NA                0.9764807   0.9440951   1.0088664
0-3 months     Keneba           GAMBIA                         2                    NA                0.9799486   0.9461002   1.0137970
0-3 months     Keneba           GAMBIA                         3+                   NA                0.9086666   0.8952721   0.9220611
0-3 months     PROVIDE          BANGLADESH                     1                    NA                0.9136672   0.8903824   0.9369520
0-3 months     PROVIDE          BANGLADESH                     2                    NA                0.9103010   0.8845440   0.9360580
0-3 months     PROVIDE          BANGLADESH                     3+                   NA                0.8733646   0.8455931   0.9011361
0-3 months     SAS-CompFeed     INDIA                          1                    NA                0.8156127   0.7866451   0.8445804
0-3 months     SAS-CompFeed     INDIA                          2                    NA                0.8113426   0.7959688   0.8267163
0-3 months     SAS-CompFeed     INDIA                          3+                   NA                0.7670471   0.7419460   0.7921481
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9268469   0.9093149   0.9443790
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.9287058   0.9110576   0.9463541
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.9111025   0.8932171   0.9289878
0-3 months     ZVITAMBO         ZIMBABWE                       1                    NA                0.9640617   0.9560265   0.9720969
0-3 months     ZVITAMBO         ZIMBABWE                       2                    NA                0.9559389   0.9466539   0.9652240
0-3 months     ZVITAMBO         ZIMBABWE                       3+                   NA                0.9248043   0.9153474   0.9342612
3-6 months     COHORTS          GUATEMALA                      1                    NA                0.5197288   0.4894935   0.5499640
3-6 months     COHORTS          GUATEMALA                      2                    NA                0.4451964   0.4182130   0.4721797
3-6 months     COHORTS          GUATEMALA                      3+                   NA                0.4527017   0.4400408   0.4653626
3-6 months     COHORTS          INDIA                          1                    NA                0.5130659   0.5013791   0.5247526
3-6 months     COHORTS          INDIA                          2                    NA                0.4816194   0.4723589   0.4908800
3-6 months     COHORTS          INDIA                          3+                   NA                0.4563111   0.4499808   0.4626415
3-6 months     GMS-Nepal        NEPAL                          1                    NA                0.5345611   0.5066341   0.5624881
3-6 months     GMS-Nepal        NEPAL                          2                    NA                0.4863027   0.4603398   0.5122656
3-6 months     GMS-Nepal        NEPAL                          3+                   NA                0.4837318   0.4641498   0.5033137
3-6 months     Keneba           GAMBIA                         1                    NA                0.4965368   0.4672577   0.5258159
3-6 months     Keneba           GAMBIA                         2                    NA                0.4548900   0.4234697   0.4863102
3-6 months     Keneba           GAMBIA                         3+                   NA                0.4354515   0.4237105   0.4471924
3-6 months     PROVIDE          BANGLADESH                     1                    NA                0.5071425   0.4851011   0.5291839
3-6 months     PROVIDE          BANGLADESH                     2                    NA                0.4810988   0.4628177   0.4993800
3-6 months     PROVIDE          BANGLADESH                     3+                   NA                0.4759448   0.4471752   0.5047144
3-6 months     SAS-CompFeed     INDIA                          1                    NA                0.4901298   0.4747903   0.5054694
3-6 months     SAS-CompFeed     INDIA                          2                    NA                0.4336886   0.4237451   0.4436321
3-6 months     SAS-CompFeed     INDIA                          3+                   NA                0.4364360   0.4162184   0.4566535
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4308645   0.4156508   0.4460781
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4110349   0.3959249   0.4261449
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.4183911   0.4032714   0.4335108
3-6 months     ZVITAMBO         ZIMBABWE                       1                    NA                0.4978749   0.4905979   0.5051519
3-6 months     ZVITAMBO         ZIMBABWE                       2                    NA                0.4682027   0.4599454   0.4764601
3-6 months     ZVITAMBO         ZIMBABWE                       3+                   NA                0.4649533   0.4569714   0.4729353
6-9 months     COHORTS          GUATEMALA                      1                    NA                0.2304371   0.2012135   0.2596608
6-9 months     COHORTS          GUATEMALA                      2                    NA                0.2241657   0.1992573   0.2490740
6-9 months     COHORTS          GUATEMALA                      3+                   NA                0.2085897   0.1974126   0.2197668
6-9 months     COHORTS          INDIA                          1                    NA                0.2916012   0.2797572   0.3034452
6-9 months     COHORTS          INDIA                          2                    NA                0.2722952   0.2616857   0.2829047
6-9 months     COHORTS          INDIA                          3+                   NA                0.2566738   0.2501258   0.2632217
6-9 months     GMS-Nepal        NEPAL                          1                    NA                0.1963345   0.1758459   0.2168231
6-9 months     GMS-Nepal        NEPAL                          2                    NA                0.1928919   0.1627365   0.2230472
6-9 months     GMS-Nepal        NEPAL                          3+                   NA                0.1793064   0.1641079   0.1945048
6-9 months     Keneba           GAMBIA                         1                    NA                0.2188153   0.1888396   0.2487910
6-9 months     Keneba           GAMBIA                         2                    NA                0.2284025   0.1884361   0.2683688
6-9 months     Keneba           GAMBIA                         3+                   NA                0.2006431   0.1849933   0.2162930
6-9 months     PROVIDE          BANGLADESH                     1                    NA                0.2609938   0.2434866   0.2785009
6-9 months     PROVIDE          BANGLADESH                     2                    NA                0.2611255   0.2445539   0.2776970
6-9 months     PROVIDE          BANGLADESH                     3+                   NA                0.2171397   0.1872421   0.2470373
6-9 months     SAS-CompFeed     INDIA                          1                    NA                0.2229725   0.2103594   0.2355857
6-9 months     SAS-CompFeed     INDIA                          2                    NA                0.2170280   0.1791677   0.2548882
6-9 months     SAS-CompFeed     INDIA                          3+                   NA                0.1992402   0.1800334   0.2184471
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2644801   0.2490108   0.2799493
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2460291   0.2293865   0.2626717
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2553532   0.2409388   0.2697676
6-9 months     ZVITAMBO         ZIMBABWE                       1                    NA                0.2617792   0.2542906   0.2692678
6-9 months     ZVITAMBO         ZIMBABWE                       2                    NA                0.2582364   0.2503041   0.2661687
6-9 months     ZVITAMBO         ZIMBABWE                       3+                   NA                0.2542109   0.2462549   0.2621669
9-12 months    COHORTS          GUATEMALA                      1                    NA                0.1621431   0.1399543   0.1843320
9-12 months    COHORTS          GUATEMALA                      2                    NA                0.1502973   0.1292743   0.1713203
9-12 months    COHORTS          GUATEMALA                      3+                   NA                0.1559520   0.1456582   0.1662458
9-12 months    COHORTS          INDIA                          1                    NA                0.2463968   0.2327872   0.2600064
9-12 months    COHORTS          INDIA                          2                    NA                0.2166423   0.2059104   0.2273742
9-12 months    COHORTS          INDIA                          3+                   NA                0.2024785   0.1956397   0.2093173
9-12 months    GMS-Nepal        NEPAL                          1                    NA                0.1496251   0.1281088   0.1711414
9-12 months    GMS-Nepal        NEPAL                          2                    NA                0.1659664   0.1362451   0.1956877
9-12 months    GMS-Nepal        NEPAL                          3+                   NA                0.1287251   0.1117098   0.1457404
9-12 months    Keneba           GAMBIA                         1                    NA                0.2027645   0.1659027   0.2396262
9-12 months    Keneba           GAMBIA                         2                    NA                0.1811492   0.1410021   0.2212963
9-12 months    Keneba           GAMBIA                         3+                   NA                0.1554970   0.1418053   0.1691888
9-12 months    PROVIDE          BANGLADESH                     1                    NA                0.1746473   0.1576688   0.1916257
9-12 months    PROVIDE          BANGLADESH                     2                    NA                0.1802359   0.1659632   0.1945085
9-12 months    PROVIDE          BANGLADESH                     3+                   NA                0.1777808   0.1606265   0.1949351
9-12 months    SAS-CompFeed     INDIA                          1                    NA                0.2026743   0.1871012   0.2182474
9-12 months    SAS-CompFeed     INDIA                          2                    NA                0.1993107   0.1852759   0.2133454
9-12 months    SAS-CompFeed     INDIA                          3+                   NA                0.1872344   0.1724881   0.2019808
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2104555   0.1928500   0.2280609
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1926107   0.1741467   0.2110748
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2106067   0.1938734   0.2273401
9-12 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.1906031   0.1831431   0.1980632
9-12 months    ZVITAMBO         ZIMBABWE                       2                    NA                0.1694458   0.1614915   0.1774001
9-12 months    ZVITAMBO         ZIMBABWE                       3+                   NA                0.1779151   0.1697842   0.1860460
12-15 months   COHORTS          GUATEMALA                      1                    NA                0.1454491   0.1202376   0.1706607
12-15 months   COHORTS          GUATEMALA                      2                    NA                0.1467259   0.1218595   0.1715923
12-15 months   COHORTS          GUATEMALA                      3+                   NA                0.1528097   0.1421349   0.1634845
12-15 months   GMS-Nepal        NEPAL                          1                    NA                0.1874989   0.1617221   0.2132757
12-15 months   GMS-Nepal        NEPAL                          2                    NA                0.1435530   0.1203011   0.1668049
12-15 months   GMS-Nepal        NEPAL                          3+                   NA                0.1797053   0.1600936   0.1993170
12-15 months   Keneba           GAMBIA                         1                    NA                0.1625428   0.1245100   0.2005756
12-15 months   Keneba           GAMBIA                         2                    NA                0.1997665   0.1632358   0.2362972
12-15 months   Keneba           GAMBIA                         3+                   NA                0.1827224   0.1710095   0.1944353
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.1994896   0.1789831   0.2199961
12-15 months   PROVIDE          BANGLADESH                     2                    NA                0.1537993   0.1352386   0.1723600
12-15 months   PROVIDE          BANGLADESH                     3+                   NA                0.1902576   0.1695333   0.2109819
12-15 months   SAS-CompFeed     INDIA                          1                    NA                0.1887346   0.1651893   0.2122798
12-15 months   SAS-CompFeed     INDIA                          2                    NA                0.1837519   0.1648203   0.2026835
12-15 months   SAS-CompFeed     INDIA                          3+                   NA                0.1835887   0.1758814   0.1912960
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1843308   0.1633621   0.2052995
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1666391   0.1468133   0.1864649
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1709633   0.1525387   0.1893879
12-15 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1506175   0.1368210   0.1644139
12-15 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.1431218   0.1292644   0.1569792
12-15 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.1553107   0.1417397   0.1688816
15-18 months   COHORTS          GUATEMALA                      1                    NA                0.1269049   0.0997403   0.1540695
15-18 months   COHORTS          GUATEMALA                      2                    NA                0.0949706   0.0670002   0.1229409
15-18 months   COHORTS          GUATEMALA                      3+                   NA                0.1514766   0.1382840   0.1646692
15-18 months   GMS-Nepal        NEPAL                          1                    NA                0.2450587   0.2168820   0.2732354
15-18 months   GMS-Nepal        NEPAL                          2                    NA                0.2386802   0.2106407   0.2667196
15-18 months   GMS-Nepal        NEPAL                          3+                   NA                0.2267485   0.2033137   0.2501832
15-18 months   Keneba           GAMBIA                         1                    NA                0.1341845   0.1029051   0.1654640
15-18 months   Keneba           GAMBIA                         2                    NA                0.1594018   0.1246104   0.1941931
15-18 months   Keneba           GAMBIA                         3+                   NA                0.1640706   0.1517867   0.1763545
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.1669881   0.1456073   0.1883690
15-18 months   PROVIDE          BANGLADESH                     2                    NA                0.1527205   0.1342915   0.1711495
15-18 months   PROVIDE          BANGLADESH                     3+                   NA                0.1463305   0.1256721   0.1669888
15-18 months   SAS-CompFeed     INDIA                          1                    NA                0.1794368   0.1532271   0.2056464
15-18 months   SAS-CompFeed     INDIA                          2                    NA                0.1709259   0.1481314   0.1937203
15-18 months   SAS-CompFeed     INDIA                          3+                   NA                0.1794890   0.1656953   0.1932828
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1560273   0.1306815   0.1813732
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1831365   0.1554517   0.2108214
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1691885   0.1478657   0.1905112
15-18 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1340170   0.1155204   0.1525135
15-18 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.1292384   0.1106127   0.1478642
15-18 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.1374981   0.1195566   0.1554397
18-21 months   COHORTS          GUATEMALA                      1                    NA                0.1293045   0.1044526   0.1541564
18-21 months   COHORTS          GUATEMALA                      2                    NA                0.1831006   0.1513761   0.2148250
18-21 months   COHORTS          GUATEMALA                      3+                   NA                0.1662648   0.1537508   0.1787787
18-21 months   GMS-Nepal        NEPAL                          1                    NA                0.1397168   0.1111841   0.1682494
18-21 months   GMS-Nepal        NEPAL                          2                    NA                0.1306533   0.1014126   0.1598940
18-21 months   GMS-Nepal        NEPAL                          3+                   NA                0.1506916   0.1270567   0.1743266
18-21 months   Keneba           GAMBIA                         1                    NA                0.1363320   0.1010129   0.1716510
18-21 months   Keneba           GAMBIA                         2                    NA                0.1533614   0.1199412   0.1867816
18-21 months   Keneba           GAMBIA                         3+                   NA                0.1589299   0.1459781   0.1718817
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.1334984   0.1153658   0.1516310
18-21 months   PROVIDE          BANGLADESH                     2                    NA                0.1271487   0.1088303   0.1454672
18-21 months   PROVIDE          BANGLADESH                     3+                   NA                0.1383491   0.1142021   0.1624961
18-21 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1421860   0.1138104   0.1705615
18-21 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.1128373   0.0777894   0.1478851
18-21 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.1042101   0.0797127   0.1287075
21-24 months   COHORTS          GUATEMALA                      1                    NA                0.1981447   0.1731032   0.2231861
21-24 months   COHORTS          GUATEMALA                      2                    NA                0.1927058   0.1687287   0.2166830
21-24 months   COHORTS          GUATEMALA                      3+                   NA                0.1794646   0.1674875   0.1914417
21-24 months   GMS-Nepal        NEPAL                          1                    NA                0.1656966   0.1179453   0.2134480
21-24 months   GMS-Nepal        NEPAL                          2                    NA                0.1906404   0.1468965   0.2343843
21-24 months   GMS-Nepal        NEPAL                          3+                   NA                0.1745604   0.1375985   0.2115222
21-24 months   Keneba           GAMBIA                         1                    NA                0.1176431   0.0771289   0.1581573
21-24 months   Keneba           GAMBIA                         2                    NA                0.1398245   0.1059772   0.1736717
21-24 months   Keneba           GAMBIA                         3+                   NA                0.1773312   0.1646979   0.1899644
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1324617   0.1136110   0.1513124
21-24 months   PROVIDE          BANGLADESH                     2                    NA                0.1540860   0.1340094   0.1741626
21-24 months   PROVIDE          BANGLADESH                     3+                   NA                0.1380383   0.1182271   0.1578495
21-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1145208   0.0685133   0.1605283
21-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.1155734   0.0576402   0.1735067
21-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.0985549   0.0563434   0.1407665


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS          GUATEMALA                      NA                   NA                0.7980090   0.7812054   0.8148126
0-3 months     COHORTS          INDIA                          NA                   NA                0.8079112   0.8020259   0.8137966
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                0.8270122   0.8100415   0.8439828
0-3 months     Keneba           GAMBIA                         NA                   NA                0.9250728   0.9133367   0.9368088
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                0.7908355   0.7705160   0.8111550
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9222782   0.9120605   0.9324960
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.9497140   0.9445866   0.9548414
3-6 months     COHORTS          GUATEMALA                      NA                   NA                0.4605000   0.4496523   0.4713476
3-6 months     COHORTS          INDIA                          NA                   NA                0.4724963   0.4676809   0.4773116
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                0.4976117   0.4838029   0.5114205
3-6 months     Keneba           GAMBIA                         NA                   NA                0.4451759   0.4348013   0.4555506
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                0.4502075   0.4368094   0.4636057
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4202993   0.4115402   0.4290585
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.4783450   0.4738196   0.4828705
6-9 months     COHORTS          GUATEMALA                      NA                   NA                0.2137898   0.2041068   0.2234728
6-9 months     COHORTS          INDIA                          NA                   NA                0.2666046   0.2615353   0.2716740
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                0.1874500   0.1753777   0.1995223
6-9 months     Keneba           GAMBIA                         NA                   NA                0.2054643   0.1921119   0.2188168
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                0.2097690   0.1949147   0.2246234
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2555255   0.2465533   0.2644978
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.2583530   0.2538536   0.2628524
9-12 months    COHORTS          GUATEMALA                      NA                   NA                0.1559960   0.1474406   0.1645514
9-12 months    COHORTS          INDIA                          NA                   NA                0.2135824   0.2082338   0.2189309
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.1439907   0.1312935   0.1566879
9-12 months    Keneba           GAMBIA                         NA                   NA                0.1627974   0.1505170   0.1750777
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                0.1943224   0.1874198   0.2012249
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2048196   0.1946367   0.2150025
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1800863   0.1755557   0.1846170
12-15 months   COHORTS          GUATEMALA                      NA                   NA                0.1508808   0.1417226   0.1600389
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.1721075   0.1589812   0.1852337
12-15 months   Keneba           GAMBIA                         NA                   NA                0.1824116   0.1716763   0.1931470
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                0.1851225   0.1777268   0.1925183
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1741189   0.1626692   0.1855686
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1499254   0.1419751   0.1578757
15-18 months   COHORTS          GUATEMALA                      NA                   NA                0.1402124   0.1291753   0.1512496
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.2347736   0.2195239   0.2500233
15-18 months   Keneba           GAMBIA                         NA                   NA                0.1607263   0.1498189   0.1716337
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                0.1775870   0.1644275   0.1907466
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1694110   0.1549701   0.1838520
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1337260   0.1231139   0.1443380
18-21 months   COHORTS          GUATEMALA                      NA                   NA                0.1633163   0.1526500   0.1739826
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.1423948   0.1268654   0.1579242
18-21 months   Keneba           GAMBIA                         NA                   NA                0.1560829   0.1446249   0.1675408
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1209531   0.1039197   0.1379866
21-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1840047   0.1740929   0.1939165
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1768175   0.1523979   0.2012370
21-24 months   Keneba           GAMBIA                         NA                   NA                0.1676062   0.1561278   0.1790846
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1090935   0.0811882   0.1369987


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      2                    1                 -0.0072309   -0.0679430    0.0534812
0-3 months     COHORTS          GUATEMALA                      3+                   1                 -0.0735517   -0.1226577   -0.0244456
0-3 months     COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          2                    1                  0.0023247   -0.0151659    0.0198154
0-3 months     COHORTS          INDIA                          3+                   1                 -0.0464358   -0.0618523   -0.0310194
0-3 months     GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          2                    1                 -0.0161067   -0.0595011    0.0272877
0-3 months     GMS-Nepal        NEPAL                          3+                   1                 -0.0696348   -0.1110985   -0.0281711
0-3 months     Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         2                    1                  0.0034678   -0.0433781    0.0503138
0-3 months     Keneba           GAMBIA                         3+                   1                 -0.0678142   -0.1028604   -0.0327679
0-3 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     2                    1                 -0.0033662   -0.0380880    0.0313556
0-3 months     PROVIDE          BANGLADESH                     3+                   1                 -0.0403026   -0.0765440   -0.0040612
0-3 months     SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          2                    1                 -0.0042702   -0.0327533    0.0242130
0-3 months     SAS-CompFeed     INDIA                          3+                   1                 -0.0485657   -0.0701253   -0.0270061
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0018589   -0.0230175    0.0267353
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0157445   -0.0407896    0.0093006
0-3 months     ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       2                    1                 -0.0081228   -0.0204019    0.0041563
0-3 months     ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0392574   -0.0516670   -0.0268478
3-6 months     COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      2                    1                 -0.0745324   -0.1150573   -0.0340074
3-6 months     COHORTS          GUATEMALA                      3+                   1                 -0.0670270   -0.0998061   -0.0342480
3-6 months     COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          2                    1                 -0.0314464   -0.0463574   -0.0165354
3-6 months     COHORTS          INDIA                          3+                   1                 -0.0567547   -0.0700458   -0.0434636
3-6 months     GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          2                    1                 -0.0482584   -0.0863896   -0.0101272
3-6 months     GMS-Nepal        NEPAL                          3+                   1                 -0.0508293   -0.0849376   -0.0167211
3-6 months     Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         2                    1                 -0.0416468   -0.0845944    0.0013008
3-6 months     Keneba           GAMBIA                         3+                   1                 -0.0610853   -0.0926308   -0.0295399
3-6 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     2                    1                 -0.0260437   -0.0546797    0.0025923
3-6 months     PROVIDE          BANGLADESH                     3+                   1                 -0.0311977   -0.0674402    0.0050447
3-6 months     SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          2                    1                 -0.0564412   -0.0741759   -0.0387066
3-6 months     SAS-CompFeed     INDIA                          3+                   1                 -0.0536939   -0.0765463   -0.0308414
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0198296   -0.0412718    0.0016125
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0124734   -0.0339224    0.0089756
3-6 months     ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       2                    1                 -0.0296721   -0.0406784   -0.0186658
3-6 months     ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0329215   -0.0437227   -0.0221203
6-9 months     COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      2                    1                 -0.0062715   -0.0446700    0.0321271
6-9 months     COHORTS          GUATEMALA                      3+                   1                 -0.0218475   -0.0531357    0.0094407
6-9 months     COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          2                    1                 -0.0193060   -0.0352070   -0.0034050
6-9 months     COHORTS          INDIA                          3+                   1                 -0.0349274   -0.0484609   -0.0213939
6-9 months     GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          2                    1                 -0.0034427   -0.0398999    0.0330146
6-9 months     GMS-Nepal        NEPAL                          3+                   1                 -0.0170281   -0.0425384    0.0084822
6-9 months     Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         2                    1                  0.0095871   -0.0403714    0.0595457
6-9 months     Keneba           GAMBIA                         3+                   1                 -0.0181722   -0.0519873    0.0156429
6-9 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     2                    1                  0.0001317   -0.0239747    0.0242380
6-9 months     PROVIDE          BANGLADESH                     3+                   1                 -0.0438541   -0.0785004   -0.0092078
6-9 months     SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          2                    1                 -0.0059446   -0.0493972    0.0375080
6-9 months     SAS-CompFeed     INDIA                          3+                   1                 -0.0237323   -0.0432226   -0.0042420
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0184510   -0.0411726    0.0042707
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0091269   -0.0302710    0.0120172
6-9 months     ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       2                    1                 -0.0035428   -0.0144516    0.0073660
6-9 months     ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0075683   -0.0184943    0.0033577
9-12 months    COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      2                    1                 -0.0118458   -0.0424124    0.0187207
9-12 months    COHORTS          GUATEMALA                      3+                   1                 -0.0061911   -0.0306515    0.0182692
9-12 months    COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          2                    1                 -0.0297545   -0.0470864   -0.0124226
9-12 months    COHORTS          INDIA                          3+                   1                 -0.0439183   -0.0591495   -0.0286871
9-12 months    GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          2                    1                  0.0163413   -0.0203507    0.0530333
9-12 months    GMS-Nepal        NEPAL                          3+                   1                 -0.0209000   -0.0483312    0.0065311
9-12 months    Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         2                    1                 -0.0216153   -0.0761183    0.0328878
9-12 months    Keneba           GAMBIA                         3+                   1                 -0.0472674   -0.0865898   -0.0079450
9-12 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     2                    1                  0.0055886   -0.0165920    0.0277691
9-12 months    PROVIDE          BANGLADESH                     3+                   1                  0.0031335   -0.0210023    0.0272694
9-12 months    SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          2                    1                 -0.0033637   -0.0301867    0.0234594
9-12 months    SAS-CompFeed     INDIA                          3+                   1                 -0.0154399   -0.0426676    0.0117878
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0178447   -0.0433569    0.0076675
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0001513   -0.0241377    0.0244403
9-12 months    ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       2                    1                 -0.0211573   -0.0320625   -0.0102522
9-12 months    ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0126880   -0.0237227   -0.0016533
12-15 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      2                    1                  0.0012768   -0.0341345    0.0366881
12-15 months   COHORTS          GUATEMALA                      3+                   1                  0.0073606   -0.0200178    0.0347389
12-15 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          2                    1                 -0.0439459   -0.0786603   -0.0092314
12-15 months   GMS-Nepal        NEPAL                          3+                   1                 -0.0077936   -0.0401828    0.0245956
12-15 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         2                    1                  0.0372237   -0.0155114    0.0899587
12-15 months   Keneba           GAMBIA                         3+                   1                  0.0201796   -0.0196159    0.0599752
12-15 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     2                    1                 -0.0456903   -0.0733493   -0.0180314
12-15 months   PROVIDE          BANGLADESH                     3+                   1                 -0.0092320   -0.0383870    0.0199230
12-15 months   SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          2                    1                 -0.0049827   -0.0421018    0.0321364
12-15 months   SAS-CompFeed     INDIA                          3+                   1                 -0.0051459   -0.0310374    0.0207456
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0176917   -0.0465491    0.0111657
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0133675   -0.0412808    0.0145459
12-15 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0074957   -0.0270499    0.0120586
12-15 months   ZVITAMBO         ZIMBABWE                       3+                   1                  0.0046932   -0.0146592    0.0240455
15-18 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      2                    1                 -0.0319343   -0.0709248    0.0070561
15-18 months   COHORTS          GUATEMALA                      3+                   1                  0.0245717   -0.0056270    0.0547703
15-18 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          2                    1                 -0.0063785   -0.0461295    0.0333724
15-18 months   GMS-Nepal        NEPAL                          3+                   1                 -0.0183102   -0.0549588    0.0183383
15-18 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         2                    1                  0.0252172   -0.0215679    0.0720023
15-18 months   Keneba           GAMBIA                         3+                   1                  0.0298861   -0.0037190    0.0634912
15-18 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     2                    1                 -0.0142676   -0.0424947    0.0139595
15-18 months   PROVIDE          BANGLADESH                     3+                   1                 -0.0206577   -0.0503882    0.0090729
15-18 months   SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          2                    1                 -0.0085109   -0.0470588    0.0300370
15-18 months   SAS-CompFeed     INDIA                          3+                   1                  0.0000523   -0.0269081    0.0270126
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0271092   -0.0104256    0.0646440
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0131611   -0.0199609    0.0462832
15-18 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0047785   -0.0310282    0.0214711
15-18 months   ZVITAMBO         ZIMBABWE                       3+                   1                  0.0034812   -0.0222875    0.0292498
18-21 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      2                    1                  0.0537961    0.0134964    0.0940957
18-21 months   COHORTS          GUATEMALA                      3+                   1                  0.0369603    0.0091355    0.0647850
18-21 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          2                    1                 -0.0090634   -0.0499184    0.0317916
18-21 months   GMS-Nepal        NEPAL                          3+                   1                  0.0109749   -0.0260754    0.0480251
18-21 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         2                    1                  0.0170295   -0.0315951    0.0656540
18-21 months   Keneba           GAMBIA                         3+                   1                  0.0225979   -0.0150210    0.0602169
18-21 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     2                    1                 -0.0063497   -0.0321248    0.0194254
18-21 months   PROVIDE          BANGLADESH                     3+                   1                  0.0048507   -0.0253465    0.0350479
18-21 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0293487   -0.0744433    0.0157459
18-21 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0379759   -0.0754631   -0.0004886
21-24 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      2                    1                 -0.0054389   -0.0401084    0.0292307
21-24 months   COHORTS          GUATEMALA                      3+                   1                 -0.0186801   -0.0464384    0.0090783
21-24 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          2                    1                  0.0249438   -0.0398152    0.0897027
21-24 months   GMS-Nepal        NEPAL                          3+                   1                  0.0088637   -0.0515215    0.0692489
21-24 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         2                    1                  0.0221814   -0.0306110    0.0749738
21-24 months   Keneba           GAMBIA                         3+                   1                  0.0596881    0.0172499    0.1021263
21-24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     2                    1                  0.0216243   -0.0059151    0.0491637
21-24 months   PROVIDE          BANGLADESH                     3+                   1                  0.0055766   -0.0217700    0.0329231
21-24 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       2                    1                  0.0010526   -0.0729267    0.0750320
21-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0159659   -0.0784039    0.0464721


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      1                    NA                -0.0545838   -0.0967422   -0.0124253
0-3 months     COHORTS          INDIA                          1                    NA                -0.0261649   -0.0384024   -0.0139275
0-3 months     GMS-Nepal        NEPAL                          1                    NA                -0.0372210   -0.0650632   -0.0093788
0-3 months     Keneba           GAMBIA                         1                    NA                -0.0514080   -0.0815256   -0.0212904
0-3 months     PROVIDE          BANGLADESH                     1                    NA                -0.0120200   -0.0307253    0.0066853
0-3 months     SAS-CompFeed     INDIA                          1                    NA                -0.0247772   -0.0388267   -0.0107278
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0045687   -0.0187934    0.0096561
0-3 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.0143477   -0.0207257   -0.0079696
3-6 months     COHORTS          GUATEMALA                      1                    NA                -0.0592288   -0.0873361   -0.0311215
3-6 months     COHORTS          INDIA                          1                    NA                -0.0405696   -0.0511999   -0.0299393
3-6 months     GMS-Nepal        NEPAL                          1                    NA                -0.0369494   -0.0607158   -0.0131830
3-6 months     Keneba           GAMBIA                         1                    NA                -0.0513609   -0.0786294   -0.0240924
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0180814   -0.0356042   -0.0005586
3-6 months     SAS-CompFeed     INDIA                          1                    NA                -0.0399223   -0.0547795   -0.0250652
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0105652   -0.0227362    0.0016059
3-6 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.0195298   -0.0253303   -0.0137294
6-9 months     COHORTS          GUATEMALA                      1                    NA                -0.0166474   -0.0433985    0.0101037
6-9 months     COHORTS          INDIA                          1                    NA                -0.0249966   -0.0358510   -0.0141421
6-9 months     GMS-Nepal        NEPAL                          1                    NA                -0.0088846   -0.0274251    0.0096560
6-9 months     Keneba           GAMBIA                         1                    NA                -0.0133510   -0.0425699    0.0158679
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0118285   -0.0270420    0.0033851
6-9 months     SAS-CompFeed     INDIA                          1                    NA                -0.0132035   -0.0301772    0.0037702
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0089546   -0.0213281    0.0034190
6-9 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.0034262   -0.0092049    0.0023525
9-12 months    COHORTS          GUATEMALA                      1                    NA                -0.0061471   -0.0268583    0.0145641
9-12 months    COHORTS          INDIA                          1                    NA                -0.0328144   -0.0450667   -0.0205621
9-12 months    GMS-Nepal        NEPAL                          1                    NA                -0.0056344   -0.0253218    0.0140530
9-12 months    Keneba           GAMBIA                         1                    NA                -0.0399671   -0.0749547   -0.0049794
9-12 months    PROVIDE          BANGLADESH                     1                    NA                 0.0028843   -0.0099078    0.0156765
9-12 months    SAS-CompFeed     INDIA                          1                    NA                -0.0083520   -0.0272446    0.0105407
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0056359   -0.0195850    0.0083133
9-12 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0105168   -0.0163531   -0.0046805
12-15 months   COHORTS          GUATEMALA                      1                    NA                 0.0054317   -0.0175610    0.0284244
12-15 months   GMS-Nepal        NEPAL                          1                    NA                -0.0153914   -0.0376557    0.0068729
12-15 months   Keneba           GAMBIA                         1                    NA                 0.0198688   -0.0160368    0.0557745
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0194572   -0.0351372   -0.0037773
12-15 months   SAS-CompFeed     INDIA                          1                    NA                -0.0036121   -0.0240302    0.0168061
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0102119   -0.0266237    0.0062000
12-15 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0006921   -0.0115508    0.0101667
15-18 months   COHORTS          GUATEMALA                      1                    NA                 0.0133075   -0.0120515    0.0386665
15-18 months   GMS-Nepal        NEPAL                          1                    NA                -0.0102851   -0.0349910    0.0144207
15-18 months   Keneba           GAMBIA                         1                    NA                 0.0265418   -0.0035560    0.0566395
15-18 months   PROVIDE          BANGLADESH                     1                    NA                -0.0106367   -0.0266906    0.0054172
15-18 months   SAS-CompFeed     INDIA                          1                    NA                -0.0018497   -0.0230451    0.0193457
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0133837   -0.0070467    0.0338140
15-18 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0002910   -0.0148512    0.0142691
18-21 months   COHORTS          GUATEMALA                      1                    NA                 0.0340118    0.0104125    0.0576112
18-21 months   GMS-Nepal        NEPAL                          1                    NA                 0.0026780   -0.0224037    0.0277598
18-21 months   Keneba           GAMBIA                         1                    NA                 0.0197509   -0.0137739    0.0532758
18-21 months   PROVIDE          BANGLADESH                     1                    NA                -0.0010102   -0.0157450    0.0137246
18-21 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0212328   -0.0435320    0.0010663
21-24 months   COHORTS          GUATEMALA                      1                    NA                -0.0141400   -0.0373733    0.0090933
21-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0111208   -0.0306689    0.0529106
21-24 months   Keneba           GAMBIA                         1                    NA                 0.0499631    0.0120205    0.0879058
21-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0095088   -0.0055993    0.0246168
21-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0054274   -0.0435891    0.0327344
