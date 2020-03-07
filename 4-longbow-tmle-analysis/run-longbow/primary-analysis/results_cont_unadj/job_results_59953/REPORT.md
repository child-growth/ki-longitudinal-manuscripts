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

**Intervention Variable:** enwast

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        enwast    n_cell       n
----------  ---------------  -----------------------------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          0             75      87
Birth       CMC-V-BCS-2002   INDIA                          1             12      87
Birth       CMIN             BANGLADESH                     0             15      19
Birth       CMIN             BANGLADESH                     1              4      19
Birth       COHORTS          GUATEMALA                      0            564     762
Birth       COHORTS          GUATEMALA                      1            198     762
Birth       COHORTS          INDIA                          0           5097    6231
Birth       COHORTS          INDIA                          1           1134    6231
Birth       COHORTS          PHILIPPINES                    0           2448    2910
Birth       COHORTS          PHILIPPINES                    1            462    2910
Birth       CONTENT          PERU                           0              2       2
Birth       CONTENT          PERU                           1              0       2
Birth       EE               PAKISTAN                       0            155     180
Birth       EE               PAKISTAN                       1             25     180
Birth       GMS-Nepal        NEPAL                          0            509     645
Birth       GMS-Nepal        NEPAL                          1            136     645
Birth       IRC              INDIA                          0            251     364
Birth       IRC              INDIA                          1            113     364
Birth       JiVitA-3         BANGLADESH                     0          16041   18062
Birth       JiVitA-3         BANGLADESH                     1           2021   18062
Birth       JiVitA-4         BANGLADESH                     0           2157    2399
Birth       JiVitA-4         BANGLADESH                     1            242    2399
Birth       Keneba           GAMBIA                         0           1102    1488
Birth       Keneba           GAMBIA                         1            386    1488
Birth       MAL-ED           BANGLADESH                     0            179     215
Birth       MAL-ED           BANGLADESH                     1             36     215
Birth       MAL-ED           BRAZIL                         0             60      62
Birth       MAL-ED           BRAZIL                         1              2      62
Birth       MAL-ED           INDIA                          0             40      45
Birth       MAL-ED           INDIA                          1              5      45
Birth       MAL-ED           NEPAL                          0             24      26
Birth       MAL-ED           NEPAL                          1              2      26
Birth       MAL-ED           PERU                           0            223     228
Birth       MAL-ED           PERU                           1              5     228
Birth       MAL-ED           SOUTH AFRICA                   0            108     121
Birth       MAL-ED           SOUTH AFRICA                   1             13     121
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            114     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1     115
Birth       NIH-Birth        BANGLADESH                     0            407     580
Birth       NIH-Birth        BANGLADESH                     1            173     580
Birth       NIH-Crypto       BANGLADESH                     0            535     713
Birth       NIH-Crypto       BANGLADESH                     1            178     713
Birth       PROBIT           BELARUS                        0          10909   13886
Birth       PROBIT           BELARUS                        1           2977   13886
Birth       PROVIDE          BANGLADESH                     0            415     532
Birth       PROVIDE          BANGLADESH                     1            117     532
Birth       ResPak           PAKISTAN                       0             34      38
Birth       ResPak           PAKISTAN                       1              4      38
Birth       SAS-CompFeed     INDIA                          0            985    1105
Birth       SAS-CompFeed     INDIA                          1            120    1105
Birth       ZVITAMBO         ZIMBABWE                       0          10856   13092
Birth       ZVITAMBO         ZIMBABWE                       1           2236   13092
6 months    CMC-V-BCS-2002   INDIA                          0            272     363
6 months    CMC-V-BCS-2002   INDIA                          1             91     363
6 months    CMIN             BANGLADESH                     0            218     232
6 months    CMIN             BANGLADESH                     1             14     232
6 months    COHORTS          GUATEMALA                      0            725     901
6 months    COHORTS          GUATEMALA                      1            176     901
6 months    COHORTS          INDIA                          0           5364    6508
6 months    COHORTS          INDIA                          1           1144    6508
6 months    COHORTS          PHILIPPINES                    0           2191    2593
6 months    COHORTS          PHILIPPINES                    1            402    2593
6 months    CONTENT          PERU                           0            214     215
6 months    CONTENT          PERU                           1              1     215
6 months    EE               PAKISTAN                       0            255     292
6 months    EE               PAKISTAN                       1             37     292
6 months    GMS-Nepal        NEPAL                          0            421     528
6 months    GMS-Nepal        NEPAL                          1            107     528
6 months    Guatemala BSC    GUATEMALA                      0            293     299
6 months    Guatemala BSC    GUATEMALA                      1              6     299
6 months    IRC              INDIA                          0            268     382
6 months    IRC              INDIA                          1            114     382
6 months    JiVitA-3         BANGLADESH                     0          12724   14244
6 months    JiVitA-3         BANGLADESH                     1           1520   14244
6 months    JiVitA-4         BANGLADESH                     0           4010    4410
6 months    JiVitA-4         BANGLADESH                     1            400    4410
6 months    Keneba           GAMBIA                         0           1641    2029
6 months    Keneba           GAMBIA                         1            388    2029
6 months    LCNI-5           MALAWI                         0            825     839
6 months    LCNI-5           MALAWI                         1             14     839
6 months    MAL-ED           BANGLADESH                     0            188     229
6 months    MAL-ED           BANGLADESH                     1             41     229
6 months    MAL-ED           BRAZIL                         0            192     199
6 months    MAL-ED           BRAZIL                         1              7     199
6 months    MAL-ED           INDIA                          0            189     232
6 months    MAL-ED           INDIA                          1             43     232
6 months    MAL-ED           NEPAL                          0            201     232
6 months    MAL-ED           NEPAL                          1             31     232
6 months    MAL-ED           PERU                           0            261     266
6 months    MAL-ED           PERU                           1              5     266
6 months    MAL-ED           SOUTH AFRICA                   0            235     253
6 months    MAL-ED           SOUTH AFRICA                   1             18     253
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            235     238
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              3     238
6 months    NIH-Birth        BANGLADESH                     0            368     514
6 months    NIH-Birth        BANGLADESH                     1            146     514
6 months    NIH-Crypto       BANGLADESH                     0            517     694
6 months    NIH-Crypto       BANGLADESH                     1            177     694
6 months    PROBIT           BELARUS                        0          12689   15753
6 months    PROBIT           BELARUS                        1           3064   15753
6 months    PROVIDE          BANGLADESH                     0            472     597
6 months    PROVIDE          BANGLADESH                     1            125     597
6 months    ResPak           PAKISTAN                       0            185     228
6 months    ResPak           PAKISTAN                       1             43     228
6 months    SAS-CompFeed     INDIA                          0           1074    1213
6 months    SAS-CompFeed     INDIA                          1            139    1213
6 months    SAS-FoodSuppl    INDIA                          0            311     380
6 months    SAS-FoodSuppl    INDIA                          1             69     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1901    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            119    2020
6 months    ZVITAMBO         ZIMBABWE                       0           6904    8174
6 months    ZVITAMBO         ZIMBABWE                       1           1270    8174
24 months   CMC-V-BCS-2002   INDIA                          0            272     364
24 months   CMC-V-BCS-2002   INDIA                          1             92     364
24 months   CMIN             BANGLADESH                     0            217     232
24 months   CMIN             BANGLADESH                     1             15     232
24 months   COHORTS          GUATEMALA                      0            874    1027
24 months   COHORTS          GUATEMALA                      1            153    1027
24 months   COHORTS          INDIA                          0           4252    5070
24 months   COHORTS          INDIA                          1            818    5070
24 months   COHORTS          PHILIPPINES                    0           1989    2347
24 months   COHORTS          PHILIPPINES                    1            358    2347
24 months   CONTENT          PERU                           0            163     164
24 months   CONTENT          PERU                           1              1     164
24 months   EE               PAKISTAN                       0            115     137
24 months   EE               PAKISTAN                       1             22     137
24 months   GMS-Nepal        NEPAL                          0            365     455
24 months   GMS-Nepal        NEPAL                          1             90     455
24 months   IRC              INDIA                          0            269     383
24 months   IRC              INDIA                          1            114     383
24 months   JiVitA-3         BANGLADESH                     0           6422    7242
24 months   JiVitA-3         BANGLADESH                     1            820    7242
24 months   JiVitA-4         BANGLADESH                     0           3943    4315
24 months   JiVitA-4         BANGLADESH                     1            372    4315
24 months   Keneba           GAMBIA                         0           1354    1677
24 months   Keneba           GAMBIA                         1            323    1677
24 months   LCNI-5           MALAWI                         0            569     579
24 months   LCNI-5           MALAWI                         1             10     579
24 months   MAL-ED           BANGLADESH                     0            164     201
24 months   MAL-ED           BANGLADESH                     1             37     201
24 months   MAL-ED           BRAZIL                         0            154     160
24 months   MAL-ED           BRAZIL                         1              6     160
24 months   MAL-ED           INDIA                          0            180     223
24 months   MAL-ED           INDIA                          1             43     223
24 months   MAL-ED           NEPAL                          0            195     225
24 months   MAL-ED           NEPAL                          1             30     225
24 months   MAL-ED           PERU                           0            193     197
24 months   MAL-ED           PERU                           1              4     197
24 months   MAL-ED           SOUTH AFRICA                   0            221     237
24 months   MAL-ED           SOUTH AFRICA                   1             16     237
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            202     205
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              3     205
24 months   NIH-Birth        BANGLADESH                     0            293     409
24 months   NIH-Birth        BANGLADESH                     1            116     409
24 months   NIH-Crypto       BANGLADESH                     0            364     500
24 months   NIH-Crypto       BANGLADESH                     1            136     500
24 months   PROBIT           BELARUS                        0           3118    4032
24 months   PROBIT           BELARUS                        1            914    4032
24 months   PROVIDE          BANGLADESH                     0            452     570
24 months   PROVIDE          BANGLADESH                     1            118     570
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6
24 months   ZVITAMBO         ZIMBABWE                       0           1346    1505
24 months   ZVITAMBO         ZIMBABWE                       1            159    1505


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

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/b1d24700-63ad-42ef-9034-d80f8c427ac5/5fcc1baa-2bdd-4a70-923b-553ccadb7eaf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b1d24700-63ad-42ef-9034-d80f8c427ac5/5fcc1baa-2bdd-4a70-923b-553ccadb7eaf/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b1d24700-63ad-42ef-9034-d80f8c427ac5/5fcc1baa-2bdd-4a70-923b-553ccadb7eaf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.8024667   -0.9881514   -0.6167820
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -0.9254167   -1.6211412   -0.2296922
Birth       COHORTS          GUATEMALA                      0                    NA                 0.0463298   -0.0424159    0.1350755
Birth       COHORTS          GUATEMALA                      1                    NA                 0.7225253    0.5787376    0.8663129
Birth       COHORTS          INDIA                          0                    NA                -0.5515951   -0.5780832   -0.5251069
Birth       COHORTS          INDIA                          1                    NA                -0.3073104   -0.3724302   -0.2421907
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.2184477   -0.2547450   -0.1821504
Birth       COHORTS          PHILIPPINES                    1                    NA                 0.2183766    0.1141890    0.3225643
Birth       EE               PAKISTAN                       0                    NA                -1.3318710   -1.4721761   -1.1915658
Birth       EE               PAKISTAN                       1                    NA                -0.6584000   -1.3284013    0.0116013
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.9446758   -1.0213127   -0.8680390
Birth       GMS-Nepal        NEPAL                          1                    NA                -0.7883824   -0.9487455   -0.6280192
Birth       IRC              INDIA                          0                    NA                -0.5921514   -0.7120146   -0.4722882
Birth       IRC              INDIA                          1                    NA                 0.9509735    0.6637025    1.2382444
Birth       JiVitA-3         BANGLADESH                     0                    NA                -1.1888137   -1.2035251   -1.1741022
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.0942108   -1.1422880   -1.0461336
Birth       JiVitA-4         BANGLADESH                     0                    NA                -1.2283635   -1.2698403   -1.1868866
Birth       JiVitA-4         BANGLADESH                     1                    NA                -1.1416116   -1.3015792   -0.9816439
Birth       Keneba           GAMBIA                         0                    NA                -0.0568693   -0.1145426    0.0008040
Birth       Keneba           GAMBIA                         1                    NA                 0.6783420    0.5534396    0.8032443
Birth       MAL-ED           BANGLADESH                     0                    NA                -0.9985475   -1.1263859   -0.8707090
Birth       MAL-ED           BANGLADESH                     1                    NA                -0.7836111   -1.0977298   -0.4694924
Birth       MAL-ED           INDIA                          0                    NA                -1.0995000   -1.3601155   -0.8388845
Birth       MAL-ED           INDIA                          1                    NA                -0.9800000   -1.9772048    0.0172048
Birth       MAL-ED           PERU                           0                    NA                -0.8421525   -0.9539315   -0.7303735
Birth       MAL-ED           PERU                           1                    NA                -0.5260000   -1.5481689    0.4961689
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.6523148   -0.8186939   -0.4859357
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                 0.2123077   -0.3340824    0.7586978
Birth       NIH-Birth        BANGLADESH                     0                    NA                -0.8860688   -0.9713719   -0.8007657
Birth       NIH-Birth        BANGLADESH                     1                    NA                -0.6498266   -0.8334496   -0.4662035
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.8917196   -0.9668677   -0.8165715
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.7195506   -0.8662686   -0.5728325
Birth       PROBIT           BELARUS                        0                    NA                 1.0759923    0.9693511    1.1826335
Birth       PROBIT           BELARUS                        1                    NA                 2.1851663    2.0031646    2.3671679
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.8523855   -0.9325272   -0.7722439
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.8778632   -1.0509596   -0.7047669
Birth       SAS-CompFeed     INDIA                          0                    NA                -1.1599188   -1.2093604   -1.1104771
Birth       SAS-CompFeed     INDIA                          1                    NA                -1.1985833   -1.3184998   -1.0786668
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.4607185   -0.4783293   -0.4431077
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                 0.2389893    0.1837843    0.2941943
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.3827328   -1.5424479   -1.2230178
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -1.5407692   -1.8521110   -1.2294275
6 months    CMIN             BANGLADESH                     0                    NA                -1.6958639   -1.8328433   -1.5588845
6 months    CMIN             BANGLADESH                     1                    NA                -1.9139286   -2.5728735   -1.2549837
6 months    COHORTS          GUATEMALA                      0                    NA                -1.8339724   -1.9123121   -1.7556327
6 months    COHORTS          GUATEMALA                      1                    NA                -1.6346023   -1.7833214   -1.4858832
6 months    COHORTS          INDIA                          0                    NA                -0.9206339   -0.9500034   -0.8912643
6 months    COHORTS          INDIA                          1                    NA                -0.9408566   -1.0123962   -0.8693171
6 months    COHORTS          PHILIPPINES                    0                    NA                -1.1022729   -1.1472336   -1.0573122
6 months    COHORTS          PHILIPPINES                    1                    NA                -1.0416418   -1.1546030   -0.9286806
6 months    EE               PAKISTAN                       0                    NA                -1.7871438   -1.9112623   -1.6630253
6 months    EE               PAKISTAN                       1                    NA                -1.7888739   -2.0865455   -1.4912023
6 months    GMS-Nepal        NEPAL                          0                    NA                -1.2775534   -1.3623508   -1.1927561
6 months    GMS-Nepal        NEPAL                          1                    NA                -1.2664798   -1.4396290   -1.0933305
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -1.5321274   -1.6425348   -1.4217201
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -3.0158333   -3.4993139   -2.5323527
6 months    IRC              INDIA                          0                    NA                -1.1296580   -1.2801855   -0.9791305
6 months    IRC              INDIA                          1                    NA                -1.2673099   -1.5297698   -1.0048501
6 months    JiVitA-3         BANGLADESH                     0                    NA                -1.1285798   -1.1516270   -1.1055327
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.0991711   -1.1630907   -1.0352514
6 months    JiVitA-4         BANGLADESH                     0                    NA                -1.2406434   -1.2789633   -1.2023235
6 months    JiVitA-4         BANGLADESH                     1                    NA                -1.3051750   -1.4242457   -1.1861043
6 months    Keneba           GAMBIA                         0                    NA                -0.8780668   -0.9300412   -0.8260924
6 months    Keneba           GAMBIA                         1                    NA                -0.9498916   -1.0648585   -0.8349247
6 months    LCNI-5           MALAWI                         0                    NA                -1.6501212   -1.7191654   -1.5810771
6 months    LCNI-5           MALAWI                         1                    NA                -2.2535714   -2.9255091   -1.5816338
6 months    MAL-ED           BANGLADESH                     0                    NA                -1.1302926   -1.2589774   -1.0016078
6 months    MAL-ED           BANGLADESH                     1                    NA                -1.2658943   -1.5505912   -0.9811974
6 months    MAL-ED           BRAZIL                         0                    NA                 0.0897049   -0.0622819    0.2416917
6 months    MAL-ED           BRAZIL                         1                    NA                -0.1292857   -0.4801482    0.2215768
6 months    MAL-ED           INDIA                          0                    NA                -1.1907672   -1.3179432   -1.0635912
6 months    MAL-ED           INDIA                          1                    NA                -1.1906589   -1.4920246   -0.8892932
6 months    MAL-ED           NEPAL                          0                    NA                -0.4979602   -0.6162471   -0.3796733
6 months    MAL-ED           NEPAL                          1                    NA                -0.7803226   -1.0845069   -0.4761383
6 months    MAL-ED           PERU                           0                    NA                -1.3082471   -1.4186449   -1.1978493
6 months    MAL-ED           PERU                           1                    NA                -0.8746667   -1.3965179   -0.3528155
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -1.0513333   -1.1810283   -0.9216383
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                -1.0219444   -1.4943694   -0.5495195
6 months    NIH-Birth        BANGLADESH                     0                    NA                -1.3380412   -1.4367341   -1.2393484
6 months    NIH-Birth        BANGLADESH                     1                    NA                -1.3614840   -1.5397521   -1.1832159
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -1.1462573   -1.2258631   -1.0666514
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -1.1844633   -1.3311260   -1.0378006
6 months    PROBIT           BELARUS                        0                    NA                 0.0907922   -0.0062046    0.1877889
6 months    PROBIT           BELARUS                        1                    NA                 0.1315127    0.0039451    0.2590804
6 months    PROVIDE          BANGLADESH                     0                    NA                -1.0447811   -1.1264425   -0.9631197
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.1789200   -1.3473480   -1.0104920
6 months    ResPak           PAKISTAN                       0                    NA                -1.3975495   -1.6273513   -1.1677478
6 months    ResPak           PAKISTAN                       1                    NA                -1.5559302   -2.0760883   -1.0357722
6 months    SAS-CompFeed     INDIA                          0                    NA                -1.2504236   -1.3449359   -1.1559114
6 months    SAS-CompFeed     INDIA                          1                    NA                -1.4920504   -1.7353482   -1.2487525
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -1.8292283   -1.9509003   -1.7075563
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -2.2117391   -2.4967900   -1.9266883
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5467627   -0.5972356   -0.4962898
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4730812   -0.6623129   -0.2838496
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.7472190   -0.7748342   -0.7196038
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -1.1882087   -1.2548220   -1.1215953
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -2.5653125   -2.6761550   -2.4544700
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.5281703   -2.7451339   -2.3112067
24 months   CMIN             BANGLADESH                     0                    NA                -2.4824424   -2.6150108   -2.3498740
24 months   CMIN             BANGLADESH                     1                    NA                -2.5640000   -3.1193342   -2.0086658
24 months   COHORTS          GUATEMALA                      0                    NA                -3.0273455   -3.0985554   -2.9561357
24 months   COHORTS          GUATEMALA                      1                    NA                -2.8081046   -2.9718621   -2.6443470
24 months   COHORTS          INDIA                          0                    NA                -2.0774459   -2.1128603   -2.0420315
24 months   COHORTS          INDIA                          1                    NA                -2.0570049   -2.1455373   -1.9684725
24 months   COHORTS          PHILIPPINES                    0                    NA                -2.4077225   -2.4566256   -2.3588193
24 months   COHORTS          PHILIPPINES                    1                    NA                -2.2533520   -2.3732370   -2.1334669
24 months   EE               PAKISTAN                       0                    NA                -2.5870870   -2.7497815   -2.4243925
24 months   EE               PAKISTAN                       1                    NA                -2.6312121   -3.0096318   -2.2527925
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.8467032   -1.9424345   -1.7509719
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.8306296   -2.0359651   -1.6252941
24 months   IRC              INDIA                          0                    NA                -1.7168340   -1.8314872   -1.6021807
24 months   IRC              INDIA                          1                    NA                -1.8751608   -2.0502452   -1.7000764
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.8820243   -1.9126427   -1.8514059
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.8394512   -1.9135530   -1.7653494
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.7126046   -1.7505065   -1.6747027
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.7779032   -1.8842932   -1.6715133
24 months   Keneba           GAMBIA                         0                    NA                -1.5470721   -1.6033345   -1.4908098
24 months   Keneba           GAMBIA                         1                    NA                -1.6821486   -1.7940409   -1.5702563
24 months   LCNI-5           MALAWI                         0                    NA                -1.8746397   -1.9555083   -1.7937711
24 months   LCNI-5           MALAWI                         1                    NA                -2.5410000   -3.2329125   -1.8490875
24 months   MAL-ED           BANGLADESH                     0                    NA                -1.9393598   -2.0826179   -1.7961016
24 months   MAL-ED           BANGLADESH                     1                    NA                -1.8817568   -2.1663776   -1.5971359
24 months   MAL-ED           BRAZIL                         0                    NA                 0.0348377   -0.1411854    0.2108607
24 months   MAL-ED           BRAZIL                         1                    NA                -0.5908333   -1.2594074    0.0777407
24 months   MAL-ED           INDIA                          0                    NA                -1.8970833   -2.0322099   -1.7619568
24 months   MAL-ED           INDIA                          1                    NA                -1.7554651   -2.0786355   -1.4322947
24 months   MAL-ED           NEPAL                          0                    NA                -1.3035897   -1.4290983   -1.1780811
24 months   MAL-ED           NEPAL                          1                    NA                -1.2698333   -1.6544976   -0.8851691
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -1.6637368   -1.8002316   -1.5272420
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                -1.3652083   -2.0256955   -0.7047212
24 months   NIH-Birth        BANGLADESH                     0                    NA                -2.1863595   -2.3070412   -2.0656778
24 months   NIH-Birth        BANGLADESH                     1                    NA                -2.0866595   -2.2804501   -1.8928688
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -1.4125549   -1.5091512   -1.3159587
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -1.4109559   -1.5760564   -1.2458554
24 months   PROBIT           BELARUS                        0                    NA                -0.0961359   -0.4140158    0.2217440
24 months   PROBIT           BELARUS                        1                    NA                -0.3060886   -0.6041475   -0.0080298
24 months   PROVIDE          BANGLADESH                     0                    NA                -1.5800774   -1.6752433   -1.4849116
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.6169492   -1.7818167   -1.4520816
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -1.5275111   -1.5883713   -1.4666510
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.7026415   -1.8864797   -1.5188033


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.8194253   -1.0062738   -0.6325768
Birth       COHORTS          GUATEMALA                      NA                   NA                 0.2220341    0.1435838    0.3004845
Birth       COHORTS          INDIA                          NA                   NA                -0.5071369   -0.5319444   -0.4823294
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.1490962   -0.1843045   -0.1138879
Birth       EE               PAKISTAN                       NA                   NA                -1.2383333   -1.3946042   -1.0820625
Birth       GMS-Nepal        NEPAL                          NA                   NA                -0.9117209   -0.9811840   -0.8422578
Birth       IRC              INDIA                          NA                   NA                -0.1131044   -0.2551572    0.0289484
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.1782283   -1.1929469   -1.1635098
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -1.2196123   -1.2608853   -1.1783394
Birth       Keneba           GAMBIA                         NA                   NA                 0.1338508    0.0777935    0.1899081
Birth       MAL-ED           BANGLADESH                     NA                   NA                -0.9625581   -1.0817638   -0.8433525
Birth       MAL-ED           INDIA                          NA                   NA                -1.0862222   -1.3432542   -0.8291902
Birth       MAL-ED           PERU                           NA                   NA                -0.8352193   -0.9473216   -0.7231170
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.5594215   -0.7261377   -0.3927053
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -0.8156034   -0.8972149   -0.7339920
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.8487377   -0.9161997   -0.7812758
Birth       PROBIT           BELARUS                        NA                   NA                 1.3137865    1.1546333    1.4729398
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8579887   -0.9311892   -0.7847883
Birth       SAS-CompFeed     INDIA                          NA                   NA                -1.1641176   -1.2153187   -1.1129166
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.3412145   -0.3591726   -0.3232564
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4223508   -1.5654032   -1.2792984
6 months    CMIN             BANGLADESH                     NA                   NA                -1.7090230   -1.8439050   -1.5741410
6 months    COHORTS          GUATEMALA                      NA                   NA                -1.7950277   -1.8646284   -1.7254271
6 months    COHORTS          INDIA                          NA                   NA                -0.9241887   -0.9514678   -0.8969095
6 months    COHORTS          PHILIPPINES                    NA                   NA                -1.0928731   -1.1347142   -1.0510321
6 months    EE               PAKISTAN                       NA                   NA                -1.7873630   -1.9021295   -1.6725965
6 months    GMS-Nepal        NEPAL                          NA                   NA                -1.2753093   -1.3514861   -1.1991326
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -1.5619008   -1.6727702   -1.4510313
6 months    IRC              INDIA                          NA                   NA                -1.1707373   -1.3023712   -1.0391035
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.1254416   -1.1482406   -1.1026426
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -1.2464966   -1.2832103   -1.2097829
6 months    Keneba           GAMBIA                         NA                   NA                -0.8918017   -0.9392551   -0.8443483
6 months    LCNI-5           MALAWI                         NA                   NA                -1.6601907   -1.7297701   -1.5906113
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.1545706   -1.2720635   -1.0370777
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0820017   -0.0652646    0.2292679
6 months    MAL-ED           INDIA                          NA                   NA                -1.1907471   -1.3084496   -1.0730447
6 months    MAL-ED           NEPAL                          NA                   NA                -0.5356897   -0.6466309   -0.4247484
6 months    MAL-ED           PERU                           NA                   NA                -1.3000971   -1.4087542   -1.1914400
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0492424   -1.1743146   -0.9241702
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -1.3447001   -1.4316348   -1.2577653
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1560014   -1.2261266   -1.0858763
6 months    PROBIT           BELARUS                        NA                   NA                 0.0987124    0.0071839    0.1902410
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0728671   -1.1465641   -0.9991701
6 months    ResPak           PAKISTAN                       NA                   NA                -1.4274196   -1.6382670   -1.2165722
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.2781121   -1.3694457   -1.1867786
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5424220   -0.5912180   -0.4936261
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8157359   -0.8414876   -0.7899842
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5559249   -2.6552739   -2.4565759
24 months   CMIN             BANGLADESH                     NA                   NA                -2.4877155   -2.6168325   -2.3585986
24 months   COHORTS          GUATEMALA                      NA                   NA                -2.9946835   -3.0601854   -2.9291817
24 months   COHORTS          INDIA                          NA                   NA                -2.0741479   -2.1071054   -2.0411904
24 months   COHORTS          PHILIPPINES                    NA                   NA                -2.3841755   -2.4295300   -2.3388211
24 months   EE               PAKISTAN                       NA                   NA                -2.5941727   -2.7436756   -2.4446699
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.8435238   -1.9304004   -1.7566473
24 months   IRC              INDIA                          NA                   NA                -1.7639600   -1.8601530   -1.6677669
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.8772038   -1.9062064   -1.8482013
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.7182341   -1.7544244   -1.6820437
24 months   Keneba           GAMBIA                         NA                   NA                -1.5730887   -1.6234321   -1.5227452
24 months   LCNI-5           MALAWI                         NA                   NA                -1.8861485   -1.9671802   -1.8051169
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9287562   -2.0568859   -1.8006265
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0113750   -0.1608859    0.1836359
24 months   MAL-ED           INDIA                          NA                   NA                -1.8697758   -1.9956076   -1.7439440
24 months   MAL-ED           NEPAL                          NA                   NA                -1.2990889   -1.4193577   -1.1788201
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6435830   -1.7787856   -1.5083803
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -2.1580827   -2.2606216   -2.0555438
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4121200   -1.4955578   -1.3286822
24 months   PROBIT           BELARUS                        NA                   NA                -0.1437293   -0.4231910    0.1357324
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.5877105   -1.6705437   -1.5048773
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.5460133   -1.6038691   -1.4881575


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          1                    0                 -0.1229500   -0.8430273    0.5971273
Birth       COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      1                    0                  0.6761955    0.5072260    0.8451650
Birth       COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    0                  0.2442847    0.1739838    0.3145855
Birth       COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    1                    0                  0.4368243    0.3264950    0.5471537
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                  0.6734710   -0.0110634    1.3580053
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                  0.1562935   -0.0214410    0.3340280
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                  1.5431248    1.2318504    1.8543993
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                  0.0946029    0.0459076    0.1432982
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                  0.0867519   -0.0768120    0.2503158
Birth       Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         1                    0                  0.7352113    0.5976365    0.8727861
Birth       MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    0                  0.2149364   -0.1241996    0.5540724
Birth       MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          1                    0                  0.1195000   -0.9111978    1.1501978
Birth       MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    0                  0.3161525   -0.7121101    1.3444150
Birth       MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    0                  0.8646225    0.2934621    1.4357829
Birth       NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     1                    0                  0.2362422    0.0337723    0.4387121
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                  0.1721691    0.0073254    0.3370127
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                  1.1091740    0.9176081    1.3007398
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.0254777   -0.2162263    0.1652709
Birth       SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          1                    0                 -0.0386646   -0.1465003    0.0691712
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                  0.6997078    0.6417618    0.7576537
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.1580364   -0.5079544    0.1918816
6 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMIN             BANGLADESH                     1                    0                 -0.2180647   -0.8910964    0.4549671
6 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      1                    0                  0.1993701    0.0312795    0.3674608
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                 -0.0202228   -0.0975563    0.0571108
6 months    COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    1                    0                  0.0606311   -0.0609489    0.1822112
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -0.0017301   -0.3242418    0.3207816
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                  0.0110737   -0.1817248    0.2038721
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -1.4837059   -1.9796326   -0.9877792
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                 -0.1376520   -0.4402139    0.1649099
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                  0.0294088   -0.0345847    0.0934023
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.0645316   -0.1888797    0.0598165
6 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         1                    0                 -0.0718248   -0.1979942    0.0543446
6 months    LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         1                    0                 -0.6034502   -1.2789259    0.0720254
6 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    0                 -0.1356018   -0.4480311    0.1768276
6 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         1                    0                 -0.2189906   -0.6013575    0.1633763
6 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    0                  0.0001083   -0.3269927    0.3272092
6 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    0                 -0.2823624   -0.6087362    0.0440114
6 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    0                  0.4335805   -0.0998203    0.9669812
6 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                  0.0293889   -0.4605153    0.5192931
6 months    NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     1                    0                 -0.0234428   -0.2272069    0.1803212
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 -0.0382060   -0.2050803    0.1286683
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                  0.0407206   -0.0781727    0.1596138
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.1341389   -0.3213195    0.0530417
6 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       1                    0                 -0.1583807   -0.7270398    0.4102785
6 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          1                    0                 -0.2416267   -0.4836319    0.0003785
6 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          1                    0                 -0.3825108   -0.6924432   -0.0725785
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0736814   -0.1221658    0.2695286
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.4409897   -0.5131002   -0.3688791
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0371422   -0.2064953    0.2807798
24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMIN             BANGLADESH                     1                    0                 -0.0815576   -0.6524958    0.4893806
24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      1                    0                  0.2192410    0.0406706    0.3978114
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                  0.0204410   -0.0749118    0.1157938
24 months   COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    1                    0                  0.1543705    0.0248949    0.2838462
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                 -0.0441252   -0.4560365    0.3677861
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                  0.0160736   -0.2104814    0.2426286
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.1583269   -0.3676112    0.0509574
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                  0.0425731   -0.0354561    0.1206023
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 -0.0652986   -0.1768341    0.0462369
24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         1                    0                 -0.1350765   -0.2603176   -0.0098353
24 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         1                    0                 -0.6663603   -1.3629826    0.0302620
24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    0                  0.0576030   -0.2610377    0.3762437
24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         1                    0                 -0.6256710   -1.3170286    0.0656866
24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    0                  0.1416182   -0.2086649    0.4919013
24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    0                  0.0337564   -0.3708656    0.4383784
24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.2985285   -0.3759151    0.9729720
24 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     1                    0                  0.0997000   -0.1285956    0.3279957
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                  0.0015991   -0.1896835    0.1928816
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                 -0.2099527   -0.5616061    0.1417006
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.0368717   -0.2272341    0.1534907
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.1751304   -0.3687807    0.0185200


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.0169586   -0.1166830    0.0827658
Birth       COHORTS          GUATEMALA                      0                    NA                 0.1757043    0.1270053    0.2244034
Birth       COHORTS          INDIA                          0                    NA                 0.0444582    0.0314516    0.0574647
Birth       COHORTS          PHILIPPINES                    0                    NA                 0.0693515    0.0508996    0.0878034
Birth       EE               PAKISTAN                       0                    NA                 0.0935376   -0.0074735    0.1945488
Birth       GMS-Nepal        NEPAL                          0                    NA                 0.0329549   -0.0048430    0.0707528
Birth       IRC              INDIA                          0                    NA                 0.4790470    0.3576711    0.6004229
Birth       JiVitA-3         BANGLADESH                     0                    NA                 0.0105853    0.0050940    0.0160767
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.0087511   -0.0078239    0.0253262
Birth       Keneba           GAMBIA                         0                    NA                 0.1907201    0.1514530    0.2299873
Birth       MAL-ED           BANGLADESH                     0                    NA                 0.0359893   -0.0218052    0.0937839
Birth       MAL-ED           INDIA                          0                    NA                 0.0132778   -0.1017806    0.1283361
Birth       MAL-ED           PERU                           0                    NA                 0.0069332   -0.0194696    0.0333360
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                 0.0928933    0.0150442    0.1707424
Birth       NIH-Birth        BANGLADESH                     0                    NA                 0.0704653    0.0094352    0.1314955
Birth       NIH-Crypto       BANGLADESH                     0                    NA                 0.0429819    0.0014664    0.0844974
Birth       PROBIT           BELARUS                        0                    NA                 0.2377942    0.1399671    0.3356214
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0056032   -0.0475631    0.0363568
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.0041989   -0.0161312    0.0077334
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                 0.1195040    0.1086279    0.1303802
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0396179   -0.1276217    0.0483859
6 months    CMIN             BANGLADESH                     0                    NA                -0.0131591   -0.0543214    0.0280032
6 months    COHORTS          GUATEMALA                      0                    NA                 0.0389447    0.0057065    0.0721829
6 months    COHORTS          INDIA                          0                    NA                -0.0035548   -0.0171501    0.0100404
6 months    COHORTS          PHILIPPINES                    0                    NA                 0.0093998   -0.0094680    0.0282676
6 months    EE               PAKISTAN                       0                    NA                -0.0002192   -0.0410855    0.0406470
6 months    GMS-Nepal        NEPAL                          0                    NA                 0.0022441   -0.0368286    0.0413168
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0297734   -0.0564518   -0.0030950
6 months    IRC              INDIA                          0                    NA                -0.0410794   -0.1315940    0.0494352
6 months    JiVitA-3         BANGLADESH                     0                    NA                 0.0031383   -0.0036848    0.0099613
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0058532   -0.0171526    0.0054461
6 months    Keneba           GAMBIA                         0                    NA                -0.0137349   -0.0378932    0.0104235
6 months    LCNI-5           MALAWI                         0                    NA                -0.0100695   -0.0277488    0.0076098
6 months    MAL-ED           BANGLADESH                     0                    NA                -0.0242780   -0.0806207    0.0320646
6 months    MAL-ED           BRAZIL                         0                    NA                -0.0077032   -0.0222800    0.0068736
6 months    MAL-ED           INDIA                          0                    NA                 0.0000201   -0.0606064    0.0606465
6 months    MAL-ED           NEPAL                          0                    NA                -0.0377295   -0.0830654    0.0076065
6 months    MAL-ED           PERU                           0                    NA                 0.0081500   -0.0069525    0.0232525
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.0020909   -0.0327764    0.0369582
6 months    NIH-Birth        BANGLADESH                     0                    NA                -0.0066589   -0.0645446    0.0512269
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0097442   -0.0523224    0.0328340
6 months    PROBIT           BELARUS                        0                    NA                 0.0079203   -0.0150350    0.0308755
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0280860   -0.0675221    0.0113500
6 months    ResPak           PAKISTAN                       0                    NA                -0.0298700   -0.1374196    0.0776795
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.0276885   -0.0606150    0.0052381
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.0694559   -0.1276582   -0.0112536
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0043406   -0.0072217    0.0159030
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0685169   -0.0802438   -0.0567899
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0093876   -0.0522135    0.0709887
24 months   CMIN             BANGLADESH                     0                    NA                -0.0052731   -0.0422777    0.0317315
24 months   COHORTS          GUATEMALA                      0                    NA                 0.0326620    0.0056336    0.0596904
24 months   COHORTS          INDIA                          0                    NA                 0.0032980   -0.0120878    0.0186837
24 months   COHORTS          PHILIPPINES                    0                    NA                 0.0235469    0.0036700    0.0434238
24 months   EE               PAKISTAN                       0                    NA                -0.0070858   -0.0732881    0.0591166
24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0031794   -0.0416376    0.0479963
24 months   IRC              INDIA                          0                    NA                -0.0471260   -0.1098411    0.0155890
24 months   JiVitA-3         BANGLADESH                     0                    NA                 0.0048205   -0.0039939    0.0136349
24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0056295   -0.0151928    0.0039339
24 months   Keneba           GAMBIA                         0                    NA                -0.0260165   -0.0502731   -0.0017599
24 months   LCNI-5           MALAWI                         0                    NA                -0.0115088   -0.0303075    0.0072899
24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0106035   -0.0481333    0.0693403
24 months   MAL-ED           BRAZIL                         0                    NA                -0.0234627   -0.0552985    0.0083732
24 months   MAL-ED           INDIA                          0                    NA                 0.0273075   -0.0406345    0.0952496
24 months   MAL-ED           NEPAL                          0                    NA                 0.0045009   -0.0494697    0.0584714
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0201538   -0.0263703    0.0666779
24 months   NIH-Birth        BANGLADESH                     0                    NA                 0.0282768   -0.0366188    0.0931723
24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0004349   -0.0515939    0.0524638
24 months   PROBIT           BELARUS                        0                    NA                -0.0475935   -0.1231291    0.0279422
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0076331   -0.0470606    0.0317944
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0185021   -0.0391410    0.0021367
