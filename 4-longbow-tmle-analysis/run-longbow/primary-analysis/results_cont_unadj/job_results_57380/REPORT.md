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

**Intervention Variable:** anywast06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        anywast06    n_cell      n
----------  ---------------  -----------------------------  ----------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          0                37     92
Birth       CMC-V-BCS-2002   INDIA                          1                55     92
Birth       CMIN             BANGLADESH                     0                15     20
Birth       CMIN             BANGLADESH                     1                 5     20
Birth       CONTENT          PERU                           0                 2      2
Birth       CONTENT          PERU                           1                 0      2
Birth       EE               PAKISTAN                       0               156    240
Birth       EE               PAKISTAN                       1                84    240
Birth       GMS-Nepal        NEPAL                          0               422    684
Birth       GMS-Nepal        NEPAL                          1               262    684
Birth       IRC              INDIA                          0               164    388
Birth       IRC              INDIA                          1               224    388
Birth       Keneba           GAMBIA                         0               994   1542
Birth       Keneba           GAMBIA                         1               548   1542
Birth       MAL-ED           BANGLADESH                     0               177    229
Birth       MAL-ED           BANGLADESH                     1                52    229
Birth       MAL-ED           BRAZIL                         0                62     65
Birth       MAL-ED           BRAZIL                         1                 3     65
Birth       MAL-ED           INDIA                          0                33     47
Birth       MAL-ED           INDIA                          1                14     47
Birth       MAL-ED           NEPAL                          0                23     27
Birth       MAL-ED           NEPAL                          1                 4     27
Birth       MAL-ED           PERU                           0               223    233
Birth       MAL-ED           PERU                           1                10    233
Birth       MAL-ED           SOUTH AFRICA                   0               101    122
Birth       MAL-ED           SOUTH AFRICA                   1                21    122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               119    124
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 5    124
Birth       PROVIDE          BANGLADESH                     0               396    539
Birth       PROVIDE          BANGLADESH                     1               143    539
Birth       ResPak           PAKISTAN                       0                28     42
Birth       ResPak           PAKISTAN                       1                14     42
6 months    CMC-V-BCS-2002   INDIA                          0               177    365
6 months    CMC-V-BCS-2002   INDIA                          1               188    365
6 months    CMIN             BANGLADESH                     0               201    243
6 months    CMIN             BANGLADESH                     1                42    243
6 months    CONTENT          PERU                           0               211    215
6 months    CONTENT          PERU                           1                 4    215
6 months    EE               PAKISTAN                       0               249    373
6 months    EE               PAKISTAN                       1               124    373
6 months    GMS-Nepal        NEPAL                          0               336    564
6 months    GMS-Nepal        NEPAL                          1               228    564
6 months    Guatemala BSC    GUATEMALA                      0               270    280
6 months    Guatemala BSC    GUATEMALA                      1                10    280
6 months    IRC              INDIA                          0               180    407
6 months    IRC              INDIA                          1               227    407
6 months    Keneba           GAMBIA                         0              1441   2056
6 months    Keneba           GAMBIA                         1               615   2056
6 months    MAL-ED           BANGLADESH                     0               183    241
6 months    MAL-ED           BANGLADESH                     1                58    241
6 months    MAL-ED           BRAZIL                         0               194    209
6 months    MAL-ED           BRAZIL                         1                15    209
6 months    MAL-ED           INDIA                          0               159    236
6 months    MAL-ED           INDIA                          1                77    236
6 months    MAL-ED           NEPAL                          0               188    236
6 months    MAL-ED           NEPAL                          1                48    236
6 months    MAL-ED           PERU                           0               263    273
6 months    MAL-ED           PERU                           1                10    273
6 months    MAL-ED           SOUTH AFRICA                   0               223    254
6 months    MAL-ED           SOUTH AFRICA                   1                31    254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               234    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                13    247
6 months    PROVIDE          BANGLADESH                     0               450    604
6 months    PROVIDE          BANGLADESH                     1               154    604
6 months    ResPak           PAKISTAN                       0               143    239
6 months    ResPak           PAKISTAN                       1                96    239
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1728   2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               301   2029
24 months   CMC-V-BCS-2002   INDIA                          0               176    366
24 months   CMC-V-BCS-2002   INDIA                          1               190    366
24 months   CMIN             BANGLADESH                     0               200    242
24 months   CMIN             BANGLADESH                     1                42    242
24 months   CONTENT          PERU                           0               162    164
24 months   CONTENT          PERU                           1                 2    164
24 months   EE               PAKISTAN                       0               109    167
24 months   EE               PAKISTAN                       1                58    167
24 months   GMS-Nepal        NEPAL                          0               300    488
24 months   GMS-Nepal        NEPAL                          1               188    488
24 months   IRC              INDIA                          0               181    409
24 months   IRC              INDIA                          1               228    409
24 months   Keneba           GAMBIA                         0              1091   1563
24 months   Keneba           GAMBIA                         1               472   1563
24 months   MAL-ED           BANGLADESH                     0               162    212
24 months   MAL-ED           BANGLADESH                     1                50    212
24 months   MAL-ED           BRAZIL                         0               156    169
24 months   MAL-ED           BRAZIL                         1                13    169
24 months   MAL-ED           INDIA                          0               151    227
24 months   MAL-ED           INDIA                          1                76    227
24 months   MAL-ED           NEPAL                          0               182    228
24 months   MAL-ED           NEPAL                          1                46    228
24 months   MAL-ED           PERU                           0               193    201
24 months   MAL-ED           PERU                           1                 8    201
24 months   MAL-ED           SOUTH AFRICA                   0               212    238
24 months   MAL-ED           SOUTH AFRICA                   1                26    238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               202    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                12    214
24 months   PROVIDE          BANGLADESH                     0               432    578
24 months   PROVIDE          BANGLADESH                     1               146    578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 5      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      6


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
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
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: CONTENT, country: PERU
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/2501652b-9dc5-401a-b6a4-4e067fd13511/caf09892-9395-4707-8a2c-df17a2ed7c5d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2501652b-9dc5-401a-b6a4-4e067fd13511/caf09892-9395-4707-8a2c-df17a2ed7c5d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2501652b-9dc5-401a-b6a4-4e067fd13511/caf09892-9395-4707-8a2c-df17a2ed7c5d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.7910811   -1.1115551   -0.4706071
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -1.0756364   -1.3626405   -0.7886323
Birth       CMIN             BANGLADESH                     0                    NA                -1.2613333   -1.7710980   -0.7515686
Birth       CMIN             BANGLADESH                     1                    NA                -1.0280000   -2.2553082    0.1993082
Birth       EE               PAKISTAN                       0                    NA                -2.0487821   -2.2576622   -1.8399019
Birth       EE               PAKISTAN                       1                    NA                -1.5119048   -1.8688110   -1.1549986
Birth       GMS-Nepal        NEPAL                          0                    NA                -1.1500474   -1.2507864   -1.0493084
Birth       GMS-Nepal        NEPAL                          1                    NA                -0.8769847   -0.9974556   -0.7565139
Birth       IRC              INDIA                          0                    NA                -0.8824390   -1.0921018   -0.6727762
Birth       IRC              INDIA                          1                    NA                 0.1125000   -0.1037740    0.3287740
Birth       Keneba           GAMBIA                         0                    NA                -0.1706539   -0.2451175   -0.0961904
Birth       Keneba           GAMBIA                         1                    NA                 0.4011314    0.2902414    0.5120214
Birth       MAL-ED           BANGLADESH                     0                    NA                -1.1225989   -1.2702265   -0.9749713
Birth       MAL-ED           BANGLADESH                     1                    NA                -1.0411538   -1.3516184   -0.7306893
Birth       MAL-ED           INDIA                          0                    NA                -1.2875758   -1.6077743   -0.9673772
Birth       MAL-ED           INDIA                          1                    NA                -1.0057143   -1.6296563   -0.3817722
Birth       MAL-ED           PERU                           0                    NA                -0.8908520   -1.0079254   -0.7737786
Birth       MAL-ED           PERU                           1                    NA                -0.7030000   -1.5047818    0.0987818
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.6670297   -0.8519500   -0.4821094
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                -0.2066667   -0.6579509    0.2446176
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.1432773   -1.3541075   -0.9324471
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.9860000   -2.2167588    0.2447588
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.8771465   -0.9622990   -0.7919940
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.9071329   -1.0632053   -0.7510604
Birth       ResPak           PAKISTAN                       0                    NA                -1.2075000   -1.6425384   -0.7724616
Birth       ResPak           PAKISTAN                       1                    NA                -0.5250000   -1.4246107    0.3746107
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.4063559   -1.6195354   -1.1931764
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -1.4409752   -1.6317181   -1.2502323
6 months    CMIN             BANGLADESH                     0                    NA                -1.7727944   -1.9229283   -1.6226604
6 months    CMIN             BANGLADESH                     1                    NA                -1.8401587   -2.1859411   -1.4943764
6 months    EE               PAKISTAN                       0                    NA                -2.0532129   -2.1938932   -1.9125325
6 months    EE               PAKISTAN                       1                    NA                -2.1444892   -2.3649151   -1.9240634
6 months    GMS-Nepal        NEPAL                          0                    NA                -1.3721776   -1.4712311   -1.2731241
6 months    GMS-Nepal        NEPAL                          1                    NA                -1.3193933   -1.4463049   -1.1924817
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -1.5400679   -1.6540810   -1.4260548
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -2.6175000   -3.1673168   -2.0676832
6 months    IRC              INDIA                          0                    NA                -1.4440926   -1.6347395   -1.2534457
6 months    IRC              INDIA                          1                    NA                -1.0681351   -1.2459820   -0.8902882
6 months    Keneba           GAMBIA                         0                    NA                -0.8982180   -0.9515845   -0.8448514
6 months    Keneba           GAMBIA                         1                    NA                -0.9432099   -1.0393535   -0.8470663
6 months    MAL-ED           BANGLADESH                     0                    NA                -1.1663661   -1.2915902   -1.0411421
6 months    MAL-ED           BANGLADESH                     1                    NA                -1.3268678   -1.6094112   -1.0443244
6 months    MAL-ED           BRAZIL                         0                    NA                 0.0258419   -0.1230694    0.1747532
6 months    MAL-ED           BRAZIL                         1                    NA                 0.3286667   -0.2102808    0.8676141
6 months    MAL-ED           INDIA                          0                    NA                -1.2356289   -1.3762497   -1.0950082
6 months    MAL-ED           INDIA                          1                    NA                -1.1617532   -1.3787097   -0.9447968
6 months    MAL-ED           NEPAL                          0                    NA                -0.5272518   -0.6471437   -0.4073598
6 months    MAL-ED           NEPAL                          1                    NA                -0.6960417   -0.9861655   -0.4059179
6 months    MAL-ED           PERU                           0                    NA                -1.3327281   -1.4417092   -1.2237471
6 months    MAL-ED           PERU                           1                    NA                -1.0853333   -1.7614014   -0.4092653
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -1.0474215   -1.1857172   -0.9091258
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                -1.1776882   -1.4962343   -0.8591420
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3617094   -1.4860083   -1.2374105
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.4953846   -2.0985583   -0.8922109
6 months    PROVIDE          BANGLADESH                     0                    NA                -1.0494481   -1.1347977   -0.9640986
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.2151299   -1.3651239   -1.0651359
6 months    ResPak           PAKISTAN                       0                    NA                -1.7114452   -1.9624313   -1.4604592
6 months    ResPak           PAKISTAN                       1                    NA                -1.0142708   -1.3485619   -0.6799797
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5413874   -0.5943005   -0.4884743
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5552159   -0.6843481   -0.4260838
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -2.5009280   -2.6436558   -2.3582003
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.5933509   -2.7296937   -2.4570081
24 months   CMIN             BANGLADESH                     0                    NA                -2.4856000   -2.6237890   -2.3474110
24 months   CMIN             BANGLADESH                     1                    NA                -2.6316667   -2.9245358   -2.3387976
24 months   EE               PAKISTAN                       0                    NA                -2.6563150   -2.8374900   -2.4751400
24 months   EE               PAKISTAN                       1                    NA                -2.6956897   -2.9312152   -2.4601641
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.9003111   -2.0035744   -1.7970478
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.8668440   -2.0152362   -1.7184517
24 months   IRC              INDIA                          0                    NA                -1.8377164   -1.9699746   -1.7054582
24 months   IRC              INDIA                          1                    NA                -1.7678655   -1.8987862   -1.6369448
24 months   Keneba           GAMBIA                         0                    NA                -1.5492125   -1.6104902   -1.4879348
24 months   Keneba           GAMBIA                         1                    NA                -1.6428047   -1.7411693   -1.5444402
24 months   MAL-ED           BANGLADESH                     0                    NA                -1.9772840   -2.1221090   -1.8324589
24 months   MAL-ED           BANGLADESH                     1                    NA                -1.9820000   -2.2429000   -1.7211000
24 months   MAL-ED           BRAZIL                         0                    NA                 0.0498291   -0.1250150    0.2246731
24 months   MAL-ED           BRAZIL                         1                    NA                -0.5184615   -1.0831666    0.0462435
24 months   MAL-ED           INDIA                          0                    NA                -1.9423841   -2.0934365   -1.7913317
24 months   MAL-ED           INDIA                          1                    NA                -1.7745395   -1.9935178   -1.5555611
24 months   MAL-ED           NEPAL                          0                    NA                -1.3089011   -1.4381832   -1.1796190
24 months   MAL-ED           NEPAL                          1                    NA                -1.3023913   -1.6008673   -1.0039153
24 months   MAL-ED           PERU                           0                    NA                -1.7639724   -1.8863550   -1.6415897
24 months   MAL-ED           PERU                           1                    NA                -1.4750000   -2.1910692   -0.7589308
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -1.6487539   -1.7883552   -1.5091527
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                -1.6149359   -2.0879002   -1.1419716
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6355693   -2.7737313   -2.4974073
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.8137500   -3.4395108   -2.1879892
24 months   PROVIDE          BANGLADESH                     0                    NA                -1.5870370   -1.6869859   -1.4870882
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.6479452   -1.7937873   -1.5021032


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       CMIN             BANGLADESH                     NA                   NA                -1.2030000   -1.6953191   -0.7106809
Birth       EE               PAKISTAN                       NA                   NA                -1.8608750   -2.0482045   -1.6735455
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.0454532   -1.1235003   -0.9674062
Birth       IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       Keneba           GAMBIA                         NA                   NA                 0.0325486   -0.0310420    0.0961393
Birth       MAL-ED           BANGLADESH                     NA                   NA                -1.1041048   -1.2383048   -0.9699048
Birth       MAL-ED           INDIA                          NA                   NA                -1.2036170   -1.4976814   -0.9095527
Birth       MAL-ED           PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.5877869   -0.7622273   -0.4133464
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1369355   -1.3453337   -0.9285373
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ResPak           PAKISTAN                       NA                   NA                -0.9800000   -1.4086438   -0.5513562
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4241872   -1.5668135   -1.2815609
6 months    CMIN             BANGLADESH                     NA                   NA                -1.7844376   -1.9222926   -1.6465825
6 months    EE               PAKISTAN                       NA                   NA                -2.0835567   -2.2027557   -1.9643578
6 months    GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -1.5785476   -1.6926664   -1.4644288
6 months    IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    Keneba           GAMBIA                         NA                   NA                -0.9116762   -0.9588660   -0.8644864
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           INDIA                          NA                   NA                -1.2115254   -1.3298727   -1.0931782
6 months    MAL-ED           NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0633202   -1.1909180   -0.9357224
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ResPak           PAKISTAN                       NA                   NA                -1.4314086   -1.6374838   -1.2253335
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5434389   -0.5924056   -0.4944722
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5489071   -2.6476125   -2.4502017
24 months   CMIN             BANGLADESH                     NA                   NA                -2.5109504   -2.6361514   -2.3857494
24 months   EE               PAKISTAN                       NA                   NA                -2.6699900   -2.8138051   -2.5261749
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   Keneba           GAMBIA                         NA                   NA                -1.5774758   -1.6295950   -1.5253566
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED           NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED           PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          1                    0                 -0.2845553   -0.7147587    0.1456481
Birth       CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       CMIN             BANGLADESH                     1                    0                  0.2333333   -1.0956307    1.5622974
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                  0.5368773    0.1233402    0.9504144
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                  0.2730627    0.1160226    0.4301027
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                  0.9949390    0.6937199    1.2961581
Birth       Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         1                    0                  0.5717853    0.4382135    0.7053571
Birth       MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    0                  0.0814450   -0.2623313    0.4252213
Birth       MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          1                    0                  0.2818615   -0.4194450    0.9831680
Birth       MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    0                  0.1878520   -0.6224320    0.9981360
Birth       MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    0                  0.4603630   -0.0273387    0.9480648
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1572773   -1.0914086    1.4059632
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.0299864   -0.2077772    0.1478044
Birth       ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       1                    0                  0.6825000   -0.3167786    1.6817786
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.0346192   -0.3206758    0.2514373
6 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMIN             BANGLADESH                     1                    0                 -0.0673644   -0.4443334    0.3096047
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -0.0912764   -0.3527692    0.1702164
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                  0.0527843   -0.1082068    0.2137754
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -1.0774321   -1.6389457   -0.5159185
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                  0.3759575    0.1152359    0.6366791
6 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         1                    0                 -0.0449920   -0.1549537    0.0649698
6 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    0                 -0.1605017   -0.4695516    0.1485482
6 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         1                    0                  0.3028247   -0.2563165    0.8619660
6 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    0                  0.0738757   -0.1846669    0.3324183
6 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    0                 -0.1687899   -0.4827101    0.1451303
6 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    0                  0.2473948   -0.4374007    0.9321903
6 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                 -0.1302666   -0.4775379    0.2170046
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1336752   -0.7495232    0.4821728
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.1656817   -0.3382585    0.0068951
6 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       1                    0                  0.6971744    0.2791498    1.1151990
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0138285   -0.1533810    0.1257240
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0924228   -0.2898072    0.1049615
24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMIN             BANGLADESH                     1                    0                 -0.1460667   -0.4699008    0.1777674
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                 -0.0393747   -0.3365222    0.2577729
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                  0.0334671   -0.1473188    0.2142531
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                  0.0698509   -0.1162471    0.2559489
24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         1                    0                 -0.0935922   -0.2094824    0.0222980
24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    0                 -0.0047160   -0.3031170    0.2936849
24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         1                    0                 -0.5682906   -1.1594439    0.0228627
24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    0                  0.1678446   -0.0981785    0.4338678
24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    0                  0.0065098   -0.3187621    0.3317817
24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    0                  0.2889724   -0.4374797    1.0154244
24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0338180   -0.4593186    0.5269547
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1781807   -0.8190125    0.4626511
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.0609082   -0.2377122    0.1158959


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.1701146   -0.4288941    0.0886650
Birth       CMIN             BANGLADESH                     0                    NA                 0.0583333   -0.2769994    0.3936660
Birth       EE               PAKISTAN                       0                    NA                 0.1879071    0.0395728    0.3362413
Birth       GMS-Nepal        NEPAL                          0                    NA                 0.1045942    0.0436232    0.1655652
Birth       IRC              INDIA                          0                    NA                 0.5743978    0.3937355    0.7550601
Birth       Keneba           GAMBIA                         0                    NA                 0.2032026    0.1538060    0.2525991
Birth       MAL-ED           BANGLADESH                     0                    NA                 0.0184941   -0.0596942    0.0966823
Birth       MAL-ED           INDIA                          0                    NA                 0.0839587   -0.1282362    0.2961537
Birth       MAL-ED           PERU                           0                    NA                 0.0080623   -0.0270572    0.0431818
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                 0.0792428   -0.0102345    0.1687201
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0063418   -0.0443044    0.0569881
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0079556   -0.0551378    0.0392267
Birth       ResPak           PAKISTAN                       0                    NA                 0.2275000   -0.1198462    0.5748462
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0178313   -0.1651807    0.1295182
6 months    CMIN             BANGLADESH                     0                    NA                -0.0116432   -0.0768773    0.0535909
6 months    EE               PAKISTAN                       0                    NA                -0.0303439   -0.1173842    0.0566964
6 months    GMS-Nepal        NEPAL                          0                    NA                 0.0213383   -0.0437784    0.0864550
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0384797   -0.0693442   -0.0076152
6 months    IRC              INDIA                          0                    NA                 0.2096864    0.0631417    0.3562310
6 months    Keneba           GAMBIA                         0                    NA                -0.0134582   -0.0463625    0.0194461
6 months    MAL-ED           BANGLADESH                     0                    NA                -0.0386270   -0.1135089    0.0362550
6 months    MAL-ED           BRAZIL                         0                    NA                 0.0217338   -0.0197779    0.0632456
6 months    MAL-ED           INDIA                          0                    NA                 0.0241035   -0.0603677    0.1085747
6 months    MAL-ED           NEPAL                          0                    NA                -0.0343301   -0.0987665    0.0301062
6 months    MAL-ED           PERU                           0                    NA                 0.0090621   -0.0166228    0.0347470
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0158987   -0.0586066    0.0268093
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0070355   -0.0396625    0.0255914
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0422434   -0.0866206    0.0021339
6 months    ResPak           PAKISTAN                       0                    NA                 0.2800366    0.1066035    0.4534696
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0020514   -0.0227550    0.0186521
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0479791   -0.1505558    0.0545977
24 months   CMIN             BANGLADESH                     0                    NA                -0.0253504   -0.0819853    0.0312845
24 months   EE               PAKISTAN                       0                    NA                -0.0136750   -0.1169154    0.0895653
24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0128931   -0.0567690    0.0825551
24 months   IRC              INDIA                          0                    NA                 0.0389389   -0.0648574    0.1427352
24 months   Keneba           GAMBIA                         0                    NA                -0.0282633   -0.0633250    0.0067984
24 months   MAL-ED           BANGLADESH                     0                    NA                -0.0011123   -0.0714904    0.0692658
24 months   MAL-ED           BRAZIL                         0                    NA                -0.0437147   -0.0946281    0.0071987
24 months   MAL-ED           INDIA                          0                    NA                 0.0561947   -0.0334670    0.1458564
24 months   MAL-ED           NEPAL                          0                    NA                 0.0013134   -0.0643125    0.0669393
24 months   MAL-ED           PERU                           0                    NA                 0.0115014   -0.0184534    0.0414561
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0036944   -0.0501944    0.0575832
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0099914   -0.0463452    0.0263623
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0153851   -0.0600971    0.0293269
