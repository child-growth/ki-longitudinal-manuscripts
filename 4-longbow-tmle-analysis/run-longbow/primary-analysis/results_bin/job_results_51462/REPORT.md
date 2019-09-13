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

**Outcome Variable:** pers_wast

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

agecat        studyid               country                        predfeed3    pers_wast   n_cell       n
------------  --------------------  -----------------------------  ----------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    0      199     244
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1       10     244
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    0       33     244
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1        2     244
0-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    0      117     217
0-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1        2     217
0-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    0       98     217
0-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1        0     217
0-24 months   ki0047075b-MAL-ED     INDIA                          1                    0      166     238
0-24 months   ki0047075b-MAL-ED     INDIA                          1                    1       15     238
0-24 months   ki0047075b-MAL-ED     INDIA                          0                    0       51     238
0-24 months   ki0047075b-MAL-ED     INDIA                          0                    1        6     238
0-24 months   ki0047075b-MAL-ED     NEPAL                          1                    0      131     235
0-24 months   ki0047075b-MAL-ED     NEPAL                          1                    1        3     235
0-24 months   ki0047075b-MAL-ED     NEPAL                          0                    0      100     235
0-24 months   ki0047075b-MAL-ED     NEPAL                          0                    1        1     235
0-24 months   ki0047075b-MAL-ED     PERU                           1                    0      188     281
0-24 months   ki0047075b-MAL-ED     PERU                           1                    1        1     281
0-24 months   ki0047075b-MAL-ED     PERU                           0                    0       92     281
0-24 months   ki0047075b-MAL-ED     PERU                           0                    1        0     281
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0       93     267
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1        1     267
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0      172     267
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1        1     267
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0       91     246
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1        0     246
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0      155     246
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1        0     246
0-24 months   ki1000109-EE          PAKISTAN                       1                    0      328     376
0-24 months   ki1000109-EE          PAKISTAN                       1                    1       22     376
0-24 months   ki1000109-EE          PAKISTAN                       0                    0       20     376
0-24 months   ki1000109-EE          PAKISTAN                       0                    1        6     376
0-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    0      328     470
0-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1       61     470
0-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    0       67     470
0-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1       14     470
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    0    13342   15481
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1      764   15481
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    0     1256   15481
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1      119   15481
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    0      137     163
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1       10     163
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    0       15     163
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1        1     163
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    0      204     244
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1        5     244
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    0       33     244
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1        2     244
0-6 months    ki0047075b-MAL-ED     BRAZIL                         1                    0      118     217
0-6 months    ki0047075b-MAL-ED     BRAZIL                         1                    1        1     217
0-6 months    ki0047075b-MAL-ED     BRAZIL                         0                    0       98     217
0-6 months    ki0047075b-MAL-ED     BRAZIL                         0                    1        0     217
0-6 months    ki0047075b-MAL-ED     INDIA                          1                    0      172     238
0-6 months    ki0047075b-MAL-ED     INDIA                          1                    1        9     238
0-6 months    ki0047075b-MAL-ED     INDIA                          0                    0       47     238
0-6 months    ki0047075b-MAL-ED     INDIA                          0                    1       10     238
0-6 months    ki0047075b-MAL-ED     NEPAL                          1                    0      132     235
0-6 months    ki0047075b-MAL-ED     NEPAL                          1                    1        2     235
0-6 months    ki0047075b-MAL-ED     NEPAL                          0                    0       98     235
0-6 months    ki0047075b-MAL-ED     NEPAL                          0                    1        3     235
0-6 months    ki0047075b-MAL-ED     PERU                           1                    0      189     281
0-6 months    ki0047075b-MAL-ED     PERU                           1                    1        0     281
0-6 months    ki0047075b-MAL-ED     PERU                           0                    0       92     281
0-6 months    ki0047075b-MAL-ED     PERU                           0                    1        0     281
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0       93     266
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1        1     266
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0      171     266
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1        1     266
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0       91     246
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1        0     246
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0      155     246
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1        0     246
0-6 months    ki1000109-EE          PAKISTAN                       1                    0      318     365
0-6 months    ki1000109-EE          PAKISTAN                       1                    1       21     365
0-6 months    ki1000109-EE          PAKISTAN                       0                    0       20     365
0-6 months    ki1000109-EE          PAKISTAN                       0                    1        6     365
0-6 months    ki1113344-GMS-Nepal   NEPAL                          1                    0      338     459
0-6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1       43     459
0-6 months    ki1113344-GMS-Nepal   NEPAL                          0                    0       64     459
0-6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1       14     459
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    0       34      46
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1        2      46
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    0       10      46
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1        0      46
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    0      199     244
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1       10     244
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    0       33     244
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1        2     244
6-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    0      117     217
6-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1        2     217
6-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    0       98     217
6-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1        0     217
6-24 months   ki0047075b-MAL-ED     INDIA                          1                    0      166     238
6-24 months   ki0047075b-MAL-ED     INDIA                          1                    1       15     238
6-24 months   ki0047075b-MAL-ED     INDIA                          0                    0       51     238
6-24 months   ki0047075b-MAL-ED     INDIA                          0                    1        6     238
6-24 months   ki0047075b-MAL-ED     NEPAL                          1                    0      131     235
6-24 months   ki0047075b-MAL-ED     NEPAL                          1                    1        3     235
6-24 months   ki0047075b-MAL-ED     NEPAL                          0                    0      100     235
6-24 months   ki0047075b-MAL-ED     NEPAL                          0                    1        1     235
6-24 months   ki0047075b-MAL-ED     PERU                           1                    0      188     281
6-24 months   ki0047075b-MAL-ED     PERU                           1                    1        1     281
6-24 months   ki0047075b-MAL-ED     PERU                           0                    0       92     281
6-24 months   ki0047075b-MAL-ED     PERU                           0                    1        0     281
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0       93     267
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1        1     267
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0      172     267
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1        1     267
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0       91     246
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1        0     246
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0      155     246
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1        0     246
6-24 months   ki1000109-EE          PAKISTAN                       1                    0      328     376
6-24 months   ki1000109-EE          PAKISTAN                       1                    1       22     376
6-24 months   ki1000109-EE          PAKISTAN                       0                    0       20     376
6-24 months   ki1000109-EE          PAKISTAN                       0                    1        6     376
6-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    0      328     470
6-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1       61     470
6-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    0       67     470
6-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1       14     470
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    0    13342   15481
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1      764   15481
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    0     1256   15481
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1      119   15481
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    0      137     163
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1       10     163
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    0       15     163
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1        1     163


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/4347c7ca-6277-4ed9-8cff-7e83d90ab967/0582affc-43c1-4191-a217-9ce593833935/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4347c7ca-6277-4ed9-8cff-7e83d90ab967/0582affc-43c1-4191-a217-9ce593833935/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4347c7ca-6277-4ed9-8cff-7e83d90ab967/0582affc-43c1-4191-a217-9ce593833935/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4347c7ca-6277-4ed9-8cff-7e83d90ab967/0582affc-43c1-4191-a217-9ce593833935/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0828729   0.0426249   0.1231209
0-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1052632   0.0254249   0.1851014
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0628571   0.0373963   0.0883180
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2307692   0.0686043   0.3929342
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1569324   0.1207500   0.1931148
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1821339   0.0981698   0.2660979
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0554330   0.0511734   0.0596927
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0713835   0.0559018   0.0868652
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.0497238   0.0179894   0.0814581
0-6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1754386   0.0764924   0.2743848
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0619469   0.0362508   0.0876430
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.2307692   0.0685978   0.3929407
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1130937   0.0812889   0.1448986
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1926043   0.1064232   0.2787853
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0828729   0.0426249   0.1231209
6-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1052632   0.0254249   0.1851014
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0628571   0.0373963   0.0883180
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2307692   0.0686043   0.3929342
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1574313   0.1212074   0.1936552
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1813517   0.0985254   0.2641779
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0552153   0.0509554   0.0594752
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0733393   0.0578579   0.0888206


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.0882353   0.0521245   0.1243460
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0744681   0.0478968   0.1010394
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1595745   0.1264314   0.1927176
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0570377   0.0528781   0.0611972
0-6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.0798319   0.0453258   0.1143380
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.0739726   0.0470855   0.1008598
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1241830   0.0939798   0.1543862
6-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.0882353   0.0521245   0.1243460
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0744681   0.0478968   0.1010394
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1595745   0.1264314   0.1927176
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0570377   0.0528781   0.0611972


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     INDIA        0                    1                 1.270175   0.5160905   3.126090
0-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1000109-EE          PAKISTAN     0                    1                 3.671329   1.6314273   8.261879
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.160588   0.6928640   1.944054
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.287743   1.0277514   1.613506
0-6 months    ki0047075b-MAL-ED     INDIA        1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED     INDIA        0                    1                 3.528265   1.5054610   8.268998
0-6 months    ki1000109-EE          PAKISTAN     1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki1000109-EE          PAKISTAN     0                    1                 3.725275   1.6472464   8.424770
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.703050   1.0033291   2.890756
6-24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     INDIA        0                    1                 1.270175   0.5160905   3.126090
6-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1000109-EE          PAKISTAN     0                    1                 3.671329   1.6314273   8.261879
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.151942   0.6904421   1.921914
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.328243   1.0635715   1.658777


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0053624   -0.0160853   0.0268101
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0116109   -0.0005313   0.0237532
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0026421   -0.0129073   0.0181915
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0016046    0.0001341   0.0030751
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.0301082    0.0043016   0.0559147
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0120257   -0.0004922   0.0245436
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0110893   -0.0045728   0.0267514
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0053624   -0.0160853   0.0268101
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0116109   -0.0005313   0.0237532
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0021432   -0.0134907   0.0177771
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0018224    0.0003445   0.0033003


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0607735   -0.2153023   0.2741341
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.1559184   -0.0137852   0.2972143
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0165570   -0.0858294   0.1092891
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0281329    0.0021503   0.0534389
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.3771445    0.0169360   0.6053675
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.1625696   -0.0137823   0.3082444
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0892979   -0.0442638   0.2057771
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0607735   -0.2153023   0.2741341
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.1559184   -0.0137852   0.2972143
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0134306   -0.0895239   0.1066565
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0319508    0.0058434   0.0573725
