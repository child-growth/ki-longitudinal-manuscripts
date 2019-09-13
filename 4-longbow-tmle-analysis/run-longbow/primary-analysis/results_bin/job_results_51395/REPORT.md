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

agecat                        studyid               country                        predfeed3    ever_wasted   n_cell       n
----------------------------  --------------------  -----------------------------  ----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     1                      0      162     248
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     1                      1       51     248
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     0                      0       31     248
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     0                      1        4     248
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         1                      0      113     224
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         1                      1        7     224
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         0                      0       99     224
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         0                      1        5     224
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                      0      118     235
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                      1       63     235
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          0                      0       29     235
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          0                      1       25     235
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                      0      105     234
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                      1       28     234
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          0                      0       84     234
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          0                      1       17     234
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           1                      0      183     286
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           1                      1       11     286
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           0                      0       84     286
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           0                      1        8     286
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      0       79     275
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      1       16     275
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      0      152     275
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      1       28     275
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      0       83     249
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      1        9     249
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      0      136     249
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      1       21     249
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       1                      0      199     376
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       1                      1      151     376
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       0                      0       12     376
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       0                      1       14     376
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                      0      159     466
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                      1      225     466
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          0                      0       45     466
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          0                      1       37     466
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                      0    18888   25440
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                      1     3871   25440
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     0                      0     2163   25440
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     0                      1      518   25440
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     1                      0      110     164
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     1                      1       38     164
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     0                      0       13     164
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     0                      1        3     164
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     1                      0      196     247
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     1                      1       16     247
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     0                      0       34     247
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     0                      1        1     247
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         1                      0      116     224
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         1                      1        4     224
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         0                      0      101     224
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         0                      1        3     224
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                      0      160     234
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                      1       21     234
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          0                      0       37     234
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          0                      1       16     234
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                      0      123     232
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                      1       10     232
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          0                      0       94     232
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          0                      1        5     232
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           1                      0      190     286
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           1                      1        4     286
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           0                      0       91     286
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           0                      1        1     286
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                      0       89     274
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                      1        5     274
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                      0      173     274
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                      1        7     274
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      0       88     249
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      1        4     249
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      0      153     249
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      1        4     249
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       1                      0      285     372
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       1                      1       62     372
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       0                      0       15     372
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       0                      1       10     372
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                      0      315     448
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                      1       56     448
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          0                      0       61     448
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          0                      1       16     448
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                      0    21011   25239
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                      1     1589   25239
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     0                      0     2378   25239
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     0                      1      261   25239
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     1                      0      144     162
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     1                      1        3     162
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     0                      0       14     162
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     0                      1        1     162
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     1                      0      163     236
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     1                      1       39     236
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     0                      0       31     236
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     0                      1        3     236
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         1                      0      112     207
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         1                      1        4     207
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         0                      0       89     207
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         0                      1        2     207
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                      0      129     233
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                      1       49     233
6-24 months                   ki0047075b-MAL-ED     INDIA                          0                      0       40     233
6-24 months                   ki0047075b-MAL-ED     INDIA                          0                      1       15     233
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                      0      109     232
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                      1       23     232
6-24 months                   ki0047075b-MAL-ED     NEPAL                          0                      0       87     232
6-24 months                   ki0047075b-MAL-ED     NEPAL                          0                      1       13     232
6-24 months                   ki0047075b-MAL-ED     PERU                           1                      0      173     268
6-24 months                   ki0047075b-MAL-ED     PERU                           1                      1        9     268
6-24 months                   ki0047075b-MAL-ED     PERU                           0                      0       79     268
6-24 months                   ki0047075b-MAL-ED     PERU                           0                      1        7     268
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      0       78     253
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      1       11     253
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      0      139     253
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      1       25     253
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      0       80     239
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      1        7     239
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      0      133     239
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      1       19     239
6-24 months                   ki1000109-EE          PAKISTAN                       1                      0      234     374
6-24 months                   ki1000109-EE          PAKISTAN                       1                      1      114     374
6-24 months                   ki1000109-EE          PAKISTAN                       0                      0       16     374
6-24 months                   ki1000109-EE          PAKISTAN                       0                      1       10     374
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                      0      188     468
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                      1      199     468
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          0                      0       48     468
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          0                      1       33     468
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                      0    12714   16722
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                      1     2475   16722
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     0                      0     1251   16722
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     0                      1      282   16722
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     1                      0      114     165
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     1                      1       35     165
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     0                      0       14     165
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     0                      1        2     165


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
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
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
![](/tmp/585244fa-e3cc-4766-a151-34bad6d0b072/65160357-9a43-42c6-9cd3-c29b7a68dc85/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/585244fa-e3cc-4766-a151-34bad6d0b072/65160357-9a43-42c6-9cd3-c29b7a68dc85/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/585244fa-e3cc-4766-a151-34bad6d0b072/65160357-9a43-42c6-9cd3-c29b7a68dc85/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/585244fa-e3cc-4766-a151-34bad6d0b072/65160357-9a43-42c6-9cd3-c29b7a68dc85/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.0583333   0.0163056   0.1003611
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.0480769   0.0068698   0.0892840
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                    NA                0.3507318   0.2810009   0.4204628
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          0                    NA                0.4831806   0.3498169   0.6165444
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.2087220   0.1391988   0.2782453
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1697465   0.0963791   0.2431139
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           1                    NA                0.0567010   0.0241003   0.0893018
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           0                    NA                0.0869565   0.0292783   0.1446347
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.1668204   0.0913368   0.2423040
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.1547473   0.1016315   0.2078631
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0978261   0.0369985   0.1586537
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1337580   0.0804059   0.1871101
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       1                    NA                0.4324682   0.3804938   0.4844426
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       0                    NA                0.5211243   0.3208151   0.7214334
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.5847668   0.5354147   0.6341188
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.4681259   0.3579223   0.5783294
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.1693240   0.1636771   0.1749708
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1981914   0.1810090   0.2153738
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                    NA                0.1177250   0.0708574   0.1645925
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          0                    NA                0.3274159   0.2018029   0.4530288
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                    NA                0.0751880   0.0302761   0.1200998
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          0                    NA                0.0505051   0.0072753   0.0937348
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.0531915   0.0077419   0.0986411
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.0388889   0.0105942   0.0671836
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       1                    NA                0.1806125   0.1400544   0.2211706
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       0                    NA                0.4031768   0.1981250   0.6082286
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1503717   0.1138775   0.1868660
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.2005125   0.1082085   0.2928166
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.0704751   0.0665619   0.0743883
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1019249   0.0886326   0.1152171
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                    NA                0.2776679   0.2113571   0.3439786
6-24 months                   ki0047075b-MAL-ED     INDIA                          0                    NA                0.2648732   0.1477527   0.3819937
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.1729375   0.1077753   0.2380996
6-24 months                   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1309123   0.0633284   0.1984962
6-24 months                   ki0047075b-MAL-ED     PERU                           1                    NA                0.0494505   0.0178935   0.0810076
6-24 months                   ki0047075b-MAL-ED     PERU                           0                    NA                0.0813953   0.0234959   0.1392948
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.1158182   0.0524277   0.1792086
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.1498903   0.0952765   0.2045041
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0804598   0.0231836   0.1377359
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1250000   0.0723139   0.1776861
6-24 months                   ki1000109-EE          PAKISTAN                       1                    NA                0.3263030   0.2769201   0.3756858
6-24 months                   ki1000109-EE          PAKISTAN                       0                    NA                0.3955850   0.1924120   0.5987580
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.5152880   0.4654096   0.5651664
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.4298926   0.3244559   0.5353292
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.1636370   0.1571759   0.1700981
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1672450   0.1467856   0.1877044


### Parameter: E(Y)


agecat                        studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.0535714   0.0240181   0.0831247
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.3744681   0.3124566   0.4364796
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1923077   0.1417029   0.2429125
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           NA                   NA                0.0664336   0.0375206   0.0953465
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.1600000   0.1165917   0.2034083
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1204819   0.0799679   0.1609960
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       NA                   NA                0.4388298   0.3886039   0.4890557
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.5622318   0.5171396   0.6073240
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.1725236   0.1670497   0.1779975
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1581197   0.1112720   0.2049674
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.0646552   0.0329427   0.0963676
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.0437956   0.0195207   0.0680705
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       NA                   NA                0.1935484   0.1533466   0.2337501
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1607143   0.1266675   0.1947611
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.0732993   0.0695038   0.0770947
6-24 months                   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.2746781   0.2172425   0.3321138
6-24 months                   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1551724   0.1084814   0.2018634
6-24 months                   ki0047075b-MAL-ED     PERU                           NA                   NA                0.0597015   0.0312819   0.0881211
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.1422925   0.0991596   0.1854254
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1087866   0.0692283   0.1483450
6-24 months                   ki1000109-EE          PAKISTAN                       NA                   NA                0.3315508   0.2837756   0.3793260
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.4957265   0.4503800   0.5410730
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.1648726   0.1585930   0.1711523


### Parameter: RR


agecat                        studyid               country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         0                    1                 0.8241758   0.2689937   2.525211
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          0                    1                 1.3776355   0.9800451   1.936523
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          0                    1                 0.8132659   0.4724500   1.399940
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           0                    1                 1.5335968   0.6375068   3.689246
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 0.9276283   0.5254357   1.637678
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.3673036   0.6531876   2.862147
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       0                    1                 1.2050003   0.8058236   1.801915
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          0                    1                 0.8005343   0.6231600   1.028396
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.1704864   1.0696496   1.280829
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          0                    1                 2.7811931   1.5957031   4.847415
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          0                    1                 0.6717172   0.2365291   1.907604
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 0.7311111   0.2380091   2.245811
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       0                    1                 2.2322752   1.2809317   3.890178
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          0                    1                 1.3334453   0.7924655   2.243727
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.4462532   1.2593601   1.660882
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED     INDIA                          0                    1                 0.9539209   0.5768563   1.577455
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED     NEPAL                          0                    1                 0.7569920   0.3989449   1.436381
6-24 months                   ki0047075b-MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED     PERU                           0                    1                 1.6459948   0.6329958   4.280122
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 1.2941862   0.6687706   2.504473
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.5535714   0.6792765   3.553169
6-24 months                   ki1000109-EE          PAKISTAN                       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE          PAKISTAN                       0                    1                 1.2123242   0.7095669   2.071306
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          0                    1                 0.8342763   0.6408200   1.086135
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.0220487   0.9011687   1.159143


### Parameter: PAR


agecat                        studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0047619   -0.0320974    0.0225736
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0237362   -0.0117109    0.0591834
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0164143   -0.0598767    0.0270480
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0097325   -0.0116430    0.0311081
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0068204   -0.0672733    0.0536325
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0226558   -0.0284054    0.0737171
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       1                    NA                 0.0063616   -0.0075043    0.0202275
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0225350   -0.0442450   -0.0008250
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0031996    0.0014569    0.0049423
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0403947    0.0085958    0.0721936
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0105328   -0.0371800    0.0161144
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0093959   -0.0445757    0.0257839
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       1                    NA                 0.0129359   -0.0013758    0.0272475
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0103425   -0.0066166    0.0273017
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0028241    0.0015053    0.0041430
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0029898   -0.0354855    0.0295060
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0177650   -0.0582482    0.0227181
6-24 months                   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0102509   -0.0109847    0.0314865
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0264743   -0.0279739    0.0809225
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0283268   -0.0212419    0.0778956
6-24 months                   ki1000109-EE          PAKISTAN                       1                    NA                 0.0052478   -0.0083905    0.0188861
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0195615   -0.0403393    0.0012163
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0012356   -0.0007549    0.0032261


### Parameter: PAF


agecat                        studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0888889   -0.7364905    0.3171981
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0633865   -0.0362334    0.1534293
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0853546   -0.3355714    0.1179846
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           1                    NA                 0.1465003   -0.2361688    0.4107101
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0426273   -0.4977451    0.2741944
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1880435   -0.3622174    0.5160292
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       1                    NA                 0.0144968   -0.0176409    0.0456195
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0400813   -0.0796768   -0.0019380
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0185460    0.0084100    0.0285785
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                    NA                 0.2554691    0.0398418    0.4226720
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.1629073   -0.6482205    0.1795070
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.2145390   -1.3379456    0.3690593
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       1                    NA                 0.0668354   -0.0092239    0.1371624
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0643536   -0.0468164    0.1637175
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0385289    0.0204229    0.0563003
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0108846   -0.1363857    0.1007563
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.1144858   -0.4063922    0.1168333
6-24 months                   ki0047075b-MAL-ED     PERU                           1                    NA                 0.1717033   -0.2595812    0.4553146
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.1860556   -0.2935760    0.4878496
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2603890   -0.3545106    0.5961461
6-24 months                   ki1000109-EE          PAKISTAN                       1                    NA                 0.0158281   -0.0261901    0.0561258
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0394603   -0.0823926    0.0017691
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0074943   -0.0046370    0.0194790
