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

**Outcome Variable:** haz

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

agecat      studyid          country                        parity    n_cell       n
----------  ---------------  -----------------------------  -------  -------  ------
Birth       COHORTS          GUATEMALA                      1            112     852
Birth       COHORTS          GUATEMALA                      2            137     852
Birth       COHORTS          GUATEMALA                      3+           603     852
Birth       COHORTS          INDIA                          1            696    4122
Birth       COHORTS          INDIA                          2           1037    4122
Birth       COHORTS          INDIA                          3+          2389    4122
Birth       COHORTS          PHILIPPINES                    1            675    3050
Birth       COHORTS          PHILIPPINES                    2            687    3050
Birth       COHORTS          PHILIPPINES                    3+          1688    3050
Birth       GMS-Nepal        NEPAL                          1            211     696
Birth       GMS-Nepal        NEPAL                          2            180     696
Birth       GMS-Nepal        NEPAL                          3+           305     696
Birth       JiVitA-3         BANGLADESH                     1           7456   22455
Birth       JiVitA-3         BANGLADESH                     2           7615   22455
Birth       JiVitA-3         BANGLADESH                     3+          7384   22455
Birth       Keneba           GAMBIA                         1            156    1407
Birth       Keneba           GAMBIA                         2            146    1407
Birth       Keneba           GAMBIA                         3+          1105    1407
Birth       PROVIDE          BANGLADESH                     1            206     539
Birth       PROVIDE          BANGLADESH                     2            183     539
Birth       PROVIDE          BANGLADESH                     3+           150     539
Birth       SAS-CompFeed     INDIA                          1            361    1252
Birth       SAS-CompFeed     INDIA                          2            289    1252
Birth       SAS-CompFeed     INDIA                          3+           602    1252
Birth       ZVITAMBO         ZIMBABWE                       1           5989   13874
Birth       ZVITAMBO         ZIMBABWE                       2           4144   13874
Birth       ZVITAMBO         ZIMBABWE                       3+          3741   13874
6 months    COHORTS          GUATEMALA                      1            132     961
6 months    COHORTS          GUATEMALA                      2            139     961
6 months    COHORTS          GUATEMALA                      3+           690     961
6 months    COHORTS          INDIA                          1            740    4291
6 months    COHORTS          INDIA                          2           1096    4291
6 months    COHORTS          INDIA                          3+          2455    4291
6 months    COHORTS          PHILIPPINES                    1            574    2708
6 months    COHORTS          PHILIPPINES                    2            606    2708
6 months    COHORTS          PHILIPPINES                    3+          1528    2708
6 months    GMS-Nepal        NEPAL                          1            153     564
6 months    GMS-Nepal        NEPAL                          2            149     564
6 months    GMS-Nepal        NEPAL                          3+           262     564
6 months    JiVitA-3         BANGLADESH                     1           6396   16811
6 months    JiVitA-3         BANGLADESH                     2           5700   16811
6 months    JiVitA-3         BANGLADESH                     3+          4715   16811
6 months    Keneba           GAMBIA                         1            194    1623
6 months    Keneba           GAMBIA                         2            164    1623
6 months    Keneba           GAMBIA                         3+          1265    1623
6 months    PROVIDE          BANGLADESH                     1            218     604
6 months    PROVIDE          BANGLADESH                     2            222     604
6 months    PROVIDE          BANGLADESH                     3+           164     604
6 months    SAS-CompFeed     INDIA                          1            392    1336
6 months    SAS-CompFeed     INDIA                          2            304    1336
6 months    SAS-CompFeed     INDIA                          3+           640    1336
6 months    SAS-FoodSuppl    INDIA                          1              7     380
6 months    SAS-FoodSuppl    INDIA                          2             72     380
6 months    SAS-FoodSuppl    INDIA                          3+           301     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            680    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            657    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           658    1995
6 months    ZVITAMBO         ZIMBABWE                       1           3466    8668
6 months    ZVITAMBO         ZIMBABWE                       2           2638    8668
6 months    ZVITAMBO         ZIMBABWE                       3+          2564    8668
24 months   COHORTS          GUATEMALA                      1            166    1064
24 months   COHORTS          GUATEMALA                      2            151    1064
24 months   COHORTS          GUATEMALA                      3+           747    1064
24 months   COHORTS          INDIA                          1            564    3380
24 months   COHORTS          INDIA                          2            848    3380
24 months   COHORTS          INDIA                          3+          1968    3380
24 months   COHORTS          PHILIPPINES                    1            524    2445
24 months   COHORTS          PHILIPPINES                    2            544    2445
24 months   COHORTS          PHILIPPINES                    3+          1377    2445
24 months   GMS-Nepal        NEPAL                          1            130     488
24 months   GMS-Nepal        NEPAL                          2            130     488
24 months   GMS-Nepal        NEPAL                          3+           228     488
24 months   JiVitA-3         BANGLADESH                     1           3173    8632
24 months   JiVitA-3         BANGLADESH                     2           2923    8632
24 months   JiVitA-3         BANGLADESH                     3+          2536    8632
24 months   Keneba           GAMBIA                         1            137    1376
24 months   Keneba           GAMBIA                         2            139    1376
24 months   Keneba           GAMBIA                         3+          1100    1376
24 months   PROVIDE          BANGLADESH                     1            211     578
24 months   PROVIDE          BANGLADESH                     2            213     578
24 months   PROVIDE          BANGLADESH                     3+           154     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       6
24 months   ZVITAMBO         ZIMBABWE                       1            640    1639
24 months   ZVITAMBO         ZIMBABWE                       2            507    1639
24 months   ZVITAMBO         ZIMBABWE                       3+           492    1639


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/bc0e62a4-7cf6-42eb-b92f-2b2ae1e50210/a54351b0-fe8f-4443-8dfc-889166ea8242/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bc0e62a4-7cf6-42eb-b92f-2b2ae1e50210/a54351b0-fe8f-4443-8dfc-889166ea8242/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/bc0e62a4-7cf6-42eb-b92f-2b2ae1e50210/a54351b0-fe8f-4443-8dfc-889166ea8242/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    NA                -0.2955357   -0.4961176   -0.0949538
Birth       COHORTS          GUATEMALA                      2                    NA                -0.0281752   -0.2562105    0.1998601
Birth       COHORTS          GUATEMALA                      3+                   NA                 0.2445937    0.1463298    0.3428576
Birth       COHORTS          INDIA                          1                    NA                -0.8560489   -0.9418893   -0.7702084
Birth       COHORTS          INDIA                          2                    NA                -0.6238284   -0.6910831   -0.5565736
Birth       COHORTS          INDIA                          3+                   NA                -0.6484763   -0.6951610   -0.6017917
Birth       COHORTS          PHILIPPINES                    1                    NA                -0.3580296   -0.4429059   -0.2731534
Birth       COHORTS          PHILIPPINES                    2                    NA                -0.2091994   -0.2907964   -0.1276025
Birth       COHORTS          PHILIPPINES                    3+                   NA                -0.2216884   -0.2736422   -0.1697346
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.3972038   -1.5420135   -1.2523941
Birth       GMS-Nepal        NEPAL                          2                    NA                -1.0515000   -1.2077080   -0.8952920
Birth       GMS-Nepal        NEPAL                          3+                   NA                -0.8891475   -1.0052035   -0.7730915
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.8155553   -1.8465222   -1.7845883
Birth       JiVitA-3         BANGLADESH                     2                    NA                -1.4975364   -1.5280985   -1.4669744
Birth       JiVitA-3         BANGLADESH                     3+                   NA                -1.4558220   -1.4842489   -1.4273952
Birth       Keneba           GAMBIA                         1                    NA                -0.3241667   -0.5080084   -0.1403249
Birth       Keneba           GAMBIA                         2                    NA                -0.0376027   -0.2207645    0.1455591
Birth       Keneba           GAMBIA                         3+                   NA                 0.1122715    0.0358040    0.1887390
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.0523786   -1.1655486   -0.9392087
Birth       PROVIDE          BANGLADESH                     2                    NA                -0.8445355   -0.9715480   -0.7175231
Birth       PROVIDE          BANGLADESH                     3+                   NA                -0.7048667   -0.8553762   -0.5543571
Birth       SAS-CompFeed     INDIA                          1                    NA                -1.5680886   -1.7156591   -1.4205181
Birth       SAS-CompFeed     INDIA                          2                    NA                -1.3870934   -1.4733440   -1.3008428
Birth       SAS-CompFeed     INDIA                          3+                   NA                -1.3707475   -1.5061744   -1.2353206
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.5342227   -0.5656388   -0.5028067
Birth       ZVITAMBO         ZIMBABWE                       2                    NA                -0.4913345   -0.5273942   -0.4552747
Birth       ZVITAMBO         ZIMBABWE                       3+                   NA                -0.4560064   -0.4969520   -0.4150609
6 months    COHORTS          GUATEMALA                      1                    NA                -1.8418939   -2.0228076   -1.6609802
6 months    COHORTS          GUATEMALA                      2                    NA                -1.6951799   -1.8774684   -1.5128913
6 months    COHORTS          GUATEMALA                      3+                   NA                -1.8350145   -1.9150976   -1.7549314
6 months    COHORTS          INDIA                          1                    NA                -0.9470541   -1.0297223   -0.8643858
6 months    COHORTS          INDIA                          2                    NA                -0.8993339   -0.9666636   -0.8320043
6 months    COHORTS          INDIA                          3+                   NA                -1.1404318   -1.1872366   -1.0936270
6 months    COHORTS          PHILIPPINES                    1                    NA                -1.0339895   -1.1258821   -0.9420970
6 months    COHORTS          PHILIPPINES                    2                    NA                -1.0007261   -1.0872914   -0.9141607
6 months    COHORTS          PHILIPPINES                    3+                   NA                -1.2360733   -1.2917219   -1.1804247
6 months    GMS-Nepal        NEPAL                          1                    NA                -1.3403922   -1.4995103   -1.1812741
6 months    GMS-Nepal        NEPAL                          2                    NA                -1.3737919   -1.5137977   -1.2337862
6 months    GMS-Nepal        NEPAL                          3+                   NA                -1.3438868   -1.4595398   -1.2282337
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.3972280   -1.4309085   -1.3635474
6 months    JiVitA-3         BANGLADESH                     2                    NA                -1.2072930   -1.2384536   -1.1761324
6 months    JiVitA-3         BANGLADESH                     3+                   NA                -1.3268653   -1.3640557   -1.2896749
6 months    Keneba           GAMBIA                         1                    NA                -0.8062506   -0.9513604   -0.6611408
6 months    Keneba           GAMBIA                         2                    NA                -0.6999654   -0.8511450   -0.5487859
6 months    Keneba           GAMBIA                         3+                   NA                -0.9710240   -1.0317692   -0.9102787
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.1655122   -1.2848545   -1.0461699
6 months    PROVIDE          BANGLADESH                     2                    NA                -1.0600225   -1.1828853   -0.9371598
6 months    PROVIDE          BANGLADESH                     3+                   NA                -1.0364329   -1.1848722   -0.8879937
6 months    SAS-CompFeed     INDIA                          1                    NA                -1.3118367   -1.4373576   -1.1863158
6 months    SAS-CompFeed     INDIA                          2                    NA                -1.3070888   -1.4410886   -1.1730890
6 months    SAS-CompFeed     INDIA                          3+                   NA                -1.5020078   -1.5877472   -1.4162684
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -2.7371429   -3.8398050   -1.6344807
6 months    SAS-FoodSuppl    INDIA                          2                    NA                -1.7179167   -1.9871634   -1.4486700
6 months    SAS-FoodSuppl    INDIA                          3+                   NA                -1.9224252   -2.0438733   -1.8009772
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5386838   -0.6201834   -0.4571842
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.5657902   -0.6562982   -0.4752822
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.5255471   -0.6099074   -0.4411868
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.8601125   -0.9007812   -0.8194438
6 months    ZVITAMBO         ZIMBABWE                       2                    NA                -0.8343442   -0.8798633   -0.7888251
6 months    ZVITAMBO         ZIMBABWE                       3+                   NA                -0.9132508   -0.9606736   -0.8658280
24 months   COHORTS          GUATEMALA                      1                    NA                -2.9450602   -3.0984447   -2.7916758
24 months   COHORTS          GUATEMALA                      2                    NA                -2.9956954   -3.1608270   -2.8305638
24 months   COHORTS          GUATEMALA                      3+                   NA                -2.9996787   -3.0777348   -2.9216226
24 months   COHORTS          INDIA                          1                    NA                -1.9295922   -2.0293090   -1.8298754
24 months   COHORTS          INDIA                          2                    NA                -1.9930660   -2.0729384   -1.9131936
24 months   COHORTS          INDIA                          3+                   NA                -2.4349441   -2.4879405   -2.3819477
24 months   COHORTS          PHILIPPINES                    1                    NA                -2.0738168   -2.1676894   -1.9799442
24 months   COHORTS          PHILIPPINES                    2                    NA                -2.3297059   -2.4223024   -2.2371093
24 months   COHORTS          PHILIPPINES                    3+                   NA                -2.5769572   -2.6365887   -2.5173256
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.7259231   -1.9064905   -1.5453557
24 months   GMS-Nepal        NEPAL                          2                    NA                -1.9082692   -2.0718832   -1.7446553
24 months   GMS-Nepal        NEPAL                          3+                   NA                -1.9676096   -2.0849819   -1.8502374
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.9947400   -2.0363732   -1.9531068
24 months   JiVitA-3         BANGLADESH                     2                    NA                -1.9546528   -1.9948338   -1.9144718
24 months   JiVitA-3         BANGLADESH                     3+                   NA                -2.1053036   -2.1483453   -2.0622619
24 months   Keneba           GAMBIA                         1                    NA                -1.4779100   -1.6496081   -1.3062118
24 months   Keneba           GAMBIA                         2                    NA                -1.3899412   -1.5409282   -1.2389543
24 months   Keneba           GAMBIA                         3+                   NA                -1.6271244   -1.6909196   -1.5633292
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.5336730   -1.6770716   -1.3902744
24 months   PROVIDE          BANGLADESH                     2                    NA                -1.6026761   -1.7373193   -1.4680328
24 months   PROVIDE          BANGLADESH                     3+                   NA                -1.6962662   -1.8516014   -1.5409311
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.5927031   -1.6862811   -1.4991252
24 months   ZVITAMBO         ZIMBABWE                       2                    NA                -1.5953649   -1.6888244   -1.5019054
24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                -1.6341362   -1.7435617   -1.5247107


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       COHORTS          INDIA                          NA                   NA                -0.6773241   -0.7124609   -0.6421873
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5894148   -1.6086362   -1.5701935
Birth       Keneba           GAMBIA                         NA                   NA                 0.0483298   -0.0182746    0.1149342
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed     INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5003222   -0.5208673   -0.4797770
6 months    COHORTS          GUATEMALA                      NA                   NA                -1.8157336   -1.8837688   -1.7476985
6 months    COHORTS          INDIA                          NA                   NA                -1.0455022   -1.0805318   -1.0104727
6 months    COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3130932   -1.3362359   -1.2899505
6 months    Keneba           GAMBIA                         NA                   NA                -0.9239386   -0.9768148   -0.8710623
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5432778   -0.5926218   -0.4939338
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8679886   -0.8935535   -0.8424236
24 months   COHORTS          GUATEMALA                      NA                   NA                -2.9905921   -3.0548289   -2.9263553
24 months   COHORTS          INDIA                          NA                   NA                -2.2397574   -2.2808841   -2.1986307
24 months   COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0136481   -2.0413552   -1.9859409
24 months   Keneba           GAMBIA                         NA                   NA                -1.5883084   -1.6443765   -1.5322402
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6059640   -1.6629797   -1.5489484


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      2                    1                  0.2673605   -0.0363386    0.5710597
Birth       COHORTS          GUATEMALA                      3+                   1                  0.5401294    0.3167712    0.7634876
Birth       COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          2                    1                  0.2322205    0.1231711    0.3412699
Birth       COHORTS          INDIA                          3+                   1                  0.2075725    0.1098585    0.3052865
Birth       COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    2                    1                  0.1488302    0.0310930    0.2665674
Birth       COHORTS          PHILIPPINES                    3+                   1                  0.1363412    0.0368266    0.2358559
Birth       GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          2                    1                  0.3457038    0.1326996    0.5587080
Birth       GMS-Nepal        NEPAL                          3+                   1                  0.5080563    0.3224792    0.6936333
Birth       JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     2                    1                  0.3180188    0.2757648    0.3602729
Birth       JiVitA-3         BANGLADESH                     3+                   1                  0.3597332    0.3200402    0.3994263
Birth       Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         2                    1                  0.2865639    0.0270528    0.5460751
Birth       Keneba           GAMBIA                         3+                   1                  0.4364382    0.2373275    0.6355488
Birth       PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     2                    1                  0.2078431    0.0377267    0.3779596
Birth       PROVIDE          BANGLADESH                     3+                   1                  0.3475120    0.1592022    0.5358217
Birth       SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          2                    1                  0.1809952    0.0408312    0.3211592
Birth       SAS-CompFeed     INDIA                          3+                   1                  0.1973411   -0.0145363    0.4092186
Birth       ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       2                    1                  0.0428883   -0.0049372    0.0907137
Birth       ZVITAMBO         ZIMBABWE                       3+                   1                  0.0782163    0.0266072    0.1298255
6 months    COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      2                    1                  0.1467141   -0.1101105    0.4035387
6 months    COHORTS          GUATEMALA                      3+                   1                  0.0068794   -0.1909666    0.2047255
6 months    COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          2                    1                  0.0477201   -0.0588975    0.1543378
6 months    COHORTS          INDIA                          3+                   1                 -0.1933777   -0.2883763   -0.0983791
6 months    COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    2                    1                  0.0332635   -0.0929815    0.1595085
6 months    COHORTS          PHILIPPINES                    3+                   1                 -0.2020838   -0.3095128   -0.0946547
6 months    GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          2                    1                 -0.0333998   -0.2453436    0.1785440
6 months    GMS-Nepal        NEPAL                          3+                   1                 -0.0034946   -0.2002030    0.1932138
6 months    JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     2                    1                  0.1899350    0.1498291    0.2300409
6 months    JiVitA-3         BANGLADESH                     3+                   1                  0.0703626    0.0236886    0.1170367
6 months    Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         2                    1                  0.1062851   -0.1032670    0.3158373
6 months    Keneba           GAMBIA                         3+                   1                 -0.1647734   -0.3220847   -0.0074621
6 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     2                    1                  0.1054897   -0.0657932    0.2767726
6 months    PROVIDE          BANGLADESH                     3+                   1                  0.1290793   -0.0613854    0.3195440
6 months    SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          2                    1                  0.0047479   -0.1210126    0.1305084
6 months    SAS-CompFeed     INDIA                          3+                   1                 -0.1901711   -0.3323896   -0.0479526
6 months    SAS-FoodSuppl    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          2                    1                  1.0192262   -0.1158322    2.1542846
6 months    SAS-FoodSuppl    INDIA                          3+                   1                  0.8147176   -0.2946126    1.9240478
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0271064   -0.1489009    0.0946881
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0131367   -0.1041614    0.1304348
6 months    ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       2                    1                  0.0257683   -0.0352721    0.0868087
6 months    ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0531383   -0.1156112    0.0093346
24 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      2                    1                 -0.0506351   -0.2760131    0.1747429
24 months   COHORTS          GUATEMALA                      3+                   1                 -0.0546185   -0.2267218    0.1174848
24 months   COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          2                    1                 -0.0634738   -0.1912355    0.0642878
24 months   COHORTS          INDIA                          3+                   1                 -0.5053519   -0.6182770   -0.3924269
24 months   COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    2                    1                 -0.2558891   -0.3877458   -0.1240324
24 months   COHORTS          PHILIPPINES                    3+                   1                 -0.5031404   -0.6143518   -0.3919289
24 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          2                    1                 -0.1823462   -0.4260142    0.0613219
24 months   GMS-Nepal        NEPAL                          3+                   1                 -0.2416866   -0.4570487   -0.0263245
24 months   JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     2                    1                  0.0400872   -0.0120523    0.0922267
24 months   JiVitA-3         BANGLADESH                     3+                   1                 -0.1105636   -0.1660882   -0.0550391
24 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         2                    1                  0.0879687   -0.1406736    0.3166111
24 months   Keneba           GAMBIA                         3+                   1                 -0.1492144   -0.3323813    0.0339524
24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     2                    1                 -0.0690031   -0.2657058    0.1276997
24 months   PROVIDE          BANGLADESH                     3+                   1                 -0.1625932   -0.3739985    0.0488120
24 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0026618   -0.1349172    0.1295937
24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0414331   -0.1854149    0.1025488


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    NA                 0.4252658    0.2336950    0.6168365
Birth       COHORTS          INDIA                          1                    NA                 0.1787247    0.1005275    0.2569219
Birth       COHORTS          PHILIPPINES                    1                    NA                 0.1089804    0.0345693    0.1833916
Birth       GMS-Nepal        NEPAL                          1                    NA                 0.3120457    0.1909712    0.4331203
Birth       JiVitA-3         BANGLADESH                     1                    NA                 0.2261404    0.2018320    0.2504489
Birth       Keneba           GAMBIA                         1                    NA                 0.3724964    0.1971701    0.5478228
Birth       PROVIDE          BANGLADESH                     1                    NA                 0.1672766    0.0742853    0.2602679
Birth       SAS-CompFeed     INDIA                          1                    NA                 0.1366669    0.0131557    0.2601781
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                 0.0339006    0.0103001    0.0575010
6 months    COHORTS          GUATEMALA                      1                    NA                 0.0261603   -0.1422654    0.1945861
6 months    COHORTS          INDIA                          1                    NA                -0.0984482   -0.1739730   -0.0229234
6 months    COHORTS          PHILIPPINES                    1                    NA                -0.1065828   -0.1879586   -0.0252070
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.0104471   -0.1434918    0.1225976
6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0841347    0.0607573    0.1075122
6 months    Keneba           GAMBIA                         1                    NA                -0.1176880   -0.2548697    0.0194938
6 months    PROVIDE          BANGLADESH                     1                    NA                 0.0738207   -0.0236511    0.1712926
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.0900196   -0.1744402   -0.0055989
6 months    SAS-FoodSuppl    INDIA                          1                    NA                 0.8384586   -0.2422291    1.9191464
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0045940   -0.0720403    0.0628524
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0078761   -0.0392578    0.0235057
24 months   COHORTS          GUATEMALA                      1                    NA                -0.0455319   -0.1880524    0.0969886
24 months   COHORTS          INDIA                          1                    NA                -0.3101652   -0.4013598   -0.2189706
24 months   COHORTS          PHILIPPINES                    1                    NA                -0.3402977   -0.4243037   -0.2562917
24 months   GMS-Nepal        NEPAL                          1                    NA                -0.1614950   -0.3116063   -0.0113836
24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0189081   -0.0480903    0.0102742
24 months   Keneba           GAMBIA                         1                    NA                -0.1103984   -0.2739635    0.0531667
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0687492   -0.1805173    0.0430190
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0132609   -0.0851556    0.0586338
