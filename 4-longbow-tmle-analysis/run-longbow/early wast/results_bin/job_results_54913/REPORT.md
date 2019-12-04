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

**Outcome Variable:** stunt24

## Predictor Variables

**Intervention Variable:** wast06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                         wast06   stunt24   n_cell      n  outcome_variable 
-------------  -------------------------  -----------------------------  -------  --------  -------  -----  -----------------
0-6 months     ki0047075b-MAL-ED          BANGLADESH                           0         0       88    263  stunt24          
0-6 months     ki0047075b-MAL-ED          BANGLADESH                           0         1      115    263  stunt24          
0-6 months     ki0047075b-MAL-ED          BANGLADESH                           1         0       29    263  stunt24          
0-6 months     ki0047075b-MAL-ED          BANGLADESH                           1         1       31    263  stunt24          
0-6 months     ki0047075b-MAL-ED          BRAZIL                               0         0      191    233  stunt24          
0-6 months     ki0047075b-MAL-ED          BRAZIL                               0         1       27    233  stunt24          
0-6 months     ki0047075b-MAL-ED          BRAZIL                               1         0       13    233  stunt24          
0-6 months     ki0047075b-MAL-ED          BRAZIL                               1         1        2    233  stunt24          
0-6 months     ki0047075b-MAL-ED          INDIA                                0         0       72    251  stunt24          
0-6 months     ki0047075b-MAL-ED          INDIA                                0         1       97    251  stunt24          
0-6 months     ki0047075b-MAL-ED          INDIA                                1         0       47    251  stunt24          
0-6 months     ki0047075b-MAL-ED          INDIA                                1         1       35    251  stunt24          
0-6 months     ki0047075b-MAL-ED          NEPAL                                0         0      140    240  stunt24          
0-6 months     ki0047075b-MAL-ED          NEPAL                                0         1       52    240  stunt24          
0-6 months     ki0047075b-MAL-ED          NEPAL                                1         0       33    240  stunt24          
0-6 months     ki0047075b-MAL-ED          NEPAL                                1         1       15    240  stunt24          
0-6 months     ki0047075b-MAL-ED          PERU                                 0         0      154    302  stunt24          
0-6 months     ki0047075b-MAL-ED          PERU                                 0         1      137    302  stunt24          
0-6 months     ki0047075b-MAL-ED          PERU                                 1         0        6    302  stunt24          
0-6 months     ki0047075b-MAL-ED          PERU                                 1         1        5    302  stunt24          
0-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                         0         0      153    312  stunt24          
0-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                         0         1      124    312  stunt24          
0-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                         1         0       22    312  stunt24          
0-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                         1         1       13    312  stunt24          
0-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF         0         0       50    261  stunt24          
0-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF         0         1      198    261  stunt24          
0-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF         1         0        1    261  stunt24          
0-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF         1         1       12    261  stunt24          
0-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                0         0       31    368  stunt24          
0-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                0         1      147    368  stunt24          
0-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                1         0       20    368  stunt24          
0-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                1         1      170    368  stunt24          
0-6 months     ki1000108-IRC              INDIA                                0         0       80    409  stunt24          
0-6 months     ki1000108-IRC              INDIA                                0         1      106    409  stunt24          
0-6 months     ki1000108-IRC              INDIA                                1         0      111    409  stunt24          
0-6 months     ki1000108-IRC              INDIA                                1         1      112    409  stunt24          
0-6 months     ki1000109-EE               PAKISTAN                             0         0       60    379  stunt24          
0-6 months     ki1000109-EE               PAKISTAN                             0         1      195    379  stunt24          
0-6 months     ki1000109-EE               PAKISTAN                             1         0       25    379  stunt24          
0-6 months     ki1000109-EE               PAKISTAN                             1         1       99    379  stunt24          
0-6 months     ki1000109-ResPak           PAKISTAN                             0         0       64    282  stunt24          
0-6 months     ki1000109-ResPak           PAKISTAN                             0         1      109    282  stunt24          
0-6 months     ki1000109-ResPak           PAKISTAN                             1         0       50    282  stunt24          
0-6 months     ki1000109-ResPak           PAKISTAN                             1         1       59    282  stunt24          
0-6 months     ki1017093b-PROVIDE         BANGLADESH                           0         0      337    700  stunt24          
0-6 months     ki1017093b-PROVIDE         BANGLADESH                           0         1      182    700  stunt24          
0-6 months     ki1017093b-PROVIDE         BANGLADESH                           1         0      105    700  stunt24          
0-6 months     ki1017093b-PROVIDE         BANGLADESH                           1         1       76    700  stunt24          
0-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF         0         0     1630   2396  stunt24          
0-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF         0         1      433   2396  stunt24          
0-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF         1         0      262   2396  stunt24          
0-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF         1         1       71   2396  stunt24          
0-6 months     ki1101329-Keneba           GAMBIA                               0         0     1120   2462  stunt24          
0-6 months     ki1101329-Keneba           GAMBIA                               0         1      672   2462  stunt24          
0-6 months     ki1101329-Keneba           GAMBIA                               1         0      370   2462  stunt24          
0-6 months     ki1101329-Keneba           GAMBIA                               1         1      300   2462  stunt24          
0-6 months     ki1112895-Guatemala BSC    GUATEMALA                            0         0      200    295  stunt24          
0-6 months     ki1112895-Guatemala BSC    GUATEMALA                            0         1       85    295  stunt24          
0-6 months     ki1112895-Guatemala BSC    GUATEMALA                            1         0        2    295  stunt24          
0-6 months     ki1112895-Guatemala BSC    GUATEMALA                            1         1        8    295  stunt24          
0-6 months     ki1113344-GMS-Nepal        NEPAL                                0         0      196    686  stunt24          
0-6 months     ki1113344-GMS-Nepal        NEPAL                                0         1      233    686  stunt24          
0-6 months     ki1113344-GMS-Nepal        NEPAL                                1         0      114    686  stunt24          
0-6 months     ki1113344-GMS-Nepal        NEPAL                                1         1      143    686  stunt24          
0-6 months     ki1114097-CMIN             BANGLADESH                           0         0       41    271  stunt24          
0-6 months     ki1114097-CMIN             BANGLADESH                           0         1      180    271  stunt24          
0-6 months     ki1114097-CMIN             BANGLADESH                           1         0       11    271  stunt24          
0-6 months     ki1114097-CMIN             BANGLADESH                           1         1       39    271  stunt24          
0-6 months     ki1114097-CONTENT          PERU                                 0         0      173    215  stunt24          
0-6 months     ki1114097-CONTENT          PERU                                 0         1       38    215  stunt24          
0-6 months     ki1114097-CONTENT          PERU                                 1         0        4    215  stunt24          
0-6 months     ki1114097-CONTENT          PERU                                 1         1        0    215  stunt24          
18-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                0         0        1      5  stunt24          
18-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                0         1        4      5  stunt24          
18-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                1         0        0      5  stunt24          
18-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                1         1        0      5  stunt24          
18-24 months   ki1000108-IRC              INDIA                                0         0        0      1  stunt24          
18-24 months   ki1000108-IRC              INDIA                                0         1        1      1  stunt24          
18-24 months   ki1000108-IRC              INDIA                                1         0        0      1  stunt24          
18-24 months   ki1000108-IRC              INDIA                                1         1        0      1  stunt24          
18-24 months   ki1101329-Keneba           GAMBIA                               0         0      146    264  stunt24          
18-24 months   ki1101329-Keneba           GAMBIA                               0         1       76    264  stunt24          
18-24 months   ki1101329-Keneba           GAMBIA                               1         0       15    264  stunt24          
18-24 months   ki1101329-Keneba           GAMBIA                               1         1       27    264  stunt24          


The following strata were considered:

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-24 months, studyid: ki1101329-Keneba, country: GAMBIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-24 months, studyid: ki1000108-IRC, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/d7be9b82-f930-485a-9e15-b1576540f2c6/6713ea49-0640-4935-8cd7-f4f05a4b6669/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d7be9b82-f930-485a-9e15-b1576540f2c6/6713ea49-0640-4935-8cd7-f4f05a4b6669/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d7be9b82-f930-485a-9e15-b1576540f2c6/6713ea49-0640-4935-8cd7-f4f05a4b6669/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d7be9b82-f930-485a-9e15-b1576540f2c6/6713ea49-0640-4935-8cd7-f4f05a4b6669/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.5665025   0.4982023   0.6348026
0-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.5166667   0.3899808   0.6433526
0-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                0.5739645   0.4992617   0.6486673
0-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                0.4268293   0.3195596   0.5340990
0-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2708333   0.2078438   0.3338229
0-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3125000   0.1811000   0.4439000
0-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                0.4707904   0.4133457   0.5282350
0-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                0.4545455   0.1598049   0.7492860
0-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.4476534   0.3890015   0.5063053
0-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3714286   0.2110944   0.5317628
0-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.8258427   0.7700537   0.8816317
0-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.8947368   0.8510402   0.9384335
0-6 months     ki1000108-IRC              INDIA                          0                    NA                0.5698925   0.4986551   0.6411299
0-6 months     ki1000108-IRC              INDIA                          1                    NA                0.5022422   0.4365380   0.5679463
0-6 months     ki1000109-EE               PAKISTAN                       0                    NA                0.7647059   0.7125739   0.8168379
0-6 months     ki1000109-EE               PAKISTAN                       1                    NA                0.7983871   0.7276777   0.8690965
0-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                0.6300578   0.5579880   0.7021276
0-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                0.5412844   0.4475734   0.6349954
0-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3506744   0.3095918   0.3917570
0-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4198895   0.3479376   0.4918414
0-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2098885   0.1923122   0.2274648
0-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2132132   0.1692133   0.2572132
0-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                0.3750000   0.3525807   0.3974193
0-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                0.4477612   0.4101007   0.4854217
0-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5431235   0.4959515   0.5902956
0-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5564202   0.4956367   0.6172037
0-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                0.8144796   0.7631355   0.8658237
0-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                0.7800000   0.6649665   0.8950335
18-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.3423423   0.2798069   0.4048777
18-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.6428571   0.4976708   0.7880435


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5551331   0.4949588   0.6153074
0-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5258964   0.4640001   0.5877927
0-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2791667   0.2222947   0.3360386
0-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.4701987   0.4138139   0.5265835
0-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4391026   0.3839466   0.4942585
0-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8614130   0.8260637   0.8967624
0-6 months     ki1000108-IRC              INDIA                          NA                   NA                0.5330073   0.4845968   0.5814178
0-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                0.7757256   0.7336775   0.8177737
0-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                0.5957447   0.5383657   0.6531237
0-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3685714   0.3328086   0.4043343
0-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2103506   0.1940282   0.2266730
0-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.3948010   0.3754888   0.4141131
0-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5481050   0.5108355   0.5853744
0-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                0.8081181   0.7611481   0.8550881
18-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3901515   0.3311996   0.4491034


### Parameter: RR


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.9120290   0.6939746   1.1985984
0-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                 0.7436510   0.5603447   0.9869226
0-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                 1.1538462   0.7136126   1.8656635
0-6 months     ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months     ki0047075b-MAL-ED          PERU                           1                    0                 0.9654944   0.4991121   1.8676755
0-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.8297235   0.5284656   1.3027169
0-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0834228   0.9967721   1.1776063
0-6 months     ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months     ki1000108-IRC              INDIA                          1                    0                 0.8812928   0.7354252   1.0560925
0-6 months     ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months     ki1000109-EE               PAKISTAN                       1                    0                 1.0440447   0.9336420   1.1675024
0-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                 0.8591028   0.6981167   1.0572123
0-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1973772   0.9729283   1.4736052
0-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0158403   0.8130251   1.2692493
0-6 months     ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months     ki1101329-Keneba           GAMBIA                         1                    0                 1.1940299   1.0769605   1.3238251
0-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0244819   0.8910339   1.1779160
0-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                 0.9576667   0.8157540   1.1242672
18-24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
18-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 1.8778195   1.4044404   2.5107553


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0113694   -0.0443013    0.0215626
0-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0480681   -0.0916212   -0.0045150
0-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0083333   -0.0208867    0.0375534
0-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.0005917   -0.0115347    0.0103513
0-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0085509   -0.0278884    0.0107867
0-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0355703   -0.0011866    0.0723273
0-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0368851   -0.0898253    0.0160551
0-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0110197   -0.0177668    0.0398062
0-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0343131   -0.0802865    0.0116603
0-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0178971   -0.0036442    0.0394383
0-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0004621   -0.0061231    0.0070473
0-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                 0.0198010    0.0078052    0.0317967
0-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0049814   -0.0238473    0.0338101
0-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0063616   -0.0296583    0.0169352
18-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0478092    0.0193670    0.0762513


### Parameter: PAF


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0204805   -0.0816293    0.0372114
0-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0914022   -0.1785077   -0.0107348
0-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0298507   -0.0806241    0.1290315
0-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.0012584   -0.0248045    0.0217467
0-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0194735   -0.0645197    0.0236665
0-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0412930   -0.0027238    0.0833776
0-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0692019   -0.1735991    0.0259086
0-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0142057   -0.0236590    0.0506697
0-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0575970   -0.1381048    0.0172157
0-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0485579   -0.0117422    0.1052641
0-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0021967   -0.0296052    0.0330163
0-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                 0.0501543    0.0192543    0.0800807
0-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0090884   -0.0449349    0.0603187
0-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0078721   -0.0371447    0.0205744
18-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.1225400    0.0462128    0.1927591
