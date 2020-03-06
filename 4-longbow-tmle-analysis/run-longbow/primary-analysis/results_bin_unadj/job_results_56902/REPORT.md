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

**Outcome Variable:** wasted

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

agecat      studyid      country                        impsan    wasted   n_cell      n
----------  -----------  -----------------------------  -------  -------  -------  -----
Birth       COHORTS      GUATEMALA                      1              0       28    449
Birth       COHORTS      GUATEMALA                      1              1       15    449
Birth       COHORTS      GUATEMALA                      0              0      312    449
Birth       COHORTS      GUATEMALA                      0              1       94    449
Birth       COHORTS      INDIA                          1              0     1409   4461
Birth       COHORTS      INDIA                          1              1      276   4461
Birth       COHORTS      INDIA                          0              0     2276   4461
Birth       COHORTS      INDIA                          0              1      500   4461
Birth       COHORTS      PHILIPPINES                    1              0      145   1126
Birth       COHORTS      PHILIPPINES                    1              1       32   1126
Birth       COHORTS      PHILIPPINES                    0              0      814   1126
Birth       COHORTS      PHILIPPINES                    0              1      135   1126
Birth       CONTENT      PERU                           1              0        1      2
Birth       CONTENT      PERU                           1              1        0      2
Birth       CONTENT      PERU                           0              0        1      2
Birth       CONTENT      PERU                           0              1        0      2
Birth       MAL-ED       BANGLADESH                     1              0      138    201
Birth       MAL-ED       BANGLADESH                     1              1       30    201
Birth       MAL-ED       BANGLADESH                     0              0       28    201
Birth       MAL-ED       BANGLADESH                     0              1        5    201
Birth       MAL-ED       BRAZIL                         1              0       54     57
Birth       MAL-ED       BRAZIL                         1              1        2     57
Birth       MAL-ED       BRAZIL                         0              0        1     57
Birth       MAL-ED       BRAZIL                         0              1        0     57
Birth       MAL-ED       INDIA                          1              0       11     39
Birth       MAL-ED       INDIA                          1              1        3     39
Birth       MAL-ED       INDIA                          0              0       23     39
Birth       MAL-ED       INDIA                          0              1        2     39
Birth       MAL-ED       NEPAL                          1              0       22     25
Birth       MAL-ED       NEPAL                          1              1        2     25
Birth       MAL-ED       NEPAL                          0              0        1     25
Birth       MAL-ED       NEPAL                          0              1        0     25
Birth       MAL-ED       PERU                           1              0       50    203
Birth       MAL-ED       PERU                           1              1        0    203
Birth       MAL-ED       PERU                           0              0      149    203
Birth       MAL-ED       PERU                           0              1        4    203
Birth       MAL-ED       SOUTH AFRICA                   1              0        0     94
Birth       MAL-ED       SOUTH AFRICA                   1              1        0     94
Birth       MAL-ED       SOUTH AFRICA                   0              0       84     94
Birth       MAL-ED       SOUTH AFRICA                   0              1       10     94
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0        0    110
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              1        0    110
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              0      109    110
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              1        1    110
Birth       NIH-Birth    BANGLADESH                     1              0      157    575
Birth       NIH-Birth    BANGLADESH                     1              1       65    575
Birth       NIH-Birth    BANGLADESH                     0              0      250    575
Birth       NIH-Birth    BANGLADESH                     0              1      103    575
Birth       NIH-Crypto   BANGLADESH                     1              0      462    696
Birth       NIH-Crypto   BANGLADESH                     1              1      148    696
Birth       NIH-Crypto   BANGLADESH                     0              0       64    696
Birth       NIH-Crypto   BANGLADESH                     0              1       22    696
Birth       PROVIDE      BANGLADESH                     1              0       33     45
Birth       PROVIDE      BANGLADESH                     1              1       10     45
Birth       PROVIDE      BANGLADESH                     0              0        2     45
Birth       PROVIDE      BANGLADESH                     0              1        0     45
6 months    COHORTS      GUATEMALA                      1              0       66    658
6 months    COHORTS      GUATEMALA                      1              1        1    658
6 months    COHORTS      GUATEMALA                      0              0      571    658
6 months    COHORTS      GUATEMALA                      0              1       20    658
6 months    COHORTS      INDIA                          1              0     1697   4964
6 months    COHORTS      INDIA                          1              1      182   4964
6 months    COHORTS      INDIA                          0              0     2614   4964
6 months    COHORTS      INDIA                          0              1      471   4964
6 months    COHORTS      PHILIPPINES                    1              0      140   1083
6 months    COHORTS      PHILIPPINES                    1              1        3   1083
6 months    COHORTS      PHILIPPINES                    0              0      884   1083
6 months    COHORTS      PHILIPPINES                    0              1       56   1083
6 months    CONTENT      PERU                           1              0      201    215
6 months    CONTENT      PERU                           1              1        0    215
6 months    CONTENT      PERU                           0              0       14    215
6 months    CONTENT      PERU                           0              1        0    215
6 months    LCNI-5       MALAWI                         1              0        3    812
6 months    LCNI-5       MALAWI                         1              1        0    812
6 months    LCNI-5       MALAWI                         0              0      795    812
6 months    LCNI-5       MALAWI                         0              1       14    812
6 months    MAL-ED       BANGLADESH                     1              0      194    240
6 months    MAL-ED       BANGLADESH                     1              1        8    240
6 months    MAL-ED       BANGLADESH                     0              0       38    240
6 months    MAL-ED       BANGLADESH                     0              1        0    240
6 months    MAL-ED       BRAZIL                         1              0      204    209
6 months    MAL-ED       BRAZIL                         1              1        1    209
6 months    MAL-ED       BRAZIL                         0              0        4    209
6 months    MAL-ED       BRAZIL                         0              1        0    209
6 months    MAL-ED       INDIA                          1              0       98    233
6 months    MAL-ED       INDIA                          1              1       10    233
6 months    MAL-ED       INDIA                          0              0      117    233
6 months    MAL-ED       INDIA                          0              1        8    233
6 months    MAL-ED       NEPAL                          1              0      231    236
6 months    MAL-ED       NEPAL                          1              1        4    236
6 months    MAL-ED       NEPAL                          0              0        1    236
6 months    MAL-ED       NEPAL                          0              1        0    236
6 months    MAL-ED       PERU                           1              0       65    263
6 months    MAL-ED       PERU                           1              1        0    263
6 months    MAL-ED       PERU                           0              0      198    263
6 months    MAL-ED       PERU                           0              1        0    263
6 months    MAL-ED       SOUTH AFRICA                   1              0        4    244
6 months    MAL-ED       SOUTH AFRICA                   1              1        0    244
6 months    MAL-ED       SOUTH AFRICA                   0              0      233    244
6 months    MAL-ED       SOUTH AFRICA                   0              1        7    244
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0        0    238
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              1        0    238
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              0      237    238
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              1        1    238
6 months    NIH-Birth    BANGLADESH                     1              0      194    537
6 months    NIH-Birth    BANGLADESH                     1              1       11    537
6 months    NIH-Birth    BANGLADESH                     0              0      308    537
6 months    NIH-Birth    BANGLADESH                     0              1       24    537
6 months    NIH-Crypto   BANGLADESH                     1              0      599    704
6 months    NIH-Crypto   BANGLADESH                     1              1       16    704
6 months    NIH-Crypto   BANGLADESH                     0              0       84    704
6 months    NIH-Crypto   BANGLADESH                     0              1        5    704
6 months    PROVIDE      BANGLADESH                     1              0       11     11
6 months    PROVIDE      BANGLADESH                     1              1        0     11
6 months    PROVIDE      BANGLADESH                     0              0        0     11
6 months    PROVIDE      BANGLADESH                     0              1        0     11
24 months   COHORTS      GUATEMALA                      1              0       75    903
24 months   COHORTS      GUATEMALA                      1              1        2    903
24 months   COHORTS      GUATEMALA                      0              0      783    903
24 months   COHORTS      GUATEMALA                      0              1       43    903
24 months   COHORTS      INDIA                          1              0     1366   3724
24 months   COHORTS      INDIA                          1              1       91   3724
24 months   COHORTS      INDIA                          0              0     2002   3724
24 months   COHORTS      INDIA                          0              1      265   3724
24 months   COHORTS      PHILIPPINES                    1              0      118    993
24 months   COHORTS      PHILIPPINES                    1              1        6    993
24 months   COHORTS      PHILIPPINES                    0              0      798    993
24 months   COHORTS      PHILIPPINES                    0              1       71    993
24 months   CONTENT      PERU                           1              0      150    164
24 months   CONTENT      PERU                           1              1        1    164
24 months   CONTENT      PERU                           0              0       13    164
24 months   CONTENT      PERU                           0              1        0    164
24 months   LCNI-5       MALAWI                         1              0        2    556
24 months   LCNI-5       MALAWI                         1              1        0    556
24 months   LCNI-5       MALAWI                         0              0      544    556
24 months   LCNI-5       MALAWI                         0              1       10    556
24 months   MAL-ED       BANGLADESH                     1              0      165    212
24 months   MAL-ED       BANGLADESH                     1              1       16    212
24 months   MAL-ED       BANGLADESH                     0              0       26    212
24 months   MAL-ED       BANGLADESH                     0              1        5    212
24 months   MAL-ED       BRAZIL                         1              0      163    169
24 months   MAL-ED       BRAZIL                         1              1        3    169
24 months   MAL-ED       BRAZIL                         0              0        3    169
24 months   MAL-ED       BRAZIL                         0              1        0    169
24 months   MAL-ED       INDIA                          1              0       93    225
24 months   MAL-ED       INDIA                          1              1       11    225
24 months   MAL-ED       INDIA                          0              0      105    225
24 months   MAL-ED       INDIA                          0              1       16    225
24 months   MAL-ED       NEPAL                          1              0      222    228
24 months   MAL-ED       NEPAL                          1              1        5    228
24 months   MAL-ED       NEPAL                          0              0        1    228
24 months   MAL-ED       NEPAL                          0              1        0    228
24 months   MAL-ED       PERU                           1              0       46    196
24 months   MAL-ED       PERU                           1              1        1    196
24 months   MAL-ED       PERU                           0              0      146    196
24 months   MAL-ED       PERU                           0              1        3    196
24 months   MAL-ED       SOUTH AFRICA                   1              0        4    235
24 months   MAL-ED       SOUTH AFRICA                   1              1        0    235
24 months   MAL-ED       SOUTH AFRICA                   0              0      230    235
24 months   MAL-ED       SOUTH AFRICA                   0              1        1    235
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0        0    207
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              1        0    207
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              0      203    207
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              1        4    207
24 months   NIH-Birth    BANGLADESH                     1              0      155    428
24 months   NIH-Birth    BANGLADESH                     1              1       15    428
24 months   NIH-Birth    BANGLADESH                     0              0      220    428
24 months   NIH-Birth    BANGLADESH                     0              1       38    428
24 months   NIH-Crypto   BANGLADESH                     1              0      392    503
24 months   NIH-Crypto   BANGLADESH                     1              1       41    503
24 months   NIH-Crypto   BANGLADESH                     0              0       66    503
24 months   NIH-Crypto   BANGLADESH                     0              1        4    503
24 months   PROVIDE      BANGLADESH                     1              0        7      9
24 months   PROVIDE      BANGLADESH                     1              1        2      9
24 months   PROVIDE      BANGLADESH                     0              0        0      9
24 months   PROVIDE      BANGLADESH                     0              1        0      9


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
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/76e89d49-af99-4648-955a-8e753a503157/727411ca-4ae4-4b03-a4cb-288c586cc0dc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/76e89d49-af99-4648-955a-8e753a503157/727411ca-4ae4-4b03-a4cb-288c586cc0dc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/76e89d49-af99-4648-955a-8e753a503157/727411ca-4ae4-4b03-a4cb-288c586cc0dc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/76e89d49-af99-4648-955a-8e753a503157/727411ca-4ae4-4b03-a4cb-288c586cc0dc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      GUATEMALA     1                    NA                0.3488372   0.2062258   0.4914486
Birth       COHORTS      GUATEMALA     0                    NA                0.2315271   0.1904514   0.2726027
Birth       COHORTS      INDIA         1                    NA                0.1637982   0.1461254   0.1814711
Birth       COHORTS      INDIA         0                    NA                0.1801153   0.1658185   0.1944121
Birth       COHORTS      PHILIPPINES   1                    NA                0.1807910   0.1240705   0.2375115
Birth       COHORTS      PHILIPPINES   0                    NA                0.1422550   0.1200208   0.1644892
Birth       MAL-ED       BANGLADESH    1                    NA                0.1785714   0.1205127   0.2366301
Birth       MAL-ED       BANGLADESH    0                    NA                0.1515152   0.0288774   0.2741529
Birth       NIH-Birth    BANGLADESH    1                    NA                0.2927928   0.2328823   0.3527033
Birth       NIH-Birth    BANGLADESH    0                    NA                0.2917847   0.2443220   0.3392474
Birth       NIH-Crypto   BANGLADESH    1                    NA                0.2426230   0.2085808   0.2766651
Birth       NIH-Crypto   BANGLADESH    0                    NA                0.2558140   0.1635326   0.3480953
6 months    COHORTS      INDIA         1                    NA                0.0968600   0.0834855   0.1102346
6 months    COHORTS      INDIA         0                    NA                0.1526742   0.1399810   0.1653675
6 months    MAL-ED       INDIA         1                    NA                0.0925926   0.0378079   0.1473773
6 months    MAL-ED       INDIA         0                    NA                0.0640000   0.0210013   0.1069987
6 months    NIH-Birth    BANGLADESH    1                    NA                0.0536585   0.0227827   0.0845344
6 months    NIH-Birth    BANGLADESH    0                    NA                0.0722892   0.0444070   0.1001713
6 months    NIH-Crypto   BANGLADESH    1                    NA                0.0260163   0.0134265   0.0386060
6 months    NIH-Crypto   BANGLADESH    0                    NA                0.0561798   0.0083061   0.1040534
24 months   COHORTS      INDIA         1                    NA                0.0624571   0.0500302   0.0748840
24 months   COHORTS      INDIA         0                    NA                0.1168946   0.1036669   0.1301223
24 months   COHORTS      PHILIPPINES   1                    NA                0.0483871   0.0105994   0.0861748
24 months   COHORTS      PHILIPPINES   0                    NA                0.0817031   0.0634823   0.0999239
24 months   MAL-ED       BANGLADESH    1                    NA                0.0883978   0.0469445   0.1298511
24 months   MAL-ED       BANGLADESH    0                    NA                0.1612903   0.0315115   0.2910692
24 months   MAL-ED       INDIA         1                    NA                0.1057692   0.0465309   0.1650076
24 months   MAL-ED       INDIA         0                    NA                0.1322314   0.0717402   0.1927226
24 months   NIH-Birth    BANGLADESH    1                    NA                0.0882353   0.0455484   0.1309221
24 months   NIH-Birth    BANGLADESH    0                    NA                0.1472868   0.1039926   0.1905810


### Parameter: E(Y)


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      GUATEMALA     NA                   NA                0.2427617   0.2030594   0.2824640
Birth       COHORTS      INDIA         NA                   NA                0.1739520   0.1628271   0.1850770
Birth       COHORTS      PHILIPPINES   NA                   NA                0.1483126   0.1275443   0.1690809
Birth       MAL-ED       BANGLADESH    NA                   NA                0.1741294   0.1215730   0.2266857
Birth       NIH-Birth    BANGLADESH    NA                   NA                0.2921739   0.2549711   0.3293768
Birth       NIH-Crypto   BANGLADESH    NA                   NA                0.2442529   0.2123108   0.2761950
6 months    COHORTS      INDIA         NA                   NA                0.1315471   0.1221436   0.1409506
6 months    MAL-ED       INDIA         NA                   NA                0.0772532   0.0428971   0.1116093
6 months    NIH-Birth    BANGLADESH    NA                   NA                0.0651769   0.0442802   0.0860736
6 months    NIH-Crypto   BANGLADESH    NA                   NA                0.0298295   0.0172543   0.0424048
24 months   COHORTS      INDIA         NA                   NA                0.0955961   0.0861511   0.1050412
24 months   COHORTS      PHILIPPINES   NA                   NA                0.0775428   0.0608996   0.0941860
24 months   MAL-ED       BANGLADESH    NA                   NA                0.0990566   0.0587480   0.1393652
24 months   MAL-ED       INDIA         NA                   NA                0.1200000   0.0774445   0.1625555
24 months   NIH-Birth    BANGLADESH    NA                   NA                0.1238318   0.0925894   0.1550741


### Parameter: RR


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       COHORTS      GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
Birth       COHORTS      GUATEMALA     0                    1                 0.6637110   0.4250437   1.036393
Birth       COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
Birth       COHORTS      INDIA         0                    1                 1.0996168   0.9617654   1.257227
Birth       COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
Birth       COHORTS      PHILIPPINES   0                    1                 0.7868480   0.5541984   1.117163
Birth       MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       MAL-ED       BANGLADESH    0                    1                 0.8484848   0.3546686   2.029857
Birth       NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       NIH-Birth    BANGLADESH    0                    1                 0.9965570   0.7673251   1.294270
Birth       NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       NIH-Crypto   BANGLADESH    0                    1                 1.0543683   0.7159675   1.552714
6 months    COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
6 months    COHORTS      INDIA         0                    1                 1.5762356   1.3415974   1.851911
6 months    MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6 months    MAL-ED       INDIA         0                    1                 0.6912000   0.2823598   1.692017
6 months    NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    NIH-Birth    BANGLADESH    0                    1                 1.3472070   0.6738877   2.693278
6 months    NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    NIH-Crypto   BANGLADESH    0                    1                 2.1594101   0.8104761   5.753473
24 months   COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
24 months   COHORTS      INDIA         0                    1                 1.8715977   1.4886914   2.352991
24 months   COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
24 months   COHORTS      PHILIPPINES   0                    1                 1.6885309   0.7495319   3.803889
24 months   MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED       BANGLADESH    0                    1                 1.8245968   0.7189612   4.630505
24 months   MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED       INDIA         0                    1                 1.2501878   0.6066144   2.576545
24 months   NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   NIH-Birth    BANGLADESH    0                    1                 1.6692506   0.9477079   2.940144


### Parameter: PAR


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS      GUATEMALA     1                    NA                -0.1060755   -0.2403097   0.0281586
Birth       COHORTS      INDIA         1                    NA                 0.0101538   -0.0039936   0.0243012
Birth       COHORTS      PHILIPPINES   1                    NA                -0.0324783   -0.0838309   0.0188742
Birth       MAL-ED       BANGLADESH    1                    NA                -0.0044421   -0.0267622   0.0178781
Birth       NIH-Birth    BANGLADESH    1                    NA                -0.0006189   -0.0475420   0.0463043
Birth       NIH-Crypto   BANGLADESH    1                    NA                 0.0016299   -0.0105281   0.0137879
6 months    COHORTS      INDIA         1                    NA                 0.0346871    0.0232030   0.0461712
6 months    MAL-ED       INDIA         1                    NA                -0.0153394   -0.0527469   0.0220682
6 months    NIH-Birth    BANGLADESH    1                    NA                 0.0115184   -0.0142135   0.0372503
6 months    NIH-Crypto   BANGLADESH    1                    NA                 0.0038133   -0.0024884   0.0101150
24 months   COHORTS      INDIA         1                    NA                 0.0331390    0.0220576   0.0442204
24 months   COHORTS      PHILIPPINES   1                    NA                 0.0291557   -0.0075634   0.0658748
24 months   MAL-ED       BANGLADESH    1                    NA                 0.0106588   -0.0095637   0.0308813
24 months   MAL-ED       INDIA         1                    NA                 0.0142308   -0.0313336   0.0597951
24 months   NIH-Birth    BANGLADESH    1                    NA                 0.0355965   -0.0011559   0.0723489


### Parameter: PAF


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS      GUATEMALA     1                    NA                -0.4369533   -1.1108206   0.0217858
Birth       COHORTS      INDIA         1                    NA                 0.0583713   -0.0265173   0.1362400
Birth       COHORTS      PHILIPPINES   1                    NA                -0.2189858   -0.6183730   0.0818394
Birth       MAL-ED       BANGLADESH    1                    NA                -0.0255102   -0.1618982   0.0948681
Birth       NIH-Birth    BANGLADESH    1                    NA                -0.0021182   -0.1763030   0.1462737
Birth       NIH-Crypto   BANGLADESH    1                    NA                 0.0066731   -0.0443685   0.0552201
6 months    COHORTS      INDIA         1                    NA                 0.2636858    0.1727941   0.3445905
6 months    MAL-ED       INDIA         1                    NA                -0.1985597   -0.7855318   0.1954524
6 months    NIH-Birth    BANGLADESH    1                    NA                 0.1767247   -0.3240464   0.4880979
6 months    NIH-Crypto   BANGLADESH    1                    NA                 0.1278358   -0.1028159   0.3102472
24 months   COHORTS      INDIA         1                    NA                 0.3466566    0.2251094   0.4491382
24 months   COHORTS      PHILIPPINES   1                    NA                 0.3759950   -0.3196083   0.7049259
24 months   MAL-ED       BANGLADESH    1                    NA                 0.1076033   -0.1170077   0.2870488
24 months   MAL-ED       INDIA         1                    NA                 0.1185897   -0.3533005   0.4259338
24 months   NIH-Birth    BANGLADESH    1                    NA                 0.2874584   -0.0698917   0.5254514
