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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** predfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country                        predfeed36    sstunted   n_cell       n
----------  --------------  -----------------------------  -----------  ---------  -------  ------
Birth       EE              PAKISTAN                       1                    0        2       7
Birth       EE              PAKISTAN                       1                    1        1       7
Birth       EE              PAKISTAN                       0                    0        4       7
Birth       EE              PAKISTAN                       0                    1        0       7
Birth       GMS-Nepal       NEPAL                          1                    0      409     526
Birth       GMS-Nepal       NEPAL                          1                    1       13     526
Birth       GMS-Nepal       NEPAL                          0                    0      101     526
Birth       GMS-Nepal       NEPAL                          0                    1        3     526
Birth       JiVitA-3        BANGLADESH                     1                    0     7467   10681
Birth       JiVitA-3        BANGLADESH                     1                    1      867   10681
Birth       JiVitA-3        BANGLADESH                     0                    0     2093   10681
Birth       JiVitA-3        BANGLADESH                     0                    1      254   10681
Birth       JiVitA-4        BANGLADESH                     1                    0     1852    2517
Birth       JiVitA-4        BANGLADESH                     1                    1      147    2517
Birth       JiVitA-4        BANGLADESH                     0                    0      453    2517
Birth       JiVitA-4        BANGLADESH                     0                    1       65    2517
Birth       MAL-ED          BANGLADESH                     1                    0       70     221
Birth       MAL-ED          BANGLADESH                     1                    1        2     221
Birth       MAL-ED          BANGLADESH                     0                    0      144     221
Birth       MAL-ED          BANGLADESH                     0                    1        5     221
Birth       MAL-ED          BRAZIL                         1                    0        7      65
Birth       MAL-ED          BRAZIL                         1                    1        1      65
Birth       MAL-ED          BRAZIL                         0                    0       55      65
Birth       MAL-ED          BRAZIL                         0                    1        2      65
Birth       MAL-ED          INDIA                          1                    0        4      42
Birth       MAL-ED          INDIA                          1                    1        0      42
Birth       MAL-ED          INDIA                          0                    0       36      42
Birth       MAL-ED          INDIA                          0                    1        2      42
Birth       MAL-ED          NEPAL                          1                    0        1      26
Birth       MAL-ED          NEPAL                          1                    1        0      26
Birth       MAL-ED          NEPAL                          0                    0       24      26
Birth       MAL-ED          NEPAL                          0                    1        1      26
Birth       MAL-ED          PERU                           1                    0       58     223
Birth       MAL-ED          PERU                           1                    1        0     223
Birth       MAL-ED          PERU                           0                    0      161     223
Birth       MAL-ED          PERU                           0                    1        4     223
Birth       MAL-ED          SOUTH AFRICA                   1                    0        2     105
Birth       MAL-ED          SOUTH AFRICA                   1                    1        0     105
Birth       MAL-ED          SOUTH AFRICA                   0                    0      102     105
Birth       MAL-ED          SOUTH AFRICA                   0                    1        1     105
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0     119
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     119
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      111     119
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        8     119
6 months    EE              PAKISTAN                       1                    0        3       9
6 months    EE              PAKISTAN                       1                    1        1       9
6 months    EE              PAKISTAN                       0                    0        5       9
6 months    EE              PAKISTAN                       0                    1        0       9
6 months    GMS-Nepal       NEPAL                          1                    0      410     527
6 months    GMS-Nepal       NEPAL                          1                    1       12     527
6 months    GMS-Nepal       NEPAL                          0                    0       98     527
6 months    GMS-Nepal       NEPAL                          0                    1        7     527
6 months    JiVitA-3        BANGLADESH                     1                    0     6181    8552
6 months    JiVitA-3        BANGLADESH                     1                    1      412    8552
6 months    JiVitA-3        BANGLADESH                     0                    0     1834    8552
6 months    JiVitA-3        BANGLADESH                     0                    1      125    8552
6 months    JiVitA-4        BANGLADESH                     1                    0     3109    4185
6 months    JiVitA-4        BANGLADESH                     1                    1      144    4185
6 months    JiVitA-4        BANGLADESH                     0                    0      843    4185
6 months    JiVitA-4        BANGLADESH                     0                    1       89    4185
6 months    LCNI-5          MALAWI                         1                    0       44     272
6 months    LCNI-5          MALAWI                         1                    1        3     272
6 months    LCNI-5          MALAWI                         0                    0      208     272
6 months    LCNI-5          MALAWI                         0                    1       17     272
6 months    MAL-ED          BANGLADESH                     1                    0       78     240
6 months    MAL-ED          BANGLADESH                     1                    1        3     240
6 months    MAL-ED          BANGLADESH                     0                    0      154     240
6 months    MAL-ED          BANGLADESH                     0                    1        5     240
6 months    MAL-ED          BRAZIL                         1                    0       25     209
6 months    MAL-ED          BRAZIL                         1                    1        0     209
6 months    MAL-ED          BRAZIL                         0                    0      184     209
6 months    MAL-ED          BRAZIL                         0                    1        0     209
6 months    MAL-ED          INDIA                          1                    0       15     233
6 months    MAL-ED          INDIA                          1                    1        2     233
6 months    MAL-ED          INDIA                          0                    0      209     233
6 months    MAL-ED          INDIA                          0                    1        7     233
6 months    MAL-ED          NEPAL                          1                    0        8     235
6 months    MAL-ED          NEPAL                          1                    1        0     235
6 months    MAL-ED          NEPAL                          0                    0      226     235
6 months    MAL-ED          NEPAL                          0                    1        1     235
6 months    MAL-ED          PERU                           1                    0       70     272
6 months    MAL-ED          PERU                           1                    1        2     272
6 months    MAL-ED          PERU                           0                    0      192     272
6 months    MAL-ED          PERU                           0                    1        8     272
6 months    MAL-ED          SOUTH AFRICA                   1                    0        3     250
6 months    MAL-ED          SOUTH AFRICA                   1                    1        0     250
6 months    MAL-ED          SOUTH AFRICA                   0                    0      241     250
6 months    MAL-ED          SOUTH AFRICA                   0                    1        6     250
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        5     243
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     243
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      224     243
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       14     243
6 months    SAS-FoodSuppl   INDIA                          1                    0        0     168
6 months    SAS-FoodSuppl   INDIA                          1                    1        0     168
6 months    SAS-FoodSuppl   INDIA                          0                    0      140     168
6 months    SAS-FoodSuppl   INDIA                          0                    1       28     168
24 months   EE              PAKISTAN                       1                    0        0       3
24 months   EE              PAKISTAN                       1                    1        0       3
24 months   EE              PAKISTAN                       0                    0        3       3
24 months   EE              PAKISTAN                       0                    1        0       3
24 months   GMS-Nepal       NEPAL                          1                    0      329     446
24 months   GMS-Nepal       NEPAL                          1                    1       34     446
24 months   GMS-Nepal       NEPAL                          0                    0       69     446
24 months   GMS-Nepal       NEPAL                          0                    1       14     446
24 months   JiVitA-3        BANGLADESH                     1                    0     2835    4334
24 months   JiVitA-3        BANGLADESH                     1                    1      499    4334
24 months   JiVitA-3        BANGLADESH                     0                    0      857    4334
24 months   JiVitA-3        BANGLADESH                     0                    1      143    4334
24 months   JiVitA-4        BANGLADESH                     1                    0     2879    4049
24 months   JiVitA-4        BANGLADESH                     1                    1      278    4049
24 months   JiVitA-4        BANGLADESH                     0                    0      778    4049
24 months   JiVitA-4        BANGLADESH                     0                    1      114    4049
24 months   LCNI-5          MALAWI                         1                    0       30     189
24 months   LCNI-5          MALAWI                         1                    1        4     189
24 months   LCNI-5          MALAWI                         0                    0      135     189
24 months   LCNI-5          MALAWI                         0                    1       20     189
24 months   MAL-ED          BANGLADESH                     1                    0       54     212
24 months   MAL-ED          BANGLADESH                     1                    1       15     212
24 months   MAL-ED          BANGLADESH                     0                    0      130     212
24 months   MAL-ED          BANGLADESH                     0                    1       13     212
24 months   MAL-ED          BRAZIL                         1                    0       20     169
24 months   MAL-ED          BRAZIL                         1                    1        0     169
24 months   MAL-ED          BRAZIL                         0                    0      148     169
24 months   MAL-ED          BRAZIL                         0                    1        1     169
24 months   MAL-ED          INDIA                          1                    0       14     224
24 months   MAL-ED          INDIA                          1                    1        3     224
24 months   MAL-ED          INDIA                          0                    0      180     224
24 months   MAL-ED          INDIA                          0                    1       27     224
24 months   MAL-ED          NEPAL                          1                    0        8     227
24 months   MAL-ED          NEPAL                          1                    1        0     227
24 months   MAL-ED          NEPAL                          0                    0      212     227
24 months   MAL-ED          NEPAL                          0                    1        7     227
24 months   MAL-ED          PERU                           1                    0       49     201
24 months   MAL-ED          PERU                           1                    1        4     201
24 months   MAL-ED          PERU                           0                    0      137     201
24 months   MAL-ED          PERU                           0                    1       11     201
24 months   MAL-ED          SOUTH AFRICA                   1                    0        3     235
24 months   MAL-ED          SOUTH AFRICA                   1                    1        0     235
24 months   MAL-ED          SOUTH AFRICA                   0                    0      206     235
24 months   MAL-ED          SOUTH AFRICA                   0                    1       26     235
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        2     213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        2     213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      141     213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       68     213


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/0278a8a3-bdd8-47a3-adf8-461fa43314bb/9e36961b-256b-458f-ac3e-0619c36e4ff9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0278a8a3-bdd8-47a3-adf8-461fa43314bb/9e36961b-256b-458f-ac3e-0619c36e4ff9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0278a8a3-bdd8-47a3-adf8-461fa43314bb/9e36961b-256b-458f-ac3e-0619c36e4ff9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0278a8a3-bdd8-47a3-adf8-461fa43314bb/9e36961b-256b-458f-ac3e-0619c36e4ff9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3    BANGLADESH   1                    NA                0.1040317   0.0967016   0.1113618
Birth       JiVitA-3    BANGLADESH   0                    NA                0.1082233   0.0952618   0.1211848
Birth       JiVitA-4    BANGLADESH   1                    NA                0.0735368   0.0593570   0.0877166
Birth       JiVitA-4    BANGLADESH   0                    NA                0.1254826   0.0951535   0.1558117
6 months    GMS-Nepal   NEPAL        1                    NA                0.0284360   0.0125625   0.0443096
6 months    GMS-Nepal   NEPAL        0                    NA                0.0666667   0.0189095   0.1144238
6 months    JiVitA-3    BANGLADESH   1                    NA                0.0624905   0.0562543   0.0687267
6 months    JiVitA-3    BANGLADESH   0                    NA                0.0638081   0.0524031   0.0752130
6 months    JiVitA-4    BANGLADESH   1                    NA                0.0442668   0.0369485   0.0515852
6 months    JiVitA-4    BANGLADESH   0                    NA                0.0954936   0.0761299   0.1148573
24 months   GMS-Nepal   NEPAL        1                    NA                0.0936639   0.0636576   0.1236702
24 months   GMS-Nepal   NEPAL        0                    NA                0.1686747   0.0880242   0.2493252
24 months   JiVitA-3    BANGLADESH   1                    NA                0.1496701   0.1360874   0.1632527
24 months   JiVitA-3    BANGLADESH   0                    NA                0.1430000   0.1167860   0.1692140
24 months   JiVitA-4    BANGLADESH   1                    NA                0.0880583   0.0763279   0.0997887
24 months   JiVitA-4    BANGLADESH   0                    NA                0.1278027   0.1049044   0.1507009
24 months   MAL-ED      BANGLADESH   1                    NA                0.2173913   0.1198376   0.3149450
24 months   MAL-ED      BANGLADESH   0                    NA                0.0909091   0.0436795   0.1381387


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3    BANGLADESH   NA                   NA                0.1049527   0.0986146   0.1112909
Birth       JiVitA-4    BANGLADESH   NA                   NA                0.0842273   0.0714625   0.0969920
6 months    GMS-Nepal   NEPAL        NA                   NA                0.0360531   0.0201218   0.0519845
6 months    JiVitA-3    BANGLADESH   NA                   NA                0.0627923   0.0572659   0.0683187
6 months    JiVitA-4    BANGLADESH   NA                   NA                0.0556750   0.0484735   0.0628765
24 months   GMS-Nepal   NEPAL        NA                   NA                0.1076233   0.0788298   0.1364169
24 months   JiVitA-3    BANGLADESH   NA                   NA                0.1481311   0.1360218   0.1602403
24 months   JiVitA-4    BANGLADESH   NA                   NA                0.0968140   0.0862351   0.1073930
24 months   MAL-ED      BANGLADESH   NA                   NA                0.1320755   0.0863920   0.1777589


### Parameter: RR


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-3    BANGLADESH   0                    1                 1.0402914   0.9042693   1.1967744
Birth       JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-4    BANGLADESH   0                    1                 1.7063930   1.2516804   2.3262943
6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal   NEPAL        0                    1                 2.3444444   0.9454214   5.8137246
6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-3    BANGLADESH   0                    1                 1.0210839   0.8338198   1.2504049
6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-4    BANGLADESH   0                    1                 2.1572261   1.6635401   2.7974224
24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal   NEPAL        0                    1                 1.8008505   1.0127956   3.2020896
24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-3    BANGLADESH   0                    1                 0.9554349   0.7790577   1.1717435
24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-4    BANGLADESH   0                    1                 1.4513421   1.1651956   1.8077599
24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED      BANGLADESH   0                    1                 0.4181818   0.2104857   0.8308215


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0009210   -0.0023766    0.0042187
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.0106905    0.0038266    0.0175543
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0076171   -0.0024945    0.0177287
6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0003018   -0.0026444    0.0032481
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0114082    0.0068264    0.0159900
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0139594   -0.0022828    0.0302016
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0015390   -0.0083384    0.0052603
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0087557    0.0031729    0.0143386
24 months   MAL-ED      BANGLADESH   1                    NA                -0.0853158   -0.1588607   -0.0117709


### Parameter: PAF


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0087758   -0.0231877    0.0397408
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.1269243    0.0401082    0.2058884
6 months    GMS-Nepal   NEPAL        1                    NA                 0.2112746   -0.1042928    0.4366642
6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0048065   -0.0432351    0.0506357
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.2049069    0.1221393    0.2798709
24 months   GMS-Nepal   NEPAL        1                    NA                 0.1297062   -0.0313041    0.2655790
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0103895   -0.0574024    0.0345332
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0904388    0.0304932    0.1466779
24 months   MAL-ED      BANGLADESH   1                    NA                -0.6459627   -1.2767666   -0.1899302
