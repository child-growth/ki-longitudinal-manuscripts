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

agecat      studyid          country                        parity    swasted   n_cell       n
----------  ---------------  -----------------------------  -------  --------  -------  ------
Birth       COHORTS          GUATEMALA                      1               0       84     756
Birth       COHORTS          GUATEMALA                      1               1       10     756
Birth       COHORTS          GUATEMALA                      2               0      109     756
Birth       COHORTS          GUATEMALA                      2               1        9     756
Birth       COHORTS          GUATEMALA                      3+              0      503     756
Birth       COHORTS          GUATEMALA                      3+              1       41     756
Birth       COHORTS          INDIA                          1               0      599    3855
Birth       COHORTS          INDIA                          1               1       42    3855
Birth       COHORTS          INDIA                          2               0      941    3855
Birth       COHORTS          INDIA                          2               1       41    3855
Birth       COHORTS          INDIA                          3+              0     2138    3855
Birth       COHORTS          INDIA                          3+              1       94    3855
Birth       COHORTS          PHILIPPINES                    1               0      595    2899
Birth       COHORTS          PHILIPPINES                    1               1       45    2899
Birth       COHORTS          PHILIPPINES                    2               0      631    2899
Birth       COHORTS          PHILIPPINES                    2               1       26    2899
Birth       COHORTS          PHILIPPINES                    3+              0     1552    2899
Birth       COHORTS          PHILIPPINES                    3+              1       50    2899
Birth       GMS-Nepal        NEPAL                          1               0      174     641
Birth       GMS-Nepal        NEPAL                          1               1       11     641
Birth       GMS-Nepal        NEPAL                          2               0      160     641
Birth       GMS-Nepal        NEPAL                          2               1        9     641
Birth       GMS-Nepal        NEPAL                          3+              0      280     641
Birth       GMS-Nepal        NEPAL                          3+              1        7     641
Birth       JiVitA-3         BANGLADESH                     1               0     5387   18014
Birth       JiVitA-3         BANGLADESH                     1               1      133   18014
Birth       JiVitA-3         BANGLADESH                     2               0     6193   18014
Birth       JiVitA-3         BANGLADESH                     2               1      110   18014
Birth       JiVitA-3         BANGLADESH                     3+              0     6085   18014
Birth       JiVitA-3         BANGLADESH                     3+              1      106   18014
Birth       Keneba           GAMBIA                         1               0      131    1338
Birth       Keneba           GAMBIA                         1               1       15    1338
Birth       Keneba           GAMBIA                         2               0      133    1338
Birth       Keneba           GAMBIA                         2               1        9    1338
Birth       Keneba           GAMBIA                         3+              0      978    1338
Birth       Keneba           GAMBIA                         3+              1       72    1338
Birth       PROVIDE          BANGLADESH                     1               0      194     532
Birth       PROVIDE          BANGLADESH                     1               1        8     532
Birth       PROVIDE          BANGLADESH                     2               0      180     532
Birth       PROVIDE          BANGLADESH                     2               1        2     532
Birth       PROVIDE          BANGLADESH                     3+              0      145     532
Birth       PROVIDE          BANGLADESH                     3+              1        3     532
Birth       SAS-CompFeed     INDIA                          1               0      289    1103
Birth       SAS-CompFeed     INDIA                          1               1       15    1103
Birth       SAS-CompFeed     INDIA                          2               0      253    1103
Birth       SAS-CompFeed     INDIA                          2               1        5    1103
Birth       SAS-CompFeed     INDIA                          3+              0      532    1103
Birth       SAS-CompFeed     INDIA                          3+              1        9    1103
Birth       ZVITAMBO         ZIMBABWE                       1               0     5154   12916
Birth       ZVITAMBO         ZIMBABWE                       1               1      407   12916
Birth       ZVITAMBO         ZIMBABWE                       2               0     3671   12916
Birth       ZVITAMBO         ZIMBABWE                       2               1      211   12916
Birth       ZVITAMBO         ZIMBABWE                       3+              0     3299   12916
Birth       ZVITAMBO         ZIMBABWE                       3+              1      174   12916
6 months    COHORTS          GUATEMALA                      1               0      131     963
6 months    COHORTS          GUATEMALA                      1               1        1     963
6 months    COHORTS          GUATEMALA                      2               0      138     963
6 months    COHORTS          GUATEMALA                      2               1        1     963
6 months    COHORTS          GUATEMALA                      3+              0      688     963
6 months    COHORTS          GUATEMALA                      3+              1        4     963
6 months    COHORTS          INDIA                          1               0      722    4285
6 months    COHORTS          INDIA                          1               1       19    4285
6 months    COHORTS          INDIA                          2               0     1073    4285
6 months    COHORTS          INDIA                          2               1       20    4285
6 months    COHORTS          INDIA                          3+              0     2356    4285
6 months    COHORTS          INDIA                          3+              1       95    4285
6 months    COHORTS          PHILIPPINES                    1               0      569    2706
6 months    COHORTS          PHILIPPINES                    1               1        5    2706
6 months    COHORTS          PHILIPPINES                    2               0      605    2706
6 months    COHORTS          PHILIPPINES                    2               1        2    2706
6 months    COHORTS          PHILIPPINES                    3+              0     1497    2706
6 months    COHORTS          PHILIPPINES                    3+              1       28    2706
6 months    GMS-Nepal        NEPAL                          1               0      153     564
6 months    GMS-Nepal        NEPAL                          1               1        0     564
6 months    GMS-Nepal        NEPAL                          2               0      144     564
6 months    GMS-Nepal        NEPAL                          2               1        5     564
6 months    GMS-Nepal        NEPAL                          3+              0      260     564
6 months    GMS-Nepal        NEPAL                          3+              1        2     564
6 months    JiVitA-3         BANGLADESH                     1               0     6305   16784
6 months    JiVitA-3         BANGLADESH                     1               1       93   16784
6 months    JiVitA-3         BANGLADESH                     2               0     5611   16784
6 months    JiVitA-3         BANGLADESH                     2               1       74   16784
6 months    JiVitA-3         BANGLADESH                     3+              0     4638   16784
6 months    JiVitA-3         BANGLADESH                     3+              1       63   16784
6 months    Keneba           GAMBIA                         1               0      192    1623
6 months    Keneba           GAMBIA                         1               1        3    1623
6 months    Keneba           GAMBIA                         2               0      163    1623
6 months    Keneba           GAMBIA                         2               1        1    1623
6 months    Keneba           GAMBIA                         3+              0     1242    1623
6 months    Keneba           GAMBIA                         3+              1       22    1623
6 months    PROVIDE          BANGLADESH                     1               0      215     603
6 months    PROVIDE          BANGLADESH                     1               1        3     603
6 months    PROVIDE          BANGLADESH                     2               0      222     603
6 months    PROVIDE          BANGLADESH                     2               1        0     603
6 months    PROVIDE          BANGLADESH                     3+              0      161     603
6 months    PROVIDE          BANGLADESH                     3+              1        2     603
6 months    SAS-CompFeed     INDIA                          1               0      381    1334
6 months    SAS-CompFeed     INDIA                          1               1       11    1334
6 months    SAS-CompFeed     INDIA                          2               0      293    1334
6 months    SAS-CompFeed     INDIA                          2               1        9    1334
6 months    SAS-CompFeed     INDIA                          3+              0      617    1334
6 months    SAS-CompFeed     INDIA                          3+              1       23    1334
6 months    SAS-FoodSuppl    INDIA                          1               0        6     380
6 months    SAS-FoodSuppl    INDIA                          1               1        1     380
6 months    SAS-FoodSuppl    INDIA                          2               0       72     380
6 months    SAS-FoodSuppl    INDIA                          2               1        0     380
6 months    SAS-FoodSuppl    INDIA                          3+              0      283     380
6 months    SAS-FoodSuppl    INDIA                          3+              1       18     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      674    1994
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        5    1994
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      653    1994
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        4    1994
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0      655    1994
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1        3    1994
6 months    ZVITAMBO         ZIMBABWE                       1               0     3372    8504
6 months    ZVITAMBO         ZIMBABWE                       1               1       20    8504
6 months    ZVITAMBO         ZIMBABWE                       2               0     2557    8504
6 months    ZVITAMBO         ZIMBABWE                       2               1       30    8504
6 months    ZVITAMBO         ZIMBABWE                       3+              0     2496    8504
6 months    ZVITAMBO         ZIMBABWE                       3+              1       29    8504
24 months   COHORTS          GUATEMALA                      1               0      167    1076
24 months   COHORTS          GUATEMALA                      1               1        0    1076
24 months   COHORTS          GUATEMALA                      2               0      151    1076
24 months   COHORTS          GUATEMALA                      2               1        0    1076
24 months   COHORTS          GUATEMALA                      3+              0      754    1076
24 months   COHORTS          GUATEMALA                      3+              1        4    1076
24 months   COHORTS          INDIA                          1               0      558    3354
24 months   COHORTS          INDIA                          1               1        3    3354
24 months   COHORTS          INDIA                          2               0      831    3354
24 months   COHORTS          INDIA                          2               1        6    3354
24 months   COHORTS          INDIA                          3+              0     1929    3354
24 months   COHORTS          INDIA                          3+              1       27    3354
24 months   COHORTS          PHILIPPINES                    1               0      520    2449
24 months   COHORTS          PHILIPPINES                    1               1        3    2449
24 months   COHORTS          PHILIPPINES                    2               0      540    2449
24 months   COHORTS          PHILIPPINES                    2               1        4    2449
24 months   COHORTS          PHILIPPINES                    3+              0     1364    2449
24 months   COHORTS          PHILIPPINES                    3+              1       18    2449
24 months   GMS-Nepal        NEPAL                          1               0      126     487
24 months   GMS-Nepal        NEPAL                          1               1        4     487
24 months   GMS-Nepal        NEPAL                          2               0      125     487
24 months   GMS-Nepal        NEPAL                          2               1        5     487
24 months   GMS-Nepal        NEPAL                          3+              0      221     487
24 months   GMS-Nepal        NEPAL                          3+              1        6     487
24 months   JiVitA-3         BANGLADESH                     1               0     3051    8603
24 months   JiVitA-3         BANGLADESH                     1               1      115    8603
24 months   JiVitA-3         BANGLADESH                     2               0     2786    8603
24 months   JiVitA-3         BANGLADESH                     2               1      123    8603
24 months   JiVitA-3         BANGLADESH                     3+              0     2431    8603
24 months   JiVitA-3         BANGLADESH                     3+              1       97    8603
24 months   Keneba           GAMBIA                         1               0      137    1376
24 months   Keneba           GAMBIA                         1               1        0    1376
24 months   Keneba           GAMBIA                         2               0      137    1376
24 months   Keneba           GAMBIA                         2               1        2    1376
24 months   Keneba           GAMBIA                         3+              0     1080    1376
24 months   Keneba           GAMBIA                         3+              1       20    1376
24 months   PROVIDE          BANGLADESH                     1               0      209     579
24 months   PROVIDE          BANGLADESH                     1               1        2     579
24 months   PROVIDE          BANGLADESH                     2               0      210     579
24 months   PROVIDE          BANGLADESH                     2               1        3     579
24 months   PROVIDE          BANGLADESH                     3+              0      151     579
24 months   PROVIDE          BANGLADESH                     3+              1        4     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0        4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1        0       6
24 months   ZVITAMBO         ZIMBABWE                       1               0      150     432
24 months   ZVITAMBO         ZIMBABWE                       1               1       11     432
24 months   ZVITAMBO         ZIMBABWE                       2               0      116     432
24 months   ZVITAMBO         ZIMBABWE                       2               1        7     432
24 months   ZVITAMBO         ZIMBABWE                       3+              0      135     432
24 months   ZVITAMBO         ZIMBABWE                       3+              1       13     432


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/1095f234-abc6-495b-81e3-05565b0d71b5/a1d7804e-fc15-4dfe-ad9f-67f74c048721/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1095f234-abc6-495b-81e3-05565b0d71b5/a1d7804e-fc15-4dfe-ad9f-67f74c048721/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1095f234-abc6-495b-81e3-05565b0d71b5/a1d7804e-fc15-4dfe-ad9f-67f74c048721/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1095f234-abc6-495b-81e3-05565b0d71b5/a1d7804e-fc15-4dfe-ad9f-67f74c048721/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS        GUATEMALA     1                    NA                0.1063830   0.0440119   0.1687541
Birth       COHORTS        GUATEMALA     2                    NA                0.0762712   0.0283479   0.1241945
Birth       COHORTS        GUATEMALA     3+                   NA                0.0753676   0.0531697   0.0975656
Birth       COHORTS        INDIA         1                    NA                0.0774827   0.0504047   0.1045606
Birth       COHORTS        INDIA         2                    NA                0.0427548   0.0271947   0.0583149
Birth       COHORTS        INDIA         3+                   NA                0.0392332   0.0305067   0.0479597
Birth       COHORTS        PHILIPPINES   1                    NA                0.0804922   0.0459330   0.1150514
Birth       COHORTS        PHILIPPINES   2                    NA                0.0439682   0.0125641   0.0753724
Birth       COHORTS        PHILIPPINES   3+                   NA                0.0263022   0.0185223   0.0340821
Birth       GMS-Nepal      NEPAL         1                    NA                0.0594595   0.0253558   0.0935631
Birth       GMS-Nepal      NEPAL         2                    NA                0.0532544   0.0193748   0.0871340
Birth       GMS-Nepal      NEPAL         3+                   NA                0.0243902   0.0065298   0.0422507
Birth       JiVitA-3       BANGLADESH    1                    NA                0.0262478   0.0195117   0.0329840
Birth       JiVitA-3       BANGLADESH    2                    NA                0.0178587   0.0096089   0.0261085
Birth       JiVitA-3       BANGLADESH    3+                   NA                0.0239245   0.0162943   0.0315548
Birth       Keneba         GAMBIA        1                    NA                0.1027397   0.0534720   0.1520074
Birth       Keneba         GAMBIA        2                    NA                0.0633803   0.0232913   0.1034693
Birth       Keneba         GAMBIA        3+                   NA                0.0685714   0.0532795   0.0838634
Birth       SAS-CompFeed   INDIA         1                    NA                0.0493421   0.0195565   0.0791278
Birth       SAS-CompFeed   INDIA         2                    NA                0.0193798   0.0085871   0.0301725
Birth       SAS-CompFeed   INDIA         3+                   NA                0.0166359   0.0036649   0.0296069
Birth       ZVITAMBO       ZIMBABWE      1                    NA                0.0726002   0.0622513   0.0829491
Birth       ZVITAMBO       ZIMBABWE      2                    NA                0.0590342   0.0465959   0.0714725
Birth       ZVITAMBO       ZIMBABWE      3+                   NA                0.0453938   0.0347177   0.0560700
6 months    COHORTS        INDIA         1                    NA                0.0272059   0.0148072   0.0396045
6 months    COHORTS        INDIA         2                    NA                0.0205921   0.0114080   0.0297762
6 months    COHORTS        INDIA         3+                   NA                0.0377972   0.0300069   0.0455875
6 months    JiVitA-3       BANGLADESH    1                    NA                0.0174159   0.0098955   0.0249363
6 months    JiVitA-3       BANGLADESH    2                    NA                0.0121008   0.0081240   0.0160777
6 months    JiVitA-3       BANGLADESH    3+                   NA                0.0067805   0.0044536   0.0091075
6 months    SAS-CompFeed   INDIA         1                    NA                0.0280612   0.0140579   0.0420646
6 months    SAS-CompFeed   INDIA         2                    NA                0.0298013   0.0154373   0.0441654
6 months    SAS-CompFeed   INDIA         3+                   NA                0.0359375   0.0218263   0.0500487
6 months    ZVITAMBO       ZIMBABWE      1                    NA                0.0051060   0.0023395   0.0078724
6 months    ZVITAMBO       ZIMBABWE      2                    NA                0.0125915   0.0069515   0.0182316
6 months    ZVITAMBO       ZIMBABWE      3+                   NA                0.0085456   0.0049471   0.0121442
24 months   JiVitA-3       BANGLADESH    1                    NA                0.0283820   0.0211276   0.0356365
24 months   JiVitA-3       BANGLADESH    2                    NA                0.0416945   0.0279619   0.0554271
24 months   JiVitA-3       BANGLADESH    3+                   NA                0.0388691   0.0247564   0.0529817
24 months   ZVITAMBO       ZIMBABWE      1                    NA                0.0683230   0.0293059   0.1073400
24 months   ZVITAMBO       ZIMBABWE      2                    NA                0.0569106   0.0159212   0.0979000
24 months   ZVITAMBO       ZIMBABWE      3+                   NA                0.0878378   0.0421819   0.1334938


### Parameter: E(Y)


agecat      studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS        GUATEMALA     NA                   NA                0.0793651   0.0600839   0.0986462
Birth       COHORTS        INDIA         NA                   NA                0.0459144   0.0393065   0.0525222
Birth       COHORTS        PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       GMS-Nepal      NEPAL         NA                   NA                0.0421217   0.0265597   0.0576837
Birth       JiVitA-3       BANGLADESH    NA                   NA                0.0193738   0.0169653   0.0217823
Birth       Keneba         GAMBIA        NA                   NA                0.0717489   0.0579157   0.0855821
Birth       SAS-CompFeed   INDIA         NA                   NA                0.0262919   0.0122874   0.0402964
Birth       ZVITAMBO       ZIMBABWE      NA                   NA                0.0613193   0.0571816   0.0654570
6 months    COHORTS        INDIA         NA                   NA                0.0312719   0.0260599   0.0364838
6 months    JiVitA-3       BANGLADESH    NA                   NA                0.0137035   0.0116269   0.0157801
6 months    SAS-CompFeed   INDIA         NA                   NA                0.0322339   0.0235219   0.0409459
6 months    ZVITAMBO       ZIMBABWE      NA                   NA                0.0092897   0.0072507   0.0113288
24 months   JiVitA-3       BANGLADESH    NA                   NA                0.0389399   0.0346167   0.0432631
24 months   ZVITAMBO       ZIMBABWE      NA                   NA                0.0717593   0.0473936   0.0961250


### Parameter: RR


agecat      studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS        GUATEMALA     1                    1                 1.0000000   1.0000000   1.0000000
Birth       COHORTS        GUATEMALA     2                    1                 0.7169492   0.3035745   1.6932122
Birth       COHORTS        GUATEMALA     3+                   1                 0.7084559   0.3675932   1.3653943
Birth       COHORTS        INDIA         1                    1                 1.0000000   1.0000000   1.0000000
Birth       COHORTS        INDIA         2                    1                 0.5517981   0.3331962   0.9138194
Birth       COHORTS        INDIA         3+                   1                 0.5063482   0.3347379   0.7659381
Birth       COHORTS        PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
Birth       COHORTS        PHILIPPINES   2                    1                 0.5462422   0.2374363   1.2566761
Birth       COHORTS        PHILIPPINES   3+                   1                 0.3267674   0.1940037   0.5503861
Birth       GMS-Nepal      NEPAL         1                    1                 1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal      NEPAL         2                    1                 0.8956428   0.3803066   2.1092877
Birth       GMS-Nepal      NEPAL         3+                   1                 0.4101996   0.1618193   1.0398242
Birth       JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-3       BANGLADESH    2                    1                 0.6803871   0.3996932   1.1582048
Birth       JiVitA-3       BANGLADESH    3+                   1                 0.9114858   0.6052792   1.3726001
Birth       Keneba         GAMBIA        1                    1                 1.0000000   1.0000000   1.0000000
Birth       Keneba         GAMBIA        2                    1                 0.6169014   0.2789306   1.3643800
Birth       Keneba         GAMBIA        3+                   1                 0.6674286   0.3933010   1.1326209
Birth       SAS-CompFeed   INDIA         1                    1                 1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed   INDIA         2                    1                 0.3927649   0.2076508   0.7429023
Birth       SAS-CompFeed   INDIA         3+                   1                 0.3371534   0.1521067   0.7473204
Birth       ZVITAMBO       ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO       ZIMBABWE      2                    1                 0.8131411   0.6304865   1.0487114
Birth       ZVITAMBO       ZIMBABWE      3+                   1                 0.6252573   0.4749172   0.8231892
6 months    COHORTS        INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    COHORTS        INDIA         2                    1                 0.7568986   0.4000397   1.4320967
6 months    COHORTS        INDIA         3+                   1                 1.3893024   0.8424936   2.2910099
6 months    JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-3       BANGLADESH    2                    1                 0.6948155   0.4141452   1.1656989
6 months    JiVitA-3       BANGLADESH    3+                   1                 0.3893310   0.2252996   0.6727871
6 months    SAS-CompFeed   INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed   INDIA         2                    1                 1.0620108   0.6052683   1.8634168
6 months    SAS-CompFeed   INDIA         3+                   1                 1.2806818   0.6228782   2.6331726
6 months    ZVITAMBO       ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO       ZIMBABWE      2                    1                 2.4660478   1.2206972   4.9819002
6 months    ZVITAMBO       ZIMBABWE      3+                   1                 1.6736564   0.8426321   3.3242570
24 months   JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-3       BANGLADESH    2                    1                 1.4690464   0.9717144   2.2209172
24 months   JiVitA-3       BANGLADESH    3+                   1                 1.3694956   0.8720465   2.1507089
24 months   ZVITAMBO       ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
24 months   ZVITAMBO       ZIMBABWE      2                    1                 0.8329638   0.3322286   2.0884073
24 months   ZVITAMBO       ZIMBABWE      3+                   1                 1.2856265   0.5939568   2.7827538


### Parameter: PAR


agecat      studyid        country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS        GUATEMALA     1                    NA                -0.0270179   -0.0844158    0.0303800
Birth       COHORTS        INDIA         1                    NA                -0.0315683   -0.0570269   -0.0061096
Birth       COHORTS        PHILIPPINES   1                    NA                -0.0387537   -0.0713171   -0.0061902
Birth       GMS-Nepal      NEPAL         1                    NA                -0.0173378   -0.0444282    0.0097526
Birth       JiVitA-3       BANGLADESH    1                    NA                -0.0068740   -0.0131586   -0.0005894
Birth       Keneba         GAMBIA        1                    NA                -0.0309908   -0.0766958    0.0147141
Birth       SAS-CompFeed   INDIA         1                    NA                -0.0230502   -0.0425694   -0.0035310
Birth       ZVITAMBO       ZIMBABWE      1                    NA                -0.0112809   -0.0205697   -0.0019922
6 months    COHORTS        INDIA         1                    NA                 0.0040660   -0.0075016    0.0156336
6 months    JiVitA-3       BANGLADESH    1                    NA                -0.0037124   -0.0106946    0.0032699
6 months    SAS-CompFeed   INDIA         1                    NA                 0.0041727   -0.0094235    0.0177689
6 months    ZVITAMBO       ZIMBABWE      1                    NA                 0.0041838    0.0014879    0.0068797
24 months   JiVitA-3       BANGLADESH    1                    NA                 0.0105579    0.0036825    0.0174332
24 months   ZVITAMBO       ZIMBABWE      1                    NA                 0.0034363   -0.0278897    0.0347623


### Parameter: PAF


agecat      studyid        country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS        GUATEMALA     1                    NA                -0.3404255   -1.2928794    0.2163824
Birth       COHORTS        INDIA         1                    NA                -0.6875461   -1.3393136   -0.2173707
Birth       COHORTS        PHILIPPINES   1                    NA                -0.9284863   -1.8737903   -0.2941304
Birth       GMS-Nepal      NEPAL         1                    NA                -0.4116116   -1.2013007    0.0947864
Birth       JiVitA-3       BANGLADESH    1                    NA                -0.3548092   -0.7249744   -0.0640784
Birth       Keneba         GAMBIA        1                    NA                -0.4319349   -1.2275847    0.0795243
Birth       SAS-CompFeed   INDIA         1                    NA                -0.8767015   -1.6019224   -0.3536177
Birth       ZVITAMBO       ZIMBABWE      1                    NA                -0.1839701   -0.3454687   -0.0418564
6 months    COHORTS        INDIA         1                    NA                 0.1300209   -0.3299403    0.4309041
6 months    JiVitA-3       BANGLADESH    1                    NA                -0.2709048   -0.8927804    0.1466527
6 months    SAS-CompFeed   INDIA         1                    NA                 0.1294495   -0.4000328    0.4586853
6 months    ZVITAMBO       ZIMBABWE      1                    NA                 0.4503658    0.0974859    0.6652709
24 months   JiVitA-3       BANGLADESH    1                    NA                 0.2711327    0.0767296    0.4246023
24 months   ZVITAMBO       ZIMBABWE      1                    NA                 0.0478862   -0.5055473    0.3978796
