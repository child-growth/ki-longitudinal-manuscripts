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

**Intervention Variable:** predfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid         country                        predfeed36    pers_wast   n_cell      n
------------  --------------  -----------------------------  -----------  ----------  -------  -----
0-24 months   EE              PAKISTAN                       1                     0        4      9
0-24 months   EE              PAKISTAN                       1                     1        0      9
0-24 months   EE              PAKISTAN                       0                     0        5      9
0-24 months   EE              PAKISTAN                       0                     1        0      9
0-24 months   GMS-Nepal       NEPAL                          1                     0      369    528
0-24 months   GMS-Nepal       NEPAL                          1                     1       54    528
0-24 months   GMS-Nepal       NEPAL                          0                     0       90    528
0-24 months   GMS-Nepal       NEPAL                          0                     1       15    528
0-24 months   JiVitA-3        BANGLADESH                     1                     0     5971   8221
0-24 months   JiVitA-3        BANGLADESH                     1                     1      363   8221
0-24 months   JiVitA-3        BANGLADESH                     0                     0     1774   8221
0-24 months   JiVitA-3        BANGLADESH                     0                     1      113   8221
0-24 months   JiVitA-4        BANGLADESH                     1                     0     3243   4495
0-24 months   JiVitA-4        BANGLADESH                     1                     1      252   4495
0-24 months   JiVitA-4        BANGLADESH                     0                     0      896   4495
0-24 months   JiVitA-4        BANGLADESH                     0                     1      104   4495
0-24 months   LCNI-5          MALAWI                         1                     0       42    240
0-24 months   LCNI-5          MALAWI                         1                     1        0    240
0-24 months   LCNI-5          MALAWI                         0                     0      195    240
0-24 months   LCNI-5          MALAWI                         0                     1        3    240
0-24 months   MAL-ED          BANGLADESH                     1                     0       81    247
0-24 months   MAL-ED          BANGLADESH                     1                     1        3    247
0-24 months   MAL-ED          BANGLADESH                     0                     0      153    247
0-24 months   MAL-ED          BANGLADESH                     0                     1       10    247
0-24 months   MAL-ED          BRAZIL                         1                     0       27    217
0-24 months   MAL-ED          BRAZIL                         1                     1        0    217
0-24 months   MAL-ED          BRAZIL                         0                     0      188    217
0-24 months   MAL-ED          BRAZIL                         0                     1        2    217
0-24 months   MAL-ED          INDIA                          1                     0       16    238
0-24 months   MAL-ED          INDIA                          1                     1        1    238
0-24 months   MAL-ED          INDIA                          0                     0      201    238
0-24 months   MAL-ED          INDIA                          0                     1       20    238
0-24 months   MAL-ED          NEPAL                          1                     0        8    236
0-24 months   MAL-ED          NEPAL                          1                     1        1    236
0-24 months   MAL-ED          NEPAL                          0                     0      224    236
0-24 months   MAL-ED          NEPAL                          0                     1        3    236
0-24 months   MAL-ED          PERU                           1                     0       78    282
0-24 months   MAL-ED          PERU                           1                     1        0    282
0-24 months   MAL-ED          PERU                           0                     0      203    282
0-24 months   MAL-ED          PERU                           0                     1        1    282
0-24 months   MAL-ED          SOUTH AFRICA                   1                     0        5    271
0-24 months   MAL-ED          SOUTH AFRICA                   1                     1        0    271
0-24 months   MAL-ED          SOUTH AFRICA                   0                     0      264    271
0-24 months   MAL-ED          SOUTH AFRICA                   0                     1        2    271
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        5    249
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0    249
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      244    249
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0    249
0-24 months   SAS-FoodSuppl   INDIA                          1                     0        0    166
0-24 months   SAS-FoodSuppl   INDIA                          1                     1        0    166
0-24 months   SAS-FoodSuppl   INDIA                          0                     0      136    166
0-24 months   SAS-FoodSuppl   INDIA                          0                     1       30    166
0-6 months    EE              PAKISTAN                       1                     0        4      9
0-6 months    EE              PAKISTAN                       1                     1        0      9
0-6 months    EE              PAKISTAN                       0                     0        5      9
0-6 months    EE              PAKISTAN                       0                     1        0      9
0-6 months    GMS-Nepal       NEPAL                          1                     0      380    520
0-6 months    GMS-Nepal       NEPAL                          1                     1       37    520
0-6 months    GMS-Nepal       NEPAL                          0                     0       86    520
0-6 months    GMS-Nepal       NEPAL                          0                     1       17    520
0-6 months    JiVitA-3        BANGLADESH                     1                     0       11     19
0-6 months    JiVitA-3        BANGLADESH                     1                     1        2     19
0-6 months    JiVitA-3        BANGLADESH                     0                     0        6     19
0-6 months    JiVitA-3        BANGLADESH                     0                     1        0     19
0-6 months    MAL-ED          BANGLADESH                     1                     0       81    247
0-6 months    MAL-ED          BANGLADESH                     1                     1        3    247
0-6 months    MAL-ED          BANGLADESH                     0                     0      159    247
0-6 months    MAL-ED          BANGLADESH                     0                     1        4    247
0-6 months    MAL-ED          BRAZIL                         1                     0       27    217
0-6 months    MAL-ED          BRAZIL                         1                     1        0    217
0-6 months    MAL-ED          BRAZIL                         0                     0      189    217
0-6 months    MAL-ED          BRAZIL                         0                     1        1    217
0-6 months    MAL-ED          INDIA                          1                     0       16    237
0-6 months    MAL-ED          INDIA                          1                     1        1    237
0-6 months    MAL-ED          INDIA                          0                     0      202    237
0-6 months    MAL-ED          INDIA                          0                     1       18    237
0-6 months    MAL-ED          NEPAL                          1                     0        8    236
0-6 months    MAL-ED          NEPAL                          1                     1        1    236
0-6 months    MAL-ED          NEPAL                          0                     0      221    236
0-6 months    MAL-ED          NEPAL                          0                     1        6    236
0-6 months    MAL-ED          PERU                           1                     0       78    282
0-6 months    MAL-ED          PERU                           1                     1        0    282
0-6 months    MAL-ED          PERU                           0                     0      204    282
0-6 months    MAL-ED          PERU                           0                     1        0    282
0-6 months    MAL-ED          SOUTH AFRICA                   1                     0        5    270
0-6 months    MAL-ED          SOUTH AFRICA                   1                     1        0    270
0-6 months    MAL-ED          SOUTH AFRICA                   0                     0      263    270
0-6 months    MAL-ED          SOUTH AFRICA                   0                     1        2    270
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        5    249
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0    249
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      244    249
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0    249
6-24 months   EE              PAKISTAN                       1                     0        4      9
6-24 months   EE              PAKISTAN                       1                     1        0      9
6-24 months   EE              PAKISTAN                       0                     0        5      9
6-24 months   EE              PAKISTAN                       0                     1        0      9
6-24 months   GMS-Nepal       NEPAL                          1                     0      369    528
6-24 months   GMS-Nepal       NEPAL                          1                     1       54    528
6-24 months   GMS-Nepal       NEPAL                          0                     0       90    528
6-24 months   GMS-Nepal       NEPAL                          0                     1       15    528
6-24 months   JiVitA-3        BANGLADESH                     1                     0     5971   8221
6-24 months   JiVitA-3        BANGLADESH                     1                     1      363   8221
6-24 months   JiVitA-3        BANGLADESH                     0                     0     1774   8221
6-24 months   JiVitA-3        BANGLADESH                     0                     1      113   8221
6-24 months   JiVitA-4        BANGLADESH                     1                     0     3243   4495
6-24 months   JiVitA-4        BANGLADESH                     1                     1      252   4495
6-24 months   JiVitA-4        BANGLADESH                     0                     0      896   4495
6-24 months   JiVitA-4        BANGLADESH                     0                     1      104   4495
6-24 months   LCNI-5          MALAWI                         1                     0       42    240
6-24 months   LCNI-5          MALAWI                         1                     1        0    240
6-24 months   LCNI-5          MALAWI                         0                     0      195    240
6-24 months   LCNI-5          MALAWI                         0                     1        3    240
6-24 months   MAL-ED          BANGLADESH                     1                     0       81    247
6-24 months   MAL-ED          BANGLADESH                     1                     1        3    247
6-24 months   MAL-ED          BANGLADESH                     0                     0      153    247
6-24 months   MAL-ED          BANGLADESH                     0                     1       10    247
6-24 months   MAL-ED          BRAZIL                         1                     0       27    217
6-24 months   MAL-ED          BRAZIL                         1                     1        0    217
6-24 months   MAL-ED          BRAZIL                         0                     0      188    217
6-24 months   MAL-ED          BRAZIL                         0                     1        2    217
6-24 months   MAL-ED          INDIA                          1                     0       16    238
6-24 months   MAL-ED          INDIA                          1                     1        1    238
6-24 months   MAL-ED          INDIA                          0                     0      201    238
6-24 months   MAL-ED          INDIA                          0                     1       20    238
6-24 months   MAL-ED          NEPAL                          1                     0        8    236
6-24 months   MAL-ED          NEPAL                          1                     1        1    236
6-24 months   MAL-ED          NEPAL                          0                     0      224    236
6-24 months   MAL-ED          NEPAL                          0                     1        3    236
6-24 months   MAL-ED          PERU                           1                     0       78    282
6-24 months   MAL-ED          PERU                           1                     1        0    282
6-24 months   MAL-ED          PERU                           0                     0      203    282
6-24 months   MAL-ED          PERU                           0                     1        1    282
6-24 months   MAL-ED          SOUTH AFRICA                   1                     0        5    271
6-24 months   MAL-ED          SOUTH AFRICA                   1                     1        0    271
6-24 months   MAL-ED          SOUTH AFRICA                   0                     0      264    271
6-24 months   MAL-ED          SOUTH AFRICA                   0                     1        2    271
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        5    249
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0    249
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      244    249
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0    249
6-24 months   SAS-FoodSuppl   INDIA                          1                     0        0    166
6-24 months   SAS-FoodSuppl   INDIA                          1                     1        0    166
6-24 months   SAS-FoodSuppl   INDIA                          0                     0      136    166
6-24 months   SAS-FoodSuppl   INDIA                          0                     1       30    166


The following strata were considered:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/1623ad0f-a0fc-48e9-ba8e-3b7d945815e9/351aae6b-b6cf-4cfe-a75c-3e10cf1b30ef/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1623ad0f-a0fc-48e9-ba8e-3b7d945815e9/351aae6b-b6cf-4cfe-a75c-3e10cf1b30ef/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1623ad0f-a0fc-48e9-ba8e-3b7d945815e9/351aae6b-b6cf-4cfe-a75c-3e10cf1b30ef/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1623ad0f-a0fc-48e9-ba8e-3b7d945815e9/351aae6b-b6cf-4cfe-a75c-3e10cf1b30ef/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.1276596   0.0958279   0.1594912
0-24 months   GMS-Nepal   NEPAL        0                    NA                0.1428571   0.0758621   0.2098522
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0573098   0.0504382   0.0641813
0-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0598834   0.0484939   0.0712729
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0721030   0.0617859   0.0824201
0-24 months   JiVitA-4    BANGLADESH   0                    NA                0.1040000   0.0845333   0.1234667
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.0887290   0.0614107   0.1160474
0-6 months    GMS-Nepal   NEPAL        0                    NA                0.1650485   0.0932883   0.2368088
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.1276596   0.0958279   0.1594912
6-24 months   GMS-Nepal   NEPAL        0                    NA                0.1428571   0.0758621   0.2098522
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0573098   0.0504382   0.0641813
6-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0598834   0.0484939   0.0712729
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0721030   0.0617859   0.0824201
6-24 months   JiVitA-4    BANGLADESH   0                    NA                0.1040000   0.0845333   0.1234667


### Parameter: E(Y)


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        NA                   NA                0.1306818   0.1019052   0.1594584
0-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0579005   0.0521352   0.0636658
0-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.0791991   0.0699871   0.0884111
0-6 months    GMS-Nepal   NEPAL        NA                   NA                0.1038462   0.0776009   0.1300914
6-24 months   GMS-Nepal   NEPAL        NA                   NA                0.1306818   0.1019052   0.1594584
6-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0579005   0.0521352   0.0636658
6-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.0791991   0.0699871   0.0884111


### Parameter: RR


agecat        studyid     country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  ----------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-24 months   GMS-Nepal   NEPAL        0                    1                 1.119048   0.6579307   1.903342
0-24 months   JiVitA-3    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   JiVitA-3    BANGLADESH   0                    1                 1.044908   0.8297019   1.315933
0-24 months   JiVitA-4    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   JiVitA-4    BANGLADESH   0                    1                 1.442381   1.1432983   1.819703
0-6 months    GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-6 months    GMS-Nepal   NEPAL        0                    1                 1.860142   1.0918749   3.168978
6-24 months   GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
6-24 months   GMS-Nepal   NEPAL        0                    1                 1.119048   0.6579307   1.903342
6-24 months   JiVitA-3    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   JiVitA-3    BANGLADESH   0                    1                 1.044908   0.8297019   1.315933
6-24 months   JiVitA-4    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   JiVitA-4    BANGLADESH   0                    1                 1.442381   1.1432983   1.819703


### Parameter: PAR


agecat        studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.0030222   -0.0117371   0.0177816
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0005907   -0.0025387   0.0037202
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0070961    0.0022571   0.0119351
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.0151171   -0.0003155   0.0305498
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.0030222   -0.0117371   0.0177816
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0005907   -0.0025387   0.0037202
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0070961    0.0022571   0.0119351


### Parameter: PAF


agecat        studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.0231267   -0.0965112   0.1297112
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0102027   -0.0454829   0.0629223
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0895983    0.0256851   0.1493189
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.1455724   -0.0123543   0.2788627
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.0231267   -0.0965112   0.1297112
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0102027   -0.0454829   0.0629223
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0895983    0.0256851   0.1493189
