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

**Outcome Variable:** stunted

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

agecat      studyid     country                        predfeed3    stunted   n_cell       n
----------  ----------  -----------------------------  ----------  --------  -------  ------
Birth       EE          PAKISTAN                       1                  0       20      35
Birth       EE          PAKISTAN                       1                  1       15      35
Birth       EE          PAKISTAN                       0                  0        0      35
Birth       EE          PAKISTAN                       0                  1        0      35
Birth       GMS-Nepal   NEPAL                          1                  0      317     458
Birth       GMS-Nepal   NEPAL                          1                  1       63     458
Birth       GMS-Nepal   NEPAL                          0                  0       63     458
Birth       GMS-Nepal   NEPAL                          0                  1       15     458
Birth       JiVitA-3    BANGLADESH                     1                  0     8077   13276
Birth       JiVitA-3    BANGLADESH                     1                  1     3940   13276
Birth       JiVitA-3    BANGLADESH                     0                  0      817   13276
Birth       JiVitA-3    BANGLADESH                     0                  1      442   13276
Birth       JiVitA-4    BANGLADESH                     1                  0       71     116
Birth       JiVitA-4    BANGLADESH                     1                  1       34     116
Birth       JiVitA-4    BANGLADESH                     0                  0        7     116
Birth       JiVitA-4    BANGLADESH                     0                  1        4     116
Birth       MAL-ED      BANGLADESH                     1                  0      141     215
Birth       MAL-ED      BANGLADESH                     1                  1       35     215
Birth       MAL-ED      BANGLADESH                     0                  0       34     215
Birth       MAL-ED      BANGLADESH                     0                  1        5     215
Birth       MAL-ED      BRAZIL                         1                  0       21      57
Birth       MAL-ED      BRAZIL                         1                  1        3      57
Birth       MAL-ED      BRAZIL                         0                  0       28      57
Birth       MAL-ED      BRAZIL                         0                  1        5      57
Birth       MAL-ED      INDIA                          1                  0       21      41
Birth       MAL-ED      INDIA                          1                  1        8      41
Birth       MAL-ED      INDIA                          0                  0       12      41
Birth       MAL-ED      INDIA                          0                  1        0      41
Birth       MAL-ED      NEPAL                          1                  0       13      26
Birth       MAL-ED      NEPAL                          1                  1        1      26
Birth       MAL-ED      NEPAL                          0                  0       11      26
Birth       MAL-ED      NEPAL                          0                  1        1      26
Birth       MAL-ED      PERU                           1                  0      134     223
Birth       MAL-ED      PERU                           1                  1       16     223
Birth       MAL-ED      PERU                           0                  0       65     223
Birth       MAL-ED      PERU                           0                  1        8     223
Birth       MAL-ED      SOUTH AFRICA                   1                  0       32     100
Birth       MAL-ED      SOUTH AFRICA                   1                  1        1     100
Birth       MAL-ED      SOUTH AFRICA                   0                  0       59     100
Birth       MAL-ED      SOUTH AFRICA                   0                  1        8     100
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  0       21     102
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  1        5     102
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  0       62     102
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  1       14     102
6 months    EE          PAKISTAN                       1                  0       17      39
6 months    EE          PAKISTAN                       1                  1       22      39
6 months    EE          PAKISTAN                       0                  0        0      39
6 months    EE          PAKISTAN                       0                  1        0      39
6 months    GMS-Nepal   NEPAL                          1                  0      292     441
6 months    GMS-Nepal   NEPAL                          1                  1       75     441
6 months    GMS-Nepal   NEPAL                          0                  0       56     441
6 months    GMS-Nepal   NEPAL                          0                  1       18     441
6 months    JiVitA-3    BANGLADESH                     1                  0     6392    9328
6 months    JiVitA-3    BANGLADESH                     1                  1     2124    9328
6 months    JiVitA-3    BANGLADESH                     0                  0      596    9328
6 months    JiVitA-3    BANGLADESH                     0                  1      216    9328
6 months    JiVitA-4    BANGLADESH                     1                  0       64      88
6 months    JiVitA-4    BANGLADESH                     1                  1       12      88
6 months    JiVitA-4    BANGLADESH                     0                  0        8      88
6 months    JiVitA-4    BANGLADESH                     0                  1        4      88
6 months    MAL-ED      BANGLADESH                     1                  0      158     233
6 months    MAL-ED      BANGLADESH                     1                  1       33     233
6 months    MAL-ED      BANGLADESH                     0                  0       31     233
6 months    MAL-ED      BANGLADESH                     0                  1       11     233
6 months    MAL-ED      BRAZIL                         1                  0       90     187
6 months    MAL-ED      BRAZIL                         1                  1        3     187
6 months    MAL-ED      BRAZIL                         0                  0       92     187
6 months    MAL-ED      BRAZIL                         0                  1        2     187
6 months    MAL-ED      INDIA                          1                  0      118     210
6 months    MAL-ED      INDIA                          1                  1       29     210
6 months    MAL-ED      INDIA                          0                  0       53     210
6 months    MAL-ED      INDIA                          0                  1       10     210
6 months    MAL-ED      NEPAL                          1                  0      107     227
6 months    MAL-ED      NEPAL                          1                  1        6     227
6 months    MAL-ED      NEPAL                          0                  0      109     227
6 months    MAL-ED      NEPAL                          0                  1        5     227
6 months    MAL-ED      PERU                           1                  0      144     270
6 months    MAL-ED      PERU                           1                  1       32     270
6 months    MAL-ED      PERU                           0                  0       68     270
6 months    MAL-ED      PERU                           0                  1       26     270
6 months    MAL-ED      SOUTH AFRICA                   1                  0       55     244
6 months    MAL-ED      SOUTH AFRICA                   1                  1        8     244
6 months    MAL-ED      SOUTH AFRICA                   0                  0      142     244
6 months    MAL-ED      SOUTH AFRICA                   0                  1       39     244
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  0       51     212
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  1       13     212
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  0      108     212
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  1       40     212
24 months   EE          PAKISTAN                       1                  0        5      20
24 months   EE          PAKISTAN                       1                  1       15      20
24 months   EE          PAKISTAN                       0                  0        0      20
24 months   EE          PAKISTAN                       0                  1        0      20
24 months   GMS-Nepal   NEPAL                          1                  0      181     384
24 months   GMS-Nepal   NEPAL                          1                  1      141     384
24 months   GMS-Nepal   NEPAL                          0                  0       33     384
24 months   GMS-Nepal   NEPAL                          0                  1       29     384
24 months   JiVitA-3    BANGLADESH                     1                  0     2275    4852
24 months   JiVitA-3    BANGLADESH                     1                  1     2159    4852
24 months   JiVitA-3    BANGLADESH                     0                  0      181    4852
24 months   JiVitA-3    BANGLADESH                     0                  1      237    4852
24 months   JiVitA-4    BANGLADESH                     1                  0       84     151
24 months   JiVitA-4    BANGLADESH                     1                  1       52     151
24 months   JiVitA-4    BANGLADESH                     0                  0        6     151
24 months   JiVitA-4    BANGLADESH                     0                  1        9     151
24 months   MAL-ED      BANGLADESH                     1                  0       88     205
24 months   MAL-ED      BANGLADESH                     1                  1       80     205
24 months   MAL-ED      BANGLADESH                     0                  0       18     205
24 months   MAL-ED      BANGLADESH                     0                  1       19     205
24 months   MAL-ED      BRAZIL                         1                  0       75     152
24 months   MAL-ED      BRAZIL                         1                  1        4     152
24 months   MAL-ED      BRAZIL                         0                  0       70     152
24 months   MAL-ED      BRAZIL                         0                  1        3     152
24 months   MAL-ED      INDIA                          1                  0       69     202
24 months   MAL-ED      INDIA                          1                  1       70     202
24 months   MAL-ED      INDIA                          0                  0       46     202
24 months   MAL-ED      INDIA                          0                  1       17     202
24 months   MAL-ED      NEPAL                          1                  0       87     220
24 months   MAL-ED      NEPAL                          1                  1       23     220
24 months   MAL-ED      NEPAL                          0                  0       85     220
24 months   MAL-ED      NEPAL                          0                  1       25     220
24 months   MAL-ED      PERU                           1                  0       84     198
24 months   MAL-ED      PERU                           1                  1       47     198
24 months   MAL-ED      PERU                           0                  0       42     198
24 months   MAL-ED      PERU                           0                  1       25     198
24 months   MAL-ED      SOUTH AFRICA                   1                  0       41     228
24 months   MAL-ED      SOUTH AFRICA                   1                  1       19     228
24 months   MAL-ED      SOUTH AFRICA                   0                  0      107     228
24 months   MAL-ED      SOUTH AFRICA                   0                  1       61     228
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  0       13     184
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  1       41     184
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  0       36     184
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  1       94     184


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
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL

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




# Results Detail

## Results Plots
![](/tmp/45436df8-a5b6-430b-b5a7-763dde736ee6/b7211cce-69ac-450b-8eb2-d15dc473cd01/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/45436df8-a5b6-430b-b5a7-763dde736ee6/b7211cce-69ac-450b-8eb2-d15dc473cd01/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/45436df8-a5b6-430b-b5a7-763dde736ee6/b7211cce-69ac-450b-8eb2-d15dc473cd01/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/45436df8-a5b6-430b-b5a7-763dde736ee6/b7211cce-69ac-450b-8eb2-d15dc473cd01/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL                          1                    NA                0.1657895   0.1283571   0.2032218
Birth       GMS-Nepal   NEPAL                          0                    NA                0.1923077   0.1047495   0.2798659
Birth       JiVitA-3    BANGLADESH                     1                    NA                0.3278689   0.3183822   0.3373555
Birth       JiVitA-3    BANGLADESH                     0                    NA                0.3510723   0.3236678   0.3784768
Birth       MAL-ED      BANGLADESH                     1                    NA                0.1988636   0.1397572   0.2579701
Birth       MAL-ED      BANGLADESH                     0                    NA                0.1282051   0.0230361   0.2333742
Birth       MAL-ED      PERU                           1                    NA                0.1066667   0.0571559   0.1561774
Birth       MAL-ED      PERU                           0                    NA                0.1095890   0.0377697   0.1814084
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1923077   0.0400700   0.3445454
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1842105   0.0966261   0.2717950
6 months    GMS-Nepal   NEPAL                          1                    NA                0.2043597   0.1630583   0.2456610
6 months    GMS-Nepal   NEPAL                          0                    NA                0.2432432   0.1453791   0.3411074
6 months    JiVitA-3    BANGLADESH                     1                    NA                0.2494129   0.2384987   0.2603271
6 months    JiVitA-3    BANGLADESH                     0                    NA                0.2660099   0.2326399   0.2993799
6 months    MAL-ED      BANGLADESH                     1                    NA                0.1727749   0.1190448   0.2265050
6 months    MAL-ED      BANGLADESH                     0                    NA                0.2619048   0.1286492   0.3951603
6 months    MAL-ED      INDIA                          1                    NA                0.1972789   0.1327954   0.2617624
6 months    MAL-ED      INDIA                          0                    NA                0.1587302   0.0682795   0.2491808
6 months    MAL-ED      NEPAL                          1                    NA                0.0530973   0.0116634   0.0945313
6 months    MAL-ED      NEPAL                          0                    NA                0.0438596   0.0061851   0.0815342
6 months    MAL-ED      PERU                           1                    NA                0.1818182   0.1247307   0.2389057
6 months    MAL-ED      PERU                           0                    NA                0.2765957   0.1860010   0.3671905
6 months    MAL-ED      SOUTH AFRICA                   1                    NA                0.1269841   0.0445978   0.2093705
6 months    MAL-ED      SOUTH AFRICA                   0                    NA                0.2154696   0.1554493   0.2754900
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2031250   0.1043239   0.3019261
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2702703   0.1985529   0.3419876
24 months   GMS-Nepal   NEPAL                          1                    NA                0.4378882   0.3836283   0.4921481
24 months   GMS-Nepal   NEPAL                          0                    NA                0.4677419   0.3433814   0.5921025
24 months   JiVitA-3    BANGLADESH                     1                    NA                0.4869193   0.4692487   0.5045898
24 months   JiVitA-3    BANGLADESH                     0                    NA                0.5669856   0.5077964   0.6261749
24 months   JiVitA-4    BANGLADESH                     1                    NA                0.3823529   0.2957347   0.4689712
24 months   JiVitA-4    BANGLADESH                     0                    NA                0.6000000   0.3670443   0.8329557
24 months   MAL-ED      BANGLADESH                     1                    NA                0.4761905   0.4004841   0.5518968
24 months   MAL-ED      BANGLADESH                     0                    NA                0.5135135   0.3520701   0.6749570
24 months   MAL-ED      INDIA                          1                    NA                0.5035971   0.4202718   0.5869225
24 months   MAL-ED      INDIA                          0                    NA                0.2698413   0.1599614   0.3797212
24 months   MAL-ED      NEPAL                          1                    NA                0.2090909   0.1329230   0.2852588
24 months   MAL-ED      NEPAL                          0                    NA                0.2272727   0.1487803   0.3057652
24 months   MAL-ED      PERU                           1                    NA                0.3587786   0.2764351   0.4411221
24 months   MAL-ED      PERU                           0                    NA                0.3731343   0.2570349   0.4892337
24 months   MAL-ED      SOUTH AFRICA                   1                    NA                0.3166667   0.1987040   0.4346293
24 months   MAL-ED      SOUTH AFRICA                   0                    NA                0.3630952   0.2902174   0.4359731
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7592593   0.6449176   0.8736009
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7230769   0.6459455   0.8002084


### Parameter: E(Y)


agecat      studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL                          NA                   NA                0.1703057   0.1358418   0.2047695
Birth       JiVitA-3    BANGLADESH                     NA                   NA                0.3300693   0.3209240   0.3392146
Birth       MAL-ED      BANGLADESH                     NA                   NA                0.1860465   0.1339088   0.2381842
Birth       MAL-ED      PERU                           NA                   NA                0.1076233   0.0668572   0.1483894
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1862745   0.1103463   0.2622027
6 months    GMS-Nepal   NEPAL                          NA                   NA                0.2108844   0.1727677   0.2490010
6 months    JiVitA-3    BANGLADESH                     NA                   NA                0.2508576   0.2404565   0.2612588
6 months    MAL-ED      BANGLADESH                     NA                   NA                0.1888412   0.1384789   0.2392035
6 months    MAL-ED      INDIA                          NA                   NA                0.1857143   0.1329930   0.2384356
6 months    MAL-ED      NEPAL                          NA                   NA                0.0484581   0.0204625   0.0764538
6 months    MAL-ED      PERU                           NA                   NA                0.2148148   0.1657364   0.2638932
6 months    MAL-ED      SOUTH AFRICA                   NA                   NA                0.1926230   0.1430395   0.2422064
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2500000   0.1915738   0.3084262
24 months   GMS-Nepal   NEPAL                          NA                   NA                0.4427083   0.3929634   0.4924533
24 months   JiVitA-3    BANGLADESH                     NA                   NA                0.4938170   0.4765272   0.5111067
24 months   JiVitA-4    BANGLADESH                     NA                   NA                0.4039735   0.3218653   0.4860818
24 months   MAL-ED      BANGLADESH                     NA                   NA                0.4829268   0.4143544   0.5514993
24 months   MAL-ED      INDIA                          NA                   NA                0.4306931   0.3622377   0.4991484
24 months   MAL-ED      NEPAL                          NA                   NA                0.2181818   0.1634817   0.2728819
24 months   MAL-ED      PERU                           NA                   NA                0.3636364   0.2964623   0.4308104
24 months   MAL-ED      SOUTH AFRICA                   NA                   NA                0.3508772   0.2887937   0.4129607
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7336957   0.6696530   0.7977384


### Parameter: RR


agecat      studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal   NEPAL                          0                    1                 1.1599512   0.6977930   1.9282033
Birth       JiVitA-3    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-3    BANGLADESH                     0                    1                 1.0707705   0.9871214   1.1615079
Birth       MAL-ED      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       MAL-ED      BANGLADESH                     0                    1                 0.6446886   0.2694179   1.5426722
Birth       MAL-ED      PERU                           1                    1                 1.0000000   1.0000000   1.0000000
Birth       MAL-ED      PERU                           0                    1                 1.0273973   0.4602209   2.2935618
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9578947   0.3804270   2.4119274
6 months    GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal   NEPAL                          0                    1                 1.1902703   0.7587688   1.8671606
6 months    JiVitA-3    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-3    BANGLADESH                     0                    1                 1.0665442   0.9341671   1.2176800
6 months    MAL-ED      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED      BANGLADESH                     0                    1                 1.5158730   0.8350069   2.7519186
6 months    MAL-ED      INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED      INDIA                          0                    1                 0.8045977   0.4171360   1.5519577
6 months    MAL-ED      NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED      NEPAL                          0                    1                 0.8260234   0.2588158   2.6362948
6 months    MAL-ED      PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED      PERU                           0                    1                 1.5212766   0.9664054   2.3947326
6 months    MAL-ED      SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED      SOUTH AFRICA                   0                    1                 1.6968232   0.8375239   3.4377634
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 1.3305613   0.7645427   2.3156242
24 months   GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal   NEPAL                          0                    1                 1.0681766   0.7966190   1.4323048
24 months   JiVitA-3    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-3    BANGLADESH                     0                    1                 1.1644346   1.0444091   1.2982538
24 months   JiVitA-4    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-4    BANGLADESH                     0                    1                 1.5692308   1.0057767   2.4483420
24 months   MAL-ED      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED      BANGLADESH                     0                    1                 1.0783784   0.7581731   1.5338185
24 months   MAL-ED      INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED      INDIA                          0                    1                 0.5358277   0.3452532   0.8315963
24 months   MAL-ED      NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED      NEPAL                          0                    1                 1.0869565   0.6579716   1.7956313
24 months   MAL-ED      PERU                           1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED      PERU                           0                    1                 1.0400127   0.7065207   1.5309197
24 months   MAL-ED      SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED      SOUTH AFRICA                   0                    1                 1.1466165   0.7510149   1.7506038
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9523452   0.7918560   1.1453616


### Parameter: PAR


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                 0.0045162   -0.0117267    0.0207591
Birth       JiVitA-3    BANGLADESH                     1                    NA                 0.0022004   -0.0004917    0.0048926
Birth       MAL-ED      BANGLADESH                     1                    NA                -0.0128171   -0.0350027    0.0093685
Birth       MAL-ED      PERU                           1                    NA                 0.0009567   -0.0275995    0.0295128
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0060332   -0.1368996    0.1248333
6 months    GMS-Nepal   NEPAL                          1                    NA                 0.0065247   -0.0113511    0.0244005
6 months    JiVitA-3    BANGLADESH                     1                    NA                 0.0014448   -0.0016139    0.0045034
6 months    MAL-ED      BANGLADESH                     1                    NA                 0.0160663   -0.0102056    0.0423383
6 months    MAL-ED      INDIA                          1                    NA                -0.0115646   -0.0449755    0.0218462
6 months    MAL-ED      NEPAL                          1                    NA                -0.0046392   -0.0327696    0.0234912
6 months    MAL-ED      PERU                           1                    NA                 0.0329966   -0.0046719    0.0706652
6 months    MAL-ED      SOUTH AFRICA                   1                    NA                 0.0656388   -0.0101306    0.1414083
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0468750   -0.0384564    0.1322064
24 months   GMS-Nepal   NEPAL                          1                    NA                 0.0048201   -0.0171145    0.0267548
24 months   JiVitA-3    BANGLADESH                     1                    NA                 0.0068977    0.0014300    0.0123655
24 months   JiVitA-4    BANGLADESH                     1                    NA                 0.0216206   -0.0032699    0.0465111
24 months   MAL-ED      BANGLADESH                     1                    NA                 0.0067364   -0.0255071    0.0389799
24 months   MAL-ED      INDIA                          1                    NA                -0.0729041   -0.1184438   -0.0273643
24 months   MAL-ED      NEPAL                          1                    NA                 0.0090909   -0.0456092    0.0637910
24 months   MAL-ED      PERU                           1                    NA                 0.0048577   -0.0433158    0.0530313
24 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0342105   -0.0679940    0.1364150
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0255636   -0.1230398    0.0719126


### Parameter: PAF


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                 0.0265182   -0.0735854    0.1172879
Birth       JiVitA-3    BANGLADESH                     1                    NA                 0.0066666   -0.0015219    0.0147882
Birth       MAL-ED      BANGLADESH                     1                    NA                -0.0688920   -0.1941495    0.0432269
Birth       MAL-ED      PERU                           1                    NA                 0.0088889   -0.2953346    0.2416622
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0323887   -1.0387102    0.4772056
6 months    GMS-Nepal   NEPAL                          1                    NA                 0.0309396   -0.0575470    0.1120224
6 months    JiVitA-3    BANGLADESH                     1                    NA                 0.0057593   -0.0065169    0.0178857
6 months    MAL-ED      BANGLADESH                     1                    NA                 0.0850785   -0.0639375    0.2132233
6 months    MAL-ED      INDIA                          1                    NA                -0.0622711   -0.2577767    0.1028457
6 months    MAL-ED      NEPAL                          1                    NA                -0.0957361   -0.8572107    0.3535264
6 months    MAL-ED      PERU                           1                    NA                 0.1536050   -0.0389061    0.3104435
6 months    MAL-ED      SOUTH AFRICA                   1                    NA                 0.3407633   -0.1850142    0.6332592
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1875000   -0.2347442    0.4653498
24 months   GMS-Nepal   NEPAL                          1                    NA                 0.0108878   -0.0399297    0.0592221
24 months   JiVitA-3    BANGLADESH                     1                    NA                 0.0139682    0.0028659    0.0249469
24 months   JiVitA-4    BANGLADESH                     1                    NA                 0.0535198   -0.0115565    0.1144095
24 months   MAL-ED      BANGLADESH                     1                    NA                 0.0139490   -0.0551566    0.0785287
24 months   MAL-ED      INDIA                          1                    NA                -0.1692715   -0.2827858   -0.0658021
24 months   MAL-ED      NEPAL                          1                    NA                 0.0416667   -0.2447615    0.2621858
24 months   MAL-ED      PERU                           1                    NA                 0.0133588   -0.1284275    0.1373297
24 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0975000   -0.2462646    0.3464419
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0348422   -0.1767899    0.0899833
