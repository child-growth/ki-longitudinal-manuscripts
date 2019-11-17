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

**Outcome Variable:** whz

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

agecat      studyid                    country                        predfeed36    n_cell      n
----------  -------------------------  -----------------------------  -----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 69    208
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                139    208
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  7     62
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 55     62
Birth       ki0047075b-MAL-ED          INDIA                          1                  4     40
Birth       ki0047075b-MAL-ED          INDIA                          0                 36     40
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1     25
Birth       ki0047075b-MAL-ED          NEPAL                          0                 24     25
Birth       ki0047075b-MAL-ED          PERU                           1                 57    218
Birth       ki0047075b-MAL-ED          PERU                           0                161    218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  2    104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                102    104
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0    111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                111    111
Birth       ki1000109-EE               PAKISTAN                       1                  2      6
Birth       ki1000109-EE               PAKISTAN                       0                  4      6
Birth       ki1113344-GMS-Nepal        NEPAL                          1                396    491
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 95    491
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               6746   8619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1873   8619
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1714   2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                414   2128
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 81    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                159    240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 25    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                184    209
6 months    ki0047075b-MAL-ED          INDIA                          1                 17    233
6 months    ki0047075b-MAL-ED          INDIA                          0                216    233
6 months    ki0047075b-MAL-ED          NEPAL                          1                  8    235
6 months    ki0047075b-MAL-ED          NEPAL                          0                227    235
6 months    ki0047075b-MAL-ED          PERU                           1                 72    272
6 months    ki0047075b-MAL-ED          PERU                           0                200    272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                247    250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5    243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                238    243
6 months    ki1000109-EE               PAKISTAN                       1                  4      9
6 months    ki1000109-EE               PAKISTAN                       0                  5      9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168    168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                422    527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                105    527
6 months    ki1148112-LCNI-5           MALAWI                         1                 47    272
6 months    ki1148112-LCNI-5           MALAWI                         0                225    272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               6576   8535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1959   8535
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3252   4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                936   4188
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 69    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                143    212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 20    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                149    169
24 months   ki0047075b-MAL-ED          INDIA                          1                 17    224
24 months   ki0047075b-MAL-ED          INDIA                          0                207    224
24 months   ki0047075b-MAL-ED          NEPAL                          1                  8    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                219    227
24 months   ki0047075b-MAL-ED          PERU                           1                 53    201
24 months   ki0047075b-MAL-ED          PERU                           0                148    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                232    235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                209    213
24 months   ki1000109-EE               PAKISTAN                       1                  0      3
24 months   ki1000109-EE               PAKISTAN                       0                  3      3
24 months   ki1113344-GMS-Nepal        NEPAL                          1                362    445
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 83    445
24 months   ki1148112-LCNI-5           MALAWI                         1                 34    184
24 months   ki1148112-LCNI-5           MALAWI                         0                150    184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               3320   4317
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                997   4317
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3144   4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                891   4035


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

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




# Results Detail

## Results Plots
![](/tmp/490997e4-d23f-40fe-9f8b-bd9e8a54b2cb/7bfcf6ec-32e5-4c83-8c90-f7c303d0019a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/490997e4-d23f-40fe-9f8b-bd9e8a54b2cb/7bfcf6ec-32e5-4c83-8c90-f7c303d0019a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/490997e4-d23f-40fe-9f8b-bd9e8a54b2cb/7bfcf6ec-32e5-4c83-8c90-f7c303d0019a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.9078986   -1.1245741   -0.6912230
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.9680216   -1.1570918   -0.7789514
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.3457143   -1.2397629    0.5483343
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.4981818    0.1725808    0.8237829
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                 0.1215789   -0.1017661    0.3449240
Birth       ki0047075b-MAL-ED     PERU                           0                    NA                -0.1050932   -0.2518437    0.0416573
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.0968939   -1.2083862   -0.9854017
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.1572632   -1.3736690   -0.9408573
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.7988378   -0.8261061   -0.7715695
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.7546289   -0.8090159   -0.7002419
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.6869720   -0.7433958   -0.6305482
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.7636957   -0.9048310   -0.6225603
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.1466667   -0.3653903    0.0720569
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.1297484   -0.2898889    0.0303920
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 1.4003333    1.0140946    1.7865720
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.9138904    0.7365071    1.0912737
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.2200000   -0.6790968    0.2390968
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                -0.7552431   -0.8866180   -0.6238681
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.3168750   -0.9708901    0.3371401
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.1292144   -0.0046984    0.2631272
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                 1.3128009    1.0774717    1.5481302
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                 0.9569750    0.8166254    1.0973246
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.7950000    1.1425391    2.4474609
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5246709    0.3926689    0.6566728
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.5675000   -0.6681819   -0.4668181
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.7311587   -0.9180935   -0.5442240
6 months    ki1148112-LCNI-5      MALAWI                         1                    NA                 0.3642553    0.0371861    0.6913246
6 months    ki1148112-LCNI-5      MALAWI                         0                    NA                 0.3984000    0.2718569    0.5249431
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.5998304   -0.6292497   -0.5704112
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.5984788   -0.6483796   -0.5485780
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.3381565   -0.3836803   -0.2926327
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.5969765   -0.6805740   -0.5133790
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.9577536   -1.1461969   -0.7693103
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.7524825   -0.9075992   -0.5973658
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.4600000   -0.0859976    1.0059976
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.4629754    0.2412667    0.6846841
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.7323529   -1.0900747   -0.3746311
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                -0.9766667   -1.0990002   -0.8543331
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.5987500   -1.1044659   -0.0930341
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.3643379   -0.4810145   -0.2476613
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0470283   -0.1403362    0.2343928
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                 0.1341779   -0.0186875    0.2870434
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.0653085   -1.1638986   -0.9667184
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.3779719   -1.6245718   -1.1313720
24 months   ki1148112-LCNI-5      MALAWI                         1                    NA                -0.1641176   -0.4633222    0.1350870
24 months   ki1148112-LCNI-5      MALAWI                         0                    NA                -0.0573333   -0.2194120    0.1047453
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.3486596   -1.3874081   -1.3099112
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.2904814   -1.3592456   -1.2217173
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.2254071   -1.2657895   -1.1850248
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -1.2661728   -1.3454786   -1.1868671


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.9480769   -1.0934921   -0.8026617
Birth       ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0458257   -0.1696487    0.0779973
Birth       ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.1085743   -1.2077878   -1.0093609
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -0.7892308   -0.8133344   -0.7651272
Birth       kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.7018985   -0.7560164   -0.6477806
6 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.1354583   -0.2647102   -0.0062065
6 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.7161910   -0.8437667   -0.5886153
6 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                 0.1140284   -0.0176364    0.2456931
6 months    ki0047075b-MAL-ED     PERU                           NA                   NA                 1.0511642    0.9291821    1.1731463
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5508093    0.4191033    0.6825154
6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.6001075   -0.6890924   -0.5111227
6 months    ki1148112-LCNI-5      MALAWI                         NA                   NA                 0.3925000    0.2735307    0.5114693
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -0.5995202   -0.6251579   -0.5738825
6 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.3960017   -0.4356255   -0.3563778
24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.9581250   -1.0746982   -0.8415518
24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.3725991   -0.4867052   -0.2584930
24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.1236255   -1.2167712   -1.0304797
24 months   ki1148112-LCNI-5      MALAWI                         NA                   NA                -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -1.3352235   -1.3688736   -1.3015735
24 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.2344089   -1.2708428   -1.1979750


### Parameter: ATE


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0601230   -0.3476919    0.2274458
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.8438961   -0.1075969    1.7953891
Birth       ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU                           0                    1                 -0.2266721   -0.4939149    0.0405707
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0603692   -0.3038071    0.1830687
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0442089   -0.0172776    0.1056954
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.0767237   -0.2262212    0.0727739
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0169182   -0.2541629    0.2879994
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.4864429   -0.9114667   -0.0614192
6 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA                          0                    1                 -0.5352431   -1.0127671   -0.0577190
6 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL                          0                    1                  0.4460894   -0.2214946    1.1136734
6 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU                           0                    1                 -0.3558259   -0.6298293   -0.0818225
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -1.2703291   -1.9360090   -0.6046493
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.1636587   -0.3759826    0.0486652
6 months    ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI                         0                    1                  0.0341447   -0.3165510    0.3848404
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0013516   -0.0559744    0.0586776
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.2588200   -0.3547796   -0.1628604
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.2052711   -0.0388028    0.4493450
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0029754   -0.5863192    0.5922699
24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA                          0                    1                 -0.2443137   -0.6223751    0.1337476
24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.2344121   -0.2845889    0.7534131
24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0871496   -0.1546629    0.3289622
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.3126634   -0.5782411   -0.0470857
24 months   ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI                         0                    1                  0.1067843   -0.2334992    0.4470678
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0581782   -0.0209345    0.1372908
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.0407657   -0.1287934    0.0472619


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0401784   -0.2323905    0.1520337
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.7486175   -0.0981055    1.5953405
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                -0.1674046   -0.3652165    0.0304072
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0116804   -0.0588287    0.0354679
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0096071   -0.0037945    0.0230086
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0149265   -0.0439272    0.0140742
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0112083   -0.1683858    0.1908024
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.4282560   -0.8030540   -0.0534580
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.4961910   -0.9392365   -0.0531455
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.4309034   -0.2140376    1.0758444
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                -0.2616367   -0.4639749   -0.0592985
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2441907   -1.8936261   -0.5947552
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0326075   -0.0752784    0.0100634
6 months    ki1148112-LCNI-5      MALAWI                         1                    NA                 0.0282447   -0.2618569    0.3183463
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0003102   -0.0128482    0.0134687
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0578452   -0.0799104   -0.0357800
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.1384612   -0.0266843    0.3036066
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0026233   -0.5169323    0.5221788
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.2257721   -0.5752445    0.1237003
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.2261509   -0.2745910    0.7268928
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0641699   -0.1139607    0.2423004
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0583170   -0.1091306   -0.0075034
24 months   ki1148112-LCNI-5      MALAWI                         1                    NA                 0.0870524   -0.1904176    0.3645225
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0134361   -0.0048238    0.0316960
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0090018   -0.0284720    0.0104684
