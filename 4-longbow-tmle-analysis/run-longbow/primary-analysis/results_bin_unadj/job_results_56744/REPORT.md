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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** exclfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        exclfeed6    stunted   n_cell      n
----------  ---------------  -----------------------------  ----------  --------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          1                  0        7      7
Birth       CMC-V-BCS-2002   INDIA                          1                  1        0      7
Birth       CMC-V-BCS-2002   INDIA                          0                  0        0      7
Birth       CMC-V-BCS-2002   INDIA                          0                  1        0      7
Birth       EE               PAKISTAN                       1                  0       22     42
Birth       EE               PAKISTAN                       1                  1       16     42
Birth       EE               PAKISTAN                       0                  0        3     42
Birth       EE               PAKISTAN                       0                  1        1     42
Birth       GMS-Nepal        NEPAL                          1                  0      351    563
Birth       GMS-Nepal        NEPAL                          1                  1       68    563
Birth       GMS-Nepal        NEPAL                          0                  0      118    563
Birth       GMS-Nepal        NEPAL                          0                  1       26    563
Birth       IRC              INDIA                          1                  0        0     14
Birth       IRC              INDIA                          1                  1        0     14
Birth       IRC              INDIA                          0                  0       13     14
Birth       IRC              INDIA                          0                  1        1     14
Birth       Keneba           GAMBIA                         1                  0      459   1403
Birth       Keneba           GAMBIA                         1                  1       26   1403
Birth       Keneba           GAMBIA                         0                  0      865   1403
Birth       Keneba           GAMBIA                         0                  1       53   1403
Birth       MAL-ED           BANGLADESH                     1                  0       26    205
Birth       MAL-ED           BANGLADESH                     1                  1        5    205
Birth       MAL-ED           BANGLADESH                     0                  0      143    205
Birth       MAL-ED           BANGLADESH                     0                  1       31    205
Birth       MAL-ED           BRAZIL                         1                  0        0     60
Birth       MAL-ED           BRAZIL                         1                  1        2     60
Birth       MAL-ED           BRAZIL                         0                  0       51     60
Birth       MAL-ED           BRAZIL                         0                  1        7     60
Birth       MAL-ED           INDIA                          1                  0        0     39
Birth       MAL-ED           INDIA                          1                  1        1     39
Birth       MAL-ED           INDIA                          0                  0       31     39
Birth       MAL-ED           INDIA                          0                  1        7     39
Birth       MAL-ED           NEPAL                          1                  0        2     24
Birth       MAL-ED           NEPAL                          1                  1        0     24
Birth       MAL-ED           NEPAL                          0                  0       21     24
Birth       MAL-ED           NEPAL                          0                  1        1     24
Birth       MAL-ED           PERU                           1                  0        2    213
Birth       MAL-ED           PERU                           1                  1        0    213
Birth       MAL-ED           PERU                           0                  0      185    213
Birth       MAL-ED           PERU                           0                  1       26    213
Birth       MAL-ED           SOUTH AFRICA                   1                  0        0     91
Birth       MAL-ED           SOUTH AFRICA                   1                  1        0     91
Birth       MAL-ED           SOUTH AFRICA                   0                  0       83     91
Birth       MAL-ED           SOUTH AFRICA                   0                  1        8     91
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        0    113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0    113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0       92    113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       21    113
Birth       PROVIDE          BANGLADESH                     1                  0      148    539
Birth       PROVIDE          BANGLADESH                     1                  1       11    539
Birth       PROVIDE          BANGLADESH                     0                  0      343    539
Birth       PROVIDE          BANGLADESH                     0                  1       37    539
Birth       SAS-CompFeed     INDIA                          1                  0      257    364
Birth       SAS-CompFeed     INDIA                          1                  1       89    364
Birth       SAS-CompFeed     INDIA                          0                  0       12    364
Birth       SAS-CompFeed     INDIA                          0                  1        6    364
6 months    CMC-V-BCS-2002   INDIA                          1                  0       12     19
6 months    CMC-V-BCS-2002   INDIA                          1                  1        7     19
6 months    CMC-V-BCS-2002   INDIA                          0                  0        0     19
6 months    CMC-V-BCS-2002   INDIA                          0                  1        0     19
6 months    EE               PAKISTAN                       1                  0       20     48
6 months    EE               PAKISTAN                       1                  1       23     48
6 months    EE               PAKISTAN                       0                  0        4     48
6 months    EE               PAKISTAN                       0                  1        1     48
6 months    GMS-Nepal        NEPAL                          1                  0      326    547
6 months    GMS-Nepal        NEPAL                          1                  1       80    547
6 months    GMS-Nepal        NEPAL                          0                  0      103    547
6 months    GMS-Nepal        NEPAL                          0                  1       38    547
6 months    IRC              INDIA                          1                  0        0     14
6 months    IRC              INDIA                          1                  1        0     14
6 months    IRC              INDIA                          0                  0       11     14
6 months    IRC              INDIA                          0                  1        3     14
6 months    Keneba           GAMBIA                         1                  0      502   1908
6 months    Keneba           GAMBIA                         1                  1       84   1908
6 months    Keneba           GAMBIA                         0                  0     1124   1908
6 months    Keneba           GAMBIA                         0                  1      198   1908
6 months    LCNI-5           MALAWI                         1                  0       30    272
6 months    LCNI-5           MALAWI                         1                  1       17    272
6 months    LCNI-5           MALAWI                         0                  0      145    272
6 months    LCNI-5           MALAWI                         0                  1       80    272
6 months    MAL-ED           BANGLADESH                     1                  0       27    231
6 months    MAL-ED           BANGLADESH                     1                  1        6    231
6 months    MAL-ED           BANGLADESH                     0                  0      163    231
6 months    MAL-ED           BANGLADESH                     0                  1       35    231
6 months    MAL-ED           BRAZIL                         1                  0       12    209
6 months    MAL-ED           BRAZIL                         1                  1        0    209
6 months    MAL-ED           BRAZIL                         0                  0      191    209
6 months    MAL-ED           BRAZIL                         0                  1        6    209
6 months    MAL-ED           INDIA                          1                  0        1    218
6 months    MAL-ED           INDIA                          1                  1        1    218
6 months    MAL-ED           INDIA                          0                  0      176    218
6 months    MAL-ED           INDIA                          0                  1       40    218
6 months    MAL-ED           NEPAL                          1                  0        5    225
6 months    MAL-ED           NEPAL                          1                  1        0    225
6 months    MAL-ED           NEPAL                          0                  0      208    225
6 months    MAL-ED           NEPAL                          0                  1       12    225
6 months    MAL-ED           PERU                           1                  0        3    271
6 months    MAL-ED           PERU                           1                  1        2    271
6 months    MAL-ED           PERU                           0                  0      208    271
6 months    MAL-ED           PERU                           0                  1       58    271
6 months    MAL-ED           SOUTH AFRICA                   1                  0        0    233
6 months    MAL-ED           SOUTH AFRICA                   1                  1        0    233
6 months    MAL-ED           SOUTH AFRICA                   0                  0      190    233
6 months    MAL-ED           SOUTH AFRICA                   0                  1       43    233
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        0    232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0    232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      174    232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       58    232
6 months    PROVIDE          BANGLADESH                     1                  0      123    604
6 months    PROVIDE          BANGLADESH                     1                  1       18    604
6 months    PROVIDE          BANGLADESH                     0                  0      385    604
6 months    PROVIDE          BANGLADESH                     0                  1       78    604
6 months    SAS-CompFeed     INDIA                          1                  0      260    398
6 months    SAS-CompFeed     INDIA                          1                  1      119    398
6 months    SAS-CompFeed     INDIA                          0                  0       13    398
6 months    SAS-CompFeed     INDIA                          0                  1        6    398
6 months    SAS-FoodSuppl    INDIA                          1                  0        0    168
6 months    SAS-FoodSuppl    INDIA                          1                  1        0    168
6 months    SAS-FoodSuppl    INDIA                          0                  0       87    168
6 months    SAS-FoodSuppl    INDIA                          0                  1       81    168
24 months   CMC-V-BCS-2002   INDIA                          1                  0        7     19
24 months   CMC-V-BCS-2002   INDIA                          1                  1       12     19
24 months   CMC-V-BCS-2002   INDIA                          0                  0        0     19
24 months   CMC-V-BCS-2002   INDIA                          0                  1        0     19
24 months   EE               PAKISTAN                       1                  0        5     23
24 months   EE               PAKISTAN                       1                  1       15     23
24 months   EE               PAKISTAN                       0                  0        2     23
24 months   EE               PAKISTAN                       0                  1        1     23
24 months   GMS-Nepal        NEPAL                          1                  0      199    470
24 months   GMS-Nepal        NEPAL                          1                  1      157    470
24 months   GMS-Nepal        NEPAL                          0                  0       57    470
24 months   GMS-Nepal        NEPAL                          0                  1       57    470
24 months   IRC              INDIA                          1                  0        0     14
24 months   IRC              INDIA                          1                  1        0     14
24 months   IRC              INDIA                          0                  0        5     14
24 months   IRC              INDIA                          0                  1        9     14
24 months   Keneba           GAMBIA                         1                  0      365   1513
24 months   Keneba           GAMBIA                         1                  1      150   1513
24 months   Keneba           GAMBIA                         0                  0      638   1513
24 months   Keneba           GAMBIA                         0                  1      360   1513
24 months   LCNI-5           MALAWI                         1                  0       17    189
24 months   LCNI-5           MALAWI                         1                  1       17    189
24 months   LCNI-5           MALAWI                         0                  0       80    189
24 months   LCNI-5           MALAWI                         0                  1       75    189
24 months   MAL-ED           BANGLADESH                     1                  0       16    205
24 months   MAL-ED           BANGLADESH                     1                  1       15    205
24 months   MAL-ED           BANGLADESH                     0                  0       93    205
24 months   MAL-ED           BANGLADESH                     0                  1       81    205
24 months   MAL-ED           BRAZIL                         1                  0       11    169
24 months   MAL-ED           BRAZIL                         1                  1        0    169
24 months   MAL-ED           BRAZIL                         0                  0      151    169
24 months   MAL-ED           BRAZIL                         0                  1        7    169
24 months   MAL-ED           INDIA                          1                  0        0    209
24 months   MAL-ED           INDIA                          1                  1        2    209
24 months   MAL-ED           INDIA                          0                  0      120    209
24 months   MAL-ED           INDIA                          0                  1       87    209
24 months   MAL-ED           NEPAL                          1                  0        5    219
24 months   MAL-ED           NEPAL                          1                  1        0    219
24 months   MAL-ED           NEPAL                          0                  0      165    219
24 months   MAL-ED           NEPAL                          0                  1       49    219
24 months   MAL-ED           PERU                           1                  0        0    201
24 months   MAL-ED           PERU                           1                  1        3    201
24 months   MAL-ED           PERU                           0                  0      127    201
24 months   MAL-ED           PERU                           0                  1       71    201
24 months   MAL-ED           SOUTH AFRICA                   1                  0        0    216
24 months   MAL-ED           SOUTH AFRICA                   1                  1        0    216
24 months   MAL-ED           SOUTH AFRICA                   0                  0      144    216
24 months   MAL-ED           SOUTH AFRICA                   0                  1       72    216
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        0    202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0    202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0       54    202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1      148    202
24 months   PROVIDE          BANGLADESH                     1                  0       88    578
24 months   PROVIDE          BANGLADESH                     1                  1       49    578
24 months   PROVIDE          BANGLADESH                     0                  0      300    578
24 months   PROVIDE          BANGLADESH                     0                  1      141    578


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
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
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/8953b07c-07f8-4b1b-84ff-5e8538d05724/1a670933-6329-4bf5-bc44-d54aab468499/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8953b07c-07f8-4b1b-84ff-5e8538d05724/1a670933-6329-4bf5-bc44-d54aab468499/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8953b07c-07f8-4b1b-84ff-5e8538d05724/1a670933-6329-4bf5-bc44-d54aab468499/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8953b07c-07f8-4b1b-84ff-5e8538d05724/1a670933-6329-4bf5-bc44-d54aab468499/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal      NEPAL        1                    NA                0.1622912   0.1269549   0.1976275
Birth       GMS-Nepal      NEPAL        0                    NA                0.1805556   0.1176748   0.2434364
Birth       Keneba         GAMBIA       1                    NA                0.0536082   0.0335551   0.0736614
Birth       Keneba         GAMBIA       0                    NA                0.0577342   0.0426409   0.0728275
Birth       MAL-ED         BANGLADESH   1                    NA                0.1612903   0.0315010   0.2910797
Birth       MAL-ED         BANGLADESH   0                    NA                0.1781609   0.1211662   0.2351557
Birth       PROVIDE        BANGLADESH   1                    NA                0.0691824   0.0297019   0.1086629
Birth       PROVIDE        BANGLADESH   0                    NA                0.0973684   0.0675336   0.1272033
Birth       SAS-CompFeed   INDIA        1                    NA                0.2572254   0.2236819   0.2907690
Birth       SAS-CompFeed   INDIA        0                    NA                0.3333333   0.0564891   0.6101775
6 months    GMS-Nepal      NEPAL        1                    NA                0.1970443   0.1583177   0.2357710
6 months    GMS-Nepal      NEPAL        0                    NA                0.2695035   0.1961996   0.3428075
6 months    Keneba         GAMBIA       1                    NA                0.1433447   0.1149651   0.1717244
6 months    Keneba         GAMBIA       0                    NA                0.1497731   0.1305319   0.1690142
6 months    LCNI-5         MALAWI       1                    NA                0.3617021   0.2240807   0.4993236
6 months    LCNI-5         MALAWI       0                    NA                0.3555556   0.2928937   0.4182174
6 months    MAL-ED         BANGLADESH   1                    NA                0.1818182   0.0499388   0.3136975
6 months    MAL-ED         BANGLADESH   0                    NA                0.1767677   0.1235176   0.2300177
6 months    PROVIDE        BANGLADESH   1                    NA                0.1276596   0.0725321   0.1827870
6 months    PROVIDE        BANGLADESH   0                    NA                0.1684665   0.1343461   0.2025869
6 months    SAS-CompFeed   INDIA        1                    NA                0.3139842   0.2679102   0.3600581
6 months    SAS-CompFeed   INDIA        0                    NA                0.3157895   0.1014523   0.5301266
24 months   GMS-Nepal      NEPAL        1                    NA                0.4410112   0.3893801   0.4926424
24 months   GMS-Nepal      NEPAL        0                    NA                0.5000000   0.4081185   0.5918815
24 months   Keneba         GAMBIA       1                    NA                0.2912621   0.2520091   0.3305151
24 months   Keneba         GAMBIA       0                    NA                0.3607214   0.3309186   0.3905243
24 months   LCNI-5         MALAWI       1                    NA                0.5000000   0.3314881   0.6685119
24 months   LCNI-5         MALAWI       0                    NA                0.4838710   0.4049889   0.5627530
24 months   MAL-ED         BANGLADESH   1                    NA                0.4838710   0.3075220   0.6602200
24 months   MAL-ED         BANGLADESH   0                    NA                0.4655172   0.3912205   0.5398140
24 months   PROVIDE        BANGLADESH   1                    NA                0.3576642   0.2773333   0.4379951
24 months   PROVIDE        BANGLADESH   0                    NA                0.3197279   0.2761630   0.3632928


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal      NEPAL        NA                   NA                0.1669627   0.1361293   0.1977961
Birth       Keneba         GAMBIA       NA                   NA                0.0563079   0.0442416   0.0683742
Birth       MAL-ED         BANGLADESH   NA                   NA                0.1756098   0.1233973   0.2278222
Birth       PROVIDE        BANGLADESH   NA                   NA                0.0890538   0.0649864   0.1131212
Birth       SAS-CompFeed   INDIA        NA                   NA                0.2609890   0.2179233   0.3040547
6 months    GMS-Nepal      NEPAL        NA                   NA                0.2157221   0.1812209   0.2502233
6 months    Keneba         GAMBIA       NA                   NA                0.1477987   0.1318701   0.1637274
6 months    LCNI-5         MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    MAL-ED         BANGLADESH   NA                   NA                0.1774892   0.1281103   0.2268680
6 months    PROVIDE        BANGLADESH   NA                   NA                0.1589404   0.1297581   0.1881227
6 months    SAS-CompFeed   INDIA        NA                   NA                0.3140704   0.2712850   0.3568557
24 months   GMS-Nepal      NEPAL        NA                   NA                0.4553191   0.4102488   0.5003895
24 months   Keneba         GAMBIA       NA                   NA                0.3370787   0.3132517   0.3609056
24 months   LCNI-5         MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   MAL-ED         BANGLADESH   NA                   NA                0.4682927   0.3998183   0.5367670
24 months   PROVIDE        BANGLADESH   NA                   NA                0.3287197   0.2903909   0.3670485


### Parameter: RR


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal      NEPAL        0                    1                 1.1125408   0.7378028   1.677612
Birth       Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       Keneba         GAMBIA       0                    1                 1.0769650   0.6823439   1.699808
Birth       MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       MAL-ED         BANGLADESH   0                    1                 1.1045977   0.4646502   2.625924
Birth       PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       PROVIDE        BANGLADESH   0                    1                 1.4074163   0.7364045   2.689854
Birth       SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
Birth       SAS-CompFeed   INDIA        0                    1                 1.2958801   0.6113712   2.746785
6 months    GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal      NEPAL        0                    1                 1.3677305   0.9778296   1.913101
6 months    Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    Keneba         GAMBIA       0                    1                 1.0448455   0.8251901   1.322970
6 months    LCNI-5         MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6 months    LCNI-5         MALAWI       0                    1                 0.9830065   0.6463228   1.495076
6 months    MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    MAL-ED         BANGLADESH   0                    1                 0.9722222   0.4432703   2.132369
6 months    PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    PROVIDE        BANGLADESH   0                    1                 1.3196544   0.8190592   2.126205
6 months    SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed   INDIA        0                    1                 1.0057497   0.4866253   2.078668
24 months   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal      NEPAL        0                    1                 1.1337580   0.9117855   1.409769
24 months   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   Keneba         GAMBIA       0                    1                 1.2384770   1.0573908   1.450576
24 months   LCNI-5         MALAWI       1                    1                 1.0000000   1.0000000   1.000000
24 months   LCNI-5         MALAWI       0                    1                 0.9677419   0.6655301   1.407186
24 months   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED         BANGLADESH   0                    1                 0.9620690   0.6462701   1.432183
24 months   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   PROVIDE        BANGLADESH   0                    1                 0.8939331   0.6874113   1.162501


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal      NEPAL        1                    NA                 0.0046715   -0.0137890   0.0231320
Birth       Keneba         GAMBIA       1                    NA                 0.0026997   -0.0137230   0.0191223
Birth       MAL-ED         BANGLADESH   1                    NA                 0.0143194   -0.1059999   0.1346388
Birth       PROVIDE        BANGLADESH   1                    NA                 0.0198714   -0.0150333   0.0547762
Birth       SAS-CompFeed   INDIA        1                    NA                 0.0037636   -0.0100156   0.0175428
6 months    GMS-Nepal      NEPAL        1                    NA                 0.0186778   -0.0028573   0.0402129
6 months    Keneba         GAMBIA       1                    NA                 0.0044540   -0.0193031   0.0282112
6 months    LCNI-5         MALAWI       1                    NA                -0.0050845   -0.1301713   0.1200023
6 months    MAL-ED         BANGLADESH   1                    NA                -0.0043290   -0.1262357   0.1175777
6 months    PROVIDE        BANGLADESH   1                    NA                 0.0312808   -0.0184360   0.0809976
6 months    SAS-CompFeed   INDIA        1                    NA                 0.0000862   -0.0108674   0.0110398
24 months   GMS-Nepal      NEPAL        1                    NA                 0.0143079   -0.0113581   0.0399739
24 months   Keneba         GAMBIA       1                    NA                 0.0458165    0.0132650   0.0783680
24 months   LCNI-5         MALAWI       1                    NA                -0.0132275   -0.1658197   0.1393646
24 months   MAL-ED         BANGLADESH   1                    NA                -0.0155783   -0.1780042   0.1468476
24 months   PROVIDE        BANGLADESH   1                    NA                -0.0289445   -0.0986804   0.0407913


### Parameter: PAF


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal      NEPAL        1                    NA                 0.0279795   -0.0890382   0.1324236
Birth       Keneba         GAMBIA       1                    NA                 0.0479447   -0.2931027   0.2990430
Birth       MAL-ED         BANGLADESH   1                    NA                 0.0815412   -0.9360258   0.5642793
Birth       PROVIDE        BANGLADESH   1                    NA                 0.2231394   -0.2801119   0.5285472
Birth       SAS-CompFeed   INDIA        1                    NA                 0.0144204   -0.0378960   0.0640998
6 months    GMS-Nepal      NEPAL        1                    NA                 0.0865826   -0.0183705   0.1807193
6 months    Keneba         GAMBIA       1                    NA                 0.0301358   -0.1446658   0.1782435
6 months    LCNI-5         MALAWI       1                    NA                -0.0142575   -0.4333092   0.2822775
6 months    MAL-ED         BANGLADESH   1                    NA                -0.0243902   -1.0028399   0.4760563
6 months    PROVIDE        BANGLADESH   1                    NA                 0.1968085   -0.1834950   0.4549056
6 months    SAS-CompFeed   INDIA        1                    NA                 0.0002744   -0.0352245   0.0345560
24 months   GMS-Nepal      NEPAL        1                    NA                 0.0314239   -0.0266742   0.0862343
24 months   Keneba         GAMBIA       1                    NA                 0.1359223    0.0338147   0.2272391
24 months   LCNI-5         MALAWI       1                    NA                -0.0271739   -0.3937793   0.2430034
24 months   MAL-ED         BANGLADESH   1                    NA                -0.0332661   -0.4454664   0.2613879
24 months   PROVIDE        BANGLADESH   1                    NA                -0.0880522   -0.3223096   0.1047046
