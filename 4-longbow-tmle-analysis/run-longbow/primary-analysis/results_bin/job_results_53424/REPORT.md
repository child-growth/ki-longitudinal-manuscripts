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

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid               country                        predfeed3    stunted   n_cell       n
----------  --------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                  0      141     215
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                  1       35     215
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                  0       34     215
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                  1        5     215
Birth       ki0047075b-MAL-ED     BRAZIL                         1                  0       21      57
Birth       ki0047075b-MAL-ED     BRAZIL                         1                  1        3      57
Birth       ki0047075b-MAL-ED     BRAZIL                         0                  0       28      57
Birth       ki0047075b-MAL-ED     BRAZIL                         0                  1        5      57
Birth       ki0047075b-MAL-ED     INDIA                          1                  0       21      41
Birth       ki0047075b-MAL-ED     INDIA                          1                  1        8      41
Birth       ki0047075b-MAL-ED     INDIA                          0                  0       12      41
Birth       ki0047075b-MAL-ED     INDIA                          0                  1        0      41
Birth       ki0047075b-MAL-ED     NEPAL                          1                  0       13      26
Birth       ki0047075b-MAL-ED     NEPAL                          1                  1        1      26
Birth       ki0047075b-MAL-ED     NEPAL                          0                  0       11      26
Birth       ki0047075b-MAL-ED     NEPAL                          0                  1        1      26
Birth       ki0047075b-MAL-ED     PERU                           1                  0      134     223
Birth       ki0047075b-MAL-ED     PERU                           1                  1       16     223
Birth       ki0047075b-MAL-ED     PERU                           0                  0       65     223
Birth       ki0047075b-MAL-ED     PERU                           0                  1        8     223
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                  0       32     100
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                  1        1     100
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                  0       59     100
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                  1        8     100
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  0       21     102
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  1        5     102
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  0       62     102
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  1       14     102
Birth       ki1000109-EE          PAKISTAN                       1                  0       20      35
Birth       ki1000109-EE          PAKISTAN                       1                  1       15      35
Birth       ki1000109-EE          PAKISTAN                       0                  0        0      35
Birth       ki1000109-EE          PAKISTAN                       0                  1        0      35
Birth       ki1113344-GMS-Nepal   NEPAL                          1                  0      317     458
Birth       ki1113344-GMS-Nepal   NEPAL                          1                  1       63     458
Birth       ki1113344-GMS-Nepal   NEPAL                          0                  0       63     458
Birth       ki1113344-GMS-Nepal   NEPAL                          0                  1       15     458
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                  0     8077   13276
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                  1     3940   13276
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                  0      817   13276
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                  1      442   13276
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                  0       71     116
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                  1       34     116
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                  0        7     116
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                  1        4     116
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                  0      158     233
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                  1       33     233
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                  0       31     233
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                  1       11     233
6 months    ki0047075b-MAL-ED     BRAZIL                         1                  0       90     187
6 months    ki0047075b-MAL-ED     BRAZIL                         1                  1        3     187
6 months    ki0047075b-MAL-ED     BRAZIL                         0                  0       92     187
6 months    ki0047075b-MAL-ED     BRAZIL                         0                  1        2     187
6 months    ki0047075b-MAL-ED     INDIA                          1                  0      118     210
6 months    ki0047075b-MAL-ED     INDIA                          1                  1       29     210
6 months    ki0047075b-MAL-ED     INDIA                          0                  0       53     210
6 months    ki0047075b-MAL-ED     INDIA                          0                  1       10     210
6 months    ki0047075b-MAL-ED     NEPAL                          1                  0      107     227
6 months    ki0047075b-MAL-ED     NEPAL                          1                  1        6     227
6 months    ki0047075b-MAL-ED     NEPAL                          0                  0      109     227
6 months    ki0047075b-MAL-ED     NEPAL                          0                  1        5     227
6 months    ki0047075b-MAL-ED     PERU                           1                  0      144     270
6 months    ki0047075b-MAL-ED     PERU                           1                  1       32     270
6 months    ki0047075b-MAL-ED     PERU                           0                  0       68     270
6 months    ki0047075b-MAL-ED     PERU                           0                  1       26     270
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                  0       55     244
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                  1        8     244
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                  0      142     244
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                  1       39     244
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  0       51     212
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  1       13     212
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  0      108     212
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  1       40     212
6 months    ki1000109-EE          PAKISTAN                       1                  0       17      39
6 months    ki1000109-EE          PAKISTAN                       1                  1       22      39
6 months    ki1000109-EE          PAKISTAN                       0                  0        0      39
6 months    ki1000109-EE          PAKISTAN                       0                  1        0      39
6 months    ki1113344-GMS-Nepal   NEPAL                          1                  0      292     441
6 months    ki1113344-GMS-Nepal   NEPAL                          1                  1       75     441
6 months    ki1113344-GMS-Nepal   NEPAL                          0                  0       56     441
6 months    ki1113344-GMS-Nepal   NEPAL                          0                  1       18     441
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                  0     6392    9328
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                  1     2124    9328
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                  0      596    9328
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                  1      216    9328
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                  0       64      88
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                  1       12      88
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                  0        8      88
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                  1        4      88
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                  0       88     205
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                  1       80     205
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                  0       18     205
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                  1       19     205
24 months   ki0047075b-MAL-ED     BRAZIL                         1                  0       75     152
24 months   ki0047075b-MAL-ED     BRAZIL                         1                  1        4     152
24 months   ki0047075b-MAL-ED     BRAZIL                         0                  0       70     152
24 months   ki0047075b-MAL-ED     BRAZIL                         0                  1        3     152
24 months   ki0047075b-MAL-ED     INDIA                          1                  0       69     202
24 months   ki0047075b-MAL-ED     INDIA                          1                  1       70     202
24 months   ki0047075b-MAL-ED     INDIA                          0                  0       46     202
24 months   ki0047075b-MAL-ED     INDIA                          0                  1       17     202
24 months   ki0047075b-MAL-ED     NEPAL                          1                  0       87     220
24 months   ki0047075b-MAL-ED     NEPAL                          1                  1       23     220
24 months   ki0047075b-MAL-ED     NEPAL                          0                  0       85     220
24 months   ki0047075b-MAL-ED     NEPAL                          0                  1       25     220
24 months   ki0047075b-MAL-ED     PERU                           1                  0       84     198
24 months   ki0047075b-MAL-ED     PERU                           1                  1       47     198
24 months   ki0047075b-MAL-ED     PERU                           0                  0       42     198
24 months   ki0047075b-MAL-ED     PERU                           0                  1       25     198
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                  0       41     228
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                  1       19     228
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                  0      107     228
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                  1       61     228
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  0       13     184
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  1       41     184
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  0       36     184
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  1       94     184
24 months   ki1000109-EE          PAKISTAN                       1                  0        5      20
24 months   ki1000109-EE          PAKISTAN                       1                  1       15      20
24 months   ki1000109-EE          PAKISTAN                       0                  0        0      20
24 months   ki1000109-EE          PAKISTAN                       0                  1        0      20
24 months   ki1113344-GMS-Nepal   NEPAL                          1                  0      181     384
24 months   ki1113344-GMS-Nepal   NEPAL                          1                  1      141     384
24 months   ki1113344-GMS-Nepal   NEPAL                          0                  0       33     384
24 months   ki1113344-GMS-Nepal   NEPAL                          0                  1       29     384
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                  0     2275    4852
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                  1     2159    4852
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                  0      181    4852
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                  1      237    4852
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                  0       84     151
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                  1       52     151
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                  0        6     151
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                  1        9     151


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

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




# Results Detail

## Results Plots
![](/tmp/f8541ad5-255a-499e-87a4-eb1350278bee/f00fad8a-a9e3-4e1f-a7f3-06f338916b9b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f8541ad5-255a-499e-87a4-eb1350278bee/f00fad8a-a9e3-4e1f-a7f3-06f338916b9b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f8541ad5-255a-499e-87a4-eb1350278bee/f00fad8a-a9e3-4e1f-a7f3-06f338916b9b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f8541ad5-255a-499e-87a4-eb1350278bee/f00fad8a-a9e3-4e1f-a7f3-06f338916b9b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1988636   0.1397572   0.2579701
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.1282051   0.0230361   0.2333742
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                0.1066667   0.0571559   0.1561774
Birth       ki0047075b-MAL-ED     PERU                           0                    NA                0.1095890   0.0377697   0.1814084
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1923077   0.0400700   0.3445454
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1842105   0.0966261   0.2717950
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1651124   0.1276382   0.2025866
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1749633   0.0863299   0.2635967
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.3294885   0.3203205   0.3386564
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.3353412   0.3244624   0.3462200
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1715939   0.1178456   0.2253422
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.2730183   0.1363265   0.4097100
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                0.1982917   0.1333591   0.2632243
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                0.1566336   0.0656282   0.2476390
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                0.0530973   0.0116634   0.0945313
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                0.0438597   0.0061851   0.0815342
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                0.1836984   0.1261117   0.2412851
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                0.2712696   0.1802590   0.3622801
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.1269841   0.0445978   0.2093705
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.2154696   0.1554493   0.2754900
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2049374   0.1042771   0.3055976
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2672786   0.1954844   0.3390729
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.2047843   0.1634227   0.2461459
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.2460556   0.1471406   0.3449706
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.2500899   0.2393069   0.2608730
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.2589114   0.2299367   0.2878860
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.4777535   0.4024696   0.5530374
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.4986241   0.3458902   0.6513580
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.5050702   0.4215442   0.5885962
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.2838012   0.1720307   0.3955716
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.2056681   0.1296513   0.2816850
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.2288106   0.1498998   0.3077215
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.3688759   0.2869712   0.4507805
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.3635033   0.2472807   0.4797260
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.3108694   0.1895776   0.4321613
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.3654175   0.2921004   0.4387346
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7389262   0.6200036   0.8578488
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7251316   0.6478884   0.8023748
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.4379380   0.3838374   0.4920387
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.4503936   0.3289351   0.5718521
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.4881091   0.4705299   0.5056883
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.5559987   0.5021689   0.6098285
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.3823529   0.2957347   0.4689712
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.6000000   0.3670443   0.8329557


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1860465   0.1339088   0.2381842
Birth       ki0047075b-MAL-ED     PERU                           NA                   NA                0.1076233   0.0668572   0.1483894
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1862745   0.1103463   0.2622027
Birth       ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1703057   0.1358418   0.2047695
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.3300693   0.3209240   0.3392146
6 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1888412   0.1384789   0.2392035
6 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1857143   0.1329930   0.2384356
6 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.0484582   0.0204625   0.0764538
6 months    ki0047075b-MAL-ED     PERU                           NA                   NA                0.2148148   0.1657364   0.2638932
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.1926230   0.1430395   0.2422064
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2500000   0.1915738   0.3084262
6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.2108844   0.1727677   0.2490010
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.2508576   0.2404565   0.2612588
24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.4829268   0.4143544   0.5514993
24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.4306931   0.3622377   0.4991484
24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.2181818   0.1634817   0.2728819
24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.3636364   0.2964623   0.4308104
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.3508772   0.2887937   0.4129607
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7336957   0.6696530   0.7977384
24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.4427083   0.3929634   0.4924533
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.4938170   0.4765272   0.5111067
24 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.4039735   0.3218653   0.4860818


### Parameter: RR


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    1                 0.6446886   0.2694179   1.5426722
Birth       ki0047075b-MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     PERU                           0                    1                 1.0273973   0.4602209   2.2935618
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9578947   0.3804270   2.4119274
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    1                 1.0596619   0.6076659   1.8478629
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.0177631   0.9981966   1.0377131
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                 1.5910721   0.8812890   2.8725089
6 months    ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     INDIA                          0                    1                 0.7899153   0.4039008   1.5448500
6 months    ki0047075b-MAL-ED     NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     NEPAL                          0                    1                 0.8260234   0.2588158   2.6362948
6 months    ki0047075b-MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     PERU                           0                    1                 1.4767115   0.9332136   2.3367391
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 1.6968232   0.8375239   3.4377634
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.3041967   0.7449596   2.2832499
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                 1.2015353   0.7659772   1.8847652
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.0352730   0.9220388   1.1624134
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                 1.0436848   0.7464279   1.4593211
24 months   ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     INDIA                          0                    1                 0.5619044   0.3663003   0.8619608
24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                 1.1125236   0.6724771   1.8405219
24 months   ki0047075b-MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     PERU                           0                    1                 0.9854354   0.6711678   1.4468556
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 1.1754694   0.7577227   1.8235278
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9813316   0.8092656   1.1899823
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 1.0284414   0.7686534   1.3760320
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.1390868   1.0314281   1.2579828
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 1.5692308   1.0057767   2.4483420


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0128171   -0.0350027    0.0093685
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                 0.0009567   -0.0275995    0.0295128
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0060332   -0.1368996    0.1248333
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0051933   -0.0111346    0.0215211
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0005808   -0.0000220    0.0011837
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0172473   -0.0089705    0.0434651
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0125774   -0.0466738    0.0215190
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0046392   -0.0327696    0.0234912
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                 0.0311164   -0.0066887    0.0689214
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0656388   -0.0101306    0.1414083
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0450626   -0.0420119    0.1321372
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0061000   -0.0118435    0.0240435
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0007677   -0.0018165    0.0033519
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0051733   -0.0257699    0.0361165
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0743771   -0.1204727   -0.0282815
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0125137   -0.0419719    0.0669993
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0052395   -0.0525054    0.0420263
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0400078   -0.0651644    0.1451800
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0052305   -0.1064124    0.0959514
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0047703   -0.0153992    0.0249398
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0057079    0.0009065    0.0105092
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0216206   -0.0032699    0.0465111


### Parameter: PAF


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0688920   -0.1941495    0.0432269
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                 0.0088889   -0.2953346    0.2416622
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0323887   -1.0387102    0.4772056
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0304938   -0.0701969    0.1217109
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0017597   -0.0000693    0.0035854
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0913323   -0.0575583    0.2192611
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0677245   -0.2675038    0.1005664
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0957361   -0.8572107    0.3535264
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                 0.1448521   -0.0486554    0.3026519
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.3407633   -0.1850142    0.6332592
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1802506   -0.2521645    0.4633380
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0289260   -0.0599079    0.1103145
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0030603   -0.0072988    0.0133128
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0107124   -0.0555048    0.0727755
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.1726917   -0.2877854   -0.0678843
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0573545   -0.2285419    0.2767194
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0144087   -0.1531337    0.1076274
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.1140222   -0.2431689    0.3685840
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0071290   -0.1549367    0.1217623
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0107753   -0.0358951    0.0553430
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0115586    0.0018111    0.0212110
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0535198   -0.0115565    0.1144095
