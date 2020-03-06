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

**Intervention Variable:** impsan

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid      country                        impsan    n_cell      n
----------  -----------  -----------------------------  -------  -------  -----
Birth       COHORTS      GUATEMALA                      1             43    449
Birth       COHORTS      GUATEMALA                      0            406    449
Birth       COHORTS      INDIA                          1           1685   4461
Birth       COHORTS      INDIA                          0           2776   4461
Birth       COHORTS      PHILIPPINES                    1            177   1126
Birth       COHORTS      PHILIPPINES                    0            949   1126
Birth       CONTENT      PERU                           1              1      2
Birth       CONTENT      PERU                           0              1      2
Birth       MAL-ED       BANGLADESH                     1            168    201
Birth       MAL-ED       BANGLADESH                     0             33    201
Birth       MAL-ED       BRAZIL                         1             56     57
Birth       MAL-ED       BRAZIL                         0              1     57
Birth       MAL-ED       INDIA                          1             14     39
Birth       MAL-ED       INDIA                          0             25     39
Birth       MAL-ED       NEPAL                          1             24     25
Birth       MAL-ED       NEPAL                          0              1     25
Birth       MAL-ED       PERU                           1             50    203
Birth       MAL-ED       PERU                           0            153    203
Birth       MAL-ED       SOUTH AFRICA                   1              0     94
Birth       MAL-ED       SOUTH AFRICA                   0             94     94
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0    110
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            110    110
Birth       NIH-Birth    BANGLADESH                     1            222    575
Birth       NIH-Birth    BANGLADESH                     0            353    575
Birth       NIH-Crypto   BANGLADESH                     1            610    696
Birth       NIH-Crypto   BANGLADESH                     0             86    696
Birth       PROVIDE      BANGLADESH                     1             43     45
Birth       PROVIDE      BANGLADESH                     0              2     45
6 months    COHORTS      GUATEMALA                      1             67    658
6 months    COHORTS      GUATEMALA                      0            591    658
6 months    COHORTS      INDIA                          1           1879   4964
6 months    COHORTS      INDIA                          0           3085   4964
6 months    COHORTS      PHILIPPINES                    1            143   1083
6 months    COHORTS      PHILIPPINES                    0            940   1083
6 months    CONTENT      PERU                           1            201    215
6 months    CONTENT      PERU                           0             14    215
6 months    LCNI-5       MALAWI                         1              3    812
6 months    LCNI-5       MALAWI                         0            809    812
6 months    MAL-ED       BANGLADESH                     1            202    240
6 months    MAL-ED       BANGLADESH                     0             38    240
6 months    MAL-ED       BRAZIL                         1            205    209
6 months    MAL-ED       BRAZIL                         0              4    209
6 months    MAL-ED       INDIA                          1            108    233
6 months    MAL-ED       INDIA                          0            125    233
6 months    MAL-ED       NEPAL                          1            235    236
6 months    MAL-ED       NEPAL                          0              1    236
6 months    MAL-ED       PERU                           1             65    263
6 months    MAL-ED       PERU                           0            198    263
6 months    MAL-ED       SOUTH AFRICA                   1              4    244
6 months    MAL-ED       SOUTH AFRICA                   0            240    244
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0    238
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            238    238
6 months    NIH-Birth    BANGLADESH                     1            205    537
6 months    NIH-Birth    BANGLADESH                     0            332    537
6 months    NIH-Crypto   BANGLADESH                     1            615    704
6 months    NIH-Crypto   BANGLADESH                     0             89    704
6 months    PROVIDE      BANGLADESH                     1             11     11
6 months    PROVIDE      BANGLADESH                     0              0     11
24 months   COHORTS      GUATEMALA                      1             77    903
24 months   COHORTS      GUATEMALA                      0            826    903
24 months   COHORTS      INDIA                          1           1457   3724
24 months   COHORTS      INDIA                          0           2267   3724
24 months   COHORTS      PHILIPPINES                    1            124    993
24 months   COHORTS      PHILIPPINES                    0            869    993
24 months   CONTENT      PERU                           1            151    164
24 months   CONTENT      PERU                           0             13    164
24 months   LCNI-5       MALAWI                         1              2    556
24 months   LCNI-5       MALAWI                         0            554    556
24 months   MAL-ED       BANGLADESH                     1            181    212
24 months   MAL-ED       BANGLADESH                     0             31    212
24 months   MAL-ED       BRAZIL                         1            166    169
24 months   MAL-ED       BRAZIL                         0              3    169
24 months   MAL-ED       INDIA                          1            104    225
24 months   MAL-ED       INDIA                          0            121    225
24 months   MAL-ED       NEPAL                          1            227    228
24 months   MAL-ED       NEPAL                          0              1    228
24 months   MAL-ED       PERU                           1             47    196
24 months   MAL-ED       PERU                           0            149    196
24 months   MAL-ED       SOUTH AFRICA                   1              4    235
24 months   MAL-ED       SOUTH AFRICA                   0            231    235
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0    207
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            207    207
24 months   NIH-Birth    BANGLADESH                     1            170    428
24 months   NIH-Birth    BANGLADESH                     0            258    428
24 months   NIH-Crypto   BANGLADESH                     1            433    503
24 months   NIH-Crypto   BANGLADESH                     0             70    503
24 months   PROVIDE      BANGLADESH                     1              9      9
24 months   PROVIDE      BANGLADESH                     0              0      9


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH

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
![](/tmp/780f20ed-1693-4f12-84f1-2a976f2f123d/b6ed500e-36e3-490a-9d10-28bde97b109c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/780f20ed-1693-4f12-84f1-2a976f2f123d/b6ed500e-36e3-490a-9d10-28bde97b109c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/780f20ed-1693-4f12-84f1-2a976f2f123d/b6ed500e-36e3-490a-9d10-28bde97b109c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    NA                -1.2097674   -1.7770248   -0.6425100
Birth       COHORTS      GUATEMALA     0                    NA                -0.8997537   -1.0430165   -0.7564909
Birth       COHORTS      INDIA         1                    NA                -0.9326588   -0.9904202   -0.8748973
Birth       COHORTS      INDIA         0                    NA                -1.0041931   -1.0477639   -0.9606223
Birth       COHORTS      PHILIPPINES   1                    NA                -0.9272881   -1.1054546   -0.7491217
Birth       COHORTS      PHILIPPINES   0                    NA                -0.6387460   -0.7199134   -0.5575787
Birth       MAL-ED       BANGLADESH    1                    NA                -0.9860714   -1.1483728   -0.8237701
Birth       MAL-ED       BANGLADESH    0                    NA                -0.9054545   -1.2780195   -0.5328896
Birth       MAL-ED       INDIA         1                    NA                -1.0957143   -1.5806679   -0.6107607
Birth       MAL-ED       INDIA         0                    NA                -0.8592000   -1.2277862   -0.4906138
Birth       MAL-ED       PERU          1                    NA                -0.1942000   -0.4103377    0.0219377
Birth       MAL-ED       PERU          0                    NA                 0.0128758   -0.1419629    0.1677145
Birth       NIH-Birth    BANGLADESH    1                    NA                -1.3499775   -1.5129665   -1.1869884
Birth       NIH-Birth    BANGLADESH    0                    NA                -1.3498867   -1.4648156   -1.2349577
Birth       NIH-Crypto   BANGLADESH    1                    NA                -1.2254508   -1.3148701   -1.1360316
Birth       NIH-Crypto   BANGLADESH    0                    NA                -1.3454651   -1.6035142   -1.0874160
6 months    COHORTS      GUATEMALA     1                    NA                 0.1889552   -0.0603936    0.4383041
6 months    COHORTS      GUATEMALA     0                    NA                 0.1409645    0.0484498    0.2334792
6 months    COHORTS      INDIA         1                    NA                -0.5374029   -0.5878113   -0.4869945
6 months    COHORTS      INDIA         0                    NA                -0.8159060   -0.8574428   -0.7743692
6 months    COHORTS      PHILIPPINES   1                    NA                -0.2241958   -0.3741126   -0.0742790
6 months    COHORTS      PHILIPPINES   0                    NA                -0.2919787   -0.3621714   -0.2217860
6 months    CONTENT      PERU          1                    NA                 1.0727189    0.9498079    1.1956299
6 months    CONTENT      PERU          0                    NA                 0.9453929    0.5695892    1.3211965
6 months    MAL-ED       BANGLADESH    1                    NA                -0.1267987   -0.2675787    0.0139814
6 months    MAL-ED       BANGLADESH    0                    NA                -0.1680702   -0.4906416    0.1545012
6 months    MAL-ED       INDIA         1                    NA                -0.6708642   -0.8524306   -0.4892978
6 months    MAL-ED       INDIA         0                    NA                -0.7285400   -0.9061236   -0.5509564
6 months    MAL-ED       PERU          1                    NA                 1.0767179    0.8529374    1.3004985
6 months    MAL-ED       PERU          0                    NA                 1.0243561    0.8781934    1.1705187
6 months    NIH-Birth    BANGLADESH    1                    NA                -0.3295000   -0.4693880   -0.1896120
6 months    NIH-Birth    BANGLADESH    0                    NA                -0.5202058   -0.6375273   -0.4028844
6 months    NIH-Crypto   BANGLADESH    1                    NA                 0.0387398   -0.0450978    0.1225775
6 months    NIH-Crypto   BANGLADESH    0                    NA                -0.0012921   -0.2470796    0.2444953
24 months   COHORTS      GUATEMALA     1                    NA                -0.1564935   -0.3517559    0.0387688
24 months   COHORTS      GUATEMALA     0                    NA                -0.2982809   -0.3611991   -0.2353627
24 months   COHORTS      INDIA         1                    NA                -0.4907687   -0.5439126   -0.4376248
24 months   COHORTS      INDIA         0                    NA                -0.7698941   -0.8116988   -0.7280895
24 months   COHORTS      PHILIPPINES   1                    NA                -0.4527419   -0.6040816   -0.3014023
24 months   COHORTS      PHILIPPINES   0                    NA                -0.6854776   -0.7479453   -0.6230098
24 months   CONTENT      PERU          1                    NA                 0.5809272    0.4381190    0.7237353
24 months   CONTENT      PERU          0                    NA                 0.6984615    0.3635612    1.0333619
24 months   MAL-ED       BANGLADESH    1                    NA                -0.7747238   -0.9066216   -0.6428259
24 months   MAL-ED       BANGLADESH    0                    NA                -1.0795161   -1.3842300   -0.7748023
24 months   MAL-ED       INDIA         1                    NA                -0.8194231   -0.9988466   -0.6399996
24 months   MAL-ED       INDIA         0                    NA                -1.0604132   -1.2087690   -0.9120575
24 months   MAL-ED       PERU          1                    NA                 0.1565603   -0.0871381    0.4002587
24 months   MAL-ED       PERU          0                    NA                 0.0785291   -0.0657249    0.2227830
24 months   NIH-Birth    BANGLADESH    1                    NA                -0.8179853   -0.9643157   -0.6716549
24 months   NIH-Birth    BANGLADESH    0                    NA                -0.9732494   -1.1034383   -0.8430604
24 months   NIH-Crypto   BANGLADESH    1                    NA                -0.6247113   -0.7300064   -0.5194162
24 months   NIH-Crypto   BANGLADESH    0                    NA                -0.5302857   -0.7567763   -0.3037952


### Parameter: E(Y)


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     NA                   NA                -0.9294432   -1.0701697   -0.7887168
Birth       COHORTS      INDIA         NA                   NA                -0.9771733   -1.0119896   -0.9423570
Birth       COHORTS      PHILIPPINES   NA                   NA                -0.6841030   -0.7582767   -0.6099293
Birth       MAL-ED       BANGLADESH    NA                   NA                -0.9728358   -1.1217009   -0.8239707
Birth       MAL-ED       INDIA         NA                   NA                -0.9441026   -1.2397919   -0.6484132
Birth       MAL-ED       PERU          NA                   NA                -0.0381281   -0.1669868    0.0907307
Birth       NIH-Birth    BANGLADESH    NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto   BANGLADESH    NA                   NA                -1.2402802   -1.3249395   -1.1556208
6 months    COHORTS      GUATEMALA     NA                   NA                 0.1458511    0.0589571    0.2327450
6 months    COHORTS      INDIA         NA                   NA                -0.7104855   -0.7428053   -0.6781657
6 months    COHORTS      PHILIPPINES   NA                   NA                -0.2830286   -0.3471028   -0.2189545
6 months    CONTENT      PERU          NA                   NA                 1.0644279    0.9468682    1.1819876
6 months    MAL-ED       BANGLADESH    NA                   NA                -0.1333333   -0.2623761   -0.0042906
6 months    MAL-ED       INDIA         NA                   NA                -0.7018062   -0.8289790   -0.5746333
6 months    MAL-ED       PERU          NA                   NA                 1.0372972    0.9141109    1.1604836
6 months    NIH-Birth    BANGLADESH    NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto   BANGLADESH    NA                   NA                 0.0336790   -0.0458848    0.1132428
24 months   COHORTS      GUATEMALA     NA                   NA                -0.2861905   -0.3461594   -0.2262216
24 months   COHORTS      INDIA         NA                   NA                -0.6606874   -0.6938402   -0.6275347
24 months   COHORTS      PHILIPPINES   NA                   NA                -0.6564149   -0.7144543   -0.5983756
24 months   CONTENT      PERU          NA                   NA                 0.5902439    0.4560143    0.7244735
24 months   MAL-ED       BANGLADESH    NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED       INDIA         NA                   NA                -0.9490222   -1.0651720   -0.8328724
24 months   MAL-ED       PERU          NA                   NA                 0.0972406   -0.0271085    0.2215898
24 months   NIH-Birth    BANGLADESH    NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto   BANGLADESH    NA                   NA                -0.6115706   -0.7075788   -0.5155624


### Parameter: ATE


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS      GUATEMALA     0                    1                  0.3100137   -0.2750548    0.8950823
Birth       COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS      INDIA         0                    1                 -0.0715343   -0.1438862    0.0008176
Birth       COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS      PHILIPPINES   0                    1                  0.2885421    0.0927580    0.4843262
Birth       MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       BANGLADESH    0                    1                  0.0806169   -0.3257652    0.4869990
Birth       MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       INDIA         0                    1                  0.2365143   -0.3726128    0.8456413
Birth       MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU          0                    1                  0.2070758   -0.0588010    0.4729527
Birth       NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH    0                    1                  0.0000908   -0.1993436    0.1995252
Birth       NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH    0                    1                 -0.1200143   -0.3931171    0.1530885
6 months    COHORTS      GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      GUATEMALA     0                    1                 -0.0479908   -0.3139491    0.2179675
6 months    COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      INDIA         0                    1                 -0.2785031   -0.3438202   -0.2131861
6 months    COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      PHILIPPINES   0                    1                 -0.0677829   -0.2333186    0.0977527
6 months    CONTENT      PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    CONTENT      PERU          0                    1                 -0.1273260   -0.5227189    0.2680668
6 months    MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BANGLADESH    0                    1                 -0.0412715   -0.3932251    0.3106821
6 months    MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA         0                    1                 -0.0576758   -0.3116488    0.1962972
6 months    MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU          0                    1                 -0.0523619   -0.3196468    0.2149231
6 months    NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH    0                    1                 -0.1907058   -0.3732790   -0.0081326
6 months    NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH    0                    1                 -0.0400320   -0.2997245    0.2196606
24 months   COHORTS      GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      GUATEMALA     0                    1                 -0.1417874   -0.3469363    0.0633616
24 months   COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      INDIA         0                    1                 -0.2791254   -0.3467413   -0.2115096
24 months   COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      PHILIPPINES   0                    1                 -0.2327356   -0.3964607   -0.0690105
24 months   CONTENT      PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   CONTENT      PERU          0                    1                  0.1175344   -0.2465431    0.4816118
24 months   MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BANGLADESH    0                    1                 -0.3047924   -0.6368279    0.0272431
24 months   MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA         0                    1                 -0.2409901   -0.4738038   -0.0081765
24 months   MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU          0                    1                 -0.0780312   -0.3612239    0.2051615
24 months   NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH    0                    1                 -0.1552641   -0.3511256    0.0405975
24 months   NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH    0                    1                  0.0944256   -0.1553443    0.3441955


### Parameter: PAR


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    NA                 0.2803242   -0.2487807    0.8094292
Birth       COHORTS      INDIA         1                    NA                -0.0445145   -0.0895493    0.0005203
Birth       COHORTS      PHILIPPINES   1                    NA                 0.2431851    0.0780629    0.4083073
Birth       MAL-ED       BANGLADESH    1                    NA                 0.0132356   -0.0536121    0.0800833
Birth       MAL-ED       INDIA         1                    NA                 0.1516117   -0.2405171    0.5437405
Birth       MAL-ED       PERU          1                    NA                 0.1560719   -0.0446954    0.3568392
Birth       NIH-Birth    BANGLADESH    1                    NA                 0.0000557   -0.1223797    0.1224911
Birth       NIH-Crypto   BANGLADESH    1                    NA                -0.0148294   -0.0487023    0.0190436
6 months    COHORTS      GUATEMALA     1                    NA                -0.0431042   -0.2819842    0.1957759
6 months    COHORTS      INDIA         1                    NA                -0.1730826   -0.2138491   -0.1323162
6 months    COHORTS      PHILIPPINES   1                    NA                -0.0588328   -0.2025175    0.0848519
6 months    CONTENT      PERU          1                    NA                -0.0082910   -0.0343793    0.0177973
6 months    MAL-ED       BANGLADESH    1                    NA                -0.0065347   -0.0622934    0.0492241
6 months    MAL-ED       INDIA         1                    NA                -0.0309420   -0.1672438    0.1053599
6 months    MAL-ED       PERU          1                    NA                -0.0394207   -0.2406652    0.1618238
6 months    NIH-Birth    BANGLADESH    1                    NA                -0.1179038   -0.2310518   -0.0047558
6 months    NIH-Crypto   BANGLADESH    1                    NA                -0.0050609   -0.0379060    0.0277843
24 months   COHORTS      GUATEMALA     1                    NA                -0.1296970   -0.3173704    0.0579764
24 months   COHORTS      INDIA         1                    NA                -0.1699187   -0.2113121   -0.1285254
24 months   COHORTS      PHILIPPINES   1                    NA                -0.2036730   -0.3470330   -0.0603129
24 months   CONTENT      PERU          1                    NA                 0.0093168   -0.0199518    0.0385853
24 months   MAL-ED       BANGLADESH    1                    NA                -0.0445687   -0.0952489    0.0061115
24 months   MAL-ED       INDIA         1                    NA                -0.1295991   -0.2557860   -0.0034123
24 months   MAL-ED       PERU          1                    NA                -0.0593196   -0.2746547    0.1560154
24 months   NIH-Birth    BANGLADESH    1                    NA                -0.0935938   -0.2118795    0.0246920
24 months   NIH-Crypto   BANGLADESH    1                    NA                 0.0131407   -0.0217359    0.0480174
