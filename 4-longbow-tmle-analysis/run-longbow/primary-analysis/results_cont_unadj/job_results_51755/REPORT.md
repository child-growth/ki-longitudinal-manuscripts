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

**Intervention Variable:** predfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        predfeed36    n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                125     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                118     243
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 29     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                156     185
Birth       ki0047075b-MAL-ED          INDIA                          1                 16     198
Birth       ki0047075b-MAL-ED          INDIA                          0                182     198
Birth       ki0047075b-MAL-ED          NEPAL                          1                 26     172
Birth       ki0047075b-MAL-ED          NEPAL                          0                146     172
Birth       ki0047075b-MAL-ED          PERU                           1                118     273
Birth       ki0047075b-MAL-ED          PERU                           0                155     273
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                233     236
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                120     121
Birth       ki1000109-EE               PAKISTAN                       1                  1       2
Birth       ki1000109-EE               PAKISTAN                       0                  1       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              11176   13946
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2770   13946
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                582     727
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                145     727
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                129     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                111     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 37     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                172     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 19     236
6 months    ki0047075b-MAL-ED          INDIA                          0                217     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 32     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                204     236
6 months    ki0047075b-MAL-ED          PERU                           1                126     271
6 months    ki0047075b-MAL-ED          PERU                           0                145     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                251     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                245     247
6 months    ki1000109-EE               PAKISTAN                       1                222     367
6 months    ki1000109-EE               PAKISTAN                       0                145     367
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                423     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                103     526
6 months    ki1148112-LCNI-5           MALAWI                         1                 47     272
6 months    ki1148112-LCNI-5           MALAWI                         0                225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              10705   13375
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               2670   13375
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3256    4171
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                915    4171
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                117     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 94     211
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 30     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                139     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 18     227
24 months   ki0047075b-MAL-ED          INDIA                          0                209     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                 30     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                198     228
24 months   ki0047075b-MAL-ED          PERU                           1                 94     200
24 months   ki0047075b-MAL-ED          PERU                           0                106     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                235     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  2     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                212     214
24 months   ki1113344-GMS-Nepal        NEPAL                          1                369     456
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 87     456
24 months   ki1148112-LCNI-5           MALAWI                         1                 34     189
24 months   ki1148112-LCNI-5           MALAWI                         0                155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               5293    6693
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1400    6693
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3153    4023
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                870    4023


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/6f1620bd-d69f-47c7-825b-7c582f5be90b/aca510cc-26df-4025-8edd-90acff1535a9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6f1620bd-d69f-47c7-825b-7c582f5be90b/aca510cc-26df-4025-8edd-90acff1535a9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6f1620bd-d69f-47c7-825b-7c582f5be90b/aca510cc-26df-4025-8edd-90acff1535a9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.9886400   -1.1565669   -0.8207131
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.0974576   -1.2894047   -0.9055105
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.7037931   -1.1379937   -0.2695925
Birth       ki0047075b-MAL-ED     BRAZIL       0                    NA                -0.7408974   -0.9116664   -0.5701284
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                -1.4262500   -2.0314939   -0.8210061
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                -0.9881319   -1.1322306   -0.8440331
Birth       ki0047075b-MAL-ED     NEPAL        1                    NA                -0.5984615   -1.0026795   -0.1942436
Birth       ki0047075b-MAL-ED     NEPAL        0                    NA                -0.7243151   -0.8950910   -0.5535391
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.9000847   -1.0719525   -0.7282170
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.9406452   -1.0892360   -0.7920543
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.4944613   -1.5182421   -1.4706806
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.6903430   -1.7413156   -1.6393703
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.4808591   -1.5746857   -1.3870325
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.6774483   -1.8860140   -1.4688825
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.1337080   -1.2886597   -0.9787564
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.2785135   -1.4567834   -1.1002436
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.1879730   -0.1951683    0.5711142
6 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0215601   -0.1324881    0.1756083
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -1.5826316   -2.1499971   -1.0152660
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -1.1886482   -1.3065016   -1.0707949
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                -0.6466146   -0.9669547   -0.3262745
6 months    ki0047075b-MAL-ED     NEPAL        0                    NA                -0.5476389   -0.6678808   -0.4273970
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -1.1694444   -1.3144931   -1.0243958
6 months    ki0047075b-MAL-ED     PERU         0                    NA                -1.4459080   -1.5998363   -1.2919798
6 months    ki1000109-EE          PAKISTAN     1                    NA                -2.3915090   -2.5470464   -2.2359716
6 months    ki1000109-EE          PAKISTAN     0                    NA                -1.9091724   -2.1006572   -1.7176877
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.2683964   -1.3548728   -1.1819200
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.5064239   -1.7019768   -1.3108711
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -1.7051064   -1.9955729   -1.4146399
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                -1.6259111   -1.7571663   -1.4946560
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.2618748   -1.2883218   -1.2354278
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.5138577   -1.5669424   -1.4607729
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.3157555   -1.3577626   -1.2737485
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.5185410   -1.6126924   -1.4243896
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.9831197   -2.1649968   -1.8012425
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.8780851   -2.0466854   -1.7094848
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0176667   -0.3977125    0.3623792
24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0546763   -0.1312815    0.2406340
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -2.4469444   -2.9158076   -1.9780813
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -1.7940431   -1.9224573   -1.6656289
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -1.3491667   -1.6760825   -1.0222508
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -1.2640152   -1.3932616   -1.1347687
24 months   ki0047075b-MAL-ED     PERU         1                    NA                -1.6018617   -1.7650598   -1.4386637
24 months   ki0047075b-MAL-ED     PERU         0                    NA                -1.8681604   -2.0393662   -1.6969546
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.8583198   -1.9507820   -1.7658576
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.9643870   -2.1983018   -1.7304722
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -2.0273529   -2.3204751   -1.7342307
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -1.9459355   -2.1034386   -1.7884323
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.9775043   -2.0096237   -1.9453848
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -2.0593071   -2.1245488   -1.9940655
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.7538725   -1.7973826   -1.7103624
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.8592184   -1.9427985   -1.7756383


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.0414815   -1.1687478   -0.9142151
Birth       ki0047075b-MAL-ED     BRAZIL       NA                   NA                -0.7350811   -0.8943683   -0.5757938
Birth       ki0047075b-MAL-ED     INDIA        NA                   NA                -1.0235354   -1.1657122   -0.8813585
Birth       ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.7052907   -0.8627483   -0.5478331
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                -0.9231136   -1.0355489   -0.8106782
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.5333680   -1.5553430   -1.5113930
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.5200688   -1.6064560   -1.4336815
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.2006806   -1.3182323   -1.0831288
6 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -1.2203672   -1.3387619   -1.1019726
6 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                -1.3173678   -1.4250795   -1.2096560
6 months    ki1000109-EE          PAKISTAN     NA                   NA                -2.2009401   -2.3240630   -2.0778171
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.3150063   -1.3948049   -1.2352077
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.3121772   -1.3366725   -1.2876819
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.3602409   -1.3996637   -1.3208182
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.9363270   -2.0622735   -1.8103806
24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED     PERU         NA                   NA                -1.7430000   -1.8632412   -1.6227588
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.8785563   -1.9657607   -1.7913519
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -1.9605820   -2.1001715   -1.8209925
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.9946153   -2.0246928   -1.9645378
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.7766542   -1.8163158   -1.7369927


### Parameter: ATE


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.1088176   -0.3638532    0.1462179
Birth       ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0371043   -0.5036793    0.4294706
Birth       ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     INDIA        0                    1                  0.4381181   -0.1840431    1.0602794
Birth       ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     NEPAL        0                    1                 -0.1258535   -0.5646662    0.3129592
Birth       ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                 -0.0405604   -0.2677559    0.1866350
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.1958816   -0.2512141   -0.1405491
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.1965892   -0.4242297    0.0310514
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.1448055   -0.3810050    0.0913940
6 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.1664129   -0.5793633    0.2465375
6 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                  0.3939833   -0.1854932    0.9734599
6 months    ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL        0                    1                  0.0989757   -0.2431878    0.4411392
6 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                 -0.2764636   -0.4879655   -0.0649617
6 months    ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE          PAKISTAN     0                    1                  0.4823366    0.2356419    0.7290313
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.2380276   -0.4518478   -0.0242074
6 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                  0.0791953   -0.2395502    0.3979408
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.2519829   -0.3087671   -0.1951986
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.2027855   -0.3041806   -0.1013903
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.1050346   -0.1429682    0.3530373
24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0723429   -0.3507589    0.4954448
24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.6529014    0.1667709    1.1390319
24 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL        0                    1                  0.0851515   -0.2663860    0.4366890
24 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU         0                    1                 -0.2662987   -0.5028257   -0.0297717
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.1060672   -0.3575933    0.1454589
24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.0814175   -0.2513405    0.4141754
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0818029   -0.1512870   -0.0123188
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.1053459   -0.1967875   -0.0139043


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0528415   -0.1768753    0.0711924
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0312880   -0.4247290    0.3621530
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                 0.4027146   -0.1694139    0.9748432
Birth       ki0047075b-MAL-ED     NEPAL        1                    NA                -0.1068292   -0.4793710    0.2657127
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.0230288   -0.1520447    0.1059871
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0389066   -0.0499700   -0.0278433
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0392097   -0.0847479    0.0063285
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0669725   -0.1765976    0.0426525
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.1369522   -0.4769062    0.2030017
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.3622643   -0.1707357    0.8952644
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0855553   -0.2102449    0.3813554
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.1479233   -0.2622776   -0.0335691
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.1905690    0.0901519    0.2909860
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0466100   -0.0892522   -0.0039678
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.0655108   -0.1981815    0.3292031
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0503024   -0.0616461   -0.0389586
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0444854   -0.0664203   -0.0225506
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0467926   -0.0639174    0.1575027
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0595010   -0.2885191    0.4075211
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.6011295    0.1529562    1.0493027
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0739474   -0.2313581    0.3792529
24 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.1411383   -0.2678504   -0.0144262
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0202365   -0.0683776    0.0279046
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0667709   -0.2061624    0.3397043
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0171110   -0.0316157   -0.0026063
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0227817   -0.0423528   -0.0032106
