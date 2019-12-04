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

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** predfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        predfeed36    swasted   n_cell      n
----------  -------------------------  -----------------------------  -----------  --------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0       69    208
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        0    208
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      131    208
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        8    208
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0        7     62
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        0     62
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0       55     62
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        0     62
Birth       ki0047075b-MAL-ED          INDIA                          1                   0        4     40
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        0     40
Birth       ki0047075b-MAL-ED          INDIA                          0                   0       36     40
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        0     40
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0        1     25
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        0     25
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0       23     25
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        1     25
Birth       ki0047075b-MAL-ED          PERU                           1                   0       57    218
Birth       ki0047075b-MAL-ED          PERU                           1                   1        0    218
Birth       ki0047075b-MAL-ED          PERU                           0                   0      161    218
Birth       ki0047075b-MAL-ED          PERU                           0                   1        0    218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        2    104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0    104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      102    104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        0    104
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0    111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      111    111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0    111
Birth       ki1000109-EE               PAKISTAN                       1                   0        2      6
Birth       ki1000109-EE               PAKISTAN                       1                   1        0      6
Birth       ki1000109-EE               PAKISTAN                       0                   0        3      6
Birth       ki1000109-EE               PAKISTAN                       0                   1        1      6
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   0      378    491
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   1       18    491
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   0       92    491
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   1        3    491
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0     6603   8619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1      143   8619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1844   8619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1       29   8619
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1695   2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1       19   2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0      404   2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1       10   2128
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       80    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        1    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      158    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        1    240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       25    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      184    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0    209
6 months    ki0047075b-MAL-ED          INDIA                          1                   0       17    233
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        0    233
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      210    233
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        6    233
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        8    235
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0    235
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      227    235
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        0    235
6 months    ki0047075b-MAL-ED          PERU                           1                   0       72    272
6 months    ki0047075b-MAL-ED          PERU                           1                   1        0    272
6 months    ki0047075b-MAL-ED          PERU                           0                   0      200    272
6 months    ki0047075b-MAL-ED          PERU                           0                   1        0    272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3    250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0    250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      244    250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        3    250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        5    243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      238    243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0    243
6 months    ki1000109-EE               PAKISTAN                       1                   0        4      9
6 months    ki1000109-EE               PAKISTAN                       1                   1        0      9
6 months    ki1000109-EE               PAKISTAN                       0                   0        5      9
6 months    ki1000109-EE               PAKISTAN                       0                   1        0      9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0    168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0    168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      156    168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       12    168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      416    527
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1        6    527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      105    527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1        0    527
6 months    ki1148112-LCNI-5           MALAWI                         1                   0       47    272
6 months    ki1148112-LCNI-5           MALAWI                         1                   1        0    272
6 months    ki1148112-LCNI-5           MALAWI                         0                   0      225    272
6 months    ki1148112-LCNI-5           MALAWI                         0                   1        0    272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     6477   8535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1       99   8535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1936   8535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1       23   8535
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3233   4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1       19   4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      925   4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       11   4188
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       69    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      143    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1        0    212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       20    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      148    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        1    169
24 months   ki0047075b-MAL-ED          INDIA                          1                   0       17    224
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        0    224
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      205    224
24 months   ki0047075b-MAL-ED          INDIA                          0                   1        2    224
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        8    227
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      219    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        0    227
24 months   ki0047075b-MAL-ED          PERU                           1                   0       53    201
24 months   ki0047075b-MAL-ED          PERU                           1                   1        0    201
24 months   ki0047075b-MAL-ED          PERU                           0                   0      146    201
24 months   ki0047075b-MAL-ED          PERU                           0                   1        2    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3    235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0    235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      232    235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        0    235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        4    213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      209    213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0    213
24 months   ki1000109-EE               PAKISTAN                       1                   0        0      3
24 months   ki1000109-EE               PAKISTAN                       1                   1        0      3
24 months   ki1000109-EE               PAKISTAN                       0                   0        3      3
24 months   ki1000109-EE               PAKISTAN                       0                   1        0      3
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      355    445
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1        7    445
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       76    445
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1        7    445
24 months   ki1148112-LCNI-5           MALAWI                         1                   0       34    184
24 months   ki1148112-LCNI-5           MALAWI                         1                   1        0    184
24 months   ki1148112-LCNI-5           MALAWI                         0                   0      150    184
24 months   ki1148112-LCNI-5           MALAWI                         0                   1        0    184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     3173   4317
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      147   4317
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0      966   4317
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1       31   4317
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3068   4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1       76   4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      866   4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1       25   4035


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/2a84a955-41de-4dbd-976f-32367fd11cd0/fba5b97a-00a6-4a4c-97fc-bc05ca04ee67/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2a84a955-41de-4dbd-976f-32367fd11cd0/fba5b97a-00a6-4a4c-97fc-bc05ca04ee67/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2a84a955-41de-4dbd-976f-32367fd11cd0/fba5b97a-00a6-4a4c-97fc-bc05ca04ee67/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2a84a955-41de-4dbd-976f-32367fd11cd0/fba5b97a-00a6-4a4c-97fc-bc05ca04ee67/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0211977   0.0171829   0.0252126
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0154832   0.0079057   0.0230607
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0110852   0.0059611   0.0162093
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0241546   0.0028212   0.0454880
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0150547   0.0119797   0.0181298
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0117407   0.0053934   0.0180880
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0058426   0.0018938   0.0097913
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0117521   0.0057543   0.0177500
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0193370   0.0051354   0.0335386
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0843373   0.0244858   0.1441889
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0442771   0.0351649   0.0533893
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0310933   0.0204782   0.0417084
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0241730   0.0179757   0.0303704
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0280584   0.0167257   0.0393910


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0199559   0.0164404   0.0234714
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0136278   0.0077812   0.0194744
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0142941   0.0115468   0.0170414
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0071633   0.0038384   0.0104883
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0314607   0.0152239   0.0476974
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0412323   0.0338115   0.0486531
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0250310   0.0196459   0.0304161


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.7304166   0.4303111    1.239820
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 2.1789982   0.8026066    5.915766
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.7798660   0.4350878    1.397858
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 2.0114710   0.8565487    4.723626
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 4.3614457   1.5707064   12.110608
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.7022428   0.4711894    1.046596
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1607301   0.7157981    1.882227


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0012418   -0.0031229   0.0006392
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0025426   -0.0017515   0.0068368
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0007607   -0.0023990   0.0008776
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0013208   -0.0002962   0.0029377
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0121237    0.0004112   0.0238361
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0030448   -0.0062924   0.0002029
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0008580   -0.0020243   0.0037402


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0622289   -0.1612914    0.0283832
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1865771   -0.1496838    0.4244880
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0532151   -0.1757815    0.0565747
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1843788   -0.1154176    0.4035975
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.3853591   -0.0298156    0.6331543
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0738443   -0.1515175   -0.0014103
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0342756   -0.0885783    0.1432645
