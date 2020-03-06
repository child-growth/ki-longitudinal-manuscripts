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

**Intervention Variable:** enstunt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        enstunt    n_cell       n
----------  ---------------  -----------------------------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          0              74      86
Birth       CMC-V-BCS-2002   INDIA                          1              12      86
Birth       CMIN             BANGLADESH                     0              17      19
Birth       CMIN             BANGLADESH                     1               2      19
Birth       COHORTS          GUATEMALA                      0             732     756
Birth       COHORTS          GUATEMALA                      1              24     756
Birth       COHORTS          INDIA                          0            5813    6193
Birth       COHORTS          INDIA                          1             380    6193
Birth       COHORTS          PHILIPPINES                    0            2813    2899
Birth       COHORTS          PHILIPPINES                    1              86    2899
Birth       CONTENT          PERU                           0               2       2
Birth       CONTENT          PERU                           1               0       2
Birth       EE               PAKISTAN                       0             137     177
Birth       EE               PAKISTAN                       1              40     177
Birth       GMS-Nepal        NEPAL                          0             570     641
Birth       GMS-Nepal        NEPAL                          1              71     641
Birth       IRC              INDIA                          0             318     343
Birth       IRC              INDIA                          1              25     343
Birth       Keneba           GAMBIA                         0            1425    1466
Birth       Keneba           GAMBIA                         1              41    1466
Birth       MAL-ED           BANGLADESH                     0             187     215
Birth       MAL-ED           BANGLADESH                     1              28     215
Birth       MAL-ED           BRAZIL                         0              56      62
Birth       MAL-ED           BRAZIL                         1               6      62
Birth       MAL-ED           INDIA                          0              37      45
Birth       MAL-ED           INDIA                          1               8      45
Birth       MAL-ED           NEPAL                          0              25      26
Birth       MAL-ED           NEPAL                          1               1      26
Birth       MAL-ED           PERU                           0             207     228
Birth       MAL-ED           PERU                           1              21     228
Birth       MAL-ED           SOUTH AFRICA                   0             112     120
Birth       MAL-ED           SOUTH AFRICA                   1               8     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             102     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              13     115
Birth       NIH-Birth        BANGLADESH                     0             506     575
Birth       NIH-Birth        BANGLADESH                     1              69     575
Birth       NIH-Crypto       BANGLADESH                     0             625     707
Birth       NIH-Crypto       BANGLADESH                     1              82     707
Birth       PROBIT           BELARUS                        0           13790   13817
Birth       PROBIT           BELARUS                        1              27   13817
Birth       PROVIDE          BANGLADESH                     0             491     532
Birth       PROVIDE          BANGLADESH                     1              41     532
Birth       ResPak           PAKISTAN                       0              28      38
Birth       ResPak           PAKISTAN                       1              10      38
Birth       SAS-CompFeed     INDIA                          0             901    1103
Birth       SAS-CompFeed     INDIA                          1             202    1103
Birth       ZVITAMBO         ZIMBABWE                       0           12227   12917
Birth       ZVITAMBO         ZIMBABWE                       1             690   12917
6 months    CMC-V-BCS-2002   INDIA                          0             292     368
6 months    CMC-V-BCS-2002   INDIA                          1              76     368
6 months    CMIN             BANGLADESH                     0             151     243
6 months    CMIN             BANGLADESH                     1              92     243
6 months    COHORTS          GUATEMALA                      0             809     963
6 months    COHORTS          GUATEMALA                      1             154     963
6 months    COHORTS          INDIA                          0            6034    6850
6 months    COHORTS          INDIA                          1             816    6850
6 months    COHORTS          PHILIPPINES                    0            2549    2706
6 months    COHORTS          PHILIPPINES                    1             157    2706
6 months    CONTENT          PERU                           0             195     215
6 months    CONTENT          PERU                           1              20     215
6 months    EE               PAKISTAN                       0             209     375
6 months    EE               PAKISTAN                       1             166     375
6 months    GMS-Nepal        NEPAL                          0             473     564
6 months    GMS-Nepal        NEPAL                          1              91     564
6 months    Guatemala BSC    GUATEMALA                      0             228     299
6 months    Guatemala BSC    GUATEMALA                      1              71     299
6 months    IRC              INDIA                          0             356     408
6 months    IRC              INDIA                          1              52     408
6 months    Keneba           GAMBIA                         0            1893    2089
6 months    Keneba           GAMBIA                         1             196    2089
6 months    LCNI-5           MALAWI                         0             530     839
6 months    LCNI-5           MALAWI                         1             309     839
6 months    MAL-ED           BANGLADESH                     0             202     241
6 months    MAL-ED           BANGLADESH                     1              39     241
6 months    MAL-ED           BRAZIL                         0             184     209
6 months    MAL-ED           BRAZIL                         1              25     209
6 months    MAL-ED           INDIA                          0             198     236
6 months    MAL-ED           INDIA                          1              38     236
6 months    MAL-ED           NEPAL                          0             208     236
6 months    MAL-ED           NEPAL                          1              28     236
6 months    MAL-ED           PERU                           0             239     273
6 months    MAL-ED           PERU                           1              34     273
6 months    MAL-ED           SOUTH AFRICA                   0             227     254
6 months    MAL-ED           SOUTH AFRICA                   1              27     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             208     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              39     247
6 months    NIH-Birth        BANGLADESH                     0             452     537
6 months    NIH-Birth        BANGLADESH                     1              85     537
6 months    NIH-Crypto       BANGLADESH                     0             613     715
6 months    NIH-Crypto       BANGLADESH                     1             102     715
6 months    PROBIT           BELARUS                        0           15641   15757
6 months    PROBIT           BELARUS                        1             116   15757
6 months    PROVIDE          BANGLADESH                     0             542     603
6 months    PROVIDE          BANGLADESH                     1              61     603
6 months    ResPak           PAKISTAN                       0             173     239
6 months    ResPak           PAKISTAN                       1              66     239
6 months    SAS-CompFeed     INDIA                          0             969    1334
6 months    SAS-CompFeed     INDIA                          1             365    1334
6 months    SAS-FoodSuppl    INDIA                          0             232     380
6 months    SAS-FoodSuppl    INDIA                          1             148     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1890    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             138    2028
6 months    ZVITAMBO         ZIMBABWE                       0            7632    8505
6 months    ZVITAMBO         ZIMBABWE                       1             873    8505
24 months   CMC-V-BCS-2002   INDIA                          0             295     372
24 months   CMC-V-BCS-2002   INDIA                          1              77     372
24 months   CMIN             BANGLADESH                     0             153     243
24 months   CMIN             BANGLADESH                     1              90     243
24 months   COHORTS          GUATEMALA                      0             743    1082
24 months   COHORTS          GUATEMALA                      1             339    1082
24 months   COHORTS          INDIA                          0            4654    5291
24 months   COHORTS          INDIA                          1             637    5291
24 months   COHORTS          PHILIPPINES                    0            2311    2449
24 months   COHORTS          PHILIPPINES                    1             138    2449
24 months   CONTENT          PERU                           0             147     164
24 months   CONTENT          PERU                           1              17     164
24 months   EE               PAKISTAN                       0             100     168
24 months   EE               PAKISTAN                       1              68     168
24 months   GMS-Nepal        NEPAL                          0             405     487
24 months   GMS-Nepal        NEPAL                          1              82     487
24 months   IRC              INDIA                          0             358     409
24 months   IRC              INDIA                          1              51     409
24 months   Keneba           GAMBIA                         0            1550    1726
24 months   Keneba           GAMBIA                         1             176    1726
24 months   LCNI-5           MALAWI                         0             365     563
24 months   LCNI-5           MALAWI                         1             198     563
24 months   MAL-ED           BANGLADESH                     0             179     212
24 months   MAL-ED           BANGLADESH                     1              33     212
24 months   MAL-ED           BRAZIL                         0             150     169
24 months   MAL-ED           BRAZIL                         1              19     169
24 months   MAL-ED           INDIA                          0             191     227
24 months   MAL-ED           INDIA                          1              36     227
24 months   MAL-ED           NEPAL                          0             201     228
24 months   MAL-ED           NEPAL                          1              27     228
24 months   MAL-ED           PERU                           0             174     201
24 months   MAL-ED           PERU                           1              27     201
24 months   MAL-ED           SOUTH AFRICA                   0             214     238
24 months   MAL-ED           SOUTH AFRICA                   1              24     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             181     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              33     214
24 months   NIH-Birth        BANGLADESH                     0             354     428
24 months   NIH-Birth        BANGLADESH                     1              74     428
24 months   NIH-Crypto       BANGLADESH                     0             444     514
24 months   NIH-Crypto       BANGLADESH                     1              70     514
24 months   PROBIT           BELARUS                        0            3957    3970
24 months   PROBIT           BELARUS                        1              13    3970
24 months   PROVIDE          BANGLADESH                     0             519     579
24 months   PROVIDE          BANGLADESH                     1              60     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       6
24 months   ZVITAMBO         ZIMBABWE                       0             331     433
24 months   ZVITAMBO         ZIMBABWE                       1             102     433


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
* agecat: Birth, studyid: MAL-ED, country: NEPAL
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/61acceb8-e6a3-406c-a62c-d1f57fd73053/0a9912f4-6f63-4200-9fd8-14ff1b7a37c4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/61acceb8-e6a3-406c-a62c-d1f57fd73053/0a9912f4-6f63-4200-9fd8-14ff1b7a37c4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/61acceb8-e6a3-406c-a62c-d1f57fd73053/0a9912f4-6f63-4200-9fd8-14ff1b7a37c4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.4914865   -0.7787280   -0.2042449
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -0.3004167   -1.5083917    0.9075584
Birth       COHORTS          GUATEMALA                      0                    NA                -1.0868716   -1.1891249   -0.9846183
Birth       COHORTS          GUATEMALA                      1                    NA                -0.3079167   -0.8560815    0.2402482
Birth       COHORTS          INDIA                          0                    NA                -1.0012610   -1.0317045   -0.9708174
Birth       COHORTS          INDIA                          1                    NA                -0.7321053   -0.8664813   -0.5977292
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.7565873   -0.8033641   -0.7098105
Birth       COHORTS          PHILIPPINES                    1                    NA                -0.2893023   -0.5922741    0.0136695
Birth       EE               PAKISTAN                       0                    NA                -0.3968248   -0.6042969   -0.1893528
Birth       EE               PAKISTAN                       1                    NA                -0.1157500   -0.5386027    0.3071027
Birth       GMS-Nepal        NEPAL                          0                    NA                -1.1368596   -1.2290075   -1.0447118
Birth       GMS-Nepal        NEPAL                          1                    NA                -0.9525352   -1.2284656   -0.6766049
Birth       IRC              INDIA                          0                    NA                -1.1089937   -1.3001351   -0.9178523
Birth       IRC              INDIA                          1                    NA                 0.2412000   -0.3840623    0.8664623
Birth       Keneba           GAMBIA                         0                    NA                -1.2664982   -1.3284743   -1.2045222
Birth       Keneba           GAMBIA                         1                    NA                -0.1382927   -0.5917790    0.3151936
Birth       MAL-ED           BANGLADESH                     0                    NA                -1.0035829   -1.1554533   -0.8517125
Birth       MAL-ED           BANGLADESH                     1                    NA                -0.5296429   -0.9609901   -0.0982956
Birth       MAL-ED           BRAZIL                         0                    NA                 0.3380357    0.0083857    0.6676857
Birth       MAL-ED           BRAZIL                         1                    NA                 1.0083333    0.1448999    1.8717667
Birth       MAL-ED           INDIA                          0                    NA                -0.9356757   -1.2327587   -0.6385926
Birth       MAL-ED           INDIA                          1                    NA                -0.9175000   -1.6199423   -0.2150577
Birth       MAL-ED           PERU                           0                    NA                -0.0209179   -0.1456266    0.1037909
Birth       MAL-ED           PERU                           1                    NA                -0.3585714   -0.7849878    0.0678449
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.2412500   -0.4566344   -0.0258656
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                 0.4887500   -0.4348184    1.4123184
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.7293137    0.5416732    0.9169542
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.0223077    0.2004489    1.8441665
Birth       NIH-Birth        BANGLADESH                     0                    NA                -1.3463735   -1.4463773   -1.2463697
Birth       NIH-Birth        BANGLADESH                     1                    NA                -1.3759420   -1.6637639   -1.0881202
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -1.2825040   -1.3719570   -1.1930510
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.9518293   -1.1856157   -0.7180429
Birth       PROBIT           BELARUS                        0                    NA                -1.1526160   -1.3670291   -0.9382029
Birth       PROBIT           BELARUS                        1                    NA                 0.6066667    0.5804105    0.6329228
Birth       PROVIDE          BANGLADESH                     0                    NA                -1.2759063   -1.3565653   -1.1952473
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.5685366   -1.7988574   -1.3382158
Birth       ResPak           PAKISTAN                       0                    NA                -0.3953571   -0.8516009    0.0608866
Birth       ResPak           PAKISTAN                       1                    NA                -0.2850000   -1.1165028    0.5465028
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.6926748   -0.8432188   -0.5421308
Birth       SAS-CompFeed     INDIA                          1                    NA                -0.5691089   -0.9160706   -0.2221472
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.5551026   -0.5812063   -0.5289990
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                 0.1864638    0.0543136    0.3186139
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.4597546   -0.6289875   -0.2905217
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.6675877   -0.9994591   -0.3357164
6 months    CMIN             BANGLADESH                     0                    NA                -0.5710375   -0.7461814   -0.3958937
6 months    CMIN             BANGLADESH                     1                    NA                -0.5895471   -0.8410684   -0.3380258
6 months    COHORTS          GUATEMALA                      0                    NA                 0.2319036    0.1547758    0.3090314
6 months    COHORTS          GUATEMALA                      1                    NA                -0.0046104   -0.1897193    0.1804986
6 months    COHORTS          INDIA                          0                    NA                -0.6474776   -0.6763617   -0.6185936
6 months    COHORTS          INDIA                          1                    NA                -1.0118260   -1.0980390   -0.9256129
6 months    COHORTS          PHILIPPINES                    0                    NA                -0.2822793   -0.3245083   -0.2400503
6 months    COHORTS          PHILIPPINES                    1                    NA                -0.4815924   -0.6746500   -0.2885347
6 months    CONTENT          PERU                           0                    NA                 1.0823564    0.9551557    1.2095572
6 months    CONTENT          PERU                           1                    NA                 0.8896250    0.6605178    1.1187322
6 months    EE               PAKISTAN                       0                    NA                -0.7522169   -0.8986926   -0.6057413
6 months    EE               PAKISTAN                       1                    NA                -0.8030120   -0.9829495   -0.6230746
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.6098344   -0.7036999   -0.5159689
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.5726923   -0.7887782   -0.3566064
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0458772   -0.1704497    0.0786954
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -0.2064789   -0.4423213    0.0293635
6 months    IRC              INDIA                          0                    NA                -0.6425328   -0.7803580   -0.5047076
6 months    IRC              INDIA                          1                    NA                -0.3004167   -0.7828341    0.1820008
6 months    Keneba           GAMBIA                         0                    NA                -0.1788662   -0.2319864   -0.1257460
6 months    Keneba           GAMBIA                         1                    NA                -0.2400181   -0.4153205   -0.0647158
6 months    LCNI-5           MALAWI                         0                    NA                 0.5279623    0.4416665    0.6142581
6 months    LCNI-5           MALAWI                         1                    NA                 0.3161165    0.1936530    0.4385800
6 months    MAL-ED           BANGLADESH                     0                    NA                -0.1195462   -0.2636715    0.0245791
6 months    MAL-ED           BANGLADESH                     1                    NA                -0.2315812   -0.5055695    0.0424071
6 months    MAL-ED           BRAZIL                         0                    NA                 1.0544792    0.8807044    1.2282539
6 months    MAL-ED           BRAZIL                         1                    NA                 0.3656000   -0.0650762    0.7962762
6 months    MAL-ED           INDIA                          0                    NA                -0.6810311   -0.8196151   -0.5424472
6 months    MAL-ED           INDIA                          1                    NA                -0.8485088   -1.1528478   -0.5441698
6 months    MAL-ED           NEPAL                          0                    NA                 0.1418109    0.0020137    0.2816081
6 months    MAL-ED           NEPAL                          1                    NA                -0.1226786   -0.4937142    0.2483571
6 months    MAL-ED           PERU                           0                    NA                 1.0697350    0.9424916    1.1969784
6 months    MAL-ED           PERU                           1                    NA                 0.9344118    0.5456165    1.3232071
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.4947871    0.3381848    0.6513894
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                 0.9406173    0.4026211    1.4786134
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5337179    0.3918202    0.6756157
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5495726    0.2052358    0.8939095
6 months    NIH-Birth        BANGLADESH                     0                    NA                -0.4309864   -0.5273267   -0.3346461
6 months    NIH-Birth        BANGLADESH                     1                    NA                -0.5347059   -0.7865009   -0.2829109
6 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0538010   -0.0301566    0.1377586
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.1147059   -0.3396977    0.1102860
6 months    PROBIT           BELARUS                        0                    NA                 0.5747113    0.5140205    0.6354021
6 months    PROBIT           BELARUS                        1                    NA                 0.4930172    0.4038770    0.5821575
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.1697817   -0.2560537   -0.0835096
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.4595082   -0.7353087   -0.1837077
6 months    ResPak           PAKISTAN                       0                    NA                 0.0123507   -0.1907855    0.2154868
6 months    ResPak           PAKISTAN                       1                    NA                -0.6269192   -0.9939391   -0.2598993
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.6111816   -0.7474456   -0.4749176
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.8104658   -1.0166159   -0.6043156
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.9444828   -1.0916273   -0.7973382
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -1.1182432   -1.3049203   -0.9315661
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0831821    0.0287023    0.1376619
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0501329   -0.1556135    0.2558792
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.3168888    0.2898993    0.3438782
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.2551489    0.1722156    0.3380822
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.4409266   -0.5538815   -0.3279716
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -1.0024242   -1.2026282   -0.8022203
24 months   CMIN             BANGLADESH                     0                    NA                -0.7648366   -0.8975312   -0.6321420
24 months   CMIN             BANGLADESH                     1                    NA                -1.0043333   -1.1972032   -0.8114635
24 months   COHORTS          GUATEMALA                      0                    NA                -0.1874697   -0.2506536   -0.1242858
24 months   COHORTS          GUATEMALA                      1                    NA                -0.4878466   -0.5862446   -0.3894487
24 months   COHORTS          INDIA                          0                    NA                -0.5534938   -0.5833124   -0.5236751
24 months   COHORTS          INDIA                          1                    NA                -1.0006122   -1.0790321   -0.9221923
24 months   COHORTS          PHILIPPINES                    0                    NA                -0.5907443   -0.6282261   -0.5532625
24 months   COHORTS          PHILIPPINES                    1                    NA                -0.9317391   -1.1030120   -0.7604663
24 months   CONTENT          PERU                           0                    NA                 0.6353061    0.4933191    0.7772931
24 months   CONTENT          PERU                           1                    NA                 0.2005882   -0.1611989    0.5623753
24 months   EE               PAKISTAN                       0                    NA                -0.8798000   -1.0581758   -0.7014242
24 months   EE               PAKISTAN                       1                    NA                -1.2064706   -1.4497068   -0.9632344
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.1295226   -1.2283965   -1.0306488
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.1698374   -1.3715002   -0.9681746
24 months   IRC              INDIA                          0                    NA                -0.7079376   -0.8055054   -0.6103698
24 months   IRC              INDIA                          1                    NA                -1.0116993   -1.2513884   -0.7720103
24 months   Keneba           GAMBIA                         0                    NA                -0.7855021   -0.8349684   -0.7360358
24 months   Keneba           GAMBIA                         1                    NA                -1.0250521   -1.1758257   -0.8742785
24 months   LCNI-5           MALAWI                         0                    NA                 0.0898904   -0.0092372    0.1890180
24 months   LCNI-5           MALAWI                         1                    NA                -0.3015404   -0.4389627   -0.1641181
24 months   MAL-ED           BANGLADESH                     0                    NA                -0.7540223   -0.8900000   -0.6180447
24 months   MAL-ED           BANGLADESH                     1                    NA                -1.1733333   -1.4027571   -0.9439095
24 months   MAL-ED           BRAZIL                         0                    NA                 0.4485889    0.2326093    0.6645685
24 months   MAL-ED           BRAZIL                         1                    NA                 0.5734211   -0.0922244    1.2390665
24 months   MAL-ED           INDIA                          0                    NA                -0.9236387   -1.0507134   -0.7965640
24 months   MAL-ED           INDIA                          1                    NA                -1.1002778   -1.3690756   -0.8314800
24 months   MAL-ED           NEPAL                          0                    NA                -0.3487562   -0.4642592   -0.2332532
24 months   MAL-ED           NEPAL                          1                    NA                -0.5696296   -0.9894831   -0.1497762
24 months   MAL-ED           PERU                           0                    NA                 0.1649617    0.0426372    0.2872861
24 months   MAL-ED           PERU                           1                    NA                -0.2352778   -0.6799099    0.2093543
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.4014213    0.2754305    0.5274122
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.4768750    0.0538433    0.8999067
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0837293   -0.0493009    0.2167594
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1038889   -0.4540801    0.2463023
24 months   NIH-Birth        BANGLADESH                     0                    NA                -0.8740843   -0.9797812   -0.7683874
24 months   NIH-Birth        BANGLADESH                     1                    NA                -1.0909459   -1.3421109   -0.8397810
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.5479505   -0.6476135   -0.4482874
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -1.0061429   -1.2774403   -0.7348455
24 months   PROBIT           BELARUS                        0                    NA                 0.6982647    0.5836004    0.8129289
24 months   PROBIT           BELARUS                        1                    NA                 0.6603846    0.4055895    0.9151798
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.8565800   -0.9439946   -0.7691653
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.2067500   -1.4461308   -0.9673692
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -1.1756798   -1.2883186   -1.0630409
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.2048039   -1.4114731   -0.9981347


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       COHORTS          INDIA                          NA                   NA                -0.9847457   -1.0145305   -0.9549609
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       EE               PAKISTAN                       NA                   NA                -0.3333051   -0.5209779   -0.1456323
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       Keneba           GAMBIA                         NA                   NA                -1.2349454   -1.2972413   -1.1726496
Birth       MAL-ED           BANGLADESH                     NA                   NA                -0.9418605   -1.0869834   -0.7967375
Birth       MAL-ED           BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       MAL-ED           INDIA                          NA                   NA                -0.9324444   -1.2067907   -0.6580982
Birth       MAL-ED           PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1925833   -0.4053570    0.0201904
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7624348    0.5710709    0.9537986
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROBIT           BELARUS                        NA                   NA                -1.1491782   -1.3593933   -0.9389630
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ResPak           PAKISTAN                       NA                   NA                -0.3663158   -0.7677415    0.0351099
Birth       SAS-CompFeed     INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5154897   -0.5413479   -0.4896314
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    CMIN             BANGLADESH                     NA                   NA                -0.5780453   -0.7226627   -0.4334279
6 months    COHORTS          GUATEMALA                      NA                   NA                 0.1940810    0.1226351    0.2655269
6 months    COHORTS          INDIA                          NA                   NA                -0.6908803   -0.7184601   -0.6633005
6 months    COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    CONTENT          PERU                           NA                   NA                 1.0644279    0.9468682    1.1819876
6 months    EE               PAKISTAN                       NA                   NA                -0.7747022   -0.8887874   -0.6606170
6 months    GMS-Nepal        NEPAL                          NA                   NA                -0.6038416   -0.6899448   -0.5177384
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -0.0840134   -0.1945572    0.0265305
6 months    IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    Keneba           GAMBIA                         NA                   NA                -0.1846038   -0.2354782   -0.1337293
6 months    LCNI-5           MALAWI                         NA                   NA                 0.4499404    0.3788501    0.5210308
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    MAL-ED           INDIA                          NA                   NA                -0.7079979   -0.8344175   -0.5815783
6 months    MAL-ED           NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    MAL-ED           PERU                           NA                   NA                 1.0528816    0.9313005    1.1744626
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.5421785    0.3900443    0.6943126
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        NA                   NA                 0.5741099    0.5141290    0.6340908
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ResPak           PAKISTAN                       NA                   NA                -0.1641841   -0.3464247    0.0180565
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0809332    0.0282644    0.1336020
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3105514    0.2848767    0.3362262
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   CMIN             BANGLADESH                     NA                   NA                -0.8535391   -0.9644236   -0.7426546
24 months   COHORTS          GUATEMALA                      NA                   NA                -0.2815804   -0.3354498   -0.2277110
24 months   COHORTS          INDIA                          NA                   NA                -0.6073238   -0.6354743   -0.5791732
24 months   COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   CONTENT          PERU                           NA                   NA                 0.5902439    0.4560143    0.7244735
24 months   EE               PAKISTAN                       NA                   NA                -1.0120238   -1.1588493   -0.8651984
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.1363107   -1.2252817   -1.0473398
24 months   IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   Keneba           GAMBIA                         NA                   NA                -0.8099290   -0.8570608   -0.7627972
24 months   LCNI-5           MALAWI                         NA                   NA                -0.0477709   -0.1296526    0.0341109
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   MAL-ED           INDIA                          NA                   NA                -0.9516520   -1.0670654   -0.8362385
24 months   MAL-ED           NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED           PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        NA                   NA                 0.6981406    0.5843775    0.8119038
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1825404   -1.2814625   -1.0836183


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          1                    0                  0.1910698   -1.0505869    1.4327266
Birth       COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      1                    0                  0.7789549    0.2213345    1.3365753
Birth       COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    0                  0.2691557    0.1313743    0.4069371
Birth       COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    1                    0                  0.4672849    0.1607234    0.7738465
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                  0.2810748   -0.1899337    0.7520833
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                  0.1843244   -0.1065858    0.4752347
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                  1.3501937    0.6963680    2.0040194
Birth       Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         1                    0                  1.1282056    0.6705039    1.5859073
Birth       MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    0                  0.4739400    0.0166381    0.9312420
Birth       MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         1                    0                  0.6702976   -0.2539244    1.5945196
Birth       MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          1                    0                  0.0181757   -0.7445061    0.7808575
Birth       MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    0                 -0.3376536   -0.7819318    0.1066247
Birth       MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    0                  0.7300000   -0.2183507    1.6783507
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2929940   -0.5500130    1.1360010
Birth       NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     1                    0                 -0.0295685   -0.3342687    0.2751317
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                  0.3306747    0.0803591    0.5809904
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                  1.7592827    1.5422300    1.9763354
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.2926303   -0.5366662   -0.0485943
Birth       ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       1                    0                  0.1103571   -0.8380917    1.0588060
Birth       SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          1                    0                  0.1235659   -0.1277828    0.3749146
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                  0.7415664    0.6068628    0.8762700
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.2078332   -0.5803628    0.1646965
6 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMIN             BANGLADESH                     1                    0                 -0.0185096   -0.3250032    0.2879840
6 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      1                    0                 -0.2365140   -0.4370483   -0.0359796
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                 -0.3643484   -0.4552713   -0.2734254
6 months    COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    1                    0                 -0.1993130   -0.3969352   -0.0016908
6 months    CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           1                    0                 -0.1927314   -0.4547813    0.0693185
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -0.0507951   -0.2828137    0.1812234
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                  0.0371421   -0.1984505    0.2727347
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -0.1606017   -0.4273224    0.1061191
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                  0.3421161   -0.1596033    0.8438355
6 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         1                    0                 -0.0611519   -0.2443259    0.1220220
6 months    LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         1                    0                 -0.2118458   -0.3616599   -0.0620316
6 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    0                 -0.1120350   -0.4216181    0.1975481
6 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         1                    0                 -0.6888792   -1.1532924   -0.2244660
6 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    0                 -0.1674776   -0.5018842    0.1669289
6 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    0                 -0.2644895   -0.6609875    0.1320086
6 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    0                 -0.1353232   -0.5444108    0.2737644
6 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                  0.4458302   -0.1144948    1.0061552
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0158547   -0.3565736    0.3882830
6 months    NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     1                    0                 -0.1037195   -0.3733159    0.1658768
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 -0.1685069   -0.4086531    0.0716394
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                 -0.0816941   -0.1697263    0.0063381
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.2897265   -0.5787054   -0.0007477
6 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       1                    0                 -0.6392699   -1.0587552   -0.2197846
6 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          1                    0                 -0.1992841   -0.3671231   -0.0314451
6 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          1                    0                 -0.1737605   -0.4114575    0.0639365
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0330492   -0.2458863    0.1797878
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.0617398   -0.1489543    0.0254746
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.5614977   -0.7913682   -0.3316272
24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMIN             BANGLADESH                     1                    0                 -0.2394967   -0.4736049   -0.0053886
24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      1                    0                 -0.3003769   -0.4173143   -0.1834394
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                 -0.4471185   -0.5310162   -0.3632207
24 months   COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    1                    0                 -0.3409949   -0.5163210   -0.1656687
24 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           1                    0                 -0.4347179   -0.8233697   -0.0460661
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                 -0.3266706   -0.6283024   -0.0250388
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                 -0.0403148   -0.2649120    0.1842825
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.3037617   -0.5625480   -0.0449755
24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         1                    0                 -0.2395500   -0.3982308   -0.0808692
24 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         1                    0                 -0.3914308   -0.5608745   -0.2219871
24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    0                 -0.4193110   -0.6860041   -0.1526179
24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         1                    0                  0.1248322   -0.5749757    0.8246401
24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    0                 -0.1766390   -0.4739608    0.1206828
24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    0                 -0.2208734   -0.6563248    0.2145779
24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    0                 -0.4002395   -0.8613913    0.0609123
24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0754537   -0.3659413    0.5168487
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1876182   -0.5622258    0.1869895
24 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     1                    0                 -0.2168617   -0.4893606    0.0556372
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.4581924   -0.7472166   -0.1691682
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                 -0.0378801   -0.2859950    0.2102348
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.3501700   -0.6050122   -0.0953279
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0291242   -0.2644955    0.2062472


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                 0.0266609   -0.1471643    0.2004861
Birth       COHORTS          GUATEMALA                      0                    NA                 0.0247287    0.0045231    0.0449343
Birth       COHORTS          INDIA                          0                    NA                 0.0165153    0.0079093    0.0251212
Birth       COHORTS          PHILIPPINES                    0                    NA                 0.0138622    0.0043208    0.0234036
Birth       EE               PAKISTAN                       0                    NA                 0.0635197   -0.0443304    0.1713699
Birth       GMS-Nepal        NEPAL                          0                    NA                 0.0204166   -0.0121161    0.0529493
Birth       IRC              INDIA                          0                    NA                 0.0984106    0.0379566    0.1588647
Birth       Keneba           GAMBIA                         0                    NA                 0.0315528    0.0155969    0.0475087
Birth       MAL-ED           BANGLADESH                     0                    NA                 0.0617224   -0.0015515    0.1249964
Birth       MAL-ED           BRAZIL                         0                    NA                 0.0648675   -0.0374695    0.1672045
Birth       MAL-ED           INDIA                          0                    NA                 0.0032312   -0.1323722    0.1388347
Birth       MAL-ED           PERU                           0                    NA                -0.0310997   -0.0739461    0.0117467
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                 0.0486667   -0.0225203    0.1198536
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0331211   -0.0636852    0.1299273
Birth       NIH-Birth        BANGLADESH                     0                    NA                -0.0035482   -0.0401207    0.0330242
Birth       NIH-Crypto       BANGLADESH                     0                    NA                 0.0383527    0.0082880    0.0684173
Birth       PROBIT           BELARUS                        0                    NA                 0.0034378   -0.0016094    0.0084851
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0225523   -0.0424967   -0.0026080
Birth       ResPak           PAKISTAN                       0                    NA                 0.0290414   -0.2210411    0.2791238
Birth       SAS-CompFeed     INDIA                          0                    NA                 0.0226295   -0.0241825    0.0694415
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                 0.0396130    0.0318640    0.0473620
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0429221   -0.1203376    0.0344934
6 months    CMIN             BANGLADESH                     0                    NA                -0.0070077   -0.1230520    0.1090365
6 months    COHORTS          GUATEMALA                      0                    NA                -0.0378226   -0.0703559   -0.0052892
6 months    COHORTS          INDIA                          0                    NA                -0.0434027   -0.0545886   -0.0322167
6 months    COHORTS          PHILIPPINES                    0                    NA                -0.0115640   -0.0231635    0.0000356
6 months    CONTENT          PERU                           0                    NA                -0.0179285   -0.0434331    0.0075760
6 months    EE               PAKISTAN                       0                    NA                -0.0224853   -0.1252240    0.0802534
6 months    GMS-Nepal        NEPAL                          0                    NA                 0.0059928   -0.0320362    0.0440218
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0381362   -0.1019447    0.0256724
6 months    IRC              INDIA                          0                    NA                 0.0436030   -0.0212951    0.1085012
6 months    Keneba           GAMBIA                         0                    NA                -0.0057376   -0.0229408    0.0114657
6 months    LCNI-5           MALAWI                         0                    NA                -0.0780219   -0.1336298   -0.0224139
6 months    MAL-ED           BANGLADESH                     0                    NA                -0.0181301   -0.0684999    0.0322396
6 months    MAL-ED           BRAZIL                         0                    NA                -0.0824018   -0.1457182   -0.0190854
6 months    MAL-ED           INDIA                          0                    NA                -0.0269667   -0.0813840    0.0274505
6 months    MAL-ED           NEPAL                          0                    NA                -0.0313801   -0.0796765    0.0169163
6 months    MAL-ED           PERU                           0                    NA                -0.0168534   -0.0680781    0.0343712
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.0473914   -0.0145307    0.1093135
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0025034   -0.0563055    0.0613123
6 months    NIH-Birth        BANGLADESH                     0                    NA                -0.0164174   -0.0592112    0.0263763
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0240387   -0.0585690    0.0104915
6 months    PROBIT           BELARUS                        0                    NA                -0.0006014   -0.0028419    0.0016391
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0293090   -0.0593638    0.0007459
6 months    ResPak           PAKISTAN                       0                    NA                -0.1765348   -0.2979336   -0.0551360
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.0545268   -0.0998749   -0.0091787
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.0676751   -0.1606440    0.0252938
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0022489   -0.0167364    0.0122386
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0063373   -0.0152983    0.0026237
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.1162240   -0.1691369   -0.0633111
24 months   CMIN             BANGLADESH                     0                    NA                -0.0887025   -0.1766251   -0.0007799
24 months   COHORTS          GUATEMALA                      0                    NA                -0.0941107   -0.1316778   -0.0565435
24 months   COHORTS          INDIA                          0                    NA                -0.0538300   -0.0646650   -0.0429950
24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0192149   -0.0295739   -0.0088559
24 months   CONTENT          PERU                           0                    NA                -0.0450622   -0.0901938    0.0000694
24 months   EE               PAKISTAN                       0                    NA                -0.1322238   -0.2567114   -0.0077362
24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0067881   -0.0446291    0.0310529
24 months   IRC              INDIA                          0                    NA                -0.0378774   -0.0715838   -0.0041710
24 months   Keneba           GAMBIA                         0                    NA                -0.0244269   -0.0409652   -0.0078886
24 months   LCNI-5           MALAWI                         0                    NA                -0.1376613   -0.1992234   -0.0760991
24 months   MAL-ED           BANGLADESH                     0                    NA                -0.0652701   -0.1115744   -0.0189659
24 months   MAL-ED           BRAZIL                         0                    NA                 0.0140344   -0.0648679    0.0929367
24 months   MAL-ED           INDIA                          0                    NA                -0.0280132   -0.0759101    0.0198837
24 months   MAL-ED           NEPAL                          0                    NA                -0.0261561   -0.0785517    0.0262396
24 months   MAL-ED           PERU                           0                    NA                -0.0537635   -0.1185328    0.0110058
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0076088   -0.0369955    0.0522131
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0289318   -0.0874107    0.0295471
24 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0374948   -0.0852468    0.0102573
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0623997   -0.1040441   -0.0207554
24 months   PROBIT           BELARUS                        0                    NA                -0.0001240   -0.0063756    0.0061275
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0362871   -0.0640919   -0.0084822
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0068607   -0.0623184    0.0485970
