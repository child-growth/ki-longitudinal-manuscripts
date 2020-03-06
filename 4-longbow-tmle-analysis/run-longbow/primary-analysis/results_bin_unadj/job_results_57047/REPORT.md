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

**Intervention Variable:** predfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid         country                        predfeed6    ever_wasted   n_cell     n
----------------------------  --------------  -----------------------------  ----------  ------------  -------  ----
0-24 months (no birth wast)   EE              PAKISTAN                       1                      0       21    48
0-24 months (no birth wast)   EE              PAKISTAN                       1                      1       22    48
0-24 months (no birth wast)   EE              PAKISTAN                       0                      0        3    48
0-24 months (no birth wast)   EE              PAKISTAN                       0                      1        2    48
0-24 months (no birth wast)   GMS-Nepal       NEPAL                          1                      0      176   560
0-24 months (no birth wast)   GMS-Nepal       NEPAL                          1                      1      241   560
0-24 months (no birth wast)   GMS-Nepal       NEPAL                          0                      0       66   560
0-24 months (no birth wast)   GMS-Nepal       NEPAL                          0                      1       77   560
0-24 months (no birth wast)   LCNI-5          MALAWI                         1                      0       42   271
0-24 months (no birth wast)   LCNI-5          MALAWI                         1                      1        5   271
0-24 months (no birth wast)   LCNI-5          MALAWI                         0                      0      204   271
0-24 months (no birth wast)   LCNI-5          MALAWI                         0                      1       20   271
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     1                      0       62   233
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     1                      1       23   233
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     0                      0      116   233
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     0                      1       32   233
0-24 months (no birth wast)   MAL-ED          BRAZIL                         1                      0       29   210
0-24 months (no birth wast)   MAL-ED          BRAZIL                         1                      1        1   210
0-24 months (no birth wast)   MAL-ED          BRAZIL                         0                      0      168   210
0-24 months (no birth wast)   MAL-ED          BRAZIL                         0                      1       12   210
0-24 months (no birth wast)   MAL-ED          INDIA                          1                      0       10   216
0-24 months (no birth wast)   MAL-ED          INDIA                          1                      1        1   216
0-24 months (no birth wast)   MAL-ED          INDIA                          0                      0      126   216
0-24 months (no birth wast)   MAL-ED          INDIA                          0                      1       79   216
0-24 months (no birth wast)   MAL-ED          NEPAL                          1                      0       10   225
0-24 months (no birth wast)   MAL-ED          NEPAL                          1                      1        2   225
0-24 months (no birth wast)   MAL-ED          NEPAL                          0                      0      169   225
0-24 months (no birth wast)   MAL-ED          NEPAL                          0                      1       44   225
0-24 months (no birth wast)   MAL-ED          PERU                           1                      0       87   271
0-24 months (no birth wast)   MAL-ED          PERU                           1                      1        5   271
0-24 months (no birth wast)   MAL-ED          PERU                           0                      0      163   271
0-24 months (no birth wast)   MAL-ED          PERU                           0                      1       16   271
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   1                      0        3   237
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   1                      1        0   237
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   0                      0      193   237
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   0                      1       41   237
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1   235
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0   235
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      201   235
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       33   235
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          1                      0        0   173
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          1                      1        0   173
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          0                      0      117   173
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          0                      1       56   173
0-6 months (no birth wast)    EE              PAKISTAN                       1                      0       36    47
0-6 months (no birth wast)    EE              PAKISTAN                       1                      1        6    47
0-6 months (no birth wast)    EE              PAKISTAN                       0                      0        4    47
0-6 months (no birth wast)    EE              PAKISTAN                       0                      1        1    47
0-6 months (no birth wast)    GMS-Nepal       NEPAL                          1                      0      320   544
0-6 months (no birth wast)    GMS-Nepal       NEPAL                          1                      1       86   544
0-6 months (no birth wast)    GMS-Nepal       NEPAL                          0                      0      105   544
0-6 months (no birth wast)    GMS-Nepal       NEPAL                          0                      1       33   544
0-6 months (no birth wast)    LCNI-5          MALAWI                         1                      0       47   268
0-6 months (no birth wast)    LCNI-5          MALAWI                         1                      1        0   268
0-6 months (no birth wast)    LCNI-5          MALAWI                         0                      0      221   268
0-6 months (no birth wast)    LCNI-5          MALAWI                         0                      1        0   268
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     1                      0       79   232
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     1                      1        6   232
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     0                      0      135   232
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     0                      1       12   232
0-6 months (no birth wast)    MAL-ED          BRAZIL                         1                      0       29   210
0-6 months (no birth wast)    MAL-ED          BRAZIL                         1                      1        1   210
0-6 months (no birth wast)    MAL-ED          BRAZIL                         0                      0      173   210
0-6 months (no birth wast)    MAL-ED          BRAZIL                         0                      1        7   210
0-6 months (no birth wast)    MAL-ED          INDIA                          1                      0       11   215
0-6 months (no birth wast)    MAL-ED          INDIA                          1                      1        0   215
0-6 months (no birth wast)    MAL-ED          INDIA                          0                      0      172   215
0-6 months (no birth wast)    MAL-ED          INDIA                          0                      1       32   215
0-6 months (no birth wast)    MAL-ED          NEPAL                          1                      0       12   223
0-6 months (no birth wast)    MAL-ED          NEPAL                          1                      1        0   223
0-6 months (no birth wast)    MAL-ED          NEPAL                          0                      0      195   223
0-6 months (no birth wast)    MAL-ED          NEPAL                          0                      1       16   223
0-6 months (no birth wast)    MAL-ED          PERU                           1                      0       90   271
0-6 months (no birth wast)    MAL-ED          PERU                           1                      1        2   271
0-6 months (no birth wast)    MAL-ED          PERU                           0                      0      176   271
0-6 months (no birth wast)    MAL-ED          PERU                           0                      1        3   271
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   1                      0        3   236
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   1                      1        0   236
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   0                      0      220   236
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   0                      1       13   236
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1   235
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0   235
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      224   235
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       10   235
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          1                      0        0   137
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          1                      1        0   137
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          0                      0      137   137
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          0                      1        0   137
6-24 months                   EE              PAKISTAN                       1                      0       25    47
6-24 months                   EE              PAKISTAN                       1                      1       17    47
6-24 months                   EE              PAKISTAN                       0                      0        4    47
6-24 months                   EE              PAKISTAN                       0                      1        1    47
6-24 months                   GMS-Nepal       NEPAL                          1                      0      211   557
6-24 months                   GMS-Nepal       NEPAL                          1                      1      204   557
6-24 months                   GMS-Nepal       NEPAL                          0                      0       77   557
6-24 months                   GMS-Nepal       NEPAL                          0                      1       65   557
6-24 months                   LCNI-5          MALAWI                         1                      0       40   258
6-24 months                   LCNI-5          MALAWI                         1                      1        5   258
6-24 months                   LCNI-5          MALAWI                         0                      0      193   258
6-24 months                   LCNI-5          MALAWI                         0                      1       20   258
6-24 months                   MAL-ED          BANGLADESH                     1                      0       65   230
6-24 months                   MAL-ED          BANGLADESH                     1                      1       19   230
6-24 months                   MAL-ED          BANGLADESH                     0                      0      124   230
6-24 months                   MAL-ED          BANGLADESH                     0                      1       22   230
6-24 months                   MAL-ED          BRAZIL                         1                      0       30   207
6-24 months                   MAL-ED          BRAZIL                         1                      1        0   207
6-24 months                   MAL-ED          BRAZIL                         0                      0      171   207
6-24 months                   MAL-ED          BRAZIL                         0                      1        6   207
6-24 months                   MAL-ED          INDIA                          1                      0       10   217
6-24 months                   MAL-ED          INDIA                          1                      1        1   217
6-24 months                   MAL-ED          INDIA                          0                      0      148   217
6-24 months                   MAL-ED          INDIA                          0                      1       58   217
6-24 months                   MAL-ED          NEPAL                          1                      0       10   224
6-24 months                   MAL-ED          NEPAL                          1                      1        2   224
6-24 months                   MAL-ED          NEPAL                          0                      0      178   224
6-24 months                   MAL-ED          NEPAL                          0                      1       34   224
6-24 months                   MAL-ED          PERU                           1                      0       87   269
6-24 months                   MAL-ED          PERU                           1                      1        4   269
6-24 months                   MAL-ED          PERU                           0                      0      164   269
6-24 months                   MAL-ED          PERU                           0                      1       14   269
6-24 months                   MAL-ED          SOUTH AFRICA                   1                      0        3   235
6-24 months                   MAL-ED          SOUTH AFRICA                   1                      1        0   235
6-24 months                   MAL-ED          SOUTH AFRICA                   0                      0      198   235
6-24 months                   MAL-ED          SOUTH AFRICA                   0                      1       34   235
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1   231
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0   231
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      203   231
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       27   231
6-24 months                   SAS-FoodSuppl   INDIA                          1                      0        0   177
6-24 months                   SAS-FoodSuppl   INDIA                          1                      1        0   177
6-24 months                   SAS-FoodSuppl   INDIA                          0                      0      121   177
6-24 months                   SAS-FoodSuppl   INDIA                          0                      1       56   177


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
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
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
![](/tmp/b11be58b-a02d-4089-886d-1818b434db59/e9d38f51-02b5-4203-a2f1-028f7023294d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b11be58b-a02d-4089-886d-1818b434db59/e9d38f51-02b5-4203-a2f1-028f7023294d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b11be58b-a02d-4089-886d-1818b434db59/e9d38f51-02b5-4203-a2f1-028f7023294d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b11be58b-a02d-4089-886d-1818b434db59/e9d38f51-02b5-4203-a2f1-028f7023294d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                0.5779376   0.5304919   0.6253834
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    NA                0.5384615   0.4566811   0.6202420
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   LCNI-5      MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                0.2705882   0.1759398   0.3652367
0-24 months (no birth wast)   MAL-ED      BANGLADESH   0                    NA                0.2162162   0.1497511   0.2826813
0-24 months (no birth wast)   MAL-ED      PERU         1                    NA                0.0543478   0.0079376   0.1007581
0-24 months (no birth wast)   MAL-ED      PERU         0                    NA                0.0893855   0.0475133   0.1312576
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                0.2118227   0.1720410   0.2516043
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    NA                0.2391304   0.1678975   0.3103633
0-6 months (no birth wast)    MAL-ED      BANGLADESH   1                    NA                0.0705882   0.0160191   0.1251573
0-6 months (no birth wast)    MAL-ED      BANGLADESH   0                    NA                0.0816327   0.0372751   0.1259902
6-24 months                   GMS-Nepal   NEPAL        1                    NA                0.4915663   0.4434245   0.5397081
6-24 months                   GMS-Nepal   NEPAL        0                    NA                0.4577465   0.3757287   0.5397642
6-24 months                   LCNI-5      MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   LCNI-5      MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   MAL-ED      BANGLADESH   1                    NA                0.2261905   0.1365284   0.3158526
6-24 months                   MAL-ED      BANGLADESH   0                    NA                0.1506849   0.0925299   0.2088399


### Parameter: E(Y)


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        NA                   NA                0.5678571   0.5267918   0.6089225
0-24 months (no birth wast)   LCNI-5      MALAWI       NA                   NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   MAL-ED      BANGLADESH   NA                   NA                0.2360515   0.1814079   0.2906951
0-24 months (no birth wast)   MAL-ED      PERU         NA                   NA                0.0774908   0.0455992   0.1093824
0-6 months (no birth wast)    GMS-Nepal   NEPAL        NA                   NA                0.2187500   0.1839790   0.2535210
0-6 months (no birth wast)    MAL-ED      BANGLADESH   NA                   NA                0.0775862   0.0430879   0.1120845
6-24 months                   GMS-Nepal   NEPAL        NA                   NA                0.4829443   0.4414080   0.5244807
6-24 months                   LCNI-5      MALAWI       NA                   NA                0.0968992   0.0607324   0.1330660
6-24 months                   MAL-ED      BANGLADESH   NA                   NA                0.1782609   0.1286901   0.2278316


### Parameter: RR


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    1                 0.9316949   0.7839614   1.107268
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   LCNI-5      MALAWI       0                    1                 0.8392857   0.3311837   2.126918
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      BANGLADESH   0                    1                 0.7990599   0.5015824   1.272965
0-24 months (no birth wast)   MAL-ED      PERU         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      PERU         0                    1                 1.6446927   0.6209888   4.355979
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    1                 1.1289181   0.7938312   1.605450
0-6 months (no birth wast)    MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    MAL-ED      BANGLADESH   0                    1                 1.1564626   0.4495261   2.975146
6-24 months                   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal   NEPAL        0                    1                 0.9311999   0.7592100   1.142152
6-24 months                   LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   LCNI-5      MALAWI       0                    1                 0.8450704   0.3342527   2.136539
6-24 months                   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED      BANGLADESH   0                    1                 0.6661860   0.3831101   1.158424


### Parameter: PAR


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                -0.0100805   -0.0342659   0.0141049
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    NA                -0.0141321   -0.0934107   0.0651466
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                -0.0345367   -0.1080768   0.0390033
0-24 months (no birth wast)   MAL-ED      PERU         1                    NA                 0.0231429   -0.0181917   0.0644776
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0069273   -0.0137939   0.0276486
0-6 months (no birth wast)    MAL-ED      BANGLADESH   1                    NA                 0.0069980   -0.0375657   0.0515616
6-24 months                   GMS-Nepal   NEPAL        1                    NA                -0.0086219   -0.0328981   0.0156543
6-24 months                   LCNI-5      MALAWI       1                    NA                -0.0142119   -0.0967920   0.0683682
6-24 months                   MAL-ED      BANGLADESH   1                    NA                -0.0479296   -0.1159323   0.0200731


### Parameter: PAF


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                -0.0177518   -0.0612800   0.0239910
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    NA                -0.1531915   -1.4265796   0.4519650
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                -0.1463102   -0.5035934   0.1260756
0-24 months (no birth wast)   MAL-ED      PERU         1                    NA                 0.2986542   -0.4737013   0.6662242
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0316678   -0.0677783   0.1218522
0-6 months (no birth wast)    MAL-ED      BANGLADESH   1                    NA                 0.0901961   -0.7082806   0.5154524
6-24 months                   GMS-Nepal   NEPAL        1                    NA                -0.0178528   -0.0694040   0.0312133
6-24 months                   LCNI-5      MALAWI       1                    NA                -0.1466667   -1.4083049   0.4540374
6-24 months                   MAL-ED      BANGLADESH   1                    NA                -0.2688734   -0.7094406   0.0581482
