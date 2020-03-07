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

**Outcome Variable:** whz

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

agecat      studyid     country                        predfeed3    n_cell       n
----------  ----------  -----------------------------  ----------  -------  ------
Birth       EE          PAKISTAN                       1                22      22
Birth       EE          PAKISTAN                       0                 0      22
Birth       GMS-Nepal   NEPAL                          1               352     422
Birth       GMS-Nepal   NEPAL                          0                70     422
Birth       JiVitA-3    BANGLADESH                     1              9638   10634
Birth       JiVitA-3    BANGLADESH                     0               996   10634
Birth       JiVitA-4    BANGLADESH                     1                89      97
Birth       JiVitA-4    BANGLADESH                     0                 8      97
Birth       MAL-ED      BANGLADESH                     1               164     202
Birth       MAL-ED      BANGLADESH                     0                38     202
Birth       MAL-ED      BRAZIL                         1                23      55
Birth       MAL-ED      BRAZIL                         0                32      55
Birth       MAL-ED      INDIA                          1                27      39
Birth       MAL-ED      INDIA                          0                12      39
Birth       MAL-ED      NEPAL                          1                14      25
Birth       MAL-ED      NEPAL                          0                11      25
Birth       MAL-ED      PERU                           1               145     218
Birth       MAL-ED      PERU                           0                73     218
Birth       MAL-ED      SOUTH AFRICA                   1                33      99
Birth       MAL-ED      SOUTH AFRICA                   0                66      99
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                24      95
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                71      95
6 months    EE          PAKISTAN                       1                39      39
6 months    EE          PAKISTAN                       0                 0      39
6 months    GMS-Nepal   NEPAL                          1               367     441
6 months    GMS-Nepal   NEPAL                          0                74     441
6 months    JiVitA-3    BANGLADESH                     1              8500    9310
6 months    JiVitA-3    BANGLADESH                     0               810    9310
6 months    JiVitA-4    BANGLADESH                     1                76      88
6 months    JiVitA-4    BANGLADESH                     0                12      88
6 months    MAL-ED      BANGLADESH                     1               191     233
6 months    MAL-ED      BANGLADESH                     0                42     233
6 months    MAL-ED      BRAZIL                         1                93     187
6 months    MAL-ED      BRAZIL                         0                94     187
6 months    MAL-ED      INDIA                          1               147     210
6 months    MAL-ED      INDIA                          0                63     210
6 months    MAL-ED      NEPAL                          1               113     227
6 months    MAL-ED      NEPAL                          0               114     227
6 months    MAL-ED      PERU                           1               176     270
6 months    MAL-ED      PERU                           0                94     270
6 months    MAL-ED      SOUTH AFRICA                   1                63     244
6 months    MAL-ED      SOUTH AFRICA                   0               181     244
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                64     212
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               148     212
24 months   EE          PAKISTAN                       1                20      20
24 months   EE          PAKISTAN                       0                 0      20
24 months   GMS-Nepal   NEPAL                          1               322     384
24 months   GMS-Nepal   NEPAL                          0                62     384
24 months   JiVitA-3    BANGLADESH                     1              4417    4833
24 months   JiVitA-3    BANGLADESH                     0               416    4833
24 months   JiVitA-4    BANGLADESH                     1               135     150
24 months   JiVitA-4    BANGLADESH                     0                15     150
24 months   MAL-ED      BANGLADESH                     1               168     205
24 months   MAL-ED      BANGLADESH                     0                37     205
24 months   MAL-ED      BRAZIL                         1                79     152
24 months   MAL-ED      BRAZIL                         0                73     152
24 months   MAL-ED      INDIA                          1               139     202
24 months   MAL-ED      INDIA                          0                63     202
24 months   MAL-ED      NEPAL                          1               110     220
24 months   MAL-ED      NEPAL                          0               110     220
24 months   MAL-ED      PERU                           1               131     198
24 months   MAL-ED      PERU                           0                67     198
24 months   MAL-ED      SOUTH AFRICA                   1                60     228
24 months   MAL-ED      SOUTH AFRICA                   0               168     228
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                54     184
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               130     184


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/09abb4ba-1d76-4324-8744-2f5665e21931/fc70eb0a-06ad-413f-b0ea-a8a08cace25a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/09abb4ba-1d76-4324-8744-2f5665e21931/fc70eb0a-06ad-413f-b0ea-a8a08cace25a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/09abb4ba-1d76-4324-8744-2f5665e21931/fc70eb0a-06ad-413f-b0ea-a8a08cace25a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -1.1124432   -1.2336464   -0.9912399
Birth       GMS-Nepal   NEPAL                          0                    NA                -1.0324286   -1.2641944   -0.8006628
Birth       JiVitA-3    BANGLADESH                     1                    NA                -0.7832777   -0.8066004   -0.7599549
Birth       JiVitA-3    BANGLADESH                     0                    NA                -0.7468273   -0.8164023   -0.6772523
Birth       JiVitA-4    BANGLADESH                     1                    NA                -0.4156180   -0.6383645   -0.1928714
Birth       JiVitA-4    BANGLADESH                     0                    NA                -0.6475000   -1.0569566   -0.2380434
Birth       MAL-ED      BANGLADESH                     1                    NA                -0.9082927   -1.0737392   -0.7428462
Birth       MAL-ED      BANGLADESH                     0                    NA                -1.0828947   -1.4144597   -0.7513298
Birth       MAL-ED      BRAZIL                         1                    NA                 0.6021739    0.1009158    1.1034320
Birth       MAL-ED      BRAZIL                         0                    NA                 0.3090625   -0.1344152    0.7525402
Birth       MAL-ED      INDIA                          1                    NA                -0.9903704   -1.3424774   -0.6382633
Birth       MAL-ED      INDIA                          0                    NA                -0.9500000   -1.4513194   -0.4486806
Birth       MAL-ED      NEPAL                          1                    NA                -0.8750000   -1.4361870   -0.3138130
Birth       MAL-ED      NEPAL                          0                    NA                -0.6918182   -1.1195999   -0.2640364
Birth       MAL-ED      PERU                           1                    NA                 0.0275862   -0.1229573    0.1781297
Birth       MAL-ED      PERU                           0                    NA                -0.1549315   -0.3652693    0.0554063
Birth       MAL-ED      SOUTH AFRICA                   1                    NA                -0.2539394   -0.6587302    0.1508515
Birth       MAL-ED      SOUTH AFRICA                   0                    NA                -0.1113636   -0.3819053    0.1591780
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.3191667    0.9752127    1.6631206
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.6240845    0.3782662    0.8699029
6 months    GMS-Nepal   NEPAL                          1                    NA                -0.6271798   -0.7373913   -0.5169683
6 months    GMS-Nepal   NEPAL                          0                    NA                -0.5836712   -0.8323071   -0.3350353
6 months    JiVitA-3    BANGLADESH                     1                    NA                -0.6062741   -0.6319474   -0.5806008
6 months    JiVitA-3    BANGLADESH                     0                    NA                -0.5812593   -0.6603089   -0.5022097
6 months    JiVitA-4    BANGLADESH                     1                    NA                -0.4150000   -0.6422302   -0.1877698
6 months    JiVitA-4    BANGLADESH                     0                    NA                -0.3858333   -0.7373291   -0.0343375
6 months    MAL-ED      BANGLADESH                     1                    NA                -0.1151571   -0.2601757    0.0298616
6 months    MAL-ED      BANGLADESH                     0                    NA                -0.2002381   -0.5182998    0.1178236
6 months    MAL-ED      BRAZIL                         1                    NA                 1.0621147    0.8082040    1.3160254
6 months    MAL-ED      BRAZIL                         0                    NA                 0.8896365    0.6459925    1.1332806
6 months    MAL-ED      INDIA                          1                    NA                -0.7117971   -0.8588634   -0.5647307
6 months    MAL-ED      INDIA                          0                    NA                -0.7344709   -1.0020269   -0.4669149
6 months    MAL-ED      NEPAL                          1                    NA                 0.1925959   -0.0134763    0.3986680
6 months    MAL-ED      NEPAL                          0                    NA                 0.0164766   -0.1576474    0.1906006
6 months    MAL-ED      PERU                           1                    NA                 1.0407955    0.8927433    1.1888476
6 months    MAL-ED      PERU                           0                    NA                 1.0712943    0.8546571    1.2879315
6 months    MAL-ED      SOUTH AFRICA                   1                    NA                 0.6922487    0.4301816    0.9543158
6 months    MAL-ED      SOUTH AFRICA                   0                    NA                 0.5091252    0.3278304    0.6904200
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.8250000    0.5720648    1.0779352
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.3963626    0.2350832    0.5576420
24 months   GMS-Nepal   NEPAL                          1                    NA                -1.1537474   -1.2663233   -1.0411715
24 months   GMS-Nepal   NEPAL                          0                    NA                -1.0663978   -1.3047957   -0.8280000
24 months   JiVitA-3    BANGLADESH                     1                    NA                -1.3156600   -1.3475591   -1.2837608
24 months   JiVitA-3    BANGLADESH                     0                    NA                -1.2609615   -1.3812131   -1.1407099
24 months   JiVitA-4    BANGLADESH                     1                    NA                -1.0175556   -1.1803689   -0.8547422
24 months   JiVitA-4    BANGLADESH                     0                    NA                -0.9380000   -1.3723208   -0.5036792
24 months   MAL-ED      BANGLADESH                     1                    NA                -0.8251190   -0.9637372   -0.6865009
24 months   MAL-ED      BANGLADESH                     0                    NA                -0.7285135   -0.9723621   -0.4846650
24 months   MAL-ED      BRAZIL                         1                    NA                 0.2879958    0.0035497    0.5724418
24 months   MAL-ED      BRAZIL                         0                    NA                 0.7255023    0.3881821    1.0628225
24 months   MAL-ED      INDIA                          1                    NA                -0.9657914   -1.1045284   -0.8270543
24 months   MAL-ED      INDIA                          0                    NA                -0.9205556   -1.1466042   -0.6945069
24 months   MAL-ED      NEPAL                          1                    NA                -0.3284091   -0.5014233   -0.1553949
24 months   MAL-ED      NEPAL                          0                    NA                -0.4296818   -0.5861835   -0.2731801
24 months   MAL-ED      PERU                           1                    NA                 0.0643957   -0.0680445    0.1968358
24 months   MAL-ED      PERU                           0                    NA                 0.2216418   -0.0148699    0.4581535
24 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.5721111    0.3346855    0.8095367
24 months   MAL-ED      SOUTH AFRICA                   0                    NA                 0.3549256    0.2137440    0.4961072
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1080556   -0.0957780    0.3118891
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0252821   -0.1463550    0.1969191


### Parameter: E(Y)


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          NA                   NA                -1.0991706   -1.2073693   -0.9909719
Birth       JiVitA-3    BANGLADESH                     NA                   NA                -0.7798636   -0.8022140   -0.7575133
Birth       JiVitA-4    BANGLADESH                     NA                   NA                -0.4347423   -0.6441144   -0.2253701
Birth       MAL-ED      BANGLADESH                     NA                   NA                -0.9411386   -1.0895370   -0.7927402
Birth       MAL-ED      BRAZIL                         NA                   NA                 0.4316364    0.0969688    0.7663039
Birth       MAL-ED      INDIA                          NA                   NA                -0.9779487   -1.2664810   -0.6894164
Birth       MAL-ED      NEPAL                          NA                   NA                -0.7944000   -1.1625222   -0.4262778
Birth       MAL-ED      PERU                           NA                   NA                -0.0335321   -0.1564905    0.0894263
Birth       MAL-ED      SOUTH AFRICA                   NA                   NA                -0.1588889   -0.3845288    0.0667510
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7996842    0.5874808    1.0118876
6 months    GMS-Nepal   NEPAL                          NA                   NA                -0.6198791   -0.7206518   -0.5191063
6 months    JiVitA-3    BANGLADESH                     NA                   NA                -0.6040977   -0.6286619   -0.5795335
6 months    JiVitA-4    BANGLADESH                     NA                   NA                -0.4110227   -0.6122701   -0.2097753
6 months    MAL-ED      BANGLADESH                     NA                   NA                -0.1304936   -0.2625419    0.0015547
6 months    MAL-ED      BRAZIL                         NA                   NA                 0.9754144    0.7990651    1.1517638
6 months    MAL-ED      INDIA                          NA                   NA                -0.7185992   -0.8491469   -0.5880515
6 months    MAL-ED      NEPAL                          NA                   NA                 0.1041483   -0.0311352    0.2394318
6 months    MAL-ED      PERU                           NA                   NA                 1.0514136    0.9289176    1.1739096
6 months    MAL-ED      SOUTH AFRICA                   NA                   NA                 0.5564071    0.4055220    0.7072922
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5257626    0.3871543    0.6643709
24 months   GMS-Nepal   NEPAL                          NA                   NA                -1.1396441   -1.2416403   -1.0376479
24 months   JiVitA-3    BANGLADESH                     NA                   NA                -1.3109518   -1.3423299   -1.2795737
24 months   JiVitA-4    BANGLADESH                     NA                   NA                -1.0096000   -1.1619164   -0.8572836
24 months   MAL-ED      BANGLADESH                     NA                   NA                -0.8076829   -0.9296166   -0.6857493
24 months   MAL-ED      BRAZIL                         NA                   NA                 0.4981140    0.2760418    0.7201863
24 months   MAL-ED      INDIA                          NA                   NA                -0.9516832   -1.0703961   -0.8329703
24 months   MAL-ED      NEPAL                          NA                   NA                -0.3790455   -0.4958857   -0.2622052
24 months   MAL-ED      PERU                           NA                   NA                 0.1176052   -0.0015211    0.2367315
24 months   MAL-ED      SOUTH AFRICA                   NA                   NA                 0.4120797    0.2900939    0.5340654
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0495743   -0.0857535    0.1849021


### Parameter: ATE


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal   NEPAL                          0                    1                  0.0800146   -0.1815301    0.3415593
Birth       JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH                     0                    1                  0.0364503   -0.0360810    0.1089817
Birth       JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH                     0                    1                 -0.2318820   -0.6871466    0.2233826
Birth       MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH                     0                    1                 -0.1746021   -0.5451528    0.1959487
Birth       MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL                         0                    1                 -0.2931114   -0.9623887    0.3761659
Birth       MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      INDIA                          0                    1                  0.0403704   -0.5722474    0.6529881
Birth       MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      NEPAL                          0                    1                  0.1831818   -0.5224583    0.8888220
Birth       MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU                           0                    1                 -0.1825177   -0.4411784    0.0761429
Birth       MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      SOUTH AFRICA                   0                    1                  0.1425758   -0.3443004    0.6294519
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.6950822   -1.1178480   -0.2723163
6 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL                          0                    1                  0.0435087   -0.2284590    0.3154763
6 months    JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH                     0                    1                  0.0250149   -0.0576286    0.1076583
6 months    JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH                     0                    1                  0.0291667   -0.3927898    0.4511231
6 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH                     0                    1                 -0.0850810   -0.4346431    0.2644810
6 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL                         0                    1                 -0.1724782   -0.5243774    0.1794211
6 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA                          0                    1                 -0.0226738   -0.3279847    0.2826370
6 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      NEPAL                          0                    1                 -0.1761193   -0.4459060    0.0936675
6 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU                           0                    1                  0.0304989   -0.2318961    0.2928938
6 months    MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      SOUTH AFRICA                   0                    1                 -0.1831234   -0.5017878    0.1355409
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.4286374   -0.7286161   -0.1286586
24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL                          0                    1                  0.0873496   -0.1762920    0.3509911
24 months   JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH                     0                    1                  0.0546984   -0.0681994    0.1775962
24 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH                     0                    1                  0.0795556   -0.3867351    0.5458462
24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH                     0                    1                  0.0966055   -0.1838889    0.3770999
24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL                         0                    1                  0.4375065   -0.0037355    0.8787485
24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA                          0                    1                  0.0452358   -0.2199923    0.3104640
24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      NEPAL                          0                    1                 -0.1012727   -0.3345680    0.1320225
24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      PERU                           0                    1                  0.1572461   -0.1138224    0.4283147
24 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      SOUTH AFRICA                   0                    1                 -0.2171855   -0.4934158    0.0590448
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0827735   -0.3492457    0.1836986


### Parameter: PAR


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                 0.0132726   -0.0302047    0.0567498
Birth       JiVitA-3    BANGLADESH                     1                    NA                 0.0034140   -0.0034110    0.0102390
Birth       JiVitA-4    BANGLADESH                     1                    NA                -0.0191243   -0.0615870    0.0233385
Birth       MAL-ED      BANGLADESH                     1                    NA                -0.0328459   -0.1031889    0.0374970
Birth       MAL-ED      BRAZIL                         1                    NA                -0.1705375   -0.5618400    0.2207649
Birth       MAL-ED      INDIA                          1                    NA                 0.0124217   -0.1761692    0.2010125
Birth       MAL-ED      NEPAL                          1                    NA                 0.0806000   -0.2320056    0.3932056
Birth       MAL-ED      PERU                           1                    NA                -0.0611183   -0.1484890    0.0262523
Birth       MAL-ED      SOUTH AFRICA                   1                    NA                 0.0950505   -0.2298063    0.4199073
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5194825   -0.8412895   -0.1976754
6 months    GMS-Nepal   NEPAL                          1                    NA                 0.0073008   -0.0383608    0.0529623
6 months    JiVitA-3    BANGLADESH                     1                    NA                 0.0021764   -0.0050005    0.0093533
6 months    JiVitA-4    BANGLADESH                     1                    NA                 0.0039773   -0.0536508    0.0616053
6 months    MAL-ED      BANGLADESH                     1                    NA                -0.0153365   -0.0784881    0.0478151
6 months    MAL-ED      BRAZIL                         1                    NA                -0.0867003   -0.2640244    0.0906239
6 months    MAL-ED      INDIA                          1                    NA                -0.0068022   -0.0984062    0.0848019
6 months    MAL-ED      NEPAL                          1                    NA                -0.0884476   -0.2244207    0.0475256
6 months    MAL-ED      PERU                           1                    NA                 0.0106181   -0.0807507    0.1019869
6 months    MAL-ED      SOUTH AFRICA                   1                    NA                -0.1358416   -0.3724425    0.1007594
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2992374   -0.5103330   -0.0881419
24 months   GMS-Nepal   NEPAL                          1                    NA                 0.0141033   -0.0285853    0.0567920
24 months   JiVitA-3    BANGLADESH                     1                    NA                 0.0047082   -0.0058343    0.0152506
24 months   JiVitA-4    BANGLADESH                     1                    NA                 0.0079556   -0.0390048    0.0549159
24 months   MAL-ED      BANGLADESH                     1                    NA                 0.0174361   -0.0334458    0.0683180
24 months   MAL-ED      BRAZIL                         1                    NA                 0.2101183   -0.0046428    0.4248793
24 months   MAL-ED      INDIA                          1                    NA                 0.0141082   -0.0686622    0.0968786
24 months   MAL-ED      NEPAL                          1                    NA                -0.0506364   -0.1674766    0.0662039
24 months   MAL-ED      PERU                           1                    NA                 0.0532095   -0.0391022    0.1455213
24 months   MAL-ED      SOUTH AFRICA                   1                    NA                -0.1600314   -0.3639494    0.0438865
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0584813   -0.2468288    0.1298663
