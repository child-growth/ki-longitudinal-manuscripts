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

**Intervention Variable:** predfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid         country                        predfeed36    ever_swasted   n_cell     n
----------------------------  --------------  -----------------------------  -----------  -------------  -------  ----
0-24 months (no birth wast)   EE              PAKISTAN                       1                        0        4     9
0-24 months (no birth wast)   EE              PAKISTAN                       1                        1        0     9
0-24 months (no birth wast)   EE              PAKISTAN                       0                        0        4     9
0-24 months (no birth wast)   EE              PAKISTAN                       0                        1        1     9
0-24 months (no birth wast)   GMS-Nepal       NEPAL                          1                        0      330   524
0-24 months (no birth wast)   GMS-Nepal       NEPAL                          1                        1       90   524
0-24 months (no birth wast)   GMS-Nepal       NEPAL                          0                        0       74   524
0-24 months (no birth wast)   GMS-Nepal       NEPAL                          0                        1       30   524
0-24 months (no birth wast)   LCNI-5          MALAWI                         1                        0       47   271
0-24 months (no birth wast)   LCNI-5          MALAWI                         1                        1        0   271
0-24 months (no birth wast)   LCNI-5          MALAWI                         0                        0      222   271
0-24 months (no birth wast)   LCNI-5          MALAWI                         0                        1        2   271
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     1                        0       80   251
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     1                        1        5   251
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     0                        0      159   251
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     0                        1        7   251
0-24 months (no birth wast)   MAL-ED          BRAZIL                         1                        0       29   224
0-24 months (no birth wast)   MAL-ED          BRAZIL                         1                        1        0   224
0-24 months (no birth wast)   MAL-ED          BRAZIL                         0                        0      191   224
0-24 months (no birth wast)   MAL-ED          BRAZIL                         0                        1        4   224
0-24 months (no birth wast)   MAL-ED          INDIA                          1                        0       17   234
0-24 months (no birth wast)   MAL-ED          INDIA                          1                        1        1   234
0-24 months (no birth wast)   MAL-ED          INDIA                          0                        0      204   234
0-24 months (no birth wast)   MAL-ED          INDIA                          0                        1       12   234
0-24 months (no birth wast)   MAL-ED          NEPAL                          1                        0        8   235
0-24 months (no birth wast)   MAL-ED          NEPAL                          1                        1        0   235
0-24 months (no birth wast)   MAL-ED          NEPAL                          0                        0      224   235
0-24 months (no birth wast)   MAL-ED          NEPAL                          0                        1        3   235
0-24 months (no birth wast)   MAL-ED          PERU                           1                        0       80   286
0-24 months (no birth wast)   MAL-ED          PERU                           1                        1        1   286
0-24 months (no birth wast)   MAL-ED          PERU                           0                        0      202   286
0-24 months (no birth wast)   MAL-ED          PERU                           0                        1        3   286
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   1                        0        6   276
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   1                        1        0   276
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   0                        0      258   276
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   0                        1       12   276
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        6   250
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0   250
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      236   250
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        8   250
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          1                        0        0   173
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          1                        1        0   173
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          0                        0      159   173
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          0                        1       14   173
0-6 months (no birth wast)    EE              PAKISTAN                       1                        0        4     9
0-6 months (no birth wast)    EE              PAKISTAN                       1                        1        0     9
0-6 months (no birth wast)    EE              PAKISTAN                       0                        0        4     9
0-6 months (no birth wast)    EE              PAKISTAN                       0                        1        1     9
0-6 months (no birth wast)    GMS-Nepal       NEPAL                          1                        0      389   510
0-6 months (no birth wast)    GMS-Nepal       NEPAL                          1                        1       21   510
0-6 months (no birth wast)    GMS-Nepal       NEPAL                          0                        0       92   510
0-6 months (no birth wast)    GMS-Nepal       NEPAL                          0                        1        8   510
0-6 months (no birth wast)    LCNI-5          MALAWI                         1                        0       47   268
0-6 months (no birth wast)    LCNI-5          MALAWI                         1                        1        0   268
0-6 months (no birth wast)    LCNI-5          MALAWI                         0                        0      221   268
0-6 months (no birth wast)    LCNI-5          MALAWI                         0                        1        0   268
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     1                        0       82   250
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     1                        1        3   250
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     0                        0      161   250
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     0                        1        4   250
0-6 months (no birth wast)    MAL-ED          BRAZIL                         1                        0       29   224
0-6 months (no birth wast)    MAL-ED          BRAZIL                         1                        1        0   224
0-6 months (no birth wast)    MAL-ED          BRAZIL                         0                        0      192   224
0-6 months (no birth wast)    MAL-ED          BRAZIL                         0                        1        3   224
0-6 months (no birth wast)    MAL-ED          INDIA                          1                        0       17   232
0-6 months (no birth wast)    MAL-ED          INDIA                          1                        1        1   232
0-6 months (no birth wast)    MAL-ED          INDIA                          0                        0      208   232
0-6 months (no birth wast)    MAL-ED          INDIA                          0                        1        6   232
0-6 months (no birth wast)    MAL-ED          NEPAL                          1                        0        8   233
0-6 months (no birth wast)    MAL-ED          NEPAL                          1                        1        0   233
0-6 months (no birth wast)    MAL-ED          NEPAL                          0                        0      224   233
0-6 months (no birth wast)    MAL-ED          NEPAL                          0                        1        1   233
0-6 months (no birth wast)    MAL-ED          PERU                           1                        0       80   286
0-6 months (no birth wast)    MAL-ED          PERU                           1                        1        1   286
0-6 months (no birth wast)    MAL-ED          PERU                           0                        0      205   286
0-6 months (no birth wast)    MAL-ED          PERU                           0                        1        0   286
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   1                        0        6   275
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   1                        1        0   275
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   0                        0      266   275
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   0                        1        3   275
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        6   250
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0   250
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      241   250
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        3   250
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          1                        0        0   137
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          1                        1        0   137
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          0                        0      137   137
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          0                        1        0   137
6-24 months                   EE              PAKISTAN                       1                        0        4     9
6-24 months                   EE              PAKISTAN                       1                        1        0     9
6-24 months                   EE              PAKISTAN                       0                        0        5     9
6-24 months                   EE              PAKISTAN                       0                        1        0     9
6-24 months                   GMS-Nepal       NEPAL                          1                        0      347   526
6-24 months                   GMS-Nepal       NEPAL                          1                        1       75   526
6-24 months                   GMS-Nepal       NEPAL                          0                        0       78   526
6-24 months                   GMS-Nepal       NEPAL                          0                        1       26   526
6-24 months                   LCNI-5          MALAWI                         1                        0       45   258
6-24 months                   LCNI-5          MALAWI                         1                        1        0   258
6-24 months                   LCNI-5          MALAWI                         0                        0      211   258
6-24 months                   LCNI-5          MALAWI                         0                        1        2   258
6-24 months                   MAL-ED          BANGLADESH                     1                        0       79   240
6-24 months                   MAL-ED          BANGLADESH                     1                        1        2   240
6-24 months                   MAL-ED          BANGLADESH                     0                        0      156   240
6-24 months                   MAL-ED          BANGLADESH                     0                        1        3   240
6-24 months                   MAL-ED          BRAZIL                         1                        0       25   207
6-24 months                   MAL-ED          BRAZIL                         1                        1        0   207
6-24 months                   MAL-ED          BRAZIL                         0                        0      181   207
6-24 months                   MAL-ED          BRAZIL                         0                        1        1   207
6-24 months                   MAL-ED          INDIA                          1                        0       17   232
6-24 months                   MAL-ED          INDIA                          1                        1        0   232
6-24 months                   MAL-ED          INDIA                          0                        0      209   232
6-24 months                   MAL-ED          INDIA                          0                        1        6   232
6-24 months                   MAL-ED          NEPAL                          1                        0        8   234
6-24 months                   MAL-ED          NEPAL                          1                        1        0   234
6-24 months                   MAL-ED          NEPAL                          0                        0      224   234
6-24 months                   MAL-ED          NEPAL                          0                        1        2   234
6-24 months                   MAL-ED          PERU                           1                        0       71   270
6-24 months                   MAL-ED          PERU                           1                        1        0   270
6-24 months                   MAL-ED          PERU                           0                        0      196   270
6-24 months                   MAL-ED          PERU                           0                        1        3   270
6-24 months                   MAL-ED          SOUTH AFRICA                   1                        0        4   256
6-24 months                   MAL-ED          SOUTH AFRICA                   1                        1        0   256
6-24 months                   MAL-ED          SOUTH AFRICA                   0                        0      242   256
6-24 months                   MAL-ED          SOUTH AFRICA                   0                        1       10   256
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        5   243
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0   243
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      233   243
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        5   243
6-24 months                   SAS-FoodSuppl   INDIA                          1                        0        0   177
6-24 months                   SAS-FoodSuppl   INDIA                          1                        1        0   177
6-24 months                   SAS-FoodSuppl   INDIA                          0                        0      156   177
6-24 months                   SAS-FoodSuppl   INDIA                          0                        1       21   177


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

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
![](/tmp/c714828b-e085-4ef6-82b0-5554b58c4f87/894c53e4-5d89-4634-a6f3-d7286a458301/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c714828b-e085-4ef6-82b0-5554b58c4f87/894c53e4-5d89-4634-a6f3-d7286a458301/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c714828b-e085-4ef6-82b0-5554b58c4f87/894c53e4-5d89-4634-a6f3-d7286a458301/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c714828b-e085-4ef6-82b0-5554b58c4f87/894c53e4-5d89-4634-a6f3-d7286a458301/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                0.2142857   0.1750061   0.2535653
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    NA                0.2884615   0.2013071   0.3756159
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                0.0588235   0.0087029   0.1089442
0-24 months (no birth wast)   MAL-ED      BANGLADESH   0                    NA                0.0421687   0.0115349   0.0728024
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                0.0512195   0.0298604   0.0725786
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    NA                0.0800000   0.0267753   0.1332247
6-24 months                   GMS-Nepal   NEPAL        1                    NA                0.1777251   0.1412171   0.2142331
6-24 months                   GMS-Nepal   NEPAL        0                    NA                0.2500000   0.1666999   0.3333001


### Parameter: E(Y)


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        NA                   NA                0.2290076   0.1929956   0.2650196
0-24 months (no birth wast)   MAL-ED      BANGLADESH   NA                   NA                0.0478088   0.0213607   0.0742568
0-6 months (no birth wast)    GMS-Nepal   NEPAL        NA                   NA                0.0568627   0.0367445   0.0769810
6-24 months                   GMS-Nepal   NEPAL        NA                   NA                0.1920152   0.1583224   0.2257081


### Parameter: RR


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    1                 1.3461538   0.9454057   1.916775
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      BANGLADESH   0                    1                 0.7168675   0.2339692   2.196439
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    1                 1.5619048   0.7122754   3.425005
6-24 months                   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal   NEPAL        0                    1                 1.4066667   0.9510304   2.080597


### Parameter: PAR


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                 0.0147219   -0.0044202   0.0338640
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                -0.0110148   -0.0498757   0.0278462
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0056432   -0.0056457   0.0169322
6-24 months                   GMS-Nepal   NEPAL        1                    NA                 0.0142901   -0.0038600   0.0324402


### Parameter: PAF


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                 0.0642857   -0.0228513   0.1439995
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                -0.2303922   -1.3650799   0.3599096
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0992431   -0.1193952   0.2751773
6-24 months                   GMS-Nepal   NEPAL        1                    NA                 0.0744217   -0.0245371   0.1638221
