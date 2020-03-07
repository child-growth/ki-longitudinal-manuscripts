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

**Outcome Variable:** ever_swasted

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

agecat                        studyid     country                        predfeed3    ever_swasted   n_cell       n
----------------------------  ----------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth wast)   EE          PAKISTAN                       1                       0       34      39
0-24 months (no birth wast)   EE          PAKISTAN                       1                       1        5      39
0-24 months (no birth wast)   EE          PAKISTAN                       0                       0        0      39
0-24 months (no birth wast)   EE          PAKISTAN                       0                       1        0      39
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          1                       0      283     453
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          1                       1       93     453
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          0                       0       62     453
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          0                       1       15     453
0-24 months (no birth wast)   JiVitA-3    BANGLADESH                     1                       0    12886   14768
0-24 months (no birth wast)   JiVitA-3    BANGLADESH                     1                       1      478   14768
0-24 months (no birth wast)   JiVitA-3    BANGLADESH                     0                       0     1347   14768
0-24 months (no birth wast)   JiVitA-3    BANGLADESH                     0                       1       57   14768
0-24 months (no birth wast)   JiVitA-4    BANGLADESH                     1                       0      142     164
0-24 months (no birth wast)   JiVitA-4    BANGLADESH                     1                       1        5     164
0-24 months (no birth wast)   JiVitA-4    BANGLADESH                     0                       0       16     164
0-24 months (no birth wast)   JiVitA-4    BANGLADESH                     0                       1        1     164
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     1                       0      190     244
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     1                       1       10     244
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     0                       0       42     244
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     0                       1        2     244
0-24 months (no birth wast)   MAL-ED      BRAZIL                         1                       0       94     202
0-24 months (no birth wast)   MAL-ED      BRAZIL                         1                       1        4     202
0-24 months (no birth wast)   MAL-ED      BRAZIL                         0                       0      104     202
0-24 months (no birth wast)   MAL-ED      BRAZIL                         0                       1        0     202
0-24 months (no birth wast)   MAL-ED      INDIA                          1                       0      140     212
0-24 months (no birth wast)   MAL-ED      INDIA                          1                       1       10     212
0-24 months (no birth wast)   MAL-ED      INDIA                          0                       0       60     212
0-24 months (no birth wast)   MAL-ED      INDIA                          0                       1        2     212
0-24 months (no birth wast)   MAL-ED      NEPAL                          1                       0      111     227
0-24 months (no birth wast)   MAL-ED      NEPAL                          1                       1        2     227
0-24 months (no birth wast)   MAL-ED      NEPAL                          0                       0      113     227
0-24 months (no birth wast)   MAL-ED      NEPAL                          0                       1        1     227
0-24 months (no birth wast)   MAL-ED      PERU                           1                       0      184     287
0-24 months (no birth wast)   MAL-ED      PERU                           1                       1        4     287
0-24 months (no birth wast)   MAL-ED      PERU                           0                       0       99     287
0-24 months (no birth wast)   MAL-ED      PERU                           0                       1        0     287
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   1                       0       70     269
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   1                       1        1     269
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   0                       0      188     269
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   0                       1       10     269
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                       0       63     219
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                       1        2     219
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                       0      149     219
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                       1        5     219
0-6 months (no birth wast)    EE          PAKISTAN                       1                       0       38      38
0-6 months (no birth wast)    EE          PAKISTAN                       1                       1        0      38
0-6 months (no birth wast)    EE          PAKISTAN                       0                       0        0      38
0-6 months (no birth wast)    EE          PAKISTAN                       0                       1        0      38
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          1                       0      347     439
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          1                       1       19     439
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          0                       0       68     439
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          0                       1        5     439
0-6 months (no birth wast)    JiVitA-3    BANGLADESH                     1                       0    13031   14643
0-6 months (no birth wast)    JiVitA-3    BANGLADESH                     1                       1      220   14643
0-6 months (no birth wast)    JiVitA-3    BANGLADESH                     0                       0     1362   14643
0-6 months (no birth wast)    JiVitA-3    BANGLADESH                     0                       1       30   14643
0-6 months (no birth wast)    JiVitA-4    BANGLADESH                     1                       0      146     161
0-6 months (no birth wast)    JiVitA-4    BANGLADESH                     1                       1        0     161
0-6 months (no birth wast)    JiVitA-4    BANGLADESH                     0                       0       14     161
0-6 months (no birth wast)    JiVitA-4    BANGLADESH                     0                       1        1     161
0-6 months (no birth wast)    MAL-ED      BANGLADESH                     1                       0      193     243
0-6 months (no birth wast)    MAL-ED      BANGLADESH                     1                       1        6     243
0-6 months (no birth wast)    MAL-ED      BANGLADESH                     0                       0       43     243
0-6 months (no birth wast)    MAL-ED      BANGLADESH                     0                       1        1     243
0-6 months (no birth wast)    MAL-ED      BRAZIL                         1                       0       95     202
0-6 months (no birth wast)    MAL-ED      BRAZIL                         1                       1        3     202
0-6 months (no birth wast)    MAL-ED      BRAZIL                         0                       0      104     202
0-6 months (no birth wast)    MAL-ED      BRAZIL                         0                       1        0     202
0-6 months (no birth wast)    MAL-ED      INDIA                          1                       0      144     210
0-6 months (no birth wast)    MAL-ED      INDIA                          1                       1        6     210
0-6 months (no birth wast)    MAL-ED      INDIA                          0                       0       59     210
0-6 months (no birth wast)    MAL-ED      INDIA                          0                       1        1     210
0-6 months (no birth wast)    MAL-ED      NEPAL                          1                       0      113     225
0-6 months (no birth wast)    MAL-ED      NEPAL                          1                       1        0     225
0-6 months (no birth wast)    MAL-ED      NEPAL                          0                       0      111     225
0-6 months (no birth wast)    MAL-ED      NEPAL                          0                       1        1     225
0-6 months (no birth wast)    MAL-ED      PERU                           1                       0      187     287
0-6 months (no birth wast)    MAL-ED      PERU                           1                       1        1     287
0-6 months (no birth wast)    MAL-ED      PERU                           0                       0       99     287
0-6 months (no birth wast)    MAL-ED      PERU                           0                       1        0     287
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   1                       0       70     268
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   1                       1        0     268
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   0                       0      196     268
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   0                       1        2     268
0-6 months (no birth wast)    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                       0       64     219
0-6 months (no birth wast)    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                       1        1     219
0-6 months (no birth wast)    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                       0      152     219
0-6 months (no birth wast)    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                       1        2     219
6-24 months                   EE          PAKISTAN                       1                       0       33      38
6-24 months                   EE          PAKISTAN                       1                       1        5      38
6-24 months                   EE          PAKISTAN                       0                       0        0      38
6-24 months                   EE          PAKISTAN                       0                       1        0      38
6-24 months                   GMS-Nepal   NEPAL                          1                       0      293     451
6-24 months                   GMS-Nepal   NEPAL                          1                       1       82     451
6-24 months                   GMS-Nepal   NEPAL                          0                       0       64     451
6-24 months                   GMS-Nepal   NEPAL                          0                       1       12     451
6-24 months                   JiVitA-3    BANGLADESH                     1                       0     8512    9618
6-24 months                   JiVitA-3    BANGLADESH                     1                       1      278    9618
6-24 months                   JiVitA-3    BANGLADESH                     0                       0      799    9618
6-24 months                   JiVitA-3    BANGLADESH                     0                       1       29    9618
6-24 months                   JiVitA-4    BANGLADESH                     1                       0      142     165
6-24 months                   JiVitA-4    BANGLADESH                     1                       1        6     165
6-24 months                   JiVitA-4    BANGLADESH                     0                       0       17     165
6-24 months                   JiVitA-4    BANGLADESH                     0                       1        0     165
6-24 months                   MAL-ED      BANGLADESH                     1                       0      186     232
6-24 months                   MAL-ED      BANGLADESH                     1                       1        4     232
6-24 months                   MAL-ED      BANGLADESH                     0                       0       41     232
6-24 months                   MAL-ED      BANGLADESH                     0                       1        1     232
6-24 months                   MAL-ED      BRAZIL                         1                       0       92     185
6-24 months                   MAL-ED      BRAZIL                         1                       1        1     185
6-24 months                   MAL-ED      BRAZIL                         0                       0       92     185
6-24 months                   MAL-ED      BRAZIL                         0                       1        0     185
6-24 months                   MAL-ED      INDIA                          1                       0      142     209
6-24 months                   MAL-ED      INDIA                          1                       1        4     209
6-24 months                   MAL-ED      INDIA                          0                       0       62     209
6-24 months                   MAL-ED      INDIA                          0                       1        1     209
6-24 months                   MAL-ED      NEPAL                          1                       0      111     226
6-24 months                   MAL-ED      NEPAL                          1                       1        2     226
6-24 months                   MAL-ED      NEPAL                          0                       0      113     226
6-24 months                   MAL-ED      NEPAL                          0                       1        0     226
6-24 months                   MAL-ED      PERU                           1                       0      172     267
6-24 months                   MAL-ED      PERU                           1                       1        3     267
6-24 months                   MAL-ED      PERU                           0                       0       92     267
6-24 months                   MAL-ED      PERU                           0                       1        0     267
6-24 months                   MAL-ED      SOUTH AFRICA                   1                       0       64     248
6-24 months                   MAL-ED      SOUTH AFRICA                   1                       1        2     248
6-24 months                   MAL-ED      SOUTH AFRICA                   0                       0      174     248
6-24 months                   MAL-ED      SOUTH AFRICA                   0                       1        8     248
6-24 months                   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                       0       62     210
6-24 months                   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                       1        1     210
6-24 months                   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                       0      144     210
6-24 months                   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                       1        3     210


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
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




# Results Detail

## Results Plots
![](/tmp/ee3181df-2904-4d15-91de-d18d22a9b806/460d9b1b-30bb-4ffc-81b0-835ed16cd215/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ee3181df-2904-4d15-91de-d18d22a9b806/460d9b1b-30bb-4ffc-81b0-835ed16cd215/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ee3181df-2904-4d15-91de-d18d22a9b806/460d9b1b-30bb-4ffc-81b0-835ed16cd215/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ee3181df-2904-4d15-91de-d18d22a9b806/460d9b1b-30bb-4ffc-81b0-835ed16cd215/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                0.2473404   0.2036807   0.2910001
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    NA                0.1948052   0.1062461   0.2833643
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                0.0357677   0.0322440   0.0392915
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   0                    NA                0.0405983   0.0269148   0.0542818
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                0.0519126   0.0291583   0.0746669
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    NA                0.0684932   0.0104837   0.1265026
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                0.0166025   0.0141099   0.0190952
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   0                    NA                0.0215517   0.0106041   0.0324994
6-24 months                   GMS-Nepal   NEPAL        1                    NA                0.2186667   0.1767850   0.2605483
6-24 months                   GMS-Nepal   NEPAL        0                    NA                0.1578947   0.0758236   0.2399659
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                0.0316268   0.0273259   0.0359278
6-24 months                   JiVitA-3    BANGLADESH   0                    NA                0.0350242   0.0221171   0.0479312


### Parameter: E(Y)


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        NA                   NA                0.2384106   0.1991278   0.2776934
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   NA                   NA                0.0362270   0.0327939   0.0396601
0-6 months (no birth wast)    GMS-Nepal   NEPAL        NA                   NA                0.0546697   0.0333797   0.0759597
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   NA                   NA                0.0170730   0.0145369   0.0196091
6-24 months                   GMS-Nepal   NEPAL        NA                   NA                0.2084257   0.1708970   0.2459544
6-24 months                   JiVitA-3    BANGLADESH   NA                   NA                0.0319193   0.0278547   0.0359839


### Parameter: RR


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    1                 0.7875995   0.4836295   1.282620
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   0                    1                 1.1350535   0.7982781   1.613907
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    1                 1.3193944   0.5084106   3.424007
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   0                    1                 1.2980995   0.7703553   2.187383
6-24 months                   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal   NEPAL        0                    1                 0.7220796   0.4149617   1.256499
6-24 months                   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-3    BANGLADESH   0                    1                 1.1074184   0.7460796   1.643760


### Parameter: PAR


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                -0.0089298   -0.0258112   0.0079515
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                 0.0004592   -0.0008881   0.0018066
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0027571   -0.0076207   0.0131350
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                 0.0004705   -0.0005859   0.0015269
6-24 months                   GMS-Nepal   NEPAL        1                    NA                -0.0102409   -0.0259094   0.0054275
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                 0.0002925   -0.0008859   0.0014708


### Parameter: PAF


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                -0.0374557   -0.1106348   0.0309017
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                 0.0126768   -0.0250840   0.0490466
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0504326   -0.1585940   0.2217479
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                 0.0275572   -0.0353794   0.0866681
6-24 months                   GMS-Nepal   NEPAL        1                    NA                -0.0491348   -0.1268184   0.0231933
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                 0.0091628   -0.0285428   0.0454861
