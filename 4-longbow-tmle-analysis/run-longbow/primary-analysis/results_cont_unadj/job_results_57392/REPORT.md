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
Birth       EE               PAKISTAN                       1                35     35
Birth       EE               PAKISTAN                       0                 0     35
Birth       GMS-Nepal        NEPAL                          1               380    458
Birth       GMS-Nepal        NEPAL                          0                78    458
Birth       IRC              INDIA                          1                 0     10
Birth       IRC              INDIA                          0                10     10
Birth       Keneba           GAMBIA                         1              1198   1356
Birth       Keneba           GAMBIA                         0               158   1356
Birth       MAL-ED           BANGLADESH                     1               138    215
Birth       MAL-ED           BANGLADESH                     0                77    215
Birth       MAL-ED           BRAZIL                         1                12     57
Birth       MAL-ED           BRAZIL                         0                45     57
Birth       MAL-ED           INDIA                          1                24     41
Birth       MAL-ED           INDIA                          0                17     41
Birth       MAL-ED           NEPAL                          1                 8     26
Birth       MAL-ED           NEPAL                          0                18     26
Birth       MAL-ED           PERU                           1                49    223
Birth       MAL-ED           PERU                           0               174    223
Birth       MAL-ED           SOUTH AFRICA                   1                12    100
Birth       MAL-ED           SOUTH AFRICA                   0                88    100
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                17    102
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                85    102
Birth       PROVIDE          BANGLADESH                     1               387    539
Birth       PROVIDE          BANGLADESH                     0               152    539
Birth       SAS-CompFeed     INDIA                          1               346    364
Birth       SAS-CompFeed     INDIA                          0                18    364
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
6 months    PROVIDE          BANGLADESH                     1               428    604
6 months    PROVIDE          BANGLADESH                     0               176    604
6 months    SAS-CompFeed     INDIA                          1               379    398
6 months    SAS-CompFeed     INDIA                          0                19    398
24 months   CMC-V-BCS-2002   INDIA                          1                10     10
24 months   CMC-V-BCS-2002   INDIA                          0                 0     10
24 months   EE               PAKISTAN                       1                20     20
24 months   EE               PAKISTAN                       0                 0     20
24 months   GMS-Nepal        NEPAL                          1               322    384
24 months   GMS-Nepal        NEPAL                          0                62    384
24 months   IRC              INDIA                          1                 0     10
24 months   IRC              INDIA                          0                10     10
24 months   Keneba           GAMBIA                         1              1274   1420
24 months   Keneba           GAMBIA                         0               146   1420
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
24 months   PROVIDE          BANGLADESH                     1               408    578
24 months   PROVIDE          BANGLADESH                     0               170    578


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
![](/tmp/ee8f4493-8c95-4a42-a69c-c601f8bea6bf/de3d7792-d7d2-41be-b522-0d92571c11a2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ee8f4493-8c95-4a42-a69c-c601f8bea6bf/de3d7792-d7d2-41be-b522-0d92571c11a2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ee8f4493-8c95-4a42-a69c-c601f8bea6bf/de3d7792-d7d2-41be-b522-0d92571c11a2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          1                    NA                -1.0255789   -1.1325437   -0.9186142
Birth       GMS-Nepal      NEPAL                          0                    NA                -1.2014103   -1.4639594   -0.9388612
Birth       Keneba         GAMBIA                         1                    NA                 0.0018781   -0.0723763    0.0761325
Birth       Keneba         GAMBIA                         0                    NA                 0.0701266   -0.1295523    0.2698055
Birth       MAL-ED         BANGLADESH                     1                    NA                -1.1304348   -1.2909464   -0.9699232
Birth       MAL-ED         BANGLADESH                     0                    NA                -1.0314286   -1.2830106   -0.7798466
Birth       MAL-ED         BRAZIL                         1                    NA                -0.6000000   -1.2327078    0.0327078
Birth       MAL-ED         BRAZIL                         0                    NA                -0.7262222   -1.0462770   -0.4061674
Birth       MAL-ED         INDIA                          1                    NA                -1.4654167   -1.9400167   -0.9908166
Birth       MAL-ED         INDIA                          0                    NA                -0.8435294   -1.1419052   -0.5451536
Birth       MAL-ED         NEPAL                          1                    NA                -0.6962500   -1.1273498   -0.2651502
Birth       MAL-ED         NEPAL                          0                    NA                -0.8800000   -1.3706027   -0.3893973
Birth       MAL-ED         PERU                           1                    NA                -0.8685714   -1.1502206   -0.5869222
Birth       MAL-ED         PERU                           0                    NA                -0.8772989   -1.0058028   -0.7487949
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                -0.6958333   -1.1306097   -0.2610570
Birth       MAL-ED         SOUTH AFRICA                   0                    NA                -0.5638636   -0.7820314   -0.3456959
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3535294   -1.8653375   -0.8417213
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.0596471   -1.3047881   -0.8145060
Birth       PROVIDE        BANGLADESH                     1                    NA                -0.9182171   -1.0025662   -0.8338679
Birth       PROVIDE        BANGLADESH                     0                    NA                -0.8007895   -0.9570548   -0.6445241
Birth       SAS-CompFeed   INDIA                          1                    NA                -1.3813295   -1.4669649   -1.2956940
Birth       SAS-CompFeed   INDIA                          0                    NA                -1.6316667   -2.4310586   -0.8322747
6 months    GMS-Nepal      NEPAL                          1                    NA                -1.3276521   -1.4225645   -1.2327398
6 months    GMS-Nepal      NEPAL                          0                    NA                -1.4607432   -1.7003727   -1.2211138
6 months    Keneba         GAMBIA                         1                    NA                -0.9291579   -0.9832318   -0.8750840
6 months    Keneba         GAMBIA                         0                    NA                -1.1005307   -1.2581027   -0.9429587
6 months    MAL-ED         BANGLADESH                     1                    NA                -1.1907785   -1.3236854   -1.0578716
6 months    MAL-ED         BANGLADESH                     0                    NA                -1.2871811   -1.5237565   -1.0506056
6 months    MAL-ED         BRAZIL                         1                    NA                 0.1029167   -0.1733737    0.3792070
6 months    MAL-ED         BRAZIL                         0                    NA                 0.0410630   -0.1467461    0.2288721
6 months    MAL-ED         INDIA                          1                    NA                -1.1845000   -1.3589674   -1.0100326
6 months    MAL-ED         INDIA                          0                    NA                -1.2175500   -1.4034570   -1.0316430
6 months    MAL-ED         NEPAL                          1                    NA                -0.6231667   -0.8470544   -0.3992790
6 months    MAL-ED         NEPAL                          0                    NA                -0.5367622   -0.6669112   -0.4066133
6 months    MAL-ED         PERU                           1                    NA                -1.3714617   -1.6053155   -1.1376080
6 months    MAL-ED         PERU                           0                    NA                -1.2931898   -1.4138326   -1.1725470
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                -0.7557576   -1.2217874   -0.2897278
6 months    MAL-ED         SOUTH AFRICA                   0                    NA                -1.0969895   -1.2319508   -0.9620281
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.4064855   -1.6630657   -1.1499053
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.4020984   -1.5467299   -1.2574669
6 months    PROVIDE        BANGLADESH                     1                    NA                -1.0868497   -1.1706493   -1.0030500
6 months    PROVIDE        BANGLADESH                     0                    NA                -1.1034659   -1.2574302   -0.9495017
6 months    SAS-CompFeed   INDIA                          1                    NA                -1.4578628   -1.6049871   -1.3107385
6 months    SAS-CompFeed   INDIA                          0                    NA                -1.7063158   -2.4149433   -0.9976883
24 months   GMS-Nepal      NEPAL                          1                    NA                -1.8821066   -1.9839409   -1.7802724
24 months   GMS-Nepal      NEPAL                          0                    NA                -1.8399462   -2.0757145   -1.6041780
24 months   Keneba         GAMBIA                         1                    NA                -1.5734617   -1.6306514   -1.5162720
24 months   Keneba         GAMBIA                         0                    NA                -1.7938082   -1.9665767   -1.6210397
24 months   MAL-ED         BANGLADESH                     1                    NA                -1.9723704   -2.1283064   -1.8164343
24 months   MAL-ED         BANGLADESH                     0                    NA                -2.0581429   -2.2846099   -1.8316758
24 months   MAL-ED         BRAZIL                         1                    NA                -0.0520192   -0.3498614    0.2458229
24 months   MAL-ED         BRAZIL                         0                    NA                 0.0022833   -0.2169028    0.2214695
24 months   MAL-ED         INDIA                          1                    NA                -2.0450490   -2.2283522   -1.8617458
24 months   MAL-ED         INDIA                          0                    NA                -1.7508500   -1.9458390   -1.5558610
24 months   MAL-ED         NEPAL                          1                    NA                -1.3850000   -1.5965114   -1.1734886
24 months   MAL-ED         NEPAL                          0                    NA                -1.2784967   -1.4245354   -1.1324580
24 months   MAL-ED         PERU                           1                    NA                -1.8033721   -2.0957099   -1.5110343
24 months   MAL-ED         PERU                           0                    NA                -1.7240753   -1.8566889   -1.5914616
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -1.4668421   -1.9029088   -1.0307754
24 months   MAL-ED         SOUTH AFRICA                   0                    NA                -1.6584171   -1.8039531   -1.5128811
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.5964474   -2.8988989   -2.2939958
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6977397   -2.8617814   -2.5336981
24 months   PROVIDE        BANGLADESH                     1                    NA                -1.6488725   -1.7471855   -1.5505596
24 months   PROVIDE        BANGLADESH                     0                    NA                -1.4909412   -1.6464417   -1.3354406


### Parameter: E(Y)


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          NA                   NA                -1.0555240   -1.1550843   -0.9559638
Birth       Keneba         GAMBIA                         NA                   NA                 0.0098304   -0.0597854    0.0794461
Birth       MAL-ED         BANGLADESH                     NA                   NA                -1.0949767   -1.2319917   -0.9579618
Birth       MAL-ED         BRAZIL                         NA                   NA                -0.6996491   -0.9856018   -0.4136965
Birth       MAL-ED         INDIA                          NA                   NA                -1.2075610   -1.5261540   -0.8889679
Birth       MAL-ED         NEPAL                          NA                   NA                -0.8234615   -1.1896049   -0.4573182
Birth       MAL-ED         PERU                           NA                   NA                -0.8753812   -0.9932108   -0.7575515
Birth       MAL-ED         SOUTH AFRICA                   NA                   NA                -0.5797000   -0.7788298   -0.3805702
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1086275   -1.3310338   -0.8862211
Birth       PROVIDE        BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed   INDIA                          NA                   NA                -1.3937088   -1.5095039   -1.2779137
6 months    GMS-Nepal      NEPAL                          NA                   NA                -1.3499849   -1.4387386   -1.2612312
6 months    Keneba         GAMBIA                         NA                   NA                -0.9489317   -1.0001696   -0.8976937
6 months    MAL-ED         BANGLADESH                     NA                   NA                -1.2242918   -1.3439424   -1.1046413
6 months    MAL-ED         BRAZIL                         NA                   NA                 0.0609091   -0.0944768    0.2162950
6 months    MAL-ED         INDIA                          NA                   NA                -1.2002381   -1.3274929   -1.0729833
6 months    MAL-ED         NEPAL                          NA                   NA                -0.5634068   -0.6769687   -0.4498449
6 months    MAL-ED         PERU                           NA                   NA                -1.3108735   -1.4182407   -1.2035062
6 months    MAL-ED         SOUTH AFRICA                   NA                   NA                -1.0662227   -1.1965862   -0.9358591
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.4030503   -1.5292443   -1.2768563
6 months    PROVIDE        BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed   INDIA                          NA                   NA                -1.4697236   -1.6333919   -1.3060553
24 months   GMS-Nepal      NEPAL                          NA                   NA                -1.8752995   -1.9688053   -1.7817937
24 months   Keneba         GAMBIA                         NA                   NA                -1.5961170   -1.6505261   -1.5417080
24 months   MAL-ED         BANGLADESH                     NA                   NA                -2.0016585   -2.1303297   -1.8729874
24 months   MAL-ED         BRAZIL                         NA                   NA                -0.0162939   -0.1929098    0.1603221
24 months   MAL-ED         INDIA                          NA                   NA                -1.8994059   -2.0346781   -1.7641337
24 months   MAL-ED         NEPAL                          NA                   NA                -1.3109318   -1.4313748   -1.1904888
24 months   MAL-ED         PERU                           NA                   NA                -1.7412963   -1.8630698   -1.6195228
24 months   MAL-ED         SOUTH AFRICA                   NA                   NA                -1.6424525   -1.7808926   -1.5040124
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6768207   -2.8213178   -2.5323235
24 months   PROVIDE        BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal      NEPAL                          0                    1                 -0.1758313   -0.4593335    0.1076709
Birth       Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba         GAMBIA                         0                    1                  0.0682485   -0.1447900    0.2812869
Birth       MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH                     0                    1                  0.0990062   -0.1994188    0.3974312
Birth       MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BRAZIL                         0                    1                 -0.1262222   -0.8352739    0.5828294
Birth       MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         INDIA                          0                    1                  0.6218873    0.0612864    1.1824881
Birth       MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         NEPAL                          0                    1                 -0.1837500   -0.8368488    0.4693488
Birth       MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         PERU                           0                    1                 -0.0087274   -0.3183070    0.3008522
Birth       MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         SOUTH AFRICA                   0                    1                  0.1319697   -0.3544742    0.6184136
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.2938824   -0.2736048    0.8613695
Birth       PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE        BANGLADESH                     0                    1                  0.1174276   -0.0601496    0.2950047
Birth       SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA                          0                    1                 -0.2503372   -1.0066389    0.5059645
6 months    GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL                          0                    1                 -0.1330911   -0.3908325    0.1246503
6 months    Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba         GAMBIA                         0                    1                 -0.1713728   -0.3379649   -0.0047807
6 months    MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH                     0                    1                 -0.0964026   -0.3677551    0.1749499
6 months    MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL                         0                    1                 -0.0618537   -0.3959324    0.2722250
6 months    MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         INDIA                          0                    1                 -0.0330500   -0.2880015    0.2219015
6 months    MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL                          0                    1                  0.0864045   -0.1725636    0.3453725
6 months    MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU                           0                    1                  0.0782720   -0.1848673    0.3414112
6 months    MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         SOUTH AFRICA                   0                    1                 -0.3412319   -0.8264106    0.1439467
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0043871   -0.2901493    0.2989235
6 months    PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE        BANGLADESH                     0                    1                 -0.0166162   -0.1919085    0.1586760
6 months    SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA                          0                    1                 -0.2484530   -0.9061015    0.4091955
24 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL                          0                    1                  0.0421604   -0.2146603    0.2989811
24 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba         GAMBIA                         0                    1                 -0.2203465   -0.4023345   -0.0383586
24 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH                     0                    1                 -0.0857725   -0.3607332    0.1891882
24 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL                         0                    1                  0.0543026   -0.3154981    0.4241032
24 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         INDIA                          0                    1                  0.2941990    0.0265785    0.5618196
24 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL                          0                    1                  0.1065033   -0.1505266    0.3635331
24 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         PERU                           0                    1                  0.0792968   -0.2417137    0.4003073
24 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         SOUTH AFRICA                   0                    1                 -0.1915750   -0.6512867    0.2681368
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1012924   -0.4453659    0.2427812
24 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE        BANGLADESH                     0                    1                  0.1579314   -0.0260411    0.3419038


### Parameter: PAR


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          1                    NA                -0.0299451   -0.0786059    0.0187158
Birth       Keneba         GAMBIA                         1                    NA                 0.0079523   -0.0168982    0.0328027
Birth       MAL-ED         BANGLADESH                     1                    NA                 0.0354580   -0.0716088    0.1425249
Birth       MAL-ED         BRAZIL                         1                    NA                -0.0996491   -0.6595890    0.4602907
Birth       MAL-ED         INDIA                          1                    NA                 0.2578557    0.0067680    0.5089434
Birth       MAL-ED         NEPAL                          1                    NA                -0.1272115   -0.5805774    0.3261543
Birth       MAL-ED         PERU                           1                    NA                -0.0068097   -0.2483656    0.2347461
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                 0.1161333   -0.3120206    0.5442873
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2449020   -0.2284861    0.7182900
Birth       PROVIDE        BANGLADESH                     1                    NA                 0.0331150   -0.0171611    0.0833911
Birth       SAS-CompFeed   INDIA                          1                    NA                -0.0123793   -0.0557043    0.0309456
6 months    GMS-Nepal      NEPAL                          1                    NA                -0.0223327   -0.0658308    0.0211653
6 months    Keneba         GAMBIA                         1                    NA                -0.0197738   -0.0391672   -0.0003803
6 months    MAL-ED         BANGLADESH                     1                    NA                -0.0335133   -0.1280310    0.0610043
6 months    MAL-ED         BRAZIL                         1                    NA                -0.0420076   -0.2689332    0.1849181
6 months    MAL-ED         INDIA                          1                    NA                -0.0157381   -0.1371642    0.1056880
6 months    MAL-ED         NEPAL                          1                    NA                 0.0597599   -0.1194257    0.2389455
6 months    MAL-ED         PERU                           1                    NA                 0.0605883   -0.1431385    0.2643151
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                -0.3104651   -0.7520691    0.1311389
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0034352   -0.2271925    0.2340629
6 months    PROVIDE        BANGLADESH                     1                    NA                -0.0048418   -0.0559239    0.0462403
6 months    SAS-CompFeed   INDIA                          1                    NA                -0.0118608   -0.0472806    0.0235590
24 months   GMS-Nepal      NEPAL                          1                    NA                 0.0068071   -0.0346878    0.0483021
24 months   Keneba         GAMBIA                         1                    NA                -0.0226553   -0.0416880   -0.0036227
24 months   MAL-ED         BANGLADESH                     1                    NA                -0.0292882   -0.1233429    0.0647666
24 months   MAL-ED         BRAZIL                         1                    NA                 0.0357254   -0.2075992    0.2790500
24 months   MAL-ED         INDIA                          1                    NA                 0.1456431    0.0116062    0.2796800
24 months   MAL-ED         NEPAL                          1                    NA                 0.0740682   -0.1048023    0.2529386
24 months   MAL-ED         PERU                           1                    NA                 0.0620758   -0.1892618    0.3134134
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.1756104   -0.5970691    0.2458484
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0803733   -0.3534528    0.1927062
24 months   PROVIDE        BANGLADESH                     1                    NA                 0.0464504   -0.0079768    0.1008776
