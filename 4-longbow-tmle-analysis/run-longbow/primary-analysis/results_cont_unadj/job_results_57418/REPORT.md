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

**Outcome Variable:** whz

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
Birth       COHORTS          GUATEMALA                      1             94     756
Birth       COHORTS          GUATEMALA                      2            118     756
Birth       COHORTS          GUATEMALA                      3+           544     756
Birth       COHORTS          INDIA                          1            641    3855
Birth       COHORTS          INDIA                          2            982    3855
Birth       COHORTS          INDIA                          3+          2232    3855
Birth       COHORTS          PHILIPPINES                    1            640    2899
Birth       COHORTS          PHILIPPINES                    2            657    2899
Birth       COHORTS          PHILIPPINES                    3+          1602    2899
Birth       GMS-Nepal        NEPAL                          1            185     641
Birth       GMS-Nepal        NEPAL                          2            169     641
Birth       GMS-Nepal        NEPAL                          3+           287     641
Birth       Keneba           GAMBIA                         1            146    1338
Birth       Keneba           GAMBIA                         2            142    1338
Birth       Keneba           GAMBIA                         3+          1050    1338
Birth       PROVIDE          BANGLADESH                     1            202     532
Birth       PROVIDE          BANGLADESH                     2            182     532
Birth       PROVIDE          BANGLADESH                     3+           148     532
Birth       SAS-CompFeed     INDIA                          1            304    1103
Birth       SAS-CompFeed     INDIA                          2            258    1103
Birth       SAS-CompFeed     INDIA                          3+           541    1103
Birth       ZVITAMBO         ZIMBABWE                       1           5561   12916
Birth       ZVITAMBO         ZIMBABWE                       2           3882   12916
Birth       ZVITAMBO         ZIMBABWE                       3+          3473   12916
6 months    COHORTS          GUATEMALA                      1            132     963
6 months    COHORTS          GUATEMALA                      2            139     963
6 months    COHORTS          GUATEMALA                      3+           692     963
6 months    COHORTS          INDIA                          1            741    4285
6 months    COHORTS          INDIA                          2           1093    4285
6 months    COHORTS          INDIA                          3+          2451    4285
6 months    COHORTS          PHILIPPINES                    1            574    2706
6 months    COHORTS          PHILIPPINES                    2            607    2706
6 months    COHORTS          PHILIPPINES                    3+          1525    2706
6 months    GMS-Nepal        NEPAL                          1            153     564
6 months    GMS-Nepal        NEPAL                          2            149     564
6 months    GMS-Nepal        NEPAL                          3+           262     564
6 months    Keneba           GAMBIA                         1            195    1623
6 months    Keneba           GAMBIA                         2            164    1623
6 months    Keneba           GAMBIA                         3+          1264    1623
6 months    PROVIDE          BANGLADESH                     1            218     603
6 months    PROVIDE          BANGLADESH                     2            222     603
6 months    PROVIDE          BANGLADESH                     3+           163     603
6 months    SAS-CompFeed     INDIA                          1            392    1334
6 months    SAS-CompFeed     INDIA                          2            302    1334
6 months    SAS-CompFeed     INDIA                          3+           640    1334
6 months    SAS-FoodSuppl    INDIA                          1              7     380
6 months    SAS-FoodSuppl    INDIA                          2             72     380
6 months    SAS-FoodSuppl    INDIA                          3+           301     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            679    1994
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            657    1994
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           658    1994
6 months    ZVITAMBO         ZIMBABWE                       1           3392    8504
6 months    ZVITAMBO         ZIMBABWE                       2           2587    8504
6 months    ZVITAMBO         ZIMBABWE                       3+          2525    8504
24 months   COHORTS          GUATEMALA                      1            167    1076
24 months   COHORTS          GUATEMALA                      2            151    1076
24 months   COHORTS          GUATEMALA                      3+           758    1076
24 months   COHORTS          INDIA                          1            561    3354
24 months   COHORTS          INDIA                          2            837    3354
24 months   COHORTS          INDIA                          3+          1956    3354
24 months   COHORTS          PHILIPPINES                    1            523    2449
24 months   COHORTS          PHILIPPINES                    2            544    2449
24 months   COHORTS          PHILIPPINES                    3+          1382    2449
24 months   GMS-Nepal        NEPAL                          1            130     487
24 months   GMS-Nepal        NEPAL                          2            130     487
24 months   GMS-Nepal        NEPAL                          3+           227     487
24 months   Keneba           GAMBIA                         1            137    1376
24 months   Keneba           GAMBIA                         2            139    1376
24 months   Keneba           GAMBIA                         3+          1100    1376
24 months   PROVIDE          BANGLADESH                     1            211     579
24 months   PROVIDE          BANGLADESH                     2            213     579
24 months   PROVIDE          BANGLADESH                     3+           155     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       6
24 months   ZVITAMBO         ZIMBABWE                       1            161     432
24 months   ZVITAMBO         ZIMBABWE                       2            123     432
24 months   ZVITAMBO         ZIMBABWE                       3+           148     432


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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/90b41736-227e-4355-8007-7b37bdfc18c4/21815e0e-a9be-4085-96ee-c84ea1ae09e3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/90b41736-227e-4355-8007-7b37bdfc18c4/21815e0e-a9be-4085-96ee-c84ea1ae09e3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/90b41736-227e-4355-8007-7b37bdfc18c4/21815e0e-a9be-4085-96ee-c84ea1ae09e3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    NA                -1.1797872   -1.4650692   -0.8945053
Birth       COHORTS          GUATEMALA                      2                    NA                -1.1183898   -1.3645589   -0.8722208
Birth       COHORTS          GUATEMALA                      3+                   NA                -1.0296140   -1.1495677   -0.9096603
Birth       COHORTS          INDIA                          1                    NA                -1.1529953   -1.2447465   -1.0612441
Birth       COHORTS          INDIA                          2                    NA                -0.9408961   -1.0142407   -0.8675516
Birth       COHORTS          INDIA                          3+                   NA                -0.8953763   -0.9449512   -0.8458015
Birth       COHORTS          PHILIPPINES                    1                    NA                -1.1326875   -1.2287573   -1.0366177
Birth       COHORTS          PHILIPPINES                    2                    NA                -0.7699696   -0.8650746   -0.6748645
Birth       COHORTS          PHILIPPINES                    3+                   NA                -0.5757615   -0.6376536   -0.5138695
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.3775676   -1.5355116   -1.2196235
Birth       GMS-Nepal        NEPAL                          2                    NA                -1.1053254   -1.2819550   -0.9286959
Birth       GMS-Nepal        NEPAL                          3+                   NA                -0.9546690   -1.0816685   -0.8276695
Birth       Keneba           GAMBIA                         1                    NA                -1.4217808   -1.6242015   -1.2193602
Birth       Keneba           GAMBIA                         2                    NA                -1.2536972   -1.4306707   -1.0767237
Birth       Keneba           GAMBIA                         3+                   NA                -1.1666429   -1.2415680   -1.0917177
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.4397030   -1.5586731   -1.3207328
Birth       PROVIDE          BANGLADESH                     2                    NA                -1.2023077   -1.3345758   -1.0700396
Birth       PROVIDE          BANGLADESH                     3+                   NA                -1.2239189   -1.3731656   -1.0746722
Birth       SAS-CompFeed     INDIA                          1                    NA                -0.8356250   -1.0165469   -0.6547031
Birth       SAS-CompFeed     INDIA                          2                    NA                -0.7208527   -0.9011044   -0.5406010
Birth       SAS-CompFeed     INDIA                          3+                   NA                -0.5527726   -0.7556552   -0.3498901
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.6987448   -0.7379920   -0.6594976
Birth       ZVITAMBO         ZIMBABWE                       2                    NA                -0.3937635   -0.4405965   -0.3469305
Birth       ZVITAMBO         ZIMBABWE                       3+                   NA                -0.3586611   -0.4081957   -0.3091265
6 months    COHORTS          GUATEMALA                      1                    NA                 0.3220455    0.1254142    0.5186767
6 months    COHORTS          GUATEMALA                      2                    NA                 0.2369065    0.0615093    0.4123036
6 months    COHORTS          GUATEMALA                      3+                   NA                 0.1610694    0.0761466    0.2459922
6 months    COHORTS          INDIA                          1                    NA                -0.6192443   -0.6996552   -0.5388334
6 months    COHORTS          INDIA                          2                    NA                -0.5773193   -0.6450617   -0.5095769
6 months    COHORTS          INDIA                          3+                   NA                -0.7911179   -0.8379869   -0.7442489
6 months    COHORTS          PHILIPPINES                    1                    NA                -0.2095296   -0.2972306   -0.1218286
6 months    COHORTS          PHILIPPINES                    2                    NA                -0.2310049   -0.3121896   -0.1498203
6 months    COHORTS          PHILIPPINES                    3+                   NA                -0.3505902   -0.4074607   -0.2937196
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.4010131   -0.5499696   -0.2520566
6 months    GMS-Nepal        NEPAL                          2                    NA                -0.6667114   -0.8478886   -0.4855342
6 months    GMS-Nepal        NEPAL                          3+                   NA                -0.6865331   -0.8117770   -0.5612891
6 months    Keneba           GAMBIA                         1                    NA                 0.0725031   -0.0950835    0.2400898
6 months    Keneba           GAMBIA                         2                    NA                -0.0518201   -0.2242735    0.1206332
6 months    Keneba           GAMBIA                         3+                   NA                -0.2450740   -0.3112601   -0.1788880
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.1151911   -0.2565373    0.0261550
6 months    PROVIDE          BANGLADESH                     2                    NA                -0.1572748   -0.2933764   -0.0211732
6 months    PROVIDE          BANGLADESH                     3+                   NA                -0.3682515   -0.5184596   -0.2180435
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.5695281   -0.6974230   -0.4416331
6 months    SAS-CompFeed     INDIA                          2                    NA                -0.6747020   -0.8267292   -0.5226748
6 months    SAS-CompFeed     INDIA                          3+                   NA                -0.7203750   -0.8706403   -0.5701097
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -1.9457143   -2.3960187   -1.4954099
6 months    SAS-FoodSuppl    INDIA                          2                    NA                -0.7120833   -0.9054564   -0.5187103
6 months    SAS-FoodSuppl    INDIA                          3+                   NA                -1.0622259   -1.1982227   -0.9262292
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0667796   -0.0263353    0.1598944
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.0835908   -0.0083426    0.1755242
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                 0.0892021   -0.0012958    0.1797001
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.3616952    0.3223175    0.4010728
6 months    ZVITAMBO         ZIMBABWE                       2                    NA                 0.2933475    0.2456532    0.3410418
6 months    ZVITAMBO         ZIMBABWE                       3+                   NA                 0.2597822    0.2120045    0.3075599
24 months   COHORTS          GUATEMALA                      1                    NA                -0.3101796   -0.4498621   -0.1704972
24 months   COHORTS          GUATEMALA                      2                    NA                -0.3416556   -0.4820595   -0.2012518
24 months   COHORTS          GUATEMALA                      3+                   NA                -0.2630211   -0.3275210   -0.1985212
24 months   COHORTS          INDIA                          1                    NA                -0.5394474   -0.6242759   -0.4546189
24 months   COHORTS          INDIA                          2                    NA                -0.5091398   -0.5771205   -0.4411590
24 months   COHORTS          INDIA                          3+                   NA                -0.7530828   -0.7990574   -0.7071083
24 months   COHORTS          PHILIPPINES                    1                    NA                -0.5384895   -0.6177702   -0.4592088
24 months   COHORTS          PHILIPPINES                    2                    NA                -0.5811765   -0.6541762   -0.5081768
24 months   COHORTS          PHILIPPINES                    3+                   NA                -0.6483357   -0.6984875   -0.5981840
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.2054872   -1.3701523   -1.0408220
24 months   GMS-Nepal        NEPAL                          2                    NA                -1.1389231   -1.3120878   -0.9657584
24 months   GMS-Nepal        NEPAL                          3+                   NA                -1.0951982   -1.2279806   -0.9624159
24 months   Keneba           GAMBIA                         1                    NA                -0.7427859   -0.9002662   -0.5853056
24 months   Keneba           GAMBIA                         2                    NA                -0.7875995   -0.9380261   -0.6371730
24 months   Keneba           GAMBIA                         3+                   NA                -0.7879374   -0.8474705   -0.7284044
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.8713507   -1.0145879   -0.7281136
24 months   PROVIDE          BANGLADESH                     2                    NA                -0.8677700   -0.9959631   -0.7395768
24 months   PROVIDE          BANGLADESH                     3+                   NA                -0.9566452   -1.1182734   -0.7950170
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.1334161   -1.2935830   -0.9732493
24 months   ZVITAMBO         ZIMBABWE                       2                    NA                -1.1402439   -1.3148753   -0.9656125
24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                -1.2689189   -1.4478586   -1.0899793


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       COHORTS          INDIA                          NA                   NA                -0.9498080   -0.9874148   -0.9122013
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       Keneba           GAMBIA                         NA                   NA                -1.2037220   -1.2694226   -1.1380213
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed     INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5156349   -0.5414936   -0.4897762
6 months    COHORTS          GUATEMALA                      NA                   NA                 0.1940810    0.1226351    0.2655269
6 months    COHORTS          INDIA                          NA                   NA                -0.7068611   -0.7417800   -0.6719423
6 months    COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    GMS-Nepal        NEPAL                          NA                   NA                -0.6038416   -0.6899448   -0.5177384
6 months    Keneba           GAMBIA                         NA                   NA                -0.1873900   -0.2456638   -0.1291162
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0797179    0.0266621    0.1327737
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3106432    0.2849661    0.3363203
24 months   COHORTS          GUATEMALA                      NA                   NA                -0.2813755   -0.3354674   -0.2272835
24 months   COHORTS          INDIA                          NA                   NA                -0.6564729   -0.6914450   -0.6215007
24 months   COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.1363107   -1.2252817   -1.0473398
24 months   Keneba           GAMBIA                         NA                   NA                -0.7834078   -0.8357743   -0.7310414
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1817824   -1.2809226   -1.0826422


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      2                    1                  0.0613974   -0.3154116    0.4382064
Birth       COHORTS          GUATEMALA                      3+                   1                  0.1501733   -0.1593016    0.4596481
Birth       COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          2                    1                  0.2120992    0.0946355    0.3295628
Birth       COHORTS          INDIA                          3+                   1                  0.2576190    0.1533312    0.3619068
Birth       COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    2                    1                  0.3627179    0.2275351    0.4979007
Birth       COHORTS          PHILIPPINES                    3+                   1                  0.5569260    0.4426454    0.6712065
Birth       GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          2                    1                  0.2722421    0.0352942    0.5091900
Birth       GMS-Nepal        NEPAL                          3+                   1                  0.4228986    0.2202284    0.6255687
Birth       Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         2                    1                  0.1680836   -0.1007913    0.4369586
Birth       Keneba           GAMBIA                         3+                   1                  0.2551380    0.0392957    0.4709803
Birth       PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     2                    1                  0.2373953    0.0594943    0.4152962
Birth       PROVIDE          BANGLADESH                     3+                   1                  0.2157841    0.0249216    0.4066465
Birth       SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          2                    1                  0.1147723    0.0243566    0.2051880
Birth       SAS-CompFeed     INDIA                          3+                   1                  0.2828524    0.1234266    0.4422781
Birth       ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       2                    1                  0.3049813    0.2438775    0.3660851
Birth       ZVITAMBO         ZIMBABWE                       3+                   1                  0.3400837    0.2768855    0.4032820
6 months    COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      2                    1                 -0.0851390   -0.3486310    0.1783530
6 months    COHORTS          GUATEMALA                      3+                   1                 -0.1609761   -0.3751623    0.0532101
6 months    COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          2                    1                  0.0419250   -0.0632175    0.1470674
6 months    COHORTS          INDIA                          3+                   1                 -0.1718736   -0.2649468   -0.0788005
6 months    COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    2                    1                 -0.0214753   -0.1409844    0.0980337
6 months    COHORTS          PHILIPPINES                    3+                   1                 -0.1410605   -0.2455867   -0.0365344
6 months    GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          2                    1                 -0.2656983   -0.5002473   -0.0311494
6 months    GMS-Nepal        NEPAL                          3+                   1                 -0.2855200   -0.4801327   -0.0909073
6 months    Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         2                    1                 -0.1243233   -0.3647925    0.1161459
6 months    Keneba           GAMBIA                         3+                   1                 -0.3175772   -0.4977600   -0.1373943
6 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     2                    1                 -0.0420836   -0.2383039    0.1541366
6 months    PROVIDE          BANGLADESH                     3+                   1                 -0.2530604   -0.4593156   -0.0468052
6 months    SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          2                    1                 -0.1051739   -0.2086042   -0.0017436
6 months    SAS-CompFeed     INDIA                          3+                   1                 -0.1508469   -0.2528162   -0.0488777
6 months    SAS-FoodSuppl    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          2                    1                  1.2336310    0.7435624    1.7236995
6 months    SAS-FoodSuppl    INDIA                          3+                   1                  0.8834884    0.4130958    1.3538809
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0168112   -0.1140403    0.1476628
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0224225   -0.1074245    0.1522696
6 months    ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       2                    1                 -0.0683477   -0.1301970   -0.0064983
6 months    ZVITAMBO         ZIMBABWE                       3+                   1                 -0.1019130   -0.1638267   -0.0399993
24 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      2                    1                 -0.0314760   -0.2295276    0.1665756
24 months   COHORTS          GUATEMALA                      3+                   1                  0.0471585   -0.1066967    0.2010138
24 months   COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          2                    1                  0.0303076   -0.0783996    0.1390148
24 months   COHORTS          INDIA                          3+                   1                 -0.2136354   -0.3101213   -0.1171495
24 months   COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    2                    1                 -0.0426870   -0.1504570    0.0650830
24 months   COHORTS          PHILIPPINES                    3+                   1                 -0.1098463   -0.2036579   -0.0160346
24 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          2                    1                  0.0665641   -0.1723933    0.3055215
24 months   GMS-Nepal        NEPAL                          3+                   1                  0.1102889   -0.1012430    0.3218209
24 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         2                    1                 -0.0448136   -0.2625938    0.1729665
24 months   Keneba           GAMBIA                         3+                   1                 -0.0451515   -0.2135090    0.1232059
24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     2                    1                  0.0035808   -0.1886440    0.1958056
24 months   PROVIDE          BANGLADESH                     3+                   1                 -0.0852945   -0.3012587    0.1306698
24 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0068278   -0.2437867    0.2301312
24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.1355028   -0.3756544    0.1046489


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    NA                 0.1176444   -0.1494645    0.3847533
Birth       COHORTS          INDIA                          1                    NA                 0.2031873    0.1193242    0.2870503
Birth       COHORTS          PHILIPPINES                    1                    NA                 0.3899624    0.3045012    0.4754237
Birth       GMS-Nepal        NEPAL                          1                    NA                 0.2611245    0.1261605    0.3960885
Birth       Keneba           GAMBIA                         1                    NA                 0.2180588    0.0274056    0.4087121
Birth       PROVIDE          BANGLADESH                     1                    NA                 0.1412443    0.0447751    0.2377136
Birth       SAS-CompFeed     INDIA                          1                    NA                 0.1655797    0.0679520    0.2632074
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                 0.1831100    0.1534010    0.2128189
6 months    COHORTS          GUATEMALA                      1                    NA                -0.1279645   -0.3100879    0.0541590
6 months    COHORTS          INDIA                          1                    NA                -0.0876169   -0.1614339   -0.0137999
6 months    COHORTS          PHILIPPINES                    1                    NA                -0.0843137   -0.1626675   -0.0059598
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.2028285   -0.3353563   -0.0703008
6 months    Keneba           GAMBIA                         1                    NA                -0.2598931   -0.4171583   -0.1026280
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0838995   -0.1951353    0.0273362
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.0961803   -0.1675004   -0.0248602
6 months    SAS-FoodSuppl    INDIA                          1                    NA                 0.9335564    0.4796129    1.3874999
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0129383   -0.0617637    0.0876404
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0510519   -0.0822438   -0.0198600
24 months   COHORTS          GUATEMALA                      1                    NA                 0.0288042   -0.0991829    0.1567912
24 months   COHORTS          INDIA                          1                    NA                -0.1170255   -0.1945607   -0.0394902
24 months   COHORTS          PHILIPPINES                    1                    NA                -0.0714697   -0.1418593   -0.0010800
24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0691764   -0.0741919    0.2125448
24 months   Keneba           GAMBIA                         1                    NA                -0.0406219   -0.1909679    0.1097240
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0215163   -0.1328448    0.0898122
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0483663   -0.1762760    0.0795435
