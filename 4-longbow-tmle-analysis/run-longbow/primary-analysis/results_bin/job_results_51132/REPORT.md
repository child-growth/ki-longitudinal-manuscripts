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

agecat      studyid               country                        predfeed3    sstunted   n_cell       n
----------  --------------------  -----------------------------  ----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                   0      198     240
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                   1        7     240
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                   0       35     240
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                   1        0     240
Birth       ki0047075b-MAL-ED     BRAZIL                         1                   0       97     185
Birth       ki0047075b-MAL-ED     BRAZIL                         1                   1        4     185
Birth       ki0047075b-MAL-ED     BRAZIL                         0                   0       80     185
Birth       ki0047075b-MAL-ED     BRAZIL                         0                   1        4     185
Birth       ki0047075b-MAL-ED     INDIA                          1                   0      147     196
Birth       ki0047075b-MAL-ED     INDIA                          1                   1        5     196
Birth       ki0047075b-MAL-ED     INDIA                          0                   0       42     196
Birth       ki0047075b-MAL-ED     INDIA                          0                   1        2     196
Birth       ki0047075b-MAL-ED     NEPAL                          1                   0       96     171
Birth       ki0047075b-MAL-ED     NEPAL                          1                   1        3     171
Birth       ki0047075b-MAL-ED     NEPAL                          0                   0       69     171
Birth       ki0047075b-MAL-ED     NEPAL                          0                   1        3     171
Birth       ki0047075b-MAL-ED     PERU                           1                   0      178     272
Birth       ki0047075b-MAL-ED     PERU                           1                   1        5     272
Birth       ki0047075b-MAL-ED     PERU                           0                   0       88     272
Birth       ki0047075b-MAL-ED     PERU                           0                   1        1     272
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                   0       87     233
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                   1        0     233
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                   0      145     233
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                   1        1     233
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                   0       48     119
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                   1        2     119
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                   0       65     119
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                   1        4     119
Birth       ki1000109-EE          PAKISTAN                       1                   0        2       2
Birth       ki1000109-EE          PAKISTAN                       1                   1        0       2
Birth       ki1000109-EE          PAKISTAN                       0                   0        0       2
Birth       ki1000109-EE          PAKISTAN                       0                   1        0       2
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                   0    15316   18710
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                   1     1516   18710
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                   0     1598   18710
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                   1      280   18710
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                   0       33      40
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                   1        4      40
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                   0        3      40
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                   1        0      40
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                   0      197     237
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                   1        6     237
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                   0       32     237
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                   1        2     237
6 months    ki0047075b-MAL-ED     BRAZIL                         1                   0      116     209
6 months    ki0047075b-MAL-ED     BRAZIL                         1                   1        0     209
6 months    ki0047075b-MAL-ED     BRAZIL                         0                   0       93     209
6 months    ki0047075b-MAL-ED     BRAZIL                         0                   1        0     209
6 months    ki0047075b-MAL-ED     INDIA                          1                   0      173     233
6 months    ki0047075b-MAL-ED     INDIA                          1                   1        5     233
6 months    ki0047075b-MAL-ED     INDIA                          0                   0       51     233
6 months    ki0047075b-MAL-ED     INDIA                          0                   1        4     233
6 months    ki0047075b-MAL-ED     NEPAL                          1                   0      131     233
6 months    ki0047075b-MAL-ED     NEPAL                          1                   1        1     233
6 months    ki0047075b-MAL-ED     NEPAL                          0                   0      101     233
6 months    ki0047075b-MAL-ED     NEPAL                          0                   1        0     233
6 months    ki0047075b-MAL-ED     PERU                           1                   0      174     270
6 months    ki0047075b-MAL-ED     PERU                           1                   1        9     270
6 months    ki0047075b-MAL-ED     PERU                           0                   0       85     270
6 months    ki0047075b-MAL-ED     PERU                           0                   1        2     270
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                   0       85     248
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                   1        1     248
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                   0      157     248
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                   1        5     248
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                   0       86     240
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                   1        5     240
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                   0      140     240
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                   1        9     240
6 months    ki1000109-EE          PAKISTAN                       1                   0      257     371
6 months    ki1000109-EE          PAKISTAN                       1                   1       89     371
6 months    ki1000109-EE          PAKISTAN                       0                   0       20     371
6 months    ki1000109-EE          PAKISTAN                       0                   1        5     371
6 months    ki1113344-GMS-Nepal   NEPAL                          1                   0      369     458
6 months    ki1113344-GMS-Nepal   NEPAL                          1                   1       10     458
6 months    ki1113344-GMS-Nepal   NEPAL                          0                   0       74     458
6 months    ki1113344-GMS-Nepal   NEPAL                          0                   1        5     458
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                   0    14033   16281
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                   1      764   16281
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                   0     1292   16281
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                   1      192   16281
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                   0       77      89
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                   1        0      89
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                   0       11      89
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                   1        1      89
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                   0      154     208
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                   1       24     208
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                   0       29     208
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                   1        1     208
24 months   ki0047075b-MAL-ED     BRAZIL                         1                   0       97     169
24 months   ki0047075b-MAL-ED     BRAZIL                         1                   1        1     169
24 months   ki0047075b-MAL-ED     BRAZIL                         0                   0       71     169
24 months   ki0047075b-MAL-ED     BRAZIL                         0                   1        0     169
24 months   ki0047075b-MAL-ED     INDIA                          1                   0      147     225
24 months   ki0047075b-MAL-ED     INDIA                          1                   1       23     225
24 months   ki0047075b-MAL-ED     INDIA                          0                   0       50     225
24 months   ki0047075b-MAL-ED     INDIA                          0                   1        5     225
24 months   ki0047075b-MAL-ED     NEPAL                          1                   0      124     225
24 months   ki0047075b-MAL-ED     NEPAL                          1                   1        4     225
24 months   ki0047075b-MAL-ED     NEPAL                          0                   0       95     225
24 months   ki0047075b-MAL-ED     NEPAL                          0                   1        2     225
24 months   ki0047075b-MAL-ED     PERU                           1                   0      126     199
24 months   ki0047075b-MAL-ED     PERU                           1                   1       11     199
24 months   ki0047075b-MAL-ED     PERU                           0                   0       59     199
24 months   ki0047075b-MAL-ED     PERU                           0                   1        3     199
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                   0       72     232
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                   1        9     232
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                   0      135     232
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                   1       16     232
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                   0       57     210
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                   1       22     210
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                   0       84     210
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                   1       47     210
24 months   ki1113344-GMS-Nepal   NEPAL                          1                   0      302     404
24 months   ki1113344-GMS-Nepal   NEPAL                          1                   1       34     404
24 months   ki1113344-GMS-Nepal   NEPAL                          0                   0       60     404
24 months   ki1113344-GMS-Nepal   NEPAL                          0                   1        8     404
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                   0     6379    8341
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                   1     1141    8341
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                   0      672    8341
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                   1      149    8341
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                   0      132     152
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                   1        5     152
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                   0       14     152
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                   1        1     152


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
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
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
![](/tmp/91f42bb0-e676-443f-9b4a-fab9f66269b0/c0c30145-083a-4b8e-af0b-efb01007bd12/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/91f42bb0-e676-443f-9b4a-fab9f66269b0/c0c30145-083a-4b8e-af0b-efb01007bd12/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/91f42bb0-e676-443f-9b4a-fab9f66269b0/c0c30145-083a-4b8e-af0b-efb01007bd12/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/91f42bb0-e676-443f-9b4a-fab9f66269b0/c0c30145-083a-4b8e-af0b-efb01007bd12/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.0958769   0.0913122   0.1004417
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.0968253   0.0921315   0.1015190
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0549451   0.0080284   0.1018617
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0604027   0.0220708   0.0987346
6 months    ki1000109-EE          PAKISTAN                       1                    NA                0.2572254   0.2111063   0.3033446
6 months    ki1000109-EE          PAKISTAN                       0                    NA                0.2000000   0.0429911   0.3570089
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.0263852   0.0102313   0.0425391
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.0632911   0.0095406   0.1170417
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.0538941   0.0502550   0.0575332
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.0974941   0.0813733   0.1136150
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.1352941   0.0837636   0.1868246
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.0909091   0.0147641   0.1670541
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.1111111   0.0425234   0.1796988
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.1059603   0.0567623   0.1551583
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2665479   0.1658576   0.3672381
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3547365   0.2718555   0.4376174
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1011905   0.0689040   0.1334769
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1176471   0.0409739   0.1943202
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.1542287   0.1451604   0.1632970
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1571480   0.1286426   0.1856534


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.0959914   0.0914158   0.1005671
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0583333   0.0286197   0.0880470
6 months    ki1000109-EE          PAKISTAN                       NA                   NA                0.2533693   0.2090516   0.2976870
6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.0327511   0.0164329   0.0490693
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.0587188   0.0549206   0.0625169
24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1244444   0.0812176   0.1676713
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.1077586   0.0677725   0.1477447
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3285714   0.2648934   0.3922495
24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1039604   0.0741620   0.1337588
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.1546577   0.1455620   0.1637534


### Parameter: RR


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.0098910   1.0015921   1.018259
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0993289   0.3793939   3.185407
6 months    ki1000109-EE          PAKISTAN                       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000109-EE          PAKISTAN                       0                    1                 0.7775281   0.3475336   1.739544
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                 2.3987342   0.8419859   6.833755
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.8089948   1.5247881   2.146175
24 months   ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     INDIA                          0                    1                 0.6719368   0.2677457   1.686298
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 0.9536424   0.4404835   2.064626
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.3308547   0.8523237   2.078054
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 1.1626297   0.5627332   2.402040
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.0189283   0.8520530   1.218486


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0001145    0.0000032   0.0002258
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0033883   -0.0342262   0.0410028
6 months    ki1000109-EE          PAKISTAN                       1                    NA                -0.0038562   -0.0149797   0.0072674
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0063659   -0.0033992   0.0161309
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0048247    0.0032551   0.0063942
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0108497   -0.0334629   0.0117636
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0033525   -0.0582914   0.0515864
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0620236   -0.0202954   0.1443426
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0027699   -0.0112459   0.0167857
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0004290   -0.0023307   0.0031887


### Parameter: PAF


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0011930    0.0000376   0.0023470
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0580848   -0.8665787   0.5246896
6 months    ki1000109-EE          PAKISTAN                       1                    NA                -0.0152195   -0.0600590   0.0277233
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.1943712   -0.1445616   0.4329376
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0821655    0.0561957   0.1074207
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0871849   -0.2828980   0.0786711
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0311111   -0.6904449   0.3710590
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1887674   -0.1051109   0.4044957
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0266440   -0.1177654   0.1523965
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0027738   -0.0152048   0.0204340
