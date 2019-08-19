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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** predfeed3

**Adjustment Set:**

* arm
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

agecat                       studyid               country                        predfeed3    ever_stunted   n_cell       n
---------------------------  --------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     1                       0       85     206
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     1                       1       91     206
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     0                       0       13     206
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     0                       1       17     206
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                       0       93     202
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                       1       17     202
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         0                       0       81     202
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         0                       1       11     202
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                       0       61     200
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                       1       94     200
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          0                       0       33     200
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          0                       1       12     200
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                       0       91     209
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                       1       33     209
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          0                       0       63     209
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          0                       1       22     209
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                       0       72     251
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                       1       98     251
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           0                       0       29     251
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           0                       1       52     251
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                       0       37     246
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                       1       51     246
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                       0       77     246
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                       1       81     246
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       0       17     211
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       1       66     211
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       0       19     211
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       1      109     211
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN                       1                       0       30     248
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN                       1                       1      202     248
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN                       0                       0        2     248
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN                       0                       1       14     248
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                       0      129     422
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                       1      225     422
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          0                       0       24     422
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          0                       1       44     422
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                       0    11959   17686
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                       1     4076   17686
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     0                       0     1164   17686
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     0                       1      487   17686
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     1                       0       62     113
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     1                       1       42     113
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     0                       0        3     113
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     0                       1        6     113
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     1                       0      140     206
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     1                       1       36     206
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     0                       0       22     206
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     0                       1        8     206
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         1                       0       98     202
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         1                       1       12     202
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         0                       0       85     202
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         0                       1        7     202
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          1                       0      117     200
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          1                       1       38     200
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          0                       0       40     200
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          0                       1        5     200
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          1                       0      117     209
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          1                       1        7     209
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          0                       0       78     209
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          0                       1        7     209
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                       0      115     251
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                       1       55     251
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           0                       0       45     251
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           0                       1       36     251
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                       0       59     246
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                       1       29     246
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                       0      111     246
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                       1       47     246
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       0       61     211
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       1       22     211
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       0       86     211
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       1       42     211
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       1                       0       92     248
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       1                       1      140     248
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       0                       0        6     248
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       0                       1       10     248
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                       0      284     422
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                       1       70     422
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          0                       0       59     422
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          0                       1        9     422
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                       0    13978   17686
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                       1     2057   17686
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     0                       0     1338   17686
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     0                       1      313   17686
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     1                       0       96     113
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     1                       1        8     113
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     0                       0        6     113
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     0                       1        3     113
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     1                       0       80     156
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     1                       1       55     156
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     0                       0       12     156
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     0                       1        9     156
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         1                       0       88     168
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         1                       1        5     168
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         0                       0       71     168
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         0                       1        4     168
6-24 months                  ki0047075b-MAL-ED     INDIA                          1                       0       59     154
6-24 months                  ki0047075b-MAL-ED     INDIA                          1                       1       56     154
6-24 months                  ki0047075b-MAL-ED     INDIA                          0                       0       32     154
6-24 months                  ki0047075b-MAL-ED     INDIA                          0                       1        7     154
6-24 months                  ki0047075b-MAL-ED     NEPAL                          1                       0       90     193
6-24 months                  ki0047075b-MAL-ED     NEPAL                          1                       1       26     193
6-24 months                  ki0047075b-MAL-ED     NEPAL                          0                       0       62     193
6-24 months                  ki0047075b-MAL-ED     NEPAL                          0                       1       15     193
6-24 months                  ki0047075b-MAL-ED     PERU                           1                       0       64     148
6-24 months                  ki0047075b-MAL-ED     PERU                           1                       1       43     148
6-24 months                  ki0047075b-MAL-ED     PERU                           0                       0       25     148
6-24 months                  ki0047075b-MAL-ED     PERU                           0                       1       16     148
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                       0       31     156
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                       1       22     156
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   0                       0       69     156
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   0                       1       34     156
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       0       14     143
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       1       44     143
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       0       18     143
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       1       67     143
6-24 months                  ki1000109-EE          PAKISTAN                       1                       0       28      96
6-24 months                  ki1000109-EE          PAKISTAN                       1                       1       62      96
6-24 months                  ki1000109-EE          PAKISTAN                       0                       0        2      96
6-24 months                  ki1000109-EE          PAKISTAN                       0                       1        4      96
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                       0      125     338
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                       1      155     338
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          0                       0       23     338
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          0                       1       35     338
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                       0     7389   10184
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                       1     2021   10184
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     0                       0      596   10184
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     0                       1      178   10184
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     1                       0       62     102
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     1                       1       34     102
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     0                       0        3     102
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     0                       1        3     102


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
![](/tmp/0f8cca04-7109-4391-a4a1-d6155208bdc8/2df9b14a-65c3-4b36-be97-3940704d8c67/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0f8cca04-7109-4391-a4a1-d6155208bdc8/2df9b14a-65c3-4b36-be97-3940704d8c67/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0f8cca04-7109-4391-a4a1-d6155208bdc8/2df9b14a-65c3-4b36-be97-3940704d8c67/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0f8cca04-7109-4391-a4a1-d6155208bdc8/2df9b14a-65c3-4b36-be97-3940704d8c67/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.5191834   0.4455497   0.5928171
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.5745361   0.3879720   0.7611002
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.1549987   0.0872997   0.2226978
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.1108339   0.0431323   0.1785354
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                    NA                0.6053672   0.5289605   0.6817739
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          0                    NA                0.2750703   0.1397691   0.4103715
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.2653668   0.1869420   0.3437916
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.2610546   0.1669252   0.3551840
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                    NA                0.5722285   0.4977970   0.6466600
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           0                    NA                0.6494572   0.5458312   0.7530833
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.5783372   0.4738541   0.6828202
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.5188504   0.4413248   0.5963761
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7825857   0.6933022   0.8718692
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8536787   0.7937319   0.9136255
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.6364893   0.5862558   0.6867227
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.6603079   0.5449320   0.7756839
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.2528202   0.2444145   0.2612259
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.3076831   0.2851356   0.3302306
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.2045455   0.1448074   0.2642835
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.2666667   0.1080389   0.4252944
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.1090909   0.0506872   0.1674946
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.0760870   0.0217741   0.1303998
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          1                    NA                0.2451613   0.1772685   0.3130541
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          0                    NA                0.1111111   0.0190592   0.2031630
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          1                    NA                0.0564516   0.0157324   0.0971708
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          0                    NA                0.0823529   0.0237718   0.1409340
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                    NA                0.3151159   0.2452565   0.3849752
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           0                    NA                0.4686785   0.3668176   0.5705394
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.3409348   0.2391424   0.4427271
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.2966263   0.2262686   0.3669839
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2618361   0.1674231   0.3562492
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3271677   0.2449482   0.4093871
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       1                    NA                0.6034483   0.5403741   0.6665224
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       0                    NA                0.6250000   0.3873044   0.8626956
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1977401   0.1562001   0.2392801
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1323529   0.0517136   0.2129923
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.1284840   0.1224572   0.1345109
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1788553   0.1599605   0.1977501
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.4074074   0.3242559   0.4905589
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.4285714   0.2162335   0.6409093
6-24 months                  ki0047075b-MAL-ED     INDIA                          1                    NA                0.4869565   0.3953058   0.5786073
6-24 months                  ki0047075b-MAL-ED     INDIA                          0                    NA                0.1794872   0.0586530   0.3003214
6-24 months                  ki0047075b-MAL-ED     NEPAL                          1                    NA                0.2290494   0.1529814   0.3051174
6-24 months                  ki0047075b-MAL-ED     NEPAL                          0                    NA                0.2065407   0.1170925   0.2959888
6-24 months                  ki0047075b-MAL-ED     PERU                           1                    NA                0.4011317   0.3075351   0.4947282
6-24 months                  ki0047075b-MAL-ED     PERU                           0                    NA                0.3985060   0.2438432   0.5531689
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.4052598   0.2693236   0.5411960
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.3351150   0.2425053   0.4277248
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7795328   0.6665711   0.8924944
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7963904   0.7084243   0.8843566
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.5548284   0.4964315   0.6132254
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.6096454   0.4827485   0.7365423
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.2146804   0.2048743   0.2244865
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.2312310   0.1996477   0.2628144


### Parameter: E(Y)


agecat                       studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.5242718   0.4559076   0.5926361
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.1386139   0.0908442   0.1863835
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.5300000   0.4606561   0.5993439
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.2631579   0.2033151   0.3230007
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           NA                   NA                0.5976096   0.5368226   0.6583966
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.5365854   0.4741444   0.5990263
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8293839   0.7785063   0.8802614
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.6374408   0.5915192   0.6833623
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.2580007   0.2499160   0.2660854
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.2135922   0.1574890   0.2696955
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.0940594   0.0537041   0.1344147
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          NA                   NA                0.2150000   0.1579211   0.2720789
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.0669856   0.0330113   0.1009600
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           NA                   NA                0.3625498   0.3029582   0.4221414
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.3089431   0.2510854   0.3668008
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3033175   0.2411441   0.3654909
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       NA                   NA                0.6048387   0.5438701   0.6658074
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1872038   0.1499427   0.2244649
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.1340043   0.1282072   0.1398014
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.4102564   0.3328207   0.4876922
6-24 months                  ki0047075b-MAL-ED     INDIA                          NA                   NA                0.4090909   0.3311846   0.4869972
6-24 months                  ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.2124352   0.1545785   0.2702920
6-24 months                  ki0047075b-MAL-ED     PERU                           NA                   NA                0.3986486   0.3194990   0.4777982
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.3589744   0.2834562   0.4344926
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7762238   0.7076743   0.8447733
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.5621302   0.5091609   0.6150995
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.2159269   0.2063541   0.2254998


### Parameter: RR


agecat                       studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     0                    1                 1.1066150   0.7804955   1.5689991
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         0                    1                 0.7150631   0.3354021   1.5244841
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          0                    1                 0.4543858   0.2740341   0.7534336
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          0                    1                 0.9837501   0.6169446   1.5686405
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           0                    1                 1.1349614   0.9271283   1.3893840
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 0.8971418   0.7115181   1.1311917
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0908438   0.9547336   1.2463583
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          0                    1                 1.0374220   0.8563664   1.2567568
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.2170035   1.1264899   1.3147899
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     0                    1                 1.3037037   0.6720168   2.5291678
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         0                    1                 0.6974638   0.2857649   1.7022933
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          0                    1                 0.4532164   0.1892073   1.0856088
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          0                    1                 1.4588235   0.5297061   4.0176353
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           0                    1                 1.4873214   1.1050393   2.0018517
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 0.8700382   0.5950967   1.2720058
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.2495132   0.8033720   1.9434127
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       0                    1                 1.0357143   0.6981485   1.5364983
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          0                    1                 0.6693277   0.3513558   1.2750597
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.3920433   1.2421724   1.5599964
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     0                    1                 1.0519481   0.6155720   1.7976691
6-24 months                  ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     INDIA                          0                    1                 0.3685898   0.1832133   0.7415314
6-24 months                  ki0047075b-MAL-ED     NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     NEPAL                          0                    1                 0.9017298   0.5204475   1.5623414
6-24 months                  ki0047075b-MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     PERU                           0                    1                 0.9934545   0.6312315   1.5635340
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 0.8269141   0.5351082   1.2778480
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0216253   0.8521651   1.2247842
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          0                    1                 1.0987999   0.8701130   1.3875912
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.0770943   0.9363990   1.2389293


### Parameter: PAR


agecat                       studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0050885   -0.0215793    0.0317563
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0163849   -0.0606457    0.0278759
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0753672   -0.1145216   -0.0362129
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0022089   -0.0519546    0.0475368
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0253811   -0.0149566    0.0657188
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0417518   -0.1248955    0.0413918
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0467982   -0.0195304    0.1131268
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0009515   -0.0192029    0.0211059
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0051805    0.0030988    0.0072621
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0090468   -0.0158198    0.0339133
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0150315   -0.0514266    0.0213636
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0301613   -0.0570465   -0.0032761
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0105340   -0.0185325    0.0396005
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                    NA                 0.0474339    0.0080093    0.0868586
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0319917   -0.1122887    0.0483054
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0414814   -0.0347352    0.1176980
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       1                    NA                 0.0013904   -0.0144892    0.0172701
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0105363   -0.0253324    0.0042597
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0055203    0.0037010    0.0073395
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0028490   -0.0278695    0.0335675
6-24 months                  ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0778656   -0.1217291   -0.0340021
6-24 months                  ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0166142   -0.0639463    0.0307180
6-24 months                  ki0047075b-MAL-ED     PERU                           1                    NA                -0.0024830   -0.0516945    0.0467285
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0462854   -0.1559939    0.0634230
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0033090   -0.0887525    0.0821345
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0073018   -0.0168346    0.0314382
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0012466   -0.0011128    0.0036059


### Parameter: PAF


agecat                       studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0097058   -0.0425198    0.0593150
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.1182050   -0.4868439    0.1590358
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.1422023   -0.2227542   -0.0669569
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0083939   -0.2162818    0.1639616
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0424710   -0.0278169    0.1079522
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0778102   -0.2446509    0.0666661
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0564252   -0.0276635    0.1336334
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0014927   -0.0306316    0.0326156
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0200793    0.0119349    0.0281566
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0423554   -0.0811493    0.1517515
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.1598086   -0.6126464    0.1658704
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.1402851   -0.2701059   -0.0237336
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.1572581   -0.3994711    0.4925126
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                    NA                 0.1308343    0.0137597    0.2340112
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.1035520   -0.3960378    0.1276547
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1367590   -0.1539924    0.3542549
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       1                    NA                 0.0022989   -0.0243062    0.0282128
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0562826   -0.1379115    0.0194906
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0411948    0.0274545    0.0547410
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0069444   -0.0708319    0.0790717
6-24 months                  ki0047075b-MAL-ED     INDIA                          1                    NA                -0.1903382   -0.3068124   -0.0842450
6-24 months                  ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0782081   -0.3260099    0.1232851
6-24 months                  ki0047075b-MAL-ED     PERU                           1                    NA                -0.0062286   -0.1375597    0.1099405
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.1289380   -0.4799117    0.1387993
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0042629   -0.1205715    0.0999735
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0129894   -0.0309247    0.0550330
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0057731   -0.0052108    0.0166368
