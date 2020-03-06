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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        exclfeed36    n_cell      n
----------  ---------------  -----------------------------  -----------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          1                  3      3
Birth       CMC-V-BCS-2002   INDIA                          0                  0      3
Birth       EE               PAKISTAN                       1                  3      7
Birth       EE               PAKISTAN                       0                  4      7
Birth       GMS-Nepal        NEPAL                          1                422    526
Birth       GMS-Nepal        NEPAL                          0                104    526
Birth       IRC              INDIA                          1                  0      4
Birth       IRC              INDIA                          0                  4      4
Birth       Keneba           GAMBIA                         1                363   1253
Birth       Keneba           GAMBIA                         0                890   1253
Birth       MAL-ED           BANGLADESH                     1                 32    221
Birth       MAL-ED           BANGLADESH                     0                189    221
Birth       MAL-ED           BRAZIL                         1                  5     65
Birth       MAL-ED           BRAZIL                         0                 60     65
Birth       MAL-ED           INDIA                          1                  1     42
Birth       MAL-ED           INDIA                          0                 41     42
Birth       MAL-ED           NEPAL                          1                  0     26
Birth       MAL-ED           NEPAL                          0                 26     26
Birth       MAL-ED           PERU                           1                  5    223
Birth       MAL-ED           PERU                           0                218    223
Birth       MAL-ED           SOUTH AFRICA                   1                  1    105
Birth       MAL-ED           SOUTH AFRICA                   0                104    105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0    119
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                119    119
Birth       PROVIDE          BANGLADESH                     1                119    490
Birth       PROVIDE          BANGLADESH                     0                371    490
6 months    CMC-V-BCS-2002   INDIA                          1                  9      9
6 months    CMC-V-BCS-2002   INDIA                          0                  0      9
6 months    EE               PAKISTAN                       1                  4      9
6 months    EE               PAKISTAN                       0                  5      9
6 months    GMS-Nepal        NEPAL                          1                422    527
6 months    GMS-Nepal        NEPAL                          0                105    527
6 months    IRC              INDIA                          1                  0      4
6 months    IRC              INDIA                          0                  4      4
6 months    Keneba           GAMBIA                         1                507   1790
6 months    Keneba           GAMBIA                         0               1283   1790
6 months    LCNI-5           MALAWI                         1                 47    272
6 months    LCNI-5           MALAWI                         0                225    272
6 months    MAL-ED           BANGLADESH                     1                 30    240
6 months    MAL-ED           BANGLADESH                     0                210    240
6 months    MAL-ED           BRAZIL                         1                 12    209
6 months    MAL-ED           BRAZIL                         0                197    209
6 months    MAL-ED           INDIA                          1                  9    233
6 months    MAL-ED           INDIA                          0                224    233
6 months    MAL-ED           NEPAL                          1                  4    235
6 months    MAL-ED           NEPAL                          0                231    235
6 months    MAL-ED           PERU                           1                  6    272
6 months    MAL-ED           PERU                           0                266    272
6 months    MAL-ED           SOUTH AFRICA                   1                  1    250
6 months    MAL-ED           SOUTH AFRICA                   0                249    250
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  4    243
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                239    243
6 months    PROVIDE          BANGLADESH                     1                145    603
6 months    PROVIDE          BANGLADESH                     0                458    603
6 months    SAS-FoodSuppl    INDIA                          1                  0    168
6 months    SAS-FoodSuppl    INDIA                          0                168    168
24 months   CMC-V-BCS-2002   INDIA                          1                  9      9
24 months   CMC-V-BCS-2002   INDIA                          0                  0      9
24 months   EE               PAKISTAN                       1                  0      3
24 months   EE               PAKISTAN                       0                  3      3
24 months   GMS-Nepal        NEPAL                          1                363    446
24 months   GMS-Nepal        NEPAL                          0                 83    446
24 months   IRC              INDIA                          1                  0      4
24 months   IRC              INDIA                          0                  4      4
24 months   Keneba           GAMBIA                         1                424   1394
24 months   Keneba           GAMBIA                         0                970   1394
24 months   LCNI-5           MALAWI                         1                 34    189
24 months   LCNI-5           MALAWI                         0                155    189
24 months   MAL-ED           BANGLADESH                     1                 25    212
24 months   MAL-ED           BANGLADESH                     0                187    212
24 months   MAL-ED           BRAZIL                         1                 11    169
24 months   MAL-ED           BRAZIL                         0                158    169
24 months   MAL-ED           INDIA                          1                  9    224
24 months   MAL-ED           INDIA                          0                215    224
24 months   MAL-ED           NEPAL                          1                  4    227
24 months   MAL-ED           NEPAL                          0                223    227
24 months   MAL-ED           PERU                           1                  4    201
24 months   MAL-ED           PERU                           0                197    201
24 months   MAL-ED           SOUTH AFRICA                   1                  1    235
24 months   MAL-ED           SOUTH AFRICA                   0                234    235
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  3    213
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                210    213
24 months   PROVIDE          BANGLADESH                     1                141    577
24 months   PROVIDE          BANGLADESH                     0                436    577


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/2fda5ef9-c74d-42dd-ba0b-a7ef607d3f75/bece48cd-92d0-4768-bc76-a765d52d7e38/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2fda5ef9-c74d-42dd-ba0b-a7ef607d3f75/bece48cd-92d0-4768-bc76-a765d52d7e38/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2fda5ef9-c74d-42dd-ba0b-a7ef607d3f75/bece48cd-92d0-4768-bc76-a765d52d7e38/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -1.0018009   -1.0995626   -0.9040393
Birth       GMS-Nepal   NEPAL        0                    NA                -1.1442308   -1.3584754   -0.9299861
Birth       Keneba      GAMBIA       1                    NA                 0.0217769   -0.1084768    0.1520306
Birth       Keneba      GAMBIA       0                    NA                 0.0359101   -0.0489370    0.1207572
Birth       MAL-ED      BANGLADESH   1                    NA                -1.1412500   -1.4056727   -0.8768273
Birth       MAL-ED      BANGLADESH   0                    NA                -1.0698942   -1.2211049   -0.9186835
Birth       MAL-ED      BRAZIL       1                    NA                -1.4240000   -2.4288338   -0.4191662
Birth       MAL-ED      BRAZIL       0                    NA                -0.6136667   -0.8950902   -0.3322431
Birth       MAL-ED      PERU         1                    NA                -1.0080000   -1.6595862   -0.3564138
Birth       MAL-ED      PERU         0                    NA                -0.8886239   -1.0108291   -0.7664186
Birth       PROVIDE     BANGLADESH   1                    NA                -0.9462185   -1.1006724   -0.7917646
Birth       PROVIDE     BANGLADESH   0                    NA                -0.8547439   -0.9464721   -0.7630158
6 months    GMS-Nepal   NEPAL        1                    NA                -1.2868918   -1.3738868   -1.1998968
6 months    GMS-Nepal   NEPAL        0                    NA                -1.5221429   -1.7134970   -1.3307887
6 months    Keneba      GAMBIA       1                    NA                -0.9135184   -1.0048201   -0.8222167
6 months    Keneba      GAMBIA       0                    NA                -0.9443010   -1.0044753   -0.8841268
6 months    LCNI-5      MALAWI       1                    NA                -1.7051064   -1.9955729   -1.4146399
6 months    LCNI-5      MALAWI       0                    NA                -1.6259111   -1.7571663   -1.4946560
6 months    MAL-ED      BANGLADESH   1                    NA                -1.2184444   -1.5218323   -0.9150566
6 months    MAL-ED      BANGLADESH   0                    NA                -1.2056667   -1.3329154   -1.0784180
6 months    MAL-ED      BRAZIL       1                    NA                 0.2750000   -0.4792287    1.0292287
6 months    MAL-ED      BRAZIL       0                    NA                 0.0337225   -0.1116704    0.1791154
6 months    MAL-ED      INDIA        1                    NA                -0.9116667   -1.7458275   -0.0775058
6 months    MAL-ED      INDIA        0                    NA                -1.2173884   -1.3368172   -1.0979596
6 months    MAL-ED      PERU         1                    NA                -1.4083333   -2.0844008   -0.7322659
6 months    MAL-ED      PERU         0                    NA                -1.3211685   -1.4309807   -1.2113564
6 months    PROVIDE     BANGLADESH   1                    NA                -1.0866207   -1.2211854   -0.9520560
6 months    PROVIDE     BANGLADESH   0                    NA                -1.0852220   -1.1722131   -0.9982308
24 months   GMS-Nepal   NEPAL        1                    NA                -1.8696786   -1.9637288   -1.7756284
24 months   GMS-Nepal   NEPAL        0                    NA                -1.9416466   -2.1743549   -1.7089382
24 months   Keneba      GAMBIA       1                    NA                -1.5392740   -1.6320610   -1.4464870
24 months   Keneba      GAMBIA       0                    NA                -1.6239510   -1.6922300   -1.5556721
24 months   LCNI-5      MALAWI       1                    NA                -2.0273529   -2.3204751   -1.7342307
24 months   LCNI-5      MALAWI       0                    NA                -1.9514839   -2.1097913   -1.7931764
24 months   MAL-ED      BANGLADESH   1                    NA                -2.0316000   -2.4616615   -1.6015385
24 months   MAL-ED      BANGLADESH   0                    NA                -1.9712834   -2.1027863   -1.8397805
24 months   MAL-ED      BRAZIL       1                    NA                 0.1768182   -0.5731823    0.9268187
24 months   MAL-ED      BRAZIL       0                    NA                -0.0057700   -0.1783407    0.1668006
24 months   MAL-ED      INDIA        1                    NA                -2.2088889   -2.9737293   -1.4440485
24 months   MAL-ED      INDIA        0                    NA                -1.8773023   -2.0042653   -1.7503393
24 months   PROVIDE     BANGLADESH   1                    NA                -1.6932979   -1.8569446   -1.5296512
24 months   PROVIDE     BANGLADESH   0                    NA                -1.5728326   -1.6696229   -1.4760423


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        NA                   NA                -1.0299620   -1.1192344   -0.9406896
Birth       Keneba      GAMBIA       NA                   NA                 0.0318156   -0.0392907    0.1029220
Birth       MAL-ED      BANGLADESH   NA                   NA                -1.0802262   -1.2151319   -0.9453206
Birth       MAL-ED      BRAZIL       NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED      PERU         NA                   NA                -0.8913004   -1.0115814   -0.7710195
Birth       PROVIDE     BANGLADESH   NA                   NA                -0.8769592   -0.9559693   -0.7979491
6 months    GMS-Nepal   NEPAL        NA                   NA                -1.3337634   -1.4135810   -1.2539459
6 months    Keneba      GAMBIA       NA                   NA                -0.9355822   -0.9858754   -0.8852889
6 months    LCNI-5      MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    MAL-ED      BANGLADESH   NA                   NA                -1.2072639   -1.3248889   -1.0896388
6 months    MAL-ED      BRAZIL       NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED      INDIA        NA                   NA                -1.2055794   -1.3250712   -1.0860876
6 months    MAL-ED      PERU         NA                   NA                -1.3230913   -1.4314947   -1.2146879
6 months    PROVIDE     BANGLADESH   NA                   NA                -1.0855583   -1.1591292   -1.0119875
24 months   GMS-Nepal   NEPAL        NA                   NA                -1.8830717   -1.9710591   -1.7950844
24 months   Keneba      GAMBIA       NA                   NA                -1.5981956   -1.6534947   -1.5428965
24 months   LCNI-5      MALAWI       NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   MAL-ED      BANGLADESH   NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED      BRAZIL       NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED      INDIA        NA                   NA                -1.8906250   -2.0165920   -1.7646580
24 months   PROVIDE     BANGLADESH   NA                   NA                -1.6022704   -1.6857342   -1.5188065


### Parameter: ATE


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal   NEPAL        0                    1                 -0.1424298   -0.3779253    0.0930656
Birth       Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba      GAMBIA       0                    1                  0.0141333   -0.1413179    0.1695844
Birth       MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH   0                    1                  0.0713558   -0.2332489    0.3759606
Birth       MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL       0                    1                  0.8103333   -0.2331657    1.8538323
Birth       MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU         0                    1                  0.1193761   -0.5435709    0.7823232
Birth       PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE     BANGLADESH   0                    1                  0.0914746   -0.0881642    0.2711133
6 months    GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL        0                    1                 -0.2352511   -0.4454522   -0.0250499
6 months    Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba      GAMBIA       0                    1                 -0.0307826   -0.1401304    0.0785652
6 months    LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5      MALAWI       0                    1                  0.0791953   -0.2395502    0.3979408
6 months    MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH   0                    1                  0.0127778   -0.3162152    0.3417708
6 months    MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL       0                    1                 -0.2412775   -1.0093921    0.5268371
6 months    MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA        0                    1                 -0.3057217   -1.1483886    0.5369452
6 months    MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU         0                    1                  0.0871648   -0.5977629    0.7720924
6 months    PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE     BANGLADESH   0                    1                  0.0013987   -0.1588358    0.1616333
24 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL        0                    1                 -0.0719680   -0.3229632    0.1790273
24 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba      GAMBIA       0                    1                 -0.0846771   -0.1998788    0.0305247
24 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5      MALAWI       0                    1                  0.0758691   -0.2572704    0.4090085
24 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH   0                    1                  0.0603166   -0.3894010    0.5100342
24 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL       0                    1                 -0.1825882   -0.9521864    0.5870100
24 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA        0                    1                  0.3315866   -0.4437201    1.1068933
24 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE     BANGLADESH   0                    1                  0.1204653   -0.0696626    0.3105932


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0281610   -0.0749750    0.0186530
Birth       Keneba      GAMBIA       1                    NA                 0.0100388   -0.1003780    0.1204555
Birth       MAL-ED      BANGLADESH   1                    NA                 0.0610238   -0.1994964    0.3215440
Birth       MAL-ED      BRAZIL       1                    NA                 0.7480000   -0.2166815    1.7126815
Birth       MAL-ED      PERU         1                    NA                 0.1166996   -0.5296780    0.7630771
Birth       PROVIDE     BANGLADESH   1                    NA                 0.0692593   -0.0667973    0.2053159
6 months    GMS-Nepal   NEPAL        1                    NA                -0.0468717   -0.0895153   -0.0042281
6 months    Keneba      GAMBIA       1                    NA                -0.0220637   -0.1004425    0.0563150
6 months    LCNI-5      MALAWI       1                    NA                 0.0655108   -0.1981815    0.3292031
6 months    MAL-ED      BANGLADESH   1                    NA                 0.0111806   -0.2766888    0.2990499
6 months    MAL-ED      BRAZIL       1                    NA                -0.2274242   -0.9514768    0.4966283
6 months    MAL-ED      INDIA        1                    NA                -0.2939127   -1.1040658    0.5162403
6 months    MAL-ED      PERU         1                    NA                 0.0852420   -0.5825642    0.7530482
6 months    PROVIDE     BANGLADESH   1                    NA                 0.0010624   -0.1206415    0.1227662
24 months   GMS-Nepal   NEPAL        1                    NA                -0.0133931   -0.0601755    0.0333892
24 months   Keneba      GAMBIA       1                    NA                -0.0589216   -0.1391096    0.0212664
24 months   LCNI-5      MALAWI       1                    NA                 0.0622207   -0.2110207    0.3354620
24 months   MAL-ED      BANGLADESH   1                    NA                 0.0532038   -0.3434898    0.4498973
24 months   MAL-ED      BRAZIL       1                    NA                -0.1707038   -0.8902420    0.5488345
24 months   MAL-ED      INDIA        1                    NA                 0.3182639   -0.4259412    1.0624690
24 months   PROVIDE     BANGLADESH   1                    NA                 0.0910275   -0.0527015    0.2347565
