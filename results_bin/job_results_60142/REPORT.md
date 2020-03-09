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




# Results Detail

## Results Plots
![](/tmp/5ac160f8-ed14-41fe-9d04-b3b8c58c3736/9c3c7df2-e95e-44b4-bae5-6077b1d0656c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5ac160f8-ed14-41fe-9d04-b3b8c58c3736/9c3c7df2-e95e-44b4-bae5-6077b1d0656c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5ac160f8-ed14-41fe-9d04-b3b8c58c3736/9c3c7df2-e95e-44b4-bae5-6077b1d0656c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5ac160f8-ed14-41fe-9d04-b3b8c58c3736/9c3c7df2-e95e-44b4-bae5-6077b1d0656c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                0.1891892   0.0622989   0.3160795
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                0.1818182   0.0793277   0.2843087
Birth       EE               PAKISTAN                       0                    NA                0.4471264   0.3688457   0.5254071
Birth       EE               PAKISTAN                       1                    NA                0.3513156   0.2450237   0.4576075
Birth       GMS-Nepal        NEPAL                          0                    NA                0.1958983   0.1579648   0.2338319
Birth       GMS-Nepal        NEPAL                          1                    NA                0.1073148   0.0696833   0.1449463
Birth       IRC              INDIA                          0                    NA                0.1751132   0.1197494   0.2304770
Birth       IRC              INDIA                          1                    NA                0.0841319   0.0483184   0.1199454
Birth       Keneba           GAMBIA                         0                    NA                0.0605724   0.0456886   0.0754562
Birth       Keneba           GAMBIA                         1                    NA                0.0395990   0.0230710   0.0561271
Birth       MAL-ED           BANGLADESH                     0                    NA                0.1767593   0.1204799   0.2330387
Birth       MAL-ED           BANGLADESH                     1                    NA                0.2260607   0.1164625   0.3356589
Birth       PROVIDE          BANGLADESH                     0                    NA                0.0773982   0.0512447   0.1035517
Birth       PROVIDE          BANGLADESH                     1                    NA                0.1091612   0.0572250   0.1610973
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.3158089   0.2469830   0.3846347
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.2817279   0.2165876   0.3468682
6 months    CMIN             BANGLADESH                     0                    NA                0.3793409   0.3121297   0.4465521
6 months    CMIN             BANGLADESH                     1                    NA                0.4169785   0.2649442   0.5690127
6 months    EE               PAKISTAN                       0                    NA                0.4717023   0.4095213   0.5338834
6 months    EE               PAKISTAN                       1                    NA                0.5280540   0.4390441   0.6170640
6 months    GMS-Nepal        NEPAL                          0                    NA                0.2302650   0.1849698   0.2755602
6 months    GMS-Nepal        NEPAL                          1                    NA                0.1953441   0.1433059   0.2473823
6 months    IRC              INDIA                          0                    NA                0.2707128   0.2059159   0.3355098
6 months    IRC              INDIA                          1                    NA                0.2246503   0.1697491   0.2795515
6 months    Keneba           GAMBIA                         0                    NA                0.1319820   0.1144825   0.1494816
6 months    Keneba           GAMBIA                         1                    NA                0.1656569   0.1360551   0.1952588
6 months    MAL-ED           BANGLADESH                     0                    NA                0.1737965   0.1185272   0.2290657
6 months    MAL-ED           BANGLADESH                     1                    NA                0.1791873   0.0738772   0.2844975
6 months    MAL-ED           INDIA                          0                    NA                0.1942733   0.1327345   0.2558121
6 months    MAL-ED           INDIA                          1                    NA                0.1905949   0.1030600   0.2781298
6 months    MAL-ED           NEPAL                          0                    NA                0.0372340   0.0101120   0.0643560
6 months    MAL-ED           NEPAL                          1                    NA                0.1041667   0.0175647   0.1907686
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                0.2017937   0.1490144   0.2545730
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                0.1612903   0.0315623   0.2910184
6 months    PROVIDE          BANGLADESH                     0                    NA                0.1543307   0.1209763   0.1876852
6 months    PROVIDE          BANGLADESH                     1                    NA                0.1819460   0.1220688   0.2418232
6 months    ResPak           PAKISTAN                       0                    NA                0.4551504   0.3733846   0.5369162
6 months    ResPak           PAKISTAN                       1                    NA                0.2351338   0.1508611   0.3194064
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0978947   0.0838621   0.1119272
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0932131   0.0591723   0.1272538
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.7293168   0.6631242   0.7955094
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.7077981   0.6426123   0.7729838
24 months   CMIN             BANGLADESH                     0                    NA                0.6804169   0.6153718   0.7454620
24 months   CMIN             BANGLADESH                     1                    NA                0.6948419   0.5543199   0.8353639
24 months   EE               PAKISTAN                       0                    NA                0.7071128   0.6221554   0.7920702
24 months   EE               PAKISTAN                       1                    NA                0.6822447   0.5608109   0.8036784
24 months   GMS-Nepal        NEPAL                          0                    NA                0.4459382   0.3895731   0.5023033
24 months   GMS-Nepal        NEPAL                          1                    NA                0.4532436   0.3818710   0.5246163
24 months   IRC              INDIA                          0                    NA                0.4268839   0.3553451   0.4984227
24 months   IRC              INDIA                          1                    NA                0.4260401   0.3622657   0.4898145
24 months   Keneba           GAMBIA                         0                    NA                0.3229390   0.2951696   0.3507085
24 months   Keneba           GAMBIA                         1                    NA                0.3617157   0.3185237   0.4049076
24 months   MAL-ED           BANGLADESH                     0                    NA                0.4988567   0.4208469   0.5768665
24 months   MAL-ED           BANGLADESH                     1                    NA                0.4090911   0.2646442   0.5535380
24 months   MAL-ED           INDIA                          0                    NA                0.4642018   0.3845965   0.5438070
24 months   MAL-ED           INDIA                          1                    NA                0.3199131   0.2117134   0.4281128
24 months   MAL-ED           NEPAL                          0                    NA                0.2116424   0.1519971   0.2712878
24 months   MAL-ED           NEPAL                          1                    NA                0.2427626   0.1180520   0.3674733
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.3632075   0.2983335   0.4280816
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.2692308   0.0983756   0.4400860
24 months   PROVIDE          BANGLADESH                     0                    NA                0.3283708   0.2840584   0.3726832
24 months   PROVIDE          BANGLADESH                     1                    NA                0.3215876   0.2456741   0.3975011


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
Birth       EE               PAKISTAN                       1                    0                 0.7857187   0.5545810   1.1131898
Birth       GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                 0.5478088   0.3668234   0.8180897
Birth       IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       IRC              INDIA                          1                    0                 0.4804429   0.2812408   0.8207392
Birth       Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
Birth       Keneba           GAMBIA                         1                    0                 0.6537471   0.4027452   1.0611800
Birth       MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       MAL-ED           BANGLADESH                     1                    0                 1.2789184   0.7167855   2.2818989
Birth       PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 1.4103843   0.7845821   2.5353420
6 months    CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 0.8920836   0.6492409   1.2257596
6 months    CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    CMIN             BANGLADESH                     1                    0                 1.0992183   0.7331685   1.6480261
6 months    EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    EE               PAKISTAN                       1                    0                 1.1194645   0.9035661   1.3869497
6 months    GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                 0.8483447   0.6091617   1.1814413
6 months    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA                          1                    0                 0.8298473   0.5895094   1.1681689
6 months    Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    Keneba           GAMBIA                         1                    0                 1.2551476   1.0048507   1.5677907
6 months    MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED           BANGLADESH                     1                    0                 1.0310183   0.5278591   2.0137922
6 months    MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED           INDIA                          1                    0                 0.9810658   0.5597147   1.7196083
6 months    MAL-ED           NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED           NEPAL                          1                    0                 2.7976190   0.9262833   8.4495445
6 months    MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                 0.7992832   0.3430732   1.8621496
6 months    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 1.1789360   0.7946048   1.7491589
6 months    ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ResPak           PAKISTAN                       1                    0                 0.5166068   0.3453331   0.7728264
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9521771   0.6432115   1.4095539
24 months   CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 0.9704947   0.8526411   1.1046383
24 months   CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   CMIN             BANGLADESH                     1                    0                 1.0212003   0.8162055   1.2776808
24 months   EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
24 months   EE               PAKISTAN                       1                    0                 0.9648314   0.7776139   1.1971232
24 months   GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                 1.0163822   0.8306998   1.2435691
24 months   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   IRC              INDIA                          1                    0                 0.9980234   0.7982432   1.2478037
24 months   Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
24 months   Keneba           GAMBIA                         1                    0                 1.1200742   0.9672158   1.2970902
24 months   MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED           BANGLADESH                     1                    0                 0.8200574   0.5574079   1.2064667
24 months   MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED           INDIA                          1                    0                 0.6891682   0.4716316   1.0070420
24 months   MAL-ED           NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED           NEPAL                          1                    0                 1.1470414   0.6408068   2.0531993
24 months   MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                 0.7412587   0.3834034   1.4331239
24 months   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 0.9793429   0.7469106   1.2841063


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.0044066   -0.1019219    0.0931087
Birth       EE               PAKISTAN                       0                    NA                -0.0304597   -0.0768008    0.0158813
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.0350796   -0.0559102   -0.0142490
Birth       IRC              INDIA                          0                    NA                -0.0591338   -0.0979906   -0.0202770
Birth       Keneba           GAMBIA                         0                    NA                -0.0073947   -0.0153434    0.0005540
Birth       MAL-ED           BANGLADESH                     0                    NA                 0.0066468   -0.0216628    0.0349564
Birth       PROVIDE          BANGLADESH                     0                    NA                 0.0116556   -0.0044114    0.0277227
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0116993   -0.0604299    0.0370313
6 months    CMIN             BANGLADESH                     0                    NA                 0.0033751   -0.0249038    0.0316540
6 months    EE               PAKISTAN                       0                    NA                 0.0189143   -0.0171047    0.0549332
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.0139530   -0.0420572    0.0141513
6 months    IRC              INDIA                          0                    NA                -0.0250126   -0.0724040    0.0223788
6 months    Keneba           GAMBIA                         0                    NA                 0.0100413   -0.0002812    0.0203638
6 months    MAL-ED           BANGLADESH                     0                    NA                 0.0087761   -0.0197641    0.0373164
6 months    MAL-ED           INDIA                          0                    NA                -0.0035953   -0.0384559    0.0312653
6 months    MAL-ED           NEPAL                          0                    NA                 0.0136134   -0.0051628    0.0323896
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0049433   -0.0221144    0.0122277
6 months    PROVIDE          BANGLADESH                     0                    NA                 0.0046097   -0.0130813    0.0223007
6 months    ResPak           PAKISTAN                       0                    NA                -0.0953177   -0.1461738   -0.0444617
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0008025   -0.0061193    0.0045142
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0134698   -0.0618020    0.0348624
24 months   CMIN             BANGLADESH                     0                    NA                 0.0014013   -0.0257213    0.0285239
24 months   EE               PAKISTAN                       0                    NA                -0.0005260   -0.0504966    0.0494446
24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0028323   -0.0321262    0.0377908
24 months   IRC              INDIA                          0                    NA                -0.0063460   -0.0596699    0.0469779
24 months   Keneba           GAMBIA                         0                    NA                 0.0116739   -0.0038067    0.0271545
24 months   MAL-ED           BANGLADESH                     0                    NA                -0.0224416   -0.0608305    0.0159473
24 months   MAL-ED           INDIA                          0                    NA                -0.0368890   -0.0821250    0.0083470
24 months   MAL-ED           NEPAL                          0                    NA                 0.0076558   -0.0196109    0.0349225
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0102664   -0.0305773    0.0100445
24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0003490   -0.0217077    0.0224056


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.0238474   -0.7142110    0.3884863
Birth       EE               PAKISTAN                       0                    NA                -0.0731034   -0.1907338    0.0329065
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.2181314   -0.3518585   -0.0976327
Birth       IRC              INDIA                          0                    NA                -0.5098649   -0.8836567   -0.2102482
Birth       Keneba           GAMBIA                         0                    NA                -0.1390565   -0.2958768   -0.0012137
Birth       MAL-ED           BANGLADESH                     0                    NA                 0.0362410   -0.1308910    0.1786730
Birth       PROVIDE          BANGLADESH                     0                    NA                 0.1308830   -0.0652279    0.2908894
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0384706   -0.2116697    0.1099710
6 months    CMIN             BANGLADESH                     0                    NA                 0.0088189   -0.0678953    0.0800222
6 months    EE               PAKISTAN                       0                    NA                 0.0385520   -0.0378427    0.1093235
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.0645038   -0.2025068    0.0576615
6 months    IRC              INDIA                          0                    NA                -0.1018013   -0.3124900    0.0750664
6 months    Keneba           GAMBIA                         0                    NA                 0.0707018   -0.0045847    0.1403460
6 months    MAL-ED           BANGLADESH                     0                    NA                 0.0480693   -0.1216376    0.1920991
6 months    MAL-ED           INDIA                          0                    NA                -0.0188555   -0.2191071    0.1485026
6 months    MAL-ED           NEPAL                          0                    NA                 0.2677305   -0.1663846    0.5402729
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0251121   -0.1160385    0.0584063
6 months    PROVIDE          BANGLADESH                     0                    NA                 0.0290025   -0.0887754    0.1340399
6 months    ResPak           PAKISTAN                       0                    NA                -0.2648947   -0.4192458   -0.1273301
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0082656   -0.0645296    0.0450246
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0188166   -0.0886609    0.0465468
24 months   CMIN             BANGLADESH                     0                    NA                 0.0020552   -0.0385307    0.0410550
24 months   EE               PAKISTAN                       0                    NA                -0.0007444   -0.0740252    0.0675364
24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0063112   -0.0747254    0.0812375
24 months   IRC              INDIA                          0                    NA                -0.0150901   -0.1501701    0.1041255
24 months   Keneba           GAMBIA                         0                    NA                 0.0348878   -0.0125139    0.0800702
24 months   MAL-ED           BANGLADESH                     0                    NA                -0.0471052   -0.1310647    0.0306220
24 months   MAL-ED           INDIA                          0                    NA                -0.0863278   -0.1980792    0.0149999
24 months   MAL-ED           NEPAL                          0                    NA                 0.0349105   -0.0978502    0.1516166
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0290881   -0.0883034    0.0269054
24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0010616   -0.0683425    0.0659569
