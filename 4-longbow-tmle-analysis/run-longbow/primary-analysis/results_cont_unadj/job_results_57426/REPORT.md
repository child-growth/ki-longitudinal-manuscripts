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

**Intervention Variable:** impfloor

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        impfloor    n_cell     n
----------  ---------------  -----------------------------  ---------  -------  ----
Birth       CMC-V-BCS-2002   INDIA                          1               68    68
Birth       CMC-V-BCS-2002   INDIA                          0                0    68
Birth       CONTENT          PERU                           1                2     2
Birth       CONTENT          PERU                           0                0     2
Birth       GMS-Nepal        NEPAL                          1               97   503
Birth       GMS-Nepal        NEPAL                          0              406   503
Birth       IRC              INDIA                          1              253   253
Birth       IRC              INDIA                          0                0   253
Birth       MAL-ED           BANGLADESH                     1              185   201
Birth       MAL-ED           BANGLADESH                     0               16   201
Birth       MAL-ED           BRAZIL                         1               55    57
Birth       MAL-ED           BRAZIL                         0                2    57
Birth       MAL-ED           INDIA                          1               33    39
Birth       MAL-ED           INDIA                          0                6    39
Birth       MAL-ED           NEPAL                          1                8    24
Birth       MAL-ED           NEPAL                          0               16    24
Birth       MAL-ED           PERU                           1               37   210
Birth       MAL-ED           PERU                           0              173   210
Birth       MAL-ED           SOUTH AFRICA                   1               86    95
Birth       MAL-ED           SOUTH AFRICA                   0                9    95
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                5   111
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              106   111
Birth       NIH-Birth        BANGLADESH                     1              505   572
Birth       NIH-Birth        BANGLADESH                     0               67   572
Birth       NIH-Crypto       BANGLADESH                     1              542   707
Birth       NIH-Crypto       BANGLADESH                     0              165   707
Birth       PROVIDE          BANGLADESH                     1              485   532
Birth       PROVIDE          BANGLADESH                     0               47   532
6 months    CMC-V-BCS-2002   INDIA                          1              257   257
6 months    CMC-V-BCS-2002   INDIA                          0                0   257
6 months    CONTENT          PERU                           1              201   215
6 months    CONTENT          PERU                           0               14   215
6 months    GMS-Nepal        NEPAL                          1               78   441
6 months    GMS-Nepal        NEPAL                          0              363   441
6 months    IRC              INDIA                          1              304   304
6 months    IRC              INDIA                          0                0   304
6 months    MAL-ED           BANGLADESH                     1              221   240
6 months    MAL-ED           BANGLADESH                     0               19   240
6 months    MAL-ED           BRAZIL                         1              207   209
6 months    MAL-ED           BRAZIL                         0                2   209
6 months    MAL-ED           INDIA                          1              220   235
6 months    MAL-ED           INDIA                          0               15   235
6 months    MAL-ED           NEPAL                          1              103   229
6 months    MAL-ED           NEPAL                          0              126   229
6 months    MAL-ED           PERU                           1               58   270
6 months    MAL-ED           PERU                           0              212   270
6 months    MAL-ED           SOUTH AFRICA                   1              229   249
6 months    MAL-ED           SOUTH AFRICA                   0               20   249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               14   245
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              231   245
6 months    NIH-Birth        BANGLADESH                     1              477   535
6 months    NIH-Birth        BANGLADESH                     0               58   535
6 months    NIH-Crypto       BANGLADESH                     1              537   715
6 months    NIH-Crypto       BANGLADESH                     0              178   715
6 months    PROVIDE          BANGLADESH                     1              557   603
6 months    PROVIDE          BANGLADESH                     0               46   603
24 months   CMC-V-BCS-2002   INDIA                          1              260   260
24 months   CMC-V-BCS-2002   INDIA                          0                0   260
24 months   CONTENT          PERU                           1              154   164
24 months   CONTENT          PERU                           0               10   164
24 months   GMS-Nepal        NEPAL                          1               72   373
24 months   GMS-Nepal        NEPAL                          0              301   373
24 months   IRC              INDIA                          1              305   305
24 months   IRC              INDIA                          0                0   305
24 months   MAL-ED           BANGLADESH                     1              195   212
24 months   MAL-ED           BANGLADESH                     0               17   212
24 months   MAL-ED           BRAZIL                         1              167   169
24 months   MAL-ED           BRAZIL                         0                2   169
24 months   MAL-ED           INDIA                          1              212   227
24 months   MAL-ED           INDIA                          0               15   227
24 months   MAL-ED           NEPAL                          1               98   221
24 months   MAL-ED           NEPAL                          0              123   221
24 months   MAL-ED           PERU                           1               49   201
24 months   MAL-ED           PERU                           0              152   201
24 months   MAL-ED           SOUTH AFRICA                   1              220   238
24 months   MAL-ED           SOUTH AFRICA                   0               18   238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12   212
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              200   212
24 months   NIH-Birth        BANGLADESH                     1              376   426
24 months   NIH-Birth        BANGLADESH                     0               50   426
24 months   NIH-Crypto       BANGLADESH                     1              346   514
24 months   NIH-Crypto       BANGLADESH                     0              168   514
24 months   PROVIDE          BANGLADESH                     1              533   579
24 months   PROVIDE          BANGLADESH                     0               46   579


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
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
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
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
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
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
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: IRC, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/049f5988-f4ab-48c8-857d-c3f662b47911/e15f5e6b-c84b-44e7-8a4c-e6488853a0e1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/049f5988-f4ab-48c8-857d-c3f662b47911/e15f5e6b-c84b-44e7-8a4c-e6488853a0e1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/049f5988-f4ab-48c8-857d-c3f662b47911/e15f5e6b-c84b-44e7-8a4c-e6488853a0e1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          1                    NA                -1.0909278   -1.3096699   -0.8721857
Birth       GMS-Nepal    NEPAL                          0                    NA                -1.0849015   -1.1930925   -0.9767104
Birth       MAL-ED       BANGLADESH                     1                    NA                -0.9958919   -1.1557706   -0.8360132
Birth       MAL-ED       BANGLADESH                     0                    NA                -0.7062500   -0.9540327   -0.4584673
Birth       MAL-ED       INDIA                          1                    NA                -0.8772727   -1.1935310   -0.5610144
Birth       MAL-ED       INDIA                          0                    NA                -1.3116667   -2.0623390   -0.5609943
Birth       MAL-ED       NEPAL                          1                    NA                -0.9125000   -1.6413488   -0.1836512
Birth       MAL-ED       NEPAL                          0                    NA                -0.7568750   -1.1980753   -0.3156747
Birth       MAL-ED       PERU                           1                    NA                -0.2335135   -0.5745355    0.1075085
Birth       MAL-ED       PERU                           0                    NA                -0.0068786   -0.1420489    0.1282917
Birth       MAL-ED       SOUTH AFRICA                   1                    NA                -0.1959302   -0.4617510    0.0698905
Birth       MAL-ED       SOUTH AFRICA                   0                    NA                 0.0466667   -0.4532880    0.5466213
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.8440000    0.2094403    1.4785597
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.7655660    0.5608207    0.9703114
Birth       NIH-Birth    BANGLADESH                     1                    NA                -1.3476139   -1.4495511   -1.2456766
Birth       NIH-Birth    BANGLADESH                     0                    NA                -1.3240299   -1.5788672   -1.0691925
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -1.1904705   -1.2856303   -1.0953107
Birth       NIH-Crypto   BANGLADESH                     0                    NA                -1.4204848   -1.5959106   -1.2450591
Birth       PROVIDE      BANGLADESH                     1                    NA                -1.2956701   -1.3763022   -1.2150380
Birth       PROVIDE      BANGLADESH                     0                    NA                -1.3272340   -1.5795198   -1.0749483
6 months    CONTENT      PERU                           1                    NA                 1.0396119    0.9182294    1.1609944
6 months    CONTENT      PERU                           0                    NA                 1.4207143    0.9906630    1.8507656
6 months    GMS-Nepal    NEPAL                          1                    NA                -0.5598291   -0.7980139   -0.3216442
6 months    GMS-Nepal    NEPAL                          0                    NA                -0.6418916   -0.7493416   -0.5344417
6 months    MAL-ED       BANGLADESH                     1                    NA                -0.1146833   -0.2486487    0.0192822
6 months    MAL-ED       BANGLADESH                     0                    NA                -0.3502632   -0.8176916    0.1171653
6 months    MAL-ED       INDIA                          1                    NA                -0.7126780   -0.8453182   -0.5800379
6 months    MAL-ED       INDIA                          0                    NA                -0.6752222   -1.0830695   -0.2673750
6 months    MAL-ED       NEPAL                          1                    NA                 0.1153722   -0.0797204    0.3104648
6 months    MAL-ED       NEPAL                          0                    NA                 0.1385847   -0.0448681    0.3220374
6 months    MAL-ED       PERU                           1                    NA                 1.0828879    0.7984978    1.3672781
6 months    MAL-ED       PERU                           0                    NA                 1.0425432    0.9071202    1.1779662
6 months    MAL-ED       SOUTH AFRICA                   1                    NA                 0.5386390    0.3752068    0.7020712
6 months    MAL-ED       SOUTH AFRICA                   0                    NA                 0.5610000    0.1590909    0.9629091
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1921429   -0.4103635    0.7946492
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5563925    0.4213479    0.6914371
6 months    NIH-Birth    BANGLADESH                     1                    NA                -0.4098864   -0.5067896   -0.3129833
6 months    NIH-Birth    BANGLADESH                     0                    NA                -0.7313793   -0.9725391   -0.4902196
6 months    NIH-Crypto   BANGLADESH                     1                    NA                 0.0543017   -0.0374388    0.1460422
6 months    NIH-Crypto   BANGLADESH                     0                    NA                -0.0442697   -0.1984281    0.1098888
6 months    PROVIDE      BANGLADESH                     1                    NA                -0.1767534   -0.2630945   -0.0904123
6 months    PROVIDE      BANGLADESH                     0                    NA                -0.4695652   -0.7448374   -0.1942930
24 months   CONTENT      PERU                           1                    NA                 0.5757792    0.4357748    0.7157837
24 months   CONTENT      PERU                           0                    NA                 0.8130000    0.3923400    1.2336600
24 months   GMS-Nepal    NEPAL                          1                    NA                -1.2508565   -1.4887477   -1.0129653
24 months   GMS-Nepal    NEPAL                          0                    NA                -1.1866999   -1.3035422   -1.0698576
24 months   MAL-ED       BANGLADESH                     1                    NA                -0.8077949   -0.9341289   -0.6814609
24 months   MAL-ED       BANGLADESH                     0                    NA                -0.9511765   -1.4088437   -0.4935092
24 months   MAL-ED       INDIA                          1                    NA                -0.9359434   -1.0554667   -0.8164201
24 months   MAL-ED       INDIA                          0                    NA                -1.1736667   -1.6019136   -0.7454198
24 months   MAL-ED       NEPAL                          1                    NA                -0.2774490   -0.4507195   -0.1041785
24 months   MAL-ED       NEPAL                          0                    NA                -0.4026829   -0.5550729   -0.2502930
24 months   MAL-ED       PERU                           1                    NA                 0.1863605   -0.0693406    0.4420617
24 months   MAL-ED       PERU                           0                    NA                 0.0869682   -0.0530887    0.2270251
24 months   MAL-ED       SOUTH AFRICA                   1                    NA                 0.4042462    0.2751613    0.5333311
24 months   MAL-ED       SOUTH AFRICA                   0                    NA                 0.4675000    0.1966855    0.7383145
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0420833   -0.4589904    0.3748237
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0531333   -0.0777419    0.1840085
24 months   NIH-Birth    BANGLADESH                     1                    NA                -0.8863719   -0.9916999   -0.7810439
24 months   NIH-Birth    BANGLADESH                     0                    NA                -1.0934000   -1.3612968   -0.8255032
24 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.6369653   -0.7526951   -0.5212356
24 months   NIH-Crypto   BANGLADESH                     0                    NA                -0.5555357   -0.7197739   -0.3912975
24 months   PROVIDE      BANGLADESH                     1                    NA                -0.8677486   -0.9536587   -0.7818385
24 months   PROVIDE      BANGLADESH                     0                    NA                -1.1839130   -1.4730698   -0.8947563


### Parameter: E(Y)


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          NA                   NA                -1.0860636   -1.1830454   -0.9890818
Birth       MAL-ED       BANGLADESH                     NA                   NA                -0.9728358   -1.1217009   -0.8239707
Birth       MAL-ED       INDIA                          NA                   NA                -0.9441026   -1.2397919   -0.6484132
Birth       MAL-ED       NEPAL                          NA                   NA                -0.8087500   -1.1914221   -0.4260779
Birth       MAL-ED       PERU                           NA                   NA                -0.0468095   -0.1738806    0.0802616
Birth       MAL-ED       SOUTH AFRICA                   NA                   NA                -0.1729474   -0.4186222    0.0727275
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7690991    0.5714748    0.9667234
Birth       NIH-Birth    BANGLADESH                     NA                   NA                -1.3448514   -1.4396716   -1.2500312
Birth       NIH-Crypto   BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROVIDE      BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
6 months    CONTENT      PERU                           NA                   NA                 1.0644279    0.9468682    1.1819876
6 months    GMS-Nepal    NEPAL                          NA                   NA                -0.6273772   -0.7253868   -0.5293676
6 months    MAL-ED       BANGLADESH                     NA                   NA                -0.1333333   -0.2623761   -0.0042906
6 months    MAL-ED       INDIA                          NA                   NA                -0.7102872   -0.8371659   -0.5834085
6 months    MAL-ED       NEPAL                          NA                   NA                 0.1281441   -0.0056126    0.2619008
6 months    MAL-ED       PERU                           NA                   NA                 1.0512099    0.9285617    1.1738581
6 months    MAL-ED       SOUTH AFRICA                   NA                   NA                 0.5404351    0.3867005    0.6941696
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5355782    0.4032519    0.6679046
6 months    NIH-Birth    BANGLADESH                     NA                   NA                -0.4447399   -0.5354039   -0.3540758
6 months    NIH-Crypto   BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROVIDE      BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
24 months   CONTENT      PERU                           NA                   NA                 0.5902439    0.4560143    0.7244735
24 months   GMS-Nepal    NEPAL                          NA                   NA                -1.1990840   -1.3039914   -1.0941766
24 months   MAL-ED       BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED       INDIA                          NA                   NA                -0.9516520   -1.0670654   -0.8362385
24 months   MAL-ED       NEPAL                          NA                   NA                -0.3471493   -0.4618867   -0.2324120
24 months   MAL-ED       PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   MAL-ED       SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0477437   -0.0779935    0.1734809
24 months   NIH-Birth    BANGLADESH                     NA                   NA                -0.9106710   -1.0090143   -0.8123277
24 months   NIH-Crypto   BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROVIDE      BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187


### Parameter: ATE


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal    NEPAL                          0                    1                  0.0060264   -0.2380093    0.2500620
Birth       MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       BANGLADESH                     0                    1                  0.2896419   -0.0052437    0.5845274
Birth       MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       INDIA                          0                    1                 -0.4343939   -1.2489664    0.3801785
Birth       MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       NEPAL                          0                    1                  0.1556250   -0.6963599    1.0076099
Birth       MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU                           0                    1                  0.2266349   -0.1401989    0.5934687
Birth       MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       SOUTH AFRICA                   0                    1                  0.2425969   -0.3236321    0.8088259
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0784340   -0.7452073    0.5883394
Birth       NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH                     0                    1                  0.0235840   -0.2508851    0.2980531
Birth       NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH                     0                    1                 -0.2300144   -0.4295879   -0.0304409
Birth       PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE      BANGLADESH                     0                    1                 -0.0315639   -0.2964217    0.2332939
6 months    CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    CONTENT      PERU                           0                    1                  0.3811023   -0.0657509    0.8279556
6 months    GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal    NEPAL                          0                    1                 -0.0820626   -0.3433622    0.1792371
6 months    MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BANGLADESH                     0                    1                 -0.2355799   -0.7218269    0.2506671
6 months    MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA                          0                    1                  0.0374558   -0.3914181    0.4663297
6 months    MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL                          0                    1                  0.0232125   -0.2445860    0.2910110
6 months    MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU                           0                    1                 -0.0403447   -0.3553322    0.2746428
6 months    MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       SOUTH AFRICA                   0                    1                  0.0223610   -0.4115065    0.4562285
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.3642496   -0.2532056    0.9817048
6 months    NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH                     0                    1                 -0.3214929   -0.5813933   -0.0615924
6 months    NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH                     0                    1                 -0.0985713   -0.2779624    0.0808197
6 months    PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE      BANGLADESH                     0                    1                 -0.2928118   -0.5813071   -0.0043164
24 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   CONTENT      PERU                           0                    1                  0.2372208   -0.2061256    0.6805672
24 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal    NEPAL                          0                    1                  0.0641566   -0.2008799    0.3291931
24 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BANGLADESH                     0                    1                 -0.1433816   -0.6181653    0.3314021
24 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA                          0                    1                 -0.2377233   -0.6823368    0.2068903
24 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL                          0                    1                 -0.1252339   -0.3559835    0.1055156
24 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU                           0                    1                 -0.0993923   -0.3909383    0.1921536
24 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       SOUTH AFRICA                   0                    1                  0.0632538   -0.2367519    0.3632594
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0952167   -0.3417499    0.5321833
24 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH                     0                    1                 -0.2070281   -0.4948869    0.0808307
24 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0814296   -0.1194872    0.2823464
24 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE      BANGLADESH                     0                    1                 -0.3161645   -0.6178135   -0.0145154


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          1                    NA                 0.0048642   -0.1921110    0.2018394
Birth       MAL-ED       BANGLADESH                     1                    NA                 0.0230561   -0.0028101    0.0489223
Birth       MAL-ED       INDIA                          1                    NA                -0.0668298   -0.2016929    0.0680332
Birth       MAL-ED       NEPAL                          1                    NA                 0.1037500   -0.4650307    0.6725307
Birth       MAL-ED       PERU                           1                    NA                 0.1867040   -0.1157238    0.4891318
Birth       MAL-ED       SOUTH AFRICA                   1                    NA                 0.0229829   -0.0325492    0.0785150
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0749009   -0.7116467    0.5618449
Birth       NIH-Birth    BANGLADESH                     1                    NA                 0.0027625   -0.0293929    0.0349178
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -0.0536809   -0.1008071   -0.0065546
Birth       PROVIDE      BANGLADESH                     1                    NA                -0.0027885   -0.0262000    0.0206229
6 months    CONTENT      PERU                           1                    NA                 0.0248160   -0.0068917    0.0565236
6 months    GMS-Nepal    NEPAL                          1                    NA                -0.0675481   -0.2826514    0.1475552
6 months    MAL-ED       BANGLADESH                     1                    NA                -0.0186501   -0.0579802    0.0206800
6 months    MAL-ED       INDIA                          1                    NA                 0.0023908   -0.0250093    0.0297908
6 months    MAL-ED       NEPAL                          1                    NA                 0.0127719   -0.1345833    0.1601272
6 months    MAL-ED       PERU                           1                    NA                -0.0316781   -0.2790095    0.2156534
6 months    MAL-ED       SOUTH AFRICA                   1                    NA                 0.0017961   -0.0330609    0.0366531
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3434354   -0.2388333    0.9257041
6 months    NIH-Birth    BANGLADESH                     1                    NA                -0.0348534   -0.0642773   -0.0054296
6 months    NIH-Crypto   BANGLADESH                     1                    NA                -0.0245394   -0.0693083    0.0202294
6 months    PROVIDE      BANGLADESH                     1                    NA                -0.0223372   -0.0452043    0.0005298
24 months   CONTENT      PERU                           1                    NA                 0.0144647   -0.0139384    0.0428678
24 months   GMS-Nepal    NEPAL                          1                    NA                 0.0517725   -0.1621197    0.2656646
24 months   MAL-ED       BANGLADESH                     1                    NA                -0.0114976   -0.0499307    0.0269355
24 months   MAL-ED       INDIA                          1                    NA                -0.0157086   -0.0460804    0.0146633
24 months   MAL-ED       NEPAL                          1                    NA                -0.0697003   -0.1983895    0.0589888
24 months   MAL-ED       PERU                           1                    NA                -0.0751624   -0.2957142    0.1453895
24 months   MAL-ED       SOUTH AFRICA                   1                    NA                 0.0047839   -0.0180053    0.0275731
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0898270   -0.3224163    0.5020704
24 months   NIH-Birth    BANGLADESH                     1                    NA                -0.0242991   -0.0586741    0.0100760
24 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0266151   -0.0391373    0.0923676
24 months   PROVIDE      BANGLADESH                     1                    NA                -0.0251184   -0.0500768   -0.0001601
