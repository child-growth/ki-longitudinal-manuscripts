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
Birth       COHORTS      GUATEMALA                      1             45    491
Birth       COHORTS      GUATEMALA                      0            446    491
Birth       COHORTS      INDIA                          1           1767   4776
Birth       COHORTS      INDIA                          0           3009   4776
Birth       COHORTS      PHILIPPINES                    1            178   1191
Birth       COHORTS      PHILIPPINES                    0           1013   1191
Birth       CONTENT      PERU                           1              1      2
Birth       CONTENT      PERU                           0              1      2
Birth       MAL-ED       BANGLADESH                     1            179    213
Birth       MAL-ED       BANGLADESH                     0             34    213
Birth       MAL-ED       BRAZIL                         1             59     60
Birth       MAL-ED       BRAZIL                         0              1     60
Birth       MAL-ED       INDIA                          1             15     40
Birth       MAL-ED       INDIA                          0             25     40
Birth       MAL-ED       NEPAL                          1             25     26
Birth       MAL-ED       NEPAL                          0              1     26
Birth       MAL-ED       PERU                           1             52    208
Birth       MAL-ED       PERU                           0            156    208
Birth       MAL-ED       SOUTH AFRICA                   1              0     95
Birth       MAL-ED       SOUTH AFRICA                   0             95     95
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0    118
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            118    118
Birth       NIH-Birth    BANGLADESH                     1            231    608
Birth       NIH-Birth    BANGLADESH                     0            377    608
Birth       NIH-Crypto   BANGLADESH                     1            632    721
Birth       NIH-Crypto   BANGLADESH                     0             89    721
Birth       PROVIDE      BANGLADESH                     1             43     45
Birth       PROVIDE      BANGLADESH                     0              2     45
6 months    COHORTS      GUATEMALA                      1             67    658
6 months    COHORTS      GUATEMALA                      0            591    658
6 months    COHORTS      INDIA                          1           1881   4971
6 months    COHORTS      INDIA                          0           3090   4971
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
24 months   COHORTS      GUATEMALA                      1             77    893
24 months   COHORTS      GUATEMALA                      0            816    893
24 months   COHORTS      INDIA                          1           1471   3751
24 months   COHORTS      INDIA                          0           2280   3751
24 months   COHORTS      PHILIPPINES                    1            126    990
24 months   COHORTS      PHILIPPINES                    0            864    990
24 months   CONTENT      PERU                           1            151    164
24 months   CONTENT      PERU                           0             13    164
24 months   LCNI-5       MALAWI                         1              2    572
24 months   LCNI-5       MALAWI                         0            570    572
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
24 months   NIH-Birth    BANGLADESH                     1            170    429
24 months   NIH-Birth    BANGLADESH                     0            259    429
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
![](/tmp/bbd6f28e-b643-4b4c-9adf-8d030ec93fb1/fc4904ce-bd56-43fc-a94e-4626b544aa7a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bbd6f28e-b643-4b4c-9adf-8d030ec93fb1/fc4904ce-bd56-43fc-a94e-4626b544aa7a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/bbd6f28e-b643-4b4c-9adf-8d030ec93fb1/fc4904ce-bd56-43fc-a94e-4626b544aa7a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    NA                 0.0140000   -0.3450346    0.3730346
Birth       COHORTS      GUATEMALA     0                    NA                -0.0317265   -0.1454192    0.0819663
Birth       COHORTS      INDIA         1                    NA                -0.4914658   -0.5448741   -0.4380574
Birth       COHORTS      INDIA         0                    NA                -0.7870821   -0.8283252   -0.7458390
Birth       COHORTS      PHILIPPINES   1                    NA                 0.0435393   -0.0987359    0.1858146
Birth       COHORTS      PHILIPPINES   0                    NA                -0.3765153   -0.4451537   -0.3078769
Birth       MAL-ED       BANGLADESH    1                    NA                -1.0526257   -1.2029283   -0.9023231
Birth       MAL-ED       BANGLADESH    0                    NA                -1.0552941   -1.3803733   -0.7302149
Birth       MAL-ED       INDIA         1                    NA                -1.0266667   -1.5999108   -0.4534225
Birth       MAL-ED       INDIA         0                    NA                -1.2040000   -1.5243954   -0.8836046
Birth       MAL-ED       PERU          1                    NA                -0.8467308   -1.1029994   -0.5904622
Birth       MAL-ED       PERU          0                    NA                -0.9353205   -1.0703392   -0.8003018
Birth       NIH-Birth    BANGLADESH    1                    NA                -0.8387662   -0.9904115   -0.6871209
Birth       NIH-Birth    BANGLADESH    0                    NA                -0.9875464   -1.0959553   -0.8791375
Birth       NIH-Crypto   BANGLADESH    1                    NA                -0.9088608   -0.9838653   -0.8338562
Birth       NIH-Crypto   BANGLADESH    0                    NA                -0.9432584   -1.1826640   -0.7038529
6 months    COHORTS      GUATEMALA     1                    NA                -1.6874627   -1.9137285   -1.4611969
6 months    COHORTS      GUATEMALA     0                    NA                -1.9006261   -1.9881552   -1.8130969
6 months    COHORTS      INDIA         1                    NA                -0.7542743   -0.8056832   -0.7028654
6 months    COHORTS      INDIA         0                    NA                -1.2162524   -1.2572688   -1.1752361
6 months    COHORTS      PHILIPPINES   1                    NA                -0.6306993   -0.8028673   -0.4585313
6 months    COHORTS      PHILIPPINES   0                    NA                -1.2800319   -1.3505196   -1.2095442
6 months    CONTENT      PERU          1                    NA                -0.2511642   -0.3854795   -0.1168488
6 months    CONTENT      PERU          0                    NA                -0.6713571   -1.2232977   -0.1194166
6 months    MAL-ED       BANGLADESH    1                    NA                -1.2035726   -1.3352035   -1.0719417
6 months    MAL-ED       BANGLADESH    0                    NA                -1.1979386   -1.4474372   -0.9484400
6 months    MAL-ED       INDIA         1                    NA                -1.1986574   -1.3652549   -1.0320599
6 months    MAL-ED       INDIA         0                    NA                -1.2174267   -1.3874425   -1.0474108
6 months    MAL-ED       PERU          1                    NA                -1.3688205   -1.5979310   -1.1397100
6 months    MAL-ED       PERU          0                    NA                -1.3034722   -1.4282605   -1.1786840
6 months    NIH-Birth    BANGLADESH    1                    NA                -1.2924553   -1.4351827   -1.1497279
6 months    NIH-Birth    BANGLADESH    0                    NA                -1.4783459   -1.5908332   -1.3658586
6 months    NIH-Crypto   BANGLADESH    1                    NA                -1.2126829   -1.2888615   -1.1365043
6 months    NIH-Crypto   BANGLADESH    0                    NA                -1.1369101   -1.3508747   -0.9229455
24 months   COHORTS      GUATEMALA     1                    NA                -2.7423377   -2.9712843   -2.5133910
24 months   COHORTS      GUATEMALA     0                    NA                -3.0298775   -3.1040020   -2.9557529
24 months   COHORTS      INDIA         1                    NA                -1.7996329   -1.8596850   -1.7395808
24 months   COHORTS      INDIA         0                    NA                -2.4791404   -2.5275812   -2.4306995
24 months   COHORTS      PHILIPPINES   1                    NA                -1.6802381   -1.8437996   -1.5166765
24 months   COHORTS      PHILIPPINES   0                    NA                -2.7269792   -2.7984300   -2.6555284
24 months   CONTENT      PERU          1                    NA                -0.6409603   -0.8000011   -0.4819194
24 months   CONTENT      PERU          0                    NA                -1.2200000   -1.6347170   -0.8052830
24 months   MAL-ED       BANGLADESH    1                    NA                -1.9763812   -2.1159002   -1.8368622
24 months   MAL-ED       BANGLADESH    0                    NA                -1.9901613   -2.2838591   -1.6964635
24 months   MAL-ED       INDIA         1                    NA                -1.7666346   -1.9354118   -1.5978575
24 months   MAL-ED       INDIA         0                    NA                -1.9736364   -2.1543797   -1.7928930
24 months   MAL-ED       PERU          1                    NA                -1.7320213   -1.9673298   -1.4967127
24 months   MAL-ED       PERU          0                    NA                -1.7603020   -1.9034269   -1.6171771
24 months   NIH-Birth    BANGLADESH    1                    NA                -2.0677843   -2.2398347   -1.8957339
24 months   NIH-Birth    BANGLADESH    0                    NA                -2.3183494   -2.4440778   -2.1926210
24 months   NIH-Crypto   BANGLADESH    1                    NA                -1.4479908   -1.5402265   -1.3557550
24 months   NIH-Crypto   BANGLADESH    0                    NA                -1.4028571   -1.6140474   -1.1916669


### Parameter: E(Y)


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     NA                   NA                -0.0275356   -0.1359303    0.0808590
Birth       COHORTS      INDIA         NA                   NA                -0.6777115   -0.7106054   -0.6448175
Birth       COHORTS      PHILIPPINES   NA                   NA                -0.3137364   -0.3764483   -0.2510244
Birth       MAL-ED       BANGLADESH    NA                   NA                -1.0530516   -1.1896058   -0.9164975
Birth       MAL-ED       INDIA         NA                   NA                -1.1375000   -1.4325178   -0.8424822
Birth       MAL-ED       PERU          NA                   NA                -0.9131731   -1.0331160   -0.7932301
Birth       NIH-Birth    BANGLADESH    NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto   BANGLADESH    NA                   NA                -0.9131068   -0.9851939   -0.8410197
6 months    COHORTS      GUATEMALA     NA                   NA                -1.8789210   -1.9609921   -1.7968498
6 months    COHORTS      INDIA         NA                   NA                -1.0414424   -1.0741113   -1.0087734
6 months    COHORTS      PHILIPPINES   NA                   NA                -1.1942936   -1.2608624   -1.1277248
6 months    CONTENT      PERU          NA                   NA                -0.2785256   -0.4098735   -0.1471776
6 months    MAL-ED       BANGLADESH    NA                   NA                -1.2026806   -1.3203025   -1.0850586
6 months    MAL-ED       INDIA         NA                   NA                -1.2087268   -1.3282418   -1.0892117
6 months    MAL-ED       PERU          NA                   NA                -1.3196229   -1.4293681   -1.2098778
6 months    NIH-Birth    BANGLADESH    NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto   BANGLADESH    NA                   NA                -1.2031037   -1.2749632   -1.1312442
24 months   COHORTS      GUATEMALA     NA                   NA                -3.0050840   -3.0758338   -2.9343342
24 months   COHORTS      INDIA         NA                   NA                -2.2126633   -2.2518337   -2.1734929
24 months   COHORTS      PHILIPPINES   NA                   NA                -2.5937576   -2.6629996   -2.5245156
24 months   CONTENT      PERU          NA                   NA                -0.6868598   -0.8388476   -0.5348719
24 months   MAL-ED       BANGLADESH    NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED       INDIA         NA                   NA                -1.8779556   -2.0033207   -1.7525904
24 months   MAL-ED       PERU          NA                   NA                -1.7535204   -1.8760973   -1.6309435
24 months   NIH-Birth    BANGLADESH    NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto   BANGLADESH    NA                   NA                -1.4417097   -1.5263855   -1.3570340


### Parameter: ATE


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS      GUATEMALA     0                    1                 -0.0457265   -0.4223322    0.3308793
Birth       COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS      INDIA         0                    1                 -0.2956163   -0.3630956   -0.2281371
Birth       COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS      PHILIPPINES   0                    1                 -0.4200546   -0.5780214   -0.2620879
Birth       MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       BANGLADESH    0                    1                 -0.0026684   -0.3608128    0.3554759
Birth       MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       INDIA         0                    1                 -0.1773333   -0.8340388    0.4793721
Birth       MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU          0                    1                 -0.0885897   -0.3782510    0.2010715
Birth       NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH    0                    1                 -0.1487802   -0.3351904    0.0376301
Birth       NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH    0                    1                 -0.0343977   -0.2852775    0.2164822
6 months    COHORTS      GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      GUATEMALA     0                    1                 -0.2131634   -0.4557692    0.0294424
6 months    COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      INDIA         0                    1                 -0.4619781   -0.5277445   -0.3962117
6 months    COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      PHILIPPINES   0                    1                 -0.6493326   -0.8353711   -0.4632941
6 months    CONTENT      PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    CONTENT      PERU          0                    1                 -0.4201930   -0.9882414    0.1478554
6 months    MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BANGLADESH    0                    1                  0.0056340   -0.2764586    0.2877266
6 months    MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA         0                    1                 -0.0187693   -0.2568031    0.2192646
6 months    MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU          0                    1                  0.0653483   -0.1955420    0.3262386
6 months    NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH    0                    1                 -0.1858906   -0.3676170   -0.0041642
6 months    NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH    0                    1                  0.0757728   -0.1513484    0.3028940
24 months   COHORTS      GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      GUATEMALA     0                    1                 -0.2875398   -0.5281868   -0.0468927
24 months   COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      INDIA         0                    1                 -0.6795074   -0.7566617   -0.6023532
24 months   COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      PHILIPPINES   0                    1                 -1.0467411   -1.2252280   -0.8682541
24 months   CONTENT      PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   CONTENT      PERU          0                    1                 -0.5790397   -1.0232066   -0.1348729
24 months   MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BANGLADESH    0                    1                 -0.0137801   -0.3389322    0.3113721
24 months   MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA         0                    1                 -0.2070017   -0.4542948    0.0402914
24 months   MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU          0                    1                 -0.0282807   -0.3036983    0.2471368
24 months   NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH    0                    1                 -0.2505651   -0.4636589   -0.0374713
24 months   NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH    0                    1                  0.0451336   -0.1853197    0.2755870


### Parameter: PAR


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    NA                -0.0415356   -0.3836276    0.3005563
Birth       COHORTS      INDIA         1                    NA                -0.1862457   -0.2289516   -0.1435398
Birth       COHORTS      PHILIPPINES   1                    NA                -0.3572757   -0.4919028   -0.2226486
Birth       MAL-ED       BANGLADESH    1                    NA                -0.0004259   -0.0575947    0.0567428
Birth       MAL-ED       INDIA         1                    NA                -0.1108333   -0.5221577    0.3004910
Birth       MAL-ED       PERU          1                    NA                -0.0664423   -0.2837511    0.1508665
Birth       NIH-Birth    BANGLADESH    1                    NA                -0.0922535   -0.2079828    0.0234758
Birth       NIH-Crypto   BANGLADESH    1                    NA                -0.0042460   -0.0352256    0.0267335
6 months    COHORTS      GUATEMALA     1                    NA                -0.1914583   -0.4094168    0.0265002
6 months    COHORTS      INDIA         1                    NA                -0.2871680   -0.3285206   -0.2458155
6 months    COHORTS      PHILIPPINES   1                    NA                -0.5635943   -0.7255986   -0.4015901
6 months    CONTENT      PERU          1                    NA                -0.0273614   -0.0668727    0.0121499
6 months    MAL-ED       BANGLADESH    1                    NA                 0.0008921   -0.0437734    0.0455575
6 months    MAL-ED       INDIA         1                    NA                -0.0100693   -0.1377756    0.1176369
6 months    MAL-ED       PERU          1                    NA                 0.0491976   -0.1472438    0.2456389
6 months    NIH-Birth    BANGLADESH    1                    NA                -0.1149268   -0.2275389   -0.0023147
6 months    NIH-Crypto   BANGLADESH    1                    NA                 0.0095792   -0.0191938    0.0383523
24 months   COHORTS      GUATEMALA     1                    NA                -0.2627463   -0.4827071   -0.0427856
24 months   COHORTS      INDIA         1                    NA                -0.4130304   -0.4611147   -0.3649461
24 months   COHORTS      PHILIPPINES   1                    NA                -0.9135195   -1.0707999   -0.7562390
24 months   CONTENT      PERU          1                    NA                -0.0458995   -0.0885180   -0.0032810
24 months   MAL-ED       BANGLADESH    1                    NA                -0.0020150   -0.0495654    0.0455354
24 months   MAL-ED       INDIA         1                    NA                -0.1113209   -0.2449947    0.0223528
24 months   MAL-ED       PERU          1                    NA                -0.0214991   -0.2308796    0.1878813
24 months   NIH-Birth    BANGLADESH    1                    NA                -0.1512736   -0.2804475   -0.0220996
24 months   NIH-Crypto   BANGLADESH    1                    NA                 0.0062810   -0.0258191    0.0383812
