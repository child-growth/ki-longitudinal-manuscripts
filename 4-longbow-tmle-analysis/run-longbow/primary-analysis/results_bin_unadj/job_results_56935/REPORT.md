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
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
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




# Results Detail

## Results Plots
![](/tmp/2e9c37fd-7841-4baa-96d2-c3c1d1ba3b42/ca5d0fea-acea-4993-a228-f1645f47b45c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2e9c37fd-7841-4baa-96d2-c3c1d1ba3b42/ca5d0fea-acea-4993-a228-f1645f47b45c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2e9c37fd-7841-4baa-96d2-c3c1d1ba3b42/ca5d0fea-acea-4993-a228-f1645f47b45c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2e9c37fd-7841-4baa-96d2-c3c1d1ba3b42/ca5d0fea-acea-4993-a228-f1645f47b45c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS        GUATEMALA     1                    NA                0.1063830   0.0440119   0.1687541
Birth       COHORTS        GUATEMALA     2                    NA                0.0762712   0.0283479   0.1241945
Birth       COHORTS        GUATEMALA     3+                   NA                0.0753676   0.0531697   0.0975656
Birth       COHORTS        INDIA         1                    NA                0.0655226   0.0463644   0.0846809
Birth       COHORTS        INDIA         2                    NA                0.0417515   0.0292396   0.0542634
Birth       COHORTS        INDIA         3+                   NA                0.0421147   0.0337811   0.0504483
Birth       COHORTS        PHILIPPINES   1                    NA                0.0703125   0.0505010   0.0901240
Birth       COHORTS        PHILIPPINES   2                    NA                0.0395738   0.0246639   0.0544838
Birth       COHORTS        PHILIPPINES   3+                   NA                0.0312110   0.0226945   0.0397275
Birth       GMS-Nepal      NEPAL         1                    NA                0.0594595   0.0253558   0.0935631
Birth       GMS-Nepal      NEPAL         2                    NA                0.0532544   0.0193748   0.0871340
Birth       GMS-Nepal      NEPAL         3+                   NA                0.0243902   0.0065298   0.0422507
Birth       Keneba         GAMBIA        1                    NA                0.1027397   0.0534720   0.1520074
Birth       Keneba         GAMBIA        2                    NA                0.0633803   0.0232913   0.1034693
Birth       Keneba         GAMBIA        3+                   NA                0.0685714   0.0532795   0.0838634
Birth       SAS-CompFeed   INDIA         1                    NA                0.0493421   0.0195565   0.0791278
Birth       SAS-CompFeed   INDIA         2                    NA                0.0193798   0.0085871   0.0301725
Birth       SAS-CompFeed   INDIA         3+                   NA                0.0166359   0.0036649   0.0296069
Birth       ZVITAMBO       ZIMBABWE      1                    NA                0.0731883   0.0663428   0.0800338
Birth       ZVITAMBO       ZIMBABWE      2                    NA                0.0543534   0.0472214   0.0614855
Birth       ZVITAMBO       ZIMBABWE      3+                   NA                0.0501008   0.0428452   0.0573564
6 months    COHORTS        INDIA         1                    NA                0.0256410   0.0142591   0.0370230
6 months    COHORTS        INDIA         2                    NA                0.0182983   0.0103516   0.0262449
6 months    COHORTS        INDIA         3+                   NA                0.0387597   0.0311172   0.0464022
6 months    SAS-CompFeed   INDIA         1                    NA                0.0280612   0.0140579   0.0420646
6 months    SAS-CompFeed   INDIA         2                    NA                0.0298013   0.0154373   0.0441654
6 months    SAS-CompFeed   INDIA         3+                   NA                0.0359375   0.0218263   0.0500487
6 months    ZVITAMBO       ZIMBABWE      1                    NA                0.0058962   0.0033196   0.0084728
6 months    ZVITAMBO       ZIMBABWE      2                    NA                0.0115964   0.0074707   0.0157222
6 months    ZVITAMBO       ZIMBABWE      3+                   NA                0.0114851   0.0073289   0.0156414
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
Birth       Keneba         GAMBIA        NA                   NA                0.0717489   0.0579157   0.0855821
Birth       SAS-CompFeed   INDIA         NA                   NA                0.0262919   0.0122874   0.0402964
Birth       ZVITAMBO       ZIMBABWE      NA                   NA                0.0613193   0.0571816   0.0654570
6 months    COHORTS        INDIA         NA                   NA                0.0312719   0.0260599   0.0364838
6 months    SAS-CompFeed   INDIA         NA                   NA                0.0322339   0.0235219   0.0409459
6 months    ZVITAMBO       ZIMBABWE      NA                   NA                0.0092897   0.0072507   0.0113288
24 months   ZVITAMBO       ZIMBABWE      NA                   NA                0.0717593   0.0473936   0.0961250


### Parameter: RR


agecat      studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS        GUATEMALA     1                    1                 1.0000000   1.0000000   1.0000000
Birth       COHORTS        GUATEMALA     2                    1                 0.7169492   0.3035745   1.6932122
Birth       COHORTS        GUATEMALA     3+                   1                 0.7084559   0.3675932   1.3653943
Birth       COHORTS        INDIA         1                    1                 1.0000000   1.0000000   1.0000000
Birth       COHORTS        INDIA         2                    1                 0.6372078   0.4192258   0.9685325
Birth       COHORTS        INDIA         3+                   1                 0.6427505   0.4515567   0.9148976
Birth       COHORTS        PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
Birth       COHORTS        PHILIPPINES   2                    1                 0.5628277   0.3516036   0.9009436
Birth       COHORTS        PHILIPPINES   3+                   1                 0.4438896   0.2998677   0.6570829
Birth       GMS-Nepal      NEPAL         1                    1                 1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal      NEPAL         2                    1                 0.8956428   0.3803066   2.1092877
Birth       GMS-Nepal      NEPAL         3+                   1                 0.4101996   0.1618193   1.0398242
Birth       Keneba         GAMBIA        1                    1                 1.0000000   1.0000000   1.0000000
Birth       Keneba         GAMBIA        2                    1                 0.6169014   0.2789306   1.3643800
Birth       Keneba         GAMBIA        3+                   1                 0.6674286   0.3933010   1.1326209
Birth       SAS-CompFeed   INDIA         1                    1                 1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed   INDIA         2                    1                 0.3927649   0.2076508   0.7429023
Birth       SAS-CompFeed   INDIA         3+                   1                 0.3371534   0.1521067   0.7473204
Birth       ZVITAMBO       ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO       ZIMBABWE      2                    1                 0.7426521   0.6321253   0.8725044
Birth       ZVITAMBO       ZIMBABWE      3+                   1                 0.6845465   0.5761442   0.8133448
6 months    COHORTS        INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    COHORTS        INDIA         2                    1                 0.7136322   0.3835092   1.3279238
6 months    COHORTS        INDIA         3+                   1                 1.5116279   0.9300370   2.4569119
6 months    SAS-CompFeed   INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed   INDIA         2                    1                 1.0620108   0.6052683   1.8634168
6 months    SAS-CompFeed   INDIA         3+                   1                 1.2806818   0.6228782   2.6331726
6 months    ZVITAMBO       ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO       ZIMBABWE      2                    1                 1.9667569   1.1194950   3.4552476
6 months    ZVITAMBO       ZIMBABWE      3+                   1                 1.9478812   1.1044653   3.4353646
24 months   ZVITAMBO       ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
24 months   ZVITAMBO       ZIMBABWE      2                    1                 0.8329638   0.3322286   2.0884073
24 months   ZVITAMBO       ZIMBABWE      3+                   1                 1.2856265   0.5939568   2.7827538


### Parameter: PAR


agecat      studyid        country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS        GUATEMALA     1                    NA                -0.0270179   -0.0844158    0.0303800
Birth       COHORTS        INDIA         1                    NA                -0.0196082   -0.0365977   -0.0026188
Birth       COHORTS        PHILIPPINES   1                    NA                -0.0285740   -0.0450729   -0.0120751
Birth       GMS-Nepal      NEPAL         1                    NA                -0.0173378   -0.0444282    0.0097526
Birth       Keneba         GAMBIA        1                    NA                -0.0309908   -0.0766958    0.0147141
Birth       SAS-CompFeed   INDIA         1                    NA                -0.0230502   -0.0425694   -0.0035310
Birth       ZVITAMBO       ZIMBABWE      1                    NA                -0.0118690   -0.0167300   -0.0070080
6 months    COHORTS        INDIA         1                    NA                 0.0056309   -0.0049478    0.0162095
6 months    SAS-CompFeed   INDIA         1                    NA                 0.0041727   -0.0094235    0.0177689
6 months    ZVITAMBO       ZIMBABWE      1                    NA                 0.0033935    0.0010482    0.0057389
24 months   ZVITAMBO       ZIMBABWE      1                    NA                 0.0034363   -0.0278897    0.0347623


### Parameter: PAF


agecat      studyid        country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS        GUATEMALA     1                    NA                -0.3404255   -1.2928794    0.2163824
Birth       COHORTS        INDIA         1                    NA                -0.4270605   -0.8437543   -0.1045406
Birth       COHORTS        PHILIPPINES   1                    NA                -0.6845945   -1.1103485   -0.3447346
Birth       GMS-Nepal      NEPAL         1                    NA                -0.4116116   -1.2013007    0.0947864
Birth       Keneba         GAMBIA        1                    NA                -0.4319349   -1.2275847    0.0795243
Birth       SAS-CompFeed   INDIA         1                    NA                -0.8767015   -1.6019224   -0.3536177
Birth       ZVITAMBO       ZIMBABWE      1                    NA                -0.1935603   -0.2745500   -0.1177170
6 months    COHORTS        INDIA         1                    NA                 0.1800612   -0.2367681    0.4564061
6 months    SAS-CompFeed   INDIA         1                    NA                 0.1294495   -0.4000328    0.4586853
6 months    ZVITAMBO       ZIMBABWE      1                    NA                 0.3652973    0.0742670    0.5648341
24 months   ZVITAMBO       ZIMBABWE      1                    NA                 0.0478862   -0.5055473    0.3978796
