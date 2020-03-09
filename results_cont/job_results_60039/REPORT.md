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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

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




# Results Detail

## Results Plots
![](/tmp/00b02046-3526-485e-ba86-7d289dd44c6b/1a1a8d3a-4b9d-4aca-b07a-112b838a24ab/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/00b02046-3526-485e-ba86-7d289dd44c6b/1a1a8d3a-4b9d-4aca-b07a-112b838a24ab/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/00b02046-3526-485e-ba86-7d289dd44c6b/1a1a8d3a-4b9d-4aca-b07a-112b838a24ab/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.7985137   -0.9842087   -0.6128188
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -0.0923058   -0.7742771    0.5896655
Birth       COHORTS          GUATEMALA                      0                    NA                 0.0443089   -0.0449001    0.1335178
Birth       COHORTS          GUATEMALA                      1                    NA                 0.7246453    0.5761525    0.8731381
Birth       COHORTS          INDIA                          0                    NA                -0.5546661   -0.5810819   -0.5282503
Birth       COHORTS          INDIA                          1                    NA                -0.2959346   -0.3614559   -0.2304133
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.2204099   -0.2566832   -0.1841367
Birth       COHORTS          PHILIPPINES                    1                    NA                 0.2255759    0.1215171    0.3296347
Birth       EE               PAKISTAN                       0                    NA                -1.3307982   -1.4711658   -1.1904305
Birth       EE               PAKISTAN                       1                    NA                -0.5942629   -1.2768773    0.0883516
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.9486557   -1.0249384   -0.8723731
Birth       GMS-Nepal        NEPAL                          1                    NA                -0.7736745   -0.9363531   -0.6109959
Birth       IRC              INDIA                          0                    NA                -0.5915755   -0.7120020   -0.4711491
Birth       IRC              INDIA                          1                    NA                 0.9547738    0.6668254    1.2427222
Birth       JiVitA-3         BANGLADESH                     0                    NA                -1.1898745   -1.2046245   -1.1751245
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.0892713   -1.1383747   -1.0401679
Birth       JiVitA-4         BANGLADESH                     0                    NA                -1.2286076   -1.2700925   -1.1871227
Birth       JiVitA-4         BANGLADESH                     1                    NA                -1.1324092   -1.2890957   -0.9757228
Birth       Keneba           GAMBIA                         0                    NA                -0.0589496   -0.1165609   -0.0013383
Birth       Keneba           GAMBIA                         1                    NA                 0.6833793    0.5570255    0.8097332
Birth       MAL-ED           BANGLADESH                     0                    NA                -1.0065859   -1.1363807   -0.8767912
Birth       MAL-ED           BANGLADESH                     1                    NA                -0.7615875   -1.0923832   -0.4307917
Birth       MAL-ED           INDIA                          0                    NA                -1.0995000   -1.3601155   -0.8388845
Birth       MAL-ED           INDIA                          1                    NA                -0.9800000   -1.9772048    0.0172048
Birth       MAL-ED           PERU                           0                    NA                -0.8421525   -0.9539315   -0.7303735
Birth       MAL-ED           PERU                           1                    NA                -0.5260000   -1.5481689    0.4961689
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.6549899   -0.8216998   -0.4882799
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                -0.1302587   -0.7692414    0.5087240
Birth       NIH-Birth        BANGLADESH                     0                    NA                -0.8856117   -0.9709762   -0.8002472
Birth       NIH-Birth        BANGLADESH                     1                    NA                -0.6494871   -0.8349824   -0.4639917
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.8923232   -0.9671846   -0.8174619
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.7454087   -0.8886869   -0.6021304
Birth       PROBIT           BELARUS                        0                    NA                 1.0666600    0.9597519    1.1735682
Birth       PROBIT           BELARUS                        1                    NA                 2.1864698    1.9887690    2.3841706
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.8500225   -0.9303893   -0.7696556
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.9426031   -1.1216930   -0.7635132
Birth       SAS-CompFeed     INDIA                          0                    NA                -1.1595117   -1.2094097   -1.1096137
Birth       SAS-CompFeed     INDIA                          1                    NA                -1.2266439   -1.3643405   -1.0889473
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.4592592   -0.4768363   -0.4416820
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                 0.2310942    0.1743779    0.2878104
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.3867879   -1.5466863   -1.2268896
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -1.5906902   -1.9071400   -1.2742404
6 months    CMIN             BANGLADESH                     0                    NA                -1.6943831   -1.8312182   -1.5575480
6 months    CMIN             BANGLADESH                     1                    NA                -1.7859418   -2.5435306   -1.0283530
6 months    COHORTS          GUATEMALA                      0                    NA                -1.8345081   -1.9127590   -1.7562572
6 months    COHORTS          GUATEMALA                      1                    NA                -1.6356638   -1.7856904   -1.4856373
6 months    COHORTS          INDIA                          0                    NA                -0.9239875   -0.9532699   -0.8947050
6 months    COHORTS          INDIA                          1                    NA                -0.9273627   -0.9984521   -0.8562733
6 months    COHORTS          PHILIPPINES                    0                    NA                -1.1000161   -1.1448193   -1.0552128
6 months    COHORTS          PHILIPPINES                    1                    NA                -1.0506932   -1.1620150   -0.9393715
6 months    EE               PAKISTAN                       0                    NA                -1.7872539   -1.9115573   -1.6629505
6 months    EE               PAKISTAN                       1                    NA                -1.8739934   -2.1854582   -1.5625287
6 months    GMS-Nepal        NEPAL                          0                    NA                -1.2790508   -1.3637259   -1.1943756
6 months    GMS-Nepal        NEPAL                          1                    NA                -1.2854686   -1.4653083   -1.1056290
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -1.5321274   -1.6425348   -1.4217201
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -3.0158333   -3.4993139   -2.5323527
6 months    IRC              INDIA                          0                    NA                -1.1391584   -1.2896068   -0.9887100
6 months    IRC              INDIA                          1                    NA                -1.3026193   -1.5667261   -1.0385124
6 months    JiVitA-3         BANGLADESH                     0                    NA                -1.1284858   -1.1515625   -1.1054092
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.1026939   -1.1678485   -1.0375393
6 months    JiVitA-4         BANGLADESH                     0                    NA                -1.2410872   -1.2793193   -1.2028550
6 months    JiVitA-4         BANGLADESH                     1                    NA                -1.2855680   -1.4026043   -1.1685317
6 months    Keneba           GAMBIA                         0                    NA                -0.8829269   -0.9348528   -0.8310011
6 months    Keneba           GAMBIA                         1                    NA                -0.9569302   -1.0756859   -0.8381745
6 months    LCNI-5           MALAWI                         0                    NA                -1.6502585   -1.7193077   -1.5812093
6 months    LCNI-5           MALAWI                         1                    NA                -2.4893991   -3.2745660   -1.7042322
6 months    MAL-ED           BANGLADESH                     0                    NA                -1.1290861   -1.2600270   -0.9981452
6 months    MAL-ED           BANGLADESH                     1                    NA                -1.3108376   -1.5910053   -1.0306698
6 months    MAL-ED           BRAZIL                         0                    NA                 0.0897049   -0.0622819    0.2416917
6 months    MAL-ED           BRAZIL                         1                    NA                -0.1292857   -0.4801482    0.2215768
6 months    MAL-ED           INDIA                          0                    NA                -1.1903405   -1.3179278   -1.0627532
6 months    MAL-ED           INDIA                          1                    NA                -1.1664124   -1.4792626   -0.8535622
6 months    MAL-ED           NEPAL                          0                    NA                -0.4993547   -0.6181704   -0.3805389
6 months    MAL-ED           NEPAL                          1                    NA                -0.7127466   -1.0102236   -0.4152696
6 months    MAL-ED           PERU                           0                    NA                -1.3082471   -1.4186449   -1.1978493
6 months    MAL-ED           PERU                           1                    NA                -0.8746667   -1.3965179   -0.3528155
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -1.0506292   -1.1803488   -0.9209097
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                -0.8043320   -1.3059765   -0.3026875
6 months    NIH-Birth        BANGLADESH                     0                    NA                -1.3380550   -1.4364806   -1.2396293
6 months    NIH-Birth        BANGLADESH                     1                    NA                -1.3470111   -1.5249477   -1.1690744
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -1.1472466   -1.2268631   -1.0676301
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -1.1900696   -1.3405773   -1.0395620
6 months    PROBIT           BELARUS                        0                    NA                 0.0915345   -0.0047129    0.1877820
6 months    PROBIT           BELARUS                        1                    NA                 0.1492243    0.0192777    0.2791709
6 months    PROVIDE          BANGLADESH                     0                    NA                -1.0520213   -1.1337674   -0.9702753
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.1410125   -1.3105826   -0.9714424
6 months    ResPak           PAKISTAN                       0                    NA                -1.4100416   -1.6409670   -1.1791161
6 months    ResPak           PAKISTAN                       1                    NA                -1.5221610   -2.0316137   -1.0127083
6 months    SAS-CompFeed     INDIA                          0                    NA                -1.2503656   -1.3442157   -1.1565156
6 months    SAS-CompFeed     INDIA                          1                    NA                -1.5578962   -1.7686946   -1.3470978
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -1.8340402   -1.9565952   -1.7114852
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -2.2223652   -2.5195029   -1.9252275
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5446000   -0.5950669   -0.4941331
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5258995   -0.7194193   -0.3323797
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.7457961   -0.7734300   -0.7181621
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -1.2116085   -1.2780832   -1.1451338
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -2.5679183   -2.6789903   -2.4568463
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.5382549   -2.7574549   -2.3190549
24 months   CMIN             BANGLADESH                     0                    NA                -2.4796184   -2.6120809   -2.3471559
24 months   CMIN             BANGLADESH                     1                    NA                -2.5903878   -3.1375851   -2.0431906
24 months   COHORTS          GUATEMALA                      0                    NA                -3.0292641   -3.1003648   -2.9581633
24 months   COHORTS          GUATEMALA                      1                    NA                -2.7963982   -2.9604961   -2.6323002
24 months   COHORTS          INDIA                          0                    NA                -2.0776160   -2.1129817   -2.0422502
24 months   COHORTS          INDIA                          1                    NA                -2.0617103   -2.1490492   -1.9743714
24 months   COHORTS          PHILIPPINES                    0                    NA                -2.4032156   -2.4521706   -2.3542606
24 months   COHORTS          PHILIPPINES                    1                    NA                -2.2821851   -2.4049676   -2.1594026
24 months   EE               PAKISTAN                       0                    NA                -2.5907291   -2.7545756   -2.4268826
24 months   EE               PAKISTAN                       1                    NA                -2.7839150   -3.1971947   -2.3706353
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.8395051   -1.9347458   -1.7442644
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.8542114   -2.0571889   -1.6512338
24 months   IRC              INDIA                          0                    NA                -1.7178078   -1.8329358   -1.6026798
24 months   IRC              INDIA                          1                    NA                -1.8802584   -2.0561204   -1.7043964
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.8810795   -1.9116877   -1.8504712
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.8464039   -1.9220155   -1.7707922
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.7126931   -1.7504869   -1.6748994
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.7776322   -1.8833434   -1.6719210
24 months   Keneba           GAMBIA                         0                    NA                -1.5499263   -1.6061430   -1.4937095
24 months   Keneba           GAMBIA                         1                    NA                -1.6742438   -1.7855250   -1.5629626
24 months   LCNI-5           MALAWI                         0                    NA                -1.8752904   -1.9561592   -1.7944216
24 months   LCNI-5           MALAWI                         1                    NA                -2.4062412   -2.9863965   -1.8260859
24 months   MAL-ED           BANGLADESH                     0                    NA                -1.9505515   -2.0949054   -1.8061976
24 months   MAL-ED           BANGLADESH                     1                    NA                -1.8421134   -2.1311701   -1.5530567
24 months   MAL-ED           BRAZIL                         0                    NA                 0.0348377   -0.1411854    0.2108607
24 months   MAL-ED           BRAZIL                         1                    NA                -0.5908333   -1.2594074    0.0777407
24 months   MAL-ED           INDIA                          0                    NA                -1.8984164   -2.0336104   -1.7632225
24 months   MAL-ED           INDIA                          1                    NA                -1.7896890   -2.1126188   -1.4667591
24 months   MAL-ED           NEPAL                          0                    NA                -1.3028380   -1.4285757   -1.1771003
24 months   MAL-ED           NEPAL                          1                    NA                -1.2618315   -1.6936941   -0.8299689
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -1.6661229   -1.8029668   -1.5292790
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                -1.2969353   -2.0750721   -0.5187986
24 months   NIH-Birth        BANGLADESH                     0                    NA                -2.1886350   -2.3094374   -2.0678326
24 months   NIH-Birth        BANGLADESH                     1                    NA                -2.0789988   -2.2766412   -1.8813564
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -1.4035723   -1.4994052   -1.3077394
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -1.4509885   -1.6195192   -1.2824578
24 months   PROBIT           BELARUS                        0                    NA                -0.0870096   -0.4086902    0.2346711
24 months   PROBIT           BELARUS                        1                    NA                -0.3092281   -0.6010754   -0.0173808
24 months   PROVIDE          BANGLADESH                     0                    NA                -1.5793320   -1.6742551   -1.4844088
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.6299159   -1.8000088   -1.4598229
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -1.5213676   -1.5823103   -1.4604248
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.7260906   -1.9117360   -1.5404451


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
Birth       CMC-V-BCS-2002   INDIA                          1                    0                  0.7062079    0.0007497    1.4116661
Birth       COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      1                    0                  0.6803364    0.5072701    0.8534028
Birth       COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    0                  0.2587315    0.1882472    0.3292158
Birth       COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    1                    0                  0.4459858    0.3361557    0.5558159
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                  0.7365353    0.0387121    1.4343585
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                  0.1749812   -0.0043514    0.3543139
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                  1.5463494    1.2336420    1.8590567
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                  0.1006032    0.0507638    0.1504427
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                  0.0961983   -0.0638997    0.2562963
Birth       Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         1                    0                  0.7423289    0.6036772    0.8809806
Birth       MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    0                  0.2449985   -0.1116945    0.6016915
Birth       MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          1                    0                  0.1195000   -0.9111978    1.1501978
Birth       MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    0                  0.3161525   -0.7121101    1.3444150
Birth       MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    0                  0.5247312   -0.1379694    1.1874318
Birth       NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     1                    0                  0.2361246    0.0320338    0.4402154
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                  0.1469146   -0.0146232    0.3084523
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                  1.1198097    0.9111688    1.3284507
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.0925806   -0.2892398    0.1040785
Birth       SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          1                    0                 -0.0671323   -0.1875370    0.0532725
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                  0.6903534    0.6310484    0.7496583
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.2039023   -0.5593639    0.1515593
6 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMIN             BANGLADESH                     1                    0                 -0.0915587   -0.8613359    0.6782184
6 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      1                    0                  0.1988443    0.0295356    0.3681529
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                 -0.0033752   -0.0797029    0.0729525
6 months    COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    1                    0                  0.0493228   -0.0700489    0.1686945
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -0.0867395   -0.4231404    0.2496614
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                 -0.0064179   -0.2053188    0.1924830
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -1.4837059   -1.9796326   -0.9877792
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                 -0.1634608   -0.4676156    0.1406939
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                  0.0257919   -0.0392402    0.0908240
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.0444808   -0.1664341    0.0774725
6 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         1                    0                 -0.0740032   -0.2034892    0.0554827
6 months    LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         1                    0                 -0.8391407   -1.6277731   -0.0505082
6 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    0                 -0.1817515   -0.4925120    0.1290090
6 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         1                    0                 -0.2189906   -0.6013575    0.1633763
6 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    0                  0.0239281   -0.3144476    0.3623039
6 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    0                 -0.2133919   -0.5344144    0.1076306
6 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    0                  0.4335805   -0.0998203    0.9669812
6 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                  0.2462973   -0.2727400    0.7653345
6 months    NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     1                    0                 -0.0089561   -0.2114162    0.1935039
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 -0.0428230   -0.2131292    0.1274832
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                  0.0576898   -0.0578350    0.1732145
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.0889912   -0.2779065    0.0999241
6 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       1                    0                 -0.1121194   -0.6724970    0.4482581
6 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          1                    0                 -0.3075306   -0.4854274   -0.1296337
6 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          1                    0                 -0.3883250   -0.7108198   -0.0658302
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0187005   -0.1811534    0.2185544
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.4658125   -0.5376951   -0.3939298
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0296634   -0.2162607    0.2755874
24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMIN             BANGLADESH                     1                    0                 -0.1107695   -0.6742223    0.4526834
24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      1                    0                  0.2328659    0.0549872    0.4107445
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                  0.0159057   -0.0780175    0.1098289
24 months   COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    1                    0                  0.1210305   -0.0111340    0.2531950
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                 -0.1931859   -0.6406210    0.2542492
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                 -0.0147063   -0.2381843    0.2087717
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.1624506   -0.3727187    0.0478175
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                  0.0346756   -0.0447057    0.1140569
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 -0.0649390   -0.1754560    0.0455779
24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         1                    0                 -0.1243175   -0.2487715    0.0001365
24 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         1                    0                 -0.5309508   -1.1157582    0.0538566
24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    0                  0.1084381   -0.2130941    0.4299703
24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         1                    0                 -0.6256710   -1.3170286    0.0656866
24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    0                  0.1087275   -0.2422621    0.4597170
24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    0                  0.0410065   -0.4088521    0.4908651
24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.3691876   -0.4212363    1.1596115
24 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     1                    0                  0.1096362   -0.1226128    0.3418851
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0474162   -0.2408296    0.1459972
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                 -0.2222186   -0.5731344    0.1286973
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.0505839   -0.2451645    0.1439967
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.2047230   -0.3999987   -0.0094473


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.0209116   -0.1188092    0.0769861
Birth       COHORTS          GUATEMALA                      0                    NA                 0.1777252    0.1286473    0.2268032
Birth       COHORTS          INDIA                          0                    NA                 0.0475292    0.0345850    0.0604734
Birth       COHORTS          PHILIPPINES                    0                    NA                 0.0713137    0.0530645    0.0895629
Birth       EE               PAKISTAN                       0                    NA                 0.0924648   -0.0090893    0.1940190
Birth       GMS-Nepal        NEPAL                          0                    NA                 0.0369348   -0.0007980    0.0746675
Birth       IRC              INDIA                          0                    NA                 0.4784712    0.3570526    0.5998897
Birth       JiVitA-3         BANGLADESH                     0                    NA                 0.0116462    0.0061925    0.0170999
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.0089952   -0.0073184    0.0253089
Birth       Keneba           GAMBIA                         0                    NA                 0.1928004    0.1536539    0.2319469
Birth       MAL-ED           BANGLADESH                     0                    NA                 0.0440278   -0.0164402    0.1044958
Birth       MAL-ED           INDIA                          0                    NA                 0.0132778   -0.1017806    0.1283361
Birth       MAL-ED           PERU                           0                    NA                 0.0069332   -0.0194696    0.0333360
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                 0.0955684    0.0149266    0.1762102
Birth       NIH-Birth        BANGLADESH                     0                    NA                 0.0700083    0.0092474    0.1307691
Birth       NIH-Crypto       BANGLADESH                     0                    NA                 0.0435855    0.0017655    0.0854055
Birth       PROBIT           BELARUS                        0                    NA                 0.2471265    0.1459776    0.3482754
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0079662   -0.0513322    0.0353997
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.0046060   -0.0166783    0.0074663
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                 0.1180447    0.1071890    0.1289004
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0355629   -0.1241321    0.0530064
6 months    CMIN             BANGLADESH                     0                    NA                -0.0146399   -0.0560580    0.0267782
6 months    COHORTS          GUATEMALA                      0                    NA                 0.0394803    0.0061322    0.0728285
6 months    COHORTS          INDIA                          0                    NA                -0.0002012   -0.0135678    0.0131654
6 months    COHORTS          PHILIPPINES                    0                    NA                 0.0071429   -0.0113615    0.0256474
6 months    EE               PAKISTAN                       0                    NA                -0.0001091   -0.0412832    0.0410650
6 months    GMS-Nepal        NEPAL                          0                    NA                 0.0037414   -0.0358028    0.0432857
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0297734   -0.0564518   -0.0030950
6 months    IRC              INDIA                          0                    NA                -0.0315789   -0.1224703    0.0593125
6 months    JiVitA-3         BANGLADESH                     0                    NA                 0.0030442   -0.0036680    0.0097565
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0054094   -0.0164494    0.0056305
6 months    Keneba           GAMBIA                         0                    NA                -0.0088747   -0.0329648    0.0152153
6 months    LCNI-5           MALAWI                         0                    NA                -0.0099322   -0.0276401    0.0077757
6 months    MAL-ED           BANGLADESH                     0                    NA                -0.0254845   -0.0846984    0.0337295
6 months    MAL-ED           BRAZIL                         0                    NA                -0.0077032   -0.0222800    0.0068736
6 months    MAL-ED           INDIA                          0                    NA                -0.0004066   -0.0614461    0.0606328
6 months    MAL-ED           NEPAL                          0                    NA                -0.0363350   -0.0834392    0.0107692
6 months    MAL-ED           PERU                           0                    NA                 0.0081500   -0.0069525    0.0232525
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.0013868   -0.0342227    0.0369963
6 months    NIH-Birth        BANGLADESH                     0                    NA                -0.0066451   -0.0641234    0.0508332
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0087548   -0.0514841    0.0339745
6 months    PROBIT           BELARUS                        0                    NA                 0.0071779   -0.0146341    0.0289898
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0208458   -0.0605751    0.0188836
6 months    ResPak           PAKISTAN                       0                    NA                -0.0173780   -0.1254705    0.0907144
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.0277465   -0.0597925    0.0042995
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.0646440   -0.1234996   -0.0057884
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0021780   -0.0092824    0.0136384
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0699398   -0.0816641   -0.0582155
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0119934   -0.0500461    0.0740330
24 months   CMIN             BANGLADESH                     0                    NA                -0.0080971   -0.0456048    0.0294105
24 months   COHORTS          GUATEMALA                      0                    NA                 0.0345805    0.0081418    0.0610193
24 months   COHORTS          INDIA                          0                    NA                 0.0034680   -0.0117768    0.0187128
24 months   COHORTS          PHILIPPINES                    0                    NA                 0.0190401   -0.0009315    0.0390117
24 months   EE               PAKISTAN                       0                    NA                -0.0034436   -0.0709547    0.0640675
24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0040187   -0.0486379    0.0406005
24 months   IRC              INDIA                          0                    NA                -0.0461522   -0.1091464    0.0168421
24 months   JiVitA-3         BANGLADESH                     0                    NA                 0.0038757   -0.0048548    0.0126061
24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0055409   -0.0149149    0.0038331
24 months   Keneba           GAMBIA                         0                    NA                -0.0231624   -0.0472853    0.0009605
24 months   LCNI-5           MALAWI                         0                    NA                -0.0108581   -0.0286662    0.0069500
24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0217953   -0.0360309    0.0796215
24 months   MAL-ED           BRAZIL                         0                    NA                -0.0234627   -0.0552985    0.0083732
24 months   MAL-ED           INDIA                          0                    NA                 0.0286407   -0.0395933    0.0968746
24 months   MAL-ED           NEPAL                          0                    NA                 0.0037491   -0.0506176    0.0581158
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0225399   -0.0248720    0.0699519
24 months   NIH-Birth        BANGLADESH                     0                    NA                 0.0305522   -0.0348272    0.0959317
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0085477   -0.0604451    0.0433497
24 months   PROBIT           BELARUS                        0                    NA                -0.0567198   -0.1381216    0.0246821
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0083786   -0.0475970    0.0308398
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0246457   -0.0456585   -0.0036329
