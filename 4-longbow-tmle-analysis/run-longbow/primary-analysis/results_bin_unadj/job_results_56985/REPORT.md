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

**Outcome Variable:** wast_rec90d

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

agecat        studyid          country                        impfloor    wast_rec90d   n_cell     n
------------  ---------------  -----------------------------  ---------  ------------  -------  ----
0-24 months   CMC-V-BCS-2002   INDIA                          1                     0       78   223
0-24 months   CMC-V-BCS-2002   INDIA                          1                     1      145   223
0-24 months   CMC-V-BCS-2002   INDIA                          0                     0        0   223
0-24 months   CMC-V-BCS-2002   INDIA                          0                     1        0   223
0-24 months   CONTENT          PERU                           1                     0        1     7
0-24 months   CONTENT          PERU                           1                     1        6     7
0-24 months   CONTENT          PERU                           0                     0        0     7
0-24 months   CONTENT          PERU                           0                     1        0     7
0-24 months   GMS-Nepal        NEPAL                          1                     0       47   504
0-24 months   GMS-Nepal        NEPAL                          1                     1       36   504
0-24 months   GMS-Nepal        NEPAL                          0                     0      185   504
0-24 months   GMS-Nepal        NEPAL                          0                     1      236   504
0-24 months   IRC              INDIA                          1                     0      128   308
0-24 months   IRC              INDIA                          1                     1      180   308
0-24 months   IRC              INDIA                          0                     0        0   308
0-24 months   IRC              INDIA                          0                     1        0   308
0-24 months   MAL-ED           BANGLADESH                     1                     0       37   121
0-24 months   MAL-ED           BANGLADESH                     1                     1       73   121
0-24 months   MAL-ED           BANGLADESH                     0                     0        6   121
0-24 months   MAL-ED           BANGLADESH                     0                     1        5   121
0-24 months   MAL-ED           BRAZIL                         1                     0        6    24
0-24 months   MAL-ED           BRAZIL                         1                     1       18    24
0-24 months   MAL-ED           BRAZIL                         0                     0        0    24
0-24 months   MAL-ED           BRAZIL                         0                     1        0    24
0-24 months   MAL-ED           INDIA                          1                     0       60   175
0-24 months   MAL-ED           INDIA                          1                     1      101   175
0-24 months   MAL-ED           INDIA                          0                     0        6   175
0-24 months   MAL-ED           INDIA                          0                     1        8   175
0-24 months   MAL-ED           NEPAL                          1                     0        9    92
0-24 months   MAL-ED           NEPAL                          1                     1       34    92
0-24 months   MAL-ED           NEPAL                          0                     0       10    92
0-24 months   MAL-ED           NEPAL                          0                     1       39    92
0-24 months   MAL-ED           PERU                           1                     0        2    34
0-24 months   MAL-ED           PERU                           1                     1        5    34
0-24 months   MAL-ED           PERU                           0                     0        4    34
0-24 months   MAL-ED           PERU                           0                     1       23    34
0-24 months   MAL-ED           SOUTH AFRICA                   1                     0       13    80
0-24 months   MAL-ED           SOUTH AFRICA                   1                     1       64    80
0-24 months   MAL-ED           SOUTH AFRICA                   0                     0        0    80
0-24 months   MAL-ED           SOUTH AFRICA                   0                     1        3    80
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        1    51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        1    51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0        8    51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1       41    51
0-24 months   NIH-Birth        BANGLADESH                     1                     0      168   418
0-24 months   NIH-Birth        BANGLADESH                     1                     1      193   418
0-24 months   NIH-Birth        BANGLADESH                     0                     0       33   418
0-24 months   NIH-Birth        BANGLADESH                     0                     1       24   418
0-24 months   NIH-Crypto       BANGLADESH                     1                     0       86   310
0-24 months   NIH-Crypto       BANGLADESH                     1                     1      138   310
0-24 months   NIH-Crypto       BANGLADESH                     0                     0       31   310
0-24 months   NIH-Crypto       BANGLADESH                     0                     1       55   310
0-24 months   PROVIDE          BANGLADESH                     1                     0      105   308
0-24 months   PROVIDE          BANGLADESH                     1                     1      165   308
0-24 months   PROVIDE          BANGLADESH                     0                     0       24   308
0-24 months   PROVIDE          BANGLADESH                     0                     1       14   308
0-6 months    CMC-V-BCS-2002   INDIA                          1                     0       39   139
0-6 months    CMC-V-BCS-2002   INDIA                          1                     1      100   139
0-6 months    CMC-V-BCS-2002   INDIA                          0                     0        0   139
0-6 months    CMC-V-BCS-2002   INDIA                          0                     1        0   139
0-6 months    CONTENT          PERU                           1                     0        0     4
0-6 months    CONTENT          PERU                           1                     1        4     4
0-6 months    CONTENT          PERU                           0                     0        0     4
0-6 months    CONTENT          PERU                           0                     1        0     4
0-6 months    GMS-Nepal        NEPAL                          1                     0       23   202
0-6 months    GMS-Nepal        NEPAL                          1                     1       15   202
0-6 months    GMS-Nepal        NEPAL                          0                     0       57   202
0-6 months    GMS-Nepal        NEPAL                          0                     1      107   202
0-6 months    IRC              INDIA                          1                     0       72   187
0-6 months    IRC              INDIA                          1                     1      115   187
0-6 months    IRC              INDIA                          0                     0        0   187
0-6 months    IRC              INDIA                          0                     1        0   187
0-6 months    MAL-ED           BANGLADESH                     1                     0       10    60
0-6 months    MAL-ED           BANGLADESH                     1                     1       45    60
0-6 months    MAL-ED           BANGLADESH                     0                     0        2    60
0-6 months    MAL-ED           BANGLADESH                     0                     1        3    60
0-6 months    MAL-ED           BRAZIL                         1                     0        1    15
0-6 months    MAL-ED           BRAZIL                         1                     1       14    15
0-6 months    MAL-ED           BRAZIL                         0                     0        0    15
0-6 months    MAL-ED           BRAZIL                         0                     1        0    15
0-6 months    MAL-ED           INDIA                          1                     0       21    80
0-6 months    MAL-ED           INDIA                          1                     1       55    80
0-6 months    MAL-ED           INDIA                          0                     0        1    80
0-6 months    MAL-ED           INDIA                          0                     1        3    80
0-6 months    MAL-ED           NEPAL                          1                     0        5    46
0-6 months    MAL-ED           NEPAL                          1                     1       22    46
0-6 months    MAL-ED           NEPAL                          0                     0        3    46
0-6 months    MAL-ED           NEPAL                          0                     1       16    46
0-6 months    MAL-ED           PERU                           1                     0        0    10
0-6 months    MAL-ED           PERU                           1                     1        2    10
0-6 months    MAL-ED           PERU                           0                     0        0    10
0-6 months    MAL-ED           PERU                           0                     1        8    10
0-6 months    MAL-ED           SOUTH AFRICA                   1                     0        4    29
0-6 months    MAL-ED           SOUTH AFRICA                   1                     1       24    29
0-6 months    MAL-ED           SOUTH AFRICA                   0                     0        0    29
0-6 months    MAL-ED           SOUTH AFRICA                   0                     1        1    29
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        0    14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        0    14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0        1    14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1       13    14
0-6 months    NIH-Birth        BANGLADESH                     1                     0       52   221
0-6 months    NIH-Birth        BANGLADESH                     1                     1      140   221
0-6 months    NIH-Birth        BANGLADESH                     0                     0       12   221
0-6 months    NIH-Birth        BANGLADESH                     0                     1       17   221
0-6 months    NIH-Crypto       BANGLADESH                     1                     0       17   197
0-6 months    NIH-Crypto       BANGLADESH                     1                     1      122   197
0-6 months    NIH-Crypto       BANGLADESH                     0                     0        4   197
0-6 months    NIH-Crypto       BANGLADESH                     0                     1       54   197
0-6 months    PROVIDE          BANGLADESH                     1                     0       33   185
0-6 months    PROVIDE          BANGLADESH                     1                     1      132   185
0-6 months    PROVIDE          BANGLADESH                     0                     0        7   185
0-6 months    PROVIDE          BANGLADESH                     0                     1       13   185
6-24 months   CMC-V-BCS-2002   INDIA                          1                     0       39    84
6-24 months   CMC-V-BCS-2002   INDIA                          1                     1       45    84
6-24 months   CMC-V-BCS-2002   INDIA                          0                     0        0    84
6-24 months   CMC-V-BCS-2002   INDIA                          0                     1        0    84
6-24 months   CONTENT          PERU                           1                     0        1     3
6-24 months   CONTENT          PERU                           1                     1        2     3
6-24 months   CONTENT          PERU                           0                     0        0     3
6-24 months   CONTENT          PERU                           0                     1        0     3
6-24 months   GMS-Nepal        NEPAL                          1                     0       24   302
6-24 months   GMS-Nepal        NEPAL                          1                     1       21   302
6-24 months   GMS-Nepal        NEPAL                          0                     0      128   302
6-24 months   GMS-Nepal        NEPAL                          0                     1      129   302
6-24 months   IRC              INDIA                          1                     0       56   121
6-24 months   IRC              INDIA                          1                     1       65   121
6-24 months   IRC              INDIA                          0                     0        0   121
6-24 months   IRC              INDIA                          0                     1        0   121
6-24 months   MAL-ED           BANGLADESH                     1                     0       27    61
6-24 months   MAL-ED           BANGLADESH                     1                     1       28    61
6-24 months   MAL-ED           BANGLADESH                     0                     0        4    61
6-24 months   MAL-ED           BANGLADESH                     0                     1        2    61
6-24 months   MAL-ED           BRAZIL                         1                     0        5     9
6-24 months   MAL-ED           BRAZIL                         1                     1        4     9
6-24 months   MAL-ED           BRAZIL                         0                     0        0     9
6-24 months   MAL-ED           BRAZIL                         0                     1        0     9
6-24 months   MAL-ED           INDIA                          1                     0       39    95
6-24 months   MAL-ED           INDIA                          1                     1       46    95
6-24 months   MAL-ED           INDIA                          0                     0        5    95
6-24 months   MAL-ED           INDIA                          0                     1        5    95
6-24 months   MAL-ED           NEPAL                          1                     0        4    46
6-24 months   MAL-ED           NEPAL                          1                     1       12    46
6-24 months   MAL-ED           NEPAL                          0                     0        7    46
6-24 months   MAL-ED           NEPAL                          0                     1       23    46
6-24 months   MAL-ED           PERU                           1                     0        2    24
6-24 months   MAL-ED           PERU                           1                     1        3    24
6-24 months   MAL-ED           PERU                           0                     0        4    24
6-24 months   MAL-ED           PERU                           0                     1       15    24
6-24 months   MAL-ED           SOUTH AFRICA                   1                     0        9    51
6-24 months   MAL-ED           SOUTH AFRICA                   1                     1       40    51
6-24 months   MAL-ED           SOUTH AFRICA                   0                     0        0    51
6-24 months   MAL-ED           SOUTH AFRICA                   0                     1        2    51
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        1    37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        1    37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0        7    37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1       28    37
6-24 months   NIH-Birth        BANGLADESH                     1                     0      116   197
6-24 months   NIH-Birth        BANGLADESH                     1                     1       53   197
6-24 months   NIH-Birth        BANGLADESH                     0                     0       21   197
6-24 months   NIH-Birth        BANGLADESH                     0                     1        7   197
6-24 months   NIH-Crypto       BANGLADESH                     1                     0       69   113
6-24 months   NIH-Crypto       BANGLADESH                     1                     1       16   113
6-24 months   NIH-Crypto       BANGLADESH                     0                     0       27   113
6-24 months   NIH-Crypto       BANGLADESH                     0                     1        1   113
6-24 months   PROVIDE          BANGLADESH                     1                     0       72   123
6-24 months   PROVIDE          BANGLADESH                     1                     1       33   123
6-24 months   PROVIDE          BANGLADESH                     0                     0       17   123
6-24 months   PROVIDE          BANGLADESH                     0                     1        1   123


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/9166d692-b8b9-4c38-9d8e-52758628834f/63fc5f71-8de3-4993-9a94-2f3f123c97c6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9166d692-b8b9-4c38-9d8e-52758628834f/63fc5f71-8de3-4993-9a94-2f3f123c97c6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9166d692-b8b9-4c38-9d8e-52758628834f/63fc5f71-8de3-4993-9a94-2f3f123c97c6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9166d692-b8b9-4c38-9d8e-52758628834f/63fc5f71-8de3-4993-9a94-2f3f123c97c6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        1                    NA                0.4337349   0.3040214   0.5634485
0-24 months   GMS-Nepal    NEPAL        0                    NA                0.5605701   0.5093354   0.6118047
0-24 months   MAL-ED       BANGLADESH   1                    NA                0.6636364   0.5737409   0.7535318
0-24 months   MAL-ED       BANGLADESH   0                    NA                0.4545455   0.2011212   0.7079697
0-24 months   MAL-ED       INDIA        1                    NA                0.6273292   0.5434386   0.7112198
0-24 months   MAL-ED       INDIA        0                    NA                0.5714286   0.3326866   0.8101705
0-24 months   MAL-ED       NEPAL        1                    NA                0.7906977   0.6589695   0.9224259
0-24 months   MAL-ED       NEPAL        0                    NA                0.7959184   0.7066152   0.8852215
0-24 months   NIH-Birth    BANGLADESH   1                    NA                0.5346260   0.4802983   0.5889538
0-24 months   NIH-Birth    BANGLADESH   0                    NA                0.4210526   0.2806014   0.5615038
0-24 months   NIH-Crypto   BANGLADESH   1                    NA                0.6160714   0.5509241   0.6812187
0-24 months   NIH-Crypto   BANGLADESH   0                    NA                0.6395349   0.5426676   0.7364021
0-24 months   PROVIDE      BANGLADESH   1                    NA                0.6111111   0.5507241   0.6714981
0-24 months   PROVIDE      BANGLADESH   0                    NA                0.3684211   0.2294489   0.5073932
0-6 months    GMS-Nepal    NEPAL        1                    NA                0.3947368   0.2357841   0.5536895
0-6 months    GMS-Nepal    NEPAL        0                    NA                0.6524390   0.5787947   0.7260834
0-6 months    NIH-Birth    BANGLADESH   1                    NA                0.7291667   0.6663418   0.7919916
0-6 months    NIH-Birth    BANGLADESH   0                    NA                0.5862069   0.4057286   0.7666852
0-6 months    PROVIDE      BANGLADESH   1                    NA                0.8000000   0.7395838   0.8604162
0-6 months    PROVIDE      BANGLADESH   0                    NA                0.6500000   0.4484303   0.8515697
6-24 months   GMS-Nepal    NEPAL        1                    NA                0.4666667   0.2873372   0.6459962
6-24 months   GMS-Nepal    NEPAL        0                    NA                0.5019455   0.4368075   0.5670836
6-24 months   MAL-ED       INDIA        1                    NA                0.5411765   0.4195451   0.6628078
6-24 months   MAL-ED       INDIA        0                    NA                0.5000000   0.1687592   0.8312408
6-24 months   NIH-Birth    BANGLADESH   1                    NA                0.3136095   0.2434845   0.3837345
6-24 months   NIH-Birth    BANGLADESH   0                    NA                0.2500000   0.0656374   0.4343626


### Parameter: E(Y)


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        NA                   NA                0.5396825   0.4917879   0.5875772
0-24 months   MAL-ED       BANGLADESH   NA                   NA                0.6446281   0.5577732   0.7314830
0-24 months   MAL-ED       INDIA        NA                   NA                0.6228571   0.5433246   0.7023896
0-24 months   MAL-ED       NEPAL        NA                   NA                0.7934783   0.7160127   0.8709439
0-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.5191388   0.4683286   0.5699489
0-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   PROVIDE      BANGLADESH   NA                   NA                0.5811688   0.5245443   0.6377934
0-6 months    GMS-Nepal    NEPAL        NA                   NA                0.6039604   0.5356875   0.6722333
0-6 months    NIH-Birth    BANGLADESH   NA                   NA                0.7104072   0.6505603   0.7702542
0-6 months    PROVIDE      BANGLADESH   NA                   NA                0.7837838   0.7252863   0.8422812
6-24 months   GMS-Nepal    NEPAL        NA                   NA                0.4966887   0.4351829   0.5581945
6-24 months   MAL-ED       INDIA        NA                   NA                0.5368421   0.4223932   0.6512910
6-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.3045685   0.2390070   0.3701301


### Parameter: RR


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal    NEPAL        0                    1                 1.2924254   0.9454769   1.7666889
0-24 months   MAL-ED       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED       BANGLADESH   0                    1                 0.6849315   0.3861446   1.2149107
0-24 months   MAL-ED       INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED       INDIA        0                    1                 0.9108911   0.5874231   1.4124786
0-24 months   MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED       NEPAL        0                    1                 1.0066026   0.8227214   1.2315819
0-24 months   NIH-Birth    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth    BANGLADESH   0                    1                 0.7875648   0.5556554   1.1162643
0-24 months   NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto   BANGLADESH   0                    1                 1.0380856   0.8626326   1.2492244
0-24 months   PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE      BANGLADESH   0                    1                 0.6028708   0.4082085   0.8903618
0-6 months    GMS-Nepal    NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal    NEPAL        0                    1                 1.6528455   1.0879522   2.5110463
0-6 months    NIH-Birth    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth    BANGLADESH   0                    1                 0.8039409   0.5839539   1.1068012
0-6 months    PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE      BANGLADESH   0                    1                 0.8125000   0.5904824   1.1179948
6-24 months   GMS-Nepal    NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal    NEPAL        0                    1                 1.0755976   0.7171414   1.6132244
6-24 months   MAL-ED       INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED       INDIA        0                    1                 0.9239130   0.4590405   1.8595643
6-24 months   NIH-Birth    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth    BANGLADESH   0                    1                 0.7971698   0.3690609   1.7218829


### Parameter: PAR


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   GMS-Nepal    NEPAL        1                    NA                 0.1059476   -0.0107530    0.2226482
0-24 months   MAL-ED       BANGLADESH   1                    NA                -0.0190083   -0.0482288    0.0102123
0-24 months   MAL-ED       INDIA        1                    NA                -0.0044720   -0.0248142    0.0158701
0-24 months   MAL-ED       NEPAL        1                    NA                 0.0027806   -0.0824301    0.0879912
0-24 months   NIH-Birth    BANGLADESH   1                    NA                -0.0154873   -0.0362226    0.0052480
0-24 months   NIH-Crypto   BANGLADESH   1                    NA                 0.0065092   -0.0261204    0.0391388
0-24 months   PROVIDE      BANGLADESH   1                    NA                -0.0299423   -0.0508244   -0.0090601
0-6 months    GMS-Nepal    NEPAL        1                    NA                 0.2092236    0.0663210    0.3521261
0-6 months    NIH-Birth    BANGLADESH   1                    NA                -0.0187594   -0.0446391    0.0071202
0-6 months    PROVIDE      BANGLADESH   1                    NA                -0.0162162   -0.0398277    0.0073953
6-24 months   GMS-Nepal    NEPAL        1                    NA                 0.0300221   -0.1322993    0.1923435
6-24 months   MAL-ED       INDIA        1                    NA                -0.0043344   -0.0419154    0.0332466
6-24 months   NIH-Birth    BANGLADESH   1                    NA                -0.0090409   -0.0370914    0.0190095


### Parameter: PAF


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   GMS-Nepal    NEPAL        1                    NA                 0.1963147   -0.0545799    0.3875190
0-24 months   MAL-ED       BANGLADESH   1                    NA                -0.0294872   -0.0762681    0.0152603
0-24 months   MAL-ED       INDIA        1                    NA                -0.0071799   -0.0403006    0.0248863
0-24 months   MAL-ED       NEPAL        1                    NA                 0.0035043   -0.1100031    0.1054046
0-24 months   NIH-Birth    BANGLADESH   1                    NA                -0.0298326   -0.0707562    0.0095268
0-24 months   NIH-Crypto   BANGLADESH   1                    NA                 0.0104552   -0.0434438    0.0615701
0-24 months   PROVIDE      BANGLADESH   1                    NA                -0.0515208   -0.0884251   -0.0158678
0-6 months    GMS-Nepal    NEPAL        1                    NA                 0.3464193    0.0561508    0.5474195
0-6 months    NIH-Birth    BANGLADESH   1                    NA                -0.0264066   -0.0637859    0.0096593
0-6 months    PROVIDE      BANGLADESH   1                    NA                -0.0206897   -0.0514932    0.0092115
6-24 months   GMS-Nepal    NEPAL        1                    NA                 0.0604444   -0.3316015    0.3370654
6-24 months   MAL-ED       INDIA        1                    NA                -0.0080738   -0.0805275    0.0595215
6-24 months   NIH-Birth    BANGLADESH   1                    NA                -0.0296844   -0.1265874    0.0588835
