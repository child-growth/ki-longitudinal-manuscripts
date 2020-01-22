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

**Outcome Variable:** wast_rec90d

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

agecat        studyid               country                        predfeed3    wast_rec90d   n_cell      n  outcome_variable 
------------  --------------------  -----------------------------  ----------  ------------  -------  -----  -----------------
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                      0       33    117  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                      1       68    117  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                      0        8    117  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                      1        8    117  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     BRAZIL                         1                      0        5     22  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     BRAZIL                         1                      1        9     22  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     BRAZIL                         0                      0        1     22  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     BRAZIL                         0                      1        7     22  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     INDIA                          1                      0       43    162  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     INDIA                          1                      1       67    162  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     INDIA                          0                      0       19    162  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     INDIA                          0                      1       33    162  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     NEPAL                          1                      0       11     96  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     NEPAL                          1                      1       35     96  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     NEPAL                          0                      0        9     96  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     NEPAL                          0                      1       41     96  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     PERU                           1                      0        3     33  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     PERU                           1                      1       12     33  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     PERU                           0                      0        3     33  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     PERU                           0                      1       15     33  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      0        4     77  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      1       12     77  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      0        8     77  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      1       53     77  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      0        2     44  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      1        8     44  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      0        6     44  wast_rec90d      
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      1       28     44  wast_rec90d      
0-24 months   ki1000109-EE          PAKISTAN                       1                      0       14     30  wast_rec90d      
0-24 months   ki1000109-EE          PAKISTAN                       1                      1       16     30  wast_rec90d      
0-24 months   ki1000109-EE          PAKISTAN                       0                      0        0     30  wast_rec90d      
0-24 months   ki1000109-EE          PAKISTAN                       0                      1        0     30  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal   NEPAL                          1                      0      185    491  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal   NEPAL                          1                      1      231    491  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal   NEPAL                          0                      0       32    491  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal   NEPAL                          0                      1       43    491  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                      0     2252   4340  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                      1     1699   4340  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                      0      218   4340  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                      1      171   4340  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                      0       37     54  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                      1       12     54  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                      0        5     54  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                      1        0     54  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     1                      0        8     58  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     1                      1       40     58  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     0                      0        4     58  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     0                      1        6     58  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     BRAZIL                         1                      0        1     13  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     BRAZIL                         1                      1        5     13  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     BRAZIL                         0                      0        0     13  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     BRAZIL                         0                      1        7     13  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     INDIA                          1                      0       12     74  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     INDIA                          1                      1       33     74  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     INDIA                          0                      0       11     74  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     INDIA                          0                      1       18     74  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     NEPAL                          1                      0        4     46  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     NEPAL                          1                      1       16     46  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     NEPAL                          0                      0        5     46  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     NEPAL                          0                      1       21     46  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     PERU                           1                      0        0     11  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     PERU                           1                      1        6     11  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     PERU                           0                      0        0     11  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     PERU                           0                      1        5     11  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                      0        2     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                      1        7     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                      0        2     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                      1       18     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      0        0     12  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      1        4     12  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      0        0     12  wast_rec90d      
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      1        8     12  wast_rec90d      
0-6 months    ki1000109-EE          PAKISTAN                       1                      0        5     12  wast_rec90d      
0-6 months    ki1000109-EE          PAKISTAN                       1                      1        7     12  wast_rec90d      
0-6 months    ki1000109-EE          PAKISTAN                       0                      0        0     12  wast_rec90d      
0-6 months    ki1000109-EE          PAKISTAN                       0                      1        0     12  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal   NEPAL                          1                      0       54    181  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal   NEPAL                          1                      1       96    181  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal   NEPAL                          0                      0       13    181  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal   NEPAL                          0                      1       18    181  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                      0      762   2720  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                      1     1699   2720  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                      0       88   2720  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                      1      171   2720  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                      0        5     10  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                      1        3     10  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                      0        2     10  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                      1        0     10  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                      0       25     59  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                      1       28     59  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                      0        4     59  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                      1        2     59  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     BRAZIL                         1                      0        4      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     BRAZIL                         1                      1        4      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     BRAZIL                         0                      0        1      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     BRAZIL                         0                      1        0      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     INDIA                          1                      0       31     88  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     INDIA                          1                      1       34     88  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     INDIA                          0                      0        8     88  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     INDIA                          0                      1       15     88  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     NEPAL                          1                      0        7     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     NEPAL                          1                      1       19     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     NEPAL                          0                      0        4     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     NEPAL                          0                      1       20     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     PERU                           1                      0        3     22  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     PERU                           1                      1        6     22  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     PERU                           0                      0        3     22  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     PERU                           0                      1       10     22  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      0        2     48  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      1        5     48  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      0        6     48  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      1       35     48  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      0        2     32  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      1        4     32  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      0        6     32  wast_rec90d      
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      1       20     32  wast_rec90d      
6-24 months   ki1000109-EE          PAKISTAN                       1                      0        9     18  wast_rec90d      
6-24 months   ki1000109-EE          PAKISTAN                       1                      1        9     18  wast_rec90d      
6-24 months   ki1000109-EE          PAKISTAN                       0                      0        0     18  wast_rec90d      
6-24 months   ki1000109-EE          PAKISTAN                       0                      1        0     18  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal   NEPAL                          1                      0      131    310  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal   NEPAL                          1                      1      135    310  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal   NEPAL                          0                      0       19    310  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal   NEPAL                          0                      1       25    310  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                      0     1490   1620  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                      1        0   1620  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                      0      130   1620  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                      1        0   1620  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                      0       32     44  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                      1        9     44  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                      0        3     44  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                      1        0     44  wast_rec90d      


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/68d40cd2-996e-46e4-86fb-a412b3c63e66/a989c26d-a21e-433b-a28a-d7da46ed81a3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/68d40cd2-996e-46e4-86fb-a412b3c63e66/a989c26d-a21e-433b-a28a-d7da46ed81a3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/68d40cd2-996e-46e4-86fb-a412b3c63e66/a989c26d-a21e-433b-a28a-d7da46ed81a3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/68d40cd2-996e-46e4-86fb-a412b3c63e66/a989c26d-a21e-433b-a28a-d7da46ed81a3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.6732673   0.5822997   0.7642350
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.5000000   0.2219425   0.7780575
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.6090909   0.5084866   0.7096952
0-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.6346154   0.4862931   0.7829377
0-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.7608696   0.6384483   0.8832909
0-24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.8200000   0.7247720   0.9152280
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5552885   0.5025632   0.6080137
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5733333   0.4464146   0.7002520
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4300177   0.4146353   0.4454002
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4395887   0.3884776   0.4906998
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.7333333   0.5982681   0.8683986
0-6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.6206897   0.4444990   0.7968803
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6400000   0.5624099   0.7175901
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5806452   0.4056011   0.7556893
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.6903698   0.6720999   0.7086396
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.6602317   0.6025394   0.7179239
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.5230769   0.3907677   0.6553862
6-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.6521739   0.4038225   0.9005253
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5075188   0.4420557   0.5729819
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5681818   0.4076156   0.7287481


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.6495726   0.5607849   0.7383604
0-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.6172840   0.5340594   0.7005085
0-24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.7916667   0.7146386   0.8686947
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5580448   0.5093588   0.6067308
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4308756   0.4161410   0.4456101
0-6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.6891892   0.5810852   0.7972932
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.6298343   0.5587812   0.7008873
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.6875000   0.6700777   0.7049223
6-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.5568182   0.4384773   0.6751591
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5161290   0.4555456   0.5767125


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7426471   0.4190238   1.316213
0-24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     INDIA        0                    1                 1.0419059   0.7826093   1.387113
0-24 months   ki0047075b-MAL-ED     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     NEPAL        0                    1                 1.0777143   0.8831354   1.315164
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0324964   0.8114501   1.313758
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0222572   0.9051674   1.154493
0-6 months    ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED     INDIA        0                    1                 0.8463950   0.6034039   1.187239
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9072581   0.6555629   1.255588
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9563450   0.8728969   1.047771
6-24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     INDIA        0                    1                 1.2468031   0.7893061   1.969474
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1195286   0.8203397   1.527836


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0236947   -0.0658584   0.0184690
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0081930   -0.0492741   0.0656602
0-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0307971   -0.0513830   0.1129772
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0027563   -0.0182167   0.0237294
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0008579   -0.0039275   0.0056433
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.0441441   -0.1323123   0.0440240
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0101657   -0.0432004   0.0228689
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0028698   -0.0086417   0.0029022
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0337413   -0.0410835   0.1085660
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0086102   -0.0158881   0.0331086


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0364773   -0.1046400   0.0274793
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0132727   -0.0843541   0.1021100
0-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0389016   -0.0715585   0.1379751
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0049393   -0.0333585   0.0418177
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0019910   -0.0091758   0.0130342
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.0640523   -0.2011552   0.0574014
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0161404   -0.0700494   0.0350528
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0041742   -0.0126073   0.0041886
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0605965   -0.0828181   0.1850165
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0166823   -0.0320002   0.0630683
