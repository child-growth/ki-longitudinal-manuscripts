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

agecat        studyid               country                        predfeed3    pers_wast   n_cell      n
------------  --------------------  -----------------------------  ----------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    0      188    240
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1        9    240
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    0       40    240
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1        3    240
0-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    0       94    195
0-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1        2    195
0-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    0       99    195
0-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1        0    195
0-24 months   ki0047075b-MAL-ED     INDIA                          1                    0      137    215
0-24 months   ki0047075b-MAL-ED     INDIA                          1                    1       13    215
0-24 months   ki0047075b-MAL-ED     INDIA                          0                    0       60    215
0-24 months   ki0047075b-MAL-ED     INDIA                          0                    1        5    215
0-24 months   ki0047075b-MAL-ED     NEPAL                          1                    0      112    228
0-24 months   ki0047075b-MAL-ED     NEPAL                          1                    1        2    228
0-24 months   ki0047075b-MAL-ED     NEPAL                          0                    0      112    228
0-24 months   ki0047075b-MAL-ED     NEPAL                          0                    1        2    228
0-24 months   ki0047075b-MAL-ED     PERU                           1                    0      181    281
0-24 months   ki0047075b-MAL-ED     PERU                           1                    1        1    281
0-24 months   ki0047075b-MAL-ED     PERU                           0                    0       99    281
0-24 months   ki0047075b-MAL-ED     PERU                           0                    1        0    281
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0       69    264
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1        1    264
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0      193    264
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1        1    264
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0       64    218
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1        0    218
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0      154    218
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1        0    218
0-24 months   ki1000109-EE          PAKISTAN                       1                    0       38     39
0-24 months   ki1000109-EE          PAKISTAN                       1                    1        1     39
0-24 months   ki1000109-EE          PAKISTAN                       0                    0        0     39
0-24 months   ki1000109-EE          PAKISTAN                       0                    1        0     39
0-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    0      326    457
0-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1       54    457
0-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    0       63    457
0-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1       14    457
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    0     7715   8954
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1      470   8954
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    0      730   8954
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1       39   8954
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    0      136    163
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1       10    163
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    0       16    163
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1        1    163
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    0      193    240
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1        4    240
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    0       40    240
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1        3    240
0-6 months    ki0047075b-MAL-ED     BRAZIL                         1                    0       95    195
0-6 months    ki0047075b-MAL-ED     BRAZIL                         1                    1        1    195
0-6 months    ki0047075b-MAL-ED     BRAZIL                         0                    0       99    195
0-6 months    ki0047075b-MAL-ED     BRAZIL                         0                    1        0    195
0-6 months    ki0047075b-MAL-ED     INDIA                          1                    0      142    215
0-6 months    ki0047075b-MAL-ED     INDIA                          1                    1        8    215
0-6 months    ki0047075b-MAL-ED     INDIA                          0                    0       55    215
0-6 months    ki0047075b-MAL-ED     INDIA                          0                    1       10    215
0-6 months    ki0047075b-MAL-ED     NEPAL                          1                    0      113    228
0-6 months    ki0047075b-MAL-ED     NEPAL                          1                    1        1    228
0-6 months    ki0047075b-MAL-ED     NEPAL                          0                    0      109    228
0-6 months    ki0047075b-MAL-ED     NEPAL                          0                    1        5    228
0-6 months    ki0047075b-MAL-ED     PERU                           1                    0      182    281
0-6 months    ki0047075b-MAL-ED     PERU                           1                    1        0    281
0-6 months    ki0047075b-MAL-ED     PERU                           0                    0       99    281
0-6 months    ki0047075b-MAL-ED     PERU                           0                    1        0    281
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0       69    263
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1        1    263
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0      193    263
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1        0    263
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0       64    218
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1        0    218
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0      154    218
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1        0    218
0-6 months    ki1000109-EE          PAKISTAN                       1                    0       35     38
0-6 months    ki1000109-EE          PAKISTAN                       1                    1        3     38
0-6 months    ki1000109-EE          PAKISTAN                       0                    0        0     38
0-6 months    ki1000109-EE          PAKISTAN                       0                    1        0     38
0-6 months    ki1113344-GMS-Nepal   NEPAL                          1                    0      338    453
0-6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1       41    453
0-6 months    ki1113344-GMS-Nepal   NEPAL                          0                    0       64    453
0-6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1       10    453
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    0       23     25
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1        2     25
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    0        0     25
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1        0     25
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    0      188    240
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1        9    240
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    0       40    240
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1        3    240
6-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    0       94    195
6-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1        2    195
6-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    0       99    195
6-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1        0    195
6-24 months   ki0047075b-MAL-ED     INDIA                          1                    0      137    215
6-24 months   ki0047075b-MAL-ED     INDIA                          1                    1       13    215
6-24 months   ki0047075b-MAL-ED     INDIA                          0                    0       60    215
6-24 months   ki0047075b-MAL-ED     INDIA                          0                    1        5    215
6-24 months   ki0047075b-MAL-ED     NEPAL                          1                    0      112    228
6-24 months   ki0047075b-MAL-ED     NEPAL                          1                    1        2    228
6-24 months   ki0047075b-MAL-ED     NEPAL                          0                    0      112    228
6-24 months   ki0047075b-MAL-ED     NEPAL                          0                    1        2    228
6-24 months   ki0047075b-MAL-ED     PERU                           1                    0      181    281
6-24 months   ki0047075b-MAL-ED     PERU                           1                    1        1    281
6-24 months   ki0047075b-MAL-ED     PERU                           0                    0       99    281
6-24 months   ki0047075b-MAL-ED     PERU                           0                    1        0    281
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0       69    264
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1        1    264
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0      193    264
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1        1    264
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0       64    218
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1        0    218
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0      154    218
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1        0    218
6-24 months   ki1000109-EE          PAKISTAN                       1                    0       38     39
6-24 months   ki1000109-EE          PAKISTAN                       1                    1        1     39
6-24 months   ki1000109-EE          PAKISTAN                       0                    0        0     39
6-24 months   ki1000109-EE          PAKISTAN                       0                    1        0     39
6-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    0      326    457
6-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1       54    457
6-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    0       63    457
6-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1       14    457
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    0     7715   8954
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1      470   8954
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    0      730   8954
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1       39   8954
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    0      136    163
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1       10    163
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    0       16    163
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1        1    163


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
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/473677d3-97db-442b-b3ac-79d71e332187/9683abd2-5b7c-4468-ad04-6815e68bea92/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/473677d3-97db-442b-b3ac-79d71e332187/9683abd2-5b7c-4468-ad04-6815e68bea92/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/473677d3-97db-442b-b3ac-79d71e332187/9683abd2-5b7c-4468-ad04-6815e68bea92/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/473677d3-97db-442b-b3ac-79d71e332187/9683abd2-5b7c-4468-ad04-6815e68bea92/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0866667   0.0415377   0.1317956
0-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.0769231   0.0119922   0.1418539
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1429554   0.1077818   0.1781290
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2073296   0.1217377   0.2929215
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0574354   0.0516462   0.0632246
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0506562   0.0344134   0.0668990
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.0533333   0.0172910   0.0893757
0-6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1538462   0.0659294   0.2417629
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1093360   0.0780467   0.1406252
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1751988   0.0986272   0.2517703
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0866667   0.0415377   0.1317956
6-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.0769231   0.0119922   0.1418539
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1423044   0.1072018   0.1774070
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1987804   0.1114192   0.2861417
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0574354   0.0516445   0.0632264
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0494677   0.0331699   0.0657654


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.0837209   0.0466125   0.1208293
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1487965   0.1161318   0.1814612
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0568461   0.0514610   0.0622312
0-6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.0837209   0.0466125   0.1208293
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1125828   0.0834435   0.1417221
6-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.0837209   0.0466125   0.1208293
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1487965   0.1161318   0.1814612
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0568461   0.0514610   0.0622312


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     INDIA        0                    1                 0.8875740   0.3292108   2.392958
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4503098   0.8970971   2.344672
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8819681   0.6262875   1.242030
0-6 months    ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED     INDIA        0                    1                 2.8846154   1.1904966   6.989525
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.6023887   0.9481857   2.707961
6-24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     INDIA        0                    1                 0.8875740   0.3292108   2.392958
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3968674   0.8440062   2.311877
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8612745   0.6064827   1.223108


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0029457   -0.0268592   0.0209678
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0058411   -0.0100020   0.0216842
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0005893   -0.0020981   0.0009195
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.0303876    0.0010030   0.0597722
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0032468   -0.0106564   0.0171499
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0029457   -0.0268592   0.0209678
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0064921   -0.0092144   0.0221985
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0005893   -0.0021002   0.0009216


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0351852   -0.3636591   0.2141670
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0392557   -0.0729808   0.1397520
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0103666   -0.0371390   0.0157147
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.3629630   -0.0473568   0.6125330
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0288391   -0.1024415   0.1444866
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0351852   -0.3636591   0.2141670
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0436305   -0.0676072   0.1432780
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0103672   -0.0371772   0.0157499
