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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        parity    stunted   n_cell       n
----------  ---------------  -----------------------------  -------  --------  -------  ------
Birth       COHORTS          GUATEMALA                      1               0      103     852
Birth       COHORTS          GUATEMALA                      1               1        9     852
Birth       COHORTS          GUATEMALA                      2               0      124     852
Birth       COHORTS          GUATEMALA                      2               1       13     852
Birth       COHORTS          GUATEMALA                      3+              0      575     852
Birth       COHORTS          GUATEMALA                      3+              1       28     852
Birth       COHORTS          INDIA                          1               0      582    4122
Birth       COHORTS          INDIA                          1               1      114    4122
Birth       COHORTS          INDIA                          2               0      939    4122
Birth       COHORTS          INDIA                          2               1       98    4122
Birth       COHORTS          INDIA                          3+              0     2126    4122
Birth       COHORTS          INDIA                          3+              1      263    4122
Birth       COHORTS          PHILIPPINES                    1               0      629    3050
Birth       COHORTS          PHILIPPINES                    1               1       46    3050
Birth       COHORTS          PHILIPPINES                    2               0      645    3050
Birth       COHORTS          PHILIPPINES                    2               1       42    3050
Birth       COHORTS          PHILIPPINES                    3+              0     1589    3050
Birth       COHORTS          PHILIPPINES                    3+              1       99    3050
Birth       GMS-Nepal        NEPAL                          1               0      158     696
Birth       GMS-Nepal        NEPAL                          1               1       53     696
Birth       GMS-Nepal        NEPAL                          2               0      152     696
Birth       GMS-Nepal        NEPAL                          2               1       28     696
Birth       GMS-Nepal        NEPAL                          3+              0      264     696
Birth       GMS-Nepal        NEPAL                          3+              1       41     696
Birth       Keneba           GAMBIA                         1               0      140    1407
Birth       Keneba           GAMBIA                         1               1       16    1407
Birth       Keneba           GAMBIA                         2               0      138    1407
Birth       Keneba           GAMBIA                         2               1        8    1407
Birth       Keneba           GAMBIA                         3+              0     1054    1407
Birth       Keneba           GAMBIA                         3+              1       51    1407
Birth       PROVIDE          BANGLADESH                     1               0      186     539
Birth       PROVIDE          BANGLADESH                     1               1       20     539
Birth       PROVIDE          BANGLADESH                     2               0      167     539
Birth       PROVIDE          BANGLADESH                     2               1       16     539
Birth       PROVIDE          BANGLADESH                     3+              0      138     539
Birth       PROVIDE          BANGLADESH                     3+              1       12     539
Birth       SAS-CompFeed     INDIA                          1               0      238    1252
Birth       SAS-CompFeed     INDIA                          1               1      123    1252
Birth       SAS-CompFeed     INDIA                          2               0      215    1252
Birth       SAS-CompFeed     INDIA                          2               1       74    1252
Birth       SAS-CompFeed     INDIA                          3+              0      450    1252
Birth       SAS-CompFeed     INDIA                          3+              1      152    1252
Birth       ZVITAMBO         ZIMBABWE                       1               0     5349   13874
Birth       ZVITAMBO         ZIMBABWE                       1               1      640   13874
Birth       ZVITAMBO         ZIMBABWE                       2               0     3735   13874
Birth       ZVITAMBO         ZIMBABWE                       2               1      409   13874
Birth       ZVITAMBO         ZIMBABWE                       3+              0     3356   13874
Birth       ZVITAMBO         ZIMBABWE                       3+              1      385   13874
6 months    COHORTS          GUATEMALA                      1               0       78     961
6 months    COHORTS          GUATEMALA                      1               1       54     961
6 months    COHORTS          GUATEMALA                      2               0       88     961
6 months    COHORTS          GUATEMALA                      2               1       51     961
6 months    COHORTS          GUATEMALA                      3+              0      401     961
6 months    COHORTS          GUATEMALA                      3+              1      289     961
6 months    COHORTS          INDIA                          1               0      616    4291
6 months    COHORTS          INDIA                          1               1      124    4291
6 months    COHORTS          INDIA                          2               0      925    4291
6 months    COHORTS          INDIA                          2               1      171    4291
6 months    COHORTS          INDIA                          3+              0     1910    4291
6 months    COHORTS          INDIA                          3+              1      545    4291
6 months    COHORTS          PHILIPPINES                    1               0      474    2708
6 months    COHORTS          PHILIPPINES                    1               1      100    2708
6 months    COHORTS          PHILIPPINES                    2               0      497    2708
6 months    COHORTS          PHILIPPINES                    2               1      109    2708
6 months    COHORTS          PHILIPPINES                    3+              0     1165    2708
6 months    COHORTS          PHILIPPINES                    3+              1      363    2708
6 months    GMS-Nepal        NEPAL                          1               0      117     564
6 months    GMS-Nepal        NEPAL                          1               1       36     564
6 months    GMS-Nepal        NEPAL                          2               0      120     564
6 months    GMS-Nepal        NEPAL                          2               1       29     564
6 months    GMS-Nepal        NEPAL                          3+              0      205     564
6 months    GMS-Nepal        NEPAL                          3+              1       57     564
6 months    Keneba           GAMBIA                         1               0      175    1623
6 months    Keneba           GAMBIA                         1               1       19    1623
6 months    Keneba           GAMBIA                         2               0      150    1623
6 months    Keneba           GAMBIA                         2               1       14    1623
6 months    Keneba           GAMBIA                         3+              0     1071    1623
6 months    Keneba           GAMBIA                         3+              1      194    1623
6 months    PROVIDE          BANGLADESH                     1               0      176     604
6 months    PROVIDE          BANGLADESH                     1               1       42     604
6 months    PROVIDE          BANGLADESH                     2               0      188     604
6 months    PROVIDE          BANGLADESH                     2               1       34     604
6 months    PROVIDE          BANGLADESH                     3+              0      144     604
6 months    PROVIDE          BANGLADESH                     3+              1       20     604
6 months    SAS-CompFeed     INDIA                          1               0      288    1336
6 months    SAS-CompFeed     INDIA                          1               1      104    1336
6 months    SAS-CompFeed     INDIA                          2               0      222    1336
6 months    SAS-CompFeed     INDIA                          2               1       82    1336
6 months    SAS-CompFeed     INDIA                          3+              0      446    1336
6 months    SAS-CompFeed     INDIA                          3+              1      194    1336
6 months    SAS-FoodSuppl    INDIA                          1               0        2     380
6 months    SAS-FoodSuppl    INDIA                          1               1        5     380
6 months    SAS-FoodSuppl    INDIA                          2               0       44     380
6 months    SAS-FoodSuppl    INDIA                          2               1       28     380
6 months    SAS-FoodSuppl    INDIA                          3+              0      171     380
6 months    SAS-FoodSuppl    INDIA                          3+              1      130     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      625    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       55    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      584    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1       73    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0      593    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1       65    1995
6 months    ZVITAMBO         ZIMBABWE                       1               0     2911    8668
6 months    ZVITAMBO         ZIMBABWE                       1               1      555    8668
6 months    ZVITAMBO         ZIMBABWE                       2               0     2237    8668
6 months    ZVITAMBO         ZIMBABWE                       2               1      401    8668
6 months    ZVITAMBO         ZIMBABWE                       3+              0     2108    8668
6 months    ZVITAMBO         ZIMBABWE                       3+              1      456    8668
24 months   COHORTS          GUATEMALA                      1               0       30    1064
24 months   COHORTS          GUATEMALA                      1               1      136    1064
24 months   COHORTS          GUATEMALA                      2               0       29    1064
24 months   COHORTS          GUATEMALA                      2               1      122    1064
24 months   COHORTS          GUATEMALA                      3+              0      141    1064
24 months   COHORTS          GUATEMALA                      3+              1      606    1064
24 months   COHORTS          INDIA                          1               0      303    3380
24 months   COHORTS          INDIA                          1               1      261    3380
24 months   COHORTS          INDIA                          2               0      425    3380
24 months   COHORTS          INDIA                          2               1      423    3380
24 months   COHORTS          INDIA                          3+              0      711    3380
24 months   COHORTS          INDIA                          3+              1     1257    3380
24 months   COHORTS          PHILIPPINES                    1               0      254    2445
24 months   COHORTS          PHILIPPINES                    1               1      270    2445
24 months   COHORTS          PHILIPPINES                    2               0      223    2445
24 months   COHORTS          PHILIPPINES                    2               1      321    2445
24 months   COHORTS          PHILIPPINES                    3+              0      445    2445
24 months   COHORTS          PHILIPPINES                    3+              1      932    2445
24 months   GMS-Nepal        NEPAL                          1               0       79     488
24 months   GMS-Nepal        NEPAL                          1               1       51     488
24 months   GMS-Nepal        NEPAL                          2               0       68     488
24 months   GMS-Nepal        NEPAL                          2               1       62     488
24 months   GMS-Nepal        NEPAL                          3+              0      122     488
24 months   GMS-Nepal        NEPAL                          3+              1      106     488
24 months   Keneba           GAMBIA                         1               0       95    1376
24 months   Keneba           GAMBIA                         1               1       42    1376
24 months   Keneba           GAMBIA                         2               0      103    1376
24 months   Keneba           GAMBIA                         2               1       36    1376
24 months   Keneba           GAMBIA                         3+              0      708    1376
24 months   Keneba           GAMBIA                         3+              1      392    1376
24 months   PROVIDE          BANGLADESH                     1               0      149     578
24 months   PROVIDE          BANGLADESH                     1               1       62     578
24 months   PROVIDE          BANGLADESH                     2               0      138     578
24 months   PROVIDE          BANGLADESH                     2               1       75     578
24 months   PROVIDE          BANGLADESH                     3+              0      101     578
24 months   PROVIDE          BANGLADESH                     3+              1       53     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1        1       6
24 months   ZVITAMBO         ZIMBABWE                       1               0      411    1639
24 months   ZVITAMBO         ZIMBABWE                       1               1      229    1639
24 months   ZVITAMBO         ZIMBABWE                       2               0      338    1639
24 months   ZVITAMBO         ZIMBABWE                       2               1      169    1639
24 months   ZVITAMBO         ZIMBABWE                       3+              0      321    1639
24 months   ZVITAMBO         ZIMBABWE                       3+              1      171    1639


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

* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/4fc90b9b-9963-4f57-bf45-5162051a7150/d5068841-7c33-440e-834d-8ea223f455a2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4fc90b9b-9963-4f57-bf45-5162051a7150/d5068841-7c33-440e-834d-8ea223f455a2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4fc90b9b-9963-4f57-bf45-5162051a7150/d5068841-7c33-440e-834d-8ea223f455a2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4fc90b9b-9963-4f57-bf45-5162051a7150/d5068841-7c33-440e-834d-8ea223f455a2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      1                    NA                0.0803571   0.0299820   0.1307322
Birth       COHORTS          GUATEMALA                      2                    NA                0.0948905   0.0457879   0.1439931
Birth       COHORTS          GUATEMALA                      3+                   NA                0.0464345   0.0296294   0.0632396
Birth       COHORTS          INDIA                          1                    NA                0.1637931   0.1362951   0.1912911
Birth       COHORTS          INDIA                          2                    NA                0.0945034   0.0766969   0.1123099
Birth       COHORTS          INDIA                          3+                   NA                0.1100879   0.0975352   0.1226406
Birth       COHORTS          PHILIPPINES                    1                    NA                0.0681481   0.0491344   0.0871619
Birth       COHORTS          PHILIPPINES                    2                    NA                0.0611354   0.0432174   0.0790533
Birth       COHORTS          PHILIPPINES                    3+                   NA                0.0586493   0.0474384   0.0698602
Birth       GMS-Nepal        NEPAL                          1                    NA                0.2511848   0.1926246   0.3097451
Birth       GMS-Nepal        NEPAL                          2                    NA                0.1555556   0.1025706   0.2085405
Birth       GMS-Nepal        NEPAL                          3+                   NA                0.1344262   0.0961169   0.1727355
Birth       Keneba           GAMBIA                         1                    NA                0.1025641   0.0549386   0.1501896
Birth       Keneba           GAMBIA                         2                    NA                0.0547945   0.0178664   0.0917227
Birth       Keneba           GAMBIA                         3+                   NA                0.0461538   0.0337783   0.0585294
Birth       PROVIDE          BANGLADESH                     1                    NA                0.0970874   0.0566184   0.1375563
Birth       PROVIDE          BANGLADESH                     2                    NA                0.0874317   0.0464686   0.1283948
Birth       PROVIDE          BANGLADESH                     3+                   NA                0.0800000   0.0365445   0.1234555
Birth       SAS-CompFeed     INDIA                          1                    NA                0.3407202   0.2790148   0.4024256
Birth       SAS-CompFeed     INDIA                          2                    NA                0.2560554   0.2057907   0.3063200
Birth       SAS-CompFeed     INDIA                          3+                   NA                0.2524917   0.2130836   0.2918998
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                0.1068626   0.0990380   0.1146871
Birth       ZVITAMBO         ZIMBABWE                       2                    NA                0.0986969   0.0896158   0.1077781
Birth       ZVITAMBO         ZIMBABWE                       3+                   NA                0.1029137   0.0931767   0.1126506
6 months    COHORTS          GUATEMALA                      1                    NA                0.4090909   0.3251725   0.4930094
6 months    COHORTS          GUATEMALA                      2                    NA                0.3669065   0.2867427   0.4470703
6 months    COHORTS          GUATEMALA                      3+                   NA                0.4188406   0.3820089   0.4556723
6 months    COHORTS          INDIA                          1                    NA                0.1675676   0.1406552   0.1944800
6 months    COHORTS          INDIA                          2                    NA                0.1560219   0.1345361   0.1775077
6 months    COHORTS          INDIA                          3+                   NA                0.2219959   0.2055546   0.2384372
6 months    COHORTS          PHILIPPINES                    1                    NA                0.1742160   0.1431812   0.2052509
6 months    COHORTS          PHILIPPINES                    2                    NA                0.1798680   0.1492828   0.2104531
6 months    COHORTS          PHILIPPINES                    3+                   NA                0.2375654   0.2162222   0.2589086
6 months    GMS-Nepal        NEPAL                          1                    NA                0.2352941   0.1680212   0.3025671
6 months    GMS-Nepal        NEPAL                          2                    NA                0.1946309   0.1310035   0.2582582
6 months    GMS-Nepal        NEPAL                          3+                   NA                0.2175573   0.1675543   0.2675602
6 months    Keneba           GAMBIA                         1                    NA                0.0979381   0.0560997   0.1397766
6 months    Keneba           GAMBIA                         2                    NA                0.0853659   0.0425873   0.1281444
6 months    Keneba           GAMBIA                         3+                   NA                0.1533597   0.1334968   0.1732225
6 months    PROVIDE          BANGLADESH                     1                    NA                0.1926606   0.1402638   0.2450573
6 months    PROVIDE          BANGLADESH                     2                    NA                0.1531532   0.1057402   0.2005661
6 months    PROVIDE          BANGLADESH                     3+                   NA                0.1219512   0.0718281   0.1720744
6 months    SAS-CompFeed     INDIA                          1                    NA                0.2653061   0.2173742   0.3132380
6 months    SAS-CompFeed     INDIA                          2                    NA                0.2697368   0.2160109   0.3234628
6 months    SAS-CompFeed     INDIA                          3+                   NA                0.3031250   0.2636267   0.3426233
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0808824   0.0603842   0.1013805
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1111111   0.0870743   0.1351479
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0987842   0.0759807   0.1215877
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.1601269   0.1479174   0.1723364
6 months    ZVITAMBO         ZIMBABWE                       2                    NA                0.1520091   0.1383077   0.1657105
6 months    ZVITAMBO         ZIMBABWE                       3+                   NA                0.1778471   0.1630453   0.1926489
24 months   COHORTS          GUATEMALA                      1                    NA                0.8192771   0.7607145   0.8778397
24 months   COHORTS          GUATEMALA                      2                    NA                0.8079470   0.7450883   0.8708058
24 months   COHORTS          GUATEMALA                      3+                   NA                0.8112450   0.7831701   0.8393198
24 months   COHORTS          INDIA                          1                    NA                0.4627660   0.4216098   0.5039222
24 months   COHORTS          INDIA                          2                    NA                0.4988208   0.4651631   0.5324784
24 months   COHORTS          INDIA                          3+                   NA                0.6387195   0.6174931   0.6599460
24 months   COHORTS          PHILIPPINES                    1                    NA                0.5152672   0.4724677   0.5580667
24 months   COHORTS          PHILIPPINES                    2                    NA                0.5900735   0.5487361   0.6314110
24 months   COHORTS          PHILIPPINES                    3+                   NA                0.6768337   0.6521265   0.7015409
24 months   GMS-Nepal        NEPAL                          1                    NA                0.3923077   0.3082888   0.4763266
24 months   GMS-Nepal        NEPAL                          2                    NA                0.4769231   0.3909765   0.5628697
24 months   GMS-Nepal        NEPAL                          3+                   NA                0.4649123   0.4001050   0.5297196
24 months   Keneba           GAMBIA                         1                    NA                0.3065693   0.2293348   0.3838039
24 months   Keneba           GAMBIA                         2                    NA                0.2589928   0.1861388   0.3318468
24 months   Keneba           GAMBIA                         3+                   NA                0.3563636   0.3280512   0.3846760
24 months   PROVIDE          BANGLADESH                     1                    NA                0.2938389   0.2323227   0.3553550
24 months   PROVIDE          BANGLADESH                     2                    NA                0.3521127   0.2879142   0.4163112
24 months   PROVIDE          BANGLADESH                     3+                   NA                0.3441558   0.2690555   0.4192561
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.3578125   0.3206633   0.3949617
24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.3333333   0.2922874   0.3743793
24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.3475610   0.3054705   0.3896514


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      NA                   NA                0.0586854   0.0428942   0.0744767
Birth       COHORTS          INDIA                          NA                   NA                0.1152353   0.1054865   0.1249842
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       GMS-Nepal        NEPAL                          NA                   NA                0.1752874   0.1470202   0.2035545
Birth       Keneba           GAMBIA                         NA                   NA                0.0533049   0.0415628   0.0650470
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       SAS-CompFeed     INDIA                          NA                   NA                0.2787540   0.2475949   0.3099131
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.1033588   0.0982930   0.1084246
6 months    COHORTS          GUATEMALA                      NA                   NA                0.4099896   0.3788775   0.4411017
6 months    COHORTS          INDIA                          NA                   NA                0.1957586   0.1838852   0.2076319
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    GMS-Nepal        NEPAL                          NA                   NA                0.2163121   0.1823021   0.2503220
6 months    Keneba           GAMBIA                         NA                   NA                0.1398644   0.1229849   0.1567440
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0967419   0.0837671   0.1097166
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1628980   0.1551237   0.1706723
24 months   COHORTS          GUATEMALA                      NA                   NA                0.8120301   0.7885439   0.8355162
24 months   COHORTS          INDIA                          NA                   NA                0.5742604   0.5575886   0.5909321
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6229039   0.6036892   0.6421186
24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4487705   0.4045970   0.4929440
24 months   Keneba           GAMBIA                         NA                   NA                0.3415698   0.3165034   0.3666361
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.3471629   0.3241082   0.3702176


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
Birth       COHORTS          GUATEMALA                      2                    1                 1.1808597   0.5238079   2.6621012
Birth       COHORTS          GUATEMALA                      3+                   1                 0.5778515   0.2801877   1.1917453
Birth       COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       COHORTS          INDIA                          2                    1                 0.5769680   0.4482824   0.7425945
Birth       COHORTS          INDIA                          3+                   1                 0.6721156   0.5486645   0.8233437
Birth       COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
Birth       COHORTS          PHILIPPINES                    2                    1                 0.8970951   0.5985491   1.3445507
Birth       COHORTS          PHILIPPINES                    3+                   1                 0.8606146   0.6136598   1.2069511
Birth       GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal        NEPAL                          2                    1                 0.6192872   0.4098564   0.9357342
Birth       GMS-Nepal        NEPAL                          3+                   1                 0.5351686   0.3703268   0.7733857
Birth       Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
Birth       Keneba           GAMBIA                         2                    1                 0.5342466   0.2356709   1.2110933
Birth       Keneba           GAMBIA                         3+                   1                 0.4500000   0.2632335   0.7692790
Birth       PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       PROVIDE          BANGLADESH                     2                    1                 0.9005464   0.4810166   1.6859789
Birth       PROVIDE          BANGLADESH                     3+                   1                 0.8240000   0.4154972   1.6341289
Birth       SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed     INDIA                          2                    1                 0.7515121   0.6253629   0.9031082
Birth       SAS-CompFeed     INDIA                          3+                   1                 0.7410529   0.5767607   0.9521442
Birth       ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO         ZIMBABWE                       2                    1                 0.9235872   0.8211257   1.0388340
Birth       ZVITAMBO         ZIMBABWE                       3+                   1                 0.9630467   0.8544565   1.0854374
6 months    COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6 months    COHORTS          GUATEMALA                      2                    1                 0.8968825   0.6646308   1.2102932
6 months    COHORTS          GUATEMALA                      3+                   1                 1.0238325   0.8190296   1.2798476
6 months    COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    COHORTS          INDIA                          2                    1                 0.9310984   0.7535558   1.1504713
6 months    COHORTS          INDIA                          3+                   1                 1.3248144   1.1100582   1.5811182
6 months    COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6 months    COHORTS          PHILIPPINES                    2                    1                 1.0324422   0.8070727   1.3207447
6 months    COHORTS          PHILIPPINES                    3+                   1                 1.3636257   1.1169864   1.6647248
6 months    GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal        NEPAL                          2                    1                 0.8271812   0.5357801   1.2770702
6 months    GMS-Nepal        NEPAL                          3+                   1                 0.9246183   0.6406882   1.3343761
6 months    Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    Keneba           GAMBIA                         2                    1                 0.8716303   0.4511823   1.6838857
6 months    Keneba           GAMBIA                         3+                   1                 1.5658831   1.0020575   2.4469552
6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH                     2                    1                 0.7949378   0.5264687   1.2003108
6 months    PROVIDE          BANGLADESH                     3+                   1                 0.6329849   0.3866826   1.0361724
6 months    SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed     INDIA                          2                    1                 1.0167004   0.8134162   1.2707882
6 months    SAS-CompFeed     INDIA                          3+                   1                 1.1425481   0.8761040   1.4900241
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.3737374   0.9844502   1.9169628
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.2213319   0.8668722   1.7207282
6 months    ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO         ZIMBABWE                       2                    1                 0.9493037   0.8435912   1.0682632
6 months    ZVITAMBO         ZIMBABWE                       3+                   1                 1.1106632   0.9921138   1.2433783
24 months   COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
24 months   COHORTS          GUATEMALA                      2                    1                 0.9861706   0.8872945   1.0960651
24 months   COHORTS          GUATEMALA                      3+                   1                 0.9901961   0.9145987   1.0720421
24 months   COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   COHORTS          INDIA                          2                    1                 1.0779115   0.9640529   1.2052173
24 months   COHORTS          INDIA                          3+                   1                 1.3802215   1.2552094   1.5176840
24 months   COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
24 months   COHORTS          PHILIPPINES                    2                    1                 1.1451797   1.0272663   1.2766277
24 months   COHORTS          PHILIPPINES                    3+                   1                 1.3135587   1.1996260   1.4383121
24 months   GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal        NEPAL                          2                    1                 1.2156863   0.9188896   1.6083467
24 months   GMS-Nepal        NEPAL                          3+                   1                 1.1850705   0.9178388   1.5301076
24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   Keneba           GAMBIA                         2                    1                 0.8448099   0.5791087   1.2324175
24 months   Keneba           GAMBIA                         3+                   1                 1.1624242   0.8925664   1.5138707
24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH                     2                    1                 1.1983189   0.9078314   1.5817566
24 months   PROVIDE          BANGLADESH                     3+                   1                 1.1712401   0.8655942   1.5848111
24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ZVITAMBO         ZIMBABWE                       2                    1                 0.9315866   0.7930002   1.0943927
24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 0.9713495   0.8281310   1.1393363


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    NA                -0.0216717   -0.0677134    0.0243700
Birth       COHORTS          INDIA                          1                    NA                -0.0485578   -0.0729674   -0.0241481
Birth       COHORTS          PHILIPPINES                    1                    NA                -0.0068367   -0.0233901    0.0097167
Birth       GMS-Nepal        NEPAL                          1                    NA                -0.0758975   -0.1222556   -0.0295394
Birth       Keneba           GAMBIA                         1                    NA                -0.0492592   -0.0928837   -0.0056347
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.0080336   -0.0391001    0.0230329
Birth       SAS-CompFeed     INDIA                          1                    NA                -0.0619662   -0.1064085   -0.0175240
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.0035038   -0.0093372    0.0023296
6 months    COHORTS          GUATEMALA                      1                    NA                 0.0008987   -0.0770478    0.0788451
6 months    COHORTS          INDIA                          1                    NA                 0.0281910    0.0033828    0.0529991
6 months    COHORTS          PHILIPPINES                    1                    NA                 0.0370100    0.0088802    0.0651397
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.0189821   -0.0757880    0.0378239
6 months    Keneba           GAMBIA                         1                    NA                 0.0419263    0.0017156    0.0821370
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0337202   -0.0739101    0.0064698
6 months    SAS-CompFeed     INDIA                          1                    NA                 0.0191250   -0.0225940    0.0608440
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0158595   -0.0015211    0.0332401
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.0027711   -0.0067313    0.0122734
24 months   COHORTS          GUATEMALA                      1                    NA                -0.0072470   -0.0612011    0.0467071
24 months   COHORTS          INDIA                          1                    NA                 0.1114944    0.0739911    0.1489977
24 months   COHORTS          PHILIPPINES                    1                    NA                 0.1076367    0.0700091    0.1452644
24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0564628   -0.0159902    0.1289158
24 months   Keneba           GAMBIA                         1                    NA                 0.0350004   -0.0385228    0.1085236
24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0348809   -0.0150235    0.0847852
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0106496   -0.0395253    0.0182261


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    NA                -0.3692857   -1.4191803    0.2249675
Birth       COHORTS          INDIA                          1                    NA                -0.4213793   -0.6476006   -0.2262190
Birth       COHORTS          PHILIPPINES                    1                    NA                -0.1115072   -0.4166265    0.1278941
Birth       GMS-Nepal        NEPAL                          1                    NA                -0.4329889   -0.7190791   -0.1945100
Birth       Keneba           GAMBIA                         1                    NA                -0.9241026   -1.9135260   -0.2706839
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.0902104   -0.5004124    0.2078454
Birth       SAS-CompFeed     INDIA                          1                    NA                -0.2222972   -0.3858851   -0.0780189
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.0338992   -0.0918869    0.0210089
6 months    COHORTS          GUATEMALA                      1                    NA                 0.0021920   -0.2072456    0.1752955
6 months    COHORTS          INDIA                          1                    NA                 0.1440090    0.0076228    0.2616511
6 months    COHORTS          PHILIPPINES                    1                    NA                 0.1752150    0.0310883    0.2979027
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.0877531   -0.3845934    0.1454481
6 months    Keneba           GAMBIA                         1                    NA                 0.2997638   -0.0530775    0.5343831
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.2121560   -0.4913178    0.0147492
6 months    SAS-CompFeed     INDIA                          1                    NA                 0.0672395   -0.0924640    0.2035965
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1639363   -0.0351138    0.3247095
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.0170111   -0.0430841    0.0736440
24 months   COHORTS          GUATEMALA                      1                    NA                -0.0089246   -0.0776089    0.0553819
24 months   COHORTS          INDIA                          1                    NA                 0.1941530    0.1258176    0.2571467
24 months   COHORTS          PHILIPPINES                    1                    NA                 0.1727983    0.1096941    0.2314296
24 months   GMS-Nepal        NEPAL                          1                    NA                 0.1258166   -0.0517432    0.2734001
24 months   Keneba           GAMBIA                         1                    NA                 0.1024693   -0.1407748    0.2938472
24 months   PROVIDE          BANGLADESH                     1                    NA                 0.1061112   -0.0592824    0.2456807
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0306761   -0.1173031    0.0492346
