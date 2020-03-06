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

**Outcome Variable:** ever_co

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

agecat        studyid          country                        exclfeed3    ever_co   n_cell      n
------------  ---------------  -----------------------------  ----------  --------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          1                  0        7     10
0-24 months   CMC-V-BCS-2002   INDIA                          1                  1        3     10
0-24 months   CMC-V-BCS-2002   INDIA                          0                  0        0     10
0-24 months   CMC-V-BCS-2002   INDIA                          0                  1        0     10
0-24 months   EE               PAKISTAN                       1                  0       17     39
0-24 months   EE               PAKISTAN                       1                  1       22     39
0-24 months   EE               PAKISTAN                       0                  0        0     39
0-24 months   EE               PAKISTAN                       0                  1        0     39
0-24 months   GMS-Nepal        NEPAL                          1                  0      247    458
0-24 months   GMS-Nepal        NEPAL                          1                  1      133    458
0-24 months   GMS-Nepal        NEPAL                          0                  0       54    458
0-24 months   GMS-Nepal        NEPAL                          0                  1       24    458
0-24 months   IRC              INDIA                          1                  0        0     10
0-24 months   IRC              INDIA                          1                  1        0     10
0-24 months   IRC              INDIA                          0                  0        9     10
0-24 months   IRC              INDIA                          0                  1        1     10
0-24 months   Keneba           GAMBIA                         1                  0     1515   2019
0-24 months   Keneba           GAMBIA                         1                  1      284   2019
0-24 months   Keneba           GAMBIA                         0                  0      163   2019
0-24 months   Keneba           GAMBIA                         0                  1       57   2019
0-24 months   MAL-ED           BANGLADESH                     1                  0      132    244
0-24 months   MAL-ED           BANGLADESH                     1                  1       27    244
0-24 months   MAL-ED           BANGLADESH                     0                  0       74    244
0-24 months   MAL-ED           BANGLADESH                     0                  1       11    244
0-24 months   MAL-ED           BRAZIL                         1                  0       62    202
0-24 months   MAL-ED           BRAZIL                         1                  1        2    202
0-24 months   MAL-ED           BRAZIL                         0                  0      137    202
0-24 months   MAL-ED           BRAZIL                         0                  1        1    202
0-24 months   MAL-ED           INDIA                          1                  0       91    216
0-24 months   MAL-ED           INDIA                          1                  1       22    216
0-24 months   MAL-ED           INDIA                          0                  0       76    216
0-24 months   MAL-ED           INDIA                          0                  1       27    216
0-24 months   MAL-ED           NEPAL                          1                  0       62    228
0-24 months   MAL-ED           NEPAL                          1                  1        9    228
0-24 months   MAL-ED           NEPAL                          0                  0      145    228
0-24 months   MAL-ED           NEPAL                          0                  1       12    228
0-24 months   MAL-ED           PERU                           1                  0       62    287
0-24 months   MAL-ED           PERU                           1                  1        2    287
0-24 months   MAL-ED           PERU                           0                  0      214    287
0-24 months   MAL-ED           PERU                           0                  1        9    287
0-24 months   MAL-ED           SOUTH AFRICA                   1                  0       25    269
0-24 months   MAL-ED           SOUTH AFRICA                   1                  1        0    269
0-24 months   MAL-ED           SOUTH AFRICA                   0                  0      223    269
0-24 months   MAL-ED           SOUTH AFRICA                   0                  1       21    269
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       46    219
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        1    219
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      154    219
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       18    219
0-24 months   PROVIDE          BANGLADESH                     1                  0      440    700
0-24 months   PROVIDE          BANGLADESH                     1                  1       63    700
0-24 months   PROVIDE          BANGLADESH                     0                  0      170    700
0-24 months   PROVIDE          BANGLADESH                     0                  1       27    700
0-24 months   SAS-CompFeed     INDIA                          1                  0      318    444
0-24 months   SAS-CompFeed     INDIA                          1                  1      104    444
0-24 months   SAS-CompFeed     INDIA                          0                  0       15    444
0-24 months   SAS-CompFeed     INDIA                          0                  1        7    444
0-6 months    CMC-V-BCS-2002   INDIA                          1                  0        9     10
0-6 months    CMC-V-BCS-2002   INDIA                          1                  1        1     10
0-6 months    CMC-V-BCS-2002   INDIA                          0                  0        0     10
0-6 months    CMC-V-BCS-2002   INDIA                          0                  1        0     10
0-6 months    EE               PAKISTAN                       1                  0       32     39
0-6 months    EE               PAKISTAN                       1                  1        7     39
0-6 months    EE               PAKISTAN                       0                  0        0     39
0-6 months    EE               PAKISTAN                       0                  1        0     39
0-6 months    GMS-Nepal        NEPAL                          1                  0      363    458
0-6 months    GMS-Nepal        NEPAL                          1                  1       17    458
0-6 months    GMS-Nepal        NEPAL                          0                  0       71    458
0-6 months    GMS-Nepal        NEPAL                          0                  1        7    458
0-6 months    IRC              INDIA                          1                  0        0     10
0-6 months    IRC              INDIA                          1                  1        0     10
0-6 months    IRC              INDIA                          0                  0        9     10
0-6 months    IRC              INDIA                          0                  1        1     10
0-6 months    Keneba           GAMBIA                         1                  0     1754   2019
0-6 months    Keneba           GAMBIA                         1                  1       45   2019
0-6 months    Keneba           GAMBIA                         0                  0      201   2019
0-6 months    Keneba           GAMBIA                         0                  1       19   2019
0-6 months    MAL-ED           BANGLADESH                     1                  0      154    244
0-6 months    MAL-ED           BANGLADESH                     1                  1        5    244
0-6 months    MAL-ED           BANGLADESH                     0                  0       81    244
0-6 months    MAL-ED           BANGLADESH                     0                  1        4    244
0-6 months    MAL-ED           BRAZIL                         1                  0       63    202
0-6 months    MAL-ED           BRAZIL                         1                  1        1    202
0-6 months    MAL-ED           BRAZIL                         0                  0      138    202
0-6 months    MAL-ED           BRAZIL                         0                  1        0    202
0-6 months    MAL-ED           INDIA                          1                  0      108    216
0-6 months    MAL-ED           INDIA                          1                  1        5    216
0-6 months    MAL-ED           INDIA                          0                  0       92    216
0-6 months    MAL-ED           INDIA                          0                  1       11    216
0-6 months    MAL-ED           NEPAL                          1                  0       69    228
0-6 months    MAL-ED           NEPAL                          1                  1        2    228
0-6 months    MAL-ED           NEPAL                          0                  0      152    228
0-6 months    MAL-ED           NEPAL                          0                  1        5    228
0-6 months    MAL-ED           PERU                           1                  0       64    287
0-6 months    MAL-ED           PERU                           1                  1        0    287
0-6 months    MAL-ED           PERU                           0                  0      221    287
0-6 months    MAL-ED           PERU                           0                  1        2    287
0-6 months    MAL-ED           SOUTH AFRICA                   1                  0       25    269
0-6 months    MAL-ED           SOUTH AFRICA                   1                  1        0    269
0-6 months    MAL-ED           SOUTH AFRICA                   0                  0      240    269
0-6 months    MAL-ED           SOUTH AFRICA                   0                  1        4    269
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       47    219
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0    219
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      169    219
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1        3    219
0-6 months    PROVIDE          BANGLADESH                     1                  0      486    700
0-6 months    PROVIDE          BANGLADESH                     1                  1       17    700
0-6 months    PROVIDE          BANGLADESH                     0                  0      184    700
0-6 months    PROVIDE          BANGLADESH                     0                  1       13    700
0-6 months    SAS-CompFeed     INDIA                          1                  0      394    444
0-6 months    SAS-CompFeed     INDIA                          1                  1       28    444
0-6 months    SAS-CompFeed     INDIA                          0                  0       20    444
0-6 months    SAS-CompFeed     INDIA                          0                  1        2    444
6-24 months   CMC-V-BCS-2002   INDIA                          1                  0        8     10
6-24 months   CMC-V-BCS-2002   INDIA                          1                  1        2     10
6-24 months   CMC-V-BCS-2002   INDIA                          0                  0        0     10
6-24 months   CMC-V-BCS-2002   INDIA                          0                  1        0     10
6-24 months   EE               PAKISTAN                       1                  0       20     38
6-24 months   EE               PAKISTAN                       1                  1       18     38
6-24 months   EE               PAKISTAN                       0                  0        0     38
6-24 months   EE               PAKISTAN                       0                  1        0     38
6-24 months   GMS-Nepal        NEPAL                          1                  0      244    451
6-24 months   GMS-Nepal        NEPAL                          1                  1      131    451
6-24 months   GMS-Nepal        NEPAL                          0                  0       55    451
6-24 months   GMS-Nepal        NEPAL                          0                  1       21    451
6-24 months   IRC              INDIA                          1                  0        0     10
6-24 months   IRC              INDIA                          1                  1        0     10
6-24 months   IRC              INDIA                          0                  0       10     10
6-24 months   IRC              INDIA                          0                  1        0     10
6-24 months   Keneba           GAMBIA                         1                  0     1436   1910
6-24 months   Keneba           GAMBIA                         1                  1      264   1910
6-24 months   Keneba           GAMBIA                         0                  0      158   1910
6-24 months   Keneba           GAMBIA                         0                  1       52   1910
6-24 months   MAL-ED           BANGLADESH                     1                  0      127    231
6-24 months   MAL-ED           BANGLADESH                     1                  1       24    231
6-24 months   MAL-ED           BANGLADESH                     0                  0       70    231
6-24 months   MAL-ED           BANGLADESH                     0                  1       10    231
6-24 months   MAL-ED           BRAZIL                         1                  0       59    185
6-24 months   MAL-ED           BRAZIL                         1                  1        1    185
6-24 months   MAL-ED           BRAZIL                         0                  0      124    185
6-24 months   MAL-ED           BRAZIL                         0                  1        1    185
6-24 months   MAL-ED           INDIA                          1                  0       90    209
6-24 months   MAL-ED           INDIA                          1                  1       19    209
6-24 months   MAL-ED           INDIA                          0                  0       76    209
6-24 months   MAL-ED           INDIA                          0                  1       24    209
6-24 months   MAL-ED           NEPAL                          1                  0       62    226
6-24 months   MAL-ED           NEPAL                          1                  1        8    226
6-24 months   MAL-ED           NEPAL                          0                  0      148    226
6-24 months   MAL-ED           NEPAL                          0                  1        8    226
6-24 months   MAL-ED           PERU                           1                  0       59    267
6-24 months   MAL-ED           PERU                           1                  1        2    267
6-24 months   MAL-ED           PERU                           0                  0      198    267
6-24 months   MAL-ED           PERU                           0                  1        8    267
6-24 months   MAL-ED           SOUTH AFRICA                   1                  0       23    248
6-24 months   MAL-ED           SOUTH AFRICA                   1                  1        0    248
6-24 months   MAL-ED           SOUTH AFRICA                   0                  0      206    248
6-24 months   MAL-ED           SOUTH AFRICA                   0                  1       19    248
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       45    210
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        1    210
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      148    210
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       16    210
6-24 months   PROVIDE          BANGLADESH                     1                  0      380    614
6-24 months   PROVIDE          BANGLADESH                     1                  1       55    614
6-24 months   PROVIDE          BANGLADESH                     0                  0      159    614
6-24 months   PROVIDE          BANGLADESH                     0                  1       20    614
6-24 months   SAS-CompFeed     INDIA                          1                  0      298    417
6-24 months   SAS-CompFeed     INDIA                          1                  1      100    417
6-24 months   SAS-CompFeed     INDIA                          0                  0       12    417
6-24 months   SAS-CompFeed     INDIA                          0                  1        7    417


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
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
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
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/18b2d996-2703-427a-a438-2a335cbd0b16/dfbf0f2c-bf04-49cb-aefc-f317934e6c74/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/18b2d996-2703-427a-a438-2a335cbd0b16/dfbf0f2c-bf04-49cb-aefc-f317934e6c74/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/18b2d996-2703-427a-a438-2a335cbd0b16/dfbf0f2c-bf04-49cb-aefc-f317934e6c74/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/18b2d996-2703-427a-a438-2a335cbd0b16/dfbf0f2c-bf04-49cb-aefc-f317934e6c74/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                0.3500000   0.3019911   0.3980089
0-24 months   GMS-Nepal      NEPAL        0                    NA                0.3076923   0.2051547   0.4102299
0-24 months   Keneba         GAMBIA       1                    NA                0.1578655   0.1410126   0.1747184
0-24 months   Keneba         GAMBIA       0                    NA                0.2590909   0.2011810   0.3170008
0-24 months   MAL-ED         BANGLADESH   1                    NA                0.1698113   0.1113306   0.2282921
0-24 months   MAL-ED         BANGLADESH   0                    NA                0.1294118   0.0579089   0.2009147
0-24 months   MAL-ED         INDIA        1                    NA                0.1946903   0.1215140   0.2678665
0-24 months   MAL-ED         INDIA        0                    NA                0.2621359   0.1770048   0.3472671
0-24 months   MAL-ED         NEPAL        1                    NA                0.1267606   0.0492016   0.2043196
0-24 months   MAL-ED         NEPAL        0                    NA                0.0764331   0.0347819   0.1180843
0-24 months   PROVIDE        BANGLADESH   1                    NA                0.1252485   0.0963015   0.1541955
0-24 months   PROVIDE        BANGLADESH   0                    NA                0.1370558   0.0889979   0.1851138
0-24 months   SAS-CompFeed   INDIA        1                    NA                0.2464455   0.2022875   0.2906035
0-24 months   SAS-CompFeed   INDIA        0                    NA                0.3181818   0.1124254   0.5239382
0-6 months    GMS-Nepal      NEPAL        1                    NA                0.0447368   0.0239291   0.0655446
0-6 months    GMS-Nepal      NEPAL        0                    NA                0.0897436   0.0262457   0.1532414
0-6 months    Keneba         GAMBIA       1                    NA                0.0250139   0.0177957   0.0322321
0-6 months    Keneba         GAMBIA       0                    NA                0.0863636   0.0492361   0.1234912
0-6 months    MAL-ED         INDIA        1                    NA                0.0442478   0.0062433   0.0822523
0-6 months    MAL-ED         INDIA        0                    NA                0.1067961   0.0470114   0.1665808
0-6 months    PROVIDE        BANGLADESH   1                    NA                0.0337972   0.0179939   0.0496006
0-6 months    PROVIDE        BANGLADESH   0                    NA                0.0659898   0.0312970   0.1006827
6-24 months   GMS-Nepal      NEPAL        1                    NA                0.3493333   0.3010259   0.3976407
6-24 months   GMS-Nepal      NEPAL        0                    NA                0.2763158   0.1756688   0.3769628
6-24 months   Keneba         GAMBIA       1                    NA                0.1552941   0.1380728   0.1725155
6-24 months   Keneba         GAMBIA       0                    NA                0.2476190   0.1892257   0.3060124
6-24 months   MAL-ED         BANGLADESH   1                    NA                0.1589404   0.1004974   0.2173834
6-24 months   MAL-ED         BANGLADESH   0                    NA                0.1250000   0.0523720   0.1976280
6-24 months   MAL-ED         INDIA        1                    NA                0.1743119   0.1029202   0.2457037
6-24 months   MAL-ED         INDIA        0                    NA                0.2400000   0.1560923   0.3239077
6-24 months   MAL-ED         NEPAL        1                    NA                0.1142857   0.0395884   0.1889830
6-24 months   MAL-ED         NEPAL        0                    NA                0.0512821   0.0165924   0.0859717
6-24 months   PROVIDE        BANGLADESH   1                    NA                0.1264368   0.0951802   0.1576934
6-24 months   PROVIDE        BANGLADESH   0                    NA                0.1117318   0.0655431   0.1579206
6-24 months   SAS-CompFeed   INDIA        1                    NA                0.2512563   0.2120897   0.2904228
6-24 months   SAS-CompFeed   INDIA        0                    NA                0.3684211   0.0727072   0.6641349


### Parameter: E(Y)


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal      NEPAL        NA                   NA                0.3427948   0.2992779   0.3863116
0-24 months   Keneba         GAMBIA       NA                   NA                0.1688955   0.1525490   0.1852420
0-24 months   MAL-ED         BANGLADESH   NA                   NA                0.1557377   0.1101466   0.2013289
0-24 months   MAL-ED         INDIA        NA                   NA                0.2268519   0.1708720   0.2828317
0-24 months   MAL-ED         NEPAL        NA                   NA                0.0921053   0.0544873   0.1297232
0-24 months   PROVIDE        BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   SAS-CompFeed   INDIA        NA                   NA                0.2500000   0.2118239   0.2881761
0-6 months    GMS-Nepal      NEPAL        NA                   NA                0.0524017   0.0319714   0.0728321
0-6 months    Keneba         GAMBIA       NA                   NA                0.0316989   0.0240550   0.0393428
0-6 months    MAL-ED         INDIA        NA                   NA                0.0740741   0.0390675   0.1090807
0-6 months    PROVIDE        BANGLADESH   NA                   NA                0.0428571   0.0278427   0.0578716
6-24 months   GMS-Nepal      NEPAL        NA                   NA                0.3370288   0.2933549   0.3807028
6-24 months   Keneba         GAMBIA       NA                   NA                0.1654450   0.1487764   0.1821136
6-24 months   MAL-ED         BANGLADESH   NA                   NA                0.1471861   0.1013989   0.1929734
6-24 months   MAL-ED         INDIA        NA                   NA                0.2057416   0.1508055   0.2606778
6-24 months   MAL-ED         NEPAL        NA                   NA                0.0707965   0.0372831   0.1043098
6-24 months   PROVIDE        BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   SAS-CompFeed   INDIA        NA                   NA                0.2565947   0.2209578   0.2922316


### Parameter: RR


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal      NEPAL        0                    1                 0.8791209   0.6131129   1.260540
0-24 months   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   Keneba         GAMBIA       0                    1                 1.6412132   1.2811242   2.102513
0-24 months   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED         BANGLADESH   0                    1                 0.7620915   0.3974239   1.461370
0-24 months   MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED         INDIA        0                    1                 1.3464254   0.8193242   2.212630
0-24 months   MAL-ED         NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED         NEPAL        0                    1                 0.6029724   0.2657429   1.368149
0-24 months   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   PROVIDE        BANGLADESH   0                    1                 1.0942712   0.7190158   1.665373
0-24 months   SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed   INDIA        0                    1                 1.2910839   0.6050646   2.754908
0-6 months    GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal      NEPAL        0                    1                 2.0060332   0.8602153   4.678096
0-6 months    Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    Keneba         GAMBIA       0                    1                 3.4526263   2.0572432   5.794467
0-6 months    MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    MAL-ED         INDIA        0                    1                 2.4135922   0.8657918   6.728440
0-6 months    PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    PROVIDE        BANGLADESH   0                    1                 1.9525231   0.9661222   3.946030
6-24 months   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal      NEPAL        0                    1                 0.7909803   0.5357462   1.167810
6-24 months   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   Keneba         GAMBIA       0                    1                 1.5945166   1.2287264   2.069202
6-24 months   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED         BANGLADESH   0                    1                 0.7864583   0.3954162   1.564217
6-24 months   MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED         INDIA        0                    1                 1.3768421   0.8035637   2.359109
6-24 months   MAL-ED         NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED         NEPAL        0                    1                 0.4487179   0.1751721   1.149429
6-24 months   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   PROVIDE        BANGLADESH   0                    1                 0.8836973   0.5459060   1.430505
6-24 months   SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed   INDIA        0                    1                 1.4663158   0.6118309   3.514177


### Parameter: PAR


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                -0.0072052   -0.0265423   0.0121319
0-24 months   Keneba         GAMBIA       1                    NA                 0.0110300    0.0043156   0.0177445
0-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0140736   -0.0463434   0.0181962
0-24 months   MAL-ED         INDIA        1                    NA                 0.0321616   -0.0215584   0.0858815
0-24 months   MAL-ED         NEPAL        1                    NA                -0.0346553   -0.0953519   0.0260413
0-24 months   PROVIDE        BANGLADESH   1                    NA                 0.0033229   -0.0124708   0.0191167
0-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0035545   -0.0086130   0.0157220
0-6 months    GMS-Nepal      NEPAL        1                    NA                 0.0076649   -0.0038202   0.0191500
0-6 months    Keneba         GAMBIA       1                    NA                 0.0066850    0.0024801   0.0108899
0-6 months    MAL-ED         INDIA        1                    NA                 0.0298263   -0.0042119   0.0638644
0-6 months    PROVIDE        BANGLADESH   1                    NA                 0.0090599   -0.0017224   0.0198423
6-24 months   GMS-Nepal      NEPAL        1                    NA                -0.0123045   -0.0312861   0.0066771
6-24 months   Keneba         GAMBIA       1                    NA                 0.0101509    0.0033331   0.0169687
6-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0117543   -0.0441064   0.0205979
6-24 months   MAL-ED         INDIA        1                    NA                 0.0314297   -0.0214712   0.0843306
6-24 months   MAL-ED         NEPAL        1                    NA                -0.0434893   -0.1004663   0.0134878
6-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0042869   -0.0205544   0.0119805
6-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0053384   -0.0095993   0.0202761


### Parameter: PAF


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                -0.0210191   -0.0790210    0.0338649
0-24 months   Keneba         GAMBIA       1                    NA                 0.0653067    0.0250204    0.1039284
0-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0903674   -0.3173471    0.0975035
0-24 months   MAL-ED         INDIA        1                    NA                 0.1417735   -0.1292336    0.3477411
0-24 months   MAL-ED         NEPAL        1                    NA                -0.3762575   -1.2005759    0.1392776
0-24 months   PROVIDE        BANGLADESH   1                    NA                 0.0258449   -0.1049947    0.1411922
0-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0142180   -0.0365627    0.0625110
0-6 months    GMS-Nepal      NEPAL        1                    NA                 0.1462719   -0.0948184    0.3342717
0-6 months    Keneba         GAMBIA       1                    NA                 0.2108897    0.0777151    0.3248345
0-6 months    MAL-ED         INDIA        1                    NA                 0.4026549   -0.2114697    0.7054642
0-6 months    PROVIDE        BANGLADESH   1                    NA                 0.2113983   -0.0708157    0.4192346
6-24 months   GMS-Nepal      NEPAL        1                    NA                -0.0365088   -0.0943988    0.0183191
6-24 months   Keneba         GAMBIA       1                    NA                 0.0613552    0.0195334    0.1013931
6-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0798598   -0.3225520    0.1182977
6-24 months   MAL-ED         INDIA        1                    NA                 0.1527630   -0.1451768    0.3731880
6-24 months   MAL-ED         NEPAL        1                    NA                -0.6142857   -1.5915829   -0.0055315
6-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0350958   -0.1770505    0.0897389
6-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0208050   -0.0393691    0.0774953
