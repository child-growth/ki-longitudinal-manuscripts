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

**Outcome Variable:** ever_stunted

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

agecat        studyid          country                        parity    ever_stunted   n_cell       n
------------  ---------------  -----------------------------  -------  -------------  -------  ------
0-24 months   COHORTS          GUATEMALA                      1                    0       54    1360
0-24 months   COHORTS          GUATEMALA                      1                    1      159    1360
0-24 months   COHORTS          GUATEMALA                      2                    0       44    1360
0-24 months   COHORTS          GUATEMALA                      2                    1      148    1360
0-24 months   COHORTS          GUATEMALA                      3+                   0      223    1360
0-24 months   COHORTS          GUATEMALA                      3+                   1      732    1360
0-24 months   COHORTS          INDIA                          1                    0      511    4630
0-24 months   COHORTS          INDIA                          1                    1      301    4630
0-24 months   COHORTS          INDIA                          2                    0      797    4630
0-24 months   COHORTS          INDIA                          2                    1      388    4630
0-24 months   COHORTS          INDIA                          3+                   0     1511    4630
0-24 months   COHORTS          INDIA                          3+                   1     1122    4630
0-24 months   COHORTS          PHILIPPINES                    1                    0      269    3058
0-24 months   COHORTS          PHILIPPINES                    1                    1      409    3058
0-24 months   COHORTS          PHILIPPINES                    2                    0      242    3058
0-24 months   COHORTS          PHILIPPINES                    2                    1      448    3058
0-24 months   COHORTS          PHILIPPINES                    3+                   0      448    3058
0-24 months   COHORTS          PHILIPPINES                    3+                   1     1242    3058
0-24 months   GMS-Nepal        NEPAL                          1                    0       74     698
0-24 months   GMS-Nepal        NEPAL                          1                    1      137     698
0-24 months   GMS-Nepal        NEPAL                          2                    0       74     698
0-24 months   GMS-Nepal        NEPAL                          2                    1      107     698
0-24 months   GMS-Nepal        NEPAL                          3+                   0      104     698
0-24 months   GMS-Nepal        NEPAL                          3+                   1      202     698
0-24 months   JiVitA-3         BANGLADESH                     1                    0     4760   27227
0-24 months   JiVitA-3         BANGLADESH                     1                    1     5492   27227
0-24 months   JiVitA-3         BANGLADESH                     2                    0     4853   27227
0-24 months   JiVitA-3         BANGLADESH                     2                    1     4146   27227
0-24 months   JiVitA-3         BANGLADESH                     3+                   0     4128   27227
0-24 months   JiVitA-3         BANGLADESH                     3+                   1     3848   27227
0-24 months   Keneba           GAMBIA                         1                    0      119    1990
0-24 months   Keneba           GAMBIA                         1                    1      122    1990
0-24 months   Keneba           GAMBIA                         2                    0      110    1990
0-24 months   Keneba           GAMBIA                         2                    1      104    1990
0-24 months   Keneba           GAMBIA                         3+                   0      632    1990
0-24 months   Keneba           GAMBIA                         3+                   1      903    1990
0-24 months   PROVIDE          BANGLADESH                     1                    0      154     700
0-24 months   PROVIDE          BANGLADESH                     1                    1      117     700
0-24 months   PROVIDE          BANGLADESH                     2                    0      134     700
0-24 months   PROVIDE          BANGLADESH                     2                    1      110     700
0-24 months   PROVIDE          BANGLADESH                     3+                   0      107     700
0-24 months   PROVIDE          BANGLADESH                     3+                   1       78     700
0-24 months   SAS-CompFeed     INDIA                          1                    0      162    1533
0-24 months   SAS-CompFeed     INDIA                          1                    1      290    1533
0-24 months   SAS-CompFeed     INDIA                          2                    0      122    1533
0-24 months   SAS-CompFeed     INDIA                          2                    1      238    1533
0-24 months   SAS-CompFeed     INDIA                          3+                   0      189    1533
0-24 months   SAS-CompFeed     INDIA                          3+                   1      532    1533
0-24 months   SAS-FoodSuppl    INDIA                          1                    0       13     418
0-24 months   SAS-FoodSuppl    INDIA                          1                    1        8     418
0-24 months   SAS-FoodSuppl    INDIA                          2                    0       19     418
0-24 months   SAS-FoodSuppl    INDIA                          2                    1       58     418
0-24 months   SAS-FoodSuppl    INDIA                          3+                   0       40     418
0-24 months   SAS-FoodSuppl    INDIA                          3+                   1      280     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      550    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      271    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      494    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1      277    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      495    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1      270    2357
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0     3636   14073
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1     2433   14073
0-24 months   ZVITAMBO         ZIMBABWE                       2                    0     2463   14073
0-24 months   ZVITAMBO         ZIMBABWE                       2                    1     1749   14073
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   0     2104   14073
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   1     1688   14073
0-6 months    COHORTS          GUATEMALA                      1                    0      106    1091
0-6 months    COHORTS          GUATEMALA                      1                    1       53    1091
0-6 months    COHORTS          GUATEMALA                      2                    0      108    1091
0-6 months    COHORTS          GUATEMALA                      2                    1       50    1091
0-6 months    COHORTS          GUATEMALA                      3+                   0      522    1091
0-6 months    COHORTS          GUATEMALA                      3+                   1      252    1091
0-6 months    COHORTS          INDIA                          1                    0      599    4473
0-6 months    COHORTS          INDIA                          1                    1      166    4473
0-6 months    COHORTS          INDIA                          2                    0      973    4473
0-6 months    COHORTS          INDIA                          2                    1      171    4473
0-6 months    COHORTS          INDIA                          3+                   0     2050    4473
0-6 months    COHORTS          INDIA                          3+                   1      514    4473
0-6 months    COHORTS          PHILIPPINES                    1                    0      526    3058
0-6 months    COHORTS          PHILIPPINES                    1                    1      152    3058
0-6 months    COHORTS          PHILIPPINES                    2                    0      537    3058
0-6 months    COHORTS          PHILIPPINES                    2                    1      153    3058
0-6 months    COHORTS          PHILIPPINES                    3+                   0     1264    3058
0-6 months    COHORTS          PHILIPPINES                    3+                   1      426    3058
0-6 months    GMS-Nepal        NEPAL                          1                    0      128     698
0-6 months    GMS-Nepal        NEPAL                          1                    1       83     698
0-6 months    GMS-Nepal        NEPAL                          2                    0      131     698
0-6 months    GMS-Nepal        NEPAL                          2                    1       50     698
0-6 months    GMS-Nepal        NEPAL                          3+                   0      217     698
0-6 months    GMS-Nepal        NEPAL                          3+                   1       89     698
0-6 months    JiVitA-3         BANGLADESH                     1                    0     5393   27161
0-6 months    JiVitA-3         BANGLADESH                     1                    1     4817   27161
0-6 months    JiVitA-3         BANGLADESH                     2                    0     5625   27161
0-6 months    JiVitA-3         BANGLADESH                     2                    1     3355   27161
0-6 months    JiVitA-3         BANGLADESH                     3+                   0     4926   27161
0-6 months    JiVitA-3         BANGLADESH                     3+                   1     3045   27161
0-6 months    Keneba           GAMBIA                         1                    0      149    1853
0-6 months    Keneba           GAMBIA                         1                    1       86    1853
0-6 months    Keneba           GAMBIA                         2                    0      150    1853
0-6 months    Keneba           GAMBIA                         2                    1       55    1853
0-6 months    Keneba           GAMBIA                         3+                   0      973    1853
0-6 months    Keneba           GAMBIA                         3+                   1      440    1853
0-6 months    PROVIDE          BANGLADESH                     1                    0      201     700
0-6 months    PROVIDE          BANGLADESH                     1                    1       70     700
0-6 months    PROVIDE          BANGLADESH                     2                    0      182     700
0-6 months    PROVIDE          BANGLADESH                     2                    1       62     700
0-6 months    PROVIDE          BANGLADESH                     3+                   0      149     700
0-6 months    PROVIDE          BANGLADESH                     3+                   1       36     700
0-6 months    SAS-CompFeed     INDIA                          1                    0      249    1530
0-6 months    SAS-CompFeed     INDIA                          1                    1      202    1530
0-6 months    SAS-CompFeed     INDIA                          2                    0      223    1530
0-6 months    SAS-CompFeed     INDIA                          2                    1      136    1530
0-6 months    SAS-CompFeed     INDIA                          3+                   0      407    1530
0-6 months    SAS-CompFeed     INDIA                          3+                   1      313    1530
0-6 months    SAS-FoodSuppl    INDIA                          1                    0       14     416
0-6 months    SAS-FoodSuppl    INDIA                          1                    1        6     416
0-6 months    SAS-FoodSuppl    INDIA                          2                    0       46     416
0-6 months    SAS-FoodSuppl    INDIA                          2                    1       31     416
0-6 months    SAS-FoodSuppl    INDIA                          3+                   0      194     416
0-6 months    SAS-FoodSuppl    INDIA                          3+                   1      125     416
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      647    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      174    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      630    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1      141    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      621    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1      144    2357
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0     4497   14056
0-6 months    ZVITAMBO         ZIMBABWE                       1                    1     1565   14056
0-6 months    ZVITAMBO         ZIMBABWE                       2                    0     3160   14056
0-6 months    ZVITAMBO         ZIMBABWE                       2                    1     1047   14056
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   0     2763   14056
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   1     1024   14056
6-24 months   COHORTS          GUATEMALA                      1                    0       30     895
6-24 months   COHORTS          GUATEMALA                      1                    1      106     895
6-24 months   COHORTS          GUATEMALA                      2                    0       29     895
6-24 months   COHORTS          GUATEMALA                      2                    1       98     895
6-24 months   COHORTS          GUATEMALA                      3+                   0      152     895
6-24 months   COHORTS          GUATEMALA                      3+                   1      480     895
6-24 months   COHORTS          INDIA                          1                    0      463    3548
6-24 months   COHORTS          INDIA                          1                    1      135    3548
6-24 months   COHORTS          INDIA                          2                    0      729    3548
6-24 months   COHORTS          INDIA                          2                    1      217    3548
6-24 months   COHORTS          INDIA                          3+                   0     1396    3548
6-24 months   COHORTS          INDIA                          3+                   1      608    3548
6-24 months   COHORTS          PHILIPPINES                    1                    0      210    2121
6-24 months   COHORTS          PHILIPPINES                    1                    1      257    2121
6-24 months   COHORTS          PHILIPPINES                    2                    0      190    2121
6-24 months   COHORTS          PHILIPPINES                    2                    1      295    2121
6-24 months   COHORTS          PHILIPPINES                    3+                   0      353    2121
6-24 months   COHORTS          PHILIPPINES                    3+                   1      816    2121
6-24 months   GMS-Nepal        NEPAL                          1                    0       48     397
6-24 months   GMS-Nepal        NEPAL                          1                    1       54     397
6-24 months   GMS-Nepal        NEPAL                          2                    0       51     397
6-24 months   GMS-Nepal        NEPAL                          2                    1       57     397
6-24 months   GMS-Nepal        NEPAL                          3+                   0       74     397
6-24 months   GMS-Nepal        NEPAL                          3+                   1      113     397
6-24 months   JiVitA-3         BANGLADESH                     1                    0     2931   10493
6-24 months   JiVitA-3         BANGLADESH                     1                    1      675   10493
6-24 months   JiVitA-3         BANGLADESH                     2                    0     3001   10493
6-24 months   JiVitA-3         BANGLADESH                     2                    1      791   10493
6-24 months   JiVitA-3         BANGLADESH                     3+                   0     2292   10493
6-24 months   JiVitA-3         BANGLADESH                     3+                   1      803   10493
6-24 months   Keneba           GAMBIA                         1                    0      109    1365
6-24 months   Keneba           GAMBIA                         1                    1       36    1365
6-24 months   Keneba           GAMBIA                         2                    0      102    1365
6-24 months   Keneba           GAMBIA                         2                    1       49    1365
6-24 months   Keneba           GAMBIA                         3+                   0      606    1365
6-24 months   Keneba           GAMBIA                         3+                   1      463    1365
6-24 months   PROVIDE          BANGLADESH                     1                    0      116     456
6-24 months   PROVIDE          BANGLADESH                     1                    1       47     456
6-24 months   PROVIDE          BANGLADESH                     2                    0      116     456
6-24 months   PROVIDE          BANGLADESH                     2                    1       48     456
6-24 months   PROVIDE          BANGLADESH                     3+                   0       87     456
6-24 months   PROVIDE          BANGLADESH                     3+                   1       42     456
6-24 months   SAS-CompFeed     INDIA                          1                    0      146     813
6-24 months   SAS-CompFeed     INDIA                          1                    1       88     813
6-24 months   SAS-CompFeed     INDIA                          2                    0      100     813
6-24 months   SAS-CompFeed     INDIA                          2                    1      102     813
6-24 months   SAS-CompFeed     INDIA                          3+                   0      158     813
6-24 months   SAS-CompFeed     INDIA                          3+                   1      219     813
6-24 months   SAS-FoodSuppl    INDIA                          1                    0        2     243
6-24 months   SAS-FoodSuppl    INDIA                          1                    1        2     243
6-24 months   SAS-FoodSuppl    INDIA                          2                    0       19     243
6-24 months   SAS-FoodSuppl    INDIA                          2                    1       27     243
6-24 months   SAS-FoodSuppl    INDIA                          3+                   0       38     243
6-24 months   SAS-FoodSuppl    INDIA                          3+                   1      155     243
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      424    1577
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       97    1577
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      391    1577
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1      136    1577
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      403    1577
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1      126    1577
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0     2670    8496
6-24 months   ZVITAMBO         ZIMBABWE                       1                    1      868    8496
6-24 months   ZVITAMBO         ZIMBABWE                       2                    0     1911    8496
6-24 months   ZVITAMBO         ZIMBABWE                       2                    1      702    8496
6-24 months   ZVITAMBO         ZIMBABWE                       3+                   0     1681    8496
6-24 months   ZVITAMBO         ZIMBABWE                       3+                   1      664    8496


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

* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

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
![](/tmp/73227c09-6e7e-465e-ab6c-9e537173247b/3956dba4-5bb6-41cf-84d2-d2c3ad1ed33d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/73227c09-6e7e-465e-ab6c-9e537173247b/3956dba4-5bb6-41cf-84d2-d2c3ad1ed33d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/73227c09-6e7e-465e-ab6c-9e537173247b/3956dba4-5bb6-41cf-84d2-d2c3ad1ed33d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/73227c09-6e7e-465e-ab6c-9e537173247b/3956dba4-5bb6-41cf-84d2-d2c3ad1ed33d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                0.7516966   0.6735057   0.8298875
0-24 months   COHORTS          GUATEMALA                      2                    NA                0.8227142   0.7333757   0.9120527
0-24 months   COHORTS          GUATEMALA                      3+                   NA                0.7646106   0.7313600   0.7978612
0-24 months   COHORTS          INDIA                          1                    NA                0.3897450   0.3434556   0.4360343
0-24 months   COHORTS          INDIA                          2                    NA                0.3607223   0.3253708   0.3960739
0-24 months   COHORTS          INDIA                          3+                   NA                0.3969142   0.3752545   0.4185739
0-24 months   COHORTS          PHILIPPINES                    1                    NA                0.5979541   0.5501911   0.6457171
0-24 months   COHORTS          PHILIPPINES                    2                    NA                0.6362284   0.5759002   0.6965566
0-24 months   COHORTS          PHILIPPINES                    3+                   NA                0.7267105   0.7006467   0.7527744
0-24 months   GMS-Nepal        NEPAL                          1                    NA                0.5715354   0.4633298   0.6797410
0-24 months   GMS-Nepal        NEPAL                          2                    NA                0.5997877   0.4626409   0.7369345
0-24 months   GMS-Nepal        NEPAL                          3+                   NA                0.5779347   0.5093320   0.6465374
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.5522005   0.5339801   0.5704210
0-24 months   JiVitA-3         BANGLADESH                     2                    NA                0.4724473   0.4568048   0.4880899
0-24 months   JiVitA-3         BANGLADESH                     3+                   NA                0.4720824   0.4540195   0.4901453
0-24 months   Keneba           GAMBIA                         1                    NA                0.4515942   0.3776468   0.5255415
0-24 months   Keneba           GAMBIA                         2                    NA                0.4599346   0.3686167   0.5512525
0-24 months   Keneba           GAMBIA                         3+                   NA                0.5649383   0.5302722   0.5996045
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.4447737   0.3752579   0.5142894
0-24 months   PROVIDE          BANGLADESH                     2                    NA                0.4534462   0.3626029   0.5442895
0-24 months   PROVIDE          BANGLADESH                     3+                   NA                0.3386360   0.2605910   0.4166811
0-24 months   SAS-CompFeed     INDIA                          1                    NA                0.6301501   0.5810231   0.6792771
0-24 months   SAS-CompFeed     INDIA                          2                    NA                0.6588957   0.5803581   0.7374333
0-24 months   SAS-CompFeed     INDIA                          3+                   NA                0.7529742   0.7149184   0.7910299
0-24 months   SAS-FoodSuppl    INDIA                          1                    NA                0.3809524   0.1730038   0.5889009
0-24 months   SAS-FoodSuppl    INDIA                          2                    NA                0.7532468   0.6568366   0.8496569
0-24 months   SAS-FoodSuppl    INDIA                          3+                   NA                0.8750000   0.8387213   0.9112787
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3352101   0.2927361   0.3776841
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.3546373   0.3119679   0.3973067
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.3762178   0.3344746   0.4179610
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.4175399   0.3965425   0.4385373
0-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.4122197   0.3895551   0.4348844
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.4481723   0.4252170   0.4711277
0-6 months    COHORTS          GUATEMALA                      1                    NA                0.4471820   0.3321233   0.5622408
0-6 months    COHORTS          GUATEMALA                      2                    NA                0.4135562   0.2883995   0.5387130
0-6 months    COHORTS          GUATEMALA                      3+                   NA                0.3350753   0.2977026   0.3724480
0-6 months    COHORTS          INDIA                          1                    NA                0.2274809   0.1854152   0.2695467
0-6 months    COHORTS          INDIA                          2                    NA                0.1688549   0.1384175   0.1992923
0-6 months    COHORTS          INDIA                          3+                   NA                0.1920073   0.1745815   0.2094331
0-6 months    COHORTS          PHILIPPINES                    1                    NA                0.2523120   0.2051195   0.2995045
0-6 months    COHORTS          PHILIPPINES                    2                    NA                0.2459463   0.1946973   0.2971953
0-6 months    COHORTS          PHILIPPINES                    3+                   NA                0.2383893   0.2125825   0.2641961
0-6 months    GMS-Nepal        NEPAL                          1                    NA                0.3623214   0.2444212   0.4802216
0-6 months    GMS-Nepal        NEPAL                          2                    NA                0.2623090   0.1594686   0.3651494
0-6 months    GMS-Nepal        NEPAL                          3+                   NA                0.2039197   0.1540855   0.2537540
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.4970302   0.4785812   0.5154792
0-6 months    JiVitA-3         BANGLADESH                     2                    NA                0.3842386   0.3685616   0.3999155
0-6 months    JiVitA-3         BANGLADESH                     3+                   NA                0.3570007   0.3398630   0.3741384
0-6 months    Keneba           GAMBIA                         1                    NA                0.2516979   0.1970160   0.3063797
0-6 months    Keneba           GAMBIA                         2                    NA                0.2972736   0.2021338   0.3924133
0-6 months    Keneba           GAMBIA                         3+                   NA                0.2923391   0.2623338   0.3223444
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.2523060   0.1822305   0.3223815
0-6 months    PROVIDE          BANGLADESH                     2                    NA                0.2542735   0.1767717   0.3317754
0-6 months    PROVIDE          BANGLADESH                     3+                   NA                0.1637548   0.1040710   0.2234385
0-6 months    SAS-CompFeed     INDIA                          1                    NA                0.4830542   0.4004319   0.5656765
0-6 months    SAS-CompFeed     INDIA                          2                    NA                0.3904848   0.3228605   0.4581091
0-6 months    SAS-CompFeed     INDIA                          3+                   NA                0.4261875   0.3824036   0.4699714
0-6 months    SAS-FoodSuppl    INDIA                          1                    NA                0.3000000   0.0989216   0.5010784
0-6 months    SAS-FoodSuppl    INDIA                          2                    NA                0.4025974   0.2929258   0.5122691
0-6 months    SAS-FoodSuppl    INDIA                          3+                   NA                0.3918495   0.3382155   0.4454836
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2159601   0.1797757   0.2521445
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1802979   0.1470997   0.2134960
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1960665   0.1582544   0.2338787
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.2732644   0.2539948   0.2925339
0-6 months    ZVITAMBO         ZIMBABWE                       2                    NA                0.2488195   0.2290981   0.2685409
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   NA                0.2808167   0.2604956   0.3011377
6-24 months   COHORTS          GUATEMALA                      1                    NA                0.7609440   0.6576470   0.8642411
6-24 months   COHORTS          GUATEMALA                      2                    NA                0.7923682   0.6735080   0.9112283
6-24 months   COHORTS          GUATEMALA                      3+                   NA                0.7526670   0.7120344   0.7932995
6-24 months   COHORTS          INDIA                          1                    NA                0.2588560   0.2082427   0.3094692
6-24 months   COHORTS          INDIA                          2                    NA                0.2526244   0.2144540   0.2907948
6-24 months   COHORTS          INDIA                          3+                   NA                0.2758462   0.2535199   0.2981725
6-24 months   COHORTS          PHILIPPINES                    1                    NA                0.5093846   0.4429645   0.5758047
6-24 months   COHORTS          PHILIPPINES                    2                    NA                0.5953292   0.5287812   0.6618772
6-24 months   COHORTS          PHILIPPINES                    3+                   NA                0.7008982   0.6721502   0.7296463
6-24 months   GMS-Nepal        NEPAL                          1                    NA                0.5957237   0.4662084   0.7252389
6-24 months   GMS-Nepal        NEPAL                          2                    NA                0.5339472   0.3764826   0.6914118
6-24 months   GMS-Nepal        NEPAL                          3+                   NA                0.5731660   0.4816213   0.6647106
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.1829969   0.1605278   0.2054659
6-24 months   JiVitA-3         BANGLADESH                     2                    NA                0.2173787   0.1974183   0.2373390
6-24 months   JiVitA-3         BANGLADESH                     3+                   NA                0.2559734   0.2286836   0.2832632
6-24 months   Keneba           GAMBIA                         1                    NA                0.3000728   0.1932880   0.4068576
6-24 months   Keneba           GAMBIA                         2                    NA                0.2537929   0.1648820   0.3427037
6-24 months   Keneba           GAMBIA                         3+                   NA                0.4240879   0.3877458   0.4604299
6-24 months   PROVIDE          BANGLADESH                     1                    NA                0.2653962   0.1785680   0.3522245
6-24 months   PROVIDE          BANGLADESH                     2                    NA                0.3175322   0.2284078   0.4066565
6-24 months   PROVIDE          BANGLADESH                     3+                   NA                0.2677056   0.1731371   0.3622742
6-24 months   SAS-CompFeed     INDIA                          1                    NA                0.3167477   0.2290157   0.4044797
6-24 months   SAS-CompFeed     INDIA                          2                    NA                0.4911214   0.4320754   0.5501674
6-24 months   SAS-CompFeed     INDIA                          3+                   NA                0.6131175   0.5721558   0.6540792
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1863588   0.1439491   0.2287686
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2520942   0.2030743   0.3011142
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2659686   0.2213580   0.3105792
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.2529275   0.2261504   0.2797046
6-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.2682737   0.2405840   0.2959633
6-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.2795694   0.2513672   0.3077716


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.7639706   0.7413939   0.7865473
0-24 months   COHORTS          INDIA                          NA                   NA                0.3911447   0.3770865   0.4052029
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6863963   0.6699497   0.7028430
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.6389685   0.6033115   0.6746254
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4953171   0.4874955   0.5031388
0-24 months   Keneba           GAMBIA                         NA                   NA                0.5673367   0.5455633   0.5891101
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.4357143   0.3989556   0.4724730
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.6914547   0.6510509   0.7318584
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.8277512   0.7915095   0.8639929
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3470513   0.3278294   0.3662733
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.4171108   0.4089639   0.4252576
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.3253896   0.2975756   0.3532035
0-6 months    COHORTS          INDIA                          NA                   NA                0.1902526   0.1787489   0.2017563
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2390451   0.2239262   0.2541640
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.3180516   0.2834770   0.3526261
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.4129818   0.4055453   0.4204184
0-6 months    Keneba           GAMBIA                         NA                   NA                0.3135456   0.2924164   0.3346748
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2400000   0.2083392   0.2716608
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.4254902   0.3977202   0.4532601
0-6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.3894231   0.3425088   0.4363374
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1947391   0.1787488   0.2107293
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.2586796   0.2514399   0.2659192
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.7642458   0.7364214   0.7920702
6-24 months   COHORTS          INDIA                          NA                   NA                0.2705750   0.2559548   0.2851951
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6449788   0.6246093   0.6653483
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.5642317   0.5153938   0.6130696
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2162394   0.2068628   0.2256160
6-24 months   Keneba           GAMBIA                         NA                   NA                0.4014652   0.3754511   0.4274793
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2276474   0.2069456   0.2483493
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.2629473   0.2535857   0.2723089


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      2                    1                 1.0944764   0.9419627   1.2716837
0-24 months   COHORTS          GUATEMALA                      3+                   1                 1.0171798   0.9089919   1.1382442
0-24 months   COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          2                    1                 0.9255343   0.7940687   1.0787654
0-24 months   COHORTS          INDIA                          3+                   1                 1.0183947   0.8942794   1.1597357
0-24 months   COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    2                    1                 1.0640088   0.9406353   1.2035640
0-24 months   COHORTS          PHILIPPINES                    3+                   1                 1.2153283   1.1142155   1.3256170
0-24 months   GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          2                    1                 1.0494323   0.7800210   1.4118957
0-24 months   GMS-Nepal        NEPAL                          3+                   1                 1.0111968   0.8083906   1.2648822
0-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     2                    1                 0.8555720   0.8183316   0.8945071
0-24 months   JiVitA-3         BANGLADESH                     3+                   1                 0.8549111   0.8143180   0.8975278
0-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         2                    1                 1.0184690   0.7877036   1.3168392
0-24 months   Keneba           GAMBIA                         3+                   1                 1.2509867   1.0505384   1.4896816
0-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     2                    1                 1.0194988   0.7922005   1.3120135
0-24 months   PROVIDE          BANGLADESH                     3+                   1                 0.7613671   0.5781958   1.0025666
0-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          2                    1                 1.0456171   0.9109082   1.2002473
0-24 months   SAS-CompFeed     INDIA                          3+                   1                 1.1949125   1.1082074   1.2884013
0-24 months   SAS-FoodSuppl    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-FoodSuppl    INDIA                          2                    1                 1.9772727   1.1286797   3.4638767
0-24 months   SAS-FoodSuppl    INDIA                          3+                   1                 2.2968750   1.3285819   3.9708764
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0579555   0.8888778   1.2591942
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1223344   0.9487689   1.3276515
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 0.9872583   0.9166125   1.0633490
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 1.0733640   0.9992885   1.1529307
0-6 months    COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      2                    1                 0.9248051   0.6226906   1.3734984
0-6 months    COHORTS          GUATEMALA                      3+                   1                 0.7493041   0.5666603   0.9908168
0-6 months    COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          2                    1                 0.7422815   0.5736427   0.9604965
0-6 months    COHORTS          INDIA                          3+                   1                 0.8440591   0.6873393   1.0365124
0-6 months    COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    2                    1                 0.9747706   0.7376738   1.2880730
0-6 months    COHORTS          PHILIPPINES                    3+                   1                 0.9448195   0.7618550   1.1717240
0-6 months    GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          2                    1                 0.7239678   0.4352444   1.2042184
0-6 months    GMS-Nepal        NEPAL                          3+                   1                 0.5628145   0.3743150   0.8462395
0-6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     2                    1                 0.7730688   0.7328658   0.8154773
0-6 months    JiVitA-3         BANGLADESH                     3+                   1                 0.7182676   0.6774500   0.7615445
0-6 months    Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         2                    1                 1.1810730   0.8021279   1.7390413
0-6 months    Keneba           GAMBIA                         3+                   1                 1.1614683   0.9133730   1.4769525
0-6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     2                    1                 1.0077980   0.6683311   1.5196912
0-6 months    PROVIDE          BANGLADESH                     3+                   1                 0.6490323   0.4108099   1.0253962
0-6 months    SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          2                    1                 0.8083664   0.6073879   1.0758467
0-6 months    SAS-CompFeed     INDIA                          3+                   1                 0.8822768   0.7254623   1.0729879
0-6 months    SAS-FoodSuppl    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    SAS-FoodSuppl    INDIA                          2                    1                 1.3419913   0.6509327   2.7667081
0-6 months    SAS-FoodSuppl    INDIA                          3+                   1                 1.3061651   0.6590218   2.5887871
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8348666   0.6515507   1.0697590
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9078830   0.7036788   1.1713464
0-6 months    ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       2                    1                 0.9105449   0.8190737   1.0122313
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   1                 1.0276372   0.9291021   1.1366225
6-24 months   COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          GUATEMALA                      2                    1                 1.0412962   0.8508296   1.2744007
6-24 months   COHORTS          GUATEMALA                      3+                   1                 0.9891226   0.8548325   1.1445092
6-24 months   COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          INDIA                          2                    1                 0.9759264   0.7628818   1.2484665
6-24 months   COHORTS          INDIA                          3+                   1                 1.0656359   0.8630654   1.3157518
6-24 months   COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    2                    1                 1.1687226   0.9851981   1.3864343
6-24 months   COHORTS          PHILIPPINES                    3+                   1                 1.3759707   1.2010820   1.5763247
6-24 months   GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          2                    1                 0.8963001   0.6214879   1.2926300
6-24 months   GMS-Nepal        NEPAL                          3+                   1                 0.9621339   0.7346457   1.2600654
6-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     2                    1                 1.1878819   1.0172960   1.3870725
6-24 months   JiVitA-3         BANGLADESH                     3+                   1                 1.3987857   1.1875534   1.6475903
6-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         2                    1                 0.8457710   0.5135016   1.3930406
6-24 months   Keneba           GAMBIA                         3+                   1                 1.4132834   0.9800126   2.0381063
6-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     2                    1                 1.1964457   0.7794445   1.8365417
6-24 months   PROVIDE          BANGLADESH                     3+                   1                 1.0087017   0.6246563   1.6288622
6-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          2                    1                 1.5505129   1.1612930   2.0701841
6-24 months   SAS-CompFeed     INDIA                          3+                   1                 1.9356654   1.5429801   2.4282884
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.3527358   1.0030031   1.8244152
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.4271853   1.0758028   1.8933377
6-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 1.0606741   0.9150265   1.2295047
6-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 1.1053342   0.9551051   1.2791929


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                 0.0122740   -0.0634866    0.0880345
0-24 months   COHORTS          INDIA                          1                    NA                 0.0013998   -0.0428975    0.0456970
0-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.0884423    0.0437089    0.1331756
0-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0674331   -0.0350058    0.1698720
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0568834   -0.0735438   -0.0402230
0-24 months   Keneba           GAMBIA                         1                    NA                 0.1157425    0.0427195    0.1887656
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0090594   -0.0697889    0.0516701
0-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0613046    0.0100120    0.1125972
0-24 months   SAS-FoodSuppl    INDIA                          1                    NA                 0.4467988    0.2462717    0.6473259
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0118413   -0.0264178    0.0501004
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0004291   -0.0199179    0.0190596
0-6 months    COHORTS          GUATEMALA                      1                    NA                -0.1217925   -0.2334585   -0.0101264
0-6 months    COHORTS          INDIA                          1                    NA                -0.0372283   -0.0774725    0.0030158
0-6 months    COHORTS          PHILIPPINES                    1                    NA                -0.0132669   -0.0582999    0.0317661
0-6 months    GMS-Nepal        NEPAL                          1                    NA                -0.0442698   -0.1554015    0.0668618
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0840483   -0.1008649   -0.0672318
0-6 months    Keneba           GAMBIA                         1                    NA                 0.0618477    0.0074629    0.1162326
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0123060   -0.0747367    0.0501246
0-6 months    SAS-CompFeed     INDIA                          1                    NA                -0.0575640   -0.1362340    0.0211060
0-6 months    SAS-FoodSuppl    INDIA                          1                    NA                 0.0894231   -0.1074162    0.2862624
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0212210   -0.0533720    0.0109299
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0145848   -0.0324921    0.0033225
6-24 months   COHORTS          GUATEMALA                      1                    NA                 0.0033018   -0.0970192    0.1036227
6-24 months   COHORTS          INDIA                          1                    NA                 0.0117190   -0.0370960    0.0605340
6-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.1355942    0.0726327    0.1985557
6-24 months   GMS-Nepal        NEPAL                          1                    NA                -0.0314919   -0.1538309    0.0908470
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0332425    0.0114386    0.0550465
6-24 months   Keneba           GAMBIA                         1                    NA                 0.1013924   -0.0040857    0.2068705
6-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0350424   -0.0425434    0.1126281
6-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.1863274    0.1246047    0.2480501
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0412886    0.0024158    0.0801614
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0100198   -0.0152706    0.0353101


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                 0.0160660   -0.0882508    0.1103833
0-24 months   COHORTS          INDIA                          1                    NA                 0.0035786   -0.1163565    0.1106285
0-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.1288501    0.0610784    0.1917301
0-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.1055343   -0.0701252    0.2523596
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.1148424   -0.1490896   -0.0816159
0-24 months   Keneba           GAMBIA                         1                    NA                 0.2040103    0.0650079    0.3223476
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0207921   -0.1702406    0.1095708
0-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0886603    0.0137205    0.1579061
0-24 months   SAS-FoodSuppl    INDIA                          1                    NA                 0.5397743    0.2142753    0.7304301
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0341197   -0.0826344    0.1382826
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0010288   -0.0488601    0.0446211
0-6 months    COHORTS          GUATEMALA                      1                    NA                -0.3742975   -0.7660626   -0.0694375
0-6 months    COHORTS          INDIA                          1                    NA                -0.1956783   -0.4271999   -0.0017143
0-6 months    COHORTS          PHILIPPINES                    1                    NA                -0.0554995   -0.2618744    0.1171236
0-6 months    GMS-Nepal        NEPAL                          1                    NA                -0.1391908   -0.5476126    0.1614467
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.2035158   -0.2450683   -0.1633501
0-6 months    Keneba           GAMBIA                         1                    NA                 0.1972527    0.0059871    0.3517155
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0512752   -0.3465027    0.1792222
0-6 months    SAS-CompFeed     INDIA                          1                    NA                -0.1352887   -0.3366544    0.0357414
0-6 months    SAS-FoodSuppl    INDIA                          1                    NA                 0.2296296   -0.4847259    0.6002828
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1089716   -0.2870718    0.0444837
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0563818   -0.1279569    0.0106515
6-24 months   COHORTS          GUATEMALA                      1                    NA                 0.0043203   -0.1359885    0.1272992
6-24 months   COHORTS          INDIA                          1                    NA                 0.0433114   -0.1551824    0.2076982
6-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.2102305    0.1059728    0.3023301
6-24 months   GMS-Nepal        NEPAL                          1                    NA                -0.0558138   -0.2968598    0.1404291
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.1537302    0.0474732    0.2481340
6-24 months   Keneba           GAMBIA                         1                    NA                 0.2525560   -0.0613056    0.4735988
6-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.1166373   -0.1831545    0.3404669
6-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.3703769    0.2165570    0.4939960
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1813709   -0.0077021    0.3349686
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0381056   -0.0630258    0.1296158
