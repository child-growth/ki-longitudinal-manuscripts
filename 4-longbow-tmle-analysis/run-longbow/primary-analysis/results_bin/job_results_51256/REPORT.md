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

**Outcome Variable:** wasted

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

agecat      studyid               country                        predfeed3    wasted   n_cell       n
----------  --------------------  -----------------------------  ----------  -------  -------  ------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                 0      160     227
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                 1       33     227
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                 0       29     227
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                 1        5     227
Birth       ki0047075b-MAL-ED     BRAZIL                         1                 0       95     177
Birth       ki0047075b-MAL-ED     BRAZIL                         1                 1        2     177
Birth       ki0047075b-MAL-ED     BRAZIL                         0                 0       76     177
Birth       ki0047075b-MAL-ED     BRAZIL                         0                 1        4     177
Birth       ki0047075b-MAL-ED     INDIA                          1                 0      127     193
Birth       ki0047075b-MAL-ED     INDIA                          1                 1       23     193
Birth       ki0047075b-MAL-ED     INDIA                          0                 0       33     193
Birth       ki0047075b-MAL-ED     INDIA                          0                 1       10     193
Birth       ki0047075b-MAL-ED     NEPAL                          1                 0       87     166
Birth       ki0047075b-MAL-ED     NEPAL                          1                 1       10     166
Birth       ki0047075b-MAL-ED     NEPAL                          0                 0       59     166
Birth       ki0047075b-MAL-ED     NEPAL                          0                 1       10     166
Birth       ki0047075b-MAL-ED     PERU                           1                 0      173     265
Birth       ki0047075b-MAL-ED     PERU                           1                 1        4     265
Birth       ki0047075b-MAL-ED     PERU                           0                 0       86     265
Birth       ki0047075b-MAL-ED     PERU                           0                 1        2     265
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                 0       83     231
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                 1        4     231
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                 0      134     231
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                 1       10     231
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                 0       49     114
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                 1        0     114
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                 0       63     114
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                 1        2     114
Birth       ki1000109-EE          PAKISTAN                       1                 0        1       1
Birth       ki1000109-EE          PAKISTAN                       1                 1        0       1
Birth       ki1000109-EE          PAKISTAN                       0                 0        0       1
Birth       ki1000109-EE          PAKISTAN                       0                 1        0       1
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                 0    12444   15136
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                 1     1295   15136
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                 0     1246   15136
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                 1      151   15136
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                 0       28      31
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                 1        0      31
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                 0        3      31
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                 1        0      31
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                 0      195     237
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                 1        8     237
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                 0       34     237
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                 1        0     237
6 months    ki0047075b-MAL-ED     BRAZIL                         1                 0      115     209
6 months    ki0047075b-MAL-ED     BRAZIL                         1                 1        1     209
6 months    ki0047075b-MAL-ED     BRAZIL                         0                 0       93     209
6 months    ki0047075b-MAL-ED     BRAZIL                         0                 1        0     209
6 months    ki0047075b-MAL-ED     INDIA                          1                 0      169     233
6 months    ki0047075b-MAL-ED     INDIA                          1                 1        9     233
6 months    ki0047075b-MAL-ED     INDIA                          0                 0       46     233
6 months    ki0047075b-MAL-ED     INDIA                          0                 1        9     233
6 months    ki0047075b-MAL-ED     NEPAL                          1                 0      130     233
6 months    ki0047075b-MAL-ED     NEPAL                          1                 1        2     233
6 months    ki0047075b-MAL-ED     NEPAL                          0                 0       99     233
6 months    ki0047075b-MAL-ED     NEPAL                          0                 1        2     233
6 months    ki0047075b-MAL-ED     PERU                           1                 0      183     270
6 months    ki0047075b-MAL-ED     PERU                           1                 1        0     270
6 months    ki0047075b-MAL-ED     PERU                           0                 0       87     270
6 months    ki0047075b-MAL-ED     PERU                           0                 1        0     270
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                 0       84     248
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                 1        2     248
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                 0      157     248
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                 1        5     248
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                 0       91     240
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                 1        0     240
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                 0      148     240
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                 1        1     240
6 months    ki1000109-EE          PAKISTAN                       1                 0      309     375
6 months    ki1000109-EE          PAKISTAN                       1                 1       40     375
6 months    ki1000109-EE          PAKISTAN                       0                 0       17     375
6 months    ki1000109-EE          PAKISTAN                       0                 1        9     375
6 months    ki1113344-GMS-Nepal   NEPAL                          1                 0      342     458
6 months    ki1113344-GMS-Nepal   NEPAL                          1                 1       37     458
6 months    ki1113344-GMS-Nepal   NEPAL                          0                 0       72     458
6 months    ki1113344-GMS-Nepal   NEPAL                          0                 1        7     458
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                 0    13548   16253
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                 1     1215   16253
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                 0     1326   16253
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                 1      164   16253
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                 0       74      89
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                 1        3      89
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                 0       12      89
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                 1        0      89
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                 0      160     208
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                 1       18     208
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                 0       29     208
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                 1        1     208
24 months   ki0047075b-MAL-ED     BRAZIL                         1                 0       95     169
24 months   ki0047075b-MAL-ED     BRAZIL                         1                 1        3     169
24 months   ki0047075b-MAL-ED     BRAZIL                         0                 0       71     169
24 months   ki0047075b-MAL-ED     BRAZIL                         0                 1        0     169
24 months   ki0047075b-MAL-ED     INDIA                          1                 0      149     225
24 months   ki0047075b-MAL-ED     INDIA                          1                 1       21     225
24 months   ki0047075b-MAL-ED     INDIA                          0                 0       49     225
24 months   ki0047075b-MAL-ED     INDIA                          0                 1        6     225
24 months   ki0047075b-MAL-ED     NEPAL                          1                 0      124     225
24 months   ki0047075b-MAL-ED     NEPAL                          1                 1        4     225
24 months   ki0047075b-MAL-ED     NEPAL                          0                 0       96     225
24 months   ki0047075b-MAL-ED     NEPAL                          0                 1        1     225
24 months   ki0047075b-MAL-ED     PERU                           1                 0      134     199
24 months   ki0047075b-MAL-ED     PERU                           1                 1        3     199
24 months   ki0047075b-MAL-ED     PERU                           0                 0       62     199
24 months   ki0047075b-MAL-ED     PERU                           0                 1        0     199
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                 0       80     232
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                 1        1     232
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                 0      151     232
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                 1        0     232
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                 0       79     210
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                 1        0     210
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                 0      127     210
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                 1        4     210
24 months   ki1113344-GMS-Nepal   NEPAL                          1                 0      270     404
24 months   ki1113344-GMS-Nepal   NEPAL                          1                 1       66     404
24 months   ki1113344-GMS-Nepal   NEPAL                          0                 0       59     404
24 months   ki1113344-GMS-Nepal   NEPAL                          0                 1        9     404
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                 0     5849    8313
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                 1     1646    8313
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                 0      634    8313
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                 1      184    8313
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                 0      114     151
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                 1       22     151
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                 0       11     151
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                 1        4     151


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/ff1fd856-d00f-457c-9510-0b8915d25d3a/c047a120-db61-4ce5-b917-dc8072c718b2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ff1fd856-d00f-457c-9510-0b8915d25d3a/c047a120-db61-4ce5-b917-dc8072c718b2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ff1fd856-d00f-457c-9510-0b8915d25d3a/c047a120-db61-4ce5-b917-dc8072c718b2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ff1fd856-d00f-457c-9510-0b8915d25d3a/c047a120-db61-4ce5-b917-dc8072c718b2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1709845   0.1177506   0.2242183
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1470588   0.0277500   0.2663676
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                0.1514545   0.0934374   0.2094717
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                0.2063388   0.0741253   0.3385523
Birth       ki0047075b-MAL-ED     NEPAL        1                    NA                0.1008369   0.0399707   0.1617032
Birth       ki0047075b-MAL-ED     NEPAL        0                    NA                0.1480998   0.0639531   0.2322464
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0958890   0.0906249   0.1011531
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0936133   0.0867445   0.1004821
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.0505618   0.0183053   0.0828183
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1636364   0.0656562   0.2616165
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.1146132   0.0811475   0.1480788
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.3461538   0.1630432   0.5292645
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0976253   0.0677111   0.1275396
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0886076   0.0258744   0.1513408
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0830054   0.0779252   0.0880856
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0956456   0.0798761   0.1114152
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.1235294   0.0739565   0.1731024
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1090909   0.0265166   0.1916652
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1964286   0.1538951   0.2389621
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1323529   0.0517093   0.2129966
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2205368   0.2098007   0.2312729
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2235054   0.1896239   0.2573869


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1674009   0.1187276   0.2160742
Birth       ki0047075b-MAL-ED     INDIA        NA                   NA                0.1709845   0.1177299   0.2242391
Birth       ki0047075b-MAL-ED     NEPAL        NA                   NA                0.1204819   0.0708125   0.1701514
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0955338   0.0902714   0.1007962
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.0772532   0.0428971   0.1116093
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.1306667   0.0965090   0.1648243
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0960699   0.0690520   0.1230877
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0848459   0.0799494   0.0897424
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.1200000   0.0774445   0.1625555
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1856436   0.1476821   0.2236050
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2201371   0.2099559   0.2303184


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8600713   0.3606934   2.050835
Birth       ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED     INDIA        0                    1                 1.3623812   0.6448801   2.878182
Birth       ki0047075b-MAL-ED     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED     NEPAL        0                    1                 1.4687056   0.6449274   3.344711
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9762673   0.9294667   1.025424
6 months    ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                 3.2363636   1.3492003   7.763154
6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000109-EE          PAKISTAN     0                    1                 3.0201923   1.6505346   5.526428
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9076291   0.4196337   1.963118
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.1522822   0.9695558   1.369446
24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                 0.8831169   0.3749247   2.080139
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.6737968   0.3529368   1.286355
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0134607   0.8649022   1.187536


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0035836   -0.0231834   0.0160162
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                 0.0195299   -0.0121304   0.0511902
Birth       ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0196450   -0.0230537   0.0623437
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0003552   -0.0008063   0.0000960
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.0266914    0.0015702   0.0518126
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.0160535    0.0018375   0.0302695
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0015555   -0.0135476   0.0104367
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0018405    0.0002696   0.0034114
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0035294   -0.0270864   0.0200275
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0107850   -0.0263084   0.0047384
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0003997   -0.0037435   0.0029442


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0214071   -0.1453552   0.0891275
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                 0.1142205   -0.0897825   0.2800349
Birth       ki0047075b-MAL-ED     NEPAL        1                    NA                 0.1630535   -0.2737477   0.4500642
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0037179   -0.0084639   0.0010057
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.3455056   -0.0210466   0.5804668
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.1228583    0.0110358   0.2220370
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0161909   -0.1489352   0.1012165
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0216923    0.0030110   0.0400235
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0294118   -0.2454450   0.1491486
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0580952   -0.1446338   0.0219007
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0018155   -0.0171208   0.0132594
