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

**Intervention Variable:** impsan

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid      country                        impsan    pers_wast   n_cell      n
------------  -----------  -----------------------------  -------  ----------  -------  -----
0-24 months   COHORTS      GUATEMALA                      1                 0       72    768
0-24 months   COHORTS      GUATEMALA                      1                 1        1    768
0-24 months   COHORTS      GUATEMALA                      0                 0      666    768
0-24 months   COHORTS      GUATEMALA                      0                 1       29    768
0-24 months   COHORTS      INDIA                          1                 0     1473   4126
0-24 months   COHORTS      INDIA                          1                 1       99   4126
0-24 months   COHORTS      INDIA                          0                 0     2240   4126
0-24 months   COHORTS      INDIA                          0                 1      314   4126
0-24 months   COHORTS      PHILIPPINES                    1                 0      146   1118
0-24 months   COHORTS      PHILIPPINES                    1                 1        3   1118
0-24 months   COHORTS      PHILIPPINES                    0                 0      919   1118
0-24 months   COHORTS      PHILIPPINES                    0                 1       50   1118
0-24 months   CONTENT      PERU                           1                 0      201    215
0-24 months   CONTENT      PERU                           1                 1        0    215
0-24 months   CONTENT      PERU                           0                 0       14    215
0-24 months   CONTENT      PERU                           0                 1        0    215
0-24 months   LCNI-5       MALAWI                         1                 0        3    711
0-24 months   LCNI-5       MALAWI                         1                 1        0    711
0-24 months   LCNI-5       MALAWI                         0                 0      702    711
0-24 months   LCNI-5       MALAWI                         0                 1        6    711
0-24 months   MAL-ED       BANGLADESH                     1                 0      192    242
0-24 months   MAL-ED       BANGLADESH                     1                 1       12    242
0-24 months   MAL-ED       BANGLADESH                     0                 0       37    242
0-24 months   MAL-ED       BANGLADESH                     0                 1        1    242
0-24 months   MAL-ED       BRAZIL                         1                 0      204    210
0-24 months   MAL-ED       BRAZIL                         1                 1        2    210
0-24 months   MAL-ED       BRAZIL                         0                 0        4    210
0-24 months   MAL-ED       BRAZIL                         0                 1        0    210
0-24 months   MAL-ED       INDIA                          1                 0      100    233
0-24 months   MAL-ED       INDIA                          1                 1        8    233
0-24 months   MAL-ED       INDIA                          0                 0      113    233
0-24 months   MAL-ED       INDIA                          0                 1       12    233
0-24 months   MAL-ED       NEPAL                          1                 0      232    236
0-24 months   MAL-ED       NEPAL                          1                 1        3    236
0-24 months   MAL-ED       NEPAL                          0                 0        1    236
0-24 months   MAL-ED       NEPAL                          0                 1        0    236
0-24 months   MAL-ED       PERU                           1                 0       65    263
0-24 months   MAL-ED       PERU                           1                 1        0    263
0-24 months   MAL-ED       PERU                           0                 0      197    263
0-24 months   MAL-ED       PERU                           0                 1        1    263
0-24 months   MAL-ED       SOUTH AFRICA                   1                 0        4    250
0-24 months   MAL-ED       SOUTH AFRICA                   1                 1        0    250
0-24 months   MAL-ED       SOUTH AFRICA                   0                 0      244    250
0-24 months   MAL-ED       SOUTH AFRICA                   0                 1        2    250
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                 0        0    241
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                 1        0    241
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                 0      241    241
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                 1        0    241
0-24 months   NIH-Birth    BANGLADESH                     1                 0      193    534
0-24 months   NIH-Birth    BANGLADESH                     1                 1       14    534
0-24 months   NIH-Birth    BANGLADESH                     0                 0      294    534
0-24 months   NIH-Birth    BANGLADESH                     0                 1       33    534
0-24 months   NIH-Crypto   BANGLADESH                     1                 0      609    719
0-24 months   NIH-Crypto   BANGLADESH                     1                 1       21    719
0-24 months   NIH-Crypto   BANGLADESH                     0                 0       84    719
0-24 months   NIH-Crypto   BANGLADESH                     0                 1        5    719
0-24 months   PROVIDE      BANGLADESH                     1                 0       13     13
0-24 months   PROVIDE      BANGLADESH                     1                 1        0     13
0-24 months   PROVIDE      BANGLADESH                     0                 0        0     13
0-24 months   PROVIDE      BANGLADESH                     0                 1        0     13
0-6 months    COHORTS      PHILIPPINES                    1                 0       39    336
0-6 months    COHORTS      PHILIPPINES                    1                 1        1    336
0-6 months    COHORTS      PHILIPPINES                    0                 0      281    336
0-6 months    COHORTS      PHILIPPINES                    0                 1       15    336
0-6 months    CONTENT      PERU                           1                 0      201    215
0-6 months    CONTENT      PERU                           1                 1        0    215
0-6 months    CONTENT      PERU                           0                 0       14    215
0-6 months    CONTENT      PERU                           0                 1        0    215
0-6 months    MAL-ED       BANGLADESH                     1                 0      198    242
0-6 months    MAL-ED       BANGLADESH                     1                 1        6    242
0-6 months    MAL-ED       BANGLADESH                     0                 0       37    242
0-6 months    MAL-ED       BANGLADESH                     0                 1        1    242
0-6 months    MAL-ED       BRAZIL                         1                 0      205    210
0-6 months    MAL-ED       BRAZIL                         1                 1        1    210
0-6 months    MAL-ED       BRAZIL                         0                 0        4    210
0-6 months    MAL-ED       BRAZIL                         0                 1        0    210
0-6 months    MAL-ED       INDIA                          1                 0       99    232
0-6 months    MAL-ED       INDIA                          1                 1        8    232
0-6 months    MAL-ED       INDIA                          0                 0      115    232
0-6 months    MAL-ED       INDIA                          0                 1       10    232
0-6 months    MAL-ED       NEPAL                          1                 0      229    236
0-6 months    MAL-ED       NEPAL                          1                 1        6    236
0-6 months    MAL-ED       NEPAL                          0                 0        1    236
0-6 months    MAL-ED       NEPAL                          0                 1        0    236
0-6 months    MAL-ED       PERU                           1                 0       65    263
0-6 months    MAL-ED       PERU                           1                 1        0    263
0-6 months    MAL-ED       PERU                           0                 0      198    263
0-6 months    MAL-ED       PERU                           0                 1        0    263
0-6 months    MAL-ED       SOUTH AFRICA                   1                 0        4    249
0-6 months    MAL-ED       SOUTH AFRICA                   1                 1        0    249
0-6 months    MAL-ED       SOUTH AFRICA                   0                 0      243    249
0-6 months    MAL-ED       SOUTH AFRICA                   0                 1        2    249
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                 0        0    241
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                 1        0    241
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                 0      241    241
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                 1        0    241
0-6 months    NIH-Birth    BANGLADESH                     1                 0       53    169
0-6 months    NIH-Birth    BANGLADESH                     1                 1        4    169
0-6 months    NIH-Birth    BANGLADESH                     0                 0      105    169
0-6 months    NIH-Birth    BANGLADESH                     0                 1        7    169
0-6 months    NIH-Crypto   BANGLADESH                     1                 0      231    250
0-6 months    NIH-Crypto   BANGLADESH                     1                 1        4    250
0-6 months    NIH-Crypto   BANGLADESH                     0                 0       14    250
0-6 months    NIH-Crypto   BANGLADESH                     0                 1        1    250
0-6 months    PROVIDE      BANGLADESH                     1                 0       13     13
0-6 months    PROVIDE      BANGLADESH                     1                 1        0     13
0-6 months    PROVIDE      BANGLADESH                     0                 0        0     13
0-6 months    PROVIDE      BANGLADESH                     0                 1        0     13
6-24 months   COHORTS      GUATEMALA                      1                 0       72    768
6-24 months   COHORTS      GUATEMALA                      1                 1        1    768
6-24 months   COHORTS      GUATEMALA                      0                 0      666    768
6-24 months   COHORTS      GUATEMALA                      0                 1       29    768
6-24 months   COHORTS      INDIA                          1                 0     1473   4126
6-24 months   COHORTS      INDIA                          1                 1       99   4126
6-24 months   COHORTS      INDIA                          0                 0     2240   4126
6-24 months   COHORTS      INDIA                          0                 1      314   4126
6-24 months   COHORTS      PHILIPPINES                    1                 0      146   1118
6-24 months   COHORTS      PHILIPPINES                    1                 1        3   1118
6-24 months   COHORTS      PHILIPPINES                    0                 0      919   1118
6-24 months   COHORTS      PHILIPPINES                    0                 1       50   1118
6-24 months   CONTENT      PERU                           1                 0      201    215
6-24 months   CONTENT      PERU                           1                 1        0    215
6-24 months   CONTENT      PERU                           0                 0       14    215
6-24 months   CONTENT      PERU                           0                 1        0    215
6-24 months   LCNI-5       MALAWI                         1                 0        3    711
6-24 months   LCNI-5       MALAWI                         1                 1        0    711
6-24 months   LCNI-5       MALAWI                         0                 0      702    711
6-24 months   LCNI-5       MALAWI                         0                 1        6    711
6-24 months   MAL-ED       BANGLADESH                     1                 0      192    242
6-24 months   MAL-ED       BANGLADESH                     1                 1       12    242
6-24 months   MAL-ED       BANGLADESH                     0                 0       37    242
6-24 months   MAL-ED       BANGLADESH                     0                 1        1    242
6-24 months   MAL-ED       BRAZIL                         1                 0      204    210
6-24 months   MAL-ED       BRAZIL                         1                 1        2    210
6-24 months   MAL-ED       BRAZIL                         0                 0        4    210
6-24 months   MAL-ED       BRAZIL                         0                 1        0    210
6-24 months   MAL-ED       INDIA                          1                 0      100    233
6-24 months   MAL-ED       INDIA                          1                 1        8    233
6-24 months   MAL-ED       INDIA                          0                 0      113    233
6-24 months   MAL-ED       INDIA                          0                 1       12    233
6-24 months   MAL-ED       NEPAL                          1                 0      232    236
6-24 months   MAL-ED       NEPAL                          1                 1        3    236
6-24 months   MAL-ED       NEPAL                          0                 0        1    236
6-24 months   MAL-ED       NEPAL                          0                 1        0    236
6-24 months   MAL-ED       PERU                           1                 0       65    263
6-24 months   MAL-ED       PERU                           1                 1        0    263
6-24 months   MAL-ED       PERU                           0                 0      197    263
6-24 months   MAL-ED       PERU                           0                 1        1    263
6-24 months   MAL-ED       SOUTH AFRICA                   1                 0        4    250
6-24 months   MAL-ED       SOUTH AFRICA                   1                 1        0    250
6-24 months   MAL-ED       SOUTH AFRICA                   0                 0      244    250
6-24 months   MAL-ED       SOUTH AFRICA                   0                 1        2    250
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                 0        0    241
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                 1        0    241
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                 0      241    241
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                 1        0    241
6-24 months   NIH-Birth    BANGLADESH                     1                 0      193    534
6-24 months   NIH-Birth    BANGLADESH                     1                 1       14    534
6-24 months   NIH-Birth    BANGLADESH                     0                 0      294    534
6-24 months   NIH-Birth    BANGLADESH                     0                 1       33    534
6-24 months   NIH-Crypto   BANGLADESH                     1                 0      609    719
6-24 months   NIH-Crypto   BANGLADESH                     1                 1       21    719
6-24 months   NIH-Crypto   BANGLADESH                     0                 0       84    719
6-24 months   NIH-Crypto   BANGLADESH                     0                 1        5    719
6-24 months   PROVIDE      BANGLADESH                     1                 0       13     13
6-24 months   PROVIDE      BANGLADESH                     1                 1        0     13
6-24 months   PROVIDE      BANGLADESH                     0                 0        0     13
6-24 months   PROVIDE      BANGLADESH                     0                 1        0     13


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/7494b1f7-c954-43b3-98ec-66fa9d9266e1/df9929cc-3e2c-4fd3-bee5-a737f44e5538/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7494b1f7-c954-43b3-98ec-66fa9d9266e1/df9929cc-3e2c-4fd3-bee5-a737f44e5538/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7494b1f7-c954-43b3-98ec-66fa9d9266e1/df9929cc-3e2c-4fd3-bee5-a737f44e5538/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7494b1f7-c954-43b3-98ec-66fa9d9266e1/df9929cc-3e2c-4fd3-bee5-a737f44e5538/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS      INDIA        1                    NA                0.0629771   0.0509672   0.0749870
0-24 months   COHORTS      INDIA        0                    NA                0.1229444   0.1102077   0.1356811
0-24 months   MAL-ED       INDIA        1                    NA                0.0740741   0.0245756   0.1235725
0-24 months   MAL-ED       INDIA        0                    NA                0.0960000   0.0442456   0.1477544
0-24 months   NIH-Birth    BANGLADESH   1                    NA                0.0676329   0.0333922   0.1018735
0-24 months   NIH-Birth    BANGLADESH   0                    NA                0.1009174   0.0682388   0.1335961
0-24 months   NIH-Crypto   BANGLADESH   1                    NA                0.0333333   0.0193066   0.0473601
0-24 months   NIH-Crypto   BANGLADESH   0                    NA                0.0561798   0.0083069   0.1040527
0-6 months    MAL-ED       INDIA        1                    NA                0.0747664   0.0248235   0.1247092
0-6 months    MAL-ED       INDIA        0                    NA                0.0800000   0.0323382   0.1276618
6-24 months   COHORTS      INDIA        1                    NA                0.0629771   0.0509672   0.0749870
6-24 months   COHORTS      INDIA        0                    NA                0.1229444   0.1102077   0.1356811
6-24 months   MAL-ED       INDIA        1                    NA                0.0740741   0.0245756   0.1235725
6-24 months   MAL-ED       INDIA        0                    NA                0.0960000   0.0442456   0.1477544
6-24 months   NIH-Birth    BANGLADESH   1                    NA                0.0676329   0.0333922   0.1018735
6-24 months   NIH-Birth    BANGLADESH   0                    NA                0.1009174   0.0682388   0.1335961
6-24 months   NIH-Crypto   BANGLADESH   1                    NA                0.0333333   0.0193066   0.0473601
6-24 months   NIH-Crypto   BANGLADESH   0                    NA                0.0561798   0.0083069   0.1040527


### Parameter: E(Y)


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS      INDIA        NA                   NA                0.1000969   0.0909380   0.1092559
0-24 months   MAL-ED       INDIA        NA                   NA                0.0858369   0.0497913   0.1218826
0-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.0361613   0.0225058   0.0498169
0-6 months    MAL-ED       INDIA        NA                   NA                0.0775862   0.0430879   0.1120845
6-24 months   COHORTS      INDIA        NA                   NA                0.1000969   0.0909380   0.1092559
6-24 months   MAL-ED       INDIA        NA                   NA                0.0858369   0.0497913   0.1218826
6-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.0880150   0.0639627   0.1120673
6-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.0361613   0.0225058   0.0498169


### Parameter: RR


agecat        studyid      country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  -----------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   COHORTS      INDIA        1                    1                 1.000000   1.0000000   1.000000
0-24 months   COHORTS      INDIA        0                    1                 1.952208   1.5713502   2.425377
0-24 months   MAL-ED       INDIA        1                    1                 1.000000   1.0000000   1.000000
0-24 months   MAL-ED       INDIA        0                    1                 1.296000   0.5491950   3.058324
0-24 months   NIH-Birth    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   NIH-Birth    BANGLADESH   0                    1                 1.492136   0.8181052   2.721497
0-24 months   NIH-Crypto   BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   NIH-Crypto   BANGLADESH   0                    1                 1.685393   0.6515657   4.359577
0-6 months    MAL-ED       INDIA        1                    1                 1.000000   1.0000000   1.000000
0-6 months    MAL-ED       INDIA        0                    1                 1.070000   0.4371800   2.618830
6-24 months   COHORTS      INDIA        1                    1                 1.000000   1.0000000   1.000000
6-24 months   COHORTS      INDIA        0                    1                 1.952208   1.5713502   2.425377
6-24 months   MAL-ED       INDIA        1                    1                 1.000000   1.0000000   1.000000
6-24 months   MAL-ED       INDIA        0                    1                 1.296000   0.5491950   3.058324
6-24 months   NIH-Birth    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   NIH-Birth    BANGLADESH   0                    1                 1.492136   0.8181052   2.721497
6-24 months   NIH-Crypto   BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   NIH-Crypto   BANGLADESH   0                    1                 1.685393   0.6515657   4.359577


### Parameter: PAR


agecat        studyid      country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS      INDIA        1                    NA                0.0371198    0.0262472   0.0479925
0-24 months   MAL-ED       INDIA        1                    NA                0.0117628   -0.0266826   0.0502083
0-24 months   NIH-Birth    BANGLADESH   1                    NA                0.0203821   -0.0086347   0.0493990
0-24 months   NIH-Crypto   BANGLADESH   1                    NA                0.0028280   -0.0033715   0.0090275
0-6 months    MAL-ED       INDIA        1                    NA                0.0028199   -0.0343776   0.0400173
6-24 months   COHORTS      INDIA        1                    NA                0.0371198    0.0262472   0.0479925
6-24 months   MAL-ED       INDIA        1                    NA                0.0117628   -0.0266826   0.0502083
6-24 months   NIH-Birth    BANGLADESH   1                    NA                0.0203821   -0.0086347   0.0493990
6-24 months   NIH-Crypto   BANGLADESH   1                    NA                0.0028280   -0.0033715   0.0090275


### Parameter: PAF


agecat        studyid      country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS      INDIA        1                    NA                0.3708390    0.2577927   0.4666671
0-24 months   MAL-ED       INDIA        1                    NA                0.1370370   -0.4448822   0.4845911
0-24 months   NIH-Birth    BANGLADESH   1                    NA                0.2315757   -0.1721463   0.4962438
0-24 months   NIH-Crypto   BANGLADESH   1                    NA                0.0782051   -0.1073443   0.2326634
0-6 months    MAL-ED       INDIA        1                    NA                0.0363448   -0.5844823   0.4139212
6-24 months   COHORTS      INDIA        1                    NA                0.3708390    0.2577927   0.4666671
6-24 months   MAL-ED       INDIA        1                    NA                0.1370370   -0.4448822   0.4845911
6-24 months   NIH-Birth    BANGLADESH   1                    NA                0.2315757   -0.1721463   0.4962438
6-24 months   NIH-Crypto   BANGLADESH   1                    NA                0.0782051   -0.1073443   0.2326634
