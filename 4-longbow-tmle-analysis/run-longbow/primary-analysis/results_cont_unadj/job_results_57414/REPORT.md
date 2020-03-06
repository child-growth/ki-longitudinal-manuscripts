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

**Intervention Variable:** nrooms

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        nrooms    n_cell      n
----------  ---------------  -----------------------------  -------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          4+             5     86
Birth       CMC-V-BCS-2002   INDIA                          1             35     86
Birth       CMC-V-BCS-2002   INDIA                          2             27     86
Birth       CMC-V-BCS-2002   INDIA                          3             19     86
Birth       COHORTS          INDIA                          4+            90   4454
Birth       COHORTS          INDIA                          1           2879   4454
Birth       COHORTS          INDIA                          2           1328   4454
Birth       COHORTS          INDIA                          3            157   4454
Birth       CONTENT          PERU                           4+             1      2
Birth       CONTENT          PERU                           1              0      2
Birth       CONTENT          PERU                           2              1      2
Birth       CONTENT          PERU                           3              0      2
Birth       GMS-Nepal        NEPAL                          4+           297    641
Birth       GMS-Nepal        NEPAL                          1             42    641
Birth       GMS-Nepal        NEPAL                          2            135    641
Birth       GMS-Nepal        NEPAL                          3            167    641
Birth       IRC              INDIA                          4+            14    341
Birth       IRC              INDIA                          1            156    341
Birth       IRC              INDIA                          2            140    341
Birth       IRC              INDIA                          3             31    341
Birth       MAL-ED           BANGLADESH                     4+            12    201
Birth       MAL-ED           BANGLADESH                     1            121    201
Birth       MAL-ED           BANGLADESH                     2             43    201
Birth       MAL-ED           BANGLADESH                     3             25    201
Birth       MAL-ED           BRAZIL                         4+            29     57
Birth       MAL-ED           BRAZIL                         1              0     57
Birth       MAL-ED           BRAZIL                         2             10     57
Birth       MAL-ED           BRAZIL                         3             18     57
Birth       MAL-ED           INDIA                          4+             2     39
Birth       MAL-ED           INDIA                          1             17     39
Birth       MAL-ED           INDIA                          2             16     39
Birth       MAL-ED           INDIA                          3              4     39
Birth       MAL-ED           NEPAL                          4+            15     25
Birth       MAL-ED           NEPAL                          1              6     25
Birth       MAL-ED           NEPAL                          2              2     25
Birth       MAL-ED           NEPAL                          3              2     25
Birth       MAL-ED           PERU                           4+           103    210
Birth       MAL-ED           PERU                           1             13    210
Birth       MAL-ED           PERU                           2             45    210
Birth       MAL-ED           PERU                           3             49    210
Birth       MAL-ED           SOUTH AFRICA                   4+            66     95
Birth       MAL-ED           SOUTH AFRICA                   1              5     95
Birth       MAL-ED           SOUTH AFRICA                   2             12     95
Birth       MAL-ED           SOUTH AFRICA                   3             12     95
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            45    112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              9    112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             28    112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             30    112
Birth       NIH-Crypto       BANGLADESH                     4+            90    707
Birth       NIH-Crypto       BANGLADESH                     1            338    707
Birth       NIH-Crypto       BANGLADESH                     2            181    707
Birth       NIH-Crypto       BANGLADESH                     3             98    707
Birth       PROVIDE          BANGLADESH                     4+            18    532
Birth       PROVIDE          BANGLADESH                     1            388    532
Birth       PROVIDE          BANGLADESH                     2             79    532
Birth       PROVIDE          BANGLADESH                     3             47    532
6 months    CMC-V-BCS-2002   INDIA                          4+            14    368
6 months    CMC-V-BCS-2002   INDIA                          1            197    368
6 months    CMC-V-BCS-2002   INDIA                          2            106    368
6 months    CMC-V-BCS-2002   INDIA                          3             51    368
6 months    COHORTS          INDIA                          4+            93   4955
6 months    COHORTS          INDIA                          1           3206   4955
6 months    COHORTS          INDIA                          2           1474   4955
6 months    COHORTS          INDIA                          3            182   4955
6 months    CONTENT          PERU                           4+            78    215
6 months    CONTENT          PERU                           1             44    215
6 months    CONTENT          PERU                           2             54    215
6 months    CONTENT          PERU                           3             39    215
6 months    GMS-Nepal        NEPAL                          4+           268    564
6 months    GMS-Nepal        NEPAL                          1             40    564
6 months    GMS-Nepal        NEPAL                          2            115    564
6 months    GMS-Nepal        NEPAL                          3            141    564
6 months    IRC              INDIA                          4+            17    406
6 months    IRC              INDIA                          1            183    406
6 months    IRC              INDIA                          2            170    406
6 months    IRC              INDIA                          3             36    406
6 months    MAL-ED           BANGLADESH                     4+            12    240
6 months    MAL-ED           BANGLADESH                     1            150    240
6 months    MAL-ED           BANGLADESH                     2             50    240
6 months    MAL-ED           BANGLADESH                     3             28    240
6 months    MAL-ED           BRAZIL                         4+           126    209
6 months    MAL-ED           BRAZIL                         1              4    209
6 months    MAL-ED           BRAZIL                         2             20    209
6 months    MAL-ED           BRAZIL                         3             59    209
6 months    MAL-ED           INDIA                          4+            25    235
6 months    MAL-ED           INDIA                          1             84    235
6 months    MAL-ED           INDIA                          2             78    235
6 months    MAL-ED           INDIA                          3             48    235
6 months    MAL-ED           NEPAL                          4+           131    236
6 months    MAL-ED           NEPAL                          1             52    236
6 months    MAL-ED           NEPAL                          2             31    236
6 months    MAL-ED           NEPAL                          3             22    236
6 months    MAL-ED           PERU                           4+           139    270
6 months    MAL-ED           PERU                           1             19    270
6 months    MAL-ED           PERU                           2             50    270
6 months    MAL-ED           PERU                           3             62    270
6 months    MAL-ED           SOUTH AFRICA                   4+           191    249
6 months    MAL-ED           SOUTH AFRICA                   1             14    249
6 months    MAL-ED           SOUTH AFRICA                   2             21    249
6 months    MAL-ED           SOUTH AFRICA                   3             23    249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+           108    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             13    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             62    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             64    247
6 months    NIH-Crypto       BANGLADESH                     4+            91    715
6 months    NIH-Crypto       BANGLADESH                     1            339    715
6 months    NIH-Crypto       BANGLADESH                     2            184    715
6 months    NIH-Crypto       BANGLADESH                     3            101    715
6 months    PROVIDE          BANGLADESH                     4+            21    603
6 months    PROVIDE          BANGLADESH                     1            430    603
6 months    PROVIDE          BANGLADESH                     2             94    603
6 months    PROVIDE          BANGLADESH                     3             58    603
24 months   CMC-V-BCS-2002   INDIA                          4+            14    372
24 months   CMC-V-BCS-2002   INDIA                          1            201    372
24 months   CMC-V-BCS-2002   INDIA                          2            106    372
24 months   CMC-V-BCS-2002   INDIA                          3             51    372
24 months   COHORTS          INDIA                          4+            75   3719
24 months   COHORTS          INDIA                          1           2287   3719
24 months   COHORTS          INDIA                          2           1207   3719
24 months   COHORTS          INDIA                          3            150   3719
24 months   CONTENT          PERU                           4+            63    164
24 months   CONTENT          PERU                           1             30    164
24 months   CONTENT          PERU                           2             39    164
24 months   CONTENT          PERU                           3             32    164
24 months   GMS-Nepal        NEPAL                          4+           231    487
24 months   GMS-Nepal        NEPAL                          1             35    487
24 months   GMS-Nepal        NEPAL                          2            106    487
24 months   GMS-Nepal        NEPAL                          3            115    487
24 months   IRC              INDIA                          4+            17    407
24 months   IRC              INDIA                          1            184    407
24 months   IRC              INDIA                          2            170    407
24 months   IRC              INDIA                          3             36    407
24 months   MAL-ED           BANGLADESH                     4+            11    212
24 months   MAL-ED           BANGLADESH                     1            134    212
24 months   MAL-ED           BANGLADESH                     2             40    212
24 months   MAL-ED           BANGLADESH                     3             27    212
24 months   MAL-ED           BRAZIL                         4+           104    169
24 months   MAL-ED           BRAZIL                         1              0    169
24 months   MAL-ED           BRAZIL                         2             16    169
24 months   MAL-ED           BRAZIL                         3             49    169
24 months   MAL-ED           INDIA                          4+            25    227
24 months   MAL-ED           INDIA                          1             82    227
24 months   MAL-ED           INDIA                          2             74    227
24 months   MAL-ED           INDIA                          3             46    227
24 months   MAL-ED           NEPAL                          4+           127    228
24 months   MAL-ED           NEPAL                          1             48    228
24 months   MAL-ED           NEPAL                          2             31    228
24 months   MAL-ED           NEPAL                          3             22    228
24 months   MAL-ED           PERU                           4+           110    201
24 months   MAL-ED           PERU                           1             16    201
24 months   MAL-ED           PERU                           2             32    201
24 months   MAL-ED           PERU                           3             43    201
24 months   MAL-ED           SOUTH AFRICA                   4+           183    238
24 months   MAL-ED           SOUTH AFRICA                   1             13    238
24 months   MAL-ED           SOUTH AFRICA                   2             19    238
24 months   MAL-ED           SOUTH AFRICA                   3             23    238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            98    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              9    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             50    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             57    214
24 months   NIH-Crypto       BANGLADESH                     4+            82    514
24 months   NIH-Crypto       BANGLADESH                     1            217    514
24 months   NIH-Crypto       BANGLADESH                     2            137    514
24 months   NIH-Crypto       BANGLADESH                     3             78    514
24 months   PROVIDE          BANGLADESH                     4+            22    579
24 months   PROVIDE          BANGLADESH                     1            408    579
24 months   PROVIDE          BANGLADESH                     2             92    579
24 months   PROVIDE          BANGLADESH                     3             57    579


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL

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
![](/tmp/5d571077-e114-4d31-9508-4b12b3eb508a/a6b28b3f-7453-4a30-929d-a04f4c9bda34/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5d571077-e114-4d31-9508-4b12b3eb508a/a6b28b3f-7453-4a30-929d-a04f4c9bda34/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5d571077-e114-4d31-9508-4b12b3eb508a/a6b28b3f-7453-4a30-929d-a04f4c9bda34/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          4+                   NA                -0.4160000   -1.4929959    0.6609959
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -0.5244286   -1.0232807   -0.0255765
Birth       CMC-V-BCS-2002   INDIA                          2                    NA                -0.6155556   -1.1573805   -0.0737306
Birth       CMC-V-BCS-2002   INDIA                          3                    NA                -0.1536842   -0.6942308    0.3868624
Birth       COHORTS          INDIA                          4+                   NA                -0.6670000   -0.8501230   -0.4838770
Birth       COHORTS          INDIA                          1                    NA                -1.0255992   -1.0686324   -0.9825660
Birth       COHORTS          INDIA                          2                    NA                -0.9148117   -0.9798589   -0.8497646
Birth       COHORTS          INDIA                          3                    NA                -0.8124841   -0.9884710   -0.6364972
Birth       GMS-Nepal        NEPAL                          4+                   NA                -1.1536700   -1.2819637   -1.0253764
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.0716667   -1.3758034   -0.7675300
Birth       GMS-Nepal        NEPAL                          2                    NA                -1.0041481   -1.1908930   -0.8174032
Birth       GMS-Nepal        NEPAL                          3                    NA                -1.1522754   -1.3310144   -0.9735365
Birth       IRC              INDIA                          4+                   NA                -1.0150000   -2.1174369    0.0874369
Birth       IRC              INDIA                          1                    NA                -1.1407051   -1.4289892   -0.8524210
Birth       IRC              INDIA                          2                    NA                -0.8954286   -1.1615662   -0.6292910
Birth       IRC              INDIA                          3                    NA                -0.8161290   -1.4531708   -0.1790873
Birth       MAL-ED           BANGLADESH                     4+                   NA                -0.8266667   -1.3087655   -0.3445679
Birth       MAL-ED           BANGLADESH                     1                    NA                -0.9826860   -1.1974239   -0.7679480
Birth       MAL-ED           BANGLADESH                     2                    NA                -0.9779070   -1.2017073   -0.7541067
Birth       MAL-ED           BANGLADESH                     3                    NA                -0.9866000   -1.3724535   -0.6007465
Birth       MAL-ED           PERU                           4+                   NA                -0.2219417   -0.4143783   -0.0295052
Birth       MAL-ED           PERU                           1                    NA                 0.0830769   -0.4559833    0.6221372
Birth       MAL-ED           PERU                           2                    NA                 0.0182222   -0.2293624    0.2658069
Birth       MAL-ED           PERU                           3                    NA                 0.2271429    0.0054463    0.4488394
Birth       MAL-ED           SOUTH AFRICA                   4+                   NA                -0.2287879   -0.5065288    0.0489530
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                -0.6960000   -1.4913352    0.0993352
Birth       MAL-ED           SOUTH AFRICA                   2                    NA                 0.5066667   -0.1807332    1.1940665
Birth       MAL-ED           SOUTH AFRICA                   3                    NA                -0.3275000   -1.1444022    0.4894022
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.8631111    0.5363093    1.1899130
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.9000000    0.3934379    1.4065621
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.4500000    0.0450331    0.8549669
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.8666667    0.5289823    1.2043510
Birth       NIH-Crypto       BANGLADESH                     4+                   NA                -1.2151111   -1.4223509   -1.0078713
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -1.2536538   -1.3814613   -1.1258464
Birth       NIH-Crypto       BANGLADESH                     2                    NA                -1.2151381   -1.3689209   -1.0613554
Birth       NIH-Crypto       BANGLADESH                     3                    NA                -1.2916327   -1.5272285   -1.0560368
Birth       PROVIDE          BANGLADESH                     4+                   NA                -1.2533333   -1.6895387   -0.8171280
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.2910052   -1.3799519   -1.2020584
Birth       PROVIDE          BANGLADESH                     2                    NA                -1.2951899   -1.4960406   -1.0943391
Birth       PROVIDE          BANGLADESH                     3                    NA                -1.3827660   -1.6553438   -1.1101881
6 months    CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2425000   -0.8562529    0.3712529
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.7750169   -0.9544023   -0.5956315
6 months    CMC-V-BCS-2002   INDIA                          2                    NA                -0.1935377   -0.5288394    0.1417640
6 months    CMC-V-BCS-2002   INDIA                          3                    NA                -0.1646405   -0.5472860    0.2180049
6 months    COHORTS          INDIA                          4+                   NA                -0.2590323   -0.4091248   -0.1089397
6 months    COHORTS          INDIA                          1                    NA                -0.7800530   -0.8208431   -0.7392629
6 months    COHORTS          INDIA                          2                    NA                -0.6017300   -0.6595921   -0.5438679
6 months    COHORTS          INDIA                          3                    NA                -0.5506593   -0.6978599   -0.4034587
6 months    CONTENT          PERU                           4+                   NA                 1.1416880    0.9399101    1.3434660
6 months    CONTENT          PERU                           1                    NA                 1.0075265    0.7347299    1.2803231
6 months    CONTENT          PERU                           2                    NA                 0.9793549    0.7395539    1.2191559
6 months    CONTENT          PERU                           3                    NA                 1.0918974    0.8692317    1.3145632
6 months    GMS-Nepal        NEPAL                          4+                   NA                -0.6004104   -0.7246206   -0.4762003
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.6303750   -0.9643564   -0.2963936
6 months    GMS-Nepal        NEPAL                          2                    NA                -0.6481884   -0.8376102   -0.4587666
6 months    GMS-Nepal        NEPAL                          3                    NA                -0.5666667   -0.7397286   -0.3936048
6 months    IRC              INDIA                          4+                   NA                -0.8577451   -1.5297639   -0.1857262
6 months    IRC              INDIA                          1                    NA                -0.5376594   -0.7335123   -0.3418065
6 months    IRC              INDIA                          2                    NA                -0.5901176   -0.7927012   -0.3875340
6 months    IRC              INDIA                          3                    NA                -0.7300000   -1.2861960   -0.1738040
6 months    MAL-ED           BANGLADESH                     4+                   NA                -0.0906944   -0.8419301    0.6605412
6 months    MAL-ED           BANGLADESH                     1                    NA                -0.2208778   -0.3790925   -0.0626631
6 months    MAL-ED           BANGLADESH                     2                    NA                 0.0954333   -0.1806381    0.3715048
6 months    MAL-ED           BANGLADESH                     3                    NA                -0.0911310   -0.4645603    0.2822984
6 months    MAL-ED           INDIA                          4+                   NA                -0.6610667   -0.9731883   -0.3489450
6 months    MAL-ED           INDIA                          1                    NA                -0.7238591   -0.9270560   -0.5206622
6 months    MAL-ED           INDIA                          2                    NA                -0.6995299   -0.9083942   -0.4906656
6 months    MAL-ED           INDIA                          3                    NA                -0.7296528   -1.0726084   -0.3866971
6 months    MAL-ED           NEPAL                          4+                   NA                 0.1005598   -0.0743240    0.2754436
6 months    MAL-ED           NEPAL                          1                    NA                -0.0327885   -0.3216503    0.2560734
6 months    MAL-ED           NEPAL                          2                    NA                 0.5219892    0.1257544    0.9182241
6 months    MAL-ED           NEPAL                          3                    NA                -0.0721970   -0.3273007    0.1829067
6 months    MAL-ED           PERU                           4+                   NA                 1.0630036    0.8872351    1.2387721
6 months    MAL-ED           PERU                           1                    NA                 0.4836842   -0.0146529    0.9820213
6 months    MAL-ED           PERU                           2                    NA                 1.1926333    0.9102574    1.4750093
6 months    MAL-ED           PERU                           3                    NA                 1.0846371    0.8665037    1.3027705
6 months    MAL-ED           SOUTH AFRICA                   4+                   NA                 0.5507330    0.3696860    0.7317799
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                 0.3213095   -0.0417967    0.6844157
6 months    MAL-ED           SOUTH AFRICA                   2                    NA                 0.9578571    0.4110023    1.5047120
6 months    MAL-ED           SOUTH AFRICA                   3                    NA                 0.2071739   -0.1941888    0.6085367
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.5827006    0.3980382    0.7673631
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5269231   -0.0468272    1.1006733
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.5310484    0.2794108    0.7826860
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.4646875    0.1713146    0.7580604
6 months    NIH-Crypto       BANGLADESH                     4+                   NA                 0.0267582   -0.2243863    0.2779027
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0272271   -0.1404300    0.0859757
6 months    NIH-Crypto       BANGLADESH                     2                    NA                 0.0351087   -0.1128241    0.1830415
6 months    NIH-Crypto       BANGLADESH                     3                    NA                 0.2140099    0.0083173    0.4197025
6 months    PROVIDE          BANGLADESH                     4+                   NA                -0.3861905   -0.8949786    0.1225976
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.2483295   -0.3454021   -0.1512568
6 months    PROVIDE          BANGLADESH                     2                    NA                 0.0198936   -0.1776496    0.2174368
6 months    PROVIDE          BANGLADESH                     3                    NA                -0.1212069   -0.3994071    0.1569933
24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2071429   -0.6602688    0.2459830
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.7292454   -0.8587754   -0.5997155
24 months   CMC-V-BCS-2002   INDIA                          2                    NA                -0.4841195   -0.6905432   -0.2776958
24 months   CMC-V-BCS-2002   INDIA                          3                    NA                -0.1267647   -0.3725816    0.1190522
24 months   COHORTS          INDIA                          4+                   NA                -0.1834667   -0.3725682    0.0056348
24 months   COHORTS          INDIA                          1                    NA                -0.7974727   -0.8396396   -0.7553058
24 months   COHORTS          INDIA                          2                    NA                -0.4789809   -0.5351321   -0.4228298
24 months   COHORTS          INDIA                          3                    NA                -0.2906000   -0.4475299   -0.1336701
24 months   CONTENT          PERU                           4+                   NA                 0.5819048    0.3600185    0.8037911
24 months   CONTENT          PERU                           1                    NA                 0.5265000    0.2774068    0.7755932
24 months   CONTENT          PERU                           2                    NA                 0.5607692    0.3134384    0.8081001
24 months   CONTENT          PERU                           3                    NA                 0.7023438    0.3350616    1.0696259
24 months   GMS-Nepal        NEPAL                          4+                   NA                -1.1258874   -1.2570309   -0.9947439
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.1002857   -1.4334343   -0.7671371
24 months   GMS-Nepal        NEPAL                          2                    NA                -1.1898585   -1.3767736   -1.0029434
24 months   GMS-Nepal        NEPAL                          3                    NA                -1.1188551   -1.2990806   -0.9386295
24 months   IRC              INDIA                          4+                   NA                -0.5967647   -1.1168607   -0.0766687
24 months   IRC              INDIA                          1                    NA                -0.7295924   -0.8590732   -0.6001116
24 months   IRC              INDIA                          2                    NA                -0.7348725   -0.8787414   -0.5910037
24 months   IRC              INDIA                          3                    NA                -0.9040278   -1.1991846   -0.6088710
24 months   MAL-ED           BANGLADESH                     4+                   NA                -0.5177273   -1.3021306    0.2666760
24 months   MAL-ED           BANGLADESH                     1                    NA                -0.9342164   -1.0771991   -0.7912338
24 months   MAL-ED           BANGLADESH                     2                    NA                -0.5863750   -0.8919294   -0.2808206
24 months   MAL-ED           BANGLADESH                     3                    NA                -0.7168519   -0.9978903   -0.4358134
24 months   MAL-ED           INDIA                          4+                   NA                -0.8594000   -1.2273722   -0.4914278
24 months   MAL-ED           INDIA                          1                    NA                -0.8794512   -1.0598923   -0.6990102
24 months   MAL-ED           INDIA                          2                    NA                -1.0010811   -1.2142070   -0.7879552
24 months   MAL-ED           INDIA                          3                    NA                -1.0509783   -1.2980528   -0.8039037
24 months   MAL-ED           NEPAL                          4+                   NA                -0.3582283   -0.5052196   -0.2112371
24 months   MAL-ED           NEPAL                          1                    NA                -0.5537500   -0.8087455   -0.2987545
24 months   MAL-ED           NEPAL                          2                    NA                -0.1598387   -0.5087468    0.1890694
24 months   MAL-ED           NEPAL                          3                    NA                -0.3840909   -0.6892877   -0.0788941
24 months   MAL-ED           PERU                           4+                   NA                 0.2000227    0.0286044    0.3714411
24 months   MAL-ED           PERU                           1                    NA                -0.2406250   -0.7365295    0.2552795
24 months   MAL-ED           PERU                           2                    NA                 0.0318750   -0.2021931    0.2659431
24 months   MAL-ED           PERU                           3                    NA                 0.0739147   -0.1860849    0.3339143
24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                 0.4131375    0.2668775    0.5593975
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.2157692   -0.0453243    0.4768628
24 months   MAL-ED           SOUTH AFRICA                   2                    NA                 0.5728947    0.2363279    0.9094615
24 months   MAL-ED           SOUTH AFRICA                   3                    NA                 0.3502174    0.0204294    0.6800054
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.1237415   -0.0307885    0.2782715
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2522222   -1.1599430    0.6554985
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0032000   -0.2355186    0.2291186
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0356140   -0.2581087    0.3293368
24 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.3367073   -0.6124196   -0.0609950
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.7861751   -0.9148885   -0.6574617
24 months   NIH-Crypto       BANGLADESH                     2                    NA                -0.7059124   -0.8865419   -0.5252829
24 months   NIH-Crypto       BANGLADESH                     3                    NA                -0.2410256   -0.4872135    0.0051622
24 months   PROVIDE          BANGLADESH                     4+                   NA                -0.5468182   -0.9897412   -0.1038951
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.9658088   -1.0601854   -0.8714323
24 months   PROVIDE          BANGLADESH                     2                    NA                -0.7850543   -0.9902650   -0.5798437
24 months   PROVIDE          BANGLADESH                     3                    NA                -0.6783333   -0.9937210   -0.3629457


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       COHORTS          INDIA                          NA                   NA                -0.9778087   -1.0126530   -0.9429644
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       IRC              INDIA                          NA                   NA                -1.0053372   -1.1922119   -0.8184626
Birth       MAL-ED           BANGLADESH                     NA                   NA                -0.9728358   -1.1217009   -0.8239707
Birth       MAL-ED           PERU                           NA                   NA                -0.0468095   -0.1738806    0.0802616
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1729474   -0.4186222    0.0727275
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7637500    0.5676177    0.9598823
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    COHORTS          INDIA                          NA                   NA                -0.7088012   -0.7411274   -0.6764750
6 months    CONTENT          PERU                           NA                   NA                 1.0644279    0.9468682    1.1819876
6 months    GMS-Nepal        NEPAL                          NA                   NA                -0.6038416   -0.6899448   -0.5177384
6 months    IRC              INDIA                          NA                   NA                -0.5900821   -0.7252457   -0.4549185
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.1333333   -0.2623761   -0.0042906
6 months    MAL-ED           INDIA                          NA                   NA                -0.7102872   -0.8371659   -0.5834085
6 months    MAL-ED           NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    MAL-ED           PERU                           NA                   NA                 1.0512099    0.9285617    1.1738581
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.5404351    0.3867005    0.6941696
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   COHORTS          INDIA                          NA                   NA                -0.6612799   -0.6944511   -0.6281088
24 months   CONTENT          PERU                           NA                   NA                 0.5902439    0.4560143    0.7244735
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.1363107   -1.2252817   -1.0473398
24 months   IRC              INDIA                          NA                   NA                -0.7416790   -0.8323562   -0.6510017
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           INDIA                          NA                   NA                -0.9516520   -1.0670654   -0.8362385
24 months   MAL-ED           NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED           PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          1                    4+                -0.1084286   -1.2953462    1.0784891
Birth       CMC-V-BCS-2002   INDIA                          2                    4+                -0.1995556   -1.4051651    1.0060540
Birth       CMC-V-BCS-2002   INDIA                          3                    4+                 0.2623158   -0.9427198    1.4673514
Birth       COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    4+                -0.3585992   -0.5467106   -0.1704878
Birth       COHORTS          INDIA                          2                    4+                -0.2478117   -0.4421444   -0.0534791
Birth       COHORTS          INDIA                          3                    4+                -0.1454841   -0.3994633    0.1084951
Birth       GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    4+                 0.0820034   -0.2480851    0.4120918
Birth       GMS-Nepal        NEPAL                          2                    4+                 0.1495219   -0.0770458    0.3760896
Birth       GMS-Nepal        NEPAL                          3                    4+                 0.0013946   -0.2186210    0.2214102
Birth       IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    4+                -0.1257051   -1.2652115    1.0138012
Birth       IRC              INDIA                          2                    4+                 0.1195714   -1.0145345    1.2536773
Birth       IRC              INDIA                          3                    4+                 0.1988710   -1.0743883    1.4721302
Birth       MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    4+                -0.1560193   -0.6837803    0.3717417
Birth       MAL-ED           BANGLADESH                     2                    4+                -0.1512403   -0.6827531    0.3802725
Birth       MAL-ED           BANGLADESH                     3                    4+                -0.1599333   -0.7774301    0.4575634
Birth       MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    4+                 0.3050187   -0.2673604    0.8773977
Birth       MAL-ED           PERU                           2                    4+                 0.2401640   -0.0734122    0.5537401
Birth       MAL-ED           PERU                           3                    4+                 0.4490846    0.1555183    0.7426509
Birth       MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    4+                -0.4672121   -1.3096480    0.3752237
Birth       MAL-ED           SOUTH AFRICA                   2                    4+                 0.7354545   -0.0059351    1.4768442
Birth       MAL-ED           SOUTH AFRICA                   3                    4+                -0.0987121   -0.9615385    0.7641142
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0368889   -0.5659416    0.6397194
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.4131111   -0.9334933    0.1072711
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0035556   -0.4663701    0.4734813
Birth       NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    4+                -0.0385427   -0.2820239    0.2049385
Birth       NIH-Crypto       BANGLADESH                     2                    4+                -0.0000270   -0.2580919    0.2580378
Birth       NIH-Crypto       BANGLADESH                     3                    4+                -0.0765215   -0.3902949    0.2372518
Birth       PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    4+                -0.0376718   -0.4828534    0.4075098
Birth       PROVIDE          BANGLADESH                     2                    4+                -0.0418565   -0.5220816    0.4383686
Birth       PROVIDE          BANGLADESH                     3                    4+                -0.1294326   -0.6438000    0.3849347
6 months    CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    4+                -0.5325169   -1.1719477    0.1069138
6 months    CMC-V-BCS-2002   INDIA                          2                    4+                 0.0489623   -0.6504087    0.7483333
6 months    CMC-V-BCS-2002   INDIA                          3                    4+                 0.0778595   -0.6454040    0.8011230
6 months    COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    4+                -0.5210208   -0.6765573   -0.3654843
6 months    COHORTS          INDIA                          2                    4+                -0.3426977   -0.5035573   -0.1818382
6 months    COHORTS          INDIA                          3                    4+                -0.2916271   -0.5018550   -0.0813992
6 months    CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           1                    4+                -0.1341615   -0.4734731    0.2051500
6 months    CONTENT          PERU                           2                    4+                -0.1623331   -0.4757320    0.1510658
6 months    CONTENT          PERU                           3                    4+                -0.0497906   -0.3502808    0.2506996
6 months    GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    4+                -0.0299646   -0.3862955    0.3263664
6 months    GMS-Nepal        NEPAL                          2                    4+                -0.0477780   -0.2742923    0.1787364
6 months    GMS-Nepal        NEPAL                          3                    4+                 0.0337438   -0.1792787    0.2467663
6 months    IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    4+                 0.3200857   -0.3798912    1.0200626
6 months    IRC              INDIA                          2                    4+                 0.2676275   -0.4342625    0.9695174
6 months    IRC              INDIA                          3                    4+                 0.1277451   -0.7445870    1.0000772
6 months    MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    4+                -0.1301833   -0.8978987    0.6375321
6 months    MAL-ED           BANGLADESH                     2                    4+                 0.1861278   -0.6142287    0.9864843
6 months    MAL-ED           BANGLADESH                     3                    4+                -0.0004365   -0.8393671    0.8384941
6 months    MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    4+                -0.0627925   -0.4352289    0.3096440
6 months    MAL-ED           INDIA                          2                    4+                -0.0384632   -0.4140218    0.3370953
6 months    MAL-ED           INDIA                          3                    4+                -0.0685861   -0.5323086    0.3951363
6 months    MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    4+                -0.1333483   -0.4710248    0.2043283
6 months    MAL-ED           NEPAL                          2                    4+                 0.4214295   -0.0116830    0.8545419
6 months    MAL-ED           NEPAL                          3                    4+                -0.1727568   -0.4820499    0.1365364
6 months    MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    4+                -0.5793194   -1.1077457   -0.0508930
6 months    MAL-ED           PERU                           2                    4+                 0.1296297   -0.2029823    0.4622417
6 months    MAL-ED           PERU                           3                    4+                 0.0216335   -0.2585035    0.3017705
6 months    MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    4+                -0.2294235   -0.6351624    0.1763155
6 months    MAL-ED           SOUTH AFRICA                   2                    4+                 0.4071242   -0.1689211    0.9831695
6 months    MAL-ED           SOUTH AFRICA                   3                    4+                -0.3435591   -0.7838659    0.0967477
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0557775   -0.6585126    0.5469576
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0516522   -0.3637767    0.2604723
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.1180131   -0.4646656    0.2286393
6 months    NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    4+                -0.0539854   -0.3294639    0.2214932
6 months    NIH-Crypto       BANGLADESH                     2                    4+                 0.0083505   -0.2831245    0.2998254
6 months    NIH-Crypto       BANGLADESH                     3                    4+                 0.1872517   -0.1373758    0.5118792
6 months    PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    4+                 0.1378610   -0.3801047    0.6558267
6 months    PROVIDE          BANGLADESH                     2                    4+                 0.4060841   -0.1397077    0.9518759
6 months    PROVIDE          BANGLADESH                     3                    4+                 0.2649836   -0.3148963    0.8448635
24 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    4+                -0.5221026   -0.9933786   -0.0508266
24 months   CMC-V-BCS-2002   INDIA                          2                    4+                -0.2769766   -0.7749062    0.2209529
24 months   CMC-V-BCS-2002   INDIA                          3                    4+                 0.0803782   -0.4351304    0.5958867
24 months   COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    4+                -0.6140060   -0.8077518   -0.4202602
24 months   COHORTS          INDIA                          2                    4+                -0.2955143   -0.4927763   -0.0982522
24 months   COHORTS          INDIA                          3                    4+                -0.1071333   -0.3528697    0.1386031
24 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           1                    4+                -0.0554048   -0.3889928    0.2781833
24 months   CONTENT          PERU                           2                    4+                -0.0211355   -0.3534096    0.3111386
24 months   CONTENT          PERU                           3                    4+                 0.1204390   -0.3086644    0.5495424
24 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    4+                 0.0256017   -0.3324298    0.3836333
24 months   GMS-Nepal        NEPAL                          2                    4+                -0.0639710   -0.2923038    0.1643617
24 months   GMS-Nepal        NEPAL                          3                    4+                 0.0070324   -0.2158574    0.2299222
24 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    4+                -0.1328277   -0.6687988    0.4031435
24 months   IRC              INDIA                          2                    4+                -0.1381078   -0.6777355    0.4015199
24 months   IRC              INDIA                          3                    4+                -0.3072631   -0.9052742    0.2907481
24 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    4+                -0.4164891   -1.2138176    0.3808393
24 months   MAL-ED           BANGLADESH                     2                    4+                -0.0686477   -0.9104625    0.7731670
24 months   MAL-ED           BANGLADESH                     3                    4+                -0.1991246   -1.0323539    0.6341048
24 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    4+                -0.0200512   -0.4298835    0.3897811
24 months   MAL-ED           INDIA                          2                    4+                -0.1416811   -0.5669177    0.2835555
24 months   MAL-ED           INDIA                          3                    4+                -0.1915783   -0.6348043    0.2516478
24 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    4+                -0.1955217   -0.4898500    0.0988067
24 months   MAL-ED           NEPAL                          2                    4+                 0.1983896   -0.1802174    0.5769967
24 months   MAL-ED           NEPAL                          3                    4+                -0.0258626   -0.3646125    0.3128874
24 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    4+                -0.4406477   -0.9653434    0.0840480
24 months   MAL-ED           PERU                           2                    4+                -0.1681477   -0.4582721    0.1219766
24 months   MAL-ED           PERU                           3                    4+                -0.1261080   -0.4375306    0.1853146
24 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    4+                -0.1973683   -0.4966371    0.1019005
24 months   MAL-ED           SOUTH AFRICA                   2                    4+                 0.1597572   -0.2072158    0.5267302
24 months   MAL-ED           SOUTH AFRICA                   3                    4+                -0.0629201   -0.4236862    0.2978459
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.3759637   -1.2967441    0.5448166
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.1269415   -0.4059602    0.1520772
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0881275   -0.4200199    0.2437649
24 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    4+                -0.4494678   -0.7537447   -0.1451909
24 months   NIH-Crypto       BANGLADESH                     2                    4+                -0.3692051   -0.6988174   -0.0395928
24 months   NIH-Crypto       BANGLADESH                     3                    4+                 0.0956817   -0.2739475    0.4653109
24 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    4+                -0.4189906   -0.8718568    0.0338755
24 months   PROVIDE          BANGLADESH                     2                    4+                -0.2382362   -0.7263880    0.2499157
24 months   PROVIDE          BANGLADESH                     3                    4+                -0.1315152   -0.6752524    0.4122221


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0488256   -1.1046396    1.0069884
Birth       COHORTS          INDIA                          4+                   NA                -0.3108087   -0.4926643   -0.1289531
Birth       GMS-Nepal        NEPAL                          4+                   NA                 0.0372270   -0.0569824    0.1314363
Birth       IRC              INDIA                          4+                   NA                 0.0096628   -1.0629479    1.0822734
Birth       MAL-ED           BANGLADESH                     4+                   NA                -0.1461692   -0.6224343    0.3300960
Birth       MAL-ED           PERU                           4+                   NA                 0.1751322    0.0453153    0.3049491
Birth       MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0558405   -0.1182633    0.2299443
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0993611   -0.3431773    0.1444551
Birth       NIH-Crypto       BANGLADESH                     4+                   NA                -0.0290402   -0.2266848    0.1686044
Birth       PROVIDE          BANGLADESH                     4+                   NA                -0.0451253   -0.4732611    0.3830104
6 months    CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2601766   -0.8691386    0.3487853
6 months    COHORTS          INDIA                          4+                   NA                -0.4497690   -0.5995900   -0.2999479
6 months    CONTENT          PERU                           4+                   NA                -0.0772601   -0.2353520    0.0808318
6 months    GMS-Nepal        NEPAL                          4+                   NA                -0.0034312   -0.0938728    0.0870105
6 months    IRC              INDIA                          4+                   NA                 0.2676630   -0.3896490    0.9249750
6 months    MAL-ED           BANGLADESH                     4+                   NA                -0.0426389   -0.7669120    0.6816342
6 months    MAL-ED           INDIA                          4+                   NA                -0.0492206   -0.3538359    0.2553947
6 months    MAL-ED           NEPAL                          4+                   NA                 0.0098710   -0.1078955    0.1276375
6 months    MAL-ED           PERU                           4+                   NA                -0.0117937   -0.1306516    0.1070641
6 months    MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0102979   -0.0885691    0.0679733
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0464793   -0.1931586    0.1002000
6 months    NIH-Crypto       BANGLADESH                     4+                   NA                 0.0030040   -0.2277525    0.2337604
6 months    PROVIDE          BANGLADESH                     4+                   NA                 0.1870998   -0.3105700    0.6847696
24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.3500077   -0.7973838    0.0973684
24 months   COHORTS          INDIA                          4+                   NA                -0.4778132   -0.6650877   -0.2905388
24 months   CONTENT          PERU                           4+                   NA                 0.0083391   -0.1631991    0.1798773
24 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0104233   -0.1042248    0.0833782
24 months   IRC              INDIA                          4+                   NA                -0.1449142   -0.6510023    0.3611738
24 months   MAL-ED           BANGLADESH                     4+                   NA                -0.3015652   -1.0541046    0.4509742
24 months   MAL-ED           INDIA                          4+                   NA                -0.0922520   -0.4370697    0.2525657
24 months   MAL-ED           NEPAL                          4+                   NA                -0.0166839   -0.1189711    0.0856032
24 months   MAL-ED           PERU                           4+                   NA                -0.0888246   -0.2000034    0.0223543
24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0041074   -0.0602936    0.0520788
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0689440   -0.2018628    0.0639748
24 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.2736429   -0.5200659   -0.0272199
24 months   PROVIDE          BANGLADESH                     4+                   NA                -0.3460488   -0.7797575    0.0876598
