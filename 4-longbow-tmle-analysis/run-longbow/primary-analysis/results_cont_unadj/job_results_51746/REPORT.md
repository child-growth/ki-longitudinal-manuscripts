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

**Intervention Variable:** trth2o

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        trth2o    n_cell     n
----------  -------------------------  -----------------------------  -------  -------  ----
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            131   133
Birth       ki0047075b-MAL-ED          BANGLADESH                     0              2   133
Birth       ki0047075b-MAL-ED          BRAZIL                         1             12    84
Birth       ki0047075b-MAL-ED          BRAZIL                         0             72    84
Birth       ki0047075b-MAL-ED          INDIA                          1              2     7
Birth       ki0047075b-MAL-ED          INDIA                          0              5     7
Birth       ki0047075b-MAL-ED          NEPAL                          1             50    62
Birth       ki0047075b-MAL-ED          NEPAL                          0             12    62
Birth       ki0047075b-MAL-ED          PERU                           1             36    45
Birth       ki0047075b-MAL-ED          PERU                           0              9    45
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              1    10
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    10
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              2    20
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             18    20
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             26    26
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              0    26
Birth       ki1000108-IRC              INDIA                          1            120   120
Birth       ki1000108-IRC              INDIA                          0              0   120
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             14    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             13    27
6 months    ki0047075b-MAL-ED          BANGLADESH                     1            132   134
6 months    ki0047075b-MAL-ED          BANGLADESH                     0              2   134
6 months    ki0047075b-MAL-ED          BRAZIL                         1             13   103
6 months    ki0047075b-MAL-ED          BRAZIL                         0             90   103
6 months    ki0047075b-MAL-ED          INDIA                          1              4     9
6 months    ki0047075b-MAL-ED          INDIA                          0              5     9
6 months    ki0047075b-MAL-ED          NEPAL                          1             69    83
6 months    ki0047075b-MAL-ED          NEPAL                          0             14    83
6 months    ki0047075b-MAL-ED          PERU                           1             39    49
6 months    ki0047075b-MAL-ED          PERU                           0             10    49
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             10    12
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            120   120
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              0   120
6 months    ki1000108-IRC              INDIA                          1            121   121
6 months    ki1000108-IRC              INDIA                          0              0   121
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             13   583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            570   583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            396   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            319   715
6 months    ki1113344-GMS-Nepal        NEPAL                          1              1     4
6 months    ki1113344-GMS-Nepal        NEPAL                          0              3     4
24 months   ki0047075b-MAL-ED          BANGLADESH                     1            133   135
24 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   135
24 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103
24 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103
24 months   ki0047075b-MAL-ED          INDIA                          1              4     9
24 months   ki0047075b-MAL-ED          INDIA                          0              5     9
24 months   ki0047075b-MAL-ED          NEPAL                          1             69    83
24 months   ki0047075b-MAL-ED          NEPAL                          0             14    83
24 months   ki0047075b-MAL-ED          PERU                           1             39    49
24 months   ki0047075b-MAL-ED          PERU                           0             10    49
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    43
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             37    43
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            119   119
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0   119
24 months   ki1000108-IRC              INDIA                          1            121   121
24 months   ki1000108-IRC              INDIA                          0              0   121
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             14   577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            563   577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            242   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            272   514
24 months   ki1113344-GMS-Nepal        NEPAL                          1              1     4
24 months   ki1113344-GMS-Nepal        NEPAL                          0              3     4


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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

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




# Results Detail

## Results Plots
![](/tmp/f14f38be-303b-47eb-a2c0-408bf858ff84/c3268e1f-3a31-4fb4-8d6a-97dde40ae137/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f14f38be-303b-47eb-a2c0-408bf858ff84/c3268e1f-3a31-4fb4-8d6a-97dde40ae137/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f14f38be-303b-47eb-a2c0-408bf858ff84/c3268e1f-3a31-4fb4-8d6a-97dde40ae137/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BRAZIL                         1                    NA                -1.2150000   -1.7318341   -0.6981659
Birth       ki0047075b-MAL-ED       BRAZIL                         0                    NA                -0.6301389   -0.8686060   -0.3916718
Birth       ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.5534000   -0.8245988   -0.2822012
Birth       ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.8308333   -1.4738885   -0.1877782
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                -0.9697222   -1.2665251   -0.6729194
Birth       ki0047075b-MAL-ED       PERU                           0                    NA                -0.8611111   -1.2796894   -0.4425328
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -1.0885714   -1.6548529   -0.5222900
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -1.1330769   -1.6929342   -0.5732196
6 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.1088462   -0.6218821    0.4041898
6 months    ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.1972407   -0.0180141    0.4124956
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.4795169   -0.6941182   -0.2649156
6 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.8313095   -1.2102965   -0.4523225
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                -1.4644872   -1.7693789   -1.1595954
6 months    ki0047075b-MAL-ED       PERU                           0                    NA                -1.3145000   -1.8061179   -0.8228821
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3394444   -2.3247416   -0.3541473
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.5815278   -1.8930135   -1.2700421
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -1.2269231   -1.6668256   -0.7870206
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -1.0839152   -1.1614898   -1.0063406
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -1.2831566   -1.3827027   -1.1836104
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -1.0938088   -1.1943669   -0.9932507
24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.6530769   -1.0728058   -0.2333480
24 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.2352778    0.0206985    0.4498570
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -1.1774638   -1.4126984   -0.9422291
24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -1.5075000   -1.9999792   -1.0150208
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -1.7987179   -2.0730503   -1.5243855
24 months   ki0047075b-MAL-ED       PERU                           0                    NA                -2.3030000   -2.7546616   -1.8513384
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.7600000   -3.4536768   -2.0663232
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.8245946   -3.1641384   -2.4850508
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -1.6507143   -2.1634637   -1.1379649
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -1.5845115   -1.6688725   -1.5001506
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -1.4724793   -1.5991769   -1.3457817
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -1.3913235   -1.5008327   -1.2818144


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BRAZIL                         NA                   NA                -0.7136905   -0.9354323   -0.4919487
Birth       ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.6070968   -0.8602389   -0.3539547
Birth       ki0047075b-MAL-ED       PERU                           NA                   NA                -0.9480000   -1.2000951   -0.6959049
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.1100000   -1.5086894   -0.7113106
6 months    ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.1586084   -0.0412881    0.3585049
6 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.5388554   -0.7304990   -0.3472118
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                -1.4338776   -1.6970254   -1.1707297
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.5469444   -1.8498756   -1.2440133
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
24 months   ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.1231553   -0.0799188    0.3262295
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -1.2331325   -1.4472780   -1.0189870
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -1.9016327   -2.1455122   -1.6577531
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.8155814   -3.1234373   -2.5077255
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935


### Parameter: ATE


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000   0.0000000
Birth       ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.5848611    0.0156651   1.1540571
Birth       ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000   0.0000000
Birth       ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.2774333   -0.9753364   0.4204698
Birth       ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000   0.0000000
Birth       ki0047075b-MAL-ED       PERU                           0                    1                  0.1086111   -0.4045163   0.6217385
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000   0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0445055   -0.8408188   0.7518078
6 months    ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000   0.0000000
6 months    ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.3060869   -0.2502768   0.8624506
6 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000   0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.3517926   -0.7873209   0.0837357
6 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000   0.0000000
6 months    ki0047075b-MAL-ED       PERU                           0                    1                  0.1499872   -0.4284998   0.7284741
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000   0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2420833   -1.2754438   0.7912771
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000   0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.1430079   -0.3036822   0.5896979
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000   0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.1893478    0.0478509   0.3308447
24 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000   0.0000000
24 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.8883547    0.4169561   1.3597533
24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000   0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.3300362   -0.8758120   0.2157395
24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000   0.0000000
24 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.5042821   -1.0327293   0.0241652
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000   0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0645946   -0.8369142   0.7077250
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000   0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0662027   -0.4534401   0.5858456
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000   0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0811558   -0.0863092   0.2486208


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.5013095    0.0114446   0.9911745
Birth       ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0536968   -0.1915469   0.0841533
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                 0.0217222   -0.0817030   0.1251474
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0214286   -0.4049340   0.3620768
6 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.2674546   -0.2190885   0.7539976
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0593385   -0.1381403   0.0194633
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                 0.0306096   -0.0886810   0.1499003
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2075000   -1.0936170   0.6786170
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.1398190   -0.2957072   0.5753452
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0844782    0.0209725   0.1479840
24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.7762323    0.3603708   1.1920937
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0556688   -0.1515348   0.0401973
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.1029147   -0.2251302   0.0193008
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0555814   -0.7201699   0.6090071
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0645964   -0.4420561   0.5712489
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0429463   -0.0457427   0.1316352
