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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** predfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid     country                        predfeed3    n_cell     n
-------------  ----------  -----------------------------  ----------  -------  ----
0-3 months     EE          PAKISTAN                       1                31    31
0-3 months     EE          PAKISTAN                       0                 0    31
0-3 months     GMS-Nepal   NEPAL                          1               378   456
0-3 months     GMS-Nepal   NEPAL                          0                78   456
0-3 months     MAL-ED      BANGLADESH                     1               193   237
0-3 months     MAL-ED      BANGLADESH                     0                44   237
0-3 months     MAL-ED      BRAZIL                         1                73   147
0-3 months     MAL-ED      BRAZIL                         0                74   147
0-3 months     MAL-ED      INDIA                          1               113   164
0-3 months     MAL-ED      INDIA                          0                51   164
0-3 months     MAL-ED      NEPAL                          1                81   153
0-3 months     MAL-ED      NEPAL                          0                72   153
0-3 months     MAL-ED      PERU                           1               168   262
0-3 months     MAL-ED      PERU                           0                94   262
0-3 months     MAL-ED      SOUTH AFRICA                   1                58   203
0-3 months     MAL-ED      SOUTH AFRICA                   0               145   203
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                57   197
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               140   197
3-6 months     EE          PAKISTAN                       1                31    31
3-6 months     EE          PAKISTAN                       0                 0    31
3-6 months     GMS-Nepal   NEPAL                          1               350   420
3-6 months     GMS-Nepal   NEPAL                          0                70   420
3-6 months     MAL-ED      BANGLADESH                     1               184   225
3-6 months     MAL-ED      BANGLADESH                     0                41   225
3-6 months     MAL-ED      BRAZIL                         1                93   186
3-6 months     MAL-ED      BRAZIL                         0                93   186
3-6 months     MAL-ED      INDIA                          1               146   206
3-6 months     MAL-ED      INDIA                          0                60   206
3-6 months     MAL-ED      NEPAL                          1               112   226
3-6 months     MAL-ED      NEPAL                          0               114   226
3-6 months     MAL-ED      PERU                           1               174   264
3-6 months     MAL-ED      PERU                           0                90   264
3-6 months     MAL-ED      SOUTH AFRICA                   1                63   234
3-6 months     MAL-ED      SOUTH AFRICA                   0               171   234
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                63   208
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               145   208
6-9 months     EE          PAKISTAN                       1                36    36
6-9 months     EE          PAKISTAN                       0                 0    36
6-9 months     GMS-Nepal   NEPAL                          1               314   378
6-9 months     GMS-Nepal   NEPAL                          0                64   378
6-9 months     MAL-ED      BANGLADESH                     1               177   217
6-9 months     MAL-ED      BANGLADESH                     0                40   217
6-9 months     MAL-ED      BRAZIL                         1                90   177
6-9 months     MAL-ED      BRAZIL                         0                87   177
6-9 months     MAL-ED      INDIA                          1               143   205
6-9 months     MAL-ED      INDIA                          0                62   205
6-9 months     MAL-ED      NEPAL                          1               110   222
6-9 months     MAL-ED      NEPAL                          0               112   222
6-9 months     MAL-ED      PERU                           1               160   242
6-9 months     MAL-ED      PERU                           0                82   242
6-9 months     MAL-ED      SOUTH AFRICA                   1                62   222
6-9 months     MAL-ED      SOUTH AFRICA                   0               160   222
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                59   193
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               134   193
9-12 months    EE          PAKISTAN                       1                36    36
9-12 months    EE          PAKISTAN                       0                 0    36
9-12 months    GMS-Nepal   NEPAL                          1               302   362
9-12 months    GMS-Nepal   NEPAL                          0                60   362
9-12 months    MAL-ED      BANGLADESH                     1               179   218
9-12 months    MAL-ED      BANGLADESH                     0                39   218
9-12 months    MAL-ED      BRAZIL                         1                89   175
9-12 months    MAL-ED      BRAZIL                         0                86   175
9-12 months    MAL-ED      INDIA                          1               139   201
9-12 months    MAL-ED      INDIA                          0                62   201
9-12 months    MAL-ED      NEPAL                          1               109   221
9-12 months    MAL-ED      NEPAL                          0               112   221
9-12 months    MAL-ED      PERU                           1               155   233
9-12 months    MAL-ED      PERU                           0                78   233
9-12 months    MAL-ED      SOUTH AFRICA                   1                63   223
9-12 months    MAL-ED      SOUTH AFRICA                   0               160   223
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                56   192
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               136   192
12-15 months   EE          PAKISTAN                       1                29    29
12-15 months   EE          PAKISTAN                       0                 0    29
12-15 months   GMS-Nepal   NEPAL                          1               313   371
12-15 months   GMS-Nepal   NEPAL                          0                58   371
12-15 months   MAL-ED      BANGLADESH                     1               168   206
12-15 months   MAL-ED      BANGLADESH                     0                38   206
12-15 months   MAL-ED      BRAZIL                         1                86   165
12-15 months   MAL-ED      BRAZIL                         0                79   165
12-15 months   MAL-ED      INDIA                          1               138   200
12-15 months   MAL-ED      INDIA                          0                62   200
12-15 months   MAL-ED      NEPAL                          1               110   222
12-15 months   MAL-ED      NEPAL                          0               112   222
12-15 months   MAL-ED      PERU                           1               148   222
12-15 months   MAL-ED      PERU                           0                74   222
12-15 months   MAL-ED      SOUTH AFRICA                   1                60   219
12-15 months   MAL-ED      SOUTH AFRICA                   0               159   219
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                57   195
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               138   195
15-18 months   EE          PAKISTAN                       1                25    25
15-18 months   EE          PAKISTAN                       0                 0    25
15-18 months   GMS-Nepal   NEPAL                          1               319   379
15-18 months   GMS-Nepal   NEPAL                          0                60   379
15-18 months   MAL-ED      BANGLADESH                     1               168   206
15-18 months   MAL-ED      BANGLADESH                     0                38   206
15-18 months   MAL-ED      BRAZIL                         1                82   157
15-18 months   MAL-ED      BRAZIL                         0                75   157
15-18 months   MAL-ED      INDIA                          1               138   201
15-18 months   MAL-ED      INDIA                          0                63   201
15-18 months   MAL-ED      NEPAL                          1               108   219
15-18 months   MAL-ED      NEPAL                          0               111   219
15-18 months   MAL-ED      PERU                           1               141   210
15-18 months   MAL-ED      PERU                           0                69   210
15-18 months   MAL-ED      SOUTH AFRICA                   1                60   218
15-18 months   MAL-ED      SOUTH AFRICA                   0               158   218
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                55   188
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               133   188
18-21 months   EE          PAKISTAN                       1                26    26
18-21 months   EE          PAKISTAN                       0                 0    26
18-21 months   GMS-Nepal   NEPAL                          1               295   347
18-21 months   GMS-Nepal   NEPAL                          0                52   347
18-21 months   MAL-ED      BANGLADESH                     1               166   203
18-21 months   MAL-ED      BANGLADESH                     0                37   203
18-21 months   MAL-ED      BRAZIL                         1                79   150
18-21 months   MAL-ED      BRAZIL                         0                71   150
18-21 months   MAL-ED      INDIA                          1               138   201
18-21 months   MAL-ED      INDIA                          0                63   201
18-21 months   MAL-ED      NEPAL                          1               108   219
18-21 months   MAL-ED      NEPAL                          0               111   219
18-21 months   MAL-ED      PERU                           1               133   199
18-21 months   MAL-ED      PERU                           0                66   199
18-21 months   MAL-ED      SOUTH AFRICA                   1                60   225
18-21 months   MAL-ED      SOUTH AFRICA                   0               165   225
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                52   176
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               124   176
21-24 months   EE          PAKISTAN                       1                16    16
21-24 months   EE          PAKISTAN                       0                 0    16
21-24 months   GMS-Nepal   NEPAL                          1               237   279
21-24 months   GMS-Nepal   NEPAL                          0                42   279
21-24 months   MAL-ED      BANGLADESH                     1               164   201
21-24 months   MAL-ED      BANGLADESH                     0                37   201
21-24 months   MAL-ED      BRAZIL                         1                77   149
21-24 months   MAL-ED      BRAZIL                         0                72   149
21-24 months   MAL-ED      INDIA                          1               138   201
21-24 months   MAL-ED      INDIA                          0                63   201
21-24 months   MAL-ED      NEPAL                          1               109   219
21-24 months   MAL-ED      NEPAL                          0               110   219
21-24 months   MAL-ED      PERU                           1               125   187
21-24 months   MAL-ED      PERU                           0                62   187
21-24 months   MAL-ED      SOUTH AFRICA                   1                59   226
21-24 months   MAL-ED      SOUTH AFRICA                   0               167   226
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                53   175
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               122   175


The following strata were considered:

* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: EE, country: PAKISTAN

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/e1643aae-10a5-46ce-9f91-f4b3982e53e5/729645ea-e5c8-4a62-87f3-db20cdd9f3f5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e1643aae-10a5-46ce-9f91-f4b3982e53e5/729645ea-e5c8-4a62-87f3-db20cdd9f3f5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e1643aae-10a5-46ce-9f91-f4b3982e53e5/729645ea-e5c8-4a62-87f3-db20cdd9f3f5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal   NEPAL                          1                    NA                3.5854097   3.5267502   3.6440691
0-3 months     GMS-Nepal   NEPAL                          0                    NA                3.5730108   3.4337806   3.7122411
0-3 months     MAL-ED      BANGLADESH                     1                    NA                3.3702323   3.2974462   3.4430185
0-3 months     MAL-ED      BANGLADESH                     0                    NA                3.1535804   2.9984549   3.3087058
0-3 months     MAL-ED      BRAZIL                         1                    NA                3.8983669   3.7423853   4.0543486
0-3 months     MAL-ED      BRAZIL                         0                    NA                3.7691295   3.5986269   3.9396321
0-3 months     MAL-ED      INDIA                          1                    NA                3.3919898   3.2596614   3.5243182
0-3 months     MAL-ED      INDIA                          0                    NA                3.2830940   3.1047557   3.4614323
0-3 months     MAL-ED      NEPAL                          1                    NA                3.4999584   3.3813905   3.6185263
0-3 months     MAL-ED      NEPAL                          0                    NA                3.7442369   3.6041572   3.8843166
0-3 months     MAL-ED      PERU                           1                    NA                3.0879346   3.0092929   3.1665763
0-3 months     MAL-ED      PERU                           0                    NA                2.9862796   2.8635170   3.1090423
0-3 months     MAL-ED      SOUTH AFRICA                   1                    NA                3.1019110   2.9561570   3.2476649
0-3 months     MAL-ED      SOUTH AFRICA                   0                    NA                3.2342070   3.1093130   3.3591010
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                3.4481188   3.2993201   3.5969175
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                3.1637155   3.0667577   3.2606734
3-6 months     GMS-Nepal   NEPAL                          1                    NA                1.7251375   1.6796800   1.7705949
3-6 months     GMS-Nepal   NEPAL                          0                    NA                1.6795957   1.5808179   1.7783735
3-6 months     MAL-ED      BANGLADESH                     1                    NA                1.9215515   1.8661384   1.9769647
3-6 months     MAL-ED      BANGLADESH                     0                    NA                2.0009626   1.8920881   2.1098372
3-6 months     MAL-ED      BRAZIL                         1                    NA                2.0301190   1.9190066   2.1412315
3-6 months     MAL-ED      BRAZIL                         0                    NA                2.2918926   2.1711413   2.4126440
3-6 months     MAL-ED      INDIA                          1                    NA                1.8890888   1.8084263   1.9697513
3-6 months     MAL-ED      INDIA                          0                    NA                1.8489771   1.7216282   1.9763260
3-6 months     MAL-ED      NEPAL                          1                    NA                1.8770027   1.8034500   1.9505554
3-6 months     MAL-ED      NEPAL                          0                    NA                2.0425098   1.9589345   2.1260851
3-6 months     MAL-ED      PERU                           1                    NA                1.9874581   1.9073345   2.0675818
3-6 months     MAL-ED      PERU                           0                    NA                2.0673450   1.9488182   2.1858717
3-6 months     MAL-ED      SOUTH AFRICA                   1                    NA                1.9336527   1.7788247   2.0884807
3-6 months     MAL-ED      SOUTH AFRICA                   0                    NA                1.9797334   1.8821723   2.0772944
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7537240   1.6206704   1.8867777
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8752014   1.7928068   1.9575960
6-9 months     GMS-Nepal   NEPAL                          1                    NA                1.3168430   1.2614480   1.3722379
6-9 months     GMS-Nepal   NEPAL                          0                    NA                1.3054642   1.2196621   1.3912664
6-9 months     MAL-ED      BANGLADESH                     1                    NA                1.2449341   1.2001991   1.2896690
6-9 months     MAL-ED      BANGLADESH                     0                    NA                1.2327878   1.1369267   1.3286489
6-9 months     MAL-ED      BRAZIL                         1                    NA                1.5029318   1.3723351   1.6335284
6-9 months     MAL-ED      BRAZIL                         0                    NA                1.4549784   1.3437758   1.5661810
6-9 months     MAL-ED      INDIA                          1                    NA                1.2320236   1.1671747   1.2968725
6-9 months     MAL-ED      INDIA                          0                    NA                1.2620141   1.1646864   1.3593418
6-9 months     MAL-ED      NEPAL                          1                    NA                1.3364141   1.2741683   1.3986598
6-9 months     MAL-ED      NEPAL                          0                    NA                1.3819710   1.3176030   1.4463390
6-9 months     MAL-ED      PERU                           1                    NA                1.3135897   1.2477045   1.3794750
6-9 months     MAL-ED      PERU                           0                    NA                1.3270904   1.2291566   1.4250242
6-9 months     MAL-ED      SOUTH AFRICA                   1                    NA                1.3648120   1.2371315   1.4924926
6-9 months     MAL-ED      SOUTH AFRICA                   0                    NA                1.3950776   1.3177380   1.4724173
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2722235   1.1016547   1.4427923
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1484299   1.0676680   1.2291918
9-12 months    GMS-Nepal   NEPAL                          1                    NA                0.9814453   0.9365108   1.0263799
9-12 months    GMS-Nepal   NEPAL                          0                    NA                1.0822767   1.0128175   1.1517359
9-12 months    MAL-ED      BANGLADESH                     1                    NA                0.9910893   0.9462911   1.0358875
9-12 months    MAL-ED      BANGLADESH                     0                    NA                1.0002064   0.9237096   1.0767033
9-12 months    MAL-ED      BRAZIL                         1                    NA                1.2894139   1.1844273   1.3944005
9-12 months    MAL-ED      BRAZIL                         0                    NA                1.2848061   1.1631232   1.4064890
9-12 months    MAL-ED      INDIA                          1                    NA                0.9202161   0.8730169   0.9674154
9-12 months    MAL-ED      INDIA                          0                    NA                1.0701264   1.0069863   1.1332664
9-12 months    MAL-ED      NEPAL                          1                    NA                1.0804427   1.0194827   1.1414026
9-12 months    MAL-ED      NEPAL                          0                    NA                1.0920555   1.0343901   1.1497209
9-12 months    MAL-ED      PERU                           1                    NA                1.1293598   1.0650777   1.1936419
9-12 months    MAL-ED      PERU                           0                    NA                1.0406280   0.9577906   1.1234654
9-12 months    MAL-ED      SOUTH AFRICA                   1                    NA                0.9764508   0.8353532   1.1175484
9-12 months    MAL-ED      SOUTH AFRICA                   0                    NA                1.0057088   0.9336720   1.0777457
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7021497   0.5226951   0.8816044
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8594575   0.7650285   0.9538865
12-15 months   GMS-Nepal   NEPAL                          1                    NA                0.8744126   0.8441716   0.9046536
12-15 months   GMS-Nepal   NEPAL                          0                    NA                0.8482484   0.7675866   0.9289101
12-15 months   MAL-ED      BANGLADESH                     1                    NA                0.8945714   0.8513678   0.9377751
12-15 months   MAL-ED      BANGLADESH                     0                    NA                1.0151918   0.9049578   1.1254259
12-15 months   MAL-ED      BRAZIL                         1                    NA                1.1434436   1.0659322   1.2209549
12-15 months   MAL-ED      BRAZIL                         0                    NA                1.1529538   1.0605248   1.2453828
12-15 months   MAL-ED      INDIA                          1                    NA                0.8953551   0.8426846   0.9480256
12-15 months   MAL-ED      INDIA                          0                    NA                0.9192045   0.8504099   0.9879990
12-15 months   MAL-ED      NEPAL                          1                    NA                0.9516332   0.8951438   1.0081226
12-15 months   MAL-ED      NEPAL                          0                    NA                0.9505372   0.8931947   1.0078796
12-15 months   MAL-ED      PERU                           1                    NA                0.8861177   0.8318669   0.9403686
12-15 months   MAL-ED      PERU                           0                    NA                0.8975618   0.8107200   0.9844036
12-15 months   MAL-ED      SOUTH AFRICA                   1                    NA                0.8827281   0.7640641   1.0013922
12-15 months   MAL-ED      SOUTH AFRICA                   0                    NA                0.9341037   0.8658259   1.0023815
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8129118   0.6974522   0.9283714
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8798816   0.7945677   0.9651954
15-18 months   GMS-Nepal   NEPAL                          1                    NA                0.7857707   0.7436395   0.8279020
15-18 months   GMS-Nepal   NEPAL                          0                    NA                0.6955459   0.6386142   0.7524777
15-18 months   MAL-ED      BANGLADESH                     1                    NA                0.8351778   0.7931136   0.8772420
15-18 months   MAL-ED      BANGLADESH                     0                    NA                0.7689309   0.6897303   0.8481314
15-18 months   MAL-ED      BRAZIL                         1                    NA                0.9474749   0.8589836   1.0359663
15-18 months   MAL-ED      BRAZIL                         0                    NA                1.0195137   0.9352175   1.1038100
15-18 months   MAL-ED      INDIA                          1                    NA                0.8269251   0.7822352   0.8716149
15-18 months   MAL-ED      INDIA                          0                    NA                0.9084604   0.8370530   0.9798679
15-18 months   MAL-ED      NEPAL                          1                    NA                0.8213037   0.7592941   0.8833134
15-18 months   MAL-ED      NEPAL                          0                    NA                0.8541801   0.7954203   0.9129400
15-18 months   MAL-ED      PERU                           1                    NA                0.8461823   0.7981952   0.8941694
15-18 months   MAL-ED      PERU                           0                    NA                0.8651649   0.7813260   0.9490038
15-18 months   MAL-ED      SOUTH AFRICA                   1                    NA                0.8538753   0.7454743   0.9622763
15-18 months   MAL-ED      SOUTH AFRICA                   0                    NA                0.8933696   0.8324482   0.9542911
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6960356   0.5740137   0.8180575
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6685164   0.5910472   0.7459856
18-21 months   GMS-Nepal   NEPAL                          1                    NA                0.9113896   0.8651505   0.9576288
18-21 months   GMS-Nepal   NEPAL                          0                    NA                0.9452313   0.8771007   1.0133619
18-21 months   MAL-ED      BANGLADESH                     1                    NA                0.8032534   0.7631794   0.8433273
18-21 months   MAL-ED      BANGLADESH                     0                    NA                0.8508227   0.7835846   0.9180608
18-21 months   MAL-ED      BRAZIL                         1                    NA                0.9020584   0.8035980   1.0005187
18-21 months   MAL-ED      BRAZIL                         0                    NA                0.9438544   0.8389478   1.0487611
18-21 months   MAL-ED      INDIA                          1                    NA                0.8444801   0.8004429   0.8885174
18-21 months   MAL-ED      INDIA                          0                    NA                0.9316846   0.8606372   1.0027319
18-21 months   MAL-ED      NEPAL                          1                    NA                0.7895491   0.7331131   0.8459851
18-21 months   MAL-ED      NEPAL                          0                    NA                0.8474375   0.7934530   0.9014220
18-21 months   MAL-ED      PERU                           1                    NA                0.8671260   0.8102260   0.9240259
18-21 months   MAL-ED      PERU                           0                    NA                0.7963013   0.7263064   0.8662962
18-21 months   MAL-ED      SOUTH AFRICA                   1                    NA                0.9026440   0.7745637   1.0307244
18-21 months   MAL-ED      SOUTH AFRICA                   0                    NA                0.7388192   0.6782450   0.7993934
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7751075   0.6392941   0.9109209
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7291543   0.6426840   0.8156246
21-24 months   GMS-Nepal   NEPAL                          1                    NA                0.8050680   0.7473302   0.8628058
21-24 months   GMS-Nepal   NEPAL                          0                    NA                0.6985969   0.5952960   0.8018978
21-24 months   MAL-ED      BANGLADESH                     1                    NA                0.7725095   0.7311920   0.8138271
21-24 months   MAL-ED      BANGLADESH                     0                    NA                0.7317614   0.6659664   0.7975564
21-24 months   MAL-ED      BRAZIL                         1                    NA                0.7710717   0.7102046   0.8319388
21-24 months   MAL-ED      BRAZIL                         0                    NA                0.8123650   0.7433245   0.8814054
21-24 months   MAL-ED      INDIA                          1                    NA                0.8256518   0.7856933   0.8656102
21-24 months   MAL-ED      INDIA                          0                    NA                0.8324670   0.7735577   0.8913764
21-24 months   MAL-ED      NEPAL                          1                    NA                0.7909752   0.7366504   0.8453001
21-24 months   MAL-ED      NEPAL                          0                    NA                0.7840183   0.7208369   0.8471997
21-24 months   MAL-ED      PERU                           1                    NA                0.7517524   0.6953712   0.8081335
21-24 months   MAL-ED      PERU                           0                    NA                0.7867497   0.7009972   0.8725021
21-24 months   MAL-ED      SOUTH AFRICA                   1                    NA                0.7587041   0.6698112   0.8475969
21-24 months   MAL-ED      SOUTH AFRICA                   0                    NA                0.8713446   0.8071574   0.9355318
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7775940   0.6719155   0.8832724
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6943007   0.6033176   0.7852837


### Parameter: E(Y)


agecat         studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal   NEPAL                          NA                   NA                3.5832888   3.5291425   3.6374351
0-3 months     MAL-ED      BANGLADESH                     NA                   NA                3.3300100   3.2632400   3.3967800
0-3 months     MAL-ED      BRAZIL                         NA                   NA                3.8333086   3.7172183   3.9493989
0-3 months     MAL-ED      INDIA                          NA                   NA                3.3581259   3.2511263   3.4651254
0-3 months     MAL-ED      NEPAL                          NA                   NA                3.6149130   3.5218465   3.7079794
0-3 months     MAL-ED      PERU                           NA                   NA                3.0514630   2.9842485   3.1186774
0-3 months     MAL-ED      SOUTH AFRICA                   NA                   NA                3.1964081   3.0976125   3.2952037
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2460048   3.1627741   3.3292354
3-6 months     GMS-Nepal   NEPAL                          NA                   NA                1.7175472   1.6762113   1.7588831
3-6 months     MAL-ED      BANGLADESH                     NA                   NA                1.9360220   1.8863911   1.9856528
3-6 months     MAL-ED      BRAZIL                         NA                   NA                2.1610058   2.0768189   2.2451928
3-6 months     MAL-ED      INDIA                          NA                   NA                1.8774058   1.8092128   1.9455987
3-6 months     MAL-ED      NEPAL                          NA                   NA                1.9604886   1.9037186   2.0172585
3-6 months     MAL-ED      PERU                           NA                   NA                2.0146923   1.9480408   2.0813438
3-6 months     MAL-ED      SOUTH AFRICA                   NA                   NA                1.9673270   1.8846989   2.0499551
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8384078   1.7678309   1.9089846
6-9 months     GMS-Nepal   NEPAL                          NA                   NA                1.3149164   1.2666599   1.3631729
6-9 months     MAL-ED      BANGLADESH                     NA                   NA                1.2426951   1.2021480   1.2832422
6-9 months     MAL-ED      BRAZIL                         NA                   NA                1.4793615   1.3932814   1.5654415
6-9 months     MAL-ED      INDIA                          NA                   NA                1.2410939   1.1870908   1.2950970
6-9 months     MAL-ED      NEPAL                          NA                   NA                1.3593977   1.3145109   1.4042846
6-9 months     MAL-ED      PERU                           NA                   NA                1.3181643   1.2633979   1.3729307
6-9 months     MAL-ED      SOUTH AFRICA                   NA                   NA                1.3866251   1.3204306   1.4528196
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1862735   1.1092792   1.2632679
9-12 months    GMS-Nepal   NEPAL                          NA                   NA                0.9981577   0.9587526   1.0375629
9-12 months    MAL-ED      BANGLADESH                     NA                   NA                0.9927203   0.9534705   1.0319702
9-12 months    MAL-ED      BRAZIL                         NA                   NA                1.2871495   1.2069822   1.3673169
9-12 months    MAL-ED      INDIA                          NA                   NA                0.9664571   0.9272553   1.0056589
9-12 months    MAL-ED      NEPAL                          NA                   NA                1.0863279   1.0443920   1.1282637
9-12 months    MAL-ED      PERU                           NA                   NA                1.0996556   1.0484043   1.1509069
9-12 months    MAL-ED      SOUTH AFRICA                   NA                   NA                0.9974431   0.9321487   1.0627375
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8135761   0.7280408   0.8991114
12-15 months   GMS-Nepal   NEPAL                          NA                   NA                0.8703223   0.8418462   0.8987983
12-15 months   MAL-ED      BANGLADESH                     NA                   NA                0.9168218   0.8756400   0.9580036
12-15 months   MAL-ED      BRAZIL                         NA                   NA                1.1479969   1.0880713   1.2079226
12-15 months   MAL-ED      INDIA                          NA                   NA                0.9027484   0.8605827   0.9449141
12-15 months   MAL-ED      NEPAL                          NA                   NA                0.9510803   0.9108264   0.9913342
12-15 months   MAL-ED      PERU                           NA                   NA                0.8899324   0.8436019   0.9362629
12-15 months   MAL-ED      SOUTH AFRICA                   NA                   NA                0.9200282   0.8606688   0.9793876
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8603058   0.7910045   0.9296071
15-18 months   GMS-Nepal   NEPAL                          NA                   NA                0.7714871   0.7347479   0.8082263
15-18 months   MAL-ED      BANGLADESH                     NA                   NA                0.8229575   0.7855057   0.8604093
15-18 months   MAL-ED      BRAZIL                         NA                   NA                0.9818884   0.9203285   1.0434482
15-18 months   MAL-ED      INDIA                          NA                   NA                0.8524809   0.8141426   0.8908193
15-18 months   MAL-ED      NEPAL                          NA                   NA                0.8379671   0.7952249   0.8807093
15-18 months   MAL-ED      PERU                           NA                   NA                0.8524194   0.8100116   0.8948273
15-18 months   MAL-ED      SOUTH AFRICA                   NA                   NA                0.8824996   0.8291590   0.9358403
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6765672   0.6111365   0.7419980
18-21 months   GMS-Nepal   NEPAL                          NA                   NA                0.9164610   0.8758269   0.9570951
18-21 months   MAL-ED      BANGLADESH                     NA                   NA                0.8119236   0.7768456   0.8470016
18-21 months   MAL-ED      BRAZIL                         NA                   NA                0.9218418   0.8499673   0.9937164
18-21 months   MAL-ED      INDIA                          NA                   NA                0.8718128   0.8338464   0.9097793
18-21 months   MAL-ED      NEPAL                          NA                   NA                0.8188898   0.7796721   0.8581075
18-21 months   MAL-ED      PERU                           NA                   NA                0.8436364   0.7988407   0.8884321
18-21 months   MAL-ED      SOUTH AFRICA                   NA                   NA                0.7825058   0.7256746   0.8393371
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7427314   0.6697155   0.8157473
21-24 months   GMS-Nepal   NEPAL                          NA                   NA                0.7890401   0.7373935   0.8406867
21-24 months   MAL-ED      BANGLADESH                     NA                   NA                0.7650086   0.7291204   0.8008969
21-24 months   MAL-ED      BRAZIL                         NA                   NA                0.7910255   0.7450530   0.8369980
21-24 months   MAL-ED      INDIA                          NA                   NA                0.8277879   0.7947160   0.8608598
21-24 months   MAL-ED      NEPAL                          NA                   NA                0.7874809   0.7457868   0.8291749
21-24 months   MAL-ED      PERU                           NA                   NA                0.7633557   0.7160871   0.8106244
21-24 months   MAL-ED      SOUTH AFRICA                   NA                   NA                0.8419384   0.7887410   0.8951359
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7195266   0.6482537   0.7907995


### Parameter: ATE


agecat         studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal   NEPAL                          0                    1                 -0.0123988   -0.1634815    0.1386839
0-3 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BANGLADESH                     0                    1                 -0.2166519   -0.3880046   -0.0452993
0-3 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BRAZIL                         0                    1                 -0.1292375   -0.3603249    0.1018500
0-3 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      INDIA                          0                    1                 -0.1088958   -0.3309664    0.1131748
0-3 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      NEPAL                          0                    1                  0.2442785    0.0607556    0.4278014
0-3 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      PERU                           0                    1                 -0.1016549   -0.2474465    0.0441367
0-3 months     MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      SOUTH AFRICA                   0                    1                  0.1322961   -0.0596485    0.3242406
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2844033   -0.4620036   -0.1068029
3-6 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal   NEPAL                          0                    1                 -0.0455418   -0.1542774    0.0631938
3-6 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BANGLADESH                     0                    1                  0.0794111   -0.0427539    0.2015761
3-6 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BRAZIL                         0                    1                  0.2617736    0.0976795    0.4258677
3-6 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      INDIA                          0                    1                 -0.0401117   -0.1908572    0.1106337
3-6 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      NEPAL                          0                    1                  0.1655071    0.0541751    0.2768391
3-6 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      PERU                           0                    1                  0.0798869   -0.0631809    0.2229546
3-6 months     MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      SOUTH AFRICA                   0                    1                  0.0460806   -0.1369217    0.2290830
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1214774   -0.0350222    0.2779770
6-9 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal   NEPAL                          0                    1                 -0.0113787   -0.1135091    0.0907516
6-9 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BANGLADESH                     0                    1                 -0.0121463   -0.1179317    0.0936392
6-9 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BRAZIL                         0                    1                 -0.0479533   -0.2194804    0.1235737
6-9 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      INDIA                          0                    1                  0.0299905   -0.0869628    0.1469437
6-9 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      NEPAL                          0                    1                  0.0455569   -0.0439851    0.1350989
6-9 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      PERU                           0                    1                  0.0135007   -0.1045328    0.1315341
6-9 months     MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      SOUTH AFRICA                   0                    1                  0.0302656   -0.1190118    0.1795430
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1237936   -0.3125162    0.0649290
9-12 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal   NEPAL                          0                    1                  0.1008313    0.0181047    0.1835580
9-12 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BANGLADESH                     0                    1                  0.0091171   -0.0795318    0.0977661
9-12 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BRAZIL                         0                    1                 -0.0046078   -0.1653215    0.1561060
9-12 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      INDIA                          0                    1                  0.1499102    0.0710786    0.2287419
9-12 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      NEPAL                          0                    1                  0.0116128   -0.0723003    0.0955260
9-12 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      PERU                           0                    1                 -0.0887318   -0.1935851    0.0161215
9-12 months    MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      SOUTH AFRICA                   0                    1                  0.0292581   -0.1291649    0.1876810
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1573078   -0.0454749    0.3600904
12-15 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal   NEPAL                          0                    1                 -0.0261642   -0.1123085    0.0599800
12-15 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BANGLADESH                     0                    1                  0.1206204    0.0022223    0.2390184
12-15 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BRAZIL                         0                    1                  0.0095102   -0.1111178    0.1301383
12-15 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      INDIA                          0                    1                  0.0238493   -0.0627928    0.1104915
12-15 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      NEPAL                          0                    1                 -0.0010960   -0.0815896    0.0793975
12-15 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      PERU                           0                    1                  0.0114441   -0.0909505    0.1138387
12-15 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      SOUTH AFRICA                   0                    1                  0.0513756   -0.0855296    0.1882807
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0669698   -0.0765899    0.2105294
15-18 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal   NEPAL                          0                    1                 -0.0902248   -0.1610504   -0.0193992
15-18 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BANGLADESH                     0                    1                 -0.0662469   -0.1559248    0.0234310
15-18 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BRAZIL                         0                    1                  0.0720388   -0.0501765    0.1942542
15-18 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      INDIA                          0                    1                  0.0815353   -0.0027036    0.1657743
15-18 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      NEPAL                          0                    1                  0.0328764   -0.0525515    0.1183042
15-18 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      PERU                           0                    1                  0.0189825   -0.0776183    0.1155834
15-18 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      SOUTH AFRICA                   0                    1                  0.0394944   -0.0848527    0.1638414
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0275192   -0.1720558    0.1170174
18-21 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal   NEPAL                          0                    1                  0.0338417   -0.0484981    0.1161814
18-21 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BANGLADESH                     0                    1                  0.0475693   -0.0307051    0.1258438
18-21 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BRAZIL                         0                    1                  0.0417961   -0.1020783    0.1856705
18-21 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      INDIA                          0                    1                  0.0872044    0.0036161    0.1707928
18-21 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      NEPAL                          0                    1                  0.0578884   -0.0202099    0.1359867
18-21 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      PERU                           0                    1                 -0.0708247   -0.1610294    0.0193800
18-21 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      SOUTH AFRICA                   0                    1                 -0.1638248   -0.3055069   -0.0221427
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0459532   -0.2069576    0.1150511
21-24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal   NEPAL                          0                    1                 -0.1064711   -0.2248126    0.0118704
21-24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BANGLADESH                     0                    1                 -0.0407482   -0.1184407    0.0369443
21-24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BRAZIL                         0                    1                  0.0412932   -0.0507469    0.1333334
21-24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      INDIA                          0                    1                  0.0068153   -0.0643675    0.0779981
21-24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      NEPAL                          0                    1                 -0.0069569   -0.0902820    0.0763682
21-24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      PERU                           0                    1                  0.0349973   -0.0676298    0.1376244
21-24 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      SOUTH AFRICA                   0                    1                  0.1126406    0.0029960    0.2222851
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0832933   -0.2227417    0.0561551


### Parameter: PAR


agecat         studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL                          1                    NA                -0.0021209   -0.0279675    0.0237258
0-3 months     MAL-ED      BANGLADESH                     1                    NA                -0.0402223   -0.0738011   -0.0066435
0-3 months     MAL-ED      BRAZIL                         1                    NA                -0.0650583   -0.1818593    0.0517427
0-3 months     MAL-ED      INDIA                          1                    NA                -0.0338639   -0.1033547    0.0356268
0-3 months     MAL-ED      NEPAL                          1                    NA                 0.1149546    0.0264424    0.2034668
0-3 months     MAL-ED      PERU                           1                    NA                -0.0364716   -0.0891119    0.0161687
0-3 months     MAL-ED      SOUTH AFRICA                   1                    NA                 0.0944972   -0.0428536    0.2318479
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2021140   -0.3296122   -0.0746157
3-6 months     GMS-Nepal   NEPAL                          1                    NA                -0.0075903   -0.0257856    0.0106050
3-6 months     MAL-ED      BANGLADESH                     1                    NA                 0.0144705   -0.0081498    0.0370907
3-6 months     MAL-ED      BRAZIL                         1                    NA                 0.1308868    0.0466999    0.2150738
3-6 months     MAL-ED      INDIA                          1                    NA                -0.0116830   -0.0556603    0.0322942
3-6 months     MAL-ED      NEPAL                          1                    NA                 0.0834859    0.0262958    0.1406759
3-6 months     MAL-ED      PERU                           1                    NA                 0.0272342   -0.0217532    0.0762215
3-6 months     MAL-ED      SOUTH AFRICA                   1                    NA                 0.0336743   -0.1000839    0.1674326
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0846838   -0.0246792    0.1940468
6-9 months     GMS-Nepal   NEPAL                          1                    NA                -0.0019266   -0.0192238    0.0153707
6-9 months     MAL-ED      BANGLADESH                     1                    NA                -0.0022389   -0.0217487    0.0172708
6-9 months     MAL-ED      BRAZIL                         1                    NA                -0.0235703   -0.1079545    0.0608140
6-9 months     MAL-ED      INDIA                          1                    NA                 0.0090703   -0.0263514    0.0444920
6-9 months     MAL-ED      NEPAL                          1                    NA                 0.0229837   -0.0222904    0.0682577
6-9 months     MAL-ED      PERU                           1                    NA                 0.0045746   -0.0354283    0.0445776
6-9 months     MAL-ED      SOUTH AFRICA                   1                    NA                 0.0218131   -0.0857892    0.1294153
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0859500   -0.2172282    0.0453283
9-12 months    GMS-Nepal   NEPAL                          1                    NA                 0.0167124    0.0024657    0.0309590
9-12 months    MAL-ED      BANGLADESH                     1                    NA                 0.0016310   -0.0142350    0.0174971
9-12 months    MAL-ED      BRAZIL                         1                    NA                -0.0022644   -0.0812445    0.0767157
9-12 months    MAL-ED      INDIA                          1                    NA                 0.0462410    0.0200999    0.0723820
9-12 months    MAL-ED      NEPAL                          1                    NA                 0.0058852   -0.0366478    0.0484183
9-12 months    MAL-ED      PERU                           1                    NA                -0.0297042   -0.0652165    0.0058081
9-12 months    MAL-ED      SOUTH AFRICA                   1                    NA                 0.0209923   -0.0926876    0.1346722
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1114264   -0.0325688    0.2554215
12-15 months   GMS-Nepal   NEPAL                          1                    NA                -0.0040904   -0.0175924    0.0094117
12-15 months   MAL-ED      BANGLADESH                     1                    NA                 0.0222504   -0.0005097    0.0450104
12-15 months   MAL-ED      BRAZIL                         1                    NA                 0.0045534   -0.0532064    0.0623132
12-15 months   MAL-ED      INDIA                          1                    NA                 0.0073933   -0.0195095    0.0342961
12-15 months   MAL-ED      NEPAL                          1                    NA                -0.0005530   -0.0411624    0.0400565
12-15 months   MAL-ED      PERU                           1                    NA                 0.0038147   -0.0303242    0.0379536
12-15 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0373001   -0.0621434    0.1367435
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0473940   -0.0542924    0.1490804
15-18 months   GMS-Nepal   NEPAL                          1                    NA                -0.0142836   -0.0259773   -0.0025899
15-18 months   MAL-ED      BANGLADESH                     1                    NA                -0.0122203   -0.0291326    0.0046920
15-18 months   MAL-ED      BRAZIL                         1                    NA                 0.0344135   -0.0242421    0.0930690
15-18 months   MAL-ED      INDIA                          1                    NA                 0.0255559   -0.0013627    0.0524744
15-18 months   MAL-ED      NEPAL                          1                    NA                 0.0166634   -0.0266906    0.0600173
15-18 months   MAL-ED      PERU                           1                    NA                 0.0062371   -0.0255262    0.0380004
15-18 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0286244   -0.0615293    0.1187780
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0194684   -0.1217361    0.0827993
18-21 months   GMS-Nepal   NEPAL                          1                    NA                 0.0050714   -0.0073332    0.0174759
18-21 months   MAL-ED      BANGLADESH                     1                    NA                 0.0086703   -0.0058195    0.0231601
18-21 months   MAL-ED      BRAZIL                         1                    NA                 0.0197835   -0.0483995    0.0879664
18-21 months   MAL-ED      INDIA                          1                    NA                 0.0273327    0.0005403    0.0541252
18-21 months   MAL-ED      NEPAL                          1                    NA                 0.0293407   -0.0104294    0.0691108
18-21 months   MAL-ED      PERU                           1                    NA                -0.0234896   -0.0537651    0.0067859
18-21 months   MAL-ED      SOUTH AFRICA                   1                    NA                -0.1201382   -0.2244706   -0.0158058
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0323762   -0.1458536    0.0811013
21-24 months   GMS-Nepal   NEPAL                          1                    NA                -0.0160279   -0.0343964    0.0023405
21-24 months   MAL-ED      BANGLADESH                     1                    NA                -0.0075009   -0.0219690    0.0069672
21-24 months   MAL-ED      BRAZIL                         1                    NA                 0.0199538   -0.0246461    0.0645536
21-24 months   MAL-ED      INDIA                          1                    NA                 0.0021361   -0.0201792    0.0244515
21-24 months   MAL-ED      NEPAL                          1                    NA                -0.0034943   -0.0453497    0.0383610
21-24 months   MAL-ED      PERU                           1                    NA                 0.0116034   -0.0225050    0.0457118
21-24 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0832344    0.0019564    0.1645124
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0580674   -0.1554490    0.0393143
