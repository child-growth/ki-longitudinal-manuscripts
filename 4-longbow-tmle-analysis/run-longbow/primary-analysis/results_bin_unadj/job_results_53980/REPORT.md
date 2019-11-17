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

unadjusted

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
![](/tmp/da35d598-ef05-4b97-ad5a-daea15cb2e9a/28cde10a-73e1-44f4-b0bf-0eef13b31007/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/da35d598-ef05-4b97-ad5a-daea15cb2e9a/28cde10a-73e1-44f4-b0bf-0eef13b31007/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/da35d598-ef05-4b97-ad5a-daea15cb2e9a/28cde10a-73e1-44f4-b0bf-0eef13b31007/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/da35d598-ef05-4b97-ad5a-daea15cb2e9a/28cde10a-73e1-44f4-b0bf-0eef13b31007/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.5243902   0.4477677   0.6010128
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.5789474   0.4215775   0.7363173
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.1976744   0.1132644   0.2820844
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.1573034   0.0814452   0.2331615
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                    NA                0.6220472   0.5374882   0.7066063
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          0                    NA                0.3859649   0.2592393   0.5126906
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.2666667   0.1818714   0.3514619
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.2500000   0.1631647   0.3368353
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                    NA                0.5722892   0.4968778   0.6477005
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           0                    NA                0.6436782   0.5428448   0.7445115
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.5303030   0.4096425   0.6509636
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.5614035   0.4868723   0.6359347
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8214286   0.7208462   0.9220110
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8449612   0.7823332   0.9075893
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.6340694   0.5809738   0.6871650
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.6507937   0.5329211   0.7686662
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.2631008   0.2522498   0.2739518
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.2599356   0.2311562   0.2887149
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.2073171   0.1451198   0.2695143
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.2894737   0.1449202   0.4340272
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.1279070   0.0571170   0.1986970
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.1011236   0.0383071   0.1639401
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          1                    NA                0.2440945   0.1691840   0.3190049
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          0                    NA                0.1754386   0.0764311   0.2744461
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                    NA                0.3253012   0.2538924   0.3967100
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           0                    NA                0.4367816   0.3323531   0.5412101
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.2575758   0.1518519   0.3632996
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.3216374   0.2514786   0.3917963
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2500000   0.1362814   0.3637186
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3410853   0.2590546   0.4231159
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.2050473   0.1605444   0.2495502
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1587302   0.0683762   0.2490842
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.1369655   0.1290094   0.1449216
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1407089   0.1168674   0.1645504
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.4160000   0.3293041   0.5026959
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.4400000   0.2447680   0.6352320
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.0845070   0.0195813   0.1494328
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.0694444   0.0105200   0.1283689
6-24 months                  ki0047075b-MAL-ED     INDIA                          1                    NA                0.5106383   0.4092209   0.6120557
6-24 months                  ki0047075b-MAL-ED     INDIA                          0                    NA                0.2608696   0.1335198   0.3882193
6-24 months                  ki0047075b-MAL-ED     NEPAL                          1                    NA                0.2400000   0.1560697   0.3239303
6-24 months                  ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1931818   0.1104760   0.2758876
6-24 months                  ki0047075b-MAL-ED     PERU                           1                    NA                0.3942308   0.2999914   0.4884702
6-24 months                  ki0047075b-MAL-ED     PERU                           0                    NA                0.4090909   0.2633222   0.5548596
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.4090909   0.2633353   0.5548465
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.3796296   0.2878016   0.4714576
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7804878   0.6532720   0.9077036
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7926829   0.7045819   0.8807840
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.5483871   0.4863468   0.6104274
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.5961538   0.4625686   0.7297391
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.2214232   0.2084085   0.2344378
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.2290389   0.1794703   0.2786074


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
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     0                    1                 1.1040392   0.8108849   1.5031758
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         0                    1                 0.7957700   0.4178758   1.5154023
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          0                    1                 0.6204752   0.4349031   0.8852305
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          0                    1                 0.9375000   0.5854053   1.5013638
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           0                    1                 1.1247429   0.9165406   1.3802407
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 1.0586466   0.8134761   1.3777081
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0286485   0.8914661   1.1869410
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          0                    1                 1.0263761   0.8407108   1.2530443
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 0.9879695   0.8795281   1.1097811
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     0                    1                 1.3962848   0.7797808   2.5002042
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         0                    1                 0.7906027   0.3440627   1.8166824
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          0                    1                 0.7187323   0.3780774   1.3663237
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           0                    1                 1.3426990   0.9705483   1.8575487
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 1.2487100   0.7845012   1.9876026
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.3643411   0.8155703   2.2823620
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          0                    1                 0.7741148   0.4209513   1.4235700
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.0273312   0.8590509   1.2285761
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     0                    1                 1.0576923   0.6478316   1.7268578
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         0                    1                 0.8217593   0.2615933   2.5814437
6-24 months                  ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     INDIA                          0                    1                 0.5108696   0.3015951   0.8653579
6-24 months                  ki0047075b-MAL-ED     NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     NEPAL                          0                    1                 0.8049242   0.4631028   1.3990480
6-24 months                  ki0047075b-MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     PERU                           0                    1                 1.0376940   0.6756508   1.5937357
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 0.9279835   0.6032735   1.4274677
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0156250   0.8337865   1.2371202
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          0                    1                 1.0871041   0.8457759   1.3972912
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.0343943   0.8273577   1.2932394


### Parameter: PAR


agecat                       studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0102632   -0.0227953    0.0433218
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0205316   -0.0783261    0.0372630
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0731342   -0.1229084   -0.0233600
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0079602   -0.0659393    0.0500189
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0245488   -0.0189515    0.0680491
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0224396   -0.0799041    0.1247833
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0164093   -0.0662259    0.0990445
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0027727   -0.0186696    0.0242150
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0002904   -0.0030675    0.0024867
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0154552   -0.0144793    0.0453897
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0136213   -0.0617946    0.0345521
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0212684   -0.0600030    0.0174662
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                    NA                 0.0383352   -0.0056565    0.0823268
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0462217   -0.0454015    0.1378449
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0635135   -0.0344466    0.1614736
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0076789   -0.0244669    0.0091091
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0003435   -0.0019610    0.0026480
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0040000   -0.0316316    0.0396316
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0075840   -0.0517469    0.0365790
6-24 months                  ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0820669   -0.1390023   -0.0251314
6-24 months                  ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0219149   -0.0771721    0.0333424
6-24 months                  ki0047075b-MAL-ED     PERU                           1                    NA                 0.0044179   -0.0471983    0.0560340
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0209330   -0.1433542    0.1014882
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0081301   -0.0950375    0.1112977
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0082796   -0.0173326    0.0338918
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0006451   -0.0036922    0.0049824


### Parameter: PAF


agecat                       studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0191960   -0.0446924    0.0791774
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.1159040   -0.4933958    0.1661677
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.1332346   -0.2308078   -0.0433965
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0307692   -0.2810695    0.1706264
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0411314   -0.0348316    0.1115182
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0405968   -0.1637306    0.2090485
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0195853   -0.0842548    0.1134804
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0043538   -0.0298958    0.0374645
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0011049   -0.0117252    0.0094039
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0693767   -0.0745365    0.1940155
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.1191860   -0.6280671    0.2306353
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0954484   -0.2829963    0.0646838
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                    NA                 0.1054217   -0.0241483    0.2185992
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.1521465   -0.2095239    0.4056706
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2025862   -0.1787267    0.4605460
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0389064   -0.1273497    0.0425983
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0025019   -0.0144276    0.0191488
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0095238   -0.0790616    0.0908368
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0985915   -0.8488735    0.3472223
6-24 months                  ki0047075b-MAL-ED     INDIA                          1                    NA                -0.1914894   -0.3364455   -0.0622558
6-24 months                  ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.1004878   -0.3846904    0.1253832
6-24 months                  ki0047075b-MAL-ED     PERU                           1                    NA                 0.0110821   -0.1272609    0.1324470
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0539291   -0.4216756    0.2186919
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0103093   -0.1295766    0.1328718
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0148735   -0.0322658    0.0598601
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0029049   -0.0168034    0.0222311
