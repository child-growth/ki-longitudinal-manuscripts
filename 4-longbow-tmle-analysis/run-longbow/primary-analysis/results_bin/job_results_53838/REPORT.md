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

**Outcome Variable:** ever_co

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

agecat        studyid               country                        predfeed3    ever_co   n_cell       n
------------  --------------------  -----------------------------  ----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                  0      167     244
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                  1       33     244
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                  0       39     244
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                  1        5     244
0-24 months   ki0047075b-MAL-ED     BRAZIL                         1                  0       95     202
0-24 months   ki0047075b-MAL-ED     BRAZIL                         1                  1        3     202
0-24 months   ki0047075b-MAL-ED     BRAZIL                         0                  0      104     202
0-24 months   ki0047075b-MAL-ED     BRAZIL                         0                  1        0     202
0-24 months   ki0047075b-MAL-ED     INDIA                          1                  0      117     216
0-24 months   ki0047075b-MAL-ED     INDIA                          1                  1       34     216
0-24 months   ki0047075b-MAL-ED     INDIA                          0                  0       50     216
0-24 months   ki0047075b-MAL-ED     INDIA                          0                  1       15     216
0-24 months   ki0047075b-MAL-ED     NEPAL                          1                  0      100     228
0-24 months   ki0047075b-MAL-ED     NEPAL                          1                  1       14     228
0-24 months   ki0047075b-MAL-ED     NEPAL                          0                  0      107     228
0-24 months   ki0047075b-MAL-ED     NEPAL                          0                  1        7     228
0-24 months   ki0047075b-MAL-ED     PERU                           1                  0      184     287
0-24 months   ki0047075b-MAL-ED     PERU                           1                  1        4     287
0-24 months   ki0047075b-MAL-ED     PERU                           0                  0       92     287
0-24 months   ki0047075b-MAL-ED     PERU                           0                  1        7     287
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                  0       68     269
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                  1        3     269
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                  0      180     269
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                  1       18     269
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  0       63     219
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  1        2     219
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  0      137     219
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  1       17     219
0-24 months   ki1000109-EE          PAKISTAN                       1                  0       17      39
0-24 months   ki1000109-EE          PAKISTAN                       1                  1       22      39
0-24 months   ki1000109-EE          PAKISTAN                       0                  0        0      39
0-24 months   ki1000109-EE          PAKISTAN                       0                  1        0      39
0-24 months   ki1113344-GMS-Nepal   NEPAL                          1                  0      247     458
0-24 months   ki1113344-GMS-Nepal   NEPAL                          1                  1      133     458
0-24 months   ki1113344-GMS-Nepal   NEPAL                          0                  0       54     458
0-24 months   ki1113344-GMS-Nepal   NEPAL                          0                  1       24     458
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                  0    12292   14981
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                  1     1269   14981
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                  0     1289   14981
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                  1      131   14981
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                  0      132     165
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                  1       16     165
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                  0       13     165
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                  1        4     165
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     1                  0      193     244
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     1                  1        7     244
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     0                  0       42     244
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     0                  1        2     244
0-6 months    ki0047075b-MAL-ED     BRAZIL                         1                  0       97     202
0-6 months    ki0047075b-MAL-ED     BRAZIL                         1                  1        1     202
0-6 months    ki0047075b-MAL-ED     BRAZIL                         0                  0      104     202
0-6 months    ki0047075b-MAL-ED     BRAZIL                         0                  1        0     202
0-6 months    ki0047075b-MAL-ED     INDIA                          1                  0      141     216
0-6 months    ki0047075b-MAL-ED     INDIA                          1                  1       10     216
0-6 months    ki0047075b-MAL-ED     INDIA                          0                  0       59     216
0-6 months    ki0047075b-MAL-ED     INDIA                          0                  1        6     216
0-6 months    ki0047075b-MAL-ED     NEPAL                          1                  0      111     228
0-6 months    ki0047075b-MAL-ED     NEPAL                          1                  1        3     228
0-6 months    ki0047075b-MAL-ED     NEPAL                          0                  0      110     228
0-6 months    ki0047075b-MAL-ED     NEPAL                          0                  1        4     228
0-6 months    ki0047075b-MAL-ED     PERU                           1                  0      188     287
0-6 months    ki0047075b-MAL-ED     PERU                           1                  1        0     287
0-6 months    ki0047075b-MAL-ED     PERU                           0                  0       97     287
0-6 months    ki0047075b-MAL-ED     PERU                           0                  1        2     287
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                  0       71     269
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                  1        0     269
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                  0      194     269
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                  1        4     269
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  0       65     219
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  1        0     219
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  0      151     219
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  1        3     219
0-6 months    ki1000109-EE          PAKISTAN                       1                  0       32      39
0-6 months    ki1000109-EE          PAKISTAN                       1                  1        7      39
0-6 months    ki1000109-EE          PAKISTAN                       0                  0        0      39
0-6 months    ki1000109-EE          PAKISTAN                       0                  1        0      39
0-6 months    ki1113344-GMS-Nepal   NEPAL                          1                  0      363     458
0-6 months    ki1113344-GMS-Nepal   NEPAL                          1                  1       17     458
0-6 months    ki1113344-GMS-Nepal   NEPAL                          0                  0       71     458
0-6 months    ki1113344-GMS-Nepal   NEPAL                          0                  1        7     458
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                  0    12966   14954
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                  1      571   14954
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                  0     1352   14954
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                  1       65   14954
0-6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                  0      148     164
0-6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                  1        0     164
0-6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                  0       15     164
0-6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                  1        1     164
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                  0      160     231
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                  1       30     231
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                  0       37     231
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                  1        4     231
6-24 months   ki0047075b-MAL-ED     BRAZIL                         1                  0       91     185
6-24 months   ki0047075b-MAL-ED     BRAZIL                         1                  1        2     185
6-24 months   ki0047075b-MAL-ED     BRAZIL                         0                  0       92     185
6-24 months   ki0047075b-MAL-ED     BRAZIL                         0                  1        0     185
6-24 months   ki0047075b-MAL-ED     INDIA                          1                  0      116     209
6-24 months   ki0047075b-MAL-ED     INDIA                          1                  1       30     209
6-24 months   ki0047075b-MAL-ED     INDIA                          0                  0       50     209
6-24 months   ki0047075b-MAL-ED     INDIA                          0                  1       13     209
6-24 months   ki0047075b-MAL-ED     NEPAL                          1                  0      101     226
6-24 months   ki0047075b-MAL-ED     NEPAL                          1                  1       12     226
6-24 months   ki0047075b-MAL-ED     NEPAL                          0                  0      109     226
6-24 months   ki0047075b-MAL-ED     NEPAL                          0                  1        4     226
6-24 months   ki0047075b-MAL-ED     PERU                           1                  0      171     267
6-24 months   ki0047075b-MAL-ED     PERU                           1                  1        4     267
6-24 months   ki0047075b-MAL-ED     PERU                           0                  0       86     267
6-24 months   ki0047075b-MAL-ED     PERU                           0                  1        6     267
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                  0       63     248
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                  1        3     248
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                  0      166     248
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                  1       16     248
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  0       61     210
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  1        2     210
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  0      132     210
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  1       15     210
6-24 months   ki1000109-EE          PAKISTAN                       1                  0       20      38
6-24 months   ki1000109-EE          PAKISTAN                       1                  1       18      38
6-24 months   ki1000109-EE          PAKISTAN                       0                  0        0      38
6-24 months   ki1000109-EE          PAKISTAN                       0                  1        0      38
6-24 months   ki1113344-GMS-Nepal   NEPAL                          1                  0      244     451
6-24 months   ki1113344-GMS-Nepal   NEPAL                          1                  1      131     451
6-24 months   ki1113344-GMS-Nepal   NEPAL                          0                  0       55     451
6-24 months   ki1113344-GMS-Nepal   NEPAL                          0                  1       21     451
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                  0     7987    9608
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                  1      794    9608
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                  0      755    9608
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                  1       72    9608
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                  0      132     165
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                  1       16     165
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                  0       14     165
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                  1        3     165


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/b68925d4-9696-4c7d-8363-1caaec7df43c/9e358cf6-b8bd-4e06-8165-304f98f6057b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b68925d4-9696-4c7d-8363-1caaec7df43c/9e358cf6-b8bd-4e06-8165-304f98f6057b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b68925d4-9696-4c7d-8363-1caaec7df43c/9e358cf6-b8bd-4e06-8165-304f98f6057b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b68925d4-9696-4c7d-8363-1caaec7df43c/9e358cf6-b8bd-4e06-8165-304f98f6057b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1650000   0.1134522   0.2165478
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1136364   0.0196688   0.2076040
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.2235593   0.1565784   0.2905403
0-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.2332313   0.1297004   0.3367623
0-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.1228070   0.0624248   0.1831893
0-24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.0614035   0.0172377   0.1055693
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3534553   0.3056108   0.4012999
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2824689   0.1831706   0.3817672
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0935107   0.0882177   0.0988037
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0927152   0.0777097   0.1077207
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.0662252   0.0264694   0.1059809
0-6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.0923077   0.0217755   0.1628399
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0447368   0.0239291   0.0655446
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0897436   0.0262457   0.1532414
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0422199   0.0384924   0.0459474
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0450650   0.0339264   0.0562036
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.2044150   0.1386890   0.2701410
6-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.2066923   0.1067469   0.3066377
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3530795   0.3049368   0.4012222
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2506346   0.1513747   0.3498945
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0905529   0.0840675   0.0970383
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0860017   0.0662250   0.1057783


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1557377   0.1101466   0.2013289
0-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.2268519   0.1708720   0.2828317
0-24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.0921053   0.0544873   0.1297232
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3427948   0.2992779   0.3863116
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0934517   0.0884729   0.0984306
0-6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.0740741   0.0390675   0.1090807
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0524017   0.0319714   0.0728321
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0425304   0.0390546   0.0460063
6-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.2057416   0.1508055   0.2606778
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3370288   0.2933549   0.3807028
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0901332   0.0839189   0.0963475


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.6887052   0.2845336   1.666991
0-24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     INDIA        0                    1                 1.0432636   0.6092969   1.786320
0-24 months   ki0047075b-MAL-ED     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     NEPAL        0                    1                 0.5000000   0.2092107   1.194968
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.7991644   0.5504807   1.160193
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9914930   0.8346458   1.177815
0-6 months    ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED     INDIA        0                    1                 1.3938462   0.5274805   3.683183
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 2.0060331   0.8602152   4.678095
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0673882   0.8172067   1.394161
6-24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     INDIA        0                    1                 1.0111408   0.5652028   1.808919
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.7098531   0.4680896   1.076485
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9497394   0.7477877   1.206231


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0092623   -0.0287483   0.0102237
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0032925   -0.0340180   0.0406030
0-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0307018   -0.0683197   0.0069162
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0106605   -0.0291190   0.0077979
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0000590   -0.0015667   0.0014487
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.0078489   -0.0165679   0.0322658
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0076649   -0.0038202   0.0191500
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0003105   -0.0008290   0.0014501
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0013266   -0.0349413   0.0375946
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0160507   -0.0345827   0.0024813
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0004197   -0.0021947   0.0013554


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0594737   -0.1914494   0.0578832
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0145139   -0.1644842   0.1659974
0-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.3333333   -0.7884039   0.0059417
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0310989   -0.0863875   0.0213759
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0006312   -0.0168930   0.0153705
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.1059603   -0.2879157   0.3793794
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1462719   -0.0948184   0.3342716
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0073011   -0.0199044   0.0337810
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0064481   -0.1864396   0.1679766
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0476241   -0.1041755   0.0060309
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0046562   -0.0245425   0.0148442
