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

* arm
* sex
* brthmon
* W_mage
* meducyrs
* hhwealth_quart
* W_nrooms
* month
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_month
* delta_W_parity

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




# Results Detail

## Results Plots
![](/tmp/349d64f4-b247-42f2-b7cd-1687154fb990/6b120b04-8154-44a8-bdde-3319294fe8f1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/349d64f4-b247-42f2-b7cd-1687154fb990/6b120b04-8154-44a8-bdde-3319294fe8f1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/349d64f4-b247-42f2-b7cd-1687154fb990/6b120b04-8154-44a8-bdde-3319294fe8f1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/349d64f4-b247-42f2-b7cd-1687154fb990/6b120b04-8154-44a8-bdde-3319294fe8f1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       EE               PAKISTAN       0                    NA                0.2407414   0.1723969   0.3090859
Birth       EE               PAKISTAN       1                    NA                0.1278146   0.0540941   0.2015351
Birth       GMS-Nepal        NEPAL          0                    NA                0.0379147   0.0196791   0.0561503
Birth       GMS-Nepal        NEPAL          1                    NA                0.0190840   0.0025047   0.0356632
Birth       IRC              INDIA          0                    NA                0.0548780   0.0199777   0.0897784
Birth       IRC              INDIA          1                    NA                0.0312500   0.0084353   0.0540647
Birth       Keneba           GAMBIA         0                    NA                0.0241449   0.0145993   0.0336904
Birth       Keneba           GAMBIA         1                    NA                0.0091241   0.0011606   0.0170876
6 months    CMC-V-BCS-2002   INDIA          0                    NA                0.1212944   0.0730558   0.1695329
6 months    CMC-V-BCS-2002   INDIA          1                    NA                0.1076440   0.0634507   0.1518373
6 months    CMIN             BANGLADESH     0                    NA                0.1094527   0.0662026   0.1527029
6 months    CMIN             BANGLADESH     1                    NA                0.1428571   0.0368106   0.2489037
6 months    EE               PAKISTAN       0                    NA                0.2157966   0.1646647   0.2669286
6 months    EE               PAKISTAN       1                    NA                0.2234059   0.1500944   0.2967175
6 months    GMS-Nepal        NEPAL          0                    NA                0.0357143   0.0158539   0.0555747
6 months    GMS-Nepal        NEPAL          1                    NA                0.0394737   0.0141764   0.0647710
6 months    IRC              INDIA          0                    NA                0.0975642   0.0536200   0.1415083
6 months    IRC              INDIA          1                    NA                0.0477505   0.0197782   0.0757228
6 months    Keneba           GAMBIA         0                    NA                0.0209287   0.0135386   0.0283187
6 months    Keneba           GAMBIA         1                    NA                0.0596065   0.0407213   0.0784917
6 months    PROVIDE          BANGLADESH     0                    NA                0.0155556   0.0041126   0.0269986
6 months    PROVIDE          BANGLADESH     1                    NA                0.0454545   0.0125289   0.0783802
6 months    ResPak           PAKISTAN       0                    NA                0.2263465   0.1575177   0.2951752
6 months    ResPak           PAKISTAN       1                    NA                0.1460766   0.0743431   0.2178100
24 months   CMC-V-BCS-2002   INDIA          0                    NA                0.2888892   0.2213757   0.3564027
24 months   CMC-V-BCS-2002   INDIA          1                    NA                0.3605564   0.2918294   0.4292833
24 months   CMIN             BANGLADESH     0                    NA                0.2642050   0.2028225   0.3255876
24 months   CMIN             BANGLADESH     1                    NA                0.3516987   0.2018785   0.5015190
24 months   EE               PAKISTAN       0                    NA                0.3351439   0.2463706   0.4239172
24 months   EE               PAKISTAN       1                    NA                0.4176445   0.2896347   0.5456544
24 months   GMS-Nepal        NEPAL          0                    NA                0.1099464   0.0744443   0.1454484
24 months   GMS-Nepal        NEPAL          1                    NA                0.1079392   0.0637470   0.1521313
24 months   IRC              INDIA          0                    NA                0.0972076   0.0533335   0.1410817
24 months   IRC              INDIA          1                    NA                0.1025314   0.0628987   0.1421641
24 months   Keneba           GAMBIA         0                    NA                0.0752130   0.0595190   0.0909069
24 months   Keneba           GAMBIA         1                    NA                0.0980441   0.0714496   0.1246386
24 months   MAL-ED           BANGLADESH     0                    NA                0.1234568   0.0726804   0.1742331
24 months   MAL-ED           BANGLADESH     1                    NA                0.1600000   0.0581433   0.2618567
24 months   MAL-ED           INDIA          0                    NA                0.1456954   0.0892995   0.2020913
24 months   MAL-ED           INDIA          1                    NA                0.1052632   0.0361142   0.1744122
24 months   MAL-ED           SOUTH AFRICA   0                    NA                0.1037736   0.0626352   0.1449119
24 months   MAL-ED           SOUTH AFRICA   1                    NA                0.1923077   0.0404989   0.3441165
24 months   PROVIDE          BANGLADESH     0                    NA                0.0965574   0.0688112   0.1243036
24 months   PROVIDE          BANGLADESH     1                    NA                0.0645481   0.0252774   0.1038188


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
Birth       EE               PAKISTAN       1                    0                 0.5309208   0.2794499   1.0086850
Birth       GMS-Nepal        NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal        NEPAL          1                    0                 0.5033397   0.1864681   1.3586822
Birth       IRC              INDIA          0                    0                 1.0000000   1.0000000   1.0000000
Birth       IRC              INDIA          1                    0                 0.5694444   0.2162511   1.4994928
Birth       Keneba           GAMBIA         0                    0                 1.0000000   1.0000000   1.0000000
Birth       Keneba           GAMBIA         1                    0                 0.3778893   0.1449574   0.9851193
6 months    CMC-V-BCS-2002   INDIA          0                    0                 1.0000000   1.0000000   1.0000000
6 months    CMC-V-BCS-2002   INDIA          1                    0                 0.8874608   0.5030772   1.5655383
6 months    CMIN             BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    CMIN             BANGLADESH     1                    0                 1.3051948   0.5629336   3.0261714
6 months    EE               PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
6 months    EE               PAKISTAN       1                    0                 1.0352615   0.6906530   1.5518161
6 months    GMS-Nepal        NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal        NEPAL          1                    0                 1.1052632   0.4731170   2.5820391
6 months    IRC              INDIA          0                    0                 1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA          1                    0                 0.4894266   0.2343232   1.0222561
6 months    Keneba           GAMBIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    Keneba           GAMBIA         1                    0                 2.8480811   1.7725619   4.5761820
6 months    PROVIDE          BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH     1                    0                 2.9220779   1.0407048   8.2045740
6 months    ResPak           PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ResPak           PAKISTAN       1                    0                 0.6453671   0.3624345   1.1491693
24 months   CMC-V-BCS-2002   INDIA          0                    0                 1.0000000   1.0000000   1.0000000
24 months   CMC-V-BCS-2002   INDIA          1                    0                 1.2480784   0.9225684   1.6884383
24 months   CMIN             BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   CMIN             BANGLADESH     1                    0                 1.3311583   0.8190424   2.1634808
24 months   EE               PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
24 months   EE               PAKISTAN       1                    0                 1.2461649   0.8308828   1.8690083
24 months   GMS-Nepal        NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal        NEPAL          1                    0                 0.9817437   0.5828410   1.6536598
24 months   IRC              INDIA          0                    0                 1.0000000   1.0000000   1.0000000
24 months   IRC              INDIA          1                    0                 1.0547675   0.5838273   1.9055882
24 months   Keneba           GAMBIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   Keneba           GAMBIA         1                    0                 1.3035531   0.9257774   1.8354852
24 months   MAL-ED           BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED           BANGLADESH     1                    0                 1.2960000   0.6073656   2.7654118
24 months   MAL-ED           INDIA          0                    0                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED           INDIA          1                    0                 0.7224880   0.3370479   1.5487088
24 months   MAL-ED           SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED           SOUTH AFRICA   1                    0                 1.8531469   0.7660802   4.4827596
24 months   PROVIDE          BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH     1                    0                 0.6684944   0.3406451   1.3118779


### Parameter: PAR


agecat      studyid          country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE               PAKISTAN       0                    NA                -0.0407414   -0.0770720   -0.0044108
Birth       GMS-Nepal        NEPAL          0                    NA                -0.0072129   -0.0166782    0.0022523
Birth       IRC              INDIA          0                    NA                -0.0136409   -0.0377409    0.0104590
Birth       Keneba           GAMBIA         0                    NA                -0.0053381   -0.0097705   -0.0009057
6 months    CMC-V-BCS-2002   INDIA          0                    NA                -0.0062259   -0.0396366    0.0271849
6 months    CMIN             BANGLADESH     0                    NA                 0.0057736   -0.0140851    0.0256323
6 months    EE               PAKISTAN       0                    NA                 0.0013615   -0.0287689    0.0314920
6 months    GMS-Nepal        NEPAL          0                    NA                 0.0015198   -0.0114828    0.0145223
6 months    IRC              INDIA          0                    NA                -0.0263111   -0.0554185    0.0027963
6 months    Keneba           GAMBIA         0                    NA                 0.0116589    0.0055667    0.0177511
6 months    PROVIDE          BANGLADESH     0                    NA                 0.0076233   -0.0013249    0.0165714
6 months    ResPak           PAKISTAN       0                    NA                -0.0296938   -0.0704480    0.0110604
24 months   CMC-V-BCS-2002   INDIA          0                    NA                 0.0417119   -0.0085844    0.0920083
24 months   CMIN             BANGLADESH     0                    NA                 0.0167867   -0.0110537    0.0446271
24 months   EE               PAKISTAN       0                    NA                 0.0181495   -0.0356769    0.0719760
24 months   GMS-Nepal        NEPAL          0                    NA                -0.0013398   -0.0231815    0.0205019
24 months   IRC              INDIA          0                    NA                 0.0030369   -0.0297291    0.0358029
24 months   Keneba           GAMBIA         0                    NA                 0.0073206   -0.0021560    0.0167973
24 months   MAL-ED           BANGLADESH     0                    NA                 0.0086187   -0.0183051    0.0355425
24 months   MAL-ED           INDIA          0                    NA                -0.0135368   -0.0435147    0.0164411
24 months   MAL-ED           SOUTH AFRICA   0                    NA                 0.0096718   -0.0078666    0.0272102
24 months   PROVIDE          BANGLADESH     0                    NA                -0.0065920   -0.0192256    0.0060415


### Parameter: PAF


agecat      studyid          country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE               PAKISTAN       0                    NA                -0.2037071   -0.3955825   -0.0382121
Birth       GMS-Nepal        NEPAL          0                    NA                -0.2349357   -0.5659674    0.0261189
Birth       IRC              INDIA          0                    NA                -0.3307927   -1.0346200    0.1295627
Birth       Keneba           GAMBIA         0                    NA                -0.2838410   -0.5161216   -0.0871474
6 months    CMC-V-BCS-2002   INDIA          0                    NA                -0.0541058   -0.3876672    0.1992755
6 months    CMIN             BANGLADESH     0                    NA                 0.0501066   -0.1380606    0.2071622
6 months    EE               PAKISTAN       0                    NA                 0.0062698   -0.1426113    0.1357519
6 months    GMS-Nepal        NEPAL          0                    NA                 0.0408163   -0.3798730    0.3332478
6 months    IRC              INDIA          0                    NA                -0.3692625   -0.8175778   -0.0315265
6 months    Keneba           GAMBIA         0                    NA                 0.3577710    0.1662525    0.5052961
6 months    PROVIDE          BANGLADESH     0                    NA                 0.3288889   -0.1267356    0.6002699
6 months    ResPak           PAKISTAN       0                    NA                -0.1509960   -0.3764634    0.0375395
24 months   CMC-V-BCS-2002   INDIA          0                    NA                 0.1261699   -0.0399818    0.2657766
24 months   CMIN             BANGLADESH     0                    NA                 0.0597409   -0.0445968    0.1536571
24 months   EE               PAKISTAN       0                    NA                 0.0513724   -0.1138496    0.1920863
24 months   GMS-Nepal        NEPAL          0                    NA                -0.0123364   -0.2347790    0.1700337
24 months   IRC              INDIA          0                    NA                 0.0302951   -0.3585820    0.3078610
24 months   Keneba           GAMBIA         0                    NA                 0.0886988   -0.0328179    0.1959183
24 months   MAL-ED           BANGLADESH     0                    NA                 0.0652557   -0.1614181    0.2476897
24 months   MAL-ED           INDIA          0                    NA                -0.1024283   -0.3521712    0.1011877
24 months   MAL-ED           SOUTH AFRICA   0                    NA                 0.0852551   -0.0804572    0.2255516
24 months   PROVIDE          BANGLADESH     0                    NA                -0.0732729   -0.2223709    0.0576389
