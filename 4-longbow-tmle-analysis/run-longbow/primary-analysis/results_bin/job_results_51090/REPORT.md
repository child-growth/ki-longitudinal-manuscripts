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

agecat      studyid               country                        predfeed3    stunted   n_cell       n
----------  --------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                  0      169     240
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                  1       36     240
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                  0       30     240
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                  1        5     240
Birth       ki0047075b-MAL-ED     BRAZIL                         1                  0       93     185
Birth       ki0047075b-MAL-ED     BRAZIL                         1                  1        8     185
Birth       ki0047075b-MAL-ED     BRAZIL                         0                  0       73     185
Birth       ki0047075b-MAL-ED     BRAZIL                         0                  1       11     185
Birth       ki0047075b-MAL-ED     INDIA                          1                  0      130     196
Birth       ki0047075b-MAL-ED     INDIA                          1                  1       22     196
Birth       ki0047075b-MAL-ED     INDIA                          0                  0       35     196
Birth       ki0047075b-MAL-ED     INDIA                          0                  1        9     196
Birth       ki0047075b-MAL-ED     NEPAL                          1                  0       91     171
Birth       ki0047075b-MAL-ED     NEPAL                          1                  1        8     171
Birth       ki0047075b-MAL-ED     NEPAL                          0                  0       62     171
Birth       ki0047075b-MAL-ED     NEPAL                          0                  1       10     171
Birth       ki0047075b-MAL-ED     PERU                           1                  0      160     272
Birth       ki0047075b-MAL-ED     PERU                           1                  1       23     272
Birth       ki0047075b-MAL-ED     PERU                           0                  0       80     272
Birth       ki0047075b-MAL-ED     PERU                           0                  1        9     272
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                  0       80     233
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                  1        7     233
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                  0      129     233
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                  1       17     233
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  0       45     119
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  1        5     119
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  0       56     119
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  1       13     119
Birth       ki1000109-EE          PAKISTAN                       1                  0        1       2
Birth       ki1000109-EE          PAKISTAN                       1                  1        1       2
Birth       ki1000109-EE          PAKISTAN                       0                  0        0       2
Birth       ki1000109-EE          PAKISTAN                       0                  1        0       2
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                  0    11670   18710
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                  1     5162   18710
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                  0     1135   18710
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                  1      743   18710
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                  0       24      40
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                  1       13      40
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                  0        2      40
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                  1        1      40
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                  0      166     237
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                  1       37     237
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                  0       27     237
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                  1        7     237
6 months    ki0047075b-MAL-ED     BRAZIL                         1                  0      112     209
6 months    ki0047075b-MAL-ED     BRAZIL                         1                  1        4     209
6 months    ki0047075b-MAL-ED     BRAZIL                         0                  0       91     209
6 months    ki0047075b-MAL-ED     BRAZIL                         0                  1        2     209
6 months    ki0047075b-MAL-ED     INDIA                          1                  0      144     233
6 months    ki0047075b-MAL-ED     INDIA                          1                  1       34     233
6 months    ki0047075b-MAL-ED     INDIA                          0                  0       45     233
6 months    ki0047075b-MAL-ED     INDIA                          0                  1       10     233
6 months    ki0047075b-MAL-ED     NEPAL                          1                  0      126     233
6 months    ki0047075b-MAL-ED     NEPAL                          1                  1        6     233
6 months    ki0047075b-MAL-ED     NEPAL                          0                  0       96     233
6 months    ki0047075b-MAL-ED     NEPAL                          0                  1        5     233
6 months    ki0047075b-MAL-ED     PERU                           1                  0      148     270
6 months    ki0047075b-MAL-ED     PERU                           1                  1       35     270
6 months    ki0047075b-MAL-ED     PERU                           0                  0       63     270
6 months    ki0047075b-MAL-ED     PERU                           0                  1       24     270
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                  0       69     248
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                  1       17     248
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                  0      130     248
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                  1       32     248
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  0       75     240
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  1       16     240
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  0      108     240
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  1       41     240
6 months    ki1000109-EE          PAKISTAN                       1                  0      166     371
6 months    ki1000109-EE          PAKISTAN                       1                  1      180     371
6 months    ki1000109-EE          PAKISTAN                       0                  0       12     371
6 months    ki1000109-EE          PAKISTAN                       0                  1       13     371
6 months    ki1113344-GMS-Nepal   NEPAL                          1                  0      305     458
6 months    ki1113344-GMS-Nepal   NEPAL                          1                  1       74     458
6 months    ki1113344-GMS-Nepal   NEPAL                          0                  0       59     458
6 months    ki1113344-GMS-Nepal   NEPAL                          0                  1       20     458
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                  0    11230   16281
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                  1     3567   16281
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                  0      998   16281
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                  1      486   16281
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                  0       65      89
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                  1       12      89
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                  0        7      89
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                  1        5      89
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                  0       95     208
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                  1       83     208
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                  0       17     208
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                  1       13     208
24 months   ki0047075b-MAL-ED     BRAZIL                         1                  0       95     169
24 months   ki0047075b-MAL-ED     BRAZIL                         1                  1        3     169
24 months   ki0047075b-MAL-ED     BRAZIL                         0                  0       68     169
24 months   ki0047075b-MAL-ED     BRAZIL                         0                  1        3     169
24 months   ki0047075b-MAL-ED     INDIA                          1                  0       87     225
24 months   ki0047075b-MAL-ED     INDIA                          1                  1       83     225
24 months   ki0047075b-MAL-ED     INDIA                          0                  0       44     225
24 months   ki0047075b-MAL-ED     INDIA                          0                  1       11     225
24 months   ki0047075b-MAL-ED     NEPAL                          1                  0      102     225
24 months   ki0047075b-MAL-ED     NEPAL                          1                  1       26     225
24 months   ki0047075b-MAL-ED     NEPAL                          0                  0       75     225
24 months   ki0047075b-MAL-ED     NEPAL                          0                  1       22     225
24 months   ki0047075b-MAL-ED     PERU                           1                  0       85     199
24 months   ki0047075b-MAL-ED     PERU                           1                  1       52     199
24 months   ki0047075b-MAL-ED     PERU                           0                  0       41     199
24 months   ki0047075b-MAL-ED     PERU                           0                  1       21     199
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                  0       54     232
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                  1       27     232
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                  0       97     232
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                  1       54     232
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  0       24     210
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  1       55     210
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  0       36     210
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  1       95     210
24 months   ki1113344-GMS-Nepal   NEPAL                          1                  0      188     404
24 months   ki1113344-GMS-Nepal   NEPAL                          1                  1      148     404
24 months   ki1113344-GMS-Nepal   NEPAL                          0                  0       36     404
24 months   ki1113344-GMS-Nepal   NEPAL                          0                  1       32     404
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                  0     3834    8341
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                  1     3686    8341
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                  0      416    8341
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                  1      405    8341
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                  0       85     152
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                  1       52     152
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                  0        6     152
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                  1        9     152


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

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

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
![](/tmp/10f07f57-3848-443d-ab42-a24631502b18/aa2cee54-3bdb-4b5a-a9d1-2ee331dc9d7c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/10f07f57-3848-443d-ab42-a24631502b18/aa2cee54-3bdb-4b5a-a9d1-2ee331dc9d7c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/10f07f57-3848-443d-ab42-a24631502b18/aa2cee54-3bdb-4b5a-a9d1-2ee331dc9d7c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/10f07f57-3848-443d-ab42-a24631502b18/aa2cee54-3bdb-4b5a-a9d1-2ee331dc9d7c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1756098   0.1234160   0.2278035
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.1428571   0.0266860   0.2590283
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.0792079   0.0263963   0.1320195
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.1309524   0.0586148   0.2032899
Birth       ki0047075b-MAL-ED     INDIA                          1                    NA                0.1447368   0.0886609   0.2008128
Birth       ki0047075b-MAL-ED     INDIA                          0                    NA                0.2045455   0.0850545   0.3240364
Birth       ki0047075b-MAL-ED     NEPAL                          1                    NA                0.0808081   0.0269644   0.1346517
Birth       ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1388889   0.0587730   0.2190048
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                0.1256831   0.0775664   0.1737997
Birth       ki0047075b-MAL-ED     PERU                           0                    NA                0.1011236   0.0383714   0.1638758
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.0804598   0.0231805   0.1377390
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.1164384   0.0642982   0.1685785
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1000000   0.0164942   0.1835058
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1884058   0.0957500   0.2810616
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.3155581   0.3079881   0.3231281
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.3159255   0.3083370   0.3235139
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1822660   0.1290457   0.2354863
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.2058824   0.0696818   0.3420829
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                0.1984445   0.1403899   0.2564991
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                0.2531226   0.1527166   0.3535285
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                0.0454545   0.0098437   0.0810654
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                0.0495050   0.0071094   0.0919005
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                0.1931948   0.1360048   0.2503849
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                0.2737963   0.1794999   0.3680927
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.1731959   0.0860133   0.2603786
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.1969856   0.1354983   0.2584728
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1689604   0.0901683   0.2477526
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2658731   0.1937471   0.3379992
6 months    ki1000109-EE          PAKISTAN                       1                    NA                0.5220452   0.4692154   0.5748750
6 months    ki1000109-EE          PAKISTAN                       0                    NA                0.5376151   0.3321986   0.7430316
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1945566   0.1545799   0.2345333
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.2421065   0.1445351   0.3396779
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.2460260   0.2375497   0.2545024
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.2785663   0.2549205   0.3022121
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.1558442   0.0767551   0.2349333
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.4166667   0.1460475   0.6872858
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.4650288   0.3914644   0.5385932
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.4258246   0.2444934   0.6071558
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.4808136   0.4054368   0.5561904
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.2131150   0.1076305   0.3185994
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.2050725   0.1364472   0.2736978
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.2335507   0.1481884   0.3189130
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.3792961   0.2986772   0.4599151
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.3323655   0.2148311   0.4498999
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.3406327   0.2367831   0.4444822
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.3588933   0.2820974   0.4356892
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7106772   0.6097327   0.8116217
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7200429   0.6453301   0.7947557
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.4418669   0.3886780   0.4950559
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.4795574   0.3604106   0.5987043
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.4931045   0.4791136   0.5070953
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.4724107   0.4333069   0.5115146
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.3795620   0.2934360   0.4656880
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.6000000   0.3502268   0.8497732


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1708333   0.1231182   0.2185485
Birth       ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.1027027   0.0588397   0.1465657
Birth       ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1581633   0.1069482   0.2093783
Birth       ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1052632   0.0591304   0.1513959
Birth       ki0047075b-MAL-ED     PERU                           NA                   NA                0.1176471   0.0792874   0.1560068
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.1030043   0.0638908   0.1421178
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1512605   0.0866122   0.2159088
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.3156066   0.3080361   0.3231771
6 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1856540   0.1360463   0.2352617
6 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1888412   0.1384789   0.2392035
6 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.0472103   0.0199192   0.0745014
6 months    ki0047075b-MAL-ED     PERU                           NA                   NA                0.2185185   0.1691358   0.2679013
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.1975806   0.1479246   0.2472367
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2375000   0.1835488   0.2914512
6 months    ki1000109-EE          PAKISTAN                       NA                   NA                0.5202156   0.4693105   0.5711208
6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.2052402   0.1682114   0.2422689
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.2489405   0.2407278   0.2571531
6 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.1910112   0.1139351   0.2680874
24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.4615385   0.3936268   0.5294501
24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.4177778   0.3531914   0.4823642
24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.2133333   0.1596859   0.2669808
24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.3668342   0.2997053   0.4339630
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.3491379   0.2876648   0.4106110
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7142857   0.6530398   0.7755316
24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.4455446   0.3970186   0.4940706
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.4904688   0.4770397   0.5038978
24 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.4013158   0.3195309   0.4831007


### Parameter: RR


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    1                 0.8134921   0.3422446   1.9336149
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    1                 1.6532738   0.6955236   3.9298656
Birth       ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     INDIA                          0                    1                 1.4132231   0.7011005   2.8486639
Birth       ki0047075b-MAL-ED     NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     NEPAL                          0                    1                 1.7187500   0.7119720   4.1491820
Birth       ki0047075b-MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     PERU                           0                    1                 0.8045921   0.3880727   1.6681629
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 1.4471624   0.6241172   3.3555862
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.8840579   0.7148488   4.9656295
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.0011642   0.9998916   1.0024384
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                 1.1295707   0.5481086   2.3278782
6 months    ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     INDIA                          0                    1                 1.2755333   0.7761888   2.0961204
6 months    ki0047075b-MAL-ED     NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     NEPAL                          0                    1                 1.0891089   0.3411881   3.4765517
6 months    ki0047075b-MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     PERU                           0                    1                 1.4172032   0.9005751   2.2302026
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 1.1373567   0.6287097   2.0575160
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.5735823   0.9160794   2.7029983
6 months    ki1000109-EE          PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN                       0                    1                 1.0298248   0.6932234   1.5298661
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                 1.2444013   0.7916911   1.9559834
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.1322635   1.0380252   1.2350573
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 2.6736111   1.1673323   6.1235320
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                 0.9156950   0.5812724   1.4425205
24 months   ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     INDIA                          0                    1                 0.4432383   0.2649658   0.7414547
24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                 1.1388689   0.6934654   1.8703493
24 months   ki0047075b-MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     PERU                           0                    1                 0.8762692   0.5843842   1.3139432
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 1.0536079   0.7251289   1.5308859
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0131785   0.8534900   1.2027449
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 1.0852982   0.8236175   1.4301206
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 0.9580338   0.8797255   1.0433126
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 1.5807692   0.9874364   2.5306252


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0047764   -0.0234071    0.0138543
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0234948   -0.0173423    0.0643319
Birth       ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0134264   -0.0164113    0.0432642
Birth       ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0244551   -0.0164163    0.0653265
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                -0.0080360   -0.0339466    0.0178746
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0225445   -0.0260421    0.0711311
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0512605   -0.0214909    0.1240120
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0000485    0.0000035    0.0000935
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0033880   -0.0176166    0.0243926
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0096033   -0.0383724    0.0191658
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0017558   -0.0222460    0.0257575
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                 0.0253237   -0.0103071    0.0609545
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0243847   -0.0462180    0.0949874
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0685396    0.0015876    0.1354916
6 months    ki1000109-EE          PAKISTAN                       1                    NA                -0.0018296   -0.0158113    0.0121522
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0106836   -0.0073827    0.0287498
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0029144    0.0007423    0.0050866
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0351671   -0.0027750    0.0731092
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0034903   -0.0314570    0.0244763
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0630358   -0.0967155   -0.0293562
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0082608   -0.0388098    0.0553314
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0124620   -0.0554475    0.0305235
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0085053   -0.0761110    0.0931215
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0036085   -0.0728477    0.0800647
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0036776   -0.0182668    0.0256220
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0026357   -0.0064545    0.0011831
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0217537   -0.0039060    0.0474135


### Parameter: PAF


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0279595   -0.1428331    0.0753673
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.2287650   -0.2748478    0.5334318
Birth       ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0848896   -0.1229961    0.2542922
Birth       ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.2323232   -0.2547570    0.5303253
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                -0.0683060   -0.3119006    0.1300578
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.2188697   -0.4178009    0.5696402
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3388889   -0.3337756    0.6723078
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0001538    0.0000112    0.0002963
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0182490   -0.1016012    0.1250599
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0508538   -0.2154584    0.0914591
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0371901   -0.6318452    0.4319296
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                 0.1158880   -0.0617826    0.2638286
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.1234165   -0.3207647    0.4182168
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2885877   -0.0526688    0.5192149
6 months    ki1000109-EE          PAKISTAN                       1                    NA                -0.0035169   -0.0307582    0.0230044
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0520539   -0.0399714    0.1359361
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0117074    0.0029380    0.0203996
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.1841100   -0.0402855    0.3601021
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0075624   -0.0700213    0.0512506
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.1508836   -0.2358366   -0.0717704
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0387227   -0.2086346    0.2354562
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0339717   -0.1580587    0.0768193
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0243608   -0.2507213    0.2389416
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0050519   -0.1079882    0.1065594
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0082542   -0.0422478    0.0563091
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0053738   -0.0131902    0.0023823
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0542061   -0.0131535    0.1170872
