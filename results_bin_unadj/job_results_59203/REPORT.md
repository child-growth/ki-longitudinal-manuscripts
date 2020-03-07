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

**Outcome Variable:** ever_wasted

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

agecat                        studyid     country                        predfeed3    ever_wasted   n_cell       n
----------------------------  ----------  -----------------------------  ----------  ------------  -------  ------
0-24 months (no birth wast)   EE          PAKISTAN                       1                      0       18      39
0-24 months (no birth wast)   EE          PAKISTAN                       1                      1       21      39
0-24 months (no birth wast)   EE          PAKISTAN                       0                      0        0      39
0-24 months (no birth wast)   EE          PAKISTAN                       0                      1        0      39
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          1                      0      147     453
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          1                      1      229     453
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          0                      0       39     453
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          0                      1       38     453
0-24 months (no birth wast)   JiVitA-3    BANGLADESH                     1                      0    11036   14768
0-24 months (no birth wast)   JiVitA-3    BANGLADESH                     1                      1     2328   14768
0-24 months (no birth wast)   JiVitA-3    BANGLADESH                     0                      0     1165   14768
0-24 months (no birth wast)   JiVitA-3    BANGLADESH                     0                      1      239   14768
0-24 months (no birth wast)   JiVitA-4    BANGLADESH                     1                      0      109     164
0-24 months (no birth wast)   JiVitA-4    BANGLADESH                     1                      1       38     164
0-24 months (no birth wast)   JiVitA-4    BANGLADESH                     0                      0       13     164
0-24 months (no birth wast)   JiVitA-4    BANGLADESH                     0                      1        4     164
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     1                      0      152     244
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     1                      1       48     244
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     0                      0       37     244
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     0                      1        7     244
0-24 months (no birth wast)   MAL-ED      BRAZIL                         1                      0       89     202
0-24 months (no birth wast)   MAL-ED      BRAZIL                         1                      1        9     202
0-24 months (no birth wast)   MAL-ED      BRAZIL                         0                      0      100     202
0-24 months (no birth wast)   MAL-ED      BRAZIL                         0                      1        4     202
0-24 months (no birth wast)   MAL-ED      INDIA                          1                      0       94     212
0-24 months (no birth wast)   MAL-ED      INDIA                          1                      1       56     212
0-24 months (no birth wast)   MAL-ED      INDIA                          0                      0       36     212
0-24 months (no birth wast)   MAL-ED      INDIA                          0                      1       26     212
0-24 months (no birth wast)   MAL-ED      NEPAL                          1                      0       88     227
0-24 months (no birth wast)   MAL-ED      NEPAL                          1                      1       25     227
0-24 months (no birth wast)   MAL-ED      NEPAL                          0                      0       93     227
0-24 months (no birth wast)   MAL-ED      NEPAL                          0                      1       21     227
0-24 months (no birth wast)   MAL-ED      PERU                           1                      0      178     287
0-24 months (no birth wast)   MAL-ED      PERU                           1                      1       10     287
0-24 months (no birth wast)   MAL-ED      PERU                           0                      0       89     287
0-24 months (no birth wast)   MAL-ED      PERU                           0                      1       10     287
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   1                      0       60     269
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   1                      1       11     269
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   0                      0      166     269
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   0                      1       32     269
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                      0       58     219
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                      1        7     219
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                      0      133     219
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                      1       21     219
0-6 months (no birth wast)    EE          PAKISTAN                       1                      0       33      38
0-6 months (no birth wast)    EE          PAKISTAN                       1                      1        5      38
0-6 months (no birth wast)    EE          PAKISTAN                       0                      0        0      38
0-6 months (no birth wast)    EE          PAKISTAN                       0                      1        0      38
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          1                      0      288     439
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          1                      1       78     439
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          0                      0       55     439
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          0                      1       18     439
0-6 months (no birth wast)    JiVitA-3    BANGLADESH                     1                      0    12290   14643
0-6 months (no birth wast)    JiVitA-3    BANGLADESH                     1                      1      961   14643
0-6 months (no birth wast)    JiVitA-3    BANGLADESH                     0                      0     1276   14643
0-6 months (no birth wast)    JiVitA-3    BANGLADESH                     0                      1      116   14643
0-6 months (no birth wast)    JiVitA-4    BANGLADESH                     1                      0      143     161
0-6 months (no birth wast)    JiVitA-4    BANGLADESH                     1                      1        3     161
0-6 months (no birth wast)    JiVitA-4    BANGLADESH                     0                      0       14     161
0-6 months (no birth wast)    JiVitA-4    BANGLADESH                     0                      1        1     161
0-6 months (no birth wast)    MAL-ED      BANGLADESH                     1                      0      185     243
0-6 months (no birth wast)    MAL-ED      BANGLADESH                     1                      1       14     243
0-6 months (no birth wast)    MAL-ED      BANGLADESH                     0                      0       41     243
0-6 months (no birth wast)    MAL-ED      BANGLADESH                     0                      1        3     243
0-6 months (no birth wast)    MAL-ED      BRAZIL                         1                      0       93     202
0-6 months (no birth wast)    MAL-ED      BRAZIL                         1                      1        5     202
0-6 months (no birth wast)    MAL-ED      BRAZIL                         0                      0      101     202
0-6 months (no birth wast)    MAL-ED      BRAZIL                         0                      1        3     202
0-6 months (no birth wast)    MAL-ED      INDIA                          1                      0      132     210
0-6 months (no birth wast)    MAL-ED      INDIA                          1                      1       18     210
0-6 months (no birth wast)    MAL-ED      INDIA                          0                      0       46     210
0-6 months (no birth wast)    MAL-ED      INDIA                          0                      1       14     210
0-6 months (no birth wast)    MAL-ED      NEPAL                          1                      0      104     225
0-6 months (no birth wast)    MAL-ED      NEPAL                          1                      1        9     225
0-6 months (no birth wast)    MAL-ED      NEPAL                          0                      0      105     225
0-6 months (no birth wast)    MAL-ED      NEPAL                          0                      1        7     225
0-6 months (no birth wast)    MAL-ED      PERU                           1                      0      185     287
0-6 months (no birth wast)    MAL-ED      PERU                           1                      1        3     287
0-6 months (no birth wast)    MAL-ED      PERU                           0                      0       97     287
0-6 months (no birth wast)    MAL-ED      PERU                           0                      1        2     287
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   1                      0       64     268
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   1                      1        6     268
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   0                      0      191     268
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   0                      1        7     268
0-6 months (no birth wast)    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                      0       62     219
0-6 months (no birth wast)    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                      1        3     219
0-6 months (no birth wast)    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                      0      149     219
0-6 months (no birth wast)    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                      1        5     219
6-24 months                   EE          PAKISTAN                       1                      0       21      38
6-24 months                   EE          PAKISTAN                       1                      1       17      38
6-24 months                   EE          PAKISTAN                       0                      0        0      38
6-24 months                   EE          PAKISTAN                       0                      1        0      38
6-24 months                   GMS-Nepal   NEPAL                          1                      0      181     451
6-24 months                   GMS-Nepal   NEPAL                          1                      1      194     451
6-24 months                   GMS-Nepal   NEPAL                          0                      0       45     451
6-24 months                   GMS-Nepal   NEPAL                          0                      1       31     451
6-24 months                   JiVitA-3    BANGLADESH                     1                      0     7300    9618
6-24 months                   JiVitA-3    BANGLADESH                     1                      1     1490    9618
6-24 months                   JiVitA-3    BANGLADESH                     0                      0      698    9618
6-24 months                   JiVitA-3    BANGLADESH                     0                      1      130    9618
6-24 months                   JiVitA-4    BANGLADESH                     1                      0      113     165
6-24 months                   JiVitA-4    BANGLADESH                     1                      1       35     165
6-24 months                   JiVitA-4    BANGLADESH                     0                      0       14     165
6-24 months                   JiVitA-4    BANGLADESH                     0                      1        3     165
6-24 months                   MAL-ED      BANGLADESH                     1                      0      153     232
6-24 months                   MAL-ED      BANGLADESH                     1                      1       37     232
6-24 months                   MAL-ED      BANGLADESH                     0                      0       38     232
6-24 months                   MAL-ED      BANGLADESH                     0                      1        4     232
6-24 months                   MAL-ED      BRAZIL                         1                      0       88     185
6-24 months                   MAL-ED      BRAZIL                         1                      1        5     185
6-24 months                   MAL-ED      BRAZIL                         0                      0       91     185
6-24 months                   MAL-ED      BRAZIL                         0                      1        1     185
6-24 months                   MAL-ED      INDIA                          1                      0      103     209
6-24 months                   MAL-ED      INDIA                          1                      1       43     209
6-24 months                   MAL-ED      INDIA                          0                      0       46     209
6-24 months                   MAL-ED      INDIA                          0                      1       17     209
6-24 months                   MAL-ED      NEPAL                          1                      0       93     226
6-24 months                   MAL-ED      NEPAL                          1                      1       20     226
6-24 months                   MAL-ED      NEPAL                          0                      0       97     226
6-24 months                   MAL-ED      NEPAL                          0                      1       16     226
6-24 months                   MAL-ED      PERU                           1                      0      167     267
6-24 months                   MAL-ED      PERU                           1                      1        8     267
6-24 months                   MAL-ED      PERU                           0                      0       83     267
6-24 months                   MAL-ED      PERU                           0                      1        9     267
6-24 months                   MAL-ED      SOUTH AFRICA                   1                      0       60     248
6-24 months                   MAL-ED      SOUTH AFRICA                   1                      1        6     248
6-24 months                   MAL-ED      SOUTH AFRICA                   0                      0      153     248
6-24 months                   MAL-ED      SOUTH AFRICA                   0                      1       29     248
6-24 months                   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                      0       58     210
6-24 months                   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                      1        5     210
6-24 months                   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                      0      128     210
6-24 months                   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                      1       19     210


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
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL

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




# Results Detail

## Results Plots
![](/tmp/86abe4de-4ebb-4851-a0be-27c58fbc2f4c/feadce91-e0d6-4cb3-a641-7745cd6ed451/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/86abe4de-4ebb-4851-a0be-27c58fbc2f4c/feadce91-e0d6-4cb3-a641-7745cd6ed451/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/86abe4de-4ebb-4851-a0be-27c58fbc2f4c/feadce91-e0d6-4cb3-a641-7745cd6ed451/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/86abe4de-4ebb-4851-a0be-27c58fbc2f4c/feadce91-e0d6-4cb3-a641-7745cd6ed451/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          1                    NA                0.6090426   0.5596658   0.6584193
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          0                    NA                0.4935065   0.3817131   0.6052998
0-24 months (no birth wast)   JiVitA-3    BANGLADESH                     1                    NA                0.1741993   0.1671887   0.1812100
0-24 months (no birth wast)   JiVitA-3    BANGLADESH                     0                    NA                0.1702279   0.1472465   0.1932093
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     1                    NA                0.2400000   0.1806887   0.2993113
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     0                    NA                0.1590909   0.0507953   0.2673865
0-24 months (no birth wast)   MAL-ED      INDIA                          1                    NA                0.3733333   0.2957451   0.4509216
0-24 months (no birth wast)   MAL-ED      INDIA                          0                    NA                0.4193548   0.2962358   0.5424739
0-24 months (no birth wast)   MAL-ED      NEPAL                          1                    NA                0.2212389   0.1445380   0.2979398
0-24 months (no birth wast)   MAL-ED      NEPAL                          0                    NA                0.1842105   0.1128923   0.2555288
0-24 months (no birth wast)   MAL-ED      PERU                           1                    NA                0.0531915   0.0210564   0.0853266
0-24 months (no birth wast)   MAL-ED      PERU                           0                    NA                0.1010101   0.0415469   0.1604733
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   1                    NA                0.1549296   0.0706075   0.2392517
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   0                    NA                0.1616162   0.1102487   0.2129836
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1076923   0.0321596   0.1832250
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1363636   0.0820391   0.1906882
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          1                    NA                0.2131148   0.1711132   0.2551163
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          0                    NA                0.2465753   0.1475887   0.3455620
0-6 months (no birth wast)    JiVitA-3    BANGLADESH                     1                    NA                0.0725228   0.0673980   0.0776476
0-6 months (no birth wast)    JiVitA-3    BANGLADESH                     0                    NA                0.0833333   0.0655795   0.1010872
0-6 months (no birth wast)    MAL-ED      INDIA                          1                    NA                0.1200000   0.0678720   0.1721280
0-6 months (no birth wast)    MAL-ED      INDIA                          0                    NA                0.2333333   0.1260578   0.3406089
0-6 months (no birth wast)    MAL-ED      NEPAL                          1                    NA                0.0796460   0.0296154   0.1296766
0-6 months (no birth wast)    MAL-ED      NEPAL                          0                    NA                0.0625000   0.0175705   0.1074295
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   1                    NA                0.0857143   0.0200123   0.1514163
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   0                    NA                0.0353535   0.0095827   0.0611243
6-24 months                   GMS-Nepal   NEPAL                          1                    NA                0.5173333   0.4667015   0.5679651
6-24 months                   GMS-Nepal   NEPAL                          0                    NA                0.4078947   0.2972841   0.5185054
6-24 months                   JiVitA-3    BANGLADESH                     1                    NA                0.1695108   0.1612020   0.1778197
6-24 months                   JiVitA-3    BANGLADESH                     0                    NA                0.1570048   0.1300714   0.1839382
6-24 months                   MAL-ED      INDIA                          1                    NA                0.2945205   0.2204044   0.3686367
6-24 months                   MAL-ED      INDIA                          0                    NA                0.2698413   0.1599705   0.3797120
6-24 months                   MAL-ED      NEPAL                          1                    NA                0.1769912   0.1064651   0.2475172
6-24 months                   MAL-ED      NEPAL                          0                    NA                0.1415929   0.0771702   0.2060157
6-24 months                   MAL-ED      PERU                           1                    NA                0.0457143   0.0147109   0.0767177
6-24 months                   MAL-ED      PERU                           0                    NA                0.0978261   0.0370068   0.1586454
6-24 months                   MAL-ED      SOUTH AFRICA                   1                    NA                0.0909091   0.0214129   0.1604052
6-24 months                   MAL-ED      SOUTH AFRICA                   0                    NA                0.1593407   0.1060608   0.2126205
6-24 months                   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0793651   0.0124579   0.1462723
6-24 months                   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1292517   0.0748903   0.1836131


### Parameter: E(Y)


agecat                        studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          NA                   NA                0.5894040   0.5440524   0.6347556
0-24 months (no birth wast)   JiVitA-3    BANGLADESH                     NA                   NA                0.1738218   0.1671074   0.1805361
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     NA                   NA                0.2254098   0.1728726   0.2779471
0-24 months (no birth wast)   MAL-ED      INDIA                          NA                   NA                0.3867925   0.3210797   0.4525052
0-24 months (no birth wast)   MAL-ED      NEPAL                          NA                   NA                0.2026432   0.1502365   0.2550498
0-24 months (no birth wast)   MAL-ED      PERU                           NA                   NA                0.0696864   0.0401775   0.0991954
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   NA                   NA                0.1598513   0.1159763   0.2037263
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1278539   0.0835266   0.1721812
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          NA                   NA                0.2186788   0.1799683   0.2573894
0-6 months (no birth wast)    JiVitA-3    BANGLADESH                     NA                   NA                0.0735505   0.0685774   0.0785236
0-6 months (no birth wast)    MAL-ED      INDIA                          NA                   NA                0.1523810   0.1036572   0.2011047
0-6 months (no birth wast)    MAL-ED      NEPAL                          NA                   NA                0.0711111   0.0374542   0.1047681
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   NA                   NA                0.0485075   0.0227384   0.0742766
6-24 months                   GMS-Nepal   NEPAL                          NA                   NA                0.4988914   0.4526947   0.5450880
6-24 months                   JiVitA-3    BANGLADESH                     NA                   NA                0.1684342   0.1604630   0.1764054
6-24 months                   MAL-ED      INDIA                          NA                   NA                0.2870813   0.2256006   0.3485621
6-24 months                   MAL-ED      NEPAL                          NA                   NA                0.1592920   0.1114757   0.2071084
6-24 months                   MAL-ED      PERU                           NA                   NA                0.0636704   0.0343284   0.0930125
6-24 months                   MAL-ED      SOUTH AFRICA                   NA                   NA                0.1411290   0.0977108   0.1845472
6-24 months                   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1142857   0.0711519   0.1574195


### Parameter: RR


agecat                        studyid     country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          0                    1                 0.8102989   0.6370218   1.030709
0-24 months (no birth wast)   JiVitA-3    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-3    BANGLADESH                     0                    1                 0.9772019   0.8488687   1.124937
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     0                    1                 0.6628788   0.3213097   1.367554
0-24 months (no birth wast)   MAL-ED      INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      INDIA                          0                    1                 1.1232719   0.7839117   1.609543
0-24 months (no birth wast)   MAL-ED      NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      NEPAL                          0                    1                 0.8326316   0.4951678   1.400082
0-24 months (no birth wast)   MAL-ED      PERU                           1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      PERU                           0                    1                 1.8989899   0.8169289   4.414292
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   0                    1                 1.0431589   0.5554282   1.959174
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 1.2662338   0.5652023   2.836768
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          0                    1                 1.1570074   0.7397982   1.809502
0-6 months (no birth wast)    JiVitA-3    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-3    BANGLADESH                     0                    1                 1.1490635   0.9195278   1.435897
0-6 months (no birth wast)    MAL-ED      INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    MAL-ED      INDIA                          0                    1                 1.9444444   1.0329938   3.660103
0-6 months (no birth wast)    MAL-ED      NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    MAL-ED      NEPAL                          0                    1                 0.7847222   0.3020750   2.038530
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   0                    1                 0.4124579   0.1432147   1.187878
6-24 months                   GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal   NEPAL                          0                    1                 0.7884563   0.5909797   1.051920
6-24 months                   JiVitA-3    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-3    BANGLADESH                     0                    1                 0.9262231   0.7753735   1.106421
6-24 months                   MAL-ED      INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED      INDIA                          0                    1                 0.9162052   0.5676938   1.478671
6-24 months                   MAL-ED      NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED      NEPAL                          0                    1                 0.8000000   0.4369436   1.464720
6-24 months                   MAL-ED      PERU                           1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED      PERU                           0                    1                 2.1399457   0.8527742   5.369965
6-24 months                   MAL-ED      SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED      SOUTH AFRICA                   0                    1                 1.7527473   0.7609377   4.037286
6-24 months                   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 1.6285714   0.6348173   4.177966


### Parameter: PAR


agecat                        studyid     country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          1                    NA                -0.0196386   -0.0407937   0.0015165
0-24 months (no birth wast)   JiVitA-3    BANGLADESH                     1                    NA                -0.0003776   -0.0026599   0.0019048
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     1                    NA                -0.0145902   -0.0371968   0.0080165
0-24 months (no birth wast)   MAL-ED      INDIA                          1                    NA                 0.0134591   -0.0291944   0.0561127
0-24 months (no birth wast)   MAL-ED      NEPAL                          1                    NA                -0.0185958   -0.0712491   0.0340575
0-24 months (no birth wast)   MAL-ED      PERU                           1                    NA                 0.0164949   -0.0069688   0.0399586
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0049217   -0.0677548   0.0775983
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0201616   -0.0452865   0.0856097
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          1                    NA                 0.0055641   -0.0123546   0.0234828
0-6 months (no birth wast)    JiVitA-3    BANGLADESH                     1                    NA                 0.0010277   -0.0007223   0.0027776
0-6 months (no birth wast)    MAL-ED      INDIA                          1                    NA                 0.0323810   -0.0023960   0.0671579
0-6 months (no birth wast)    MAL-ED      NEPAL                          1                    NA                -0.0085349   -0.0420262   0.0249564
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   1                    NA                -0.0372068   -0.0894158   0.0150022
6-24 months                   GMS-Nepal   NEPAL                          1                    NA                -0.0184420   -0.0392879   0.0024040
6-24 months                   JiVitA-3    BANGLADESH                     1                    NA                -0.0010766   -0.0034903   0.0013370
6-24 months                   MAL-ED      INDIA                          1                    NA                -0.0074392   -0.0474188   0.0325403
6-24 months                   MAL-ED      NEPAL                          1                    NA                -0.0176991   -0.0655155   0.0301172
6-24 months                   MAL-ED      PERU                           1                    NA                 0.0179561   -0.0057536   0.0416659
6-24 months                   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0502199   -0.0141555   0.1145954
6-24 months                   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0349206   -0.0255041   0.0953454


### Parameter: PAF


agecat                        studyid     country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          1                    NA                -0.0333194   -0.0700284   0.0021303
0-24 months (no birth wast)   JiVitA-3    BANGLADESH                     1                    NA                -0.0021721   -0.0153925   0.0108761
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     1                    NA                -0.0647273   -0.1694188   0.0305918
0-24 months (no birth wast)   MAL-ED      INDIA                          1                    NA                 0.0347967   -0.0820633   0.1390362
0-24 months (no birth wast)   MAL-ED      NEPAL                          1                    NA                -0.0917661   -0.3845115   0.1390804
0-24 months (no birth wast)   MAL-ED      PERU                           1                    NA                 0.2367021   -0.1657289   0.5002066
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0307894   -0.5492478   0.3936611
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1576923   -0.5426579   0.5400910
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          1                    NA                 0.0254440   -0.0599789   0.1039827
0-6 months (no birth wast)    JiVitA-3    BANGLADESH                     1                    NA                 0.0139724   -0.0100437   0.0374174
0-6 months (no birth wast)    MAL-ED      INDIA                          1                    NA                 0.2125000   -0.0424331   0.4050877
0-6 months (no birth wast)    MAL-ED      NEPAL                          1                    NA                -0.1200221   -0.7011560   0.2625900
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   1                    NA                -0.7670330   -2.1314677   0.0028939
6-24 months                   GMS-Nepal   NEPAL                          1                    NA                -0.0369659   -0.0797589   0.0041311
6-24 months                   JiVitA-3    BANGLADESH                     1                    NA                -0.0063919   -0.0208302   0.0078421
6-24 months                   MAL-ED      INDIA                          1                    NA                -0.0259132   -0.1750479   0.1042936
6-24 months                   MAL-ED      NEPAL                          1                    NA                -0.1111111   -0.4543451   0.1511176
6-24 months                   MAL-ED      PERU                           1                    NA                 0.2820168   -0.1711767   0.5598445
6-24 months                   MAL-ED      SOUTH AFRICA                   1                    NA                 0.3558442   -0.2866629   0.6775093
6-24 months                   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3055556   -0.4647664   0.6707645
