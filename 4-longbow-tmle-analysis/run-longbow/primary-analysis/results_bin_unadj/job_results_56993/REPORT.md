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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        exclfeed3    wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  ----------  ------------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          1                      0        5     11
0-24 months   CMC-V-BCS-2002   INDIA                          1                      1        6     11
0-24 months   CMC-V-BCS-2002   INDIA                          0                      0        0     11
0-24 months   CMC-V-BCS-2002   INDIA                          0                      1        0     11
0-24 months   EE               PAKISTAN                       1                      0       14     30
0-24 months   EE               PAKISTAN                       1                      1       16     30
0-24 months   EE               PAKISTAN                       0                      0        0     30
0-24 months   EE               PAKISTAN                       0                      1        0     30
0-24 months   GMS-Nepal        NEPAL                          1                      0      185    491
0-24 months   GMS-Nepal        NEPAL                          1                      1      231    491
0-24 months   GMS-Nepal        NEPAL                          0                      0       32    491
0-24 months   GMS-Nepal        NEPAL                          0                      1       43    491
0-24 months   IRC              INDIA                          1                      0        0     14
0-24 months   IRC              INDIA                          1                      1        0     14
0-24 months   IRC              INDIA                          0                      0        8     14
0-24 months   IRC              INDIA                          0                      1        6     14
0-24 months   Keneba           GAMBIA                         1                      0      456   1502
0-24 months   Keneba           GAMBIA                         1                      1      849   1502
0-24 months   Keneba           GAMBIA                         0                      0       82   1502
0-24 months   Keneba           GAMBIA                         0                      1      115   1502
0-24 months   MAL-ED           BANGLADESH                     1                      0       26    117
0-24 months   MAL-ED           BANGLADESH                     1                      1       51    117
0-24 months   MAL-ED           BANGLADESH                     0                      0       15    117
0-24 months   MAL-ED           BANGLADESH                     0                      1       25    117
0-24 months   MAL-ED           BRAZIL                         1                      0        4     22
0-24 months   MAL-ED           BRAZIL                         1                      1        5     22
0-24 months   MAL-ED           BRAZIL                         0                      0        2     22
0-24 months   MAL-ED           BRAZIL                         0                      1       11     22
0-24 months   MAL-ED           INDIA                          1                      0       27    162
0-24 months   MAL-ED           INDIA                          1                      1       51    162
0-24 months   MAL-ED           INDIA                          0                      0       35    162
0-24 months   MAL-ED           INDIA                          0                      1       49    162
0-24 months   MAL-ED           NEPAL                          1                      0        6     96
0-24 months   MAL-ED           NEPAL                          1                      1       16     96
0-24 months   MAL-ED           NEPAL                          0                      0       14     96
0-24 months   MAL-ED           NEPAL                          0                      1       60     96
0-24 months   MAL-ED           PERU                           1                      0        1     33
0-24 months   MAL-ED           PERU                           1                      1        3     33
0-24 months   MAL-ED           PERU                           0                      0        5     33
0-24 months   MAL-ED           PERU                           0                      1       24     33
0-24 months   MAL-ED           SOUTH AFRICA                   1                      0        0     77
0-24 months   MAL-ED           SOUTH AFRICA                   1                      1        2     77
0-24 months   MAL-ED           SOUTH AFRICA                   0                      0       12     77
0-24 months   MAL-ED           SOUTH AFRICA                   0                      1       63     77
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        1     44
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        7     44
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0        7     44
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1       29     44
0-24 months   PROVIDE          BANGLADESH                     1                      0       89    308
0-24 months   PROVIDE          BANGLADESH                     1                      1      125    308
0-24 months   PROVIDE          BANGLADESH                     0                      0       40    308
0-24 months   PROVIDE          BANGLADESH                     0                      1       54    308
0-24 months   SAS-CompFeed     INDIA                          1                      0      144    238
0-24 months   SAS-CompFeed     INDIA                          1                      1       81    238
0-24 months   SAS-CompFeed     INDIA                          0                      0        6    238
0-24 months   SAS-CompFeed     INDIA                          0                      1        7    238
0-6 months    CMC-V-BCS-2002   INDIA                          1                      0        3      6
0-6 months    CMC-V-BCS-2002   INDIA                          1                      1        3      6
0-6 months    CMC-V-BCS-2002   INDIA                          0                      0        0      6
0-6 months    CMC-V-BCS-2002   INDIA                          0                      1        0      6
0-6 months    EE               PAKISTAN                       1                      0        5     12
0-6 months    EE               PAKISTAN                       1                      1        7     12
0-6 months    EE               PAKISTAN                       0                      0        0     12
0-6 months    EE               PAKISTAN                       0                      1        0     12
0-6 months    GMS-Nepal        NEPAL                          1                      0       54    181
0-6 months    GMS-Nepal        NEPAL                          1                      1       96    181
0-6 months    GMS-Nepal        NEPAL                          0                      0       13    181
0-6 months    GMS-Nepal        NEPAL                          0                      1       18    181
0-6 months    IRC              INDIA                          1                      0        0     10
0-6 months    IRC              INDIA                          1                      1        0     10
0-6 months    IRC              INDIA                          0                      0        5     10
0-6 months    IRC              INDIA                          0                      1        5     10
0-6 months    Keneba           GAMBIA                         1                      0       98    645
0-6 months    Keneba           GAMBIA                         1                      1      444    645
0-6 months    Keneba           GAMBIA                         0                      0       32    645
0-6 months    Keneba           GAMBIA                         0                      1       71    645
0-6 months    MAL-ED           BANGLADESH                     1                      0        7     58
0-6 months    MAL-ED           BANGLADESH                     1                      1       30     58
0-6 months    MAL-ED           BANGLADESH                     0                      0        5     58
0-6 months    MAL-ED           BANGLADESH                     0                      1       16     58
0-6 months    MAL-ED           BRAZIL                         1                      0        1     13
0-6 months    MAL-ED           BRAZIL                         1                      1        4     13
0-6 months    MAL-ED           BRAZIL                         0                      0        0     13
0-6 months    MAL-ED           BRAZIL                         0                      1        8     13
0-6 months    MAL-ED           INDIA                          1                      0        6     74
0-6 months    MAL-ED           INDIA                          1                      1       24     74
0-6 months    MAL-ED           INDIA                          0                      0       17     74
0-6 months    MAL-ED           INDIA                          0                      1       27     74
0-6 months    MAL-ED           NEPAL                          1                      0        4     46
0-6 months    MAL-ED           NEPAL                          1                      1        6     46
0-6 months    MAL-ED           NEPAL                          0                      0        5     46
0-6 months    MAL-ED           NEPAL                          0                      1       31     46
0-6 months    MAL-ED           PERU                           1                      0        0     11
0-6 months    MAL-ED           PERU                           1                      1        0     11
0-6 months    MAL-ED           PERU                           0                      0        0     11
0-6 months    MAL-ED           PERU                           0                      1       11     11
0-6 months    MAL-ED           SOUTH AFRICA                   1                      0        0     29
0-6 months    MAL-ED           SOUTH AFRICA                   1                      1        1     29
0-6 months    MAL-ED           SOUTH AFRICA                   0                      0        4     29
0-6 months    MAL-ED           SOUTH AFRICA                   0                      1       24     29
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        0     12
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        4     12
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0        0     12
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1        8     12
0-6 months    PROVIDE          BANGLADESH                     1                      0       24    185
0-6 months    PROVIDE          BANGLADESH                     1                      1      100    185
0-6 months    PROVIDE          BANGLADESH                     0                      0       16    185
0-6 months    PROVIDE          BANGLADESH                     0                      1       45    185
0-6 months    SAS-CompFeed     INDIA                          1                      0       45     94
0-6 months    SAS-CompFeed     INDIA                          1                      1       43     94
0-6 months    SAS-CompFeed     INDIA                          0                      0        3     94
0-6 months    SAS-CompFeed     INDIA                          0                      1        3     94
6-24 months   CMC-V-BCS-2002   INDIA                          1                      0        2      5
6-24 months   CMC-V-BCS-2002   INDIA                          1                      1        3      5
6-24 months   CMC-V-BCS-2002   INDIA                          0                      0        0      5
6-24 months   CMC-V-BCS-2002   INDIA                          0                      1        0      5
6-24 months   EE               PAKISTAN                       1                      0        9     18
6-24 months   EE               PAKISTAN                       1                      1        9     18
6-24 months   EE               PAKISTAN                       0                      0        0     18
6-24 months   EE               PAKISTAN                       0                      1        0     18
6-24 months   GMS-Nepal        NEPAL                          1                      0      131    310
6-24 months   GMS-Nepal        NEPAL                          1                      1      135    310
6-24 months   GMS-Nepal        NEPAL                          0                      0       19    310
6-24 months   GMS-Nepal        NEPAL                          0                      1       25    310
6-24 months   IRC              INDIA                          1                      0        0      4
6-24 months   IRC              INDIA                          1                      1        0      4
6-24 months   IRC              INDIA                          0                      0        3      4
6-24 months   IRC              INDIA                          0                      1        1      4
6-24 months   Keneba           GAMBIA                         1                      0      358    857
6-24 months   Keneba           GAMBIA                         1                      1      405    857
6-24 months   Keneba           GAMBIA                         0                      0       50    857
6-24 months   Keneba           GAMBIA                         0                      1       44    857
6-24 months   MAL-ED           BANGLADESH                     1                      0       19     59
6-24 months   MAL-ED           BANGLADESH                     1                      1       21     59
6-24 months   MAL-ED           BANGLADESH                     0                      0       10     59
6-24 months   MAL-ED           BANGLADESH                     0                      1        9     59
6-24 months   MAL-ED           BRAZIL                         1                      0        3      9
6-24 months   MAL-ED           BRAZIL                         1                      1        1      9
6-24 months   MAL-ED           BRAZIL                         0                      0        2      9
6-24 months   MAL-ED           BRAZIL                         0                      1        3      9
6-24 months   MAL-ED           INDIA                          1                      0       21     88
6-24 months   MAL-ED           INDIA                          1                      1       27     88
6-24 months   MAL-ED           INDIA                          0                      0       18     88
6-24 months   MAL-ED           INDIA                          0                      1       22     88
6-24 months   MAL-ED           NEPAL                          1                      0        2     50
6-24 months   MAL-ED           NEPAL                          1                      1       10     50
6-24 months   MAL-ED           NEPAL                          0                      0        9     50
6-24 months   MAL-ED           NEPAL                          0                      1       29     50
6-24 months   MAL-ED           PERU                           1                      0        1     22
6-24 months   MAL-ED           PERU                           1                      1        3     22
6-24 months   MAL-ED           PERU                           0                      0        5     22
6-24 months   MAL-ED           PERU                           0                      1       13     22
6-24 months   MAL-ED           SOUTH AFRICA                   1                      0        0     48
6-24 months   MAL-ED           SOUTH AFRICA                   1                      1        1     48
6-24 months   MAL-ED           SOUTH AFRICA                   0                      0        8     48
6-24 months   MAL-ED           SOUTH AFRICA                   0                      1       39     48
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        1     32
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        3     32
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0        7     32
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1       21     32
6-24 months   PROVIDE          BANGLADESH                     1                      0       65    123
6-24 months   PROVIDE          BANGLADESH                     1                      1       25    123
6-24 months   PROVIDE          BANGLADESH                     0                      0       24    123
6-24 months   PROVIDE          BANGLADESH                     0                      1        9    123
6-24 months   SAS-CompFeed     INDIA                          1                      0       99    144
6-24 months   SAS-CompFeed     INDIA                          1                      1       38    144
6-24 months   SAS-CompFeed     INDIA                          0                      0        3    144
6-24 months   SAS-CompFeed     INDIA                          0                      1        4    144


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/576ba447-b7ce-4d1d-a0e2-f417fee45036/c3eaa91b-bf8f-4eb6-bbb2-65d3939928f7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/576ba447-b7ce-4d1d-a0e2-f417fee45036/c3eaa91b-bf8f-4eb6-bbb2-65d3939928f7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/576ba447-b7ce-4d1d-a0e2-f417fee45036/c3eaa91b-bf8f-4eb6-bbb2-65d3939928f7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/576ba447-b7ce-4d1d-a0e2-f417fee45036/c3eaa91b-bf8f-4eb6-bbb2-65d3939928f7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                0.5552885   0.5025632   0.6080137
0-24 months   GMS-Nepal      NEPAL        0                    NA                0.5733333   0.4464146   0.7002520
0-24 months   Keneba         GAMBIA       1                    NA                0.6505747   0.6230042   0.6781452
0-24 months   Keneba         GAMBIA       0                    NA                0.5837563   0.5129698   0.6545429
0-24 months   MAL-ED         BANGLADESH   1                    NA                0.6623377   0.5572479   0.7674274
0-24 months   MAL-ED         BANGLADESH   0                    NA                0.6250000   0.4630597   0.7869403
0-24 months   MAL-ED         INDIA        1                    NA                0.6538462   0.5405099   0.7671825
0-24 months   MAL-ED         INDIA        0                    NA                0.5833333   0.4629520   0.7037146
0-24 months   MAL-ED         NEPAL        1                    NA                0.7272727   0.5132170   0.9413285
0-24 months   MAL-ED         NEPAL        0                    NA                0.8108108   0.7343861   0.8872355
0-24 months   PROVIDE        BANGLADESH   1                    NA                0.5841121   0.5162835   0.6519408
0-24 months   PROVIDE        BANGLADESH   0                    NA                0.5744681   0.4711895   0.6777467
0-24 months   SAS-CompFeed   INDIA        1                    NA                0.3600000   0.2937351   0.4262649
0-24 months   SAS-CompFeed   INDIA        0                    NA                0.5384615   0.2364546   0.8404685
0-6 months    GMS-Nepal      NEPAL        1                    NA                0.6400000   0.5624099   0.7175901
0-6 months    GMS-Nepal      NEPAL        0                    NA                0.5806452   0.4056011   0.7556893
0-6 months    Keneba         GAMBIA       1                    NA                0.8191882   0.7875753   0.8508011
0-6 months    Keneba         GAMBIA       0                    NA                0.6893204   0.6043821   0.7742587
0-6 months    MAL-ED         BANGLADESH   1                    NA                0.8108108   0.6837788   0.9378428
0-6 months    MAL-ED         BANGLADESH   0                    NA                0.7619048   0.5846570   0.9391525
0-6 months    MAL-ED         INDIA        1                    NA                0.8000000   0.6503909   0.9496091
0-6 months    MAL-ED         INDIA        0                    NA                0.6136364   0.4674979   0.7597749
0-6 months    PROVIDE        BANGLADESH   1                    NA                0.8064516   0.7385486   0.8743546
0-6 months    PROVIDE        BANGLADESH   0                    NA                0.7377049   0.6272659   0.8481439
6-24 months   GMS-Nepal      NEPAL        1                    NA                0.5075188   0.4420557   0.5729819
6-24 months   GMS-Nepal      NEPAL        0                    NA                0.5681818   0.4076156   0.7287481
6-24 months   Keneba         GAMBIA       1                    NA                0.5307995   0.4929067   0.5686923
6-24 months   Keneba         GAMBIA       0                    NA                0.4680851   0.3606539   0.5755163
6-24 months   MAL-ED         BANGLADESH   1                    NA                0.5250000   0.3534413   0.6965587
6-24 months   MAL-ED         BANGLADESH   0                    NA                0.4736842   0.2738216   0.6735468
6-24 months   MAL-ED         INDIA        1                    NA                0.5625000   0.4116867   0.7133133
6-24 months   MAL-ED         INDIA        0                    NA                0.5500000   0.3627973   0.7372027
6-24 months   PROVIDE        BANGLADESH   1                    NA                0.2777778   0.1853143   0.3702413
6-24 months   PROVIDE        BANGLADESH   0                    NA                0.2727273   0.1045711   0.4408835


### Parameter: E(Y)


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal      NEPAL        NA                   NA                0.5580448   0.5093588   0.6067308
0-24 months   Keneba         GAMBIA       NA                   NA                0.6418109   0.6160920   0.6675299
0-24 months   MAL-ED         BANGLADESH   NA                   NA                0.6495726   0.5607849   0.7383604
0-24 months   MAL-ED         INDIA        NA                   NA                0.6172840   0.5340594   0.7005085
0-24 months   MAL-ED         NEPAL        NA                   NA                0.7916667   0.7146386   0.8686947
0-24 months   PROVIDE        BANGLADESH   NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   SAS-CompFeed   INDIA        NA                   NA                0.3697479   0.3045176   0.4349782
0-6 months    GMS-Nepal      NEPAL        NA                   NA                0.6298343   0.5587812   0.7008873
0-6 months    Keneba         GAMBIA       NA                   NA                0.7984496   0.7683939   0.8285053
0-6 months    MAL-ED         BANGLADESH   NA                   NA                0.7931034   0.6894917   0.8967152
0-6 months    MAL-ED         INDIA        NA                   NA                0.6891892   0.5810852   0.7972932
0-6 months    PROVIDE        BANGLADESH   NA                   NA                0.7837838   0.7252863   0.8422812
6-24 months   GMS-Nepal      NEPAL        NA                   NA                0.5161290   0.4555456   0.5767125
6-24 months   Keneba         GAMBIA       NA                   NA                0.5239207   0.4881434   0.5596979
6-24 months   MAL-ED         BANGLADESH   NA                   NA                0.5084746   0.3754416   0.6415076
6-24 months   MAL-ED         INDIA        NA                   NA                0.5568182   0.4384773   0.6751591
6-24 months   PROVIDE        BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682


### Parameter: RR


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal      NEPAL        0                    1                 1.0324964   0.8114501   1.3137577
0-24 months   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   Keneba         GAMBIA       0                    1                 0.8972933   0.7891144   1.0203024
0-24 months   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED         BANGLADESH   0                    1                 0.9436275   0.6963129   1.2787824
0-24 months   MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED         INDIA        0                    1                 0.8921569   0.6813810   1.1681333
0-24 months   MAL-ED         NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED         NEPAL        0                    1                 1.1148649   0.8180289   1.5194129
0-24 months   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE        BANGLADESH   0                    1                 0.9834894   0.7938251   1.2184691
0-24 months   SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed   INDIA        0                    1                 1.4957265   0.8288715   2.6990889
0-6 months    GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal      NEPAL        0                    1                 0.9072581   0.6555629   1.2555884
0-6 months    Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    Keneba         GAMBIA       0                    1                 0.8414677   0.7395301   0.9574564
0-6 months    MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED         BANGLADESH   0                    1                 0.9396825   0.7098559   1.2439191
0-6 months    MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED         INDIA        0                    1                 0.7670455   0.5666415   1.0383263
0-6 months    PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE        BANGLADESH   0                    1                 0.9147541   0.7703838   1.0861794
6-24 months   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal      NEPAL        0                    1                 1.1195286   0.8203397   1.5278357
6-24 months   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   Keneba         GAMBIA       0                    1                 0.8818492   0.6934118   1.1214953
6-24 months   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED         BANGLADESH   0                    1                 0.9022556   0.5291159   1.5385386
6-24 months   MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED         INDIA        0                    1                 0.9777778   0.6339755   1.5080226
6-24 months   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE        BANGLADESH   0                    1                 0.9818182   0.4873998   1.9777746


### Parameter: PAR


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0027563   -0.0182167    0.0237294
0-24 months   Keneba         GAMBIA       1                    NA                -0.0087638   -0.0187672    0.0012396
0-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0127650   -0.0787355    0.0532055
0-24 months   MAL-ED         INDIA        1                    NA                -0.0365622   -0.1226651    0.0495407
0-24 months   MAL-ED         NEPAL        1                    NA                 0.0643939   -0.1121822    0.2409701
0-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0029433   -0.0406475    0.0347608
0-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0097479   -0.0087899    0.0282857
0-6 months    GMS-Nepal      NEPAL        1                    NA                -0.0101657   -0.0432004    0.0228689
0-6 months    Keneba         GAMBIA       1                    NA                -0.0207386   -0.0355935   -0.0058837
0-6 months    MAL-ED         BANGLADESH   1                    NA                -0.0177074   -0.0968466    0.0614319
0-6 months    MAL-ED         INDIA        1                    NA                -0.1108108   -0.2373338    0.0157122
0-6 months    PROVIDE        BANGLADESH   1                    NA                -0.0226678   -0.0656194    0.0202837
6-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0086102   -0.0158881    0.0331086
6-24 months   Keneba         GAMBIA       1                    NA                -0.0068788   -0.0195572    0.0057995
6-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0165254   -0.1017525    0.0687016
6-24 months   MAL-ED         INDIA        1                    NA                -0.0056818   -0.1149793    0.1036157
6-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0013550   -0.0528032    0.0500932


### Parameter: PAF


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0049393   -0.0333585    0.0418177
0-24 months   Keneba         GAMBIA       1                    NA                -0.0136548   -0.0293726    0.0018231
0-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0196514   -0.1267818    0.0772934
0-24 months   MAL-ED         INDIA        1                    NA                -0.0592308   -0.2095256    0.0723885
0-24 months   MAL-ED         NEPAL        1                    NA                 0.0813397   -0.1745047    0.2814531
0-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0050645   -0.0720859    0.0577671
0-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0263636   -0.0248925    0.0750564
0-6 months    GMS-Nepal      NEPAL        1                    NA                -0.0161404   -0.0700494    0.0350528
0-6 months    Keneba         GAMBIA       1                    NA                -0.0259736   -0.0449124   -0.0073780
0-6 months    MAL-ED         BANGLADESH   1                    NA                -0.0223267   -0.1273587    0.0729199
0-6 months    MAL-ED         INDIA        1                    NA                -0.1607843   -0.3673319    0.0145624
0-6 months    PROVIDE        BANGLADESH   1                    NA                -0.0289210   -0.0855479    0.0247520
6-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0166823   -0.0320002    0.0630683
6-24 months   Keneba         GAMBIA       1                    NA                -0.0131295   -0.0376417    0.0108036
6-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0325000   -0.2127605    0.1209672
6-24 months   MAL-ED         INDIA        1                    NA                -0.0102041   -0.2272019    0.1684235
6-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0049020   -0.2095297    0.1651070
