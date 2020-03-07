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

**Intervention Variable:** anywast06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        anywast06    stunted   n_cell      n
----------  ---------------  -----------------------------  ----------  --------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          0                  0       30     92
Birth       CMC-V-BCS-2002   INDIA                          0                  1        7     92
Birth       CMC-V-BCS-2002   INDIA                          1                  0       45     92
Birth       CMC-V-BCS-2002   INDIA                          1                  1       10     92
Birth       CMIN             BANGLADESH                     0                  0       13     20
Birth       CMIN             BANGLADESH                     0                  1        2     20
Birth       CMIN             BANGLADESH                     1                  0        4     20
Birth       CMIN             BANGLADESH                     1                  1        1     20
Birth       CONTENT          PERU                           0                  0        2      2
Birth       CONTENT          PERU                           0                  1        0      2
Birth       CONTENT          PERU                           1                  0        0      2
Birth       CONTENT          PERU                           1                  1        0      2
Birth       EE               PAKISTAN                       0                  0       86    240
Birth       EE               PAKISTAN                       0                  1       70    240
Birth       EE               PAKISTAN                       1                  0       54    240
Birth       EE               PAKISTAN                       1                  1       30    240
Birth       GMS-Nepal        NEPAL                          0                  0      340    684
Birth       GMS-Nepal        NEPAL                          0                  1       82    684
Birth       GMS-Nepal        NEPAL                          1                  0      234    684
Birth       GMS-Nepal        NEPAL                          1                  1       28    684
Birth       IRC              INDIA                          0                  0      137    388
Birth       IRC              INDIA                          0                  1       27    388
Birth       IRC              INDIA                          1                  0      206    388
Birth       IRC              INDIA                          1                  1       18    388
Birth       Keneba           GAMBIA                         0                  0      934   1542
Birth       Keneba           GAMBIA                         0                  1       60   1542
Birth       Keneba           GAMBIA                         1                  0      526   1542
Birth       Keneba           GAMBIA                         1                  1       22   1542
Birth       MAL-ED           BANGLADESH                     0                  0      146    229
Birth       MAL-ED           BANGLADESH                     0                  1       31    229
Birth       MAL-ED           BANGLADESH                     1                  0       41    229
Birth       MAL-ED           BANGLADESH                     1                  1       11    229
Birth       MAL-ED           BRAZIL                         0                  0       53     65
Birth       MAL-ED           BRAZIL                         0                  1        9     65
Birth       MAL-ED           BRAZIL                         1                  0        3     65
Birth       MAL-ED           BRAZIL                         1                  1        0     65
Birth       MAL-ED           INDIA                          0                  0       25     47
Birth       MAL-ED           INDIA                          0                  1        8     47
Birth       MAL-ED           INDIA                          1                  0       12     47
Birth       MAL-ED           INDIA                          1                  1        2     47
Birth       MAL-ED           NEPAL                          0                  0       22     27
Birth       MAL-ED           NEPAL                          0                  1        1     27
Birth       MAL-ED           NEPAL                          1                  0        3     27
Birth       MAL-ED           NEPAL                          1                  1        1     27
Birth       MAL-ED           PERU                           0                  0      199    233
Birth       MAL-ED           PERU                           0                  1       24    233
Birth       MAL-ED           PERU                           1                  0        8    233
Birth       MAL-ED           PERU                           1                  1        2    233
Birth       MAL-ED           SOUTH AFRICA                   0                  0       93    122
Birth       MAL-ED           SOUTH AFRICA                   0                  1        8    122
Birth       MAL-ED           SOUTH AFRICA                   1                  0       20    122
Birth       MAL-ED           SOUTH AFRICA                   1                  1        1    122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0       99    124
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       20    124
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        3    124
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        2    124
Birth       PROVIDE          BANGLADESH                     0                  0      365    539
Birth       PROVIDE          BANGLADESH                     0                  1       31    539
Birth       PROVIDE          BANGLADESH                     1                  0      126    539
Birth       PROVIDE          BANGLADESH                     1                  1       17    539
Birth       ResPak           PAKISTAN                       0                  0       18     42
Birth       ResPak           PAKISTAN                       0                  1       10     42
Birth       ResPak           PAKISTAN                       1                  0       10     42
Birth       ResPak           PAKISTAN                       1                  1        4     42
6 months    CMC-V-BCS-2002   INDIA                          0                  0      120    365
6 months    CMC-V-BCS-2002   INDIA                          0                  1       57    365
6 months    CMC-V-BCS-2002   INDIA                          1                  0      134    365
6 months    CMC-V-BCS-2002   INDIA                          1                  1       54    365
6 months    CMIN             BANGLADESH                     0                  0      125    243
6 months    CMIN             BANGLADESH                     0                  1       76    243
6 months    CMIN             BANGLADESH                     1                  0       25    243
6 months    CMIN             BANGLADESH                     1                  1       17    243
6 months    CONTENT          PERU                           0                  0      202    215
6 months    CONTENT          PERU                           0                  1        9    215
6 months    CONTENT          PERU                           1                  0        4    215
6 months    CONTENT          PERU                           1                  1        0    215
6 months    EE               PAKISTAN                       0                  0      131    373
6 months    EE               PAKISTAN                       0                  1      118    373
6 months    EE               PAKISTAN                       1                  0       59    373
6 months    EE               PAKISTAN                       1                  1       65    373
6 months    GMS-Nepal        NEPAL                          0                  0      259    564
6 months    GMS-Nepal        NEPAL                          0                  1       77    564
6 months    GMS-Nepal        NEPAL                          1                  0      183    564
6 months    GMS-Nepal        NEPAL                          1                  1       45    564
6 months    Guatemala BSC    GUATEMALA                      0                  0      192    280
6 months    Guatemala BSC    GUATEMALA                      0                  1       78    280
6 months    Guatemala BSC    GUATEMALA                      1                  0        2    280
6 months    Guatemala BSC    GUATEMALA                      1                  1        8    280
6 months    IRC              INDIA                          0                  0      131    407
6 months    IRC              INDIA                          0                  1       49    407
6 months    IRC              INDIA                          1                  0      176    407
6 months    IRC              INDIA                          1                  1       51    407
6 months    Keneba           GAMBIA                         0                  0     1252   2056
6 months    Keneba           GAMBIA                         0                  1      189   2056
6 months    Keneba           GAMBIA                         1                  0      512   2056
6 months    Keneba           GAMBIA                         1                  1      103   2056
6 months    MAL-ED           BANGLADESH                     0                  0      151    241
6 months    MAL-ED           BANGLADESH                     0                  1       32    241
6 months    MAL-ED           BANGLADESH                     1                  0       46    241
6 months    MAL-ED           BANGLADESH                     1                  1       12    241
6 months    MAL-ED           BRAZIL                         0                  0      188    209
6 months    MAL-ED           BRAZIL                         0                  1        6    209
6 months    MAL-ED           BRAZIL                         1                  0       15    209
6 months    MAL-ED           BRAZIL                         1                  1        0    209
6 months    MAL-ED           INDIA                          0                  0      128    236
6 months    MAL-ED           INDIA                          0                  1       31    236
6 months    MAL-ED           INDIA                          1                  0       63    236
6 months    MAL-ED           INDIA                          1                  1       14    236
6 months    MAL-ED           NEPAL                          0                  0      181    236
6 months    MAL-ED           NEPAL                          0                  1        7    236
6 months    MAL-ED           NEPAL                          1                  0       43    236
6 months    MAL-ED           NEPAL                          1                  1        5    236
6 months    MAL-ED           PERU                           0                  0      204    273
6 months    MAL-ED           PERU                           0                  1       59    273
6 months    MAL-ED           PERU                           1                  0        9    273
6 months    MAL-ED           PERU                           1                  1        1    273
6 months    MAL-ED           SOUTH AFRICA                   0                  0      178    254
6 months    MAL-ED           SOUTH AFRICA                   0                  1       45    254
6 months    MAL-ED           SOUTH AFRICA                   1                  0       26    254
6 months    MAL-ED           SOUTH AFRICA                   1                  1        5    254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      179    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       55    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        9    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        4    247
6 months    PROVIDE          BANGLADESH                     0                  0      381    604
6 months    PROVIDE          BANGLADESH                     0                  1       69    604
6 months    PROVIDE          BANGLADESH                     1                  0      127    604
6 months    PROVIDE          BANGLADESH                     1                  1       27    604
6 months    ResPak           PAKISTAN                       0                  0       80    239
6 months    ResPak           PAKISTAN                       0                  1       63    239
6 months    ResPak           PAKISTAN                       1                  0       73    239
6 months    ResPak           PAKISTAN                       1                  1       23    239
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1559   2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1      169   2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      273   2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       28   2029
24 months   CMC-V-BCS-2002   INDIA                          0                  0       48    366
24 months   CMC-V-BCS-2002   INDIA                          0                  1      128    366
24 months   CMC-V-BCS-2002   INDIA                          1                  0       56    366
24 months   CMC-V-BCS-2002   INDIA                          1                  1      134    366
24 months   CMIN             BANGLADESH                     0                  0       64    242
24 months   CMIN             BANGLADESH                     0                  1      136    242
24 months   CMIN             BANGLADESH                     1                  0       13    242
24 months   CMIN             BANGLADESH                     1                  1       29    242
24 months   CONTENT          PERU                           0                  0      149    164
24 months   CONTENT          PERU                           0                  1       13    164
24 months   CONTENT          PERU                           1                  0        2    164
24 months   CONTENT          PERU                           1                  1        0    164
24 months   EE               PAKISTAN                       0                  0       32    167
24 months   EE               PAKISTAN                       0                  1       77    167
24 months   EE               PAKISTAN                       1                  0       17    167
24 months   EE               PAKISTAN                       1                  1       41    167
24 months   GMS-Nepal        NEPAL                          0                  0      166    488
24 months   GMS-Nepal        NEPAL                          0                  1      134    488
24 months   GMS-Nepal        NEPAL                          1                  0      103    488
24 months   GMS-Nepal        NEPAL                          1                  1       85    488
24 months   IRC              INDIA                          0                  0      104    409
24 months   IRC              INDIA                          0                  1       77    409
24 months   IRC              INDIA                          1                  0      133    409
24 months   IRC              INDIA                          1                  1       95    409
24 months   Keneba           GAMBIA                         0                  0      739   1563
24 months   Keneba           GAMBIA                         0                  1      352   1563
24 months   Keneba           GAMBIA                         1                  0      301   1563
24 months   Keneba           GAMBIA                         1                  1      171   1563
24 months   MAL-ED           BANGLADESH                     0                  0       82    212
24 months   MAL-ED           BANGLADESH                     0                  1       80    212
24 months   MAL-ED           BANGLADESH                     1                  0       29    212
24 months   MAL-ED           BANGLADESH                     1                  1       21    212
24 months   MAL-ED           BRAZIL                         0                  0      150    169
24 months   MAL-ED           BRAZIL                         0                  1        6    169
24 months   MAL-ED           BRAZIL                         1                  0       12    169
24 months   MAL-ED           BRAZIL                         1                  1        1    169
24 months   MAL-ED           INDIA                          0                  0       80    227
24 months   MAL-ED           INDIA                          0                  1       71    227
24 months   MAL-ED           INDIA                          1                  0       50    227
24 months   MAL-ED           INDIA                          1                  1       26    227
24 months   MAL-ED           NEPAL                          0                  0      143    228
24 months   MAL-ED           NEPAL                          0                  1       39    228
24 months   MAL-ED           NEPAL                          1                  0       35    228
24 months   MAL-ED           NEPAL                          1                  1       11    228
24 months   MAL-ED           PERU                           0                  0      122    201
24 months   MAL-ED           PERU                           0                  1       71    201
24 months   MAL-ED           PERU                           1                  0        5    201
24 months   MAL-ED           PERU                           1                  1        3    201
24 months   MAL-ED           SOUTH AFRICA                   0                  0      135    238
24 months   MAL-ED           SOUTH AFRICA                   0                  1       77    238
24 months   MAL-ED           SOUTH AFRICA                   1                  0       19    238
24 months   MAL-ED           SOUTH AFRICA                   1                  1        7    238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0       55    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1      147    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        4    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        8    214
24 months   PROVIDE          BANGLADESH                     0                  0      290    578
24 months   PROVIDE          BANGLADESH                     0                  1      142    578
24 months   PROVIDE          BANGLADESH                     1                  0       98    578
24 months   PROVIDE          BANGLADESH                     1                  1       48    578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0        4      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        1      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0        1      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        0      6


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

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/9108b3e7-8830-43d6-862d-7b70d5fd1a90/221a3961-6b4b-45d5-a9cd-57bfeb719b77/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9108b3e7-8830-43d6-862d-7b70d5fd1a90/221a3961-6b4b-45d5-a9cd-57bfeb719b77/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9108b3e7-8830-43d6-862d-7b70d5fd1a90/221a3961-6b4b-45d5-a9cd-57bfeb719b77/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9108b3e7-8830-43d6-862d-7b70d5fd1a90/221a3961-6b4b-45d5-a9cd-57bfeb719b77/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                0.1891892   0.0622989   0.3160795
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                0.1818182   0.0793277   0.2843087
Birth       EE               PAKISTAN                       0                    NA                0.4487179   0.3705073   0.5269286
Birth       EE               PAKISTAN                       1                    NA                0.3571429   0.2544611   0.4598246
Birth       GMS-Nepal        NEPAL                          0                    NA                0.1943128   0.1565344   0.2320912
Birth       GMS-Nepal        NEPAL                          1                    NA                0.1068702   0.0694332   0.1443072
Birth       IRC              INDIA                          0                    NA                0.1646341   0.1078032   0.2214651
Birth       IRC              INDIA                          1                    NA                0.0803571   0.0447115   0.1160028
Birth       Keneba           GAMBIA                         0                    NA                0.0603622   0.0455521   0.0751723
Birth       Keneba           GAMBIA                         1                    NA                0.0401460   0.0237052   0.0565868
Birth       MAL-ED           BANGLADESH                     0                    NA                0.1751412   0.1190241   0.2312584
Birth       MAL-ED           BANGLADESH                     1                    NA                0.2115385   0.1002932   0.3227838
Birth       PROVIDE          BANGLADESH                     0                    NA                0.0782828   0.0518017   0.1047639
Birth       PROVIDE          BANGLADESH                     1                    NA                0.1188811   0.0657857   0.1719765
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.3220339   0.2531033   0.3909645
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.2872340   0.2224667   0.3520014
6 months    CMIN             BANGLADESH                     0                    NA                0.3781095   0.3109339   0.4452850
6 months    CMIN             BANGLADESH                     1                    NA                0.4047619   0.2560095   0.5535143
6 months    EE               PAKISTAN                       0                    NA                0.4738956   0.4117931   0.5359980
6 months    EE               PAKISTAN                       1                    NA                0.5241935   0.4361736   0.6122135
6 months    GMS-Nepal        NEPAL                          0                    NA                0.2291667   0.1841866   0.2741467
6 months    GMS-Nepal        NEPAL                          1                    NA                0.1973684   0.1456598   0.2490770
6 months    IRC              INDIA                          0                    NA                0.2722222   0.2071183   0.3373262
6 months    IRC              INDIA                          1                    NA                0.2246696   0.1703089   0.2790303
6 months    Keneba           GAMBIA                         0                    NA                0.1311589   0.1137252   0.1485927
6 months    Keneba           GAMBIA                         1                    NA                0.1674797   0.1379611   0.1969982
6 months    MAL-ED           BANGLADESH                     0                    NA                0.1748634   0.1197144   0.2300124
6 months    MAL-ED           BANGLADESH                     1                    NA                0.2068966   0.1024297   0.3113634
6 months    MAL-ED           INDIA                          0                    NA                0.1949686   0.1332579   0.2566792
6 months    MAL-ED           INDIA                          1                    NA                0.1818182   0.0954869   0.2681495
6 months    MAL-ED           NEPAL                          0                    NA                0.0372340   0.0101120   0.0643560
6 months    MAL-ED           NEPAL                          1                    NA                0.1041667   0.0175647   0.1907686
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                0.2017937   0.1490144   0.2545730
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                0.1612903   0.0315623   0.2910184
6 months    PROVIDE          BANGLADESH                     0                    NA                0.1533333   0.1200155   0.1866511
6 months    PROVIDE          BANGLADESH                     1                    NA                0.1753247   0.1152197   0.2354297
6 months    ResPak           PAKISTAN                       0                    NA                0.4405594   0.3590196   0.5220993
6 months    ResPak           PAKISTAN                       1                    NA                0.2395833   0.1540221   0.3251446
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0978009   0.0837920   0.1118099
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0930233   0.0602012   0.1258453
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.7272727   0.6613859   0.7931596
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.7052632   0.6403462   0.7701801
24 months   CMIN             BANGLADESH                     0                    NA                0.6800000   0.6152169   0.7447831
24 months   CMIN             BANGLADESH                     1                    NA                0.6904762   0.5503743   0.8305781
24 months   EE               PAKISTAN                       0                    NA                0.7064220   0.6206723   0.7921718
24 months   EE               PAKISTAN                       1                    NA                0.7068966   0.5893996   0.8243935
24 months   GMS-Nepal        NEPAL                          0                    NA                0.4466667   0.3903524   0.5029809
24 months   GMS-Nepal        NEPAL                          1                    NA                0.4521277   0.3809105   0.5233448
24 months   IRC              INDIA                          0                    NA                0.4254144   0.3532997   0.4975291
24 months   IRC              INDIA                          1                    NA                0.4166667   0.3525951   0.4807382
24 months   Keneba           GAMBIA                         0                    NA                0.3226398   0.2948910   0.3503885
24 months   Keneba           GAMBIA                         1                    NA                0.3622881   0.3189115   0.4056647
24 months   MAL-ED           BANGLADESH                     0                    NA                0.4938272   0.4166561   0.5709982
24 months   MAL-ED           BANGLADESH                     1                    NA                0.4200000   0.2828713   0.5571287
24 months   MAL-ED           INDIA                          0                    NA                0.4701987   0.3904147   0.5499826
24 months   MAL-ED           INDIA                          1                    NA                0.3421053   0.2352101   0.4490004
24 months   MAL-ED           NEPAL                          0                    NA                0.2142857   0.1545415   0.2740299
24 months   MAL-ED           NEPAL                          1                    NA                0.2391304   0.1155937   0.3626672
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.3632075   0.2983335   0.4280816
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.2692308   0.0983756   0.4400860
24 months   PROVIDE          BANGLADESH                     0                    NA                0.3287037   0.2843692   0.3730382
24 months   PROVIDE          BANGLADESH                     1                    NA                0.3287671   0.2525016   0.4050327


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                0.1847826   0.1050392   0.2645260
Birth       EE               PAKISTAN                       NA                   NA                0.4166667   0.3541635   0.4791698
Birth       GMS-Nepal        NEPAL                          NA                   NA                0.1608187   0.1332679   0.1883695
Birth       IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       Keneba           GAMBIA                         NA                   NA                0.0531777   0.0419744   0.0643810
Birth       MAL-ED           BANGLADESH                     NA                   NA                0.1834061   0.1331729   0.2336393
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.3041096   0.2568508   0.3513684
6 months    CMIN             BANGLADESH                     NA                   NA                0.3827160   0.3214780   0.4439541
6 months    EE               PAKISTAN                       NA                   NA                0.4906166   0.4398159   0.5414174
6 months    GMS-Nepal        NEPAL                          NA                   NA                0.2163121   0.1823021   0.2503220
6 months    IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    Keneba           GAMBIA                         NA                   NA                0.1420233   0.1269309   0.1571158
6 months    MAL-ED           BANGLADESH                     NA                   NA                0.1825726   0.1336978   0.2314474
6 months    MAL-ED           INDIA                          NA                   NA                0.1906780   0.1404524   0.2409036
6 months    MAL-ED           NEPAL                          NA                   NA                0.0508475   0.0227597   0.0789352
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ResPak           PAKISTAN                       NA                   NA                0.3598326   0.2988570   0.4208083
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0970922   0.0842059   0.1099785
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7158470   0.6695782   0.7621158
24 months   CMIN             BANGLADESH                     NA                   NA                0.6818182   0.6230135   0.7406228
24 months   EE               PAKISTAN                       NA                   NA                0.7065868   0.6373214   0.7758523
24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4487705   0.4045970   0.4929440
24 months   IRC              INDIA                          NA                   NA                0.4205379   0.3726382   0.4684376
24 months   Keneba           GAMBIA                         NA                   NA                0.3346129   0.3112129   0.3580129
24 months   MAL-ED           BANGLADESH                     NA                   NA                0.4764151   0.4090254   0.5438047
24 months   MAL-ED           INDIA                          NA                   NA                0.4273128   0.3628178   0.4918077
24 months   MAL-ED           NEPAL                          NA                   NA                0.2192982   0.1654718   0.2731246
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       CMC-V-BCS-2002   INDIA                          1                    0                 0.9610390   0.4001688   2.3080159
Birth       EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
Birth       EE               PAKISTAN                       1                    0                 0.7959184   0.5686588   1.1140003
Birth       GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                 0.5499907   0.3684343   0.8210142
Birth       IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       IRC              INDIA                          1                    0                 0.4880952   0.2782256   0.8562726
Birth       Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
Birth       Keneba           GAMBIA                         1                    0                 0.6650852   0.4126157   1.0720345
Birth       MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       MAL-ED           BANGLADESH                     1                    0                 1.2078164   0.6524672   2.2358526
Birth       PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 1.5186104   0.8672082   2.6593124
6 months    CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 0.8919373   0.6535984   1.2171880
6 months    CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    CMIN             BANGLADESH                     1                    0                 1.0704887   0.7117126   1.6101249
6 months    EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    EE               PAKISTAN                       1                    0                 1.1061372   0.8939323   1.3687162
6 months    GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                 0.8612440   0.6208066   1.1948024
6 months    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA                          1                    0                 0.8253169   0.5873151   1.1597658
6 months    Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    Keneba           GAMBIA                         1                    0                 1.2769218   1.0239810   1.5923433
6 months    MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED           BANGLADESH                     1                    0                 1.1831897   0.6523898   2.1458608
6 months    MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED           INDIA                          1                    0                 0.9325513   0.5270401   1.6500679
6 months    MAL-ED           NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED           NEPAL                          1                    0                 2.7976190   0.9262833   8.4495445
6 months    MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                 0.7992832   0.3430732   1.8621496
6 months    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 1.1434218   0.7619625   1.7158500
6 months    ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ResPak           PAKISTAN                       1                    0                 0.5438161   0.3637166   0.8130945
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9511490   0.6499315   1.3919690
24 months   CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 0.9697368   0.8522450   1.1034263
24 months   CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   CMIN             BANGLADESH                     1                    0                 1.0154062   0.8115007   1.2705469
24 months   EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
24 months   EE               PAKISTAN                       1                    0                 1.0006717   0.8145260   1.2293579
24 months   GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                 1.0122261   0.8272846   1.2385118
24 months   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   IRC              INDIA                          1                    0                 0.9794372   0.7790756   1.2313276
24 months   Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
24 months   Keneba           GAMBIA                         1                    0                 1.1228874   0.9689767   1.3012449
24 months   MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED           BANGLADESH                     1                    0                 0.8505000   0.5922070   1.2214484
24 months   MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED           INDIA                          1                    0                 0.7275760   0.5098700   1.0382388
24 months   MAL-ED           NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED           NEPAL                          1                    0                 1.1159420   0.6204303   2.0071983
24 months   MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                 0.7412587   0.3834034   1.4331239
24 months   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 1.0001929   0.7647988   1.3080380


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.0044066   -0.1019219    0.0931087
Birth       EE               PAKISTAN                       0                    NA                -0.0320513   -0.0775658    0.0134632
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.0334941   -0.0541144   -0.0128738
Birth       IRC              INDIA                          0                    NA                -0.0486548   -0.0876056   -0.0097039
Birth       Keneba           GAMBIA                         0                    NA                -0.0071845   -0.0150631    0.0006942
Birth       MAL-ED           BANGLADESH                     0                    NA                 0.0082649   -0.0200973    0.0366270
Birth       PROVIDE          BANGLADESH                     0                    NA                 0.0107710   -0.0050431    0.0265850
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0179243   -0.0666746    0.0308260
6 months    CMIN             BANGLADESH                     0                    NA                 0.0046066   -0.0236323    0.0328455
6 months    EE               PAKISTAN                       0                    NA                 0.0167210   -0.0191712    0.0526133
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.0128546   -0.0405900    0.0148808
6 months    IRC              INDIA                          0                    NA                -0.0265220   -0.0738825    0.0208385
6 months    Keneba           GAMBIA                         0                    NA                 0.0108644    0.0005846    0.0211443
6 months    MAL-ED           BANGLADESH                     0                    NA                 0.0077092   -0.0207732    0.0361916
6 months    MAL-ED           INDIA                          0                    NA                -0.0042906   -0.0389232    0.0303421
6 months    MAL-ED           NEPAL                          0                    NA                 0.0136134   -0.0051628    0.0323896
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0049433   -0.0221144    0.0122277
6 months    PROVIDE          BANGLADESH                     0                    NA                 0.0056071   -0.0119314    0.0231455
6 months    ResPak           PAKISTAN                       0                    NA                -0.0807268   -0.1298241   -0.0316296
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0007088   -0.0060034    0.0045858
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0114257   -0.0594554    0.0366040
24 months   CMIN             BANGLADESH                     0                    NA                 0.0018182   -0.0249753    0.0286117
24 months   EE               PAKISTAN                       0                    NA                 0.0001648   -0.0503542    0.0506838
24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0021038   -0.0328742    0.0370819
24 months   IRC              INDIA                          0                    NA                -0.0048765   -0.0586538    0.0489009
24 months   Keneba           GAMBIA                         0                    NA                 0.0119731   -0.0036030    0.0275493
24 months   MAL-ED           BANGLADESH                     0                    NA                -0.0174121   -0.0547636    0.0199394
24 months   MAL-ED           INDIA                          0                    NA                -0.0428859   -0.0882342    0.0024624
24 months   MAL-ED           NEPAL                          0                    NA                 0.0050125   -0.0227036    0.0327286
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0102664   -0.0305773    0.0100445
24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0000160   -0.0222668    0.0222988


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.0238474   -0.7142110    0.3884863
Birth       EE               PAKISTAN                       0                    NA                -0.0769231   -0.1922527    0.0272505
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.2082723   -0.3405515   -0.0890458
Birth       IRC              INDIA                          0                    NA                -0.4195122   -0.7824186   -0.1304948
Birth       Keneba           GAMBIA                         0                    NA                -0.1351033   -0.2906268    0.0016792
Birth       MAL-ED           BANGLADESH                     0                    NA                 0.0450632   -0.1224723    0.1875931
Birth       PROVIDE          BANGLADESH                     0                    NA                 0.1209491   -0.0727707    0.2796871
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0589403   -0.2319924    0.0898040
6 months    CMIN             BANGLADESH                     0                    NA                 0.0120366   -0.0645803    0.0831394
6 months    EE               PAKISTAN                       0                    NA                 0.0340817   -0.0419964    0.1046052
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.0594262   -0.1955679    0.0612127
6 months    IRC              INDIA                          0                    NA                -0.1079444   -0.3181948    0.0687712
6 months    Keneba           GAMBIA                         0                    NA                 0.0764975    0.0015473    0.1458214
6 months    MAL-ED           BANGLADESH                     0                    NA                 0.0422255   -0.1269287    0.1859894
6 months    MAL-ED           INDIA                          0                    NA                -0.0225017   -0.2212015    0.1438679
6 months    MAL-ED           NEPAL                          0                    NA                 0.2677305   -0.1663846    0.5402729
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0251121   -0.1160385    0.0584063
6 months    PROVIDE          BANGLADESH                     0                    NA                 0.0352778   -0.0814914    0.1394393
6 months    ResPak           PAKISTAN                       0                    NA                -0.2243454   -0.3708976   -0.0934600
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0072999   -0.0633275    0.0457756
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0159611   -0.0853560    0.0489968
24 months   CMIN             BANGLADESH                     0                    NA                 0.0026667   -0.0374173    0.0412018
24 months   EE               PAKISTAN                       0                    NA                 0.0002332   -0.0738826    0.0692338
24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0046880   -0.0763879    0.0796570
24 months   IRC              INDIA                          0                    NA                -0.0115958   -0.1479111    0.1085320
24 months   Keneba           GAMBIA                         0                    NA                 0.0357821   -0.0119076    0.0812242
24 months   MAL-ED           BANGLADESH                     0                    NA                -0.0365481   -0.1181532    0.0391013
24 months   MAL-ED           INDIA                          0                    NA                -0.1003618   -0.2125344    0.0014335
24 months   MAL-ED           NEPAL                          0                    NA                 0.0228571   -0.1120019    0.1413611
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0290881   -0.0883034    0.0269054
24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0000487   -0.0700884    0.0655888
