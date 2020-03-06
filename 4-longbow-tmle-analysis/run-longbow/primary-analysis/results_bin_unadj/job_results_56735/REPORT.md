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

**Intervention Variable:** impfloor

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        impfloor    stunted   n_cell     n
----------  ---------------  -----------------------------  ---------  --------  -------  ----
Birth       CMC-V-BCS-2002   INDIA                          1                 0       58    72
Birth       CMC-V-BCS-2002   INDIA                          1                 1       14    72
Birth       CMC-V-BCS-2002   INDIA                          0                 0        0    72
Birth       CMC-V-BCS-2002   INDIA                          0                 1        0    72
Birth       CONTENT          PERU                           1                 0        2     2
Birth       CONTENT          PERU                           1                 1        0     2
Birth       CONTENT          PERU                           0                 0        0     2
Birth       CONTENT          PERU                           0                 1        0     2
Birth       GMS-Nepal        NEPAL                          1                 0       91   544
Birth       GMS-Nepal        NEPAL                          1                 1        9   544
Birth       GMS-Nepal        NEPAL                          0                 0      361   544
Birth       GMS-Nepal        NEPAL                          0                 1       83   544
Birth       IRC              INDIA                          1                 0      255   287
Birth       IRC              INDIA                          1                 1       32   287
Birth       IRC              INDIA                          0                 0        0   287
Birth       IRC              INDIA                          0                 1        0   287
Birth       MAL-ED           BANGLADESH                     1                 0      161   213
Birth       MAL-ED           BANGLADESH                     1                 1       35   213
Birth       MAL-ED           BANGLADESH                     0                 0       15   213
Birth       MAL-ED           BANGLADESH                     0                 1        2   213
Birth       MAL-ED           BRAZIL                         1                 0       49    60
Birth       MAL-ED           BRAZIL                         1                 1        9    60
Birth       MAL-ED           BRAZIL                         0                 0        2    60
Birth       MAL-ED           BRAZIL                         0                 1        0    60
Birth       MAL-ED           INDIA                          1                 0       27    41
Birth       MAL-ED           INDIA                          1                 1        8    41
Birth       MAL-ED           INDIA                          0                 0        6    41
Birth       MAL-ED           INDIA                          0                 1        0    41
Birth       MAL-ED           NEPAL                          1                 0        8    25
Birth       MAL-ED           NEPAL                          1                 1        1    25
Birth       MAL-ED           NEPAL                          0                 0       15    25
Birth       MAL-ED           NEPAL                          0                 1        1    25
Birth       MAL-ED           PERU                           1                 0       30   215
Birth       MAL-ED           PERU                           1                 1        9   215
Birth       MAL-ED           PERU                           0                 0      159   215
Birth       MAL-ED           PERU                           0                 1       17   215
Birth       MAL-ED           SOUTH AFRICA                   1                 0       80    96
Birth       MAL-ED           SOUTH AFRICA                   1                 1        7    96
Birth       MAL-ED           SOUTH AFRICA                   0                 0        8    96
Birth       MAL-ED           SOUTH AFRICA                   0                 1        1    96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0        5   119
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        2   119
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0       93   119
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1       19   119
Birth       NIH-Birth        BANGLADESH                     1                 0      452   605
Birth       NIH-Birth        BANGLADESH                     1                 1       81   605
Birth       NIH-Birth        BANGLADESH                     0                 0       58   605
Birth       NIH-Birth        BANGLADESH                     0                 1       14   605
Birth       NIH-Crypto       BANGLADESH                     1                 0      482   732
Birth       NIH-Crypto       BANGLADESH                     1                 1       76   732
Birth       NIH-Crypto       BANGLADESH                     0                 0      149   732
Birth       NIH-Crypto       BANGLADESH                     0                 1       25   732
Birth       PROVIDE          BANGLADESH                     1                 0      447   539
Birth       PROVIDE          BANGLADESH                     1                 1       44   539
Birth       PROVIDE          BANGLADESH                     0                 0       44   539
Birth       PROVIDE          BANGLADESH                     0                 1        4   539
6 months    CMC-V-BCS-2002   INDIA                          1                 0      170   257
6 months    CMC-V-BCS-2002   INDIA                          1                 1       87   257
6 months    CMC-V-BCS-2002   INDIA                          0                 0        0   257
6 months    CMC-V-BCS-2002   INDIA                          0                 1        0   257
6 months    CONTENT          PERU                           1                 0      192   215
6 months    CONTENT          PERU                           1                 1        9   215
6 months    CONTENT          PERU                           0                 0       14   215
6 months    CONTENT          PERU                           0                 1        0   215
6 months    GMS-Nepal        NEPAL                          1                 0       68   441
6 months    GMS-Nepal        NEPAL                          1                 1       10   441
6 months    GMS-Nepal        NEPAL                          0                 0      283   441
6 months    GMS-Nepal        NEPAL                          0                 1       80   441
6 months    IRC              INDIA                          1                 0      235   303
6 months    IRC              INDIA                          1                 1       68   303
6 months    IRC              INDIA                          0                 0        0   303
6 months    IRC              INDIA                          0                 1        0   303
6 months    MAL-ED           BANGLADESH                     1                 0      179   240
6 months    MAL-ED           BANGLADESH                     1                 1       42   240
6 months    MAL-ED           BANGLADESH                     0                 0       17   240
6 months    MAL-ED           BANGLADESH                     0                 1        2   240
6 months    MAL-ED           BRAZIL                         1                 0      201   209
6 months    MAL-ED           BRAZIL                         1                 1        6   209
6 months    MAL-ED           BRAZIL                         0                 0        2   209
6 months    MAL-ED           BRAZIL                         0                 1        0   209
6 months    MAL-ED           INDIA                          1                 0      180   235
6 months    MAL-ED           INDIA                          1                 1       40   235
6 months    MAL-ED           INDIA                          0                 0       11   235
6 months    MAL-ED           INDIA                          0                 1        4   235
6 months    MAL-ED           NEPAL                          1                 0       97   229
6 months    MAL-ED           NEPAL                          1                 1        6   229
6 months    MAL-ED           NEPAL                          0                 0      121   229
6 months    MAL-ED           NEPAL                          0                 1        5   229
6 months    MAL-ED           PERU                           1                 0       38   270
6 months    MAL-ED           PERU                           1                 1       20   270
6 months    MAL-ED           PERU                           0                 0      172   270
6 months    MAL-ED           PERU                           0                 1       40   270
6 months    MAL-ED           SOUTH AFRICA                   1                 0      184   249
6 months    MAL-ED           SOUTH AFRICA                   1                 1       45   249
6 months    MAL-ED           SOUTH AFRICA                   0                 0       16   249
6 months    MAL-ED           SOUTH AFRICA                   0                 1        4   249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       12   245
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        2   245
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      174   245
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1       57   245
6 months    NIH-Birth        BANGLADESH                     1                 0      361   535
6 months    NIH-Birth        BANGLADESH                     1                 1      116   535
6 months    NIH-Birth        BANGLADESH                     0                 0       31   535
6 months    NIH-Birth        BANGLADESH                     0                 1       27   535
6 months    NIH-Crypto       BANGLADESH                     1                 0      423   715
6 months    NIH-Crypto       BANGLADESH                     1                 1      114   715
6 months    NIH-Crypto       BANGLADESH                     0                 0      142   715
6 months    NIH-Crypto       BANGLADESH                     0                 1       36   715
6 months    PROVIDE          BANGLADESH                     1                 0      477   604
6 months    PROVIDE          BANGLADESH                     1                 1       80   604
6 months    PROVIDE          BANGLADESH                     0                 0       31   604
6 months    PROVIDE          BANGLADESH                     0                 1       16   604
24 months   CMC-V-BCS-2002   INDIA                          1                 0       79   259
24 months   CMC-V-BCS-2002   INDIA                          1                 1      180   259
24 months   CMC-V-BCS-2002   INDIA                          0                 0        0   259
24 months   CMC-V-BCS-2002   INDIA                          0                 1        0   259
24 months   CONTENT          PERU                           1                 0      143   164
24 months   CONTENT          PERU                           1                 1       11   164
24 months   CONTENT          PERU                           0                 0        8   164
24 months   CONTENT          PERU                           0                 1        2   164
24 months   GMS-Nepal        NEPAL                          1                 0       48   374
24 months   GMS-Nepal        NEPAL                          1                 1       24   374
24 months   GMS-Nepal        NEPAL                          0                 0      170   374
24 months   GMS-Nepal        NEPAL                          0                 1      132   374
24 months   IRC              INDIA                          1                 0      188   305
24 months   IRC              INDIA                          1                 1      117   305
24 months   IRC              INDIA                          0                 0        0   305
24 months   IRC              INDIA                          0                 1        0   305
24 months   MAL-ED           BANGLADESH                     1                 0      103   212
24 months   MAL-ED           BANGLADESH                     1                 1       92   212
24 months   MAL-ED           BANGLADESH                     0                 0        8   212
24 months   MAL-ED           BANGLADESH                     0                 1        9   212
24 months   MAL-ED           BRAZIL                         1                 0      160   169
24 months   MAL-ED           BRAZIL                         1                 1        7   169
24 months   MAL-ED           BRAZIL                         0                 0        2   169
24 months   MAL-ED           BRAZIL                         0                 1        0   169
24 months   MAL-ED           INDIA                          1                 0      123   227
24 months   MAL-ED           INDIA                          1                 1       89   227
24 months   MAL-ED           INDIA                          0                 0        7   227
24 months   MAL-ED           INDIA                          0                 1        8   227
24 months   MAL-ED           NEPAL                          1                 0       82   221
24 months   MAL-ED           NEPAL                          1                 1       16   221
24 months   MAL-ED           NEPAL                          0                 0       90   221
24 months   MAL-ED           NEPAL                          0                 1       33   221
24 months   MAL-ED           PERU                           1                 0       32   201
24 months   MAL-ED           PERU                           1                 1       17   201
24 months   MAL-ED           PERU                           0                 0       95   201
24 months   MAL-ED           PERU                           0                 1       57   201
24 months   MAL-ED           SOUTH AFRICA                   1                 0      142   238
24 months   MAL-ED           SOUTH AFRICA                   1                 1       78   238
24 months   MAL-ED           SOUTH AFRICA                   0                 0       12   238
24 months   MAL-ED           SOUTH AFRICA                   0                 1        6   238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0        2   212
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1       10   212
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0       57   212
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1      143   212
24 months   NIH-Birth        BANGLADESH                     1                 0      171   427
24 months   NIH-Birth        BANGLADESH                     1                 1      206   427
24 months   NIH-Birth        BANGLADESH                     0                 0       12   427
24 months   NIH-Birth        BANGLADESH                     0                 1       38   427
24 months   NIH-Crypto       BANGLADESH                     1                 0      260   514
24 months   NIH-Crypto       BANGLADESH                     1                 1       86   514
24 months   NIH-Crypto       BANGLADESH                     0                 0      122   514
24 months   NIH-Crypto       BANGLADESH                     0                 1       46   514
24 months   PROVIDE          BANGLADESH                     1                 0      365   578
24 months   PROVIDE          BANGLADESH                     1                 1      168   578
24 months   PROVIDE          BANGLADESH                     0                 0       23   578
24 months   PROVIDE          BANGLADESH                     0                 1       22   578


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/79e68972-a313-4145-b968-bdff9d29b322/ade0a559-371e-408f-be45-e5c3d2819387/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/79e68972-a313-4145-b968-bdff9d29b322/ade0a559-371e-408f-be45-e5c3d2819387/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/79e68972-a313-4145-b968-bdff9d29b322/ade0a559-371e-408f-be45-e5c3d2819387/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/79e68972-a313-4145-b968-bdff9d29b322/ade0a559-371e-408f-be45-e5c3d2819387/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal    NEPAL          1                    NA                0.0900000   0.0338578   0.1461422
Birth       GMS-Nepal    NEPAL          0                    NA                0.1869369   0.1506403   0.2232335
Birth       MAL-ED       PERU           1                    NA                0.2307692   0.0982297   0.3633088
Birth       MAL-ED       PERU           0                    NA                0.0965909   0.0528473   0.1403345
Birth       NIH-Birth    BANGLADESH     1                    NA                0.1519700   0.1214680   0.1824720
Birth       NIH-Birth    BANGLADESH     0                    NA                0.1944444   0.1029517   0.2859372
Birth       NIH-Crypto   BANGLADESH     1                    NA                0.1362007   0.1077218   0.1646797
Birth       NIH-Crypto   BANGLADESH     0                    NA                0.1436782   0.0915246   0.1958318
6 months    GMS-Nepal    NEPAL          1                    NA                0.1282051   0.0539283   0.2024820
6 months    GMS-Nepal    NEPAL          0                    NA                0.2203857   0.1776963   0.2630750
6 months    MAL-ED       NEPAL          1                    NA                0.0582524   0.0129205   0.1035843
6 months    MAL-ED       NEPAL          0                    NA                0.0396825   0.0055223   0.0738427
6 months    MAL-ED       PERU           1                    NA                0.3448276   0.2222761   0.4673791
6 months    MAL-ED       PERU           0                    NA                0.1886792   0.1359144   0.2414440
6 months    NIH-Birth    BANGLADESH     1                    NA                0.2431866   0.2046512   0.2817219
6 months    NIH-Birth    BANGLADESH     0                    NA                0.4655172   0.3370255   0.5940089
6 months    NIH-Crypto   BANGLADESH     1                    NA                0.2122905   0.1776796   0.2469014
6 months    NIH-Crypto   BANGLADESH     0                    NA                0.2022472   0.1431975   0.2612969
6 months    PROVIDE      BANGLADESH     1                    NA                0.1436266   0.1144772   0.1727759
6 months    PROVIDE      BANGLADESH     0                    NA                0.3404255   0.2048436   0.4760075
24 months   GMS-Nepal    NEPAL          1                    NA                0.3333333   0.2243006   0.4423661
24 months   GMS-Nepal    NEPAL          0                    NA                0.4370861   0.3810677   0.4931045
24 months   MAL-ED       BANGLADESH     1                    NA                0.4717949   0.4015628   0.5420269
24 months   MAL-ED       BANGLADESH     0                    NA                0.5294118   0.2915812   0.7672423
24 months   MAL-ED       INDIA          1                    NA                0.4198113   0.3532303   0.4863924
24 months   MAL-ED       INDIA          0                    NA                0.5333333   0.2803080   0.7863586
24 months   MAL-ED       NEPAL          1                    NA                0.1632653   0.0899220   0.2366086
24 months   MAL-ED       NEPAL          0                    NA                0.2682927   0.1898137   0.3467717
24 months   MAL-ED       PERU           1                    NA                0.3469388   0.2133295   0.4805480
24 months   MAL-ED       PERU           0                    NA                0.3750000   0.2978448   0.4521552
24 months   MAL-ED       SOUTH AFRICA   1                    NA                0.3545455   0.2911994   0.4178915
24 months   MAL-ED       SOUTH AFRICA   0                    NA                0.3333333   0.1151006   0.5515661
24 months   NIH-Birth    BANGLADESH     1                    NA                0.5464191   0.4961065   0.5967317
24 months   NIH-Birth    BANGLADESH     0                    NA                0.7600000   0.6414819   0.8785181
24 months   NIH-Crypto   BANGLADESH     1                    NA                0.2485549   0.2029730   0.2941368
24 months   NIH-Crypto   BANGLADESH     0                    NA                0.2738095   0.2063154   0.3413036
24 months   PROVIDE      BANGLADESH     1                    NA                0.3151970   0.2757209   0.3546731
24 months   PROVIDE      BANGLADESH     0                    NA                0.4888889   0.3427114   0.6350664


### Parameter: E(Y)


agecat      studyid      country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal    NEPAL          NA                   NA                0.1691176   0.1375885   0.2006468
Birth       MAL-ED       PERU           NA                   NA                0.1209302   0.0772464   0.1646140
Birth       NIH-Birth    BANGLADESH     NA                   NA                0.1570248   0.1280099   0.1860397
Birth       NIH-Crypto   BANGLADESH     NA                   NA                0.1379781   0.1129774   0.1629789
6 months    GMS-Nepal    NEPAL          NA                   NA                0.2040816   0.1664236   0.2417397
6 months    MAL-ED       NEPAL          NA                   NA                0.0480349   0.0202781   0.0757918
6 months    MAL-ED       PERU           NA                   NA                0.2222222   0.1725409   0.2719036
6 months    NIH-Birth    BANGLADESH     NA                   NA                0.2672897   0.2297549   0.3048246
6 months    NIH-Crypto   BANGLADESH     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    PROVIDE      BANGLADESH     NA                   NA                0.1589404   0.1297581   0.1881227
24 months   GMS-Nepal    NEPAL          NA                   NA                0.4171123   0.3670728   0.4671518
24 months   MAL-ED       BANGLADESH     NA                   NA                0.4764151   0.4090254   0.5438047
24 months   MAL-ED       INDIA          NA                   NA                0.4273128   0.3628178   0.4918077
24 months   MAL-ED       NEPAL          NA                   NA                0.2217195   0.1668277   0.2766112
24 months   MAL-ED       PERU           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   MAL-ED       SOUTH AFRICA   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   NIH-Birth    BANGLADESH     NA                   NA                0.5714286   0.5244353   0.6184219
24 months   NIH-Crypto   BANGLADESH     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   PROVIDE      BANGLADESH     NA                   NA                0.3287197   0.2903909   0.3670485


### Parameter: RR


agecat      studyid      country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal    NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal    NEPAL          0                    1                 2.0770771   1.0807333   3.9919648
Birth       MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.0000000
Birth       MAL-ED       PERU           0                    1                 0.4185606   0.2014240   0.8697720
Birth       NIH-Birth    BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       NIH-Birth    BANGLADESH     0                    1                 1.2794925   0.7671368   2.1340403
Birth       NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto   BANGLADESH     0                    1                 1.0549002   0.6938778   1.6037614
6 months    GMS-Nepal    NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal    NEPAL          0                    1                 1.7190083   0.9332000   3.1665123
6 months    MAL-ED       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED       NEPAL          0                    1                 0.6812169   0.2134571   2.1740031
6 months    MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED       PERU           0                    1                 0.5471698   0.3481127   0.8600515
6 months    NIH-Birth    BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    NIH-Birth    BANGLADESH     0                    1                 1.9142390   1.3924288   2.6315967
6 months    NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    NIH-Crypto   BANGLADESH     0                    1                 0.9526907   0.6819025   1.3310109
6 months    PROVIDE      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    PROVIDE      BANGLADESH     0                    1                 2.3702128   1.5158528   3.7061042
24 months   GMS-Nepal    NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal    NEPAL          0                    1                 1.3112583   0.9228179   1.8632042
24 months   MAL-ED       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED       BANGLADESH     0                    1                 1.1221228   0.6990487   1.8012472
24 months   MAL-ED       INDIA          1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED       INDIA          0                    1                 1.2704120   0.7703668   2.0950365
24 months   MAL-ED       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED       NEPAL          0                    1                 1.6432927   0.9613983   2.8088367
24 months   MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED       PERU           0                    1                 1.0808824   0.6984815   1.6726379
24 months   MAL-ED       SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED       SOUTH AFRICA   0                    1                 0.9401709   0.4769548   1.8532602
24 months   NIH-Birth    BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   NIH-Birth    BANGLADESH     0                    1                 1.3908738   1.1604790   1.6670098
24 months   NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto   BANGLADESH     0                    1                 1.1016058   0.8102064   1.4978100
24 months   PROVIDE      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   PROVIDE      BANGLADESH     0                    1                 1.5510582   1.1216121   2.1449318


### Parameter: PAR


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          1                    NA                 0.0791176    0.0244621    0.1337732
Birth       MAL-ED       PERU           1                    NA                -0.1098390   -0.2243028    0.0046248
Birth       NIH-Birth    BANGLADESH     1                    NA                 0.0050548   -0.0064750    0.0165846
Birth       NIH-Crypto   BANGLADESH     1                    NA                 0.0017774   -0.0123495    0.0159044
6 months    GMS-Nepal    NEPAL          1                    NA                 0.0758765    0.0052821    0.1464709
6 months    MAL-ED       NEPAL          1                    NA                -0.0102175   -0.0414719    0.0210369
6 months    MAL-ED       PERU           1                    NA                -0.1226054   -0.2276509   -0.0175599
6 months    NIH-Birth    BANGLADESH     1                    NA                 0.0241031    0.0084230    0.0397833
6 months    NIH-Crypto   BANGLADESH     1                    NA                -0.0025003   -0.0195428    0.0145422
6 months    PROVIDE      BANGLADESH     1                    NA                 0.0153138    0.0037312    0.0268965
24 months   GMS-Nepal    NEPAL          1                    NA                 0.0837790   -0.0152909    0.1828488
24 months   MAL-ED       BANGLADESH     1                    NA                 0.0046202   -0.0153770    0.0246175
24 months   MAL-ED       INDIA          1                    NA                 0.0075015   -0.0101741    0.0251770
24 months   MAL-ED       NEPAL          1                    NA                 0.0584542   -0.0017257    0.1186340
24 months   MAL-ED       PERU           1                    NA                 0.0212204   -0.0954659    0.1379068
24 months   MAL-ED       SOUTH AFRICA   1                    NA                -0.0016043   -0.0188054    0.0155968
24 months   NIH-Birth    BANGLADESH     1                    NA                 0.0250095    0.0085828    0.0414361
24 months   NIH-Crypto   BANGLADESH     1                    NA                 0.0082544   -0.0183852    0.0348941
24 months   PROVIDE      BANGLADESH     1                    NA                 0.0135227    0.0011379    0.0259075


### Parameter: PAF


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          1                    NA                 0.4678261    0.0402469    0.7049147
Birth       MAL-ED       PERU           1                    NA                -0.9082840   -2.0890152   -0.1788702
Birth       NIH-Birth    BANGLADESH     1                    NA                 0.0321912   -0.0439265    0.1027587
Birth       NIH-Crypto   BANGLADESH     1                    NA                 0.0128819   -0.0949814    0.1101200
6 months    GMS-Nepal    NEPAL          1                    NA                 0.3717949   -0.0815092    0.6351010
6 months    MAL-ED       NEPAL          1                    NA                -0.2127096   -1.0563292    0.2848107
6 months    MAL-ED       PERU           1                    NA                -0.5517241   -1.1018571   -0.1455811
6 months    NIH-Birth    BANGLADESH     1                    NA                 0.0901761    0.0300719    0.1465557
6 months    NIH-Crypto   BANGLADESH     1                    NA                -0.0119181   -0.0964951    0.0661352
6 months    PROVIDE      BANGLADESH     1                    NA                 0.0963495    0.0220027    0.1650445
24 months   GMS-Nepal    NEPAL          1                    NA                 0.2008547   -0.0759638    0.4064547
24 months   MAL-ED       BANGLADESH     1                    NA                 0.0096979   -0.0331976    0.0508125
24 months   MAL-ED       INDIA          1                    NA                 0.0175550   -0.0247338    0.0580986
24 months   MAL-ED       NEPAL          1                    NA                 0.2636401   -0.0579426    0.4874714
24 months   MAL-ED       PERU           1                    NA                 0.0576393   -0.3191428    0.3268024
24 months   MAL-ED       SOUTH AFRICA   1                    NA                -0.0045455   -0.0544841    0.0430282
24 months   NIH-Birth    BANGLADESH     1                    NA                 0.0437666    0.0142257    0.0724222
24 months   NIH-Crypto   BANGLADESH     1                    NA                 0.0321422   -0.0773141    0.1304777
24 months   PROVIDE      BANGLADESH     1                    NA                 0.0411376    0.0027310    0.0780650
