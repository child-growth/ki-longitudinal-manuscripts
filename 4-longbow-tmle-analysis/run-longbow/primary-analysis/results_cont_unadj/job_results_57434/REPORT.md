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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        exclfeed3    n_cell      n
----------  ---------------  -----------------------------  ----------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          1                 4      4
Birth       CMC-V-BCS-2002   INDIA                          0                 0      4
Birth       EE               PAKISTAN                       1                22     22
Birth       EE               PAKISTAN                       0                 0     22
Birth       GMS-Nepal        NEPAL                          1               352    422
Birth       GMS-Nepal        NEPAL                          0                70    422
Birth       IRC              INDIA                          1                 0      9
Birth       IRC              INDIA                          0                 9      9
Birth       Keneba           GAMBIA                         1              1133   1282
Birth       Keneba           GAMBIA                         0               149   1282
Birth       MAL-ED           BANGLADESH                     1               130    202
Birth       MAL-ED           BANGLADESH                     0                72    202
Birth       MAL-ED           BRAZIL                         1                11     55
Birth       MAL-ED           BRAZIL                         0                44     55
Birth       MAL-ED           INDIA                          1                22     39
Birth       MAL-ED           INDIA                          0                17     39
Birth       MAL-ED           NEPAL                          1                 8     25
Birth       MAL-ED           NEPAL                          0                17     25
Birth       MAL-ED           PERU                           1                47    218
Birth       MAL-ED           PERU                           0               171    218
Birth       MAL-ED           SOUTH AFRICA                   1                12     99
Birth       MAL-ED           SOUTH AFRICA                   0                87     99
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                15     95
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                80     95
Birth       PROVIDE          BANGLADESH                     1               381    532
Birth       PROVIDE          BANGLADESH                     0               151    532
Birth       SAS-CompFeed     INDIA                          1               310    325
Birth       SAS-CompFeed     INDIA                          0                15    325
6 months    CMC-V-BCS-2002   INDIA                          1                10     10
6 months    CMC-V-BCS-2002   INDIA                          0                 0     10
6 months    EE               PAKISTAN                       1                39     39
6 months    EE               PAKISTAN                       0                 0     39
6 months    GMS-Nepal        NEPAL                          1               367    441
6 months    GMS-Nepal        NEPAL                          0                74    441
6 months    IRC              INDIA                          1                 0     10
6 months    IRC              INDIA                          0                10     10
6 months    Keneba           GAMBIA                         1              1541   1742
6 months    Keneba           GAMBIA                         0               201   1742
6 months    MAL-ED           BANGLADESH                     1               152    233
6 months    MAL-ED           BANGLADESH                     0                81    233
6 months    MAL-ED           BRAZIL                         1                60    187
6 months    MAL-ED           BRAZIL                         0               127    187
6 months    MAL-ED           INDIA                          1               110    210
6 months    MAL-ED           INDIA                          0               100    210
6 months    MAL-ED           NEPAL                          1                70    227
6 months    MAL-ED           NEPAL                          0               157    227
6 months    MAL-ED           PERU                           1                61    270
6 months    MAL-ED           PERU                           0               209    270
6 months    MAL-ED           SOUTH AFRICA                   1                22    244
6 months    MAL-ED           SOUTH AFRICA                   0               222    244
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                46    212
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               166    212
6 months    PROVIDE          BANGLADESH                     1               428    603
6 months    PROVIDE          BANGLADESH                     0               175    603
6 months    SAS-CompFeed     INDIA                          1               376    395
6 months    SAS-CompFeed     INDIA                          0                19    395
24 months   CMC-V-BCS-2002   INDIA                          1                10     10
24 months   CMC-V-BCS-2002   INDIA                          0                 0     10
24 months   EE               PAKISTAN                       1                20     20
24 months   EE               PAKISTAN                       0                 0     20
24 months   GMS-Nepal        NEPAL                          1               322    384
24 months   GMS-Nepal        NEPAL                          0                62    384
24 months   IRC              INDIA                          1                 0     10
24 months   IRC              INDIA                          0                10     10
24 months   Keneba           GAMBIA                         1              1274   1421
24 months   Keneba           GAMBIA                         0               147   1421
24 months   MAL-ED           BANGLADESH                     1               135    205
24 months   MAL-ED           BANGLADESH                     0                70    205
24 months   MAL-ED           BRAZIL                         1                52    152
24 months   MAL-ED           BRAZIL                         0               100    152
24 months   MAL-ED           INDIA                          1               102    202
24 months   MAL-ED           INDIA                          0               100    202
24 months   MAL-ED           NEPAL                          1                67    220
24 months   MAL-ED           NEPAL                          0               153    220
24 months   MAL-ED           PERU                           1                43    198
24 months   MAL-ED           PERU                           0               155    198
24 months   MAL-ED           SOUTH AFRICA                   1                19    228
24 months   MAL-ED           SOUTH AFRICA                   0               209    228
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                38    184
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               146    184
24 months   PROVIDE          BANGLADESH                     1               408    579
24 months   PROVIDE          BANGLADESH                     0               171    579


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/376ab459-0bf7-4afd-b295-0ceee710e5ca/727f57b8-bac3-4fb3-af45-a519b6f71002/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/376ab459-0bf7-4afd-b295-0ceee710e5ca/727f57b8-bac3-4fb3-af45-a519b6f71002/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/376ab459-0bf7-4afd-b295-0ceee710e5ca/727f57b8-bac3-4fb3-af45-a519b6f71002/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          1                    NA                -1.1124432   -1.2336464   -0.9912399
Birth       GMS-Nepal      NEPAL                          0                    NA                -1.0324286   -1.2641944   -0.8006628
Birth       Keneba         GAMBIA                         1                    NA                -1.2574448   -1.3266766   -1.1882131
Birth       Keneba         GAMBIA                         0                    NA                -1.3048658   -1.5220783   -1.0876532
Birth       MAL-ED         BANGLADESH                     1                    NA                -0.8949231   -1.0792337   -0.7106124
Birth       MAL-ED         BANGLADESH                     0                    NA                -1.0245833   -1.2736100   -0.7755567
Birth       MAL-ED         BRAZIL                         1                    NA                 0.4418182   -0.2215612    1.1051976
Birth       MAL-ED         BRAZIL                         0                    NA                 0.4290909    0.0450384    0.8131434
Birth       MAL-ED         INDIA                          1                    NA                -0.9881818   -1.3731602   -0.6032035
Birth       MAL-ED         INDIA                          0                    NA                -0.9647059   -1.4004407   -0.5289711
Birth       MAL-ED         NEPAL                          1                    NA                -0.4487500   -0.8783289   -0.0191711
Birth       MAL-ED         NEPAL                          0                    NA                -0.9570588   -1.4394884   -0.4746293
Birth       MAL-ED         PERU                           1                    NA                 0.2078723   -0.0344923    0.4502370
Birth       MAL-ED         PERU                           0                    NA                -0.0998830   -0.2401451    0.0403790
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                -0.1025000   -0.7159377    0.5109377
Birth       MAL-ED         SOUTH AFRICA                   0                    NA                -0.1666667   -0.4090416    0.0757083
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.3633333    0.9342962    1.7923704
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.6940000    0.4624928    0.9255072
Birth       PROVIDE        BANGLADESH                     1                    NA                -1.2615223   -1.3516334   -1.1714113
Birth       PROVIDE        BANGLADESH                     0                    NA                -1.3916556   -1.5374010   -1.2459103
Birth       SAS-CompFeed   INDIA                          1                    NA                -0.6397097   -0.8621395   -0.4172798
Birth       SAS-CompFeed   INDIA                          0                    NA                -1.0713333   -1.6580583   -0.4846084
6 months    GMS-Nepal      NEPAL                          1                    NA                -0.6271798   -0.7373913   -0.5169683
6 months    GMS-Nepal      NEPAL                          0                    NA                -0.5836712   -0.8323071   -0.3350353
6 months    Keneba         GAMBIA                         1                    NA                -0.1784105   -0.2368092   -0.1200118
6 months    Keneba         GAMBIA                         0                    NA                -0.4150779   -0.5933349   -0.2368209
6 months    MAL-ED         BANGLADESH                     1                    NA                -0.0965022   -0.2621967    0.0691923
6 months    MAL-ED         BANGLADESH                     0                    NA                -0.1942798   -0.4117749    0.0232152
6 months    MAL-ED         BRAZIL                         1                    NA                 1.1392778    0.8156735    1.4628820
6 months    MAL-ED         BRAZIL                         0                    NA                 0.8979987    0.6894708    1.1065266
6 months    MAL-ED         INDIA                          1                    NA                -0.6888561   -0.8509420   -0.5267701
6 months    MAL-ED         INDIA                          0                    NA                -0.7513167   -0.9593805   -0.5432529
6 months    MAL-ED         NEPAL                          1                    NA                 0.1985476   -0.0480370    0.4451322
6 months    MAL-ED         NEPAL                          0                    NA                 0.0620594   -0.0992827    0.2234016
6 months    MAL-ED         PERU                           1                    NA                 1.1737295    0.9621747    1.3852843
6 months    MAL-ED         PERU                           0                    NA                 1.0157137    0.8703660    1.1610615
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                 0.4793939    0.1776578    0.7811301
6 months    MAL-ED         SOUTH AFRICA                   0                    NA                 0.5640390    0.4009538    0.7271242
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.8092391    0.5033830    1.1150953
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.4472088    0.2939423    0.6004754
6 months    PROVIDE        BANGLADESH                     1                    NA                -0.1355179   -0.2298689   -0.0411669
6 months    PROVIDE        BANGLADESH                     0                    NA                -0.3545714   -0.5195489   -0.1895939
6 months    SAS-CompFeed   INDIA                          1                    NA                -0.6469149   -0.7835786   -0.5102511
6 months    SAS-CompFeed   INDIA                          0                    NA                -0.3968421   -0.8495292    0.0558450
24 months   GMS-Nepal      NEPAL                          1                    NA                -1.1537474   -1.2663233   -1.0411715
24 months   GMS-Nepal      NEPAL                          0                    NA                -1.0663978   -1.3047957   -0.8280000
24 months   Keneba         GAMBIA                         1                    NA                -0.7741136   -0.8283859   -0.7198412
24 months   Keneba         GAMBIA                         0                    NA                -0.9575771   -1.1080094   -0.8071448
24 months   MAL-ED         BANGLADESH                     1                    NA                -0.8290370   -0.9859194   -0.6721547
24 months   MAL-ED         BANGLADESH                     0                    NA                -0.7665000   -0.9557893   -0.5772107
24 months   MAL-ED         BRAZIL                         1                    NA                 0.3010577   -0.0393674    0.6414828
24 months   MAL-ED         BRAZIL                         0                    NA                 0.6005833    0.3152474    0.8859193
24 months   MAL-ED         INDIA                          1                    NA                -0.9442647   -1.0954140   -0.7931155
24 months   MAL-ED         INDIA                          0                    NA                -0.9592500   -1.1429089   -0.7755911
24 months   MAL-ED         NEPAL                          1                    NA                -0.2583582   -0.4657222   -0.0509942
24 months   MAL-ED         NEPAL                          0                    NA                -0.4318954   -0.5724256   -0.2913652
24 months   MAL-ED         PERU                           1                    NA                 0.1178101   -0.1002228    0.3358429
24 months   MAL-ED         PERU                           0                    NA                 0.1175484   -0.0220882    0.2571850
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.7323684    0.4646052    1.0001317
24 months   MAL-ED         SOUTH AFRICA                   0                    NA                 0.3829625    0.2528522    0.5130729
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0584211   -0.1721451    0.2889872
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0472717   -0.1123699    0.2069132
24 months   PROVIDE        BANGLADESH                     1                    NA                -0.9202574   -1.0173798   -0.8231349
24 months   PROVIDE        BANGLADESH                     0                    NA                -0.8275146   -0.9839667   -0.6710626


### Parameter: E(Y)


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          NA                   NA                -1.0991706   -1.2073693   -0.9909719
Birth       Keneba         GAMBIA                         NA                   NA                -1.2629563   -1.3291505   -1.1967622
Birth       MAL-ED         BANGLADESH                     NA                   NA                -0.9411386   -1.0895370   -0.7927402
Birth       MAL-ED         BRAZIL                         NA                   NA                 0.4316364    0.0969688    0.7663039
Birth       MAL-ED         INDIA                          NA                   NA                -0.9779487   -1.2664810   -0.6894164
Birth       MAL-ED         NEPAL                          NA                   NA                -0.7944000   -1.1625222   -0.4262778
Birth       MAL-ED         PERU                           NA                   NA                -0.0335321   -0.1564905    0.0894263
Birth       MAL-ED         SOUTH AFRICA                   NA                   NA                -0.1588889   -0.3845288    0.0667510
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7996842    0.5874808    1.0118876
Birth       PROVIDE        BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed   INDIA                          NA                   NA                -0.6596308   -0.9005716   -0.4186900
6 months    GMS-Nepal      NEPAL                          NA                   NA                -0.6198791   -0.7206518   -0.5191063
6 months    Keneba         GAMBIA                         NA                   NA                -0.2057183   -0.2614359   -0.1500006
6 months    MAL-ED         BANGLADESH                     NA                   NA                -0.1304936   -0.2625419    0.0015547
6 months    MAL-ED         BRAZIL                         NA                   NA                 0.9754144    0.7990651    1.1517638
6 months    MAL-ED         INDIA                          NA                   NA                -0.7185992   -0.8491469   -0.5880515
6 months    MAL-ED         NEPAL                          NA                   NA                 0.1041483   -0.0311352    0.2394318
6 months    MAL-ED         PERU                           NA                   NA                 1.0514136    0.9289176    1.1739096
6 months    MAL-ED         SOUTH AFRICA                   NA                   NA                 0.5564071    0.4055220    0.7072922
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5257626    0.3871543    0.6643709
6 months    PROVIDE        BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed   INDIA                          NA                   NA                -0.6348861   -0.7630511   -0.5067211
24 months   GMS-Nepal      NEPAL                          NA                   NA                -1.1396441   -1.2416403   -1.0376479
24 months   Keneba         GAMBIA                         NA                   NA                -0.7930925   -0.8442611   -0.7419240
24 months   MAL-ED         BANGLADESH                     NA                   NA                -0.8076829   -0.9296166   -0.6857493
24 months   MAL-ED         BRAZIL                         NA                   NA                 0.4981140    0.2760418    0.7201863
24 months   MAL-ED         INDIA                          NA                   NA                -0.9516832   -1.0703961   -0.8329703
24 months   MAL-ED         NEPAL                          NA                   NA                -0.3790455   -0.4958857   -0.2622052
24 months   MAL-ED         PERU                           NA                   NA                 0.1176052   -0.0015211    0.2367315
24 months   MAL-ED         SOUTH AFRICA                   NA                   NA                 0.4120797    0.2900939    0.5340654
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0495743   -0.0857535    0.1849021
24 months   PROVIDE        BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187


### Parameter: ATE


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal      NEPAL                          0                    1                  0.0800146   -0.1815301    0.3415593
Birth       Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba         GAMBIA                         0                    1                 -0.0474209   -0.2753997    0.1805578
Birth       MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH                     0                    1                 -0.1296603   -0.4394742    0.1801537
Birth       MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BRAZIL                         0                    1                 -0.0127273   -0.7792575    0.7538029
Birth       MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         INDIA                          0                    1                  0.0234759   -0.5579646    0.6049165
Birth       MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         NEPAL                          0                    1                 -0.5083088   -1.1542781    0.1376604
Birth       MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         PERU                           0                    1                 -0.3077554   -0.5877805   -0.0277302
Birth       MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         SOUTH AFRICA                   0                    1                 -0.0641667   -0.7237510    0.5954176
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.6693333   -1.1568458   -0.1818209
Birth       PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE        BANGLADESH                     0                    1                 -0.1301333   -0.3014859    0.0412193
Birth       SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA                          0                    1                 -0.4316237   -0.9347060    0.0714587
6 months    GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL                          0                    1                  0.0435087   -0.2284590    0.3154763
6 months    Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba         GAMBIA                         0                    1                 -0.2366675   -0.4242467   -0.0490882
6 months    MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH                     0                    1                 -0.0977776   -0.3711981    0.1756428
6 months    MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL                         0                    1                 -0.2412791   -0.6262513    0.1436931
6 months    MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         INDIA                          0                    1                 -0.0624606   -0.3262074    0.2012862
6 months    MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL                          0                    1                 -0.1364882   -0.4311664    0.1581900
6 months    MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU                           0                    1                 -0.1580158   -0.4146895    0.0986579
6 months    MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         SOUTH AFRICA                   0                    1                  0.0846451   -0.2583439    0.4276341
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.3620303   -0.7041394   -0.0199212
6 months    PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE        BANGLADESH                     0                    1                 -0.2190535   -0.4091053   -0.0290017
6 months    SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA                          0                    1                  0.2500728   -0.2551626    0.7553082
24 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL                          0                    1                  0.0873496   -0.1762920    0.3509911
24 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba         GAMBIA                         0                    1                 -0.1834635   -0.3433866   -0.0235405
24 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH                     0                    1                  0.0625370   -0.1833135    0.3083876
24 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL                         0                    1                  0.2995256   -0.1446656    0.7437169
24 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         INDIA                          0                    1                 -0.0149853   -0.2528439    0.2228733
24 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL                          0                    1                 -0.1735372   -0.4240339    0.0769595
24 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         PERU                           0                    1                 -0.0002617   -0.2591762    0.2586528
24 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         SOUTH AFRICA                   0                    1                 -0.3494059   -0.6471069   -0.0517049
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0111494   -0.2915886    0.2692899
24 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE        BANGLADESH                     0                    1                  0.0927427   -0.0914040    0.2768894


### Parameter: PAR


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          1                    NA                 0.0132726   -0.0302047    0.0567498
Birth       Keneba         GAMBIA                         1                    NA                -0.0055115   -0.0320213    0.0209983
Birth       MAL-ED         BANGLADESH                     1                    NA                -0.0462155   -0.1569775    0.0645464
Birth       MAL-ED         BRAZIL                         1                    NA                -0.0101818   -0.6234075    0.6030438
Birth       MAL-ED         INDIA                          1                    NA                 0.0102331   -0.2432424    0.2637086
Birth       MAL-ED         NEPAL                          1                    NA                -0.3456500   -0.7950359    0.1037359
Birth       MAL-ED         PERU                           1                    NA                -0.2414045   -0.4617017   -0.0211072
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                -0.0563889   -0.6360384    0.5232606
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5636491   -0.9771402   -0.1501581
Birth       PROVIDE        BANGLADESH                     1                    NA                -0.0369363   -0.0858275    0.0119548
Birth       SAS-CompFeed   INDIA                          1                    NA                -0.0199211   -0.0507808    0.0109386
6 months    GMS-Nepal      NEPAL                          1                    NA                 0.0073008   -0.0383608    0.0529623
6 months    Keneba         GAMBIA                         1                    NA                -0.0273078   -0.0492410   -0.0053745
6 months    MAL-ED         BANGLADESH                     1                    NA                -0.0339914   -0.1292318    0.0612491
6 months    MAL-ED         BRAZIL                         1                    NA                -0.1638633   -0.4258156    0.0980889
6 months    MAL-ED         INDIA                          1                    NA                -0.0297431   -0.1554081    0.0959218
6 months    MAL-ED         NEPAL                          1                    NA                -0.0943993   -0.2983732    0.1095746
6 months    MAL-ED         PERU                           1                    NA                -0.1223159   -0.3211573    0.0765254
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                 0.0770132   -0.2350655    0.3890918
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2834766   -0.5521101   -0.0148430
6 months    PROVIDE        BANGLADESH                     1                    NA                -0.0635727   -0.1192976   -0.0078479
6 months    SAS-CompFeed   INDIA                          1                    NA                 0.0120288   -0.0145556    0.0386132
24 months   GMS-Nepal      NEPAL                          1                    NA                 0.0141033   -0.0285853    0.0567920
24 months   Keneba         GAMBIA                         1                    NA                -0.0189790   -0.0357760   -0.0021819
24 months   MAL-ED         BANGLADESH                     1                    NA                 0.0213541   -0.0626934    0.1054017
24 months   MAL-ED         BRAZIL                         1                    NA                 0.1970563   -0.0960523    0.4901650
24 months   MAL-ED         INDIA                          1                    NA                -0.0074185   -0.1251748    0.1103379
24 months   MAL-ED         NEPAL                          1                    NA                -0.1206872   -0.2952171    0.0538426
24 months   MAL-ED         PERU                           1                    NA                -0.0002049   -0.2028904    0.2024807
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.3202887   -0.5934703   -0.0471072
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0088468   -0.2313702    0.2136766
24 months   PROVIDE        BANGLADESH                     1                    NA                 0.0273903   -0.0271042    0.0818849
