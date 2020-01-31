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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** cleanck

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country        cleanck    pers_wast   n_cell     n  outcome_variable 
------------  -------------------------  -------------  --------  ----------  -------  ----  -----------------
0-24 months   ki0047075b-MAL-ED          PERU           1                  0        1     1  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU           1                  1        0     1  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU           0                  0        0     1  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU           0                  1        0     1  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                  0        1     2  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                  1        0     2  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                  0        1     2  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                  1        0     2  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                  0      157   373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                  1        6   373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                  0      193   373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                  1       17   373  pers_wast        
0-24 months   ki1000108-IRC              INDIA          1                  0      204   400  pers_wast        
0-24 months   ki1000108-IRC              INDIA          1                  1       27   400  pers_wast        
0-24 months   ki1000108-IRC              INDIA          0                  0      148   400  pers_wast        
0-24 months   ki1000108-IRC              INDIA          0                  1       21   400  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                  0      521   641  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                  1        9   641  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                  0      105   641  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                  1        6   641  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                  0      335   559  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                  1        8   559  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                  0      210   559  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                  1        6   559  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                  0        8   534  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                  1        1   534  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                  0      454   534  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                  1       71   534  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU           1                  0        1     1  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU           1                  1        0     1  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU           0                  0        0     1  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU           0                  1        0     1  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                  0        1     2  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                  1        0     2  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                  0        1     2  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                  1        0     2  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                  0      143   358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                  1       15   358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                  0      165   358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                  1       35   358  pers_wast        
0-6 months    ki1000108-IRC              INDIA          1                  0      189   392  pers_wast        
0-6 months    ki1000108-IRC              INDIA          1                  1       38   392  pers_wast        
0-6 months    ki1000108-IRC              INDIA          0                  0      141   392  pers_wast        
0-6 months    ki1000108-IRC              INDIA          0                  1       24   392  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                  0      517   638  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                  1       10   638  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                  0      107   638  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                  1        4   638  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                  0      155   162  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                  1        3   162  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                  0        4   162  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                  1        0   162  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                  0        6   509  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                  1        2   509  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                  0      445   509  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                  1       56   509  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU           1                  0        1     1  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU           1                  1        0     1  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU           0                  0        0     1  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU           0                  1        0     1  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                  0        1     2  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                  1        0     2  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                  0        1     2  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                  1        0     2  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                  0      157   373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                  1        6   373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                  0      193   373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                  1       17   373  pers_wast        
6-24 months   ki1000108-IRC              INDIA          1                  0      204   400  pers_wast        
6-24 months   ki1000108-IRC              INDIA          1                  1       27   400  pers_wast        
6-24 months   ki1000108-IRC              INDIA          0                  0      148   400  pers_wast        
6-24 months   ki1000108-IRC              INDIA          0                  1       21   400  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                  0      521   641  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                  1        9   641  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                  0      105   641  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                  1        6   641  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                  0      335   559  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                  1        8   559  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                  0      210   559  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                  1        6   559  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                  0        8   534  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                  1        1   534  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                  0      454   534  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                  1       71   534  pers_wast        


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

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




# Results Detail

## Results Plots
![](/tmp/0f3517a8-75f9-4767-b7e7-93a8035cfc0c/ee1a63a9-0643-4213-a1e0-603de577aa1b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0f3517a8-75f9-4767-b7e7-93a8035cfc0c/ee1a63a9-0643-4213-a1e0-603de577aa1b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0f3517a8-75f9-4767-b7e7-93a8035cfc0c/ee1a63a9-0643-4213-a1e0-603de577aa1b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0f3517a8-75f9-4767-b7e7-93a8035cfc0c/ee1a63a9-0643-4213-a1e0-603de577aa1b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0368098   0.0078647   0.0657549
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.0809524   0.0440117   0.1178931
0-24 months   ki1000108-IRC              INDIA        1                    NA                0.1168831   0.0754001   0.1583662
0-24 months   ki1000108-IRC              INDIA        0                    NA                0.1242604   0.0744635   0.1740572
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0169811   0.0059730   0.0279893
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0540541   0.0119549   0.0961532
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0233236   0.0073368   0.0393105
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0277778   0.0058426   0.0497130
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0949367   0.0491664   0.1407070
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1750000   0.1222665   0.2277335
0-6 months    ki1000108-IRC              INDIA        1                    NA                0.1674009   0.1187729   0.2160289
0-6 months    ki1000108-IRC              INDIA        0                    NA                0.1454545   0.0915914   0.1993177
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0368098   0.0078647   0.0657549
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.0809524   0.0440117   0.1178931
6-24 months   ki1000108-IRC              INDIA        1                    NA                0.1168831   0.0754001   0.1583662
6-24 months   ki1000108-IRC              INDIA        0                    NA                0.1242604   0.0744635   0.1740572
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0169811   0.0059730   0.0279893
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0540541   0.0119549   0.0961532
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0233236   0.0073368   0.0393105
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0277778   0.0058426   0.0497130


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.0616622   0.0372186   0.0861058
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.1200000   0.0881145   0.1518855
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0234009   0.0116889   0.0351130
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0250447   0.0120795   0.0380100
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.1581633   0.1219951   0.1943314
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.0616622   0.0372186   0.0861058
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.1200000   0.0881145   0.1518855
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0234009   0.0116889   0.0351130
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0250447   0.0120795   0.0380100


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 2.1992063   0.8859799   5.458937
0-24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA        0                    1                 1.0631164   0.6224403   1.815783
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 3.1831830   1.1555326   8.768817
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.1909722   0.4185803   3.388632
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.8433333   1.0439767   3.254744
0-6 months    ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA        0                    1                 0.8688995   0.5427106   1.391140
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 2.1992063   0.8859799   5.458937
6-24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA        0                    1                 1.0631164   0.6224403   1.815783
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 3.1831830   1.1555326   8.768817
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.1909722   0.4185803   3.388632


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0248524   -0.0016629   0.0513677
0-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0031169   -0.0242684   0.0305022
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0064198   -0.0011934   0.0140331
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0017211   -0.0087685   0.0122108
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0447281    0.0055015   0.0839547
0-6 months    ki1000108-IRC              INDIA        1                    NA                -0.0092376   -0.0398012   0.0213259
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0248524   -0.0016629   0.0513677
6-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0031169   -0.0242684   0.0305022
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0064198   -0.0011934   0.0140331
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0017211   -0.0087685   0.0122108


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.4030408   -0.1700513   0.6954319
0-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0259740   -0.2310909   0.2293611
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.2743396   -0.0912317   0.5174416
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0687214   -0.4579033   0.4051184
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.3202531   -0.0131212   0.5439284
0-6 months    ki1000108-IRC              INDIA        1                    NA                -0.0584056   -0.2700772   0.1179888
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.4030408   -0.1700513   0.6954319
6-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0259740   -0.2310909   0.2293611
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.2743396   -0.0912317   0.5174416
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0687214   -0.4579033   0.4051184
