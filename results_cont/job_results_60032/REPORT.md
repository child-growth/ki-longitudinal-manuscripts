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

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        sex       n_cell       n
----------  ---------------  -----------------------------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Female        46      92
Birth       CMC-V-BCS-2002   INDIA                          Male          46      92
Birth       CMIN             BANGLADESH                     Female        11      26
Birth       CMIN             BANGLADESH                     Male          15      26
Birth       COHORTS          GUATEMALA                      Female       404     852
Birth       COHORTS          GUATEMALA                      Male         448     852
Birth       COHORTS          INDIA                          Female      3195    6640
Birth       COHORTS          INDIA                          Male        3445    6640
Birth       COHORTS          PHILIPPINES                    Female      1433    3050
Birth       COHORTS          PHILIPPINES                    Male        1617    3050
Birth       CONTENT          PERU                           Female         0       2
Birth       CONTENT          PERU                           Male           2       2
Birth       EE               PAKISTAN                       Female       122     240
Birth       EE               PAKISTAN                       Male         118     240
Birth       GMS-Nepal        NEPAL                          Female       328     696
Birth       GMS-Nepal        NEPAL                          Male         368     696
Birth       IRC              INDIA                          Female       173     388
Birth       IRC              INDIA                          Male         215     388
Birth       JiVitA-3         BANGLADESH                     Female     11043   22455
Birth       JiVitA-3         BANGLADESH                     Male       11412   22455
Birth       JiVitA-4         BANGLADESH                     Female      1389    2823
Birth       JiVitA-4         BANGLADESH                     Male        1434    2823
Birth       Keneba           GAMBIA                         Female       740    1543
Birth       Keneba           GAMBIA                         Male         803    1543
Birth       MAL-ED           BANGLADESH                     Female       118     231
Birth       MAL-ED           BANGLADESH                     Male         113     231
Birth       MAL-ED           BRAZIL                         Female        34      65
Birth       MAL-ED           BRAZIL                         Male          31      65
Birth       MAL-ED           INDIA                          Female        23      47
Birth       MAL-ED           INDIA                          Male          24      47
Birth       MAL-ED           NEPAL                          Female        17      27
Birth       MAL-ED           NEPAL                          Male          10      27
Birth       MAL-ED           PERU                           Female       116     233
Birth       MAL-ED           PERU                           Male         117     233
Birth       MAL-ED           SOUTH AFRICA                   Female        58     123
Birth       MAL-ED           SOUTH AFRICA                   Male          65     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female        70     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male          55     125
Birth       NIH-Birth        BANGLADESH                     Female       286     608
Birth       NIH-Birth        BANGLADESH                     Male         322     608
Birth       NIH-Crypto       BANGLADESH                     Female       368     732
Birth       NIH-Crypto       BANGLADESH                     Male         364     732
Birth       PROBIT           BELARUS                        Female      6711   13893
Birth       PROBIT           BELARUS                        Male        7182   13893
Birth       PROVIDE          BANGLADESH                     Female       256     539
Birth       PROVIDE          BANGLADESH                     Male         283     539
Birth       ResPak           PAKISTAN                       Female        20      42
Birth       ResPak           PAKISTAN                       Male          22      42
Birth       SAS-CompFeed     INDIA                          Female       585    1252
Birth       SAS-CompFeed     INDIA                          Male         667    1252
Birth       ZVITAMBO         ZIMBABWE                       Female      6753   13875
Birth       ZVITAMBO         ZIMBABWE                       Male        7122   13875
6 months    CMC-V-BCS-2002   INDIA                          Female       186     369
6 months    CMC-V-BCS-2002   INDIA                          Male         183     369
6 months    CMIN             BANGLADESH                     Female       106     243
6 months    CMIN             BANGLADESH                     Male         137     243
6 months    COHORTS          GUATEMALA                      Female       456     961
6 months    COHORTS          GUATEMALA                      Male         505     961
6 months    COHORTS          INDIA                          Female      3287    6860
6 months    COHORTS          INDIA                          Male        3573    6860
6 months    COHORTS          PHILIPPINES                    Female      1276    2708
6 months    COHORTS          PHILIPPINES                    Male        1432    2708
6 months    CONTENT          PERU                           Female       109     215
6 months    CONTENT          PERU                           Male         106     215
6 months    EE               PAKISTAN                       Female       182     373
6 months    EE               PAKISTAN                       Male         191     373
6 months    GMS-Nepal        NEPAL                          Female       273     564
6 months    GMS-Nepal        NEPAL                          Male         291     564
6 months    Guatemala BSC    GUATEMALA                      Female       153     299
6 months    Guatemala BSC    GUATEMALA                      Male         146     299
6 months    IRC              INDIA                          Female       183     407
6 months    IRC              INDIA                          Male         224     407
6 months    JiVitA-3         BANGLADESH                     Female      8249   16811
6 months    JiVitA-3         BANGLADESH                     Male        8562   16811
6 months    JiVitA-4         BANGLADESH                     Female      2407    4831
6 months    JiVitA-4         BANGLADESH                     Male        2424    4831
6 months    Keneba           GAMBIA                         Female      1011    2089
6 months    Keneba           GAMBIA                         Male        1078    2089
6 months    LCNI-5           MALAWI                         Female       420     839
6 months    LCNI-5           MALAWI                         Male         419     839
6 months    MAL-ED           BANGLADESH                     Female       123     241
6 months    MAL-ED           BANGLADESH                     Male         118     241
6 months    MAL-ED           BRAZIL                         Female       103     209
6 months    MAL-ED           BRAZIL                         Male         106     209
6 months    MAL-ED           INDIA                          Female       130     236
6 months    MAL-ED           INDIA                          Male         106     236
6 months    MAL-ED           NEPAL                          Female       110     236
6 months    MAL-ED           NEPAL                          Male         126     236
6 months    MAL-ED           PERU                           Female       126     273
6 months    MAL-ED           PERU                           Male         147     273
6 months    MAL-ED           SOUTH AFRICA                   Female       126     254
6 months    MAL-ED           SOUTH AFRICA                   Male         128     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female       126     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male         121     247
6 months    NIH-Birth        BANGLADESH                     Female       245     537
6 months    NIH-Birth        BANGLADESH                     Male         292     537
6 months    NIH-Crypto       BANGLADESH                     Female       362     715
6 months    NIH-Crypto       BANGLADESH                     Male         353     715
6 months    PROBIT           BELARUS                        Female      7619   15760
6 months    PROBIT           BELARUS                        Male        8141   15760
6 months    PROVIDE          BANGLADESH                     Female       288     604
6 months    PROVIDE          BANGLADESH                     Male         316     604
6 months    ResPak           PAKISTAN                       Female       115     239
6 months    ResPak           PAKISTAN                       Male         124     239
6 months    SAS-CompFeed     INDIA                          Female       609    1336
6 months    SAS-CompFeed     INDIA                          Male         727    1336
6 months    SAS-FoodSuppl    INDIA                          Female       201     380
6 months    SAS-FoodSuppl    INDIA                          Male         179     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female      1003    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male        1026    2029
6 months    ZVITAMBO         ZIMBABWE                       Female      4201    8669
6 months    ZVITAMBO         ZIMBABWE                       Male        4468    8669
24 months   CMC-V-BCS-2002   INDIA                          Female       186     371
24 months   CMC-V-BCS-2002   INDIA                          Male         185     371
24 months   CMIN             BANGLADESH                     Female       104     242
24 months   CMIN             BANGLADESH                     Male         138     242
24 months   COHORTS          GUATEMALA                      Female       512    1070
24 months   COHORTS          GUATEMALA                      Male         558    1070
24 months   COHORTS          INDIA                          Female      2543    5337
24 months   COHORTS          INDIA                          Male        2794    5337
24 months   COHORTS          PHILIPPINES                    Female      1158    2445
24 months   COHORTS          PHILIPPINES                    Male        1287    2445
24 months   CONTENT          PERU                           Female        81     164
24 months   CONTENT          PERU                           Male          83     164
24 months   EE               PAKISTAN                       Female        79     167
24 months   EE               PAKISTAN                       Male          88     167
24 months   GMS-Nepal        NEPAL                          Female       228     488
24 months   GMS-Nepal        NEPAL                          Male         260     488
24 months   IRC              INDIA                          Female       185     409
24 months   IRC              INDIA                          Male         224     409
24 months   JiVitA-3         BANGLADESH                     Female      4168    8632
24 months   JiVitA-3         BANGLADESH                     Male        4464    8632
24 months   JiVitA-4         BANGLADESH                     Female      2376    4752
24 months   JiVitA-4         BANGLADESH                     Male        2376    4752
24 months   Keneba           GAMBIA                         Female       822    1725
24 months   Keneba           GAMBIA                         Male         903    1725
24 months   LCNI-5           MALAWI                         Female       294     579
24 months   LCNI-5           MALAWI                         Male         285     579
24 months   MAL-ED           BANGLADESH                     Female       104     212
24 months   MAL-ED           BANGLADESH                     Male         108     212
24 months   MAL-ED           BRAZIL                         Female        79     169
24 months   MAL-ED           BRAZIL                         Male          90     169
24 months   MAL-ED           INDIA                          Female       122     227
24 months   MAL-ED           INDIA                          Male         105     227
24 months   MAL-ED           NEPAL                          Female       106     228
24 months   MAL-ED           NEPAL                          Male         122     228
24 months   MAL-ED           PERU                           Female        91     201
24 months   MAL-ED           PERU                           Male         110     201
24 months   MAL-ED           SOUTH AFRICA                   Female       118     238
24 months   MAL-ED           SOUTH AFRICA                   Male         120     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female       106     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male         108     214
24 months   NIH-Birth        BANGLADESH                     Female       195     429
24 months   NIH-Birth        BANGLADESH                     Male         234     429
24 months   NIH-Crypto       BANGLADESH                     Female       260     514
24 months   NIH-Crypto       BANGLADESH                     Male         254     514
24 months   PROBIT           BELARUS                        Female      1955    4035
24 months   PROBIT           BELARUS                        Male        2080    4035
24 months   PROVIDE          BANGLADESH                     Female       279     578
24 months   PROVIDE          BANGLADESH                     Male         299     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female         3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male           3       6
24 months   ZVITAMBO         ZIMBABWE                       Female       808    1640
24 months   ZVITAMBO         ZIMBABWE                       Male         832    1640


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CONTENT, country: PERU
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/bc58983d-ed46-432b-9648-179153604dd8/5f15585c-6811-49e3-bb5c-39940d274024/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bc58983d-ed46-432b-9648-179153604dd8/5f15585c-6811-49e3-bb5c-39940d274024/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/bc58983d-ed46-432b-9648-179153604dd8/5f15585c-6811-49e3-bb5c-39940d274024/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Female               NA                -0.8177174   -1.0962275   -0.5392073
Birth       CMC-V-BCS-2002   INDIA                          Male                 NA                -1.1046739   -1.4309358   -0.7784120
Birth       CMIN             BANGLADESH                     Female               NA                -1.2172727   -2.2808205   -0.1537250
Birth       CMIN             BANGLADESH                     Male                 NA                -2.3680000   -3.0313114   -1.7046886
Birth       COHORTS          GUATEMALA                      Female               NA                 0.0562871   -0.0618744    0.1744486
Birth       COHORTS          GUATEMALA                      Male                 NA                 0.1959598    0.0774572    0.3144625
Birth       COHORTS          INDIA                          Female               NA                -0.6308670   -0.6708060   -0.5909279
Birth       COHORTS          INDIA                          Male                 NA                -0.7060929   -0.7457261   -0.6664597
Birth       COHORTS          PHILIPPINES                    Female               NA                -0.1657990   -0.2226577   -0.1089404
Birth       COHORTS          PHILIPPINES                    Male                 NA                -0.3228262   -0.3761862   -0.2694662
Birth       EE               PAKISTAN                       Female               NA                -1.8350000   -2.1055735   -1.5644265
Birth       EE               PAKISTAN                       Male                 NA                -1.8876271   -2.1462086   -1.6290456
Birth       GMS-Nepal        NEPAL                          Female               NA                -1.1108841   -1.2222475   -0.9995208
Birth       GMS-Nepal        NEPAL                          Male                 NA                -1.0622283   -1.1764309   -0.9480256
Birth       IRC              INDIA                          Female               NA                -0.2318497   -0.4792851    0.0155857
Birth       IRC              INDIA                          Male                 NA                -0.3693488   -0.5799839   -0.1587138
Birth       JiVitA-3         BANGLADESH                     Female               NA                -1.5626822   -1.5865892   -1.5387752
Birth       JiVitA-3         BANGLADESH                     Male                 NA                -1.6152830   -1.6407066   -1.5898595
Birth       JiVitA-4         BANGLADESH                     Female               NA                -1.5068467   -1.5743599   -1.4393334
Birth       JiVitA-4         BANGLADESH                     Male                 NA                -1.5392190   -1.6107326   -1.4677054
Birth       Keneba           GAMBIA                         Female               NA                 0.0250068   -0.0682465    0.1182600
Birth       Keneba           GAMBIA                         Male                 NA                 0.0361457   -0.0508563    0.1231477
Birth       MAL-ED           BANGLADESH                     Female               NA                -1.1477119   -1.3395222   -0.9559015
Birth       MAL-ED           BANGLADESH                     Male                 NA                -1.0871681   -1.2751949   -0.8991414
Birth       MAL-ED           BRAZIL                         Female               NA                -0.5811765   -1.0120707   -0.1502822
Birth       MAL-ED           BRAZIL                         Male                 NA                -0.7800000   -1.1106226   -0.4493774
Birth       MAL-ED           INDIA                          Female               NA                -0.9995652   -1.4150452   -0.5840852
Birth       MAL-ED           INDIA                          Male                 NA                -1.3991667   -1.7995612   -0.9987721
Birth       MAL-ED           NEPAL                          Female               NA                -1.0447059   -1.4613541   -0.6280577
Birth       MAL-ED           NEPAL                          Male                 NA                -0.5280000   -1.1289570    0.0729570
Birth       MAL-ED           PERU                           Female               NA                -0.8701724   -1.0360483   -0.7042965
Birth       MAL-ED           PERU                           Male                 NA                -0.8952991   -1.0612085   -0.7293898
Birth       MAL-ED           SOUTH AFRICA                   Female               NA                -0.7489655   -1.0498180   -0.4481131
Birth       MAL-ED           SOUTH AFRICA                   Male                 NA                -0.5270769   -0.7725872   -0.2815667
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                -1.1544286   -1.4411323   -0.8677249
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 NA                -1.1570909   -1.4645019   -0.8496800
Birth       NIH-Birth        BANGLADESH                     Female               NA                -0.8834790   -1.0104496   -0.7565084
Birth       NIH-Birth        BANGLADESH                     Male                 NA                -0.9732453   -1.0969360   -0.8495546
Birth       NIH-Crypto       BANGLADESH                     Female               NA                -0.8850815   -0.9855410   -0.7846220
Birth       NIH-Crypto       BANGLADESH                     Male                 NA                -0.9341758   -1.0357295   -0.8326222
Birth       PROBIT           BELARUS                        Female               NA                 1.3386336    1.1799021    1.4973651
Birth       PROBIT           BELARUS                        Male                 NA                 1.2860331    1.1241702    1.4478961
Birth       PROVIDE          BANGLADESH                     Female               NA                -0.8354687   -0.9427236   -0.7282139
Birth       PROVIDE          BANGLADESH                     Male                 NA                -0.9300000   -1.0346447   -0.8253553
Birth       ResPak           PAKISTAN                       Female               NA                -0.6115000   -1.2961892    0.0731892
Birth       ResPak           PAKISTAN                       Male                 NA                -1.3150000   -1.8049544   -0.8250456
Birth       SAS-CompFeed     INDIA                          Female               NA                -1.4169915   -1.5142597   -1.3197232
Birth       SAS-CompFeed     INDIA                          Male                 NA                -1.4440780   -1.5279779   -1.3601780
Birth       ZVITAMBO         ZIMBABWE                       Female               NA                -0.4458315   -0.4755906   -0.4160724
Birth       ZVITAMBO         ZIMBABWE                       Male                 NA                -0.5518927   -0.5802248   -0.5235607
6 months    CMC-V-BCS-2002   INDIA                          Female               NA                -1.2582796   -1.4447070   -1.0718522
6 months    CMC-V-BCS-2002   INDIA                          Male                 NA                -1.5913297   -1.8009014   -1.3817580
6 months    CMIN             BANGLADESH                     Female               NA                -1.7247642   -1.9080650   -1.5414633
6 months    CMIN             BANGLADESH                     Male                 NA                -1.8306083   -2.0294468   -1.6317698
6 months    COHORTS          GUATEMALA                      Female               NA                -1.7062281   -1.7999324   -1.6125238
6 months    COHORTS          GUATEMALA                      Male                 NA                -1.9146139   -2.0118047   -1.8174230
6 months    COHORTS          INDIA                          Female               NA                -0.9402647   -0.9785913   -0.9019380
6 months    COHORTS          INDIA                          Male                 NA                -1.0488973   -1.0888218   -1.0089727
6 months    COHORTS          PHILIPPINES                    Female               NA                -0.9996395   -1.0580535   -0.9412254
6 months    COHORTS          PHILIPPINES                    Male                 NA                -1.2661522   -1.3251954   -1.2071090
6 months    CONTENT          PERU                           Female               NA                -0.2548303   -0.4196801   -0.0899804
6 months    CONTENT          PERU                           Male                 NA                -0.3028915   -0.5083128   -0.0974702
6 months    EE               PAKISTAN                       Female               NA                -1.9813004   -2.1381774   -1.8244233
6 months    EE               PAKISTAN                       Male                 NA                -2.1809948   -2.3583332   -2.0036564
6 months    GMS-Nepal        NEPAL                          Female               NA                -1.3097070   -1.4121571   -1.2072568
6 months    GMS-Nepal        NEPAL                          Male                 NA                -1.3894273   -1.5065043   -1.2723502
6 months    Guatemala BSC    GUATEMALA                      Female               NA                -1.4435512   -1.5838123   -1.3032901
6 months    Guatemala BSC    GUATEMALA                      Male                 NA                -1.6859247   -1.8566740   -1.5151754
6 months    IRC              INDIA                          Female               NA                -1.1162204   -1.3191330   -0.9133078
6 months    IRC              INDIA                          Male                 NA                -1.3309598   -1.5018524   -1.1600672
6 months    JiVitA-3         BANGLADESH                     Female               NA                -1.2153861   -1.2434961   -1.1872762
6 months    JiVitA-3         BANGLADESH                     Male                 NA                -1.4072285   -1.4368368   -1.3776201
6 months    JiVitA-4         BANGLADESH                     Female               NA                -1.2654549   -1.3141184   -1.2167915
6 months    JiVitA-4         BANGLADESH                     Male                 NA                -1.4235767   -1.4748764   -1.3722770
6 months    Keneba           GAMBIA                         Female               NA                -0.8618017   -0.9261681   -0.7974353
6 months    Keneba           GAMBIA                         Male                 NA                -0.9438409   -1.0124720   -0.8752099
6 months    LCNI-5           MALAWI                         Female               NA                -1.4613810   -1.5510884   -1.3716735
6 months    LCNI-5           MALAWI                         Male                 NA                -1.8594749   -1.9624183   -1.7565316
6 months    MAL-ED           BANGLADESH                     Female               NA                -1.0552575   -1.2035719   -0.9069430
6 months    MAL-ED           BANGLADESH                     Male                 NA                -1.3610734   -1.5395530   -1.1825939
6 months    MAL-ED           BRAZIL                         Female               NA                 0.1547735   -0.0362740    0.3458209
6 months    MAL-ED           BRAZIL                         Male                 NA                -0.0565881   -0.2693481    0.1561719
6 months    MAL-ED           INDIA                          Female               NA                -1.0957564   -1.2349512   -0.9565616
6 months    MAL-ED           INDIA                          Male                 NA                -1.3535063   -1.5508715   -1.1561410
6 months    MAL-ED           NEPAL                          Female               NA                -0.5274697   -0.6759674   -0.3789720
6 months    MAL-ED           NEPAL                          Male                 NA                -0.5913624   -0.7575414   -0.4251835
6 months    MAL-ED           PERU                           Female               NA                -1.0940873   -1.2364523   -0.9517223
6 months    MAL-ED           PERU                           Male                 NA                -1.5204478   -1.6725868   -1.3683089
6 months    MAL-ED           SOUTH AFRICA                   Female               NA                -0.9936508   -1.1679300   -0.8193716
6 months    MAL-ED           SOUTH AFRICA                   Male                 NA                -1.1319010   -1.3173573   -0.9464448
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                -1.2650794   -1.4339066   -1.0962521
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 NA                -1.4766942   -1.6510639   -1.3023245
6 months    NIH-Birth        BANGLADESH                     Female               NA                -1.3289116   -1.4479956   -1.2098275
6 months    NIH-Birth        BANGLADESH                     Male                 NA                -1.4732220   -1.6016246   -1.3448195
6 months    NIH-Crypto       BANGLADESH                     Female               NA                -1.1480110   -1.2477156   -1.0483065
6 months    NIH-Crypto       BANGLADESH                     Male                 NA                -1.2506374   -1.3526745   -1.1486003
6 months    PROBIT           BELARUS                        Female               NA                 0.2034211    0.1188856    0.2879565
6 months    PROBIT           BELARUS                        Male                 NA                -0.0006471   -0.1070306    0.1057363
6 months    PROVIDE          BANGLADESH                     Female               NA                -1.0384722   -1.1385186   -0.9384259
6 months    PROVIDE          BANGLADESH                     Male                 NA                -1.1401951   -1.2491128   -1.0312775
6 months    ResPak           PAKISTAN                       Female               NA                -1.4384058   -1.7138941   -1.1629175
6 months    ResPak           PAKISTAN                       Male                 NA                -1.4249194   -1.7290295   -1.1208092
6 months    SAS-CompFeed     INDIA                          Female               NA                -1.3897947   -1.5139117   -1.2656778
6 months    SAS-CompFeed     INDIA                          Male                 NA                -1.4119601   -1.5386996   -1.2852207
6 months    SAS-FoodSuppl    INDIA                          Female               NA                -1.8985075   -2.0487323   -1.7482826
6 months    SAS-FoodSuppl    INDIA                          Male                 NA                -1.8988827   -2.0700541   -1.7277113
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.4382270   -0.5045834   -0.3718706
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                -0.6462922   -0.7176296   -0.5749548
6 months    ZVITAMBO         ZIMBABWE                       Female               NA                -0.7621483   -0.7971923   -0.7271043
6 months    ZVITAMBO         ZIMBABWE                       Male                 NA                -0.9674194   -1.0042513   -0.9305876
24 months   CMC-V-BCS-2002   INDIA                          Female               NA                -2.4372043   -2.5628633   -2.3115453
24 months   CMC-V-BCS-2002   INDIA                          Male                 NA                -2.6811892   -2.8336249   -2.5287535
24 months   CMIN             BANGLADESH                     Female               NA                -2.5861058   -2.7568136   -2.4153980
24 months   CMIN             BANGLADESH                     Male                 NA                -2.4543116   -2.6316397   -2.2769835
24 months   COHORTS          GUATEMALA                      Female               NA                -2.9410937   -3.0309327   -2.8512548
24 months   COHORTS          GUATEMALA                      Male                 NA                -3.0394265   -3.1307157   -2.9481373
24 months   COHORTS          INDIA                          Female               NA                -2.1178411   -2.1636527   -2.0720296
24 months   COHORTS          INDIA                          Male                 NA                -2.1216213   -2.1678974   -2.0753453
24 months   COHORTS          PHILIPPINES                    Female               NA                -2.3782383   -2.4426785   -2.3137981
24 months   COHORTS          PHILIPPINES                    Male                 NA                -2.4463947   -2.5090799   -2.3837095
24 months   CONTENT          PERU                           Female               NA                -0.7011728   -0.9122468   -0.4900989
24 months   CONTENT          PERU                           Male                 NA                -0.6728916   -0.8913834   -0.4543997
24 months   EE               PAKISTAN                       Female               NA                -2.5839662   -2.7850001   -2.3829324
24 months   EE               PAKISTAN                       Male                 NA                -2.7472159   -2.9505924   -2.5438395
24 months   GMS-Nepal        NEPAL                          Female               NA                -1.8796857   -1.9997043   -1.7596670
24 months   GMS-Nepal        NEPAL                          Male                 NA                -1.8941987   -2.0151894   -1.7732081
24 months   IRC              INDIA                          Female               NA                -1.7517748   -1.8870325   -1.6165171
24 months   IRC              INDIA                          Male                 NA                -1.8375967   -1.9667503   -1.7084431
24 months   JiVitA-3         BANGLADESH                     Female               NA                -1.9835725   -2.0198075   -1.9473374
24 months   JiVitA-3         BANGLADESH                     Male                 NA                -2.0417294   -2.0772049   -2.0062539
24 months   JiVitA-4         BANGLADESH                     Female               NA                -1.7520833   -1.7982719   -1.7058947
24 months   JiVitA-4         BANGLADESH                     Male                 NA                -1.8093603   -1.8569280   -1.7617926
24 months   Keneba           GAMBIA                         Female               NA                -1.5409605   -1.6117746   -1.4701464
24 months   Keneba           GAMBIA                         Male                 NA                -1.6106388   -1.6805435   -1.5407340
24 months   LCNI-5           MALAWI                         Female               NA                -1.7680272   -1.8711829   -1.6648715
24 months   LCNI-5           MALAWI                         Male                 NA                -2.0080000   -2.1320238   -1.8839762
24 months   MAL-ED           BANGLADESH                     Female               NA                -1.9266346   -2.1056694   -1.7475998
24 months   MAL-ED           BANGLADESH                     Male                 NA                -2.0282407   -2.2067844   -1.8496971
24 months   MAL-ED           BRAZIL                         Female               NA                 0.2203165    0.0089920    0.4316409
24 months   MAL-ED           BRAZIL                         Male                 NA                -0.1819074   -0.4322943    0.0684795
24 months   MAL-ED           INDIA                          Female               NA                -1.7281967   -1.8900401   -1.5663534
24 months   MAL-ED           INDIA                          Male                 NA                -2.0697619   -2.2572252   -1.8822986
24 months   MAL-ED           NEPAL                          Female               NA                -1.3728774   -1.5319444   -1.2138104
24 months   MAL-ED           NEPAL                          Male                 NA                -1.2508607   -1.4256242   -1.0760971
24 months   MAL-ED           PERU                           Female               NA                -1.5668864   -1.7424652   -1.3913077
24 months   MAL-ED           PERU                           Male                 NA                -1.9060000   -2.0675509   -1.7444491
24 months   MAL-ED           SOUTH AFRICA                   Female               NA                -1.4534463   -1.6355594   -1.2713333
24 months   MAL-ED           SOUTH AFRICA                   Male                 NA                -1.8334792   -2.0257378   -1.6412206
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                -2.5228302   -2.7109254   -2.3347350
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 NA                -2.7660185   -2.9573368   -2.5747002
24 months   NIH-Birth        BANGLADESH                     Female               NA                -2.2329829   -2.3760807   -2.0898851
24 months   NIH-Birth        BANGLADESH                     Male                 NA                -2.2074537   -2.3531155   -2.0617919
24 months   NIH-Crypto       BANGLADESH                     Female               NA                -1.4562308   -1.5797162   -1.3327453
24 months   NIH-Crypto       BANGLADESH                     Male                 NA                -1.4259449   -1.5385081   -1.3133817
24 months   PROBIT           BELARUS                        Female               NA                -0.0724689   -0.2808181    0.1358803
24 months   PROBIT           BELARUS                        Male                 NA                -0.2117933   -0.6423065    0.2187200
24 months   PROVIDE          BANGLADESH                     Female               NA                -1.6136380   -1.7292206   -1.4980554
24 months   PROVIDE          BANGLADESH                     Male                 NA                -1.5919565   -1.7115709   -1.4723421
24 months   ZVITAMBO         ZIMBABWE                       Female               NA                -1.4470173   -1.5251270   -1.3689077
24 months   ZVITAMBO         ZIMBABWE                       Male                 NA                -1.7595493   -1.8410424   -1.6780561


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       CMIN             BANGLADESH                     NA                   NA                -1.8811538   -2.5124807   -1.2498270
Birth       COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       COHORTS          INDIA                          NA                   NA                -0.6698961   -0.6980556   -0.6417365
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       EE               PAKISTAN                       NA                   NA                -1.8608750   -2.0482045   -1.6735455
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5894148   -1.6086362   -1.5701935
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -1.5232908   -1.5723277   -1.4742539
Birth       Keneba           GAMBIA                         NA                   NA                 0.0308036   -0.0328378    0.0944451
Birth       MAL-ED           BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       MAL-ED           BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED           INDIA                          NA                   NA                -1.2036170   -1.4976814   -0.9095527
Birth       MAL-ED           NEPAL                          NA                   NA                -0.8533333   -1.2104864   -0.4961803
Birth       MAL-ED           PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.6317073   -0.8249555   -0.4384591
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROBIT           BELARUS                        NA                   NA                 1.3114417    1.1524752    1.4704082
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ResPak           PAKISTAN                       NA                   NA                -0.9800000   -1.4086438   -0.5513562
Birth       SAS-CompFeed     INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5002724   -0.5208163   -0.4797285
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    CMIN             BANGLADESH                     NA                   NA                -1.7844376   -1.9222926   -1.6465825
6 months    COHORTS          GUATEMALA                      NA                   NA                -1.8157336   -1.8837688   -1.7476985
6 months    COHORTS          INDIA                          NA                   NA                -0.9968455   -1.0246180   -0.9690730
6 months    COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    CONTENT          PERU                           NA                   NA                -0.2785256   -0.4098735   -0.1471776
6 months    EE               PAKISTAN                       NA                   NA                -2.0835567   -2.2027557   -1.9643578
6 months    GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -1.5619008   -1.6727702   -1.4510313
6 months    IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3130932   -1.3362359   -1.2899505
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -1.3447940   -1.3820261   -1.3075620
6 months    Keneba           GAMBIA                         NA                   NA                -0.9041369   -0.9513363   -0.8569376
6 months    LCNI-5           MALAWI                         NA                   NA                -1.6601907   -1.7297701   -1.5906113
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           INDIA                          NA                   NA                -1.2115254   -1.3298727   -1.0931782
6 months    MAL-ED           NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0633202   -1.1909180   -0.9357224
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        NA                   NA                 0.0980074    0.0062724    0.1897424
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ResPak           PAKISTAN                       NA                   NA                -1.4314086   -1.6374838   -1.2253335
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5434389   -0.5924056   -0.4944722
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8679450   -0.8935071   -0.8423828
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   CMIN             BANGLADESH                     NA                   NA                -2.5109504   -2.6361514   -2.3857494
24 months   COHORTS          GUATEMALA                      NA                   NA                -2.9923738   -3.0565851   -2.9281626
24 months   COHORTS          INDIA                          NA                   NA                -2.1198201   -2.1524299   -2.0872104
24 months   COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   CONTENT          PERU                           NA                   NA                -0.6868598   -0.8388476   -0.5348719
24 months   EE               PAKISTAN                       NA                   NA                -2.6699900   -2.8138051   -2.5261749
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0136481   -2.0413552   -1.9859409
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.7807218   -1.8162478   -1.7451958
24 months   Keneba           GAMBIA                         NA                   NA                -1.5774356   -1.6272400   -1.5276311
24 months   LCNI-5           MALAWI                         NA                   NA                -1.8861485   -1.9671802   -1.8051169
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED           NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED           PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        NA                   NA                -0.1442891   -0.4253755    0.1367972
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6055701   -1.6625562   -1.5485840


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          Male                 Female            -0.2869565   -0.7159259    0.1420128
Birth       CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
Birth       CMIN             BANGLADESH                     Male                 Female            -1.1507273   -2.4041689    0.1027144
Birth       COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Male                 Female             0.1396727   -0.0276743    0.3070197
Birth       COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Male                 Female            -0.0752259   -0.1314924   -0.0189594
Birth       COHORTS          PHILIPPINES                    Female               Female             0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Male                 Female            -0.1570272   -0.2350028   -0.0790516
Birth       EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       Male                 Female            -0.0526271   -0.4268923    0.3216380
Birth       GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Male                 Female             0.0486559   -0.1108560    0.2081677
Birth       IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Male                 Female            -0.1374991   -0.4624474    0.1874492
Birth       JiVitA-3         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Male                 Female            -0.0526008   -0.0836148   -0.0215868
Birth       JiVitA-4         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Male                 Female            -0.0323723   -0.1309520    0.0662074
Birth       Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         Male                 Female             0.0111389   -0.1163974    0.1386753
Birth       MAL-ED           BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Male                 Female             0.0605437   -0.2080550    0.3291424
Birth       MAL-ED           BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Male                 Female            -0.1988235   -0.7419452    0.3442982
Birth       MAL-ED           INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Male                 Female            -0.3996014   -0.9766105    0.1774076
Birth       MAL-ED           NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          Male                 Female             0.5167059   -0.2145567    1.2479685
Birth       MAL-ED           PERU                           Female               Female             0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Male                 Female            -0.0251267   -0.2597343    0.2094808
Birth       MAL-ED           SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Male                 Female             0.2218886   -0.1664250    0.6102022
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0026623   -0.4230199    0.4176952
Birth       NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Male                 Female            -0.0897663   -0.2670258    0.0874931
Birth       NIH-Crypto       BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Male                 Female            -0.0490943   -0.1919413    0.0937527
Birth       PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Male                 Female            -0.0526004   -0.0954859   -0.0097150
Birth       PROVIDE          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Male                 Female            -0.0945313   -0.2443782    0.0553157
Birth       ResPak           PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       Male                 Female            -0.7035000   -1.5454350    0.1384350
Birth       SAS-CompFeed     INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Male                 Female            -0.0270865   -0.1163544    0.0621814
Birth       ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Male                 Female            -0.1060612   -0.1471503   -0.0649722
6 months    CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Male                 Female            -0.3330501   -0.6135416   -0.0525586
6 months    CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6 months    CMIN             BANGLADESH                     Male                 Female            -0.1058441   -0.3762807    0.1645925
6 months    COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Male                 Female            -0.2083858   -0.3433916   -0.0733800
6 months    COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Male                 Female            -0.1086326   -0.1639761   -0.0532891
6 months    COHORTS          PHILIPPINES                    Female               Female             0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Male                 Female            -0.2665127   -0.3495687   -0.1834567
6 months    CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           Male                 Female            -0.0480612   -0.3114495    0.2153271
6 months    EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       Male                 Female            -0.1996944   -0.4364629    0.0370741
6 months    GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Male                 Female            -0.0797203   -0.2352937    0.0758531
6 months    Guatemala BSC    GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      Male                 Female            -0.2423735   -0.4633452   -0.0214018
6 months    IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Male                 Female            -0.2147394   -0.4800276    0.0505488
6 months    JiVitA-3         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Male                 Female            -0.1918423   -0.2266318   -0.1570529
6 months    JiVitA-4         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Male                 Female            -0.1581218   -0.2248880   -0.0913556
6 months    Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         Male                 Female            -0.0820392   -0.1761310    0.0120525
6 months    LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Male                 Female            -0.3980940   -0.5346398   -0.2615482
6 months    MAL-ED           BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Male                 Female            -0.3058160   -0.5378766   -0.0737554
6 months    MAL-ED           BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Male                 Female            -0.2113615   -0.4973090    0.0745859
6 months    MAL-ED           INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Male                 Female            -0.2577499   -0.4992623   -0.0162375
6 months    MAL-ED           NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Male                 Female            -0.0638927   -0.2867537    0.1589683
6 months    MAL-ED           PERU                           Female               Female             0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Male                 Female            -0.4263605   -0.6347209   -0.2180001
6 months    MAL-ED           SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Male                 Female            -0.1382502   -0.3927443    0.1162438
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.2116148   -0.4543234    0.0310937
6 months    NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Male                 Female            -0.1443105   -0.3194339    0.0308130
6 months    NIH-Crypto       BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Male                 Female            -0.1026263   -0.2452888    0.0400361
6 months    PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Male                 Female            -0.2040682   -0.2621445   -0.1459918
6 months    PROVIDE          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Male                 Female            -0.1017229   -0.2496159    0.0461700
6 months    ResPak           PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       Male                 Female             0.0134864   -0.3968510    0.4238238
6 months    SAS-CompFeed     INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Male                 Female            -0.0221654   -0.2178476    0.1735169
6 months    SAS-FoodSuppl    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          Male                 Female            -0.0003752   -0.2281188    0.2273684
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.2080652   -0.3054932   -0.1106373
6 months    ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Male                 Female            -0.2052711   -0.2561108   -0.1544315
24 months   CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Male                 Female            -0.2439849   -0.4415370   -0.0464328
24 months   CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
24 months   CMIN             BANGLADESH                     Male                 Female             0.1317942   -0.1143489    0.3779372
24 months   COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Male                 Female            -0.0983328   -0.2264138    0.0297483
24 months   COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Male                 Female            -0.0037802   -0.0688968    0.0613364
24 months   COHORTS          PHILIPPINES                    Female               Female             0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Male                 Female            -0.0681564   -0.1580562    0.0217434
24 months   CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           Male                 Female             0.0282813   -0.2755129    0.3320755
24 months   EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       Male                 Female            -0.1632497   -0.4492157    0.1227164
24 months   GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Male                 Female            -0.0145130   -0.1849337    0.1559077
24 months   IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Male                 Female            -0.0858220   -0.2728388    0.1011949
24 months   JiVitA-3         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Male                 Female            -0.0581569   -0.1037382   -0.0125757
24 months   JiVitA-4         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Male                 Female            -0.0572769   -0.1185226    0.0039688
24 months   Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         Male                 Female            -0.0696783   -0.1691837    0.0298270
24 months   LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Male                 Female            -0.2399728   -0.4012892   -0.0786564
24 months   MAL-ED           BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Male                 Female            -0.1016061   -0.3544525    0.1512403
24 months   MAL-ED           BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Male                 Female            -0.4022239   -0.7298694   -0.0745783
24 months   MAL-ED           INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Male                 Female            -0.3415652   -0.5892258   -0.0939046
24 months   MAL-ED           NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Male                 Female             0.1220167   -0.1142979    0.3583313
24 months   MAL-ED           PERU                           Female               Female             0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Male                 Female            -0.3391136   -0.5777065   -0.1005206
24 months   MAL-ED           SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Male                 Female            -0.3800328   -0.6448507   -0.1152149
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.2431883   -0.5114839    0.0251072
24 months   NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Male                 Female             0.0255292   -0.1786627    0.2297211
24 months   NIH-Crypto       BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Male                 Female             0.0302859   -0.1368043    0.1973761
24 months   PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Male                 Female            -0.1393244   -0.5169822    0.2383334
24 months   PROVIDE          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Male                 Female             0.0216815   -0.1446523    0.1880153
24 months   ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Male                 Female            -0.3125320   -0.4254135   -0.1996504


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Female               NA                -0.1434783   -0.3599793    0.0730228
Birth       CMIN             BANGLADESH                     Female               NA                -0.6638811   -1.4205807    0.0928184
Birth       COHORTS          GUATEMALA                      Female               NA                 0.0734429   -0.0146764    0.1615623
Birth       COHORTS          INDIA                          Female               NA                -0.0390291   -0.0682356   -0.0098226
Birth       COHORTS          PHILIPPINES                    Female               NA                -0.0832502   -0.1246835   -0.0418168
Birth       EE               PAKISTAN                       Female               NA                -0.0258750   -0.2099189    0.1581689
Birth       GMS-Nepal        NEPAL                          Female               NA                 0.0257261   -0.0586328    0.1100850
Birth       IRC              INDIA                          Female               NA                -0.0761915   -0.2563818    0.1039987
Birth       JiVitA-3         BANGLADESH                     Female               NA                -0.0267326   -0.0425081   -0.0109571
Birth       JiVitA-4         BANGLADESH                     Female               NA                -0.0164442   -0.0664801    0.0335918
Birth       Keneba           GAMBIA                         Female               NA                 0.0057969   -0.0605755    0.0721692
Birth       MAL-ED           BANGLADESH                     Female               NA                 0.0296166   -0.1018340    0.1610673
Birth       MAL-ED           BRAZIL                         Female               NA                -0.0948235   -0.3549909    0.1653438
Birth       MAL-ED           INDIA                          Female               NA                -0.2040518   -0.5042962    0.0961926
Birth       MAL-ED           NEPAL                          Female               NA                 0.1913725   -0.0959461    0.4786912
Birth       MAL-ED           PERU                           Female               NA                -0.0126173   -0.1304356    0.1052010
Birth       MAL-ED           SOUTH AFRICA                   Female               NA                 0.1172582   -0.0888873    0.3234037
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0011714   -0.1861289    0.1837861
Birth       NIH-Birth        BANGLADESH                     Female               NA                -0.0475407   -0.1414859    0.0464045
Birth       NIH-Crypto       BANGLADESH                     Female               NA                -0.0244130   -0.0954685    0.0466425
Birth       PROBIT           BELARUS                        Female               NA                -0.0271919   -0.0495852   -0.0047985
Birth       PROVIDE          BANGLADESH                     Female               NA                -0.0496333   -0.1284109    0.0291444
Birth       ResPak           PAKISTAN                       Female               NA                -0.3685000   -0.8224375    0.0854375
Birth       SAS-CompFeed     INDIA                          Female               NA                -0.0144303   -0.0619966    0.0331361
Birth       ZVITAMBO         ZIMBABWE                       Female               NA                -0.0544410   -0.0755503   -0.0333316
6 months    CMC-V-BCS-2002   INDIA                          Female               NA                -0.1651712   -0.3053133   -0.0250291
6 months    CMIN             BANGLADESH                     Female               NA                -0.0596734   -0.2122851    0.0929383
6 months    COHORTS          GUATEMALA                      Female               NA                -0.1095055   -0.1807550   -0.0382561
6 months    COHORTS          INDIA                          Female               NA                -0.0565808   -0.0854348   -0.0277268
6 months    COHORTS          PHILIPPINES                    Female               NA                -0.1409329   -0.1851382   -0.0967276
6 months    CONTENT          PERU                           Female               NA                -0.0236953   -0.1535918    0.1062011
6 months    EE               PAKISTAN                       Female               NA                -0.1022564   -0.2239207    0.0194079
6 months    GMS-Nepal        NEPAL                          Female               NA                -0.0411323   -0.1214689    0.0392044
6 months    Guatemala BSC    GUATEMALA                      Female               NA                -0.1183496   -0.2271221   -0.0095771
6 months    IRC              INDIA                          Female               NA                -0.1181858   -0.2645614    0.0281897
6 months    JiVitA-3         BANGLADESH                     Female               NA                -0.0977071   -0.1154288   -0.0799854
6 months    JiVitA-4         BANGLADESH                     Female               NA                -0.0793391   -0.1129328   -0.0457454
6 months    Keneba           GAMBIA                         Female               NA                -0.0423352   -0.0909218    0.0062514
6 months    LCNI-5           MALAWI                         Female               NA                -0.1988098   -0.2683202   -0.1292993
6 months    MAL-ED           BANGLADESH                     Female               NA                -0.1497356   -0.2649930   -0.0344782
6 months    MAL-ED           BRAZIL                         Female               NA                -0.1071977   -0.2529329    0.0385375
6 months    MAL-ED           INDIA                          Female               NA                -0.1157690   -0.2254764   -0.0060616
6 months    MAL-ED           NEPAL                          Female               NA                -0.0341122   -0.1531671    0.0849426
6 months    MAL-ED           PERU                           Female               NA                -0.2295788   -0.3445811   -0.1145764
6 months    MAL-ED           SOUTH AFRICA                   Female               NA                -0.0696694   -0.1982009    0.0588621
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.1036656   -0.2232959    0.0159647
6 months    NIH-Birth        BANGLADESH                     Female               NA                -0.0784705   -0.1738901    0.0169491
6 months    NIH-Crypto       BANGLADESH                     Female               NA                -0.0506673   -0.1212011    0.0198666
6 months    PROBIT           BELARUS                        Female               NA                -0.1054136   -0.1353365   -0.0754908
6 months    PROVIDE          BANGLADESH                     Female               NA                -0.0532193   -0.1306999    0.0242614
6 months    ResPak           PAKISTAN                       Female               NA                 0.0069971   -0.2058993    0.2198936
6 months    SAS-CompFeed     INDIA                          Female               NA                -0.0120615   -0.1187284    0.0946053
6 months    SAS-FoodSuppl    INDIA                          Female               NA                -0.0001767   -0.1074560    0.1071025
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.1052119   -0.1546857   -0.0557381
6 months    ZVITAMBO         ZIMBABWE                       Female               NA                -0.1057967   -0.1320883   -0.0795051
24 months   CMC-V-BCS-2002   INDIA                          Female               NA                -0.1216636   -0.2209546   -0.0223727
24 months   CMIN             BANGLADESH                     Female               NA                 0.0751554   -0.0654487    0.2157594
24 months   COHORTS          GUATEMALA                      Female               NA                -0.0512801   -0.1181386    0.0155785
24 months   COHORTS          INDIA                          Female               NA                -0.0019790   -0.0360686    0.0321106
24 months   COHORTS          PHILIPPINES                    Female               NA                -0.0358762   -0.0832169    0.0114645
24 months   CONTENT          PERU                           Female               NA                 0.0143131   -0.1394517    0.1680779
24 months   EE               PAKISTAN                       Female               NA                -0.0860238   -0.2372217    0.0651742
24 months   GMS-Nepal        NEPAL                          Female               NA                -0.0077324   -0.0985326    0.0830678
24 months   IRC              INDIA                          Female               NA                -0.0470027   -0.1495114    0.0555060
24 months   JiVitA-3         BANGLADESH                     Female               NA                -0.0300756   -0.0536179   -0.0065333
24 months   JiVitA-4         BANGLADESH                     Female               NA                -0.0286385   -0.0592063    0.0019294
24 months   Keneba           GAMBIA                         Female               NA                -0.0364751   -0.0885899    0.0156397
24 months   LCNI-5           MALAWI                         Female               NA                -0.1181213   -0.1981259   -0.0381168
24 months   MAL-ED           BANGLADESH                     Female               NA                -0.0517616   -0.1807524    0.0772291
24 months   MAL-ED           BRAZIL                         Female               NA                -0.2142021   -0.3913071   -0.0370970
24 months   MAL-ED           INDIA                          Female               NA                -0.1579927   -0.2746812   -0.0413042
24 months   MAL-ED           NEPAL                          Female               NA                 0.0652896   -0.0614070    0.1919863
24 months   MAL-ED           PERU                           Female               NA                -0.1855845   -0.3182369   -0.0529322
24 months   MAL-ED           SOUTH AFRICA                   Female               NA                -0.1916132   -0.3273085   -0.0559179
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.1227306   -0.2591131    0.0136519
24 months   NIH-Birth        BANGLADESH                     Female               NA                 0.0139250   -0.0974589    0.1253089
24 months   NIH-Crypto       BANGLADESH                     Female               NA                 0.0149662   -0.0676141    0.0975464
24 months   PROBIT           BELARUS                        Female               NA                -0.0718203   -0.2618982    0.1182577
24 months   PROVIDE          BANGLADESH                     Female               NA                 0.0112158   -0.0748333    0.0972650
24 months   ZVITAMBO         ZIMBABWE                       Female               NA                -0.1585528   -0.2163170   -0.1007886
