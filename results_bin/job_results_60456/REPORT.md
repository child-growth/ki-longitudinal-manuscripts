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

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

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




# Results Detail

## Results Plots
![](/tmp/3a2668fc-bac2-4c70-bb00-bacac67d2d09/a20f9b39-305a-47d5-82bb-43d5148f0ed0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3a2668fc-bac2-4c70-bb00-bacac67d2d09/a20f9b39-305a-47d5-82bb-43d5148f0ed0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3a2668fc-bac2-4c70-bb00-bacac67d2d09/a20f9b39-305a-47d5-82bb-43d5148f0ed0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3a2668fc-bac2-4c70-bb00-bacac67d2d09/a20f9b39-305a-47d5-82bb-43d5148f0ed0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          1                    NA                0.6103276   0.5611372   0.6595180
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          0                    NA                0.4859963   0.3736288   0.5983638
0-24 months (no birth wast)   JiVitA-3    BANGLADESH                     1                    NA                0.1734168   0.1664587   0.1803748
0-24 months (no birth wast)   JiVitA-3    BANGLADESH                     0                    NA                0.1778614   0.1548699   0.2008529
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     1                    NA                0.2400000   0.1806887   0.2993113
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     0                    NA                0.1590909   0.0507953   0.2673865
0-24 months (no birth wast)   MAL-ED      INDIA                          1                    NA                0.3750361   0.2969438   0.4531285
0-24 months (no birth wast)   MAL-ED      INDIA                          0                    NA                0.4151072   0.2909952   0.5392192
0-24 months (no birth wast)   MAL-ED      NEPAL                          1                    NA                0.2230545   0.1471493   0.2989596
0-24 months (no birth wast)   MAL-ED      NEPAL                          0                    NA                0.1958915   0.1241875   0.2675954
0-24 months (no birth wast)   MAL-ED      PERU                           1                    NA                0.0534304   0.0213149   0.0855460
0-24 months (no birth wast)   MAL-ED      PERU                           0                    NA                0.0950963   0.0340896   0.1561029
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   1                    NA                0.1551587   0.0681659   0.2421515
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   0                    NA                0.1614137   0.1099575   0.2128699
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1076923   0.0321596   0.1832250
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1363636   0.0820391   0.1906882
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          1                    NA                0.2129265   0.1708905   0.2549625
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          0                    NA                0.2386360   0.1383334   0.3389387
0-6 months (no birth wast)    JiVitA-3    BANGLADESH                     1                    NA                0.0725118   0.0673891   0.0776345
0-6 months (no birth wast)    JiVitA-3    BANGLADESH                     0                    NA                0.0839179   0.0662941   0.1015417
0-6 months (no birth wast)    MAL-ED      INDIA                          1                    NA                0.1214775   0.0694126   0.1735425
0-6 months (no birth wast)    MAL-ED      INDIA                          0                    NA                0.2426449   0.1322351   0.3530546
0-6 months (no birth wast)    MAL-ED      NEPAL                          1                    NA                0.0796460   0.0296154   0.1296766
0-6 months (no birth wast)    MAL-ED      NEPAL                          0                    NA                0.0625000   0.0175705   0.1074295
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   1                    NA                0.0857143   0.0200123   0.1514163
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   0                    NA                0.0353535   0.0095827   0.0611243
6-24 months                   GMS-Nepal   NEPAL                          1                    NA                0.5190706   0.4684102   0.5697311
6-24 months                   GMS-Nepal   NEPAL                          0                    NA                0.4172374   0.3045795   0.5298953
6-24 months                   JiVitA-3    BANGLADESH                     1                    NA                0.1693792   0.1610910   0.1776674
6-24 months                   JiVitA-3    BANGLADESH                     0                    NA                0.1586396   0.1317642   0.1855151
6-24 months                   MAL-ED      INDIA                          1                    NA                0.2934430   0.2188876   0.3679984
6-24 months                   MAL-ED      INDIA                          0                    NA                0.2611394   0.1496559   0.3726230
6-24 months                   MAL-ED      NEPAL                          1                    NA                0.1704874   0.1004472   0.2405276
6-24 months                   MAL-ED      NEPAL                          0                    NA                0.1459450   0.0802869   0.2116030
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
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          0                    1                 0.7962875   0.6241610   1.015882
0-24 months (no birth wast)   JiVitA-3    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-3    BANGLADESH                     0                    1                 1.0256299   0.8967560   1.173024
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     0                    1                 0.6628788   0.3213097   1.367554
0-24 months (no birth wast)   MAL-ED      INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      INDIA                          0                    1                 1.1068459   0.7678246   1.595557
0-24 months (no birth wast)   MAL-ED      NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      NEPAL                          0                    1                 0.8782227   0.5328577   1.447431
0-24 months (no birth wast)   MAL-ED      PERU                           1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      PERU                           0                    1                 1.7798141   0.7406068   4.277220
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   0                    1                 1.0403136   0.5462655   1.981184
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 1.2662338   0.5652023   2.836768
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          0                    1                 1.1207436   0.7043791   1.783225
0-6 months (no birth wast)    JiVitA-3    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-3    BANGLADESH                     0                    1                 1.1572998   0.9290098   1.441689
0-6 months (no birth wast)    MAL-ED      INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    MAL-ED      INDIA                          0                    1                 1.9974466   1.0664395   3.741228
0-6 months (no birth wast)    MAL-ED      NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    MAL-ED      NEPAL                          0                    1                 0.7847222   0.3020750   2.038530
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   0                    1                 0.4124579   0.1432147   1.187878
6-24 months                   GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal   NEPAL                          0                    1                 0.8038162   0.6032742   1.071023
6-24 months                   JiVitA-3    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-3    BANGLADESH                     0                    1                 0.9365945   0.7860128   1.116024
6-24 months                   MAL-ED      INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED      INDIA                          0                    1                 0.8899154   0.5412977   1.463057
6-24 months                   MAL-ED      NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED      NEPAL                          0                    1                 0.8560456   0.4649887   1.575982
6-24 months                   MAL-ED      PERU                           1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED      PERU                           0                    1                 2.1399457   0.8527742   5.369965
6-24 months                   MAL-ED      SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED      SOUTH AFRICA                   0                    1                 1.7527473   0.7609377   4.037286
6-24 months                   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 1.6285714   0.6348173   4.177966


### Parameter: PAR


agecat                        studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          1                    NA                -0.0209237   -0.0417528   -0.0000945
0-24 months (no birth wast)   JiVitA-3    BANGLADESH                     1                    NA                 0.0004050   -0.0018264    0.0026364
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     1                    NA                -0.0145902   -0.0371968    0.0080165
0-24 months (no birth wast)   MAL-ED      INDIA                          1                    NA                 0.0117563   -0.0311242    0.0546368
0-24 months (no birth wast)   MAL-ED      NEPAL                          1                    NA                -0.0204113   -0.0725523    0.0317297
0-24 months (no birth wast)   MAL-ED      PERU                           1                    NA                 0.0162560   -0.0072426    0.0397545
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0046926   -0.0702871    0.0796722
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0201616   -0.0452865    0.0856097
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          1                    NA                 0.0057523   -0.0121812    0.0236858
0-6 months (no birth wast)    JiVitA-3    BANGLADESH                     1                    NA                 0.0010387   -0.0006938    0.0027712
0-6 months (no birth wast)    MAL-ED      INDIA                          1                    NA                 0.0309034   -0.0039944    0.0658013
0-6 months (no birth wast)    MAL-ED      NEPAL                          1                    NA                -0.0085349   -0.0420262    0.0249564
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   1                    NA                -0.0372068   -0.0894158    0.0150022
6-24 months                   GMS-Nepal   NEPAL                          1                    NA                -0.0201793   -0.0410460    0.0006875
6-24 months                   JiVitA-3    BANGLADESH                     1                    NA                -0.0009450   -0.0033410    0.0014510
6-24 months                   MAL-ED      INDIA                          1                    NA                -0.0063617   -0.0467064    0.0339831
6-24 months                   MAL-ED      NEPAL                          1                    NA                -0.0111954   -0.0592831    0.0368924
6-24 months                   MAL-ED      PERU                           1                    NA                 0.0179561   -0.0057536    0.0416659
6-24 months                   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0502199   -0.0141555    0.1145954
6-24 months                   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0349206   -0.0255041    0.0953454


### Parameter: PAF


agecat                        studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          1                    NA                -0.0354997   -0.0716636   -0.0005561
0-24 months (no birth wast)   JiVitA-3    BANGLADESH                     1                    NA                 0.0023301   -0.0105854    0.0150806
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     1                    NA                -0.0647273   -0.1694188    0.0305918
0-24 months (no birth wast)   MAL-ED      INDIA                          1                    NA                 0.0303943   -0.0871286    0.1352126
0-24 months (no birth wast)   MAL-ED      NEPAL                          1                    NA                -0.1007253   -0.3904712    0.1286435
0-24 months (no birth wast)   MAL-ED      PERU                           1                    NA                 0.2332731   -0.1691829    0.4971957
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0293560   -0.5738847    0.4013858
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1576923   -0.5426579    0.5400910
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          1                    NA                 0.0263049   -0.0592063    0.1049126
0-6 months (no birth wast)    JiVitA-3    BANGLADESH                     1                    NA                 0.0141222   -0.0096515    0.0373360
0-6 months (no birth wast)    MAL-ED      INDIA                          1                    NA                 0.2028038   -0.0522177    0.3960168
0-6 months (no birth wast)    MAL-ED      NEPAL                          1                    NA                -0.1200221   -0.7011560    0.2625900
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   1                    NA                -0.7670330   -2.1314677    0.0028939
6-24 months                   GMS-Nepal   NEPAL                          1                    NA                -0.0404483   -0.0833070    0.0007149
6-24 months                   JiVitA-3    BANGLADESH                     1                    NA                -0.0056106   -0.0199434    0.0085208
6-24 months                   MAL-ED      INDIA                          1                    NA                -0.0221598   -0.1727394    0.1090854
6-24 months                   MAL-ED      NEPAL                          1                    NA                -0.0702819   -0.4181535    0.1922571
6-24 months                   MAL-ED      PERU                           1                    NA                 0.2820168   -0.1711767    0.5598445
6-24 months                   MAL-ED      SOUTH AFRICA                   1                    NA                 0.3558442   -0.2866629    0.6775093
6-24 months                   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3055556   -0.4647664    0.6707645
