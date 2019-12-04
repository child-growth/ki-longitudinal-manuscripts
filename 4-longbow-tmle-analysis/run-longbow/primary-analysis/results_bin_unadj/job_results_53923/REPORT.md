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

**Outcome Variable:** sstunted

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

agecat      studyid               country                        predfeed3    sstunted   n_cell       n
----------  --------------------  -----------------------------  ----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                   0      169     215
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                   1        7     215
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                   0       39     215
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                   1        0     215
Birth       ki0047075b-MAL-ED     BRAZIL                         1                   0       23      57
Birth       ki0047075b-MAL-ED     BRAZIL                         1                   1        1      57
Birth       ki0047075b-MAL-ED     BRAZIL                         0                   0       32      57
Birth       ki0047075b-MAL-ED     BRAZIL                         0                   1        1      57
Birth       ki0047075b-MAL-ED     INDIA                          1                   0       27      41
Birth       ki0047075b-MAL-ED     INDIA                          1                   1        2      41
Birth       ki0047075b-MAL-ED     INDIA                          0                   0       12      41
Birth       ki0047075b-MAL-ED     INDIA                          0                   1        0      41
Birth       ki0047075b-MAL-ED     NEPAL                          1                   0       14      26
Birth       ki0047075b-MAL-ED     NEPAL                          1                   1        0      26
Birth       ki0047075b-MAL-ED     NEPAL                          0                   0       11      26
Birth       ki0047075b-MAL-ED     NEPAL                          0                   1        1      26
Birth       ki0047075b-MAL-ED     PERU                           1                   0      147     223
Birth       ki0047075b-MAL-ED     PERU                           1                   1        3     223
Birth       ki0047075b-MAL-ED     PERU                           0                   0       73     223
Birth       ki0047075b-MAL-ED     PERU                           0                   1        0     223
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                   0       33     100
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                   1        0     100
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                   0       66     100
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                   1        1     100
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                   0       24     102
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                   1        2     102
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                   0       71     102
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                   1        5     102
Birth       ki1000109-EE          PAKISTAN                       1                   0       28      35
Birth       ki1000109-EE          PAKISTAN                       1                   1        7      35
Birth       ki1000109-EE          PAKISTAN                       0                   0        0      35
Birth       ki1000109-EE          PAKISTAN                       0                   1        0      35
Birth       ki1113344-GMS-Nepal   NEPAL                          1                   0      367     458
Birth       ki1113344-GMS-Nepal   NEPAL                          1                   1       13     458
Birth       ki1113344-GMS-Nepal   NEPAL                          0                   0       73     458
Birth       ki1113344-GMS-Nepal   NEPAL                          0                   1        5     458
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                   0    10708   13276
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                   1     1309   13276
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                   0     1116   13276
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                   1      143   13276
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                   0       97     116
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                   1        8     116
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                   0        9     116
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                   1        2     116
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                   0      185     233
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                   1        6     233
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                   0       40     233
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                   1        2     233
6 months    ki0047075b-MAL-ED     BRAZIL                         1                   0       93     187
6 months    ki0047075b-MAL-ED     BRAZIL                         1                   1        0     187
6 months    ki0047075b-MAL-ED     BRAZIL                         0                   0       94     187
6 months    ki0047075b-MAL-ED     BRAZIL                         0                   1        0     187
6 months    ki0047075b-MAL-ED     INDIA                          1                   0      142     210
6 months    ki0047075b-MAL-ED     INDIA                          1                   1        5     210
6 months    ki0047075b-MAL-ED     INDIA                          0                   0       59     210
6 months    ki0047075b-MAL-ED     INDIA                          0                   1        4     210
6 months    ki0047075b-MAL-ED     NEPAL                          1                   0      112     227
6 months    ki0047075b-MAL-ED     NEPAL                          1                   1        1     227
6 months    ki0047075b-MAL-ED     NEPAL                          0                   0      114     227
6 months    ki0047075b-MAL-ED     NEPAL                          0                   1        0     227
6 months    ki0047075b-MAL-ED     PERU                           1                   0      170     270
6 months    ki0047075b-MAL-ED     PERU                           1                   1        6     270
6 months    ki0047075b-MAL-ED     PERU                           0                   0       91     270
6 months    ki0047075b-MAL-ED     PERU                           0                   1        3     270
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                   0       62     244
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                   1        1     244
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                   0      176     244
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                   1        5     244
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                   0       61     212
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                   1        3     212
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                   0      140     212
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                   1        8     212
6 months    ki1000109-EE          PAKISTAN                       1                   0       28      39
6 months    ki1000109-EE          PAKISTAN                       1                   1       11      39
6 months    ki1000109-EE          PAKISTAN                       0                   0        0      39
6 months    ki1000109-EE          PAKISTAN                       0                   1        0      39
6 months    ki1113344-GMS-Nepal   NEPAL                          1                   0      356     441
6 months    ki1113344-GMS-Nepal   NEPAL                          1                   1       11     441
6 months    ki1113344-GMS-Nepal   NEPAL                          0                   0       69     441
6 months    ki1113344-GMS-Nepal   NEPAL                          0                   1        5     441
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                   0     7997    9328
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                   1      519    9328
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                   0      757    9328
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                   1       55    9328
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                   0       76      88
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                   1        0      88
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                   0       11      88
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                   1        1      88
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                   0      144     205
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                   1       24     205
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                   0       33     205
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                   1        4     205
24 months   ki0047075b-MAL-ED     BRAZIL                         1                   0       78     152
24 months   ki0047075b-MAL-ED     BRAZIL                         1                   1        1     152
24 months   ki0047075b-MAL-ED     BRAZIL                         0                   0       73     152
24 months   ki0047075b-MAL-ED     BRAZIL                         0                   1        0     152
24 months   ki0047075b-MAL-ED     INDIA                          1                   0      118     202
24 months   ki0047075b-MAL-ED     INDIA                          1                   1       21     202
24 months   ki0047075b-MAL-ED     INDIA                          0                   0       55     202
24 months   ki0047075b-MAL-ED     INDIA                          0                   1        8     202
24 months   ki0047075b-MAL-ED     NEPAL                          1                   0      106     220
24 months   ki0047075b-MAL-ED     NEPAL                          1                   1        4     220
24 months   ki0047075b-MAL-ED     NEPAL                          0                   0      108     220
24 months   ki0047075b-MAL-ED     NEPAL                          0                   1        2     220
24 months   ki0047075b-MAL-ED     PERU                           1                   0      123     198
24 months   ki0047075b-MAL-ED     PERU                           1                   1        8     198
24 months   ki0047075b-MAL-ED     PERU                           0                   0       61     198
24 months   ki0047075b-MAL-ED     PERU                           0                   1        6     198
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                   0       56     228
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                   1        4     228
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                   0      146     228
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                   1       22     228
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                   0       40     184
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                   1       14     184
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                   0       80     184
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                   1       50     184
24 months   ki1000109-EE          PAKISTAN                       1                   0       12      20
24 months   ki1000109-EE          PAKISTAN                       1                   1        8      20
24 months   ki1000109-EE          PAKISTAN                       0                   0        0      20
24 months   ki1000109-EE          PAKISTAN                       0                   1        0      20
24 months   ki1113344-GMS-Nepal   NEPAL                          1                   0      289     384
24 months   ki1113344-GMS-Nepal   NEPAL                          1                   1       33     384
24 months   ki1113344-GMS-Nepal   NEPAL                          0                   0       56     384
24 months   ki1113344-GMS-Nepal   NEPAL                          0                   1        6     384
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                   0     3764    4852
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                   1      670    4852
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                   0      345    4852
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                   1       73    4852
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                   0      130     151
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                   1        6     151
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                   0       13     151
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                   1        2     151


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/cf3083c6-8e88-4372-b2cc-7414644131b5/43f764b4-f9ea-4fce-80bd-f606d92128b1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cf3083c6-8e88-4372-b2cc-7414644131b5/43f764b4-f9ea-4fce-80bd-f606d92128b1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cf3083c6-8e88-4372-b2cc-7414644131b5/43f764b4-f9ea-4fce-80bd-f606d92128b1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cf3083c6-8e88-4372-b2cc-7414644131b5/43f764b4-f9ea-4fce-80bd-f606d92128b1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.0342105   0.0159147   0.0525064
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.0641026   0.0096865   0.1185186
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.1089290   0.1027965   0.1150616
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1135822   0.0963683   0.1307961
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.0299728   0.0125080   0.0474375
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.0675676   0.0103139   0.1248212
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.0609441   0.0553822   0.0665060
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.0677340   0.0485068   0.0869612
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.1510791   0.0913956   0.2107626
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.1269841   0.0445625   0.2094058
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.0610687   0.0199596   0.1021778
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.0895522   0.0210072   0.1580973
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2592593   0.1420573   0.3764612
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3846154   0.3007570   0.4684738
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1024845   0.0693152   0.1356538
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.0967742   0.0230863   0.1704621
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.1511051   0.1386879   0.1635223
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1746411   0.1248778   0.2244045


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.0393013   0.0214863   0.0571164
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.1093703   0.1036242   0.1151164
6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.0362812   0.0188094   0.0537530
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.0615352   0.0561307   0.0669396
24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1435644   0.0950890   0.1920397
24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.0707071   0.0349120   0.1065021
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3478261   0.2788203   0.4168318
24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1015625   0.0713101   0.1318149
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.1531327   0.1409934   0.1652721


### Parameter: RR


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    1                 1.8737673   0.6870436   5.110307
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.0427176   0.8859037   1.227289
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                 2.2542998   0.8061176   6.304126
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.1114117   0.8275515   1.492639
24 months   ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     INDIA                          0                    1                 0.8405140   0.3931435   1.796962
24 months   ki0047075b-MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     PERU                           0                    1                 1.4664179   0.5291425   4.063899
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.4835165   0.8980932   2.450549
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 0.9442815   0.4128368   2.159855
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.1557595   0.8589935   1.555052


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0050908   -0.0047405   0.0149221
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0004413   -0.0013037   0.0021862
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0063084   -0.0038212   0.0164381
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0005911   -0.0011344   0.0023165
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0075148   -0.0392898   0.0242603
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0096384   -0.0174732   0.0367499
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0885668   -0.0135874   0.1907210
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0009220   -0.0139710   0.0121270
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0020276   -0.0024133   0.0064686


### Parameter: PAF


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.1295322   -0.1516576   0.3420664
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0040347   -0.0120665   0.0198797
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.1738760   -0.1415465   0.4021437
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0096052   -0.0187901   0.0372091
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0523443   -0.2981063   0.1468891
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.1363141   -0.3379192   0.4424526
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2546296   -0.1040144   0.4967665
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0090779   -0.1460736   0.1115421
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0132410   -0.0160800   0.0417159
