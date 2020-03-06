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

**Outcome Variable:** haz

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

agecat      studyid         country                        predfeed36    n_cell     n
----------  --------------  -----------------------------  -----------  -------  ----
Birth       EE              PAKISTAN                       1                  3     7
Birth       EE              PAKISTAN                       0                  4     7
Birth       GMS-Nepal       NEPAL                          1                422   526
Birth       GMS-Nepal       NEPAL                          0                104   526
Birth       MAL-ED          BANGLADESH                     1                 72   221
Birth       MAL-ED          BANGLADESH                     0                149   221
Birth       MAL-ED          BRAZIL                         1                  8    65
Birth       MAL-ED          BRAZIL                         0                 57    65
Birth       MAL-ED          INDIA                          1                  4    42
Birth       MAL-ED          INDIA                          0                 38    42
Birth       MAL-ED          NEPAL                          1                  1    26
Birth       MAL-ED          NEPAL                          0                 25    26
Birth       MAL-ED          PERU                           1                 58   223
Birth       MAL-ED          PERU                           0                165   223
Birth       MAL-ED          SOUTH AFRICA                   1                  2   105
Birth       MAL-ED          SOUTH AFRICA                   0                103   105
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0   119
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                119   119
6 months    EE              PAKISTAN                       1                  4     9
6 months    EE              PAKISTAN                       0                  5     9
6 months    GMS-Nepal       NEPAL                          1                422   527
6 months    GMS-Nepal       NEPAL                          0                105   527
6 months    LCNI-5          MALAWI                         1                 47   272
6 months    LCNI-5          MALAWI                         0                225   272
6 months    MAL-ED          BANGLADESH                     1                 81   240
6 months    MAL-ED          BANGLADESH                     0                159   240
6 months    MAL-ED          BRAZIL                         1                 25   209
6 months    MAL-ED          BRAZIL                         0                184   209
6 months    MAL-ED          INDIA                          1                 17   233
6 months    MAL-ED          INDIA                          0                216   233
6 months    MAL-ED          NEPAL                          1                  8   235
6 months    MAL-ED          NEPAL                          0                227   235
6 months    MAL-ED          PERU                           1                 72   272
6 months    MAL-ED          PERU                           0                200   272
6 months    MAL-ED          SOUTH AFRICA                   1                  3   250
6 months    MAL-ED          SOUTH AFRICA                   0                247   250
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5   243
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                238   243
6 months    SAS-FoodSuppl   INDIA                          1                  0   168
6 months    SAS-FoodSuppl   INDIA                          0                168   168
24 months   EE              PAKISTAN                       1                  0     3
24 months   EE              PAKISTAN                       0                  3     3
24 months   GMS-Nepal       NEPAL                          1                363   446
24 months   GMS-Nepal       NEPAL                          0                 83   446
24 months   LCNI-5          MALAWI                         1                 34   189
24 months   LCNI-5          MALAWI                         0                155   189
24 months   MAL-ED          BANGLADESH                     1                 69   212
24 months   MAL-ED          BANGLADESH                     0                143   212
24 months   MAL-ED          BRAZIL                         1                 20   169
24 months   MAL-ED          BRAZIL                         0                149   169
24 months   MAL-ED          INDIA                          1                 17   224
24 months   MAL-ED          INDIA                          0                207   224
24 months   MAL-ED          NEPAL                          1                  8   227
24 months   MAL-ED          NEPAL                          0                219   227
24 months   MAL-ED          PERU                           1                 53   201
24 months   MAL-ED          PERU                           0                148   201
24 months   MAL-ED          SOUTH AFRICA                   1                  3   235
24 months   MAL-ED          SOUTH AFRICA                   0                232   235
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4   213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                209   213


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/2e6af943-d2cd-40db-b8be-d5aebbf41312/b30ba24a-f75f-4712-b665-8e11b979853b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2e6af943-d2cd-40db-b8be-d5aebbf41312/b30ba24a-f75f-4712-b665-8e11b979853b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2e6af943-d2cd-40db-b8be-d5aebbf41312/b30ba24a-f75f-4712-b665-8e11b979853b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -1.0018009   -1.0995626   -0.9040393
Birth       GMS-Nepal   NEPAL                          0                    NA                -1.1442308   -1.3584754   -0.9299861
Birth       MAL-ED      BANGLADESH                     1                    NA                -1.0902778   -1.2963722   -0.8841833
Birth       MAL-ED      BANGLADESH                     0                    NA                -1.0753691   -1.2489149   -0.9018234
Birth       MAL-ED      BRAZIL                         1                    NA                -1.0850000   -1.9106873   -0.2593127
Birth       MAL-ED      BRAZIL                         0                    NA                -0.6185965   -0.9082545   -0.3289385
Birth       MAL-ED      PERU                           1                    NA                -0.9617241   -1.1730583   -0.7503900
Birth       MAL-ED      PERU                           0                    NA                -0.8665455   -1.0109497   -0.7221412
6 months    GMS-Nepal   NEPAL                          1                    NA                -1.2868918   -1.3738868   -1.1998968
6 months    GMS-Nepal   NEPAL                          0                    NA                -1.5221429   -1.7134970   -1.3307887
6 months    LCNI-5      MALAWI                         1                    NA                -1.7051064   -1.9955729   -1.4146399
6 months    LCNI-5      MALAWI                         0                    NA                -1.6259111   -1.7571663   -1.4946560
6 months    MAL-ED      BANGLADESH                     1                    NA                -1.2147119   -1.4071525   -1.0222714
6 months    MAL-ED      BANGLADESH                     0                    NA                -1.2034696   -1.3514932   -1.0554460
6 months    MAL-ED      BRAZIL                         1                    NA                 0.1442000   -0.3475370    0.6359370
6 months    MAL-ED      BRAZIL                         0                    NA                 0.0344475   -0.1146572    0.1835521
6 months    MAL-ED      INDIA                          1                    NA                -1.3111765   -1.9381796   -0.6841733
6 months    MAL-ED      INDIA                          0                    NA                -1.1972685   -1.3162734   -1.0782637
6 months    MAL-ED      NEPAL                          1                    NA                -0.3325000   -0.9301243    0.2651243
6 months    MAL-ED      NEPAL                          0                    NA                -0.5702349   -0.6852437   -0.4552262
6 months    MAL-ED      PERU                           1                    NA                -1.3087037   -1.5103370   -1.1070704
6 months    MAL-ED      PERU                           0                    NA                -1.3282708   -1.4565839   -1.1999578
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2240000   -1.8175386   -0.6304614
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3768487   -1.5024066   -1.2512909
24 months   GMS-Nepal   NEPAL                          1                    NA                -1.8696786   -1.9637288   -1.7756284
24 months   GMS-Nepal   NEPAL                          0                    NA                -1.9416466   -2.1743549   -1.7089382
24 months   LCNI-5      MALAWI                         1                    NA                -2.0273529   -2.3204751   -1.7342307
24 months   LCNI-5      MALAWI                         0                    NA                -1.9514839   -2.1097913   -1.7931764
24 months   MAL-ED      BANGLADESH                     1                    NA                -2.1169565   -2.3783862   -1.8555269
24 months   MAL-ED      BANGLADESH                     0                    NA                -1.9115385   -2.0492229   -1.7738540
24 months   MAL-ED      BRAZIL                         1                    NA                 0.0245000   -0.4541432    0.5031432
24 months   MAL-ED      BRAZIL                         0                    NA                 0.0036465   -0.1765847    0.1838778
24 months   MAL-ED      INDIA                          1                    NA                -2.2405882   -2.7153892   -1.7657873
24 months   MAL-ED      INDIA                          0                    NA                -1.8618841   -1.9917210   -1.7320472
24 months   MAL-ED      NEPAL                          1                    NA                -1.2725000   -1.9347673   -0.6102327
24 months   MAL-ED      NEPAL                          0                    NA                -1.3095434   -1.4315531   -1.1875337
24 months   MAL-ED      PERU                           1                    NA                -1.7833019   -2.0156626   -1.5509412
24 months   MAL-ED      PERU                           0                    NA                -1.7414302   -1.8833645   -1.5994958


### Parameter: E(Y)


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          NA                   NA                -1.0299620   -1.1192344   -0.9406896
Birth       MAL-ED      BANGLADESH                     NA                   NA                -1.0802262   -1.2151319   -0.9453206
Birth       MAL-ED      BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED      PERU                           NA                   NA                -0.8913004   -1.0115814   -0.7710195
6 months    GMS-Nepal   NEPAL                          NA                   NA                -1.3337634   -1.4135810   -1.2539459
6 months    LCNI-5      MALAWI                         NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    MAL-ED      BANGLADESH                     NA                   NA                -1.2072639   -1.3248889   -1.0896388
6 months    MAL-ED      BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED      INDIA                          NA                   NA                -1.2055794   -1.3250712   -1.0860876
6 months    MAL-ED      NEPAL                          NA                   NA                -0.5621418   -0.6752179   -0.4490658
6 months    MAL-ED      PERU                           NA                   NA                -1.3230913   -1.4314947   -1.2146879
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3737037   -1.4970489   -1.2503585
24 months   GMS-Nepal   NEPAL                          NA                   NA                -1.8830717   -1.9710591   -1.7950844
24 months   LCNI-5      MALAWI                         NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   MAL-ED      BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED      BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED      INDIA                          NA                   NA                -1.8906250   -2.0165920   -1.7646580
24 months   MAL-ED      NEPAL                          NA                   NA                -1.3082379   -1.4282426   -1.1882331
24 months   MAL-ED      PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994


### Parameter: ATE


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal   NEPAL                          0                    1                 -0.1424298   -0.3779253    0.0930656
Birth       MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH                     0                    1                  0.0149087   -0.2545223    0.2843396
Birth       MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL                         0                    1                  0.4664035   -0.4086172    1.3414243
Birth       MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU                           0                    1                  0.0951787   -0.1607797    0.3511371
6 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL                          0                    1                 -0.2352511   -0.4454522   -0.0250499
6 months    LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5      MALAWI                         0                    1                  0.0791953   -0.2395502    0.3979408
6 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH                     0                    1                  0.0112423   -0.2315423    0.2540269
6 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL                         0                    1                 -0.1097525   -0.6235983    0.4040932
6 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA                          0                    1                  0.1139080   -0.5242888    0.7521047
6 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      NEPAL                          0                    1                 -0.2377349   -0.8463250    0.3708551
6 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU                           0                    1                 -0.0195671   -0.2585655    0.2194312
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1528487   -0.7595223    0.4538248
24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL                          0                    1                 -0.0719680   -0.3229632    0.1790273
24 months   LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5      MALAWI                         0                    1                  0.0758691   -0.2572704    0.4090085
24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH                     0                    1                  0.2054181   -0.0900518    0.5008880
24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL                         0                    1                 -0.0208535   -0.5323050    0.4905980
24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA                          0                    1                  0.3787042   -0.1135290    0.8709374
24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      NEPAL                          0                    1                 -0.0370434   -0.7104558    0.6363691
24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      PERU                           0                    1                  0.0418717   -0.2304091    0.3141526


### Parameter: PAR


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -0.0281610   -0.0749750    0.0186530
Birth       MAL-ED      BANGLADESH                     1                    NA                 0.0100515   -0.1716034    0.1917064
Birth       MAL-ED      BRAZIL                         1                    NA                 0.4090000   -0.3592436    1.1772436
Birth       MAL-ED      PERU                           1                    NA                 0.0704237   -0.1190422    0.2598896
6 months    GMS-Nepal   NEPAL                          1                    NA                -0.0468717   -0.0895153   -0.0042281
6 months    LCNI-5      MALAWI                         1                    NA                 0.0655108   -0.1981815    0.3292031
6 months    MAL-ED      BANGLADESH                     1                    NA                 0.0074480   -0.1533982    0.1682942
6 months    MAL-ED      BRAZIL                         1                    NA                -0.0966242   -0.5490311    0.3557826
6 months    MAL-ED      INDIA                          1                    NA                 0.1055971   -0.4860482    0.6972424
6 months    MAL-ED      NEPAL                          1                    NA                -0.2296418   -0.8175399    0.3582562
6 months    MAL-ED      PERU                           1                    NA                -0.0143876   -0.1901247    0.1613495
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1497037   -0.7412167    0.4418093
24 months   GMS-Nepal   NEPAL                          1                    NA                -0.0133931   -0.0601755    0.0333892
24 months   LCNI-5      MALAWI                         1                    NA                 0.0622207   -0.2110207    0.3354620
24 months   MAL-ED      BANGLADESH                     1                    NA                 0.1385603   -0.0611652    0.3382858
24 months   MAL-ED      BRAZIL                         1                    NA                -0.0183856   -0.4693114    0.4325402
24 months   MAL-ED      INDIA                          1                    NA                 0.3499632   -0.1051034    0.8050299
24 months   MAL-ED      NEPAL                          1                    NA                -0.0357379   -0.6854184    0.6139426
24 months   MAL-ED      PERU                           1                    NA                 0.0308309   -0.1696708    0.2313326
