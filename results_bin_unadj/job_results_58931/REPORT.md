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

**Outcome Variable:** sstunted

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

agecat      studyid          country                        anywast06    sstunted   n_cell      n
----------  ---------------  -----------------------------  ----------  ---------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          0                   0       37     92
Birth       CMC-V-BCS-2002   INDIA                          0                   1        0     92
Birth       CMC-V-BCS-2002   INDIA                          1                   0       51     92
Birth       CMC-V-BCS-2002   INDIA                          1                   1        4     92
Birth       CMIN             BANGLADESH                     0                   0       15     20
Birth       CMIN             BANGLADESH                     0                   1        0     20
Birth       CMIN             BANGLADESH                     1                   0        5     20
Birth       CMIN             BANGLADESH                     1                   1        0     20
Birth       CONTENT          PERU                           0                   0        2      2
Birth       CONTENT          PERU                           0                   1        0      2
Birth       CONTENT          PERU                           1                   0        0      2
Birth       CONTENT          PERU                           1                   1        0      2
Birth       EE               PAKISTAN                       0                   0      119    240
Birth       EE               PAKISTAN                       0                   1       37    240
Birth       EE               PAKISTAN                       1                   0       73    240
Birth       EE               PAKISTAN                       1                   1       11    240
Birth       GMS-Nepal        NEPAL                          0                   0      406    684
Birth       GMS-Nepal        NEPAL                          0                   1       16    684
Birth       GMS-Nepal        NEPAL                          1                   0      257    684
Birth       GMS-Nepal        NEPAL                          1                   1        5    684
Birth       IRC              INDIA                          0                   0      155    388
Birth       IRC              INDIA                          0                   1        9    388
Birth       IRC              INDIA                          1                   0      217    388
Birth       IRC              INDIA                          1                   1        7    388
Birth       Keneba           GAMBIA                         0                   0      970   1542
Birth       Keneba           GAMBIA                         0                   1       24   1542
Birth       Keneba           GAMBIA                         1                   0      543   1542
Birth       Keneba           GAMBIA                         1                   1        5   1542
Birth       MAL-ED           BANGLADESH                     0                   0      170    229
Birth       MAL-ED           BANGLADESH                     0                   1        7    229
Birth       MAL-ED           BANGLADESH                     1                   0       50    229
Birth       MAL-ED           BANGLADESH                     1                   1        2    229
Birth       MAL-ED           BRAZIL                         0                   0       59     65
Birth       MAL-ED           BRAZIL                         0                   1        3     65
Birth       MAL-ED           BRAZIL                         1                   0        3     65
Birth       MAL-ED           BRAZIL                         1                   1        0     65
Birth       MAL-ED           INDIA                          0                   0       32     47
Birth       MAL-ED           INDIA                          0                   1        1     47
Birth       MAL-ED           INDIA                          1                   0       13     47
Birth       MAL-ED           INDIA                          1                   1        1     47
Birth       MAL-ED           NEPAL                          0                   0       22     27
Birth       MAL-ED           NEPAL                          0                   1        1     27
Birth       MAL-ED           NEPAL                          1                   0        4     27
Birth       MAL-ED           NEPAL                          1                   1        0     27
Birth       MAL-ED           PERU                           0                   0      219    233
Birth       MAL-ED           PERU                           0                   1        4    233
Birth       MAL-ED           PERU                           1                   0       10    233
Birth       MAL-ED           PERU                           1                   1        0    233
Birth       MAL-ED           SOUTH AFRICA                   0                   0      100    122
Birth       MAL-ED           SOUTH AFRICA                   0                   1        1    122
Birth       MAL-ED           SOUTH AFRICA                   1                   0       21    122
Birth       MAL-ED           SOUTH AFRICA                   1                   1        0    122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      110    124
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        9    124
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        5    124
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0    124
Birth       PROVIDE          BANGLADESH                     0                   0      392    539
Birth       PROVIDE          BANGLADESH                     0                   1        4    539
Birth       PROVIDE          BANGLADESH                     1                   0      143    539
Birth       PROVIDE          BANGLADESH                     1                   1        0    539
Birth       ResPak           PAKISTAN                       0                   0       27     42
Birth       ResPak           PAKISTAN                       0                   1        1     42
Birth       ResPak           PAKISTAN                       1                   0       13     42
Birth       ResPak           PAKISTAN                       1                   1        1     42
6 months    CMC-V-BCS-2002   INDIA                          0                   0      155    365
6 months    CMC-V-BCS-2002   INDIA                          0                   1       22    365
6 months    CMC-V-BCS-2002   INDIA                          1                   0      168    365
6 months    CMC-V-BCS-2002   INDIA                          1                   1       20    365
6 months    CMIN             BANGLADESH                     0                   0      179    243
6 months    CMIN             BANGLADESH                     0                   1       22    243
6 months    CMIN             BANGLADESH                     1                   0       36    243
6 months    CMIN             BANGLADESH                     1                   1        6    243
6 months    CONTENT          PERU                           0                   0      210    215
6 months    CONTENT          PERU                           0                   1        1    215
6 months    CONTENT          PERU                           1                   0        4    215
6 months    CONTENT          PERU                           1                   1        0    215
6 months    EE               PAKISTAN                       0                   0      196    373
6 months    EE               PAKISTAN                       0                   1       53    373
6 months    EE               PAKISTAN                       1                   0       96    373
6 months    EE               PAKISTAN                       1                   1       28    373
6 months    GMS-Nepal        NEPAL                          0                   0      324    564
6 months    GMS-Nepal        NEPAL                          0                   1       12    564
6 months    GMS-Nepal        NEPAL                          1                   0      219    564
6 months    GMS-Nepal        NEPAL                          1                   1        9    564
6 months    Guatemala BSC    GUATEMALA                      0                   0      247    280
6 months    Guatemala BSC    GUATEMALA                      0                   1       23    280
6 months    Guatemala BSC    GUATEMALA                      1                   0        6    280
6 months    Guatemala BSC    GUATEMALA                      1                   1        4    280
6 months    IRC              INDIA                          0                   0      162    407
6 months    IRC              INDIA                          0                   1       18    407
6 months    IRC              INDIA                          1                   0      216    407
6 months    IRC              INDIA                          1                   1       11    407
6 months    Keneba           GAMBIA                         0                   0     1411   2056
6 months    Keneba           GAMBIA                         0                   1       30   2056
6 months    Keneba           GAMBIA                         1                   0      578   2056
6 months    Keneba           GAMBIA                         1                   1       37   2056
6 months    MAL-ED           BANGLADESH                     0                   0      179    241
6 months    MAL-ED           BANGLADESH                     0                   1        4    241
6 months    MAL-ED           BANGLADESH                     1                   0       54    241
6 months    MAL-ED           BANGLADESH                     1                   1        4    241
6 months    MAL-ED           BRAZIL                         0                   0      194    209
6 months    MAL-ED           BRAZIL                         0                   1        0    209
6 months    MAL-ED           BRAZIL                         1                   0       15    209
6 months    MAL-ED           BRAZIL                         1                   1        0    209
6 months    MAL-ED           INDIA                          0                   0      154    236
6 months    MAL-ED           INDIA                          0                   1        5    236
6 months    MAL-ED           INDIA                          1                   0       73    236
6 months    MAL-ED           INDIA                          1                   1        4    236
6 months    MAL-ED           NEPAL                          0                   0      188    236
6 months    MAL-ED           NEPAL                          0                   1        0    236
6 months    MAL-ED           NEPAL                          1                   0       47    236
6 months    MAL-ED           NEPAL                          1                   1        1    236
6 months    MAL-ED           PERU                           0                   0      254    273
6 months    MAL-ED           PERU                           0                   1        9    273
6 months    MAL-ED           PERU                           1                   0        9    273
6 months    MAL-ED           PERU                           1                   1        1    273
6 months    MAL-ED           SOUTH AFRICA                   0                   0      218    254
6 months    MAL-ED           SOUTH AFRICA                   0                   1        5    254
6 months    MAL-ED           SOUTH AFRICA                   1                   0       30    254
6 months    MAL-ED           SOUTH AFRICA                   1                   1        1    254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      220    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       14    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0       13    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0    247
6 months    PROVIDE          BANGLADESH                     0                   0      443    604
6 months    PROVIDE          BANGLADESH                     0                   1        7    604
6 months    PROVIDE          BANGLADESH                     1                   0      147    604
6 months    PROVIDE          BANGLADESH                     1                   1        7    604
6 months    ResPak           PAKISTAN                       0                   0      111    239
6 months    ResPak           PAKISTAN                       0                   1       32    239
6 months    ResPak           PAKISTAN                       1                   0       81    239
6 months    ResPak           PAKISTAN                       1                   1       15    239
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1713   2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1       15   2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      297   2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        4   2029
24 months   CMC-V-BCS-2002   INDIA                          0                   0      125    366
24 months   CMC-V-BCS-2002   INDIA                          0                   1       51    366
24 months   CMC-V-BCS-2002   INDIA                          1                   0      120    366
24 months   CMC-V-BCS-2002   INDIA                          1                   1       70    366
24 months   CMIN             BANGLADESH                     0                   0      147    242
24 months   CMIN             BANGLADESH                     0                   1       53    242
24 months   CMIN             BANGLADESH                     1                   0       27    242
24 months   CMIN             BANGLADESH                     1                   1       15    242
24 months   CONTENT          PERU                           0                   0      161    164
24 months   CONTENT          PERU                           0                   1        1    164
24 months   CONTENT          PERU                           1                   0        2    164
24 months   CONTENT          PERU                           1                   1        0    164
24 months   EE               PAKISTAN                       0                   0       73    167
24 months   EE               PAKISTAN                       0                   1       36    167
24 months   EE               PAKISTAN                       1                   0       35    167
24 months   EE               PAKISTAN                       1                   1       23    167
24 months   GMS-Nepal        NEPAL                          0                   0      267    488
24 months   GMS-Nepal        NEPAL                          0                   1       33    488
24 months   GMS-Nepal        NEPAL                          1                   0      168    488
24 months   GMS-Nepal        NEPAL                          1                   1       20    488
24 months   IRC              INDIA                          0                   0      163    409
24 months   IRC              INDIA                          0                   1       18    409
24 months   IRC              INDIA                          1                   0      205    409
24 months   IRC              INDIA                          1                   1       23    409
24 months   Keneba           GAMBIA                         0                   0     1009   1563
24 months   Keneba           GAMBIA                         0                   1       82   1563
24 months   Keneba           GAMBIA                         1                   0      425   1563
24 months   Keneba           GAMBIA                         1                   1       47   1563
24 months   MAL-ED           BANGLADESH                     0                   0      142    212
24 months   MAL-ED           BANGLADESH                     0                   1       20    212
24 months   MAL-ED           BANGLADESH                     1                   0       42    212
24 months   MAL-ED           BANGLADESH                     1                   1        8    212
24 months   MAL-ED           BRAZIL                         0                   0      156    169
24 months   MAL-ED           BRAZIL                         0                   1        0    169
24 months   MAL-ED           BRAZIL                         1                   0       12    169
24 months   MAL-ED           BRAZIL                         1                   1        1    169
24 months   MAL-ED           INDIA                          0                   0      129    227
24 months   MAL-ED           INDIA                          0                   1       22    227
24 months   MAL-ED           INDIA                          1                   0       68    227
24 months   MAL-ED           INDIA                          1                   1        8    227
24 months   MAL-ED           NEPAL                          0                   0      178    228
24 months   MAL-ED           NEPAL                          0                   1        4    228
24 months   MAL-ED           NEPAL                          1                   0       43    228
24 months   MAL-ED           NEPAL                          1                   1        3    228
24 months   MAL-ED           PERU                           0                   0      179    201
24 months   MAL-ED           PERU                           0                   1       14    201
24 months   MAL-ED           PERU                           1                   0        7    201
24 months   MAL-ED           PERU                           1                   1        1    201
24 months   MAL-ED           SOUTH AFRICA                   0                   0      190    238
24 months   MAL-ED           SOUTH AFRICA                   0                   1       22    238
24 months   MAL-ED           SOUTH AFRICA                   1                   0       21    238
24 months   MAL-ED           SOUTH AFRICA                   1                   1        5    238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      136    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       66    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        8    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        4    214
24 months   PROVIDE          BANGLADESH                     0                   0      390    578
24 months   PROVIDE          BANGLADESH                     0                   1       42    578
24 months   PROVIDE          BANGLADESH                     1                   0      136    578
24 months   PROVIDE          BANGLADESH                     1                   1       10    578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0        4      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1        1      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        1      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        0      6


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

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/8f4399b6-46aa-4778-88c5-b68368fadcff/84257223-75df-4d4e-b25f-dc7768b9f947/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8f4399b6-46aa-4778-88c5-b68368fadcff/84257223-75df-4d4e-b25f-dc7768b9f947/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8f4399b6-46aa-4778-88c5-b68368fadcff/84257223-75df-4d4e-b25f-dc7768b9f947/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8f4399b6-46aa-4778-88c5-b68368fadcff/84257223-75df-4d4e-b25f-dc7768b9f947/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       EE               PAKISTAN       0                    NA                0.2371795   0.1702924   0.3040666
Birth       EE               PAKISTAN       1                    NA                0.1309524   0.0586598   0.2032449
Birth       GMS-Nepal        NEPAL          0                    NA                0.0379147   0.0196791   0.0561503
Birth       GMS-Nepal        NEPAL          1                    NA                0.0190840   0.0025047   0.0356632
Birth       IRC              INDIA          0                    NA                0.0548780   0.0199777   0.0897784
Birth       IRC              INDIA          1                    NA                0.0312500   0.0084353   0.0540647
Birth       Keneba           GAMBIA         0                    NA                0.0241449   0.0145993   0.0336904
Birth       Keneba           GAMBIA         1                    NA                0.0091241   0.0011606   0.0170876
6 months    CMC-V-BCS-2002   INDIA          0                    NA                0.1242938   0.0756238   0.1729638
6 months    CMC-V-BCS-2002   INDIA          1                    NA                0.1063830   0.0622486   0.1505173
6 months    CMIN             BANGLADESH     0                    NA                0.1094527   0.0662026   0.1527029
6 months    CMIN             BANGLADESH     1                    NA                0.1428571   0.0368106   0.2489037
6 months    EE               PAKISTAN       0                    NA                0.2128514   0.1619420   0.2637608
6 months    EE               PAKISTAN       1                    NA                0.2258065   0.1521157   0.2994972
6 months    GMS-Nepal        NEPAL          0                    NA                0.0357143   0.0158539   0.0555747
6 months    GMS-Nepal        NEPAL          1                    NA                0.0394737   0.0141764   0.0647710
6 months    IRC              INDIA          0                    NA                0.1000000   0.0561199   0.1438801
6 months    IRC              INDIA          1                    NA                0.0484581   0.0204898   0.0764265
6 months    Keneba           GAMBIA         0                    NA                0.0208189   0.0134452   0.0281925
6 months    Keneba           GAMBIA         1                    NA                0.0601626   0.0413649   0.0789604
6 months    PROVIDE          BANGLADESH     0                    NA                0.0155556   0.0041126   0.0269986
6 months    PROVIDE          BANGLADESH     1                    NA                0.0454545   0.0125289   0.0783802
6 months    ResPak           PAKISTAN       0                    NA                0.2237762   0.1553235   0.2922290
6 months    ResPak           PAKISTAN       1                    NA                0.1562500   0.0834653   0.2290347
24 months   CMC-V-BCS-2002   INDIA          0                    NA                0.2897727   0.2226587   0.3568868
24 months   CMC-V-BCS-2002   INDIA          1                    NA                0.3684211   0.2997377   0.4371044
24 months   CMIN             BANGLADESH     0                    NA                0.2650000   0.2037087   0.3262913
24 months   CMIN             BANGLADESH     1                    NA                0.3571429   0.2119314   0.5023543
24 months   EE               PAKISTAN       0                    NA                0.3302752   0.2417178   0.4188327
24 months   EE               PAKISTAN       1                    NA                0.3965517   0.2702794   0.5228241
24 months   GMS-Nepal        NEPAL          0                    NA                0.1100000   0.0745575   0.1454425
24 months   GMS-Nepal        NEPAL          1                    NA                0.1063830   0.0622639   0.1505021
24 months   IRC              INDIA          0                    NA                0.0994475   0.0557967   0.1430983
24 months   IRC              INDIA          1                    NA                0.1008772   0.0617374   0.1400170
24 months   Keneba           GAMBIA         0                    NA                0.0751604   0.0595108   0.0908100
24 months   Keneba           GAMBIA         1                    NA                0.0995763   0.0725543   0.1265983
24 months   MAL-ED           BANGLADESH     0                    NA                0.1234568   0.0726804   0.1742331
24 months   MAL-ED           BANGLADESH     1                    NA                0.1600000   0.0581433   0.2618567
24 months   MAL-ED           INDIA          0                    NA                0.1456954   0.0892995   0.2020913
24 months   MAL-ED           INDIA          1                    NA                0.1052632   0.0361142   0.1744122
24 months   MAL-ED           SOUTH AFRICA   0                    NA                0.1037736   0.0626352   0.1449119
24 months   MAL-ED           SOUTH AFRICA   1                    NA                0.1923077   0.0404989   0.3441165
24 months   PROVIDE          BANGLADESH     0                    NA                0.0972222   0.0692610   0.1251834
24 months   PROVIDE          BANGLADESH     1                    NA                0.0684932   0.0274856   0.1095007


### Parameter: E(Y)


agecat      studyid          country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       EE               PAKISTAN       NA                   NA                0.2000000   0.1492882   0.2507118
Birth       GMS-Nepal        NEPAL          NA                   NA                0.0307018   0.0177643   0.0436392
Birth       IRC              INDIA          NA                   NA                0.0412371   0.0214268   0.0610475
Birth       Keneba           GAMBIA         NA                   NA                0.0188067   0.0120244   0.0255891
6 months    CMC-V-BCS-2002   INDIA          NA                   NA                0.1150685   0.0822869   0.1478501
6 months    CMIN             BANGLADESH     NA                   NA                0.1152263   0.0749980   0.1554547
6 months    EE               PAKISTAN       NA                   NA                0.2171582   0.1752594   0.2590570
6 months    GMS-Nepal        NEPAL          NA                   NA                0.0372340   0.0215945   0.0528736
6 months    IRC              INDIA          NA                   NA                0.0712531   0.0462303   0.0962759
6 months    Keneba           GAMBIA         NA                   NA                0.0325875   0.0249109   0.0402642
6 months    PROVIDE          BANGLADESH     NA                   NA                0.0231788   0.0111688   0.0351888
6 months    ResPak           PAKISTAN       NA                   NA                0.1966527   0.1461562   0.2471492
24 months   CMC-V-BCS-2002   INDIA          NA                   NA                0.3306011   0.2823401   0.3788621
24 months   CMIN             BANGLADESH     NA                   NA                0.2809917   0.2242434   0.3377401
24 months   EE               PAKISTAN       NA                   NA                0.3532934   0.2805798   0.4260070
24 months   GMS-Nepal        NEPAL          NA                   NA                0.1086066   0.0809724   0.1362407
24 months   IRC              INDIA          NA                   NA                0.1002445   0.0711031   0.1293859
24 months   Keneba           GAMBIA         NA                   NA                0.0825336   0.0688872   0.0961800
24 months   MAL-ED           BANGLADESH     NA                   NA                0.1320755   0.0863920   0.1777589
24 months   MAL-ED           INDIA          NA                   NA                0.1321586   0.0880054   0.1763117
24 months   MAL-ED           SOUTH AFRICA   NA                   NA                0.1134454   0.0730697   0.1538211
24 months   PROVIDE          BANGLADESH     NA                   NA                0.0899654   0.0666186   0.1133122


### Parameter: RR


agecat      studyid          country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       EE               PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
Birth       EE               PAKISTAN       1                    0                 0.5521236   0.2970378   1.0262682
Birth       GMS-Nepal        NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal        NEPAL          1                    0                 0.5033397   0.1864681   1.3586822
Birth       IRC              INDIA          0                    0                 1.0000000   1.0000000   1.0000000
Birth       IRC              INDIA          1                    0                 0.5694444   0.2162511   1.4994928
Birth       Keneba           GAMBIA         0                    0                 1.0000000   1.0000000   1.0000000
Birth       Keneba           GAMBIA         1                    0                 0.3778893   0.1449574   0.9851193
6 months    CMC-V-BCS-2002   INDIA          0                    0                 1.0000000   1.0000000   1.0000000
6 months    CMC-V-BCS-2002   INDIA          1                    0                 0.8558994   0.4838038   1.5141753
6 months    CMIN             BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    CMIN             BANGLADESH     1                    0                 1.3051948   0.5629336   3.0261714
6 months    EE               PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
6 months    EE               PAKISTAN       1                    0                 1.0608643   0.7078497   1.5899321
6 months    GMS-Nepal        NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal        NEPAL          1                    0                 1.1052632   0.4731170   2.5820391
6 months    IRC              INDIA          0                    0                 1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA          1                    0                 0.4845815   0.2346882   1.0005583
6 months    Keneba           GAMBIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    Keneba           GAMBIA         1                    0                 2.8898103   1.8019869   4.6343310
6 months    PROVIDE          BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH     1                    0                 2.9220779   1.0407048   8.2045740
6 months    ResPak           PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ResPak           PAKISTAN       1                    0                 0.6982422   0.3999276   1.2190760
24 months   CMC-V-BCS-2002   INDIA          0                    0                 1.0000000   1.0000000   1.0000000
24 months   CMC-V-BCS-2002   INDIA          1                    0                 1.2714138   0.9444168   1.7116311
24 months   CMIN             BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   CMIN             BANGLADESH     1                    0                 1.3477089   0.8441994   2.1515287
24 months   EE               PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
24 months   EE               PAKISTAN       1                    0                 1.2006705   0.7918360   1.8205913
24 months   GMS-Nepal        NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal        NEPAL          1                    0                 0.9671180   0.5720043   1.6351578
24 months   IRC              INDIA          0                    0                 1.0000000   1.0000000   1.0000000
24 months   IRC              INDIA          1                    0                 1.0143762   0.5646439   1.8223153
24 months   Keneba           GAMBIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   Keneba           GAMBIA         1                    0                 1.3248501   0.9410618   1.8651569
24 months   MAL-ED           BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED           BANGLADESH     1                    0                 1.2960000   0.6073656   2.7654118
24 months   MAL-ED           INDIA          0                    0                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED           INDIA          1                    0                 0.7224880   0.3370479   1.5487088
24 months   MAL-ED           SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED           SOUTH AFRICA   1                    0                 1.8531469   0.7660802   4.4827596
24 months   PROVIDE          BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH     1                    0                 0.7045010   0.3625942   1.3688074


### Parameter: PAR


agecat      studyid          country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE               PAKISTAN       0                    NA                -0.0371795   -0.0722441   -0.0021149
Birth       GMS-Nepal        NEPAL          0                    NA                -0.0072129   -0.0166782    0.0022523
Birth       IRC              INDIA          0                    NA                -0.0136409   -0.0377409    0.0104590
Birth       Keneba           GAMBIA         0                    NA                -0.0053381   -0.0097705   -0.0009057
6 months    CMC-V-BCS-2002   INDIA          0                    NA                -0.0092253   -0.0430782    0.0246277
6 months    CMIN             BANGLADESH     0                    NA                 0.0057736   -0.0140851    0.0256323
6 months    EE               PAKISTAN       0                    NA                 0.0043068   -0.0254750    0.0340886
6 months    GMS-Nepal        NEPAL          0                    NA                 0.0015198   -0.0114828    0.0145223
6 months    IRC              INDIA          0                    NA                -0.0287469   -0.0578758    0.0003819
6 months    Keneba           GAMBIA         0                    NA                 0.0117687    0.0056787    0.0178587
6 months    PROVIDE          BANGLADESH     0                    NA                 0.0076233   -0.0013249    0.0165714
6 months    ResPak           PAKISTAN       0                    NA                -0.0271235   -0.0674772    0.0132302
24 months   CMC-V-BCS-2002   INDIA          0                    NA                 0.0408284   -0.0091858    0.0908426
24 months   CMIN             BANGLADESH     0                    NA                 0.0159917   -0.0117157    0.0436992
24 months   EE               PAKISTAN       0                    NA                 0.0230182   -0.0307617    0.0767980
24 months   GMS-Nepal        NEPAL          0                    NA                -0.0013934   -0.0231959    0.0204090
24 months   IRC              INDIA          0                    NA                 0.0007970   -0.0318860    0.0334800
24 months   Keneba           GAMBIA         0                    NA                 0.0073732   -0.0020731    0.0168195
24 months   MAL-ED           BANGLADESH     0                    NA                 0.0086187   -0.0183051    0.0355425
24 months   MAL-ED           INDIA          0                    NA                -0.0135368   -0.0435147    0.0164411
24 months   MAL-ED           SOUTH AFRICA   0                    NA                 0.0096718   -0.0078666    0.0272102
24 months   PROVIDE          BANGLADESH     0                    NA                -0.0072568   -0.0198352    0.0053216


### Parameter: PAF


agecat      studyid          country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE               PAKISTAN       0                    NA                -0.1858974   -0.3718339   -0.0251625
Birth       GMS-Nepal        NEPAL          0                    NA                -0.2349357   -0.5659674    0.0261189
Birth       IRC              INDIA          0                    NA                -0.3307927   -1.0346200    0.1295627
Birth       Keneba           GAMBIA         0                    NA                -0.2838410   -0.5161216   -0.0871474
6 months    CMC-V-BCS-2002   INDIA          0                    NA                -0.0801722   -0.4174960    0.1768782
6 months    CMIN             BANGLADESH     0                    NA                 0.0501066   -0.1380606    0.2071622
6 months    EE               PAKISTAN       0                    NA                 0.0198324   -0.1273410    0.1477924
6 months    GMS-Nepal        NEPAL          0                    NA                 0.0408163   -0.3798730    0.3332478
6 months    IRC              INDIA          0                    NA                -0.4034483   -0.8517927   -0.0636542
6 months    Keneba           GAMBIA         0                    NA                 0.3611402    0.1698546    0.5083489
6 months    PROVIDE          BANGLADESH     0                    NA                 0.3288889   -0.1267356    0.6002699
6 months    ResPak           PAKISTAN       0                    NA                -0.1379259   -0.3611699    0.0487041
24 months   CMC-V-BCS-2002   INDIA          0                    NA                 0.1234974   -0.0414540    0.2623228
24 months   CMIN             BANGLADESH     0                    NA                 0.0569118   -0.0468380    0.1503791
24 months   EE               PAKISTAN       0                    NA                 0.0651532   -0.1001806    0.2056408
24 months   GMS-Nepal        NEPAL          0                    NA                -0.0128302   -0.2348293    0.1692576
24 months   IRC              INDIA          0                    NA                 0.0079504   -0.3780330    0.2858209
24 months   Keneba           GAMBIA         0                    NA                 0.0893356   -0.0317150    0.1961833
24 months   MAL-ED           BANGLADESH     0                    NA                 0.0652557   -0.1614181    0.2476897
24 months   MAL-ED           INDIA          0                    NA                -0.1024283   -0.3521712    0.1011877
24 months   MAL-ED           SOUTH AFRICA   0                    NA                 0.0852551   -0.0804572    0.2255516
24 months   PROVIDE          BANGLADESH     0                    NA                -0.0806624   -0.2285157    0.0493966
