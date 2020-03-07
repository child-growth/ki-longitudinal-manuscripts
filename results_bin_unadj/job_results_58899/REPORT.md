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

**Intervention Variable:** predfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country                        predfeed6    stunted   n_cell       n
----------  --------------  -----------------------------  ----------  --------  -------  ------
Birth       EE              PAKISTAN                       1                  0       22      42
Birth       EE              PAKISTAN                       1                  1       16      42
Birth       EE              PAKISTAN                       0                  0        3      42
Birth       EE              PAKISTAN                       0                  1        1      42
Birth       GMS-Nepal       NEPAL                          1                  0      351     563
Birth       GMS-Nepal       NEPAL                          1                  1       68     563
Birth       GMS-Nepal       NEPAL                          0                  0      118     563
Birth       GMS-Nepal       NEPAL                          0                  1       26     563
Birth       JiVitA-3        BANGLADESH                     1                  0     7012   13423
Birth       JiVitA-3        BANGLADESH                     1                  1     3454   13423
Birth       JiVitA-3        BANGLADESH                     0                  0     1967   13423
Birth       JiVitA-3        BANGLADESH                     0                  1      990   13423
Birth       JiVitA-4        BANGLADESH                     1                  0     1479    2632
Birth       JiVitA-4        BANGLADESH                     1                  1      624    2632
Birth       JiVitA-4        BANGLADESH                     0                  0      354    2632
Birth       JiVitA-4        BANGLADESH                     0                  1      175    2632
Birth       MAL-ED          BANGLADESH                     1                  0       60     205
Birth       MAL-ED          BANGLADESH                     1                  1       12     205
Birth       MAL-ED          BANGLADESH                     0                  0      109     205
Birth       MAL-ED          BANGLADESH                     0                  1       24     205
Birth       MAL-ED          BRAZIL                         1                  0        4      60
Birth       MAL-ED          BRAZIL                         1                  1        2      60
Birth       MAL-ED          BRAZIL                         0                  0       47      60
Birth       MAL-ED          BRAZIL                         0                  1        7      60
Birth       MAL-ED          INDIA                          1                  0        2      39
Birth       MAL-ED          INDIA                          1                  1        2      39
Birth       MAL-ED          INDIA                          0                  0       29      39
Birth       MAL-ED          INDIA                          0                  1        6      39
Birth       MAL-ED          NEPAL                          1                  0        3      24
Birth       MAL-ED          NEPAL                          1                  1        0      24
Birth       MAL-ED          NEPAL                          0                  0       20      24
Birth       MAL-ED          NEPAL                          0                  1        1      24
Birth       MAL-ED          PERU                           1                  0       66     213
Birth       MAL-ED          PERU                           1                  1        7     213
Birth       MAL-ED          PERU                           0                  0      121     213
Birth       MAL-ED          PERU                           0                  1       19     213
Birth       MAL-ED          SOUTH AFRICA                   1                  0        1      91
Birth       MAL-ED          SOUTH AFRICA                   1                  1        0      91
Birth       MAL-ED          SOUTH AFRICA                   0                  0       82      91
Birth       MAL-ED          SOUTH AFRICA                   0                  1        8      91
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0     113
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     113
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       92     113
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       21     113
6 months    EE              PAKISTAN                       1                  0       20      48
6 months    EE              PAKISTAN                       1                  1       23      48
6 months    EE              PAKISTAN                       0                  0        4      48
6 months    EE              PAKISTAN                       0                  1        1      48
6 months    GMS-Nepal       NEPAL                          1                  0      326     547
6 months    GMS-Nepal       NEPAL                          1                  1       80     547
6 months    GMS-Nepal       NEPAL                          0                  0      103     547
6 months    GMS-Nepal       NEPAL                          0                  1       38     547
6 months    JiVitA-3        BANGLADESH                     1                  0     5767    9901
6 months    JiVitA-3        BANGLADESH                     1                  1     1877    9901
6 months    JiVitA-3        BANGLADESH                     0                  0     1676    9901
6 months    JiVitA-3        BANGLADESH                     0                  1      581    9901
6 months    JiVitA-4        BANGLADESH                     1                  0     2542    4272
6 months    JiVitA-4        BANGLADESH                     1                  1      786    4272
6 months    JiVitA-4        BANGLADESH                     0                  0      657    4272
6 months    JiVitA-4        BANGLADESH                     0                  1      287    4272
6 months    LCNI-5          MALAWI                         1                  0       30     272
6 months    LCNI-5          MALAWI                         1                  1       17     272
6 months    LCNI-5          MALAWI                         0                  0      145     272
6 months    LCNI-5          MALAWI                         0                  1       80     272
6 months    MAL-ED          BANGLADESH                     1                  0       73     231
6 months    MAL-ED          BANGLADESH                     1                  1       11     231
6 months    MAL-ED          BANGLADESH                     0                  0      117     231
6 months    MAL-ED          BANGLADESH                     0                  1       30     231
6 months    MAL-ED          BRAZIL                         1                  0       29     209
6 months    MAL-ED          BRAZIL                         1                  1        1     209
6 months    MAL-ED          BRAZIL                         0                  0      174     209
6 months    MAL-ED          BRAZIL                         0                  1        5     209
6 months    MAL-ED          INDIA                          1                  0        7     218
6 months    MAL-ED          INDIA                          1                  1        4     218
6 months    MAL-ED          INDIA                          0                  0      170     218
6 months    MAL-ED          INDIA                          0                  1       37     218
6 months    MAL-ED          NEPAL                          1                  0       11     225
6 months    MAL-ED          NEPAL                          1                  1        1     225
6 months    MAL-ED          NEPAL                          0                  0      202     225
6 months    MAL-ED          NEPAL                          0                  1       11     225
6 months    MAL-ED          PERU                           1                  0       77     271
6 months    MAL-ED          PERU                           1                  1       15     271
6 months    MAL-ED          PERU                           0                  0      134     271
6 months    MAL-ED          PERU                           0                  1       45     271
6 months    MAL-ED          SOUTH AFRICA                   1                  0        2     233
6 months    MAL-ED          SOUTH AFRICA                   1                  1        1     233
6 months    MAL-ED          SOUTH AFRICA                   0                  0      188     233
6 months    MAL-ED          SOUTH AFRICA                   0                  1       42     233
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      173     232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       58     232
6 months    SAS-FoodSuppl   INDIA                          1                  0        0     168
6 months    SAS-FoodSuppl   INDIA                          1                  1        0     168
6 months    SAS-FoodSuppl   INDIA                          0                  0       87     168
6 months    SAS-FoodSuppl   INDIA                          0                  1       81     168
24 months   EE              PAKISTAN                       1                  0        5      23
24 months   EE              PAKISTAN                       1                  1       15      23
24 months   EE              PAKISTAN                       0                  0        2      23
24 months   EE              PAKISTAN                       0                  1        1      23
24 months   GMS-Nepal       NEPAL                          1                  0      199     470
24 months   GMS-Nepal       NEPAL                          1                  1      157     470
24 months   GMS-Nepal       NEPAL                          0                  0       57     470
24 months   GMS-Nepal       NEPAL                          0                  1       57     470
24 months   JiVitA-3        BANGLADESH                     1                  0     2006    5088
24 months   JiVitA-3        BANGLADESH                     1                  1     1920    5088
24 months   JiVitA-3        BANGLADESH                     0                  0      578    5088
24 months   JiVitA-3        BANGLADESH                     0                  1      584    5088
24 months   JiVitA-4        BANGLADESH                     1                  0     1989    4199
24 months   JiVitA-4        BANGLADESH                     1                  1     1303    4199
24 months   JiVitA-4        BANGLADESH                     0                  0      509    4199
24 months   JiVitA-4        BANGLADESH                     0                  1      398    4199
24 months   LCNI-5          MALAWI                         1                  0       17     189
24 months   LCNI-5          MALAWI                         1                  1       17     189
24 months   LCNI-5          MALAWI                         0                  0       80     189
24 months   LCNI-5          MALAWI                         0                  1       75     189
24 months   MAL-ED          BANGLADESH                     1                  0       38     205
24 months   MAL-ED          BANGLADESH                     1                  1       38     205
24 months   MAL-ED          BANGLADESH                     0                  0       71     205
24 months   MAL-ED          BANGLADESH                     0                  1       58     205
24 months   MAL-ED          BRAZIL                         1                  0       25     169
24 months   MAL-ED          BRAZIL                         1                  1        0     169
24 months   MAL-ED          BRAZIL                         0                  0      137     169
24 months   MAL-ED          BRAZIL                         0                  1        7     169
24 months   MAL-ED          INDIA                          1                  0        3     209
24 months   MAL-ED          INDIA                          1                  1        8     209
24 months   MAL-ED          INDIA                          0                  0      117     209
24 months   MAL-ED          INDIA                          0                  1       81     209
24 months   MAL-ED          NEPAL                          1                  0        9     219
24 months   MAL-ED          NEPAL                          1                  1        3     219
24 months   MAL-ED          NEPAL                          0                  0      161     219
24 months   MAL-ED          NEPAL                          0                  1       46     219
24 months   MAL-ED          PERU                           1                  0       42     201
24 months   MAL-ED          PERU                           1                  1       26     201
24 months   MAL-ED          PERU                           0                  0       85     201
24 months   MAL-ED          PERU                           0                  1       48     201
24 months   MAL-ED          SOUTH AFRICA                   1                  0        3     216
24 months   MAL-ED          SOUTH AFRICA                   1                  1        0     216
24 months   MAL-ED          SOUTH AFRICA                   0                  0      141     216
24 months   MAL-ED          SOUTH AFRICA                   0                  1       72     216
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     202
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     202
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       53     202
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      148     202


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
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/c2070339-a03d-4f7e-b47d-5cee24fad7c0/2d1bb624-4003-4959-ac1b-0d466c0b7cf5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c2070339-a03d-4f7e-b47d-5cee24fad7c0/2d1bb624-4003-4959-ac1b-0d466c0b7cf5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c2070339-a03d-4f7e-b47d-5cee24fad7c0/2d1bb624-4003-4959-ac1b-0d466c0b7cf5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c2070339-a03d-4f7e-b47d-5cee24fad7c0/2d1bb624-4003-4959-ac1b-0d466c0b7cf5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                0.1622912   0.1269549   0.1976275
Birth       GMS-Nepal   NEPAL        0                    NA                0.1805556   0.1176748   0.2434364
Birth       JiVitA-3    BANGLADESH   1                    NA                0.3300210   0.3197885   0.3402535
Birth       JiVitA-3    BANGLADESH   0                    NA                0.3347988   0.3161701   0.3534275
Birth       JiVitA-4    BANGLADESH   1                    NA                0.2967190   0.2734700   0.3199679
Birth       JiVitA-4    BANGLADESH   0                    NA                0.3308129   0.2833827   0.3782430
Birth       MAL-ED      BANGLADESH   1                    NA                0.1666667   0.0803733   0.2529600
Birth       MAL-ED      BANGLADESH   0                    NA                0.1804511   0.1149345   0.2459677
Birth       MAL-ED      PERU         1                    NA                0.0958904   0.0281876   0.1635932
Birth       MAL-ED      PERU         0                    NA                0.1357143   0.0788490   0.1925796
6 months    GMS-Nepal   NEPAL        1                    NA                0.1970443   0.1583177   0.2357710
6 months    GMS-Nepal   NEPAL        0                    NA                0.2695035   0.1961996   0.3428075
6 months    JiVitA-3    BANGLADESH   1                    NA                0.2455521   0.2342580   0.2568462
6 months    JiVitA-3    BANGLADESH   0                    NA                0.2574214   0.2379909   0.2768518
6 months    JiVitA-4    BANGLADESH   1                    NA                0.2361779   0.2200064   0.2523494
6 months    JiVitA-4    BANGLADESH   0                    NA                0.3040254   0.2702681   0.3377827
6 months    LCNI-5      MALAWI       1                    NA                0.3617021   0.2240807   0.4993236
6 months    LCNI-5      MALAWI       0                    NA                0.3555556   0.2928937   0.4182174
6 months    MAL-ED      BANGLADESH   1                    NA                0.1309524   0.0586539   0.2032508
6 months    MAL-ED      BANGLADESH   0                    NA                0.2040816   0.1387885   0.2693748
6 months    MAL-ED      PERU         1                    NA                0.1630435   0.0874194   0.2386676
6 months    MAL-ED      PERU         0                    NA                0.2513966   0.1877274   0.3150659
24 months   GMS-Nepal   NEPAL        1                    NA                0.4410112   0.3893801   0.4926424
24 months   GMS-Nepal   NEPAL        0                    NA                0.5000000   0.4081185   0.5918815
24 months   JiVitA-3    BANGLADESH   1                    NA                0.4890474   0.4701487   0.5079461
24 months   JiVitA-3    BANGLADESH   0                    NA                0.5025818   0.4684915   0.5366720
24 months   JiVitA-4    BANGLADESH   1                    NA                0.3958080   0.3762452   0.4153709
24 months   JiVitA-4    BANGLADESH   0                    NA                0.4388093   0.3999390   0.4776795
24 months   LCNI-5      MALAWI       1                    NA                0.5000000   0.3314881   0.6685119
24 months   LCNI-5      MALAWI       0                    NA                0.4838710   0.4049889   0.5627530
24 months   MAL-ED      BANGLADESH   1                    NA                0.5000000   0.3873132   0.6126868
24 months   MAL-ED      BANGLADESH   0                    NA                0.4496124   0.3635589   0.5356659
24 months   MAL-ED      PERU         1                    NA                0.3823529   0.2665608   0.4981451
24 months   MAL-ED      PERU         0                    NA                0.3609023   0.2790777   0.4427268


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        NA                   NA                0.1669627   0.1361293   0.1977961
Birth       JiVitA-3    BANGLADESH   NA                   NA                0.3310735   0.3218922   0.3402548
Birth       JiVitA-4    BANGLADESH   NA                   NA                0.3035714   0.2824097   0.3247332
Birth       MAL-ED      BANGLADESH   NA                   NA                0.1756098   0.1233973   0.2278222
Birth       MAL-ED      PERU         NA                   NA                0.1220657   0.0779993   0.1661322
6 months    GMS-Nepal   NEPAL        NA                   NA                0.2157221   0.1812209   0.2502233
6 months    JiVitA-3    BANGLADESH   NA                   NA                0.2482578   0.2382387   0.2582768
6 months    JiVitA-4    BANGLADESH   NA                   NA                0.2511704   0.2362353   0.2661055
6 months    LCNI-5      MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    MAL-ED      BANGLADESH   NA                   NA                0.1774892   0.1281103   0.2268680
6 months    MAL-ED      PERU         NA                   NA                0.2214022   0.1718784   0.2709260
24 months   GMS-Nepal   NEPAL        NA                   NA                0.4553191   0.4102488   0.5003895
24 months   JiVitA-3    BANGLADESH   NA                   NA                0.4921384   0.4750959   0.5091808
24 months   JiVitA-4    BANGLADESH   NA                   NA                0.4050965   0.3867240   0.4234689
24 months   LCNI-5      MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   MAL-ED      BANGLADESH   NA                   NA                0.4682927   0.3998183   0.5367670
24 months   MAL-ED      PERU         NA                   NA                0.3681592   0.3013164   0.4350020


### Parameter: RR


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal   NEPAL        0                    1                 1.1125408   0.7378028   1.677612
Birth       JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3    BANGLADESH   0                    1                 1.0144771   0.9533959   1.079472
Birth       JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4    BANGLADESH   0                    1                 1.1149029   0.9496071   1.308971
Birth       MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       MAL-ED      BANGLADESH   0                    1                 1.0827068   0.5752737   2.037733
Birth       MAL-ED      PERU         1                    1                 1.0000000   1.0000000   1.000000
Birth       MAL-ED      PERU         0                    1                 1.4153061   0.6227136   3.216714
6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal   NEPAL        0                    1                 1.3677305   0.9778296   1.913101
6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3    BANGLADESH   0                    1                 1.0483372   0.9619535   1.142478
6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4    BANGLADESH   0                    1                 1.2872730   1.1326988   1.462941
6 months    LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6 months    LCNI-5      MALAWI       0                    1                 0.9830065   0.6463228   1.495076
6 months    MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    MAL-ED      BANGLADESH   0                    1                 1.5584416   0.8233178   2.949943
6 months    MAL-ED      PERU         1                    1                 1.0000000   1.0000000   1.000000
6 months    MAL-ED      PERU         0                    1                 1.5418994   0.9089616   2.615571
24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal   NEPAL        0                    1                 1.1337580   0.9117855   1.409769
24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3    BANGLADESH   0                    1                 1.0276750   0.9529276   1.108286
24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4    BANGLADESH   0                    1                 1.1086417   1.0073028   1.220176
24 months   LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
24 months   LCNI-5      MALAWI       0                    1                 0.9677419   0.6655301   1.407186
24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED      BANGLADESH   0                    1                 0.8992248   0.6690477   1.208591
24 months   MAL-ED      PERU         1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED      PERU         0                    1                 0.9438982   0.6465898   1.377912


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                 0.0046715   -0.0137890   0.0231320
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0010525   -0.0035107   0.0056157
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.0068525   -0.0035148   0.0172197
Birth       MAL-ED      BANGLADESH   1                    NA                 0.0089431   -0.0613558   0.0792420
Birth       MAL-ED      PERU         1                    NA                 0.0261753   -0.0319939   0.0843446
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0186778   -0.0028573   0.0402129
6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0027057   -0.0022805   0.0076919
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0149925    0.0068668   0.0231182
6 months    LCNI-5      MALAWI       1                    NA                -0.0050845   -0.1301713   0.1200023
6 months    MAL-ED      BANGLADESH   1                    NA                 0.0465368   -0.0156229   0.1086965
6 months    MAL-ED      PERU         1                    NA                 0.0583587   -0.0071286   0.1238461
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0143079   -0.0113581   0.0399739
24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0030910   -0.0055418   0.0117238
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0092884    0.0004619   0.0181150
24 months   LCNI-5      MALAWI       1                    NA                -0.0132275   -0.1658197   0.1393646
24 months   MAL-ED      BANGLADESH   1                    NA                -0.0317073   -0.1209918   0.0575772
24 months   MAL-ED      PERU         1                    NA                -0.0141937   -0.1080224   0.0796350


### Parameter: PAF


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                 0.0279795   -0.0890382   0.1324236
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0031791   -0.0106996   0.0168671
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.0225728   -0.0121644   0.0561178
Birth       MAL-ED      BANGLADESH   1                    NA                 0.0509259   -0.4467871   0.3774194
Birth       MAL-ED      PERU         1                    NA                 0.2144362   -0.4318688   0.5690175
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0865826   -0.0183705   0.1807193
6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0108987   -0.0094067   0.0307956
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0596907    0.0269928   0.0912897
6 months    LCNI-5      MALAWI       1                    NA                -0.0142575   -0.4333092   0.2822775
6 months    MAL-ED      BANGLADESH   1                    NA                 0.2621951   -0.1776585   0.5377641
6 months    MAL-ED      PERU         1                    NA                 0.2635870   -0.0952985   0.5048800
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0314239   -0.0266742   0.0862343
24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0062807   -0.0114119   0.0236638
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0229289    0.0009776   0.0443980
24 months   LCNI-5      MALAWI       1                    NA                -0.0271739   -0.3937793   0.2430034
24 months   MAL-ED      BANGLADESH   1                    NA                -0.0677083   -0.2767215   0.1070871
24 months   MAL-ED      PERU         1                    NA                -0.0385533   -0.3274320   0.1874590
