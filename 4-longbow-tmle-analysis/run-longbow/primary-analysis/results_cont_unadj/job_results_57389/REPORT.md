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

**Intervention Variable:** predfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid     country                        predfeed3    n_cell     n
----------  ----------  -----------------------------  ----------  -------  ----
Birth       EE          PAKISTAN                       1                35    35
Birth       EE          PAKISTAN                       0                 0    35
Birth       GMS-Nepal   NEPAL                          1               380   458
Birth       GMS-Nepal   NEPAL                          0                78   458
Birth       MAL-ED      BANGLADESH                     1               176   215
Birth       MAL-ED      BANGLADESH                     0                39   215
Birth       MAL-ED      BRAZIL                         1                24    57
Birth       MAL-ED      BRAZIL                         0                33    57
Birth       MAL-ED      INDIA                          1                29    41
Birth       MAL-ED      INDIA                          0                12    41
Birth       MAL-ED      NEPAL                          1                14    26
Birth       MAL-ED      NEPAL                          0                12    26
Birth       MAL-ED      PERU                           1               150   223
Birth       MAL-ED      PERU                           0                73   223
Birth       MAL-ED      SOUTH AFRICA                   1                33   100
Birth       MAL-ED      SOUTH AFRICA                   0                67   100
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                26   102
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                76   102
6 months    EE          PAKISTAN                       1                39    39
6 months    EE          PAKISTAN                       0                 0    39
6 months    GMS-Nepal   NEPAL                          1               367   441
6 months    GMS-Nepal   NEPAL                          0                74   441
6 months    MAL-ED      BANGLADESH                     1               191   233
6 months    MAL-ED      BANGLADESH                     0                42   233
6 months    MAL-ED      BRAZIL                         1                93   187
6 months    MAL-ED      BRAZIL                         0                94   187
6 months    MAL-ED      INDIA                          1               147   210
6 months    MAL-ED      INDIA                          0                63   210
6 months    MAL-ED      NEPAL                          1               113   227
6 months    MAL-ED      NEPAL                          0               114   227
6 months    MAL-ED      PERU                           1               176   270
6 months    MAL-ED      PERU                           0                94   270
6 months    MAL-ED      SOUTH AFRICA                   1                63   244
6 months    MAL-ED      SOUTH AFRICA                   0               181   244
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                64   212
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               148   212
24 months   EE          PAKISTAN                       1                20    20
24 months   EE          PAKISTAN                       0                 0    20
24 months   GMS-Nepal   NEPAL                          1               322   384
24 months   GMS-Nepal   NEPAL                          0                62   384
24 months   MAL-ED      BANGLADESH                     1               168   205
24 months   MAL-ED      BANGLADESH                     0                37   205
24 months   MAL-ED      BRAZIL                         1                79   152
24 months   MAL-ED      BRAZIL                         0                73   152
24 months   MAL-ED      INDIA                          1               139   202
24 months   MAL-ED      INDIA                          0                63   202
24 months   MAL-ED      NEPAL                          1               110   220
24 months   MAL-ED      NEPAL                          0               110   220
24 months   MAL-ED      PERU                           1               131   198
24 months   MAL-ED      PERU                           0                67   198
24 months   MAL-ED      SOUTH AFRICA                   1                60   228
24 months   MAL-ED      SOUTH AFRICA                   0               168   228
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                54   184
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               130   184


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: EE, country: PAKISTAN

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




# Results Detail

## Results Plots
![](/tmp/c4c5f393-028b-4c38-8c68-b6f3eaedfaed/9550e8e9-7558-4a3a-9680-82e40da5fff4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c4c5f393-028b-4c38-8c68-b6f3eaedfaed/9550e8e9-7558-4a3a-9680-82e40da5fff4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c4c5f393-028b-4c38-8c68-b6f3eaedfaed/9550e8e9-7558-4a3a-9680-82e40da5fff4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -1.0255789   -1.1325437   -0.9186142
Birth       GMS-Nepal   NEPAL                          0                    NA                -1.2014103   -1.4639594   -0.9388612
Birth       MAL-ED      BANGLADESH                     1                    NA                -1.1311932   -1.2853684   -0.9770180
Birth       MAL-ED      BANGLADESH                     0                    NA                -0.9315385   -1.2200144   -0.6430625
Birth       MAL-ED      BRAZIL                         1                    NA                -0.6245833   -1.0580810   -0.1910856
Birth       MAL-ED      BRAZIL                         0                    NA                -0.7542424   -1.1333475   -0.3751374
Birth       MAL-ED      INDIA                          1                    NA                -1.4027586   -1.8015874   -1.0039298
Birth       MAL-ED      INDIA                          0                    NA                -0.7358333   -1.1265748   -0.3450919
Birth       MAL-ED      NEPAL                          1                    NA                -0.9250000   -1.3150298   -0.5349702
Birth       MAL-ED      NEPAL                          0                    NA                -0.7050000   -1.3481239   -0.0618761
Birth       MAL-ED      PERU                           1                    NA                -0.9009333   -1.0454225   -0.7564442
Birth       MAL-ED      PERU                           0                    NA                -0.8228767   -1.0258474   -0.6199061
Birth       MAL-ED      SOUTH AFRICA                   1                    NA                -0.4672727   -0.8095184   -0.1250271
Birth       MAL-ED      SOUTH AFRICA                   0                    NA                -0.6350746   -0.8787535   -0.3913958
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.1915385   -1.5906782   -0.7923987
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.0802632   -1.3453886   -0.8151377
6 months    GMS-Nepal   NEPAL                          1                    NA                -1.3276521   -1.4225645   -1.2327398
6 months    GMS-Nepal   NEPAL                          0                    NA                -1.4607432   -1.7003727   -1.2211138
6 months    MAL-ED      BANGLADESH                     1                    NA                -1.1830628   -1.3088968   -1.0572289
6 months    MAL-ED      BANGLADESH                     0                    NA                -1.4117857   -1.7422315   -1.0813399
6 months    MAL-ED      BRAZIL                         1                    NA                -0.0555556   -0.2808082    0.1696971
6 months    MAL-ED      BRAZIL                         0                    NA                 0.1761348   -0.0355079    0.3877774
6 months    MAL-ED      INDIA                          1                    NA                -1.2306803   -1.3811572   -1.0802033
6 months    MAL-ED      INDIA                          0                    NA                -1.1292063   -1.3662905   -0.8921222
6 months    MAL-ED      NEPAL                          1                    NA                -0.6011652   -0.7650788   -0.4372516
6 months    MAL-ED      NEPAL                          0                    NA                -0.5259795   -0.6829512   -0.3690078
6 months    MAL-ED      PERU                           1                    NA                -1.2857907   -1.4149987   -1.1565828
6 months    MAL-ED      PERU                           0                    NA                -1.3578369   -1.5487374   -1.1669364
6 months    MAL-ED      SOUTH AFRICA                   1                    NA                -1.0071429   -1.2464352   -0.7678506
6 months    MAL-ED      SOUTH AFRICA                   0                    NA                -1.0867864   -1.2414215   -0.9321512
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3316146   -1.5381589   -1.1250703
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.4339414   -1.5908360   -1.2770469
24 months   GMS-Nepal   NEPAL                          1                    NA                -1.8821066   -1.9839409   -1.7802724
24 months   GMS-Nepal   NEPAL                          0                    NA                -1.8399462   -2.0757145   -1.6041780
24 months   MAL-ED      BANGLADESH                     1                    NA                -1.9922917   -2.1395476   -1.8450358
24 months   MAL-ED      BANGLADESH                     0                    NA                -2.0441892   -2.2910750   -1.7973034
24 months   MAL-ED      BRAZIL                         1                    NA                -0.1863080   -0.4234712    0.0508552
24 months   MAL-ED      BRAZIL                         0                    NA                 0.1676941   -0.0890477    0.4244359
24 months   MAL-ED      INDIA                          1                    NA                -2.0341367   -2.1909113   -1.8773620
24 months   MAL-ED      INDIA                          0                    NA                -1.6021429   -1.8483255   -1.3559602
24 months   MAL-ED      NEPAL                          1                    NA                -1.3910000   -1.5566768   -1.2253232
24 months   MAL-ED      NEPAL                          0                    NA                -1.2308636   -1.4044362   -1.0572911
24 months   MAL-ED      PERU                           1                    NA                -1.7137532   -1.8596781   -1.5678282
24 months   MAL-ED      PERU                           0                    NA                -1.7951493   -2.0138894   -1.5764092
24 months   MAL-ED      SOUTH AFRICA                   1                    NA                -1.6340556   -1.8576999   -1.4104113
24 months   MAL-ED      SOUTH AFRICA                   0                    NA                -1.6454514   -1.8155088   -1.4753940
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.5424074   -2.7813230   -2.3034918
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.7326538   -2.9105963   -2.5547114


### Parameter: E(Y)


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          NA                   NA                -1.0555240   -1.1550843   -0.9559638
Birth       MAL-ED      BANGLADESH                     NA                   NA                -1.0949767   -1.2319917   -0.9579618
Birth       MAL-ED      BRAZIL                         NA                   NA                -0.6996491   -0.9856018   -0.4136965
Birth       MAL-ED      INDIA                          NA                   NA                -1.2075610   -1.5261540   -0.8889679
Birth       MAL-ED      NEPAL                          NA                   NA                -0.8234615   -1.1896049   -0.4573182
Birth       MAL-ED      PERU                           NA                   NA                -0.8753812   -0.9932108   -0.7575515
Birth       MAL-ED      SOUTH AFRICA                   NA                   NA                -0.5797000   -0.7788298   -0.3805702
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1086275   -1.3310338   -0.8862211
6 months    GMS-Nepal   NEPAL                          NA                   NA                -1.3499849   -1.4387386   -1.2612312
6 months    MAL-ED      BANGLADESH                     NA                   NA                -1.2242918   -1.3439424   -1.1046413
6 months    MAL-ED      BRAZIL                         NA                   NA                 0.0609091   -0.0944768    0.2162950
6 months    MAL-ED      INDIA                          NA                   NA                -1.2002381   -1.3274929   -1.0729833
6 months    MAL-ED      NEPAL                          NA                   NA                -0.5634068   -0.6769687   -0.4498449
6 months    MAL-ED      PERU                           NA                   NA                -1.3108735   -1.4182407   -1.2035062
6 months    MAL-ED      SOUTH AFRICA                   NA                   NA                -1.0662227   -1.1965862   -0.9358591
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.4030503   -1.5292443   -1.2768563
24 months   GMS-Nepal   NEPAL                          NA                   NA                -1.8752995   -1.9688053   -1.7817937
24 months   MAL-ED      BANGLADESH                     NA                   NA                -2.0016585   -2.1303297   -1.8729874
24 months   MAL-ED      BRAZIL                         NA                   NA                -0.0162939   -0.1929098    0.1603221
24 months   MAL-ED      INDIA                          NA                   NA                -1.8994059   -2.0346781   -1.7641337
24 months   MAL-ED      NEPAL                          NA                   NA                -1.3109318   -1.4313748   -1.1904888
24 months   MAL-ED      PERU                           NA                   NA                -1.7412963   -1.8630698   -1.6195228
24 months   MAL-ED      SOUTH AFRICA                   NA                   NA                -1.6424525   -1.7808926   -1.5040124
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6768207   -2.8213178   -2.5323235


### Parameter: ATE


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000   0.0000000
Birth       GMS-Nepal   NEPAL                          0                    1                 -0.1758313   -0.4593335   0.1076709
Birth       MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000   0.0000000
Birth       MAL-ED      BANGLADESH                     0                    1                  0.1996547   -0.1274360   0.5267455
Birth       MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000   0.0000000
Birth       MAL-ED      BRAZIL                         0                    1                 -0.1296591   -0.7055418   0.4462236
Birth       MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000   0.0000000
Birth       MAL-ED      INDIA                          0                    1                  0.6669253    0.1085855   1.2252651
Birth       MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000   0.0000000
Birth       MAL-ED      NEPAL                          0                    1                  0.2200000   -0.5321513   0.9721513
Birth       MAL-ED      PERU                           1                    1                  0.0000000    0.0000000   0.0000000
Birth       MAL-ED      PERU                           0                    1                  0.0780566   -0.1710903   0.3272036
Birth       MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000   0.0000000
Birth       MAL-ED      SOUTH AFRICA                   0                    1                 -0.1678019   -0.5879346   0.2523308
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000   0.0000000
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1112753   -0.3678948   0.5904454
6 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000   0.0000000
6 months    GMS-Nepal   NEPAL                          0                    1                 -0.1330911   -0.3908325   0.1246503
6 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000   0.0000000
6 months    MAL-ED      BANGLADESH                     0                    1                 -0.2287229   -0.5823168   0.1248710
6 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000   0.0000000
6 months    MAL-ED      BRAZIL                         0                    1                  0.2316903   -0.0773912   0.5407718
6 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000   0.0000000
6 months    MAL-ED      INDIA                          0                    1                  0.1014739   -0.1793325   0.3822803
6 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000   0.0000000
6 months    MAL-ED      NEPAL                          0                    1                  0.0751857   -0.1517676   0.3021389
6 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000   0.0000000
6 months    MAL-ED      PERU                           0                    1                 -0.0720462   -0.3025623   0.1584700
6 months    MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000   0.0000000
6 months    MAL-ED      SOUTH AFRICA                   0                    1                 -0.0796435   -0.3645520   0.2052650
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000   0.0000000
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1023269   -0.3617039   0.1570502
24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000   0.0000000
24 months   GMS-Nepal   NEPAL                          0                    1                  0.0421604   -0.2146603   0.2989811
24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000   0.0000000
24 months   MAL-ED      BANGLADESH                     0                    1                 -0.0518975   -0.3393639   0.2355688
24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000   0.0000000
24 months   MAL-ED      BRAZIL                         0                    1                  0.3540021    0.0044842   0.7035199
24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000   0.0000000
24 months   MAL-ED      INDIA                          0                    1                  0.4319938    0.1401305   0.7238571
24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000   0.0000000
24 months   MAL-ED      NEPAL                          0                    1                  0.1601364   -0.0798141   0.4000868
24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000   0.0000000
24 months   MAL-ED      PERU                           0                    1                 -0.0813961   -0.3443434   0.1815513
24 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000   0.0000000
24 months   MAL-ED      SOUTH AFRICA                   0                    1                 -0.0113958   -0.2923519   0.2695602
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000   0.0000000
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1902464   -0.4881460   0.1076532


### Parameter: PAR


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -0.0299451   -0.0786059   0.0187158
Birth       MAL-ED      BANGLADESH                     1                    NA                 0.0362164   -0.0240050   0.0964379
Birth       MAL-ED      BRAZIL                         1                    NA                -0.0750658   -0.4088929   0.2587613
Birth       MAL-ED      INDIA                          1                    NA                 0.1951976    0.0066558   0.3837394
Birth       MAL-ED      NEPAL                          1                    NA                 0.1015385   -0.2482603   0.4513372
Birth       MAL-ED      PERU                           1                    NA                 0.0255522   -0.0561493   0.1072537
Birth       MAL-ED      SOUTH AFRICA                   1                    NA                -0.1124273   -0.3943449   0.1694904
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0829110   -0.2742430   0.4400650
6 months    GMS-Nepal   NEPAL                          1                    NA                -0.0223327   -0.0658308   0.0211653
6 months    MAL-ED      BANGLADESH                     1                    NA                -0.0412290   -0.1059633   0.0235052
6 months    MAL-ED      BRAZIL                         1                    NA                 0.1164646   -0.0397919   0.2727212
6 months    MAL-ED      INDIA                          1                    NA                 0.0304422   -0.0540353   0.1149197
6 months    MAL-ED      NEPAL                          1                    NA                 0.0377584   -0.0763234   0.1518403
6 months    MAL-ED      PERU                           1                    NA                -0.0250827   -0.1054412   0.0552758
6 months    MAL-ED      SOUTH AFRICA                   1                    NA                -0.0590798   -0.2704713   0.1523116
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0714357   -0.2526212   0.1097497
24 months   GMS-Nepal   NEPAL                          1                    NA                 0.0068071   -0.0346878   0.0483021
24 months   MAL-ED      BANGLADESH                     1                    NA                -0.0093669   -0.0613233   0.0425895
24 months   MAL-ED      BRAZIL                         1                    NA                 0.1700142   -0.0002002   0.3402286
24 months   MAL-ED      INDIA                          1                    NA                 0.1347308    0.0395925   0.2298690
24 months   MAL-ED      NEPAL                          1                    NA                 0.0800682   -0.0403748   0.2005112
24 months   MAL-ED      PERU                           1                    NA                -0.0275431   -0.1166826   0.0615964
24 months   MAL-ED      SOUTH AFRICA                   1                    NA                -0.0083969   -0.2154182   0.1986243
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1344132   -0.3452597   0.0764332
