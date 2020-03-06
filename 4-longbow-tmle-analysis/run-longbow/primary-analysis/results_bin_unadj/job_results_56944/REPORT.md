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

**Outcome Variable:** swasted

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

agecat      studyid      country                        impsan    swasted   n_cell      n
----------  -----------  -----------------------------  -------  --------  -------  -----
Birth       COHORTS      GUATEMALA                      1               0       37    449
Birth       COHORTS      GUATEMALA                      1               1        6    449
Birth       COHORTS      GUATEMALA                      0               0      378    449
Birth       COHORTS      GUATEMALA                      0               1       28    449
Birth       COHORTS      INDIA                          1               0     1603   4461
Birth       COHORTS      INDIA                          1               1       82   4461
Birth       COHORTS      INDIA                          0               0     2644   4461
Birth       COHORTS      INDIA                          0               1      132   4461
Birth       COHORTS      PHILIPPINES                    1               0      170   1126
Birth       COHORTS      PHILIPPINES                    1               1        7   1126
Birth       COHORTS      PHILIPPINES                    0               0      914   1126
Birth       COHORTS      PHILIPPINES                    0               1       35   1126
Birth       CONTENT      PERU                           1               0        1      2
Birth       CONTENT      PERU                           1               1        0      2
Birth       CONTENT      PERU                           0               0        1      2
Birth       CONTENT      PERU                           0               1        0      2
Birth       MAL-ED       BANGLADESH                     1               0      161    201
Birth       MAL-ED       BANGLADESH                     1               1        7    201
Birth       MAL-ED       BANGLADESH                     0               0       32    201
Birth       MAL-ED       BANGLADESH                     0               1        1    201
Birth       MAL-ED       BRAZIL                         1               0       56     57
Birth       MAL-ED       BRAZIL                         1               1        0     57
Birth       MAL-ED       BRAZIL                         0               0        1     57
Birth       MAL-ED       BRAZIL                         0               1        0     57
Birth       MAL-ED       INDIA                          1               0       14     39
Birth       MAL-ED       INDIA                          1               1        0     39
Birth       MAL-ED       INDIA                          0               0       25     39
Birth       MAL-ED       INDIA                          0               1        0     39
Birth       MAL-ED       NEPAL                          1               0       23     25
Birth       MAL-ED       NEPAL                          1               1        1     25
Birth       MAL-ED       NEPAL                          0               0        1     25
Birth       MAL-ED       NEPAL                          0               1        0     25
Birth       MAL-ED       PERU                           1               0       50    203
Birth       MAL-ED       PERU                           1               1        0    203
Birth       MAL-ED       PERU                           0               0      153    203
Birth       MAL-ED       PERU                           0               1        0    203
Birth       MAL-ED       SOUTH AFRICA                   1               0        0     94
Birth       MAL-ED       SOUTH AFRICA                   1               1        0     94
Birth       MAL-ED       SOUTH AFRICA                   0               0       94     94
Birth       MAL-ED       SOUTH AFRICA                   0               1        0     94
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0    110
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0    110
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      110    110
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1        0    110
Birth       NIH-Birth    BANGLADESH                     1               0      202    575
Birth       NIH-Birth    BANGLADESH                     1               1       20    575
Birth       NIH-Birth    BANGLADESH                     0               0      335    575
Birth       NIH-Birth    BANGLADESH                     0               1       18    575
Birth       NIH-Crypto   BANGLADESH                     1               0      570    696
Birth       NIH-Crypto   BANGLADESH                     1               1       40    696
Birth       NIH-Crypto   BANGLADESH                     0               0       80    696
Birth       NIH-Crypto   BANGLADESH                     0               1        6    696
Birth       PROVIDE      BANGLADESH                     1               0       41     45
Birth       PROVIDE      BANGLADESH                     1               1        2     45
Birth       PROVIDE      BANGLADESH                     0               0        2     45
Birth       PROVIDE      BANGLADESH                     0               1        0     45
6 months    COHORTS      GUATEMALA                      1               0       67    658
6 months    COHORTS      GUATEMALA                      1               1        0    658
6 months    COHORTS      GUATEMALA                      0               0      586    658
6 months    COHORTS      GUATEMALA                      0               1        5    658
6 months    COHORTS      INDIA                          1               0     1845   4964
6 months    COHORTS      INDIA                          1               1       34   4964
6 months    COHORTS      INDIA                          0               0     2966   4964
6 months    COHORTS      INDIA                          0               1      119   4964
6 months    COHORTS      PHILIPPINES                    1               0      143   1083
6 months    COHORTS      PHILIPPINES                    1               1        0   1083
6 months    COHORTS      PHILIPPINES                    0               0      930   1083
6 months    COHORTS      PHILIPPINES                    0               1       10   1083
6 months    CONTENT      PERU                           1               0      201    215
6 months    CONTENT      PERU                           1               1        0    215
6 months    CONTENT      PERU                           0               0       14    215
6 months    CONTENT      PERU                           0               1        0    215
6 months    LCNI-5       MALAWI                         1               0        3    812
6 months    LCNI-5       MALAWI                         1               1        0    812
6 months    LCNI-5       MALAWI                         0               0      809    812
6 months    LCNI-5       MALAWI                         0               1        0    812
6 months    MAL-ED       BANGLADESH                     1               0      200    240
6 months    MAL-ED       BANGLADESH                     1               1        2    240
6 months    MAL-ED       BANGLADESH                     0               0       38    240
6 months    MAL-ED       BANGLADESH                     0               1        0    240
6 months    MAL-ED       BRAZIL                         1               0      205    209
6 months    MAL-ED       BRAZIL                         1               1        0    209
6 months    MAL-ED       BRAZIL                         0               0        4    209
6 months    MAL-ED       BRAZIL                         0               1        0    209
6 months    MAL-ED       INDIA                          1               0      105    233
6 months    MAL-ED       INDIA                          1               1        3    233
6 months    MAL-ED       INDIA                          0               0      122    233
6 months    MAL-ED       INDIA                          0               1        3    233
6 months    MAL-ED       NEPAL                          1               0      235    236
6 months    MAL-ED       NEPAL                          1               1        0    236
6 months    MAL-ED       NEPAL                          0               0        1    236
6 months    MAL-ED       NEPAL                          0               1        0    236
6 months    MAL-ED       PERU                           1               0       65    263
6 months    MAL-ED       PERU                           1               1        0    263
6 months    MAL-ED       PERU                           0               0      198    263
6 months    MAL-ED       PERU                           0               1        0    263
6 months    MAL-ED       SOUTH AFRICA                   1               0        4    244
6 months    MAL-ED       SOUTH AFRICA                   1               1        0    244
6 months    MAL-ED       SOUTH AFRICA                   0               0      237    244
6 months    MAL-ED       SOUTH AFRICA                   0               1        3    244
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0    238
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0    238
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      238    238
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1        0    238
6 months    NIH-Birth    BANGLADESH                     1               0      203    537
6 months    NIH-Birth    BANGLADESH                     1               1        2    537
6 months    NIH-Birth    BANGLADESH                     0               0      328    537
6 months    NIH-Birth    BANGLADESH                     0               1        4    537
6 months    NIH-Crypto   BANGLADESH                     1               0      615    704
6 months    NIH-Crypto   BANGLADESH                     1               1        0    704
6 months    NIH-Crypto   BANGLADESH                     0               0       89    704
6 months    NIH-Crypto   BANGLADESH                     0               1        0    704
6 months    PROVIDE      BANGLADESH                     1               0       11     11
6 months    PROVIDE      BANGLADESH                     1               1        0     11
6 months    PROVIDE      BANGLADESH                     0               0        0     11
6 months    PROVIDE      BANGLADESH                     0               1        0     11
24 months   COHORTS      GUATEMALA                      1               0       77    903
24 months   COHORTS      GUATEMALA                      1               1        0    903
24 months   COHORTS      GUATEMALA                      0               0      822    903
24 months   COHORTS      GUATEMALA                      0               1        4    903
24 months   COHORTS      INDIA                          1               0     1446   3724
24 months   COHORTS      INDIA                          1               1       11   3724
24 months   COHORTS      INDIA                          0               0     2237   3724
24 months   COHORTS      INDIA                          0               1       30   3724
24 months   COHORTS      PHILIPPINES                    1               0      124    993
24 months   COHORTS      PHILIPPINES                    1               1        0    993
24 months   COHORTS      PHILIPPINES                    0               0      852    993
24 months   COHORTS      PHILIPPINES                    0               1       17    993
24 months   CONTENT      PERU                           1               0      151    164
24 months   CONTENT      PERU                           1               1        0    164
24 months   CONTENT      PERU                           0               0       13    164
24 months   CONTENT      PERU                           0               1        0    164
24 months   LCNI-5       MALAWI                         1               0        2    556
24 months   LCNI-5       MALAWI                         1               1        0    556
24 months   LCNI-5       MALAWI                         0               0      553    556
24 months   LCNI-5       MALAWI                         0               1        1    556
24 months   MAL-ED       BANGLADESH                     1               0      181    212
24 months   MAL-ED       BANGLADESH                     1               1        0    212
24 months   MAL-ED       BANGLADESH                     0               0       31    212
24 months   MAL-ED       BANGLADESH                     0               1        0    212
24 months   MAL-ED       BRAZIL                         1               0      165    169
24 months   MAL-ED       BRAZIL                         1               1        1    169
24 months   MAL-ED       BRAZIL                         0               0        3    169
24 months   MAL-ED       BRAZIL                         0               1        0    169
24 months   MAL-ED       INDIA                          1               0      103    225
24 months   MAL-ED       INDIA                          1               1        1    225
24 months   MAL-ED       INDIA                          0               0      120    225
24 months   MAL-ED       INDIA                          0               1        1    225
24 months   MAL-ED       NEPAL                          1               0      227    228
24 months   MAL-ED       NEPAL                          1               1        0    228
24 months   MAL-ED       NEPAL                          0               0        1    228
24 months   MAL-ED       NEPAL                          0               1        0    228
24 months   MAL-ED       PERU                           1               0       47    196
24 months   MAL-ED       PERU                           1               1        0    196
24 months   MAL-ED       PERU                           0               0      147    196
24 months   MAL-ED       PERU                           0               1        2    196
24 months   MAL-ED       SOUTH AFRICA                   1               0        4    235
24 months   MAL-ED       SOUTH AFRICA                   1               1        0    235
24 months   MAL-ED       SOUTH AFRICA                   0               0      231    235
24 months   MAL-ED       SOUTH AFRICA                   0               1        0    235
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0    207
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0    207
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      207    207
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1        0    207
24 months   NIH-Birth    BANGLADESH                     1               0      168    428
24 months   NIH-Birth    BANGLADESH                     1               1        2    428
24 months   NIH-Birth    BANGLADESH                     0               0      250    428
24 months   NIH-Birth    BANGLADESH                     0               1        8    428
24 months   NIH-Crypto   BANGLADESH                     1               0      429    503
24 months   NIH-Crypto   BANGLADESH                     1               1        4    503
24 months   NIH-Crypto   BANGLADESH                     0               0       70    503
24 months   NIH-Crypto   BANGLADESH                     0               1        0    503
24 months   PROVIDE      BANGLADESH                     1               0        9      9
24 months   PROVIDE      BANGLADESH                     1               1        0      9
24 months   PROVIDE      BANGLADESH                     0               0        0      9
24 months   PROVIDE      BANGLADESH                     0               1        0      9


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
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
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
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
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




# Results Detail

## Results Plots
![](/tmp/25d6aa0a-f54d-4057-bdad-a2af8ec5b3b5/ea2f911d-ba5a-4701-86b6-33831bf13ac5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/25d6aa0a-f54d-4057-bdad-a2af8ec5b3b5/ea2f911d-ba5a-4701-86b6-33831bf13ac5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/25d6aa0a-f54d-4057-bdad-a2af8ec5b3b5/ea2f911d-ba5a-4701-86b6-33831bf13ac5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/25d6aa0a-f54d-4057-bdad-a2af8ec5b3b5/ea2f911d-ba5a-4701-86b6-33831bf13ac5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      GUATEMALA     1                    NA                0.1395349   0.0358522   0.2432175
Birth       COHORTS      GUATEMALA     0                    NA                0.0689655   0.0442899   0.0936411
Birth       COHORTS      INDIA         1                    NA                0.0486647   0.0383900   0.0589394
Birth       COHORTS      INDIA         0                    NA                0.0475504   0.0396330   0.0554679
Birth       COHORTS      PHILIPPINES   1                    NA                0.0395480   0.0108234   0.0682727
Birth       COHORTS      PHILIPPINES   0                    NA                0.0368809   0.0248846   0.0488773
Birth       NIH-Birth    BANGLADESH    1                    NA                0.0900901   0.0523948   0.1277854
Birth       NIH-Birth    BANGLADESH    0                    NA                0.0509915   0.0280235   0.0739595
Birth       NIH-Crypto   BANGLADESH    1                    NA                0.0655738   0.0459161   0.0852315
Birth       NIH-Crypto   BANGLADESH    0                    NA                0.0697674   0.0158867   0.1236481
6 months    COHORTS      INDIA         1                    NA                0.0180947   0.0120672   0.0241223
6 months    COHORTS      INDIA         0                    NA                0.0385737   0.0317775   0.0453700
24 months   COHORTS      INDIA         1                    NA                0.0075498   0.0031045   0.0119950
24 months   COHORTS      INDIA         0                    NA                0.0132333   0.0085287   0.0179379


### Parameter: E(Y)


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      GUATEMALA     NA                   NA                0.0757238   0.0512261   0.1002216
Birth       COHORTS      INDIA         NA                   NA                0.0479713   0.0416994   0.0542432
Birth       COHORTS      PHILIPPINES   NA                   NA                0.0373002   0.0262270   0.0483734
Birth       NIH-Birth    BANGLADESH    NA                   NA                0.0660870   0.0457632   0.0864107
Birth       NIH-Crypto   BANGLADESH    NA                   NA                0.0660920   0.0476213   0.0845626
6 months    COHORTS      INDIA         NA                   NA                0.0308219   0.0260134   0.0356304
24 months   COHORTS      INDIA         NA                   NA                0.0110097   0.0076578   0.0143615


### Parameter: RR


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       COHORTS      GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
Birth       COHORTS      GUATEMALA     0                    1                 0.4942529   0.2166606   1.127505
Birth       COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
Birth       COHORTS      INDIA         0                    1                 0.9771034   0.7467294   1.278550
Birth       COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
Birth       COHORTS      PHILIPPINES   0                    1                 0.9325606   0.4207770   2.066817
Birth       NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       NIH-Birth    BANGLADESH    0                    1                 0.5660057   0.3060721   1.046689
Birth       NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       NIH-Crypto   BANGLADESH    0                    1                 1.0639535   0.4646640   2.436162
6 months    COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
6 months    COHORTS      INDIA         0                    1                 2.1317666   1.4624550   3.107397
24 months   COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
24 months   COHORTS      INDIA         0                    1                 1.7528171   0.8811079   3.486937


### Parameter: PAR


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS      GUATEMALA     1                    NA                -0.0638111   -0.1602019   0.0325798
Birth       COHORTS      INDIA         1                    NA                -0.0006934   -0.0087652   0.0073785
Birth       COHORTS      PHILIPPINES   1                    NA                -0.0022478   -0.0284837   0.0239880
Birth       NIH-Birth    BANGLADESH    1                    NA                -0.0240031   -0.0511468   0.0031406
Birth       NIH-Crypto   BANGLADESH    1                    NA                 0.0005182   -0.0065695   0.0076059
6 months    COHORTS      INDIA         1                    NA                 0.0127272    0.0070749   0.0183794
24 months   COHORTS      INDIA         1                    NA                 0.0034599   -0.0004813   0.0074011


### Parameter: PAF


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    NA                -0.8426813   -2.6359609    0.0661412
Birth       COHORTS      INDIA         1                    NA                -0.0144541   -0.1974665    0.1405880
Birth       COHORTS      PHILIPPINES   1                    NA                -0.0602637   -1.0579534    0.4537490
Birth       NIH-Birth    BANGLADESH    1                    NA                -0.3632053   -0.8257733   -0.0178310
Birth       NIH-Crypto   BANGLADESH    1                    NA                 0.0078403   -0.1053879    0.1094703
6 months    COHORTS      INDIA         1                    NA                 0.4129265    0.2128801    0.5621311
24 months   COHORTS      INDIA         1                    NA                 0.3142608   -0.1343673    0.5854621
