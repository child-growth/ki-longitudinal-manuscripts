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

**Outcome Variable:** haz

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

agecat      studyid               country                        predfeed3    n_cell       n
----------  --------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1               205     240
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                35     240
Birth       ki0047075b-MAL-ED     BRAZIL                         1               101     185
Birth       ki0047075b-MAL-ED     BRAZIL                         0                84     185
Birth       ki0047075b-MAL-ED     INDIA                          1               152     196
Birth       ki0047075b-MAL-ED     INDIA                          0                44     196
Birth       ki0047075b-MAL-ED     NEPAL                          1                99     171
Birth       ki0047075b-MAL-ED     NEPAL                          0                72     171
Birth       ki0047075b-MAL-ED     PERU                           1               183     272
Birth       ki0047075b-MAL-ED     PERU                           0                89     272
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                87     233
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0               146     233
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                50     119
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                69     119
Birth       ki1000109-EE          PAKISTAN                       1                 2       2
Birth       ki1000109-EE          PAKISTAN                       0                 0       2
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1             16832   18710
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0              1878   18710
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                37      40
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                 3      40
6 months    ki0047075b-MAL-ED     BANGLADESH                     1               203     237
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                34     237
6 months    ki0047075b-MAL-ED     BRAZIL                         1               116     209
6 months    ki0047075b-MAL-ED     BRAZIL                         0                93     209
6 months    ki0047075b-MAL-ED     INDIA                          1               178     233
6 months    ki0047075b-MAL-ED     INDIA                          0                55     233
6 months    ki0047075b-MAL-ED     NEPAL                          1               132     233
6 months    ki0047075b-MAL-ED     NEPAL                          0               101     233
6 months    ki0047075b-MAL-ED     PERU                           1               183     270
6 months    ki0047075b-MAL-ED     PERU                           0                87     270
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                86     248
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0               162     248
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                91     240
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               149     240
6 months    ki1000109-EE          PAKISTAN                       1               346     371
6 months    ki1000109-EE          PAKISTAN                       0                25     371
6 months    ki1113344-GMS-Nepal   NEPAL                          1               379     458
6 months    ki1113344-GMS-Nepal   NEPAL                          0                79     458
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1             14797   16281
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0              1484   16281
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                77      89
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                12      89
24 months   ki0047075b-MAL-ED     BANGLADESH                     1               178     208
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                30     208
24 months   ki0047075b-MAL-ED     BRAZIL                         1                98     169
24 months   ki0047075b-MAL-ED     BRAZIL                         0                71     169
24 months   ki0047075b-MAL-ED     INDIA                          1               170     225
24 months   ki0047075b-MAL-ED     INDIA                          0                55     225
24 months   ki0047075b-MAL-ED     NEPAL                          1               128     225
24 months   ki0047075b-MAL-ED     NEPAL                          0                97     225
24 months   ki0047075b-MAL-ED     PERU                           1               137     199
24 months   ki0047075b-MAL-ED     PERU                           0                62     199
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                81     232
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               151     232
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                79     210
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               131     210
24 months   ki1113344-GMS-Nepal   NEPAL                          1               336     404
24 months   ki1113344-GMS-Nepal   NEPAL                          0                68     404
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1              7520    8341
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0               821    8341
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1               137     152
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                15     152


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/2173c5d3-3ea4-4048-911c-9677a7c86c81/b8ce7012-303e-4915-bc00-c7d1bb51fe81/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2173c5d3-3ea4-4048-911c-9677a7c86c81/b8ce7012-303e-4915-bc00-c7d1bb51fe81/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2173c5d3-3ea4-4048-911c-9677a7c86c81/b8ce7012-303e-4915-bc00-c7d1bb51fe81/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -1.0574634   -1.1988504   -0.9160764
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -1.0042857   -1.3026870   -0.7058844
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.6669307   -0.8776456   -0.4562158
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    NA                -0.8170238   -1.0585025   -0.5755451
Birth       ki0047075b-MAL-ED     INDIA                          1                    NA                -1.0057895   -1.1646774   -0.8469015
Birth       ki0047075b-MAL-ED     INDIA                          0                    NA                -1.0238636   -1.3392137   -0.7085136
Birth       ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.6161616   -0.8193899   -0.4129333
Birth       ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.8456944   -1.0917250   -0.5996639
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                -0.9721858   -1.1131838   -0.8311878
Birth       ki0047075b-MAL-ED     PERU                           0                    NA                -0.8314607   -1.0162269   -0.6466945
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.6357471   -0.8459388   -0.4255554
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.7556164   -0.9169358   -0.5942970
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.8388000   -1.1058572   -0.5717428
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.9798551   -1.3031755   -0.6565346
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.5213124   -1.5411358   -1.5014889
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.7647710   -1.8296846   -1.6998575
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -1.1753530   -1.2995263   -1.0511798
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -1.3539216   -1.7214291   -0.9864140
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0598851   -0.2497564    0.1299863
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.1893548   -0.0280498    0.4067595
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -1.2310300   -1.3630436   -1.0990163
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                -1.1459697   -1.4136312   -0.8783082
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.5766667   -0.7245557   -0.4287777
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.5285149   -0.7009199   -0.3561098
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                -1.3145082   -1.4426465   -1.1863699
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                -1.3405939   -1.5387642   -1.1424236
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -1.0777519   -1.2910404   -0.8644635
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -1.0567541   -1.2199042   -0.8936040
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2603663   -1.4521023   -1.0686303
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.4073937   -1.5704056   -1.2443818
6 months    ki1000109-EE          PAKISTAN                       1                    NA                -2.2085405   -2.3358767   -2.0812042
6 months    ki1000109-EE          PAKISTAN                       0                    NA                -2.1658000   -2.6320343   -1.6995657
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.2945646   -1.3876531   -1.2014762
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.4624895   -1.6925949   -1.2323840
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.2853491   -1.3087039   -1.2619942
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.5122170   -1.5900152   -1.4344187
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.1459740   -1.3308960   -0.9610521
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -1.7983333   -2.4033116   -1.1933551
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -1.9474438   -2.0897089   -1.8051788
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -1.8900000   -2.1491988   -1.6308012
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.1112755   -0.3201955    0.0976445
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.2531690   -0.0134314    0.5197695
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -1.9752353   -2.1146708   -1.8357998
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                -1.4357273   -1.6988331   -1.1726215
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -1.3239844   -1.4764644   -1.1715044
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -1.1973196   -1.3895220   -1.0051172
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -1.7570803   -1.9036464   -1.6105142
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                -1.7151613   -1.9283419   -1.5019807
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -1.6967901   -1.8959053   -1.4976750
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -1.5656623   -1.7469572   -1.3843673
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.5339873   -2.7566192   -2.3113555
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6654198   -2.8378134   -2.4930263
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.8727976   -1.9717463   -1.7738489
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.9084804   -2.1468994   -1.6700614
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -2.0054734   -2.0344836   -1.9764632
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -2.0634470   -2.1550593   -1.9718347
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.7186131   -1.8623416   -1.5748846
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -2.2100000   -2.5176955   -1.9023045


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -1.0497083   -1.1780996   -0.9213171
Birth       ki0047075b-MAL-ED     BRAZIL                         NA                   NA                -0.7350811   -0.8943683   -0.5757938
Birth       ki0047075b-MAL-ED     INDIA                          NA                   NA                -1.0098469   -1.1519586   -0.8677353
Birth       ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.7128070   -0.8704934   -0.5551207
Birth       ki0047075b-MAL-ED     PERU                           NA                   NA                -0.9261397   -1.0389037   -0.8133757
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.7108584   -0.8390511   -0.5826657
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.9205882   -1.1394357   -0.7017408
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -1.5457493   -1.5650991   -1.5263996
6 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -1.2009705   -1.3199485   -1.0819924
6 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                -1.2109514   -1.3300505   -1.0918522
6 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.5557940   -0.6681063   -0.4434817
6 months    ki0047075b-MAL-ED     PERU                           NA                   NA                -1.3229136   -1.4307207   -1.2151065
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -1.0640356   -1.1937663   -0.9343049
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3516458   -1.4765824   -1.2267092
6 months    ki1000109-EE          PAKISTAN                       NA                   NA                -2.2056604   -2.3285064   -2.0828144
6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.3235298   -1.4103807   -1.2366790
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -1.3060279   -1.3292905   -1.2827653
6 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.2339326   -1.4137041   -1.0541611
24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -1.9391587   -2.0665449   -1.8117724
24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                -1.8433556   -1.9704665   -1.7162446
24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -1.2693778   -1.3896188   -1.1491367
24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                -1.7440201   -1.8648503   -1.6231899
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -1.6114440   -1.7486349   -1.4742530
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6159762   -2.7525555   -2.4793968
24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.8788036   -1.9703700   -1.7872372
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -2.0111797   -2.0396837   -1.9826758
24 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.7671053   -1.9017670   -1.6324435


### Parameter: ATE


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0531777   -0.2770247    0.3833801
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.1500931   -0.4705813    0.1703951
Birth       ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0180742   -0.3711904    0.3350420
Birth       ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.2295328   -0.5486453    0.0895796
Birth       ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU                           0                    1                  0.1407251   -0.0916947    0.3731450
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.1198693   -0.3848306    0.1450920
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1410551   -0.5604066    0.2782964
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.2434587   -0.3100936   -0.1768237
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.1785685   -0.5664871    0.2093500
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.2492399   -0.0394051    0.5378848
6 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA                          0                    1                  0.0850603   -0.2133862    0.3835067
6 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0481518   -0.1789927    0.2752964
6 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU                           0                    1                 -0.0260857   -0.2620748    0.2099035
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0209978   -0.2475351    0.2895307
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1470274   -0.3986930    0.1046382
6 months    ki1000109-EE          PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE          PAKISTAN                       0                    1                  0.0427405   -0.4405699    0.5260508
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.1679248   -0.4161465    0.0802969
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.2268679   -0.3047857   -0.1489502
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.6523593   -1.2845608   -0.0201578
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0574438   -0.2382306    0.3531182
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.3644445    0.0257361    0.7031529
24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.5395080    0.2417381    0.8372780
24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.1266648   -0.1186756    0.3720052
24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0419190   -0.2167847    0.3006227
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.1311279   -0.1381577    0.4004134
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1314325   -0.4130075    0.1501425
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0356828   -0.2938193    0.2224538
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0579736   -0.1511462    0.0351990
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.4913869   -0.8299679   -0.1528058


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0077551   -0.0404582    0.0559684
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0681504   -0.2140694    0.0777686
Birth       ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0040575   -0.0833355    0.0752206
Birth       ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0966454   -0.2320842    0.0387934
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                 0.0460461   -0.0304083    0.1225005
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0751112   -0.2413061    0.0910836
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0817882   -0.3252659    0.1616894
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0244370   -0.0311157   -0.0177582
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0256174   -0.0818383    0.0306034
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.1109058   -0.0186326    0.2404442
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0200786   -0.0505233    0.0906805
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0208727   -0.0776370    0.1193823
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                -0.0084054   -0.0844603    0.0676495
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0137163   -0.1617007    0.1891334
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0912795   -0.2477834    0.0652244
6 months    ki1000109-EE          PAKISTAN                       1                    NA                 0.0028801   -0.0297063    0.0354665
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0289652   -0.0721740    0.0142436
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0206788   -0.0277834   -0.0135743
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0879586   -0.1745577   -0.0013594
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0082852   -0.0344487    0.0510190
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.1531098    0.0082358    0.2979839
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.1318797    0.0530125    0.2107470
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0546066   -0.0514809    0.1606941
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0130602   -0.0675863    0.0937067
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0853462   -0.0901069    0.2607992
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0819888   -0.2578500    0.0938723
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0060060   -0.0494743    0.0374623
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0057063   -0.0148576    0.0034450
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0484921   -0.0855697   -0.0114146
