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

**Outcome Variable:** ever_swasted

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

agecat                        studyid               country                        predfeed3    ever_swasted   n_cell       n
----------------------------  --------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     1                       0      203     248
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     1                       1       10     248
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     0                       0       34     248
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     0                       1        1     248
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         1                       0      117     224
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         1                       1        3     224
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         0                       0      104     224
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         0                       1        0     224
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                       0      173     235
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                       1        8     235
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          0                       0       52     235
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          0                       1        2     235
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                       0      131     234
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                       1        2     234
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          0                       0      100     234
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          0                       1        1     234
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           1                       0      191     286
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           1                       1        3     286
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           0                       0       92     286
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           0                       1        0     286
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                       0       92     275
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                       1        3     275
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                       0      172     275
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                       1        8     275
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       0       91     249
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       1        1     249
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       0      152     249
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       1        5     249
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       1                       0      306     376
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       1                       1       44     376
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       0                       0       19     376
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       0                       1        7     376
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                       0      299     466
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                       1       85     466
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          0                       0       70     466
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          0                       1       12     466
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                       0    21943   25440
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                       1      816   25440
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     0                       0     2579   25440
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     0                       1      102   25440
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     1                       0      143     164
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     1                       1        5     164
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     0                       0       15     164
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     0                       1        1     164
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     1                       0      205     247
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     1                       1        7     247
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     0                       0       35     247
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     0                       1        0     247
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         1                       0      118     224
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         1                       1        2     224
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         0                       0      104     224
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         0                       1        0     224
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                       0      177     234
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                       1        4     234
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          0                       0       52     234
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          0                       1        1     234
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                       0      133     232
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                       1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          0                       0       98     232
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          0                       1        1     232
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           1                       0      193     286
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           1                       1        1     286
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           0                       0       92     286
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           0                       1        0     286
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                       0       94     274
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                       1        0     274
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                       0      177     274
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                       1        3     274
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       0       91     249
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       1        1     249
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       0      156     249
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       1        1     249
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       1                       0      334     372
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       1                       1       13     372
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       0                       0       22     372
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       0                       1        3     372
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                       0      360     448
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                       1       11     448
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          0                       0       75     448
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          0                       1        2     448
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                       0    22231   25239
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                       1      369   25239
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     0                       0     2588   25239
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     0                       1       51   25239
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     1                       0      147     162
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     1                       1        0     162
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     0                       0       14     162
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     0                       1        1     162
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     1                       0      199     236
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     1                       1        3     236
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     0                       0       33     236
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     0                       1        1     236
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         1                       0      114     207
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         1                       1        2     207
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         0                       0       91     207
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         0                       1        0     207
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                       0      174     233
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                       1        4     233
6-24 months                   ki0047075b-MAL-ED     INDIA                          0                       0       54     233
6-24 months                   ki0047075b-MAL-ED     INDIA                          0                       1        1     233
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                       0      130     232
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                       1        2     232
6-24 months                   ki0047075b-MAL-ED     NEPAL                          0                       0      100     232
6-24 months                   ki0047075b-MAL-ED     NEPAL                          0                       1        0     232
6-24 months                   ki0047075b-MAL-ED     PERU                           1                       0      180     268
6-24 months                   ki0047075b-MAL-ED     PERU                           1                       1        2     268
6-24 months                   ki0047075b-MAL-ED     PERU                           0                       0       86     268
6-24 months                   ki0047075b-MAL-ED     PERU                           0                       1        0     268
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   1                       0       85     253
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   1                       1        4     253
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   0                       0      159     253
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   0                       1        5     253
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       0       87     239
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       1        0     239
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       0      148     239
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       1        4     239
6-24 months                   ki1000109-EE          PAKISTAN                       1                       0      314     374
6-24 months                   ki1000109-EE          PAKISTAN                       1                       1       34     374
6-24 months                   ki1000109-EE          PAKISTAN                       0                       0       21     374
6-24 months                   ki1000109-EE          PAKISTAN                       0                       1        5     374
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                       0      303     468
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                       1       84     468
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          0                       0       69     468
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          0                       1       12     468
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                       0    14709   16722
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                       1      480   16722
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     0                       0     1476   16722
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     0                       1       57   16722
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     1                       0      143     165
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     1                       1        6     165
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     0                       0       16     165
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     0                       1        0     165


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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/076784ce-e657-4223-a9cd-201941bf10d6/7be41ef4-309c-4ac1-ada2-8937daf8fca5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/076784ce-e657-4223-a9cd-201941bf10d6/7be41ef4-309c-4ac1-ada2-8937daf8fca5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/076784ce-e657-4223-a9cd-201941bf10d6/7be41ef4-309c-4ac1-ada2-8937daf8fca5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/076784ce-e657-4223-a9cd-201941bf10d6/7be41ef4-309c-4ac1-ada2-8937daf8fca5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                0.1257143   0.0909357   0.1604928
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                0.2692308   0.0985077   0.4399538
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2195041   0.1779101   0.2610982
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1251673   0.0475543   0.2027804
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0359451   0.0331004   0.0387898
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0376947   0.0294809   0.0459085
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0163261   0.0144118   0.0182403
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0193728   0.0135223   0.0252234
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                0.0977012   0.0664645   0.1289378
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                0.1923077   0.0406152   0.3440002
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2177350   0.1766280   0.2588420
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1515679   0.0743673   0.2287684
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0316199   0.0285214   0.0347183
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0349714   0.0250704   0.0448724


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     NA                   NA                0.1356383   0.1009829   0.1702937
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2081545   0.1712538   0.2450552
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0360849   0.0334047   0.0387651
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0166409   0.0147720   0.0185098
6-24 months                   ki1000109-EE          PAKISTAN     NA                   NA                0.1042781   0.0732627   0.1352934
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2051282   0.1685055   0.2417509
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0321134   0.0291271   0.0350997


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    1                 2.1416084   1.0722110   4.277597
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.5702278   0.2979066   1.091482
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0486751   0.8312808   1.322922
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.1866199   0.8687020   1.620886
6-24 months                   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE          PAKISTAN     0                    1                 1.9683257   0.8403400   4.610403
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.6961116   0.4044827   1.198003
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.1059936   0.8197993   1.492099


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0099240   -0.0026748   0.0225228
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0113496   -0.0269638   0.0042646
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0001398   -0.0007430   0.0010226
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0003148   -0.0002920   0.0009217
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                 0.0065769   -0.0044632   0.0176171
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0126068   -0.0278695   0.0026559
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0004935   -0.0004824   0.0014694


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0731653   -0.0230498   0.1603315
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0545250   -0.1318154   0.0174873
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0038746   -0.0209034   0.0280511
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0189193   -0.0181064   0.0545986
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                 0.0630710   -0.0475520   0.1620121
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0614581   -0.1381835   0.0100953
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0153682   -0.0154620   0.0452623
