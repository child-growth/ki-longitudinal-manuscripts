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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        exclfeed36    n_cell      n
----------  -------------------------  -----------------------------  -----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 31    208
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                177    208
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  4     62
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 58     62
Birth       ki0047075b-MAL-ED          INDIA                          1                  1     40
Birth       ki0047075b-MAL-ED          INDIA                          0                 39     40
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0     25
Birth       ki0047075b-MAL-ED          NEPAL                          0                 25     25
Birth       ki0047075b-MAL-ED          PERU                           1                  5    218
Birth       ki0047075b-MAL-ED          PERU                           0                213    218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                103    104
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0    111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                111    111
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  3      3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      3
Birth       ki1000108-IRC              INDIA                          1                  0      3
Birth       ki1000108-IRC              INDIA                          0                  3      3
Birth       ki1000109-EE               PAKISTAN                       1                  2      6
Birth       ki1000109-EE               PAKISTAN                       0                  4      6
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                115    483
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                368    483
Birth       ki1101329-Keneba           GAMBIA                         1                343   1192
Birth       ki1101329-Keneba           GAMBIA                         0                849   1192
Birth       ki1113344-GMS-Nepal        NEPAL                          1                396    491
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 95    491
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               6736   8619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1883   8619
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1711   2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                417   2128
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 30    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                210    240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 12    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                197    209
6 months    ki0047075b-MAL-ED          INDIA                          1                  9    233
6 months    ki0047075b-MAL-ED          INDIA                          0                224    233
6 months    ki0047075b-MAL-ED          NEPAL                          1                  4    235
6 months    ki0047075b-MAL-ED          NEPAL                          0                231    235
6 months    ki0047075b-MAL-ED          PERU                           1                  6    272
6 months    ki0047075b-MAL-ED          PERU                           0                266    272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                249    250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                239    243
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  9      9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      9
6 months    ki1000108-IRC              INDIA                          1                  0      4
6 months    ki1000108-IRC              INDIA                          0                  4      4
6 months    ki1000109-EE               PAKISTAN                       1                  4      9
6 months    ki1000109-EE               PAKISTAN                       0                  5      9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168    168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                145    603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                458    603
6 months    ki1101329-Keneba           GAMBIA                         1                507   1790
6 months    ki1101329-Keneba           GAMBIA                         0               1283   1790
6 months    ki1113344-GMS-Nepal        NEPAL                          1                422    527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                105    527
6 months    ki1148112-LCNI-5           MALAWI                         1                 47    272
6 months    ki1148112-LCNI-5           MALAWI                         0                225    272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               6561   8535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1974   8535
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3240   4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                948   4188
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 25    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                187    212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 11    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                158    169
24 months   ki0047075b-MAL-ED          INDIA                          1                  9    224
24 months   ki0047075b-MAL-ED          INDIA                          0                215    224
24 months   ki0047075b-MAL-ED          NEPAL                          1                  4    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                223    227
24 months   ki0047075b-MAL-ED          PERU                           1                  4    201
24 months   ki0047075b-MAL-ED          PERU                           0                197    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                234    235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                210    213
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  9      9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      9
24 months   ki1000108-IRC              INDIA                          1                  0      4
24 months   ki1000108-IRC              INDIA                          0                  4      4
24 months   ki1000109-EE               PAKISTAN                       1                  0      3
24 months   ki1000109-EE               PAKISTAN                       0                  3      3
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                141    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                436    577
24 months   ki1101329-Keneba           GAMBIA                         1                424   1395
24 months   ki1101329-Keneba           GAMBIA                         0                971   1395
24 months   ki1113344-GMS-Nepal        NEPAL                          1                362    445
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 83    445
24 months   ki1148112-LCNI-5           MALAWI                         1                 34    184
24 months   ki1148112-LCNI-5           MALAWI                         0                150    184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               3311   4317
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1006   4317
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3132   4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                903   4035


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/92a6cf98-c030-4061-8949-29a81eb77261/dad12500-9f9f-4e46-a22a-230ff08e6b8b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/92a6cf98-c030-4061-8949-29a81eb77261/dad12500-9f9f-4e46-a22a-230ff08e6b8b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/92a6cf98-c030-4061-8949-29a81eb77261/dad12500-9f9f-4e46-a22a-230ff08e6b8b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.8654839   -1.1841240   -0.5468437
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.9625424   -1.1239614   -0.8011234
Birth       ki0047075b-MAL-ED     PERU         1                    NA                 0.6820000    0.4886003    0.8753997
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.0629108   -0.1888962    0.0630746
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                -1.3221739   -1.5016955   -1.1426523
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    NA                -1.2887228   -1.3786138   -1.1988319
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -1.2469679   -1.3782137   -1.1157222
Birth       ki1101329-Keneba      GAMBIA       0                    NA                -1.2866961   -1.3677885   -1.2056037
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.0968939   -1.2083862   -0.9854017
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.1572632   -1.3736690   -0.9408573
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.7989757   -0.8263636   -0.7715877
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.7543707   -0.8087407   -0.7000007
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.6866920   -0.7433051   -0.6300789
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.7642926   -0.9045826   -0.6240025
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1904444   -0.4869579    0.1060690
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.1276032   -0.2690838    0.0138775
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 1.3456944    0.7198576    1.9715313
6 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.9493190    0.7797915    1.1188464
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.4850000   -1.2185777    0.2485777
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.7254799   -0.8547181   -0.5962418
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 1.2841667    0.5956438    1.9726896
6 months    ki0047075b-MAL-ED     PERU         0                    NA                 1.0459085    0.9221243    1.1696927
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0121034   -0.1488055    0.1730124
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.2659534   -0.3613775   -0.1705293
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0156545   -0.0913464    0.1226554
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.2865396   -0.3504625   -0.2226166
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.5675000   -0.6681819   -0.4668181
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.7311587   -0.9180935   -0.5442240
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.3642553    0.0371861    0.6913246
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                 0.3984000    0.2718569    0.5249431
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.6002660   -0.6297120   -0.5708199
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.5970415   -0.6465451   -0.5475380
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.3391867   -0.3848399   -0.2935336
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.5901793   -0.6726722   -0.5076865
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.9258000   -1.2234413   -0.6281587
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.8050535   -0.9373515   -0.6727555
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.3995455   -0.3492812    1.1483721
24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.4670148    0.2530851    0.6809444
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -1.0300000   -1.4230980   -0.6369020
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.9551163   -1.0754326   -0.8348000
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.8007801   -0.9646126   -0.6369477
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.9248853   -1.0207053   -0.8290654
24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.7284870   -0.8231145   -0.6338596
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.8274852   -0.8904467   -0.7645238
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.0653085   -1.1638986   -0.9667184
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.3779719   -1.6245718   -1.1313720
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1641176   -0.4633222    0.1350870
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0573333   -0.2194120    0.1047453
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.3479946   -1.3868366   -1.3091525
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.2931909   -1.3612577   -1.2251240
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.2262676   -1.2667777   -1.1857574
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.2626467   -1.3409079   -1.1843855


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.9480769   -1.0934921   -0.8026617
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                -0.0458257   -0.1696487    0.0779973
Birth       ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -1.2966874   -1.3774293   -1.2159454
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                -1.2752643   -1.3442810   -1.2062476
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.1085743   -1.2077878   -1.0093609
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.7892308   -0.8133344   -0.7651272
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.7018985   -0.7560164   -0.6477806
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.1354583   -0.2647102   -0.0062065
6 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -0.7161910   -0.8437667   -0.5886153
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                 1.0511642    0.9291821    1.1731463
6 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                -0.2009461   -0.2562412   -0.1456509
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.6001075   -0.6890924   -0.5111227
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                 0.3925000    0.2735307    0.5114693
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.5995202   -0.6251579   -0.5738825
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.3960017   -0.4356255   -0.3563778
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -0.9581250   -1.0746982   -0.8415518
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.8945581   -0.9774087   -0.8117074
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                -0.7973955   -0.8498696   -0.7449213
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.1236255   -1.2167712   -1.0304797
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.3352235   -1.3688736   -1.3015735
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.2344089   -1.2708428   -1.1979750


### Parameter: ATE


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0970585   -0.4542526    0.2601356
Birth       ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                 -0.7449108   -0.9757262   -0.5140954
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.0334511   -0.1673184    0.2342206
Birth       ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 -0.0397282   -0.1940053    0.1145489
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0603692   -0.3038071    0.1830687
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0446050   -0.0171091    0.1063190
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0776006   -0.2265492    0.0713480
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0628413   -0.2656964    0.3913790
6 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.3963755   -1.0447668    0.2520158
6 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                 -0.2404799   -0.9853549    0.5043950
6 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                 -0.2382581   -0.9378196    0.4613034
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    1                 -0.2780569   -0.4651329   -0.0909809
6 months    ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 -0.3021941   -0.4268349   -0.1775533
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.1636587   -0.3759826    0.0486652
6 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                  0.0341447   -0.3165510    0.3848404
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0032244   -0.0537037    0.0601525
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.2509926   -0.3459931   -0.1559921
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.1207465   -0.2049728    0.4464659
24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0674693   -0.7113165    0.8462551
24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.0748837   -0.3362149    0.4859823
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 -0.1241052   -0.3139012    0.0656908
24 months   ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 -0.0989982   -0.2126578    0.0146614
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.3126634   -0.5782411   -0.0470857
24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.1067843   -0.2334992    0.4470678
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0548037   -0.0237151    0.1333225
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0363792   -0.1234927    0.0507344


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0825931   -0.3865880    0.2214019
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.7278257   -0.9533592   -0.5022921
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0254865   -0.1274860    0.1784591
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -0.0282963   -0.1381847    0.0815920
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0116804   -0.0588287    0.0354679
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0097449   -0.0037801    0.0232699
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0152065   -0.0443165    0.0139035
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0549861   -0.2324965    0.3424687
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.3736171   -0.9849087    0.2376745
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.2311910   -0.9473188    0.4849368
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.2330025   -0.9150876    0.4490827
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.2111941   -0.3536017   -0.0687865
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.2166006   -0.3061606   -0.1270405
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0326075   -0.0752784    0.0100634
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.0282447   -0.2618569    0.3183463
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0007458   -0.0124224    0.0139139
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0568149   -0.0789231   -0.0347068
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1065075   -0.1808495    0.3938646
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0630778   -0.6650221    0.7911777
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0718750   -0.3227110    0.4664610
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0937779   -0.2372601    0.0497042
24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0689084   -0.1480581    0.0102413
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0583170   -0.1091306   -0.0075034
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0870524   -0.1904176    0.3645225
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0127710   -0.0055113    0.0310534
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0081414   -0.0276668    0.0113841
