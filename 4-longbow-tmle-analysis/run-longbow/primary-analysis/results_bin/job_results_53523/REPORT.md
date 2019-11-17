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

agecat                       studyid               country                        predfeed3    ever_stunted   n_cell       n
---------------------------  --------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     1                       0       78     202
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     1                       1       86     202
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     0                       0       16     202
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     0                       1       22     202
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                       0       69     175
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                       1       17     175
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         0                       0       75     175
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         0                       1       14     175
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                       0       48     184
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                       1       79     184
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          0                       0       35     184
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          0                       1       22     184
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                       0       77     201
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                       1       28     201
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          0                       0       72     201
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          0                       1       24     201
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                       0       71     253
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                       1       95     253
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           0                       0       31     253
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           0                       1       56     253
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                       0       31     237
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                       1       35     237
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                       0       75     237
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                       1       96     237
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       0       10     185
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       1       46     185
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       0       20     185
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       1      109     185
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN                       1                       0        4      21
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN                       1                       1       17      21
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN                       0                       0        0      21
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN                       0                       1        0      21
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                       0      116     380
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                       1      201     380
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          0                       0       22     380
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          0                       1       41     380
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                       0     6792   10148
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                       1     2425   10148
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     0                       0      689   10148
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     0                       1      242   10148
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     1                       0       63     113
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     1                       1       40     113
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     0                       0        4     113
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     0                       1        6     113
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     1                       0      130     202
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     1                       1       34     202
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     0                       0       27     202
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     0                       1       11     202
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         1                       0       75     175
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         1                       1       11     175
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         0                       0       80     175
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         0                       1        9     175
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          1                       0       96     184
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          1                       1       31     184
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          0                       0       47     184
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          0                       1       10     184
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          1                       0      101     201
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          1                       1        4     201
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          0                       0       89     201
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          0                       1        7     201
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                       0      112     253
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                       1       54     253
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           0                       0       49     253
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           0                       1       38     253
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                       0       49     237
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                       1       17     237
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                       0      116     237
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                       1       55     237
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       0       42     185
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       1       14     185
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       0       85     185
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       1       44     185
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       1                       0        8      21
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       1                       1       13      21
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       0                       0        0      21
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       0                       1        0      21
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                       0      252     380
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                       1       65     380
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          0                       0       53     380
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          0                       1       10     380
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                       0     7952   10145
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                       1     1262   10145
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     0                       0      800   10145
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     0                       1      131   10145
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     1                       0       95     113
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     1                       1        8     113
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     0                       0        7     113
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     0                       1        3     113
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     1                       0       73     150
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     1                       1       52     150
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     0                       0       14     150
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     0                       1       11     150
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         1                       0       65     143
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         1                       1        6     143
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         0                       0       67     143
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         0                       1        5     143
6-24 months                  ki0047075b-MAL-ED     INDIA                          1                       0       46     140
6-24 months                  ki0047075b-MAL-ED     INDIA                          1                       1       48     140
6-24 months                  ki0047075b-MAL-ED     INDIA                          0                       0       34     140
6-24 months                  ki0047075b-MAL-ED     INDIA                          0                       1       12     140
6-24 months                  ki0047075b-MAL-ED     NEPAL                          1                       0       76     188
6-24 months                  ki0047075b-MAL-ED     NEPAL                          1                       1       24     188
6-24 months                  ki0047075b-MAL-ED     NEPAL                          0                       0       71     188
6-24 months                  ki0047075b-MAL-ED     NEPAL                          0                       1       17     188
6-24 months                  ki0047075b-MAL-ED     PERU                           1                       0       63     148
6-24 months                  ki0047075b-MAL-ED     PERU                           1                       1       41     148
6-24 months                  ki0047075b-MAL-ED     PERU                           0                       0       26     148
6-24 months                  ki0047075b-MAL-ED     PERU                           0                       1       18     148
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                       0       26     152
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                       1       18     152
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   0                       0       67     152
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   0                       1       41     152
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       0        9     123
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       1       32     123
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       0       17     123
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       1       65     123
6-24 months                  ki1000109-EE          PAKISTAN                       1                       0        4       8
6-24 months                  ki1000109-EE          PAKISTAN                       1                       1        4       8
6-24 months                  ki1000109-EE          PAKISTAN                       0                       0        0       8
6-24 months                  ki1000109-EE          PAKISTAN                       0                       1        0       8
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                       0      112     300
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                       1      136     300
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          0                       0       21     300
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          0                       1       31     300
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                       0     4114    5773
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                       1     1170    5773
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     0                       0      377    5773
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     0                       1      112    5773
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     1                       0       63     103
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     1                       1       32     103
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     0                       0        4     103
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     0                       1        4     103


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
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
![](/tmp/a34a23ee-3760-4007-8f36-0d257cad3542/3c20dab2-fe99-4be7-906a-1826086229e2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a34a23ee-3760-4007-8f36-0d257cad3542/3c20dab2-fe99-4be7-906a-1826086229e2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a34a23ee-3760-4007-8f36-0d257cad3542/3c20dab2-fe99-4be7-906a-1826086229e2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a34a23ee-3760-4007-8f36-0d257cad3542/3c20dab2-fe99-4be7-906a-1826086229e2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.5216002   0.4452917   0.5979086
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.5852181   0.4282974   0.7421388
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.2030403   0.1180551   0.2880255
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.1564278   0.0796475   0.2332081
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                    NA                0.6028166   0.5176505   0.6879828
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          0                    NA                0.4175500   0.2849711   0.5501290
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.2725430   0.1882902   0.3567958
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.2628516   0.1760484   0.3496549
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                    NA                0.5747630   0.5002043   0.6493217
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           0                    NA                0.6380712   0.5376917   0.7384506
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.5190182   0.3960627   0.6419737
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.5686404   0.4946960   0.6425847
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8223840   0.7190179   0.9257501
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8486970   0.7861562   0.9112378
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.6340929   0.5813100   0.6868759
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.6193820   0.5120730   0.7266910
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.2623182   0.2515240   0.2731123
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.2662564   0.2395282   0.2929847
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.2070865   0.1448133   0.2693598
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.2821796   0.1353182   0.4290409
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.1279070   0.0571170   0.1986970
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.1011236   0.0383071   0.1639401
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          1                    NA                0.2390868   0.1642129   0.3139608
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          0                    NA                0.1819665   0.0803863   0.2835467
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                    NA                0.3230577   0.2526763   0.3934391
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           0                    NA                0.4354503   0.3347914   0.5361092
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.2558858   0.1487345   0.3630371
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.3222505   0.2519459   0.3925550
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2432535   0.1276801   0.3588269
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3421206   0.2596359   0.4246054
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.2058751   0.1613305   0.2504197
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1718072   0.0832625   0.2603520
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.1368985   0.1289492   0.1448478
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1401930   0.1181812   0.1622048
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.4174568   0.3305290   0.5043846
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.4436160   0.2369380   0.6502940
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.0845070   0.0195813   0.1494328
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.0694444   0.0105200   0.1283689
6-24 months                  ki0047075b-MAL-ED     INDIA                          1                    NA                0.5106933   0.4077854   0.6136013
6-24 months                  ki0047075b-MAL-ED     INDIA                          0                    NA                0.2657717   0.1364152   0.3951282
6-24 months                  ki0047075b-MAL-ED     NEPAL                          1                    NA                0.2468007   0.1621928   0.3314087
6-24 months                  ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1978017   0.1145791   0.2810243
6-24 months                  ki0047075b-MAL-ED     PERU                           1                    NA                0.3916352   0.2968283   0.4864422
6-24 months                  ki0047075b-MAL-ED     PERU                           0                    NA                0.3946804   0.2450805   0.5442802
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.4230613   0.2750030   0.5711196
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.3827867   0.2901851   0.4753883
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7804878   0.6532720   0.9077036
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7926829   0.7045819   0.8807840
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.5494604   0.4876755   0.6112452
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.5814295   0.4564019   0.7064571
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.2216655   0.2087159   0.2346151
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.2243530   0.1759586   0.2727475


### Parameter: E(Y)


agecat                       studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.5346535   0.4656971   0.6036099
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.1771429   0.1204149   0.2338709
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.5489130   0.4768182   0.6210079
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.2587065   0.1980144   0.3193985
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           NA                   NA                0.5968379   0.5362738   0.6574021
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.5527426   0.4893071   0.6161781
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8378378   0.7845787   0.8910970
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.6368421   0.5884257   0.6852585
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.2628104   0.2524838   0.2731371
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.2227723   0.1652475   0.2802970
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.1142857   0.0670124   0.1615591
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          NA                   NA                0.2228261   0.1625334   0.2831188
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           NA                   NA                0.3636364   0.3042435   0.4230292
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.3037975   0.2451226   0.3624723
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3135135   0.2464813   0.3805457
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1973684   0.1572979   0.2374390
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.1373090   0.1297510   0.1448670
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.4200000   0.3407510   0.4992490
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.0769231   0.0330951   0.1207510
6-24 months                  ki0047075b-MAL-ED     INDIA                          NA                   NA                0.4285714   0.3463030   0.5108399
6-24 months                  ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.2180851   0.1588990   0.2772712
6-24 months                  ki0047075b-MAL-ED     PERU                           NA                   NA                0.3986486   0.3194990   0.4777982
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.3881579   0.3104288   0.4658870
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7886179   0.7161684   0.8610674
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.5566667   0.5003580   0.6129753
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.2220682   0.2093710   0.2347655


### Parameter: RR


agecat                       studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     0                    1                 1.1219669   0.8295470   1.5174663
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         0                    1                 0.7704275   0.4034603   1.4711696
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          0                    1                 0.6926651   0.4911130   0.9769339
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          0                    1                 0.9644411   0.6135440   1.5160228
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           0                    1                 1.1101465   0.9088226   1.3560678
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 1.0956078   0.8382425   1.4319919
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0319960   0.8923851   1.1934486
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          0                    1                 0.9768001   0.8108187   1.1767592
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.0150134   0.9139719   1.1272252
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     0                    1                 1.3626167   0.7463104   2.4878715
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         0                    1                 0.7906027   0.3440627   1.8166824
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          0                    1                 0.7610896   0.4028571   1.4378732
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           0                    1                 1.3479028   0.9927767   1.8300609
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 1.2593528   0.7852430   2.0197181
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.4064366   0.8248133   2.3981960
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          0                    1                 0.8345217   0.4769967   1.4600236
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.0240652   0.8676659   1.2086560
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     0                    1                 1.0626633   0.6392151   1.7666248
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         0                    1                 0.8217593   0.2615933   2.5814437
6-24 months                  ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     INDIA                          0                    1                 0.5204135   0.3077041   0.8801642
6-24 months                  ki0047075b-MAL-ED     NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     NEPAL                          0                    1                 0.8014631   0.4661384   1.3780093
6-24 months                  ki0047075b-MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     PERU                           0                    1                 1.0077754   0.6415566   1.5830424
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 0.9048020   0.5904491   1.3865152
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0156250   0.8337865   1.2371202
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          0                    1                 1.0581828   0.8347173   1.3414730
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.0121242   0.8114261   1.2624630


### Parameter: PAR


agecat                       studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0130533   -0.0189198    0.0450264
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0258974   -0.0844957    0.0327008
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0539036   -0.1019337   -0.0058735
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0138365   -0.0717513    0.0440783
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0220749   -0.0196911    0.0638409
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0337244   -0.0695593    0.1370082
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0154538   -0.0691151    0.1000227
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0027492   -0.0160980    0.0215963
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0004923   -0.0020245    0.0030090
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0156857   -0.0144261    0.0457975
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0136213   -0.0617946    0.0345521
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0162607   -0.0546313    0.0221099
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                    NA                 0.0405787   -0.0012506    0.0824080
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0479117   -0.0449267    0.1407501
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0702600   -0.0295696    0.1700896
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0085067   -0.0255337    0.0085204
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0004105   -0.0017082    0.0025292
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0025432   -0.0332228    0.0383092
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0075840   -0.0517469    0.0365790
6-24 months                  ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0821219   -0.1395551   -0.0246887
6-24 months                  ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0287156   -0.0847059    0.0272746
6-24 months                  ki0047075b-MAL-ED     PERU                           1                    NA                 0.0070134   -0.0454172    0.0594440
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0349034   -0.1599178    0.0901110
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0081301   -0.0950375    0.1112977
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0072063   -0.0160217    0.0304343
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0004027   -0.0037619    0.0045673


### Parameter: PAF


agecat                       studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0244145   -0.0373807    0.0825287
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.1461951   -0.5287275    0.1406165
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0982006   -0.1908062   -0.0127966
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0534834   -0.3032100    0.1483895
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0369864   -0.0358224    0.1046775
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0610129   -0.1461710    0.2307459
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0184449   -0.0879725    0.1144533
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0043169   -0.0257399    0.0334929
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0018730   -0.0077546    0.0114086
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0704115   -0.0744408    0.1957354
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.1191860   -0.6280671    0.2306353
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0729750   -0.2585908    0.0852663
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                    NA                 0.1115914   -0.0115103    0.2197115
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.1577093   -0.2105294    0.4139312
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2241052   -0.1690788    0.4850537
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0431005   -0.1329033    0.0395838
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0029895   -0.0125697    0.0183096
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0060553   -0.0828640    0.0876729
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0985915   -0.8488735    0.3472223
6-24 months                  ki0047075b-MAL-ED     INDIA                          1                    NA                -0.1916178   -0.3367910   -0.0622101
6-24 months                  ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.1316717   -0.4194607    0.0977695
6-24 months                  ki0047075b-MAL-ED     PERU                           1                    NA                 0.0175929   -0.1231788    0.1407212
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0899206   -0.4649965    0.1891265
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0103093   -0.1295766    0.1328718
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0129455   -0.0297534    0.0538738
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0018136   -0.0171068    0.0203821
