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

**Intervention Variable:** predfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid         country                        predfeed36    ever_wasted   n_cell     n
----------------------------  --------------  -----------------------------  -----------  ------------  -------  ----
0-24 months (no birth wast)   EE              PAKISTAN                       1                       0        3     9
0-24 months (no birth wast)   EE              PAKISTAN                       1                       1        1     9
0-24 months (no birth wast)   EE              PAKISTAN                       0                       0        3     9
0-24 months (no birth wast)   EE              PAKISTAN                       0                       1        2     9
0-24 months (no birth wast)   GMS-Nepal       NEPAL                          1                       0      180   524
0-24 months (no birth wast)   GMS-Nepal       NEPAL                          1                       1      240   524
0-24 months (no birth wast)   GMS-Nepal       NEPAL                          0                       0       47   524
0-24 months (no birth wast)   GMS-Nepal       NEPAL                          0                       1       57   524
0-24 months (no birth wast)   LCNI-5          MALAWI                         1                       0       42   271
0-24 months (no birth wast)   LCNI-5          MALAWI                         1                       1        5   271
0-24 months (no birth wast)   LCNI-5          MALAWI                         0                       0      204   271
0-24 months (no birth wast)   LCNI-5          MALAWI                         0                       1       20   271
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     1                       0       64   251
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     1                       1       21   251
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     0                       0      130   251
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     0                       1       36   251
0-24 months (no birth wast)   MAL-ED          BRAZIL                         1                       0       29   224
0-24 months (no birth wast)   MAL-ED          BRAZIL                         1                       1        0   224
0-24 months (no birth wast)   MAL-ED          BRAZIL                         0                       0      182   224
0-24 months (no birth wast)   MAL-ED          BRAZIL                         0                       1       13   224
0-24 months (no birth wast)   MAL-ED          INDIA                          1                       0       13   234
0-24 months (no birth wast)   MAL-ED          INDIA                          1                       1        5   234
0-24 months (no birth wast)   MAL-ED          INDIA                          0                       0      132   234
0-24 months (no birth wast)   MAL-ED          INDIA                          0                       1       84   234
0-24 months (no birth wast)   MAL-ED          NEPAL                          1                       0        8   235
0-24 months (no birth wast)   MAL-ED          NEPAL                          1                       1        0   235
0-24 months (no birth wast)   MAL-ED          NEPAL                          0                       0      181   235
0-24 months (no birth wast)   MAL-ED          NEPAL                          0                       1       46   235
0-24 months (no birth wast)   MAL-ED          PERU                           1                       0       78   286
0-24 months (no birth wast)   MAL-ED          PERU                           1                       1        3   286
0-24 months (no birth wast)   MAL-ED          PERU                           0                       0      187   286
0-24 months (no birth wast)   MAL-ED          PERU                           0                       1       18   286
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   1                       0        6   276
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   1                       1        0   276
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   0                       0      225   276
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   0                       1       45   276
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        6   250
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0   250
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      211   250
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       33   250
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          1                       0        0   173
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          1                       1        0   173
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          0                       0      117   173
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          0                       1       56   173
0-6 months (no birth wast)    EE              PAKISTAN                       1                       0        3     9
0-6 months (no birth wast)    EE              PAKISTAN                       1                       1        1     9
0-6 months (no birth wast)    EE              PAKISTAN                       0                       0        4     9
0-6 months (no birth wast)    EE              PAKISTAN                       0                       1        1     9
0-6 months (no birth wast)    GMS-Nepal       NEPAL                          1                       0      318   510
0-6 months (no birth wast)    GMS-Nepal       NEPAL                          1                       1       92   510
0-6 months (no birth wast)    GMS-Nepal       NEPAL                          0                       0       75   510
0-6 months (no birth wast)    GMS-Nepal       NEPAL                          0                       1       25   510
0-6 months (no birth wast)    LCNI-5          MALAWI                         1                       0       47   268
0-6 months (no birth wast)    LCNI-5          MALAWI                         1                       1        0   268
0-6 months (no birth wast)    LCNI-5          MALAWI                         0                       0      221   268
0-6 months (no birth wast)    LCNI-5          MALAWI                         0                       1        0   268
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     1                       0       80   250
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     1                       1        5   250
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     0                       0      152   250
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     0                       1       13   250
0-6 months (no birth wast)    MAL-ED          BRAZIL                         1                       0       29   224
0-6 months (no birth wast)    MAL-ED          BRAZIL                         1                       1        0   224
0-6 months (no birth wast)    MAL-ED          BRAZIL                         0                       0      187   224
0-6 months (no birth wast)    MAL-ED          BRAZIL                         0                       1        8   224
0-6 months (no birth wast)    MAL-ED          INDIA                          1                       0       15   232
0-6 months (no birth wast)    MAL-ED          INDIA                          1                       1        3   232
0-6 months (no birth wast)    MAL-ED          INDIA                          0                       0      180   232
0-6 months (no birth wast)    MAL-ED          INDIA                          0                       1       34   232
0-6 months (no birth wast)    MAL-ED          NEPAL                          1                       0        8   233
0-6 months (no birth wast)    MAL-ED          NEPAL                          1                       1        0   233
0-6 months (no birth wast)    MAL-ED          NEPAL                          0                       0      209   233
0-6 months (no birth wast)    MAL-ED          NEPAL                          0                       1       16   233
0-6 months (no birth wast)    MAL-ED          PERU                           1                       0       79   286
0-6 months (no birth wast)    MAL-ED          PERU                           1                       1        2   286
0-6 months (no birth wast)    MAL-ED          PERU                           0                       0      202   286
0-6 months (no birth wast)    MAL-ED          PERU                           0                       1        3   286
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   1                       0        6   275
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   1                       1        0   275
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   0                       0      255   275
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   0                       1       14   275
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        6   250
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0   250
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      234   250
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       10   250
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          1                       0        0   137
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          1                       1        0   137
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          0                       0      137   137
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          0                       1        0   137
6-24 months                   EE              PAKISTAN                       1                       0        4     9
6-24 months                   EE              PAKISTAN                       1                       1        0     9
6-24 months                   EE              PAKISTAN                       0                       0        4     9
6-24 months                   EE              PAKISTAN                       0                       1        1     9
6-24 months                   GMS-Nepal       NEPAL                          1                       0      220   526
6-24 months                   GMS-Nepal       NEPAL                          1                       1      202   526
6-24 months                   GMS-Nepal       NEPAL                          0                       0       57   526
6-24 months                   GMS-Nepal       NEPAL                          0                       1       47   526
6-24 months                   LCNI-5          MALAWI                         1                       0       40   258
6-24 months                   LCNI-5          MALAWI                         1                       1        5   258
6-24 months                   LCNI-5          MALAWI                         0                       0      193   258
6-24 months                   LCNI-5          MALAWI                         0                       1       20   258
6-24 months                   MAL-ED          BANGLADESH                     1                       0       63   240
6-24 months                   MAL-ED          BANGLADESH                     1                       1       18   240
6-24 months                   MAL-ED          BANGLADESH                     0                       0      134   240
6-24 months                   MAL-ED          BANGLADESH                     0                       1       25   240
6-24 months                   MAL-ED          BRAZIL                         1                       0       25   207
6-24 months                   MAL-ED          BRAZIL                         1                       1        0   207
6-24 months                   MAL-ED          BRAZIL                         0                       0      176   207
6-24 months                   MAL-ED          BRAZIL                         0                       1        6   207
6-24 months                   MAL-ED          INDIA                          1                       0       15   232
6-24 months                   MAL-ED          INDIA                          1                       1        2   232
6-24 months                   MAL-ED          INDIA                          0                       0      153   232
6-24 months                   MAL-ED          INDIA                          0                       1       62   232
6-24 months                   MAL-ED          NEPAL                          1                       0        8   234
6-24 months                   MAL-ED          NEPAL                          1                       1        0   234
6-24 months                   MAL-ED          NEPAL                          0                       0      190   234
6-24 months                   MAL-ED          NEPAL                          0                       1       36   234
6-24 months                   MAL-ED          PERU                           1                       0       69   270
6-24 months                   MAL-ED          PERU                           1                       1        2   270
6-24 months                   MAL-ED          PERU                           0                       0      183   270
6-24 months                   MAL-ED          PERU                           0                       1       16   270
6-24 months                   MAL-ED          SOUTH AFRICA                   1                       0        4   256
6-24 months                   MAL-ED          SOUTH AFRICA                   1                       1        0   256
6-24 months                   MAL-ED          SOUTH AFRICA                   0                       0      215   256
6-24 months                   MAL-ED          SOUTH AFRICA                   0                       1       37   256
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        5   243
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0   243
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      211   243
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       27   243
6-24 months                   SAS-FoodSuppl   INDIA                          1                       0        0   177
6-24 months                   SAS-FoodSuppl   INDIA                          1                       1        0   177
6-24 months                   SAS-FoodSuppl   INDIA                          0                       0      121   177
6-24 months                   SAS-FoodSuppl   INDIA                          0                       1       56   177


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
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/9085a6d5-a9e3-4b63-ab3e-1f8839c1b5ac/9219d44c-ff0b-472b-9f39-b899626f4ebe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9085a6d5-a9e3-4b63-ab3e-1f8839c1b5ac/9219d44c-ff0b-472b-9f39-b899626f4ebe/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9085a6d5-a9e3-4b63-ab3e-1f8839c1b5ac/9219d44c-ff0b-472b-9f39-b899626f4ebe/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9085a6d5-a9e3-4b63-ab3e-1f8839c1b5ac/9219d44c-ff0b-472b-9f39-b899626f4ebe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                0.5714286   0.5240556   0.6188016
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    NA                0.5480769   0.4523356   0.6438182
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   LCNI-5      MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                0.2470588   0.1551862   0.3389315
0-24 months (no birth wast)   MAL-ED      BANGLADESH   0                    NA                0.2168675   0.1540507   0.2796843
0-24 months (no birth wast)   MAL-ED      INDIA        1                    NA                0.2777778   0.0704173   0.4851383
0-24 months (no birth wast)   MAL-ED      INDIA        0                    NA                0.3888889   0.3237374   0.4540403
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                0.2243902   0.1839693   0.2648111
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    NA                0.2500000   0.1650477   0.3349523
0-6 months (no birth wast)    MAL-ED      BANGLADESH   1                    NA                0.0588235   0.0087025   0.1089446
0-6 months (no birth wast)    MAL-ED      BANGLADESH   0                    NA                0.0787879   0.0375984   0.1199773
6-24 months                   GMS-Nepal   NEPAL        1                    NA                0.4786730   0.4309663   0.5263797
6-24 months                   GMS-Nepal   NEPAL        0                    NA                0.4519231   0.3561821   0.5476640
6-24 months                   LCNI-5      MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   LCNI-5      MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   MAL-ED      BANGLADESH   1                    NA                0.2222222   0.1314958   0.3129486
6-24 months                   MAL-ED      BANGLADESH   0                    NA                0.1572327   0.1005329   0.2139325


### Parameter: E(Y)


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        NA                   NA                0.5667939   0.5243264   0.6092614
0-24 months (no birth wast)   LCNI-5      MALAWI       NA                   NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   MAL-ED      BANGLADESH   NA                   NA                0.2270916   0.1751587   0.2790245
0-24 months (no birth wast)   MAL-ED      INDIA        NA                   NA                0.3803419   0.3180067   0.4426771
0-6 months (no birth wast)    GMS-Nepal   NEPAL        NA                   NA                0.2294118   0.1928853   0.2659383
0-6 months (no birth wast)    MAL-ED      BANGLADESH   NA                   NA                0.0720000   0.0398938   0.1041062
6-24 months                   GMS-Nepal   NEPAL        NA                   NA                0.4733840   0.4306748   0.5160933
6-24 months                   LCNI-5      MALAWI       NA                   NA                0.0968992   0.0607324   0.1330660
6-24 months                   MAL-ED      BANGLADESH   NA                   NA                0.1791667   0.1305478   0.2277856


### Parameter: RR


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    1                 0.9591346   0.7905047   1.163736
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   LCNI-5      MALAWI       0                    1                 0.8392857   0.3311837   2.126918
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      BANGLADESH   0                    1                 0.8777969   0.5478772   1.406387
0-24 months (no birth wast)   MAL-ED      INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      INDIA        0                    1                 1.4000000   0.6514245   3.008790
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    1                 1.1141304   0.7584119   1.636692
0-6 months (no birth wast)    MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    MAL-ED      BANGLADESH   0                    1                 1.3393939   0.4929054   3.639595
6-24 months                   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal   NEPAL        0                    1                 0.9441165   0.7470445   1.193177
6-24 months                   LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   LCNI-5      MALAWI       0                    1                 0.8450704   0.3342527   2.136539
6-24 months                   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED      BANGLADESH   0                    1                 0.7075472   0.4103789   1.219904


### Parameter: PAR


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                -0.0046347   -0.0258507   0.0165813
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    NA                -0.0141321   -0.0934107   0.0651466
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                -0.0199672   -0.0935938   0.0536594
0-24 months (no birth wast)   MAL-ED      INDIA        1                    NA                 0.1025641   -0.0981070   0.3032352
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0050215   -0.0134464   0.0234894
0-6 months (no birth wast)    MAL-ED      BANGLADESH   1                    NA                 0.0131765   -0.0296567   0.0560097
6-24 months                   GMS-Nepal   NEPAL        1                    NA                -0.0052890   -0.0264582   0.0158803
6-24 months                   LCNI-5      MALAWI       1                    NA                -0.0142119   -0.0967920   0.0683682
6-24 months                   MAL-ED      BANGLADESH   1                    NA                -0.0430556   -0.1140412   0.0279301


### Parameter: PAF


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                -0.0081770   -0.0463207   0.0285762
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    NA                -0.1531915   -1.4265796   0.4519650
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                -0.0879257   -0.4653272   0.1922744
0-24 months (no birth wast)   MAL-ED      INDIA        1                    NA                 0.2696629   -0.5036640   0.6452716
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0218887   -0.0619836   0.0991370
0-6 months (no birth wast)    MAL-ED      BANGLADESH   1                    NA                 0.1830065   -0.6820838   0.6031837
6-24 months                   GMS-Nepal   NEPAL        1                    NA                -0.0111727   -0.0569050   0.0325809
6-24 months                   LCNI-5      MALAWI       1                    NA                -0.1466667   -1.4083049   0.4540374
6-24 months                   MAL-ED      BANGLADESH   1                    NA                -0.2403101   -0.7037074   0.0970462
