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

**Outcome Variable:** pers_wast

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

agecat        studyid          country                        exclfeed3    pers_wast   n_cell      n
------------  ---------------  -----------------------------  ----------  ----------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          1                    0       10     10
0-24 months   CMC-V-BCS-2002   INDIA                          1                    1        0     10
0-24 months   CMC-V-BCS-2002   INDIA                          0                    0        0     10
0-24 months   CMC-V-BCS-2002   INDIA                          0                    1        0     10
0-24 months   EE               PAKISTAN                       1                    0       38     39
0-24 months   EE               PAKISTAN                       1                    1        1     39
0-24 months   EE               PAKISTAN                       0                    0        0     39
0-24 months   EE               PAKISTAN                       0                    1        0     39
0-24 months   GMS-Nepal        NEPAL                          1                    0      326    457
0-24 months   GMS-Nepal        NEPAL                          1                    1       54    457
0-24 months   GMS-Nepal        NEPAL                          0                    0       63    457
0-24 months   GMS-Nepal        NEPAL                          0                    1       14    457
0-24 months   IRC              INDIA                          1                    0        0     10
0-24 months   IRC              INDIA                          1                    1        0     10
0-24 months   IRC              INDIA                          0                    0        9     10
0-24 months   IRC              INDIA                          0                    1        1     10
0-24 months   Keneba           GAMBIA                         1                    0     1645   1950
0-24 months   Keneba           GAMBIA                         1                    1       90   1950
0-24 months   Keneba           GAMBIA                         0                    0      194   1950
0-24 months   Keneba           GAMBIA                         0                    1       21   1950
0-24 months   MAL-ED           BANGLADESH                     1                    0      148    240
0-24 months   MAL-ED           BANGLADESH                     1                    1        8    240
0-24 months   MAL-ED           BANGLADESH                     0                    0       80    240
0-24 months   MAL-ED           BANGLADESH                     0                    1        4    240
0-24 months   MAL-ED           BRAZIL                         1                    0       62    195
0-24 months   MAL-ED           BRAZIL                         1                    1        1    195
0-24 months   MAL-ED           BRAZIL                         0                    0      131    195
0-24 months   MAL-ED           BRAZIL                         0                    1        1    195
0-24 months   MAL-ED           INDIA                          1                    0      104    215
0-24 months   MAL-ED           INDIA                          1                    1        8    215
0-24 months   MAL-ED           INDIA                          0                    0       93    215
0-24 months   MAL-ED           INDIA                          0                    1       10    215
0-24 months   MAL-ED           NEPAL                          1                    0       69    228
0-24 months   MAL-ED           NEPAL                          1                    1        2    228
0-24 months   MAL-ED           NEPAL                          0                    0      155    228
0-24 months   MAL-ED           NEPAL                          0                    1        2    228
0-24 months   MAL-ED           PERU                           1                    0       62    281
0-24 months   MAL-ED           PERU                           1                    1        0    281
0-24 months   MAL-ED           PERU                           0                    0      218    281
0-24 months   MAL-ED           PERU                           0                    1        1    281
0-24 months   MAL-ED           SOUTH AFRICA                   1                    0       24    264
0-24 months   MAL-ED           SOUTH AFRICA                   1                    1        0    264
0-24 months   MAL-ED           SOUTH AFRICA                   0                    0      238    264
0-24 months   MAL-ED           SOUTH AFRICA                   0                    1        2    264
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0       46    218
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0    218
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      172    218
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        0    218
0-24 months   PROVIDE          BANGLADESH                     1                    0      443    641
0-24 months   PROVIDE          BANGLADESH                     1                    1        8    641
0-24 months   PROVIDE          BANGLADESH                     0                    0      183    641
0-24 months   PROVIDE          BANGLADESH                     0                    1        7    641
0-24 months   SAS-CompFeed     INDIA                          1                    0      355    413
0-24 months   SAS-CompFeed     INDIA                          1                    1       40    413
0-24 months   SAS-CompFeed     INDIA                          0                    0       16    413
0-24 months   SAS-CompFeed     INDIA                          0                    1        2    413
0-6 months    CMC-V-BCS-2002   INDIA                          1                    0        7     10
0-6 months    CMC-V-BCS-2002   INDIA                          1                    1        3     10
0-6 months    CMC-V-BCS-2002   INDIA                          0                    0        0     10
0-6 months    CMC-V-BCS-2002   INDIA                          0                    1        0     10
0-6 months    EE               PAKISTAN                       1                    0       35     38
0-6 months    EE               PAKISTAN                       1                    1        3     38
0-6 months    EE               PAKISTAN                       0                    0        0     38
0-6 months    EE               PAKISTAN                       0                    1        0     38
0-6 months    GMS-Nepal        NEPAL                          1                    0      338    453
0-6 months    GMS-Nepal        NEPAL                          1                    1       41    453
0-6 months    GMS-Nepal        NEPAL                          0                    0       64    453
0-6 months    GMS-Nepal        NEPAL                          0                    1       10    453
0-6 months    IRC              INDIA                          1                    0        0     10
0-6 months    IRC              INDIA                          1                    1        0     10
0-6 months    IRC              INDIA                          0                    0        7     10
0-6 months    IRC              INDIA                          0                    1        3     10
0-6 months    Keneba           GAMBIA                         1                    0     1583   1837
0-6 months    Keneba           GAMBIA                         1                    1       43   1837
0-6 months    Keneba           GAMBIA                         0                    0      198   1837
0-6 months    Keneba           GAMBIA                         0                    1       13   1837
0-6 months    MAL-ED           BANGLADESH                     1                    0      152    240
0-6 months    MAL-ED           BANGLADESH                     1                    1        4    240
0-6 months    MAL-ED           BANGLADESH                     0                    0       81    240
0-6 months    MAL-ED           BANGLADESH                     0                    1        3    240
0-6 months    MAL-ED           BRAZIL                         1                    0       62    195
0-6 months    MAL-ED           BRAZIL                         1                    1        1    195
0-6 months    MAL-ED           BRAZIL                         0                    0      132    195
0-6 months    MAL-ED           BRAZIL                         0                    1        0    195
0-6 months    MAL-ED           INDIA                          1                    0      107    215
0-6 months    MAL-ED           INDIA                          1                    1        5    215
0-6 months    MAL-ED           INDIA                          0                    0       90    215
0-6 months    MAL-ED           INDIA                          0                    1       13    215
0-6 months    MAL-ED           NEPAL                          1                    0       70    228
0-6 months    MAL-ED           NEPAL                          1                    1        1    228
0-6 months    MAL-ED           NEPAL                          0                    0      152    228
0-6 months    MAL-ED           NEPAL                          0                    1        5    228
0-6 months    MAL-ED           PERU                           1                    0       62    281
0-6 months    MAL-ED           PERU                           1                    1        0    281
0-6 months    MAL-ED           PERU                           0                    0      219    281
0-6 months    MAL-ED           PERU                           0                    1        0    281
0-6 months    MAL-ED           SOUTH AFRICA                   1                    0       24    263
0-6 months    MAL-ED           SOUTH AFRICA                   1                    1        0    263
0-6 months    MAL-ED           SOUTH AFRICA                   0                    0      238    263
0-6 months    MAL-ED           SOUTH AFRICA                   0                    1        1    263
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0       46    218
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0    218
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      172    218
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        0    218
0-6 months    PROVIDE          BANGLADESH                     1                    0      444    638
0-6 months    PROVIDE          BANGLADESH                     1                    1        5    638
0-6 months    PROVIDE          BANGLADESH                     0                    0      180    638
0-6 months    PROVIDE          BANGLADESH                     0                    1        9    638
6-24 months   CMC-V-BCS-2002   INDIA                          1                    0       10     10
6-24 months   CMC-V-BCS-2002   INDIA                          1                    1        0     10
6-24 months   CMC-V-BCS-2002   INDIA                          0                    0        0     10
6-24 months   CMC-V-BCS-2002   INDIA                          0                    1        0     10
6-24 months   EE               PAKISTAN                       1                    0       38     39
6-24 months   EE               PAKISTAN                       1                    1        1     39
6-24 months   EE               PAKISTAN                       0                    0        0     39
6-24 months   EE               PAKISTAN                       0                    1        0     39
6-24 months   GMS-Nepal        NEPAL                          1                    0      326    457
6-24 months   GMS-Nepal        NEPAL                          1                    1       54    457
6-24 months   GMS-Nepal        NEPAL                          0                    0       63    457
6-24 months   GMS-Nepal        NEPAL                          0                    1       14    457
6-24 months   IRC              INDIA                          1                    0        0     10
6-24 months   IRC              INDIA                          1                    1        0     10
6-24 months   IRC              INDIA                          0                    0        9     10
6-24 months   IRC              INDIA                          0                    1        1     10
6-24 months   Keneba           GAMBIA                         1                    0     1645   1950
6-24 months   Keneba           GAMBIA                         1                    1       90   1950
6-24 months   Keneba           GAMBIA                         0                    0      194   1950
6-24 months   Keneba           GAMBIA                         0                    1       21   1950
6-24 months   MAL-ED           BANGLADESH                     1                    0      148    240
6-24 months   MAL-ED           BANGLADESH                     1                    1        8    240
6-24 months   MAL-ED           BANGLADESH                     0                    0       80    240
6-24 months   MAL-ED           BANGLADESH                     0                    1        4    240
6-24 months   MAL-ED           BRAZIL                         1                    0       62    195
6-24 months   MAL-ED           BRAZIL                         1                    1        1    195
6-24 months   MAL-ED           BRAZIL                         0                    0      131    195
6-24 months   MAL-ED           BRAZIL                         0                    1        1    195
6-24 months   MAL-ED           INDIA                          1                    0      104    215
6-24 months   MAL-ED           INDIA                          1                    1        8    215
6-24 months   MAL-ED           INDIA                          0                    0       93    215
6-24 months   MAL-ED           INDIA                          0                    1       10    215
6-24 months   MAL-ED           NEPAL                          1                    0       69    228
6-24 months   MAL-ED           NEPAL                          1                    1        2    228
6-24 months   MAL-ED           NEPAL                          0                    0      155    228
6-24 months   MAL-ED           NEPAL                          0                    1        2    228
6-24 months   MAL-ED           PERU                           1                    0       62    281
6-24 months   MAL-ED           PERU                           1                    1        0    281
6-24 months   MAL-ED           PERU                           0                    0      218    281
6-24 months   MAL-ED           PERU                           0                    1        1    281
6-24 months   MAL-ED           SOUTH AFRICA                   1                    0       24    264
6-24 months   MAL-ED           SOUTH AFRICA                   1                    1        0    264
6-24 months   MAL-ED           SOUTH AFRICA                   0                    0      238    264
6-24 months   MAL-ED           SOUTH AFRICA                   0                    1        2    264
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0       46    218
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0    218
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      172    218
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        0    218
6-24 months   PROVIDE          BANGLADESH                     1                    0      443    641
6-24 months   PROVIDE          BANGLADESH                     1                    1        8    641
6-24 months   PROVIDE          BANGLADESH                     0                    0      183    641
6-24 months   PROVIDE          BANGLADESH                     0                    1        7    641
6-24 months   SAS-CompFeed     INDIA                          1                    0      355    413
6-24 months   SAS-CompFeed     INDIA                          1                    1       40    413
6-24 months   SAS-CompFeed     INDIA                          0                    0       16    413
6-24 months   SAS-CompFeed     INDIA                          0                    1        2    413


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
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/425cd9ad-6bf3-457b-9443-d3d7cdff6dae/4e84695f-df35-4d99-99e0-9307fab2ad01/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/425cd9ad-6bf3-457b-9443-d3d7cdff6dae/4e84695f-df35-4d99-99e0-9307fab2ad01/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/425cd9ad-6bf3-457b-9443-d3d7cdff6dae/4e84695f-df35-4d99-99e0-9307fab2ad01/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/425cd9ad-6bf3-457b-9443-d3d7cdff6dae/4e84695f-df35-4d99-99e0-9307fab2ad01/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.1421053   0.1069610   0.1772495
0-24 months   GMS-Nepal   NEPAL        0                    NA                0.1818182   0.0955756   0.2680608
0-24 months   Keneba      GAMBIA       1                    NA                0.0518732   0.0414353   0.0623111
0-24 months   Keneba      GAMBIA       0                    NA                0.0976744   0.0579816   0.1373673
0-24 months   MAL-ED      INDIA        1                    NA                0.0714286   0.0236212   0.1192360
0-24 months   MAL-ED      INDIA        0                    NA                0.0970874   0.0397753   0.1543994
0-24 months   PROVIDE     BANGLADESH   1                    NA                0.0177384   0.0055465   0.0299302
0-24 months   PROVIDE     BANGLADESH   0                    NA                0.0368421   0.0100362   0.0636481
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.1081794   0.0768740   0.1394848
0-6 months    GMS-Nepal   NEPAL        0                    NA                0.1351351   0.0571574   0.2131128
0-6 months    Keneba      GAMBIA       1                    NA                0.0264453   0.0186441   0.0342464
0-6 months    Keneba      GAMBIA       0                    NA                0.0616114   0.0291590   0.0940638
0-6 months    MAL-ED      INDIA        1                    NA                0.0446429   0.0063065   0.0829792
0-6 months    MAL-ED      INDIA        0                    NA                0.1262136   0.0619304   0.1904968
0-6 months    PROVIDE     BANGLADESH   1                    NA                0.0111359   0.0014219   0.0208498
0-6 months    PROVIDE     BANGLADESH   0                    NA                0.0476190   0.0172344   0.0780036
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.1421053   0.1069610   0.1772495
6-24 months   GMS-Nepal   NEPAL        0                    NA                0.1818182   0.0955756   0.2680608
6-24 months   Keneba      GAMBIA       1                    NA                0.0518732   0.0414353   0.0623111
6-24 months   Keneba      GAMBIA       0                    NA                0.0976744   0.0579816   0.1373673
6-24 months   MAL-ED      INDIA        1                    NA                0.0714286   0.0236212   0.1192360
6-24 months   MAL-ED      INDIA        0                    NA                0.0970874   0.0397753   0.1543994
6-24 months   PROVIDE     BANGLADESH   1                    NA                0.0177384   0.0055465   0.0299302
6-24 months   PROVIDE     BANGLADESH   0                    NA                0.0368421   0.0100362   0.0636481


### Parameter: E(Y)


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        NA                   NA                0.1487965   0.1161318   0.1814612
0-24 months   Keneba      GAMBIA       NA                   NA                0.0569231   0.0466368   0.0672094
0-24 months   MAL-ED      INDIA        NA                   NA                0.0837209   0.0466125   0.1208293
0-24 months   PROVIDE     BANGLADESH   NA                   NA                0.0234009   0.0116889   0.0351130
0-6 months    GMS-Nepal   NEPAL        NA                   NA                0.1125828   0.0834435   0.1417221
0-6 months    Keneba      GAMBIA       NA                   NA                0.0304845   0.0226208   0.0383482
0-6 months    MAL-ED      INDIA        NA                   NA                0.0837209   0.0466125   0.1208293
0-6 months    PROVIDE     BANGLADESH   NA                   NA                0.0219436   0.0105669   0.0333202
6-24 months   GMS-Nepal   NEPAL        NA                   NA                0.1487965   0.1161318   0.1814612
6-24 months   Keneba      GAMBIA       NA                   NA                0.0569231   0.0466368   0.0672094
6-24 months   MAL-ED      INDIA        NA                   NA                0.0837209   0.0466125   0.1208293
6-24 months   PROVIDE     BANGLADESH   NA                   NA                0.0234009   0.0116889   0.0351130


### Parameter: RR


agecat        studyid     country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ---------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000    1.000000
0-24 months   GMS-Nepal   NEPAL        0                    1                 1.279461   0.7493895    2.184473
0-24 months   Keneba      GAMBIA       1                    1                 1.000000   1.0000000    1.000000
0-24 months   Keneba      GAMBIA       0                    1                 1.882946   1.1964622    2.963307
0-24 months   MAL-ED      INDIA        1                    1                 1.000000   1.0000000    1.000000
0-24 months   MAL-ED      INDIA        0                    1                 1.359223   0.5568160    3.317950
0-24 months   PROVIDE     BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
0-24 months   PROVIDE     BANGLADESH   0                    1                 2.076974   0.7633930    5.650850
0-6 months    GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000    1.000000
0-6 months    GMS-Nepal   NEPAL        0                    1                 1.249176   0.6550468    2.382182
0-6 months    Keneba      GAMBIA       1                    1                 1.000000   1.0000000    1.000000
0-6 months    Keneba      GAMBIA       0                    1                 2.329770   1.2738728    4.260886
0-6 months    MAL-ED      INDIA        1                    1                 1.000000   1.0000000    1.000000
0-6 months    MAL-ED      INDIA        0                    1                 2.827184   1.0417139    7.672905
0-6 months    PROVIDE     BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
0-6 months    PROVIDE     BANGLADESH   0                    1                 4.276191   1.4510528   12.601750
6-24 months   GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000    1.000000
6-24 months   GMS-Nepal   NEPAL        0                    1                 1.279461   0.7493895    2.184473
6-24 months   Keneba      GAMBIA       1                    1                 1.000000   1.0000000    1.000000
6-24 months   Keneba      GAMBIA       0                    1                 1.882946   1.1964622    2.963307
6-24 months   MAL-ED      INDIA        1                    1                 1.000000   1.0000000    1.000000
6-24 months   MAL-ED      INDIA        0                    1                 1.359223   0.5568160    3.317950
6-24 months   PROVIDE     BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
6-24 months   PROVIDE     BANGLADESH   0                    1                 2.076974   0.7633930    5.650850


### Parameter: PAR


agecat        studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.0066912   -0.0090592   0.0224417
0-24 months   Keneba      GAMBIA       1                    NA                0.0050499    0.0004801   0.0096197
0-24 months   MAL-ED      INDIA        1                    NA                0.0122924   -0.0235037   0.0480884
0-24 months   PROVIDE     BANGLADESH   1                    NA                0.0056626   -0.0030924   0.0144175
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.0044034   -0.0093536   0.0181603
0-6 months    Keneba      GAMBIA       1                    NA                0.0040392    0.0001714   0.0079071
0-6 months    MAL-ED      INDIA        1                    NA                0.0390781    0.0028081   0.0753481
0-6 months    PROVIDE     BANGLADESH   1                    NA                0.0108077    0.0012697   0.0203457
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.0066912   -0.0090592   0.0224417
6-24 months   Keneba      GAMBIA       1                    NA                0.0050499    0.0004801   0.0096197
6-24 months   MAL-ED      INDIA        1                    NA                0.0122924   -0.0235037   0.0480884
6-24 months   PROVIDE     BANGLADESH   1                    NA                0.0056626   -0.0030924   0.0144175


### Parameter: PAF


agecat        studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.0449690   -0.0666291   0.1448910
0-24 months   Keneba      GAMBIA       1                    NA                0.0887141    0.0063605   0.1642422
0-24 months   MAL-ED      INDIA        1                    NA                0.1468254   -0.4013411   0.4805641
0-24 months   PROVIDE     BANGLADESH   1                    NA                0.2419808   -0.2103743   0.5252765
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.0391122   -0.0908314   0.1535765
0-6 months    Keneba      GAMBIA       1                    NA                0.1325009    0.0009876   0.2467014
0-6 months    MAL-ED      INDIA        1                    NA                0.4667659   -0.0999062   0.7414883
0-6 months    PROVIDE     BANGLADESH   1                    NA                0.4925231   -0.0191564   0.7473078
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.0449690   -0.0666291   0.1448910
6-24 months   Keneba      GAMBIA       1                    NA                0.0887141    0.0063605   0.1642422
6-24 months   MAL-ED      INDIA        1                    NA                0.1468254   -0.4013411   0.4805641
6-24 months   PROVIDE     BANGLADESH   1                    NA                0.2419808   -0.2103743   0.5252765
