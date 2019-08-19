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

**Outcome Variable:** wast_rec90d

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

agecat        studyid               country                        predfeed3    wast_rec90d   n_cell      n
------------  --------------------  -----------------------------  ----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                      0       37    118
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                      1       70    118
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                      0        5    118
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                      1        6    118
0-24 months   ki0047075b-MAL-ED     BRAZIL                         1                      0        4     23
0-24 months   ki0047075b-MAL-ED     BRAZIL                         1                      1       10     23
0-24 months   ki0047075b-MAL-ED     BRAZIL                         0                      0        2     23
0-24 months   ki0047075b-MAL-ED     BRAZIL                         0                      1        7     23
0-24 months   ki0047075b-MAL-ED     INDIA                          1                      0       48    177
0-24 months   ki0047075b-MAL-ED     INDIA                          1                      1       76    177
0-24 months   ki0047075b-MAL-ED     INDIA                          0                      0       22    177
0-24 months   ki0047075b-MAL-ED     INDIA                          0                      1       31    177
0-24 months   ki0047075b-MAL-ED     NEPAL                          1                      0       15     92
0-24 months   ki0047075b-MAL-ED     NEPAL                          1                      1       38     92
0-24 months   ki0047075b-MAL-ED     NEPAL                          0                      0        5     92
0-24 months   ki0047075b-MAL-ED     NEPAL                          0                      1       34     92
0-24 months   ki0047075b-MAL-ED     PERU                           1                      0        5     32
0-24 months   ki0047075b-MAL-ED     PERU                           1                      1       14     32
0-24 months   ki0047075b-MAL-ED     PERU                           0                      0        1     32
0-24 months   ki0047075b-MAL-ED     PERU                           0                      1       12     32
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      0        6     78
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      1       18     78
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      0        7     78
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      1       47     78
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      0        1     45
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      1       13     45
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      0        7     45
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      1       24     45
0-24 months   ki1000109-EE          PAKISTAN                       1                      0      131    257
0-24 months   ki1000109-EE          PAKISTAN                       1                      1      104    257
0-24 months   ki1000109-EE          PAKISTAN                       0                      0       19    257
0-24 months   ki1000109-EE          PAKISTAN                       0                      1        3    257
0-24 months   ki1113344-GMS-Nepal   NEPAL                          1                      0      185    470
0-24 months   ki1113344-GMS-Nepal   NEPAL                          1                      1      208    470
0-24 months   ki1113344-GMS-Nepal   NEPAL                          0                      0       34    470
0-24 months   ki1113344-GMS-Nepal   NEPAL                          0                      1       43    470
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                      0     3666   7337
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                      1     2709   7337
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                      0      517   7337
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                      1      445   7337
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                      0       37     53
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                      1       12     53
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                      0        4     53
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                      1        0     53
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     1                      0       10     58
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     1                      1       42     58
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     0                      0        2     58
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     0                      1        4     58
0-6 months    ki0047075b-MAL-ED     BRAZIL                         1                      0        1     14
0-6 months    ki0047075b-MAL-ED     BRAZIL                         1                      1        6     14
0-6 months    ki0047075b-MAL-ED     BRAZIL                         0                      0        0     14
0-6 months    ki0047075b-MAL-ED     BRAZIL                         0                      1        7     14
0-6 months    ki0047075b-MAL-ED     INDIA                          1                      0       13     82
0-6 months    ki0047075b-MAL-ED     INDIA                          1                      1       37     82
0-6 months    ki0047075b-MAL-ED     INDIA                          0                      0       12     82
0-6 months    ki0047075b-MAL-ED     INDIA                          0                      1       20     82
0-6 months    ki0047075b-MAL-ED     NEPAL                          1                      0        6     42
0-6 months    ki0047075b-MAL-ED     NEPAL                          1                      1       16     42
0-6 months    ki0047075b-MAL-ED     NEPAL                          0                      0        3     42
0-6 months    ki0047075b-MAL-ED     NEPAL                          0                      1       17     42
0-6 months    ki0047075b-MAL-ED     PERU                           1                      0        0     11
0-6 months    ki0047075b-MAL-ED     PERU                           1                      1        8     11
0-6 months    ki0047075b-MAL-ED     PERU                           0                      0        0     11
0-6 months    ki0047075b-MAL-ED     PERU                           0                      1        3     11
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                      0        2     28
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                      1        8     28
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                      0        2     28
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                      1       16     28
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      0        0     12
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      1        5     12
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      0        1     12
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      1        6     12
0-6 months    ki1000109-EE          PAKISTAN                       1                      0       38    108
0-6 months    ki1000109-EE          PAKISTAN                       1                      1       59    108
0-6 months    ki1000109-EE          PAKISTAN                       0                      0        9    108
0-6 months    ki1000109-EE          PAKISTAN                       0                      1        2    108
0-6 months    ki1113344-GMS-Nepal   NEPAL                          1                      0       48    150
0-6 months    ki1113344-GMS-Nepal   NEPAL                          1                      1       71    150
0-6 months    ki1113344-GMS-Nepal   NEPAL                          0                      0       14    150
0-6 months    ki1113344-GMS-Nepal   NEPAL                          0                      1       17    150
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                      0     1191   4580
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                      1     2709   4580
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                      0      235   4580
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                      1      445   4580
0-6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                      0        5     10
0-6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                      1        3     10
0-6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                      0        2     10
0-6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                      1        0     10
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                      0       27     60
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                      1       28     60
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                      0        3     60
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                      1        2     60
6-24 months   ki0047075b-MAL-ED     BRAZIL                         1                      0        3      9
6-24 months   ki0047075b-MAL-ED     BRAZIL                         1                      1        4      9
6-24 months   ki0047075b-MAL-ED     BRAZIL                         0                      0        2      9
6-24 months   ki0047075b-MAL-ED     BRAZIL                         0                      1        0      9
6-24 months   ki0047075b-MAL-ED     INDIA                          1                      0       35     95
6-24 months   ki0047075b-MAL-ED     INDIA                          1                      1       39     95
6-24 months   ki0047075b-MAL-ED     INDIA                          0                      0       10     95
6-24 months   ki0047075b-MAL-ED     INDIA                          0                      1       11     95
6-24 months   ki0047075b-MAL-ED     NEPAL                          1                      0        9     50
6-24 months   ki0047075b-MAL-ED     NEPAL                          1                      1       22     50
6-24 months   ki0047075b-MAL-ED     NEPAL                          0                      0        2     50
6-24 months   ki0047075b-MAL-ED     NEPAL                          0                      1       17     50
6-24 months   ki0047075b-MAL-ED     PERU                           1                      0        5     21
6-24 months   ki0047075b-MAL-ED     PERU                           1                      1        6     21
6-24 months   ki0047075b-MAL-ED     PERU                           0                      0        1     21
6-24 months   ki0047075b-MAL-ED     PERU                           0                      1        9     21
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      0        4     50
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      1       10     50
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      0        5     50
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      1       31     50
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      0        1     33
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      1        8     33
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      0        6     33
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      1       18     33
6-24 months   ki1000109-EE          PAKISTAN                       1                      0       93    149
6-24 months   ki1000109-EE          PAKISTAN                       1                      1       45    149
6-24 months   ki1000109-EE          PAKISTAN                       0                      0       10    149
6-24 months   ki1000109-EE          PAKISTAN                       0                      1        1    149
6-24 months   ki1113344-GMS-Nepal   NEPAL                          1                      0      137    320
6-24 months   ki1113344-GMS-Nepal   NEPAL                          1                      1      137    320
6-24 months   ki1113344-GMS-Nepal   NEPAL                          0                      0       20    320
6-24 months   ki1113344-GMS-Nepal   NEPAL                          0                      1       26    320
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                      0     2475   2757
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                      1        0   2757
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                      0      282   2757
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                      1        0   2757
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                      0       32     43
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                      1        9     43
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                      0        2     43
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                      1        0     43


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
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
![](/tmp/a43cd8a0-ead8-4672-a083-46230b9ee7ce/6dad6002-ad6d-438c-b17e-6a270a0b6d75/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a43cd8a0-ead8-4672-a083-46230b9ee7ce/6dad6002-ad6d-438c-b17e-6a270a0b6d75/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a43cd8a0-ead8-4672-a083-46230b9ee7ce/6dad6002-ad6d-438c-b17e-6a270a0b6d75/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a43cd8a0-ead8-4672-a083-46230b9ee7ce/6dad6002-ad6d-438c-b17e-6a270a0b6d75/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH     1                    NA                0.6542056   0.5647903   0.7436209
0-24 months   ki0047075b-MAL-ED     BANGLADESH     0                    NA                0.5454545   0.2068166   0.8840925
0-24 months   ki0047075b-MAL-ED     INDIA          1                    NA                0.6056860   0.5089235   0.7024484
0-24 months   ki0047075b-MAL-ED     INDIA          0                    NA                0.5917497   0.4433798   0.7401196
0-24 months   ki0047075b-MAL-ED     NEPAL          1                    NA                0.7169811   0.6011080   0.8328543
0-24 months   ki0047075b-MAL-ED     NEPAL          0                    NA                0.8717949   0.7698881   0.9737017
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA   1                    NA                0.7500000   0.5833892   0.9166108
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA   0                    NA                0.8703704   0.7788517   0.9618891
0-24 months   ki1113344-GMS-Nepal   NEPAL          1                    NA                0.5306756   0.4766810   0.5846701
0-24 months   ki1113344-GMS-Nepal   NEPAL          0                    NA                0.5785567   0.4576423   0.6994710
0-24 months   kiGH5241-JiVitA-3     BANGLADESH     1                    NA                0.4257599   0.4137664   0.4377533
0-24 months   kiGH5241-JiVitA-3     BANGLADESH     0                    NA                0.4773652   0.4447701   0.5099603
0-6 months    ki0047075b-MAL-ED     INDIA          1                    NA                0.7322036   0.6000452   0.8643621
0-6 months    ki0047075b-MAL-ED     INDIA          0                    NA                0.6383592   0.4566649   0.8200534
0-6 months    ki1113344-GMS-Nepal   NEPAL          1                    NA                0.5954257   0.5063264   0.6845250
0-6 months    ki1113344-GMS-Nepal   NEPAL          0                    NA                0.5172372   0.3327011   0.7017732
0-6 months    kiGH5241-JiVitA-3     BANGLADESH     1                    NA                0.6909723   0.6765933   0.7053512
0-6 months    kiGH5241-JiVitA-3     BANGLADESH     0                    NA                0.6728280   0.6369088   0.7087471
6-24 months   ki0047075b-MAL-ED     INDIA          1                    NA                0.5235761   0.3967752   0.6503769
6-24 months   ki0047075b-MAL-ED     INDIA          0                    NA                0.5467828   0.2763161   0.8172494
6-24 months   ki1113344-GMS-Nepal   NEPAL          1                    NA                0.4990603   0.4344927   0.5636279
6-24 months   ki1113344-GMS-Nepal   NEPAL          0                    NA                0.5425272   0.3801013   0.7049531


### Parameter: E(Y)


agecat        studyid               country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH     NA                   NA                0.6440678   0.5565826   0.7315530
0-24 months   ki0047075b-MAL-ED     INDIA          NA                   NA                0.6045198   0.5246128   0.6844268
0-24 months   ki0047075b-MAL-ED     NEPAL          NA                   NA                0.7826087   0.7016344   0.8635829
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA   NA                   NA                0.8333333   0.7515924   0.9150742
0-24 months   ki1113344-GMS-Nepal   NEPAL          NA                   NA                0.5340426   0.4848509   0.5832342
0-24 months   kiGH5241-JiVitA-3     BANGLADESH     NA                   NA                0.4298760   0.4185519   0.4412000
0-6 months    ki0047075b-MAL-ED     INDIA          NA                   NA                0.6951220   0.5922224   0.7980215
0-6 months    ki1113344-GMS-Nepal   NEPAL          NA                   NA                0.5866667   0.5072781   0.6660552
0-6 months    kiGH5241-JiVitA-3     BANGLADESH     NA                   NA                0.6886463   0.6752359   0.7020567
6-24 months   ki0047075b-MAL-ED     INDIA          NA                   NA                0.5263158   0.4116286   0.6410029
6-24 months   ki1113344-GMS-Nepal   NEPAL          NA                   NA                0.5093750   0.4496016   0.5691484


### Parameter: RR


agecat        studyid               country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH     0                    1                 0.8337662   0.4414864   1.574604
0-24 months   ki0047075b-MAL-ED     INDIA          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     INDIA          0                    1                 0.9769910   0.7262833   1.314241
0-24 months   ki0047075b-MAL-ED     NEPAL          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     NEPAL          0                    1                 1.2159244   0.9954839   1.485179
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA   0                    1                 1.1604938   0.9073673   1.484235
0-24 months   ki1113344-GMS-Nepal   NEPAL          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL          0                    1                 1.0902267   0.8638066   1.375996
0-24 months   kiGH5241-JiVitA-3     BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH     0                    1                 1.1212075   1.0429857   1.205296
0-6 months    ki0047075b-MAL-ED     INDIA          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED     INDIA          0                    1                 0.8718328   0.6208256   1.224325
0-6 months    ki1113344-GMS-Nepal   NEPAL          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL          0                    1                 0.8686847   0.5893599   1.280394
0-6 months    kiGH5241-JiVitA-3     BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH     0                    1                 0.9737409   0.9201460   1.030458
6-24 months   ki0047075b-MAL-ED     INDIA          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     INDIA          0                    1                 1.0443234   0.6029232   1.808873
6-24 months   ki1113344-GMS-Nepal   NEPAL          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL          0                    1                 1.0870974   0.7839125   1.507542


### Parameter: PAR


agecat        studyid               country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH     1                    NA                -0.0101378   -0.0434045   0.0231289
0-24 months   ki0047075b-MAL-ED     INDIA          1                    NA                -0.0011662   -0.0542463   0.0519140
0-24 months   ki0047075b-MAL-ED     NEPAL          1                    NA                 0.0656276   -0.0044345   0.1356896
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA   1                    NA                 0.0833333   -0.0511360   0.2178027
0-24 months   ki1113344-GMS-Nepal   NEPAL          1                    NA                 0.0033670   -0.0185552   0.0252892
0-24 months   kiGH5241-JiVitA-3     BANGLADESH     1                    NA                 0.0041161   -0.0001110   0.0083432
0-6 months    ki0047075b-MAL-ED     INDIA          1                    NA                -0.0370817   -0.1249011   0.0507377
0-6 months    ki1113344-GMS-Nepal   NEPAL          1                    NA                -0.0087590   -0.0501366   0.0326186
0-6 months    kiGH5241-JiVitA-3     BANGLADESH     1                    NA                -0.0023260   -0.0078176   0.0031656
6-24 months   ki0047075b-MAL-ED     INDIA          1                    NA                 0.0027397   -0.0630431   0.0685225
6-24 months   ki1113344-GMS-Nepal   NEPAL          1                    NA                 0.0103147   -0.0145536   0.0351830


### Parameter: PAF


agecat        studyid               country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH     1                    NA                -0.0157403   -0.0690683   0.0349276
0-24 months   ki0047075b-MAL-ED     INDIA          1                    NA                -0.0019291   -0.0936921   0.0821348
0-24 months   ki0047075b-MAL-ED     NEPAL          1                    NA                 0.0838574   -0.0122835   0.1708674
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA   1                    NA                 0.1000000   -0.0786812   0.2490831
0-24 months   ki1113344-GMS-Nepal   NEPAL          1                    NA                 0.0063047   -0.0356129   0.0465257
0-24 months   kiGH5241-JiVitA-3     BANGLADESH     1                    NA                 0.0095751   -0.0003044   0.0193569
0-6 months    ki0047075b-MAL-ED     INDIA          1                    NA                -0.0533456   -0.1882588   0.0662498
0-6 months    ki1113344-GMS-Nepal   NEPAL          1                    NA                -0.0149301   -0.0880246   0.0532538
0-6 months    kiGH5241-JiVitA-3     BANGLADESH     1                    NA                -0.0033776   -0.0113856   0.0045670
6-24 months   ki0047075b-MAL-ED     INDIA          1                    NA                 0.0052054   -0.1278594   0.1225713
6-24 months   ki1113344-GMS-Nepal   NEPAL          1                    NA                 0.0202497   -0.0298504   0.0679125
