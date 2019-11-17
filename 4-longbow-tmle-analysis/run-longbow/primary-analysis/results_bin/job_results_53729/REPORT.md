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

**Outcome Variable:** ever_wasted

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

agecat                        studyid               country                        predfeed3    ever_wasted   n_cell       n
----------------------------  --------------------  -----------------------------  ----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     1                      0      152     244
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     1                      1       48     244
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     0                      0       37     244
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     0                      1        7     244
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         1                      0       89     202
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         1                      1        9     202
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         0                      0      100     202
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         0                      1        4     202
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                      0       94     212
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                      1       56     212
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          0                      0       36     212
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          0                      1       26     212
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                      0       88     227
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                      1       25     227
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          0                      0       93     227
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          0                      1       21     227
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           1                      0      178     287
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           1                      1       10     287
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           0                      0       89     287
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           0                      1       10     287
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      0       60     269
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      1       11     269
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      0      166     269
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      1       32     269
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      0       58     219
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      1        7     219
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      0      133     219
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      1       21     219
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       1                      0       18      39
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       1                      1       21      39
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       0                      0        0      39
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       0                      1        0      39
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                      0      147     453
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                      1      229     453
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          0                      0       39     453
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          0                      1       38     453
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                      0    11036   14768
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                      1     2328   14768
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     0                      0     1165   14768
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     0                      1      239   14768
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     1                      0      109     164
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     1                      1       38     164
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     0                      0       13     164
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     0                      1        4     164
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     1                      0      185     243
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     1                      1       14     243
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     0                      0       41     243
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     0                      1        3     243
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         1                      0       93     202
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         1                      1        5     202
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         0                      0      101     202
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         0                      1        3     202
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                      0      132     210
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                      1       18     210
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          0                      0       46     210
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          0                      1       14     210
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                      0      104     225
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                      1        9     225
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          0                      0      105     225
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          0                      1        7     225
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           1                      0      185     287
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           1                      1        3     287
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           0                      0       97     287
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           0                      1        2     287
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                      0       64     268
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                      1        6     268
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                      0      191     268
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                      1        7     268
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      0       62     219
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      1        3     219
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      0      149     219
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      1        5     219
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       1                      0       33      38
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       1                      1        5      38
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       0                      0        0      38
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       0                      1        0      38
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                      0      288     439
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                      1       78     439
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          0                      0       55     439
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          0                      1       18     439
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                      0    12290   14643
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                      1      961   14643
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     0                      0     1276   14643
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     0                      1      116   14643
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     1                      0      143     161
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     1                      1        3     161
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     0                      0       14     161
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     0                      1        1     161
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     1                      0      153     232
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     1                      1       37     232
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     0                      0       38     232
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     0                      1        4     232
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         1                      0       88     185
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         1                      1        5     185
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         0                      0       91     185
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         0                      1        1     185
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                      0      103     209
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                      1       43     209
6-24 months                   ki0047075b-MAL-ED     INDIA                          0                      0       46     209
6-24 months                   ki0047075b-MAL-ED     INDIA                          0                      1       17     209
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                      0       93     226
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                      1       20     226
6-24 months                   ki0047075b-MAL-ED     NEPAL                          0                      0       97     226
6-24 months                   ki0047075b-MAL-ED     NEPAL                          0                      1       16     226
6-24 months                   ki0047075b-MAL-ED     PERU                           1                      0      167     267
6-24 months                   ki0047075b-MAL-ED     PERU                           1                      1        8     267
6-24 months                   ki0047075b-MAL-ED     PERU                           0                      0       83     267
6-24 months                   ki0047075b-MAL-ED     PERU                           0                      1        9     267
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      0       60     248
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      1        6     248
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      0      153     248
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      1       29     248
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      0       58     210
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      1        5     210
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      0      128     210
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      1       19     210
6-24 months                   ki1000109-EE          PAKISTAN                       1                      0       21      38
6-24 months                   ki1000109-EE          PAKISTAN                       1                      1       17      38
6-24 months                   ki1000109-EE          PAKISTAN                       0                      0        0      38
6-24 months                   ki1000109-EE          PAKISTAN                       0                      1        0      38
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                      0      181     451
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                      1      194     451
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          0                      0       45     451
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          0                      1       31     451
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                      0     7300    9618
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                      1     1490    9618
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     0                      0      698    9618
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     0                      1      130    9618
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     1                      0      113     165
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     1                      1       35     165
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     0                      0       14     165
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     0                      1        3     165


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
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
![](/tmp/a01059f9-8532-4bde-9c91-ed3404d76440/a7924ad0-6d42-4cb2-b321-17436f9326c3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a01059f9-8532-4bde-9c91-ed3404d76440/a7924ad0-6d42-4cb2-b321-17436f9326c3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a01059f9-8532-4bde-9c91-ed3404d76440/a7924ad0-6d42-4cb2-b321-17436f9326c3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a01059f9-8532-4bde-9c91-ed3404d76440/a7924ad0-6d42-4cb2-b321-17436f9326c3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.2400000   0.1806887   0.2993113
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.1590909   0.0507953   0.2673865
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                    NA                0.3734233   0.2956033   0.4512433
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          0                    NA                0.4124613   0.2867494   0.5381732
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.2143841   0.1376122   0.2911559
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1928480   0.1208185   0.2648776
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           1                    NA                0.0545408   0.0222081   0.0868735
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           0                    NA                0.0996457   0.0408934   0.1583981
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.1426767   0.0579016   0.2274518
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.1604217   0.1089690   0.2118745
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1076923   0.0321596   0.1832250
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1363636   0.0820391   0.1906882
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.6082203   0.5590679   0.6573726
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.4627195   0.3495222   0.5759169
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.1733706   0.1663974   0.1803437
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1788070   0.1561187   0.2014953
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                    NA                0.1205368   0.0682546   0.1728190
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          0                    NA                0.2152448   0.1071136   0.3233760
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                    NA                0.0796460   0.0296154   0.1296766
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          0                    NA                0.0625000   0.0175705   0.1074295
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.0857143   0.0200123   0.1514163
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.0353535   0.0095827   0.0611243
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.2132090   0.1711520   0.2552660
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.2373001   0.1363959   0.3382044
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.0725536   0.0674263   0.0776809
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.0830159   0.0654254   0.1006064
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                    NA                0.2972310   0.2227330   0.3717290
6-24 months                   ki0047075b-MAL-ED     INDIA                          0                    NA                0.2768118   0.1680622   0.3855613
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.1723153   0.1029620   0.2416685
6-24 months                   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1444165   0.0792407   0.2095922
6-24 months                   ki0047075b-MAL-ED     PERU                           1                    NA                0.0457143   0.0147109   0.0767177
6-24 months                   ki0047075b-MAL-ED     PERU                           0                    NA                0.0978261   0.0370068   0.1586454
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.0909091   0.0214129   0.1604053
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.1593407   0.1060608   0.2126205
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0793651   0.0124579   0.1462723
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1292517   0.0748903   0.1836131
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.5180186   0.4675582   0.5684790
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.3806535   0.2698601   0.4914468
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.1693627   0.1610790   0.1776464
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1589862   0.1315416   0.1864308


### Parameter: E(Y)


agecat                        studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.2254098   0.1728726   0.2779471
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.3867925   0.3210797   0.4525052
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.2026432   0.1502365   0.2550498
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           NA                   NA                0.0696864   0.0401775   0.0991954
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.1598513   0.1159763   0.2037263
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1278539   0.0835266   0.1721812
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.5894040   0.5440524   0.6347556
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.1738218   0.1671074   0.1805361
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1523810   0.1036572   0.2011047
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.0711111   0.0374542   0.1047681
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.0485075   0.0227384   0.0742766
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.2186788   0.1799683   0.2573894
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.0735505   0.0685774   0.0785236
6-24 months                   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.2870813   0.2256006   0.3485621
6-24 months                   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1592920   0.1114757   0.2071084
6-24 months                   ki0047075b-MAL-ED     PERU                           NA                   NA                0.0636704   0.0343284   0.0930125
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.1411290   0.0977108   0.1845472
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1142857   0.0711519   0.1574195
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.4988914   0.4526947   0.5450880
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.1684342   0.1604630   0.1764054


### Parameter: RR


agecat                        studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     0                    1                 0.6628788   0.3213097   1.3675538
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          0                    1                 1.1045408   0.7633296   1.5982748
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          0                    1                 0.8995446   0.5359062   1.5099294
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           0                    1                 1.8269939   0.7928083   4.2102318
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 1.1243723   0.5712044   2.2132410
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.2662338   0.5652023   2.8367683
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          0                    1                 0.7607763   0.5889652   0.9827075
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.0313571   0.9035151   1.1772880
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          0                    1                 1.7857190   0.9177802   3.4744621
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          0                    1                 0.7847222   0.3020750   2.0385301
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 0.4124579   0.1432147   1.1878779
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          0                    1                 1.1129929   0.6963717   1.7788678
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.1442010   0.9169037   1.4278445
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED     INDIA                          0                    1                 0.9313019   0.5836966   1.4859145
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED     NEPAL                          0                    1                 0.8380946   0.4586880   1.5313297
6-24 months                   ki0047075b-MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED     PERU                           0                    1                 2.1399456   0.8527742   5.3699645
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 1.7527471   0.7609377   4.0372851
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.6285714   0.6348173   4.1779659
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          0                    1                 0.7348259   0.5411739   0.9977736
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 0.9387322   0.7854500   1.1219279


### Parameter: PAR


agecat                        studyid               country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0145902   -0.0371968   0.0080165
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0133691   -0.0294213   0.0561596
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0117409   -0.0643622   0.0408803
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0151456   -0.0082401   0.0385313
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0171746   -0.0564808   0.0908300
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0201616   -0.0452865   0.0856097
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0188163   -0.0395181   0.0018856
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0004512   -0.0017878   0.0026902
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0318442   -0.0031280   0.0668164
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0085349   -0.0420262   0.0249564
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0372068   -0.0894158   0.0150022
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0054698   -0.0124769   0.0234165
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0009969   -0.0007397   0.0027335
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0101496   -0.0509412   0.0306419
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0130232   -0.0603125   0.0342661
6-24 months                   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0179561   -0.0057536   0.0416659
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0502199   -0.0141555   0.1145954
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0349206   -0.0255041   0.0953454
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0191273   -0.0397523   0.0014978
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0009285   -0.0033304   0.0014734


### Parameter: PAF


agecat                        studyid               country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0647273   -0.1694188   0.0305918
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0345641   -0.0827180   0.1391420
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0579389   -0.3514955   0.1718547
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           1                    NA                 0.2173392   -0.1827376   0.4820847
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.1074411   -0.4960067   0.4674748
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1576923   -0.5426579   0.5400910
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0319243   -0.0678346   0.0027784
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0025959   -0.0103641   0.0153896
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                    NA                 0.2089775   -0.0475470   0.4026839
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.1200221   -0.7011560   0.2625900
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.7670330   -2.1314677   0.0028939
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0250128   -0.0605592   0.1036804
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0135539   -0.0102807   0.0368261
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0353546   -0.1877048   0.0974532
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0817570   -0.4226450   0.1774489
6-24 months                   ki0047075b-MAL-ED     PERU                           1                    NA                 0.2820168   -0.1711767   0.5598445
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.3558441   -0.2866629   0.6775093
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3055556   -0.4647664   0.6707645
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0383395   -0.0806993   0.0023599
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0055125   -0.0198814   0.0086538
