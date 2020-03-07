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

**Intervention Variable:** predfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country                        predfeed6    sstunted   n_cell       n
----------  --------------  -----------------------------  ----------  ---------  -------  ------
Birth       EE              PAKISTAN                       1                   0       30      42
Birth       EE              PAKISTAN                       1                   1        8      42
Birth       EE              PAKISTAN                       0                   0        4      42
Birth       EE              PAKISTAN                       0                   1        0      42
Birth       GMS-Nepal       NEPAL                          1                   0      404     563
Birth       GMS-Nepal       NEPAL                          1                   1       15     563
Birth       GMS-Nepal       NEPAL                          0                   0      138     563
Birth       GMS-Nepal       NEPAL                          0                   1        6     563
Birth       JiVitA-3        BANGLADESH                     1                   0     9314   13423
Birth       JiVitA-3        BANGLADESH                     1                   1     1152   13423
Birth       JiVitA-3        BANGLADESH                     0                   0     2626   13423
Birth       JiVitA-3        BANGLADESH                     0                   1      331   13423
Birth       JiVitA-4        BANGLADESH                     1                   0     1948    2632
Birth       JiVitA-4        BANGLADESH                     1                   1      155    2632
Birth       JiVitA-4        BANGLADESH                     0                   0      462    2632
Birth       JiVitA-4        BANGLADESH                     0                   1       67    2632
Birth       MAL-ED          BANGLADESH                     1                   0       71     205
Birth       MAL-ED          BANGLADESH                     1                   1        1     205
Birth       MAL-ED          BANGLADESH                     0                   0      129     205
Birth       MAL-ED          BANGLADESH                     0                   1        4     205
Birth       MAL-ED          BRAZIL                         1                   0        5      60
Birth       MAL-ED          BRAZIL                         1                   1        1      60
Birth       MAL-ED          BRAZIL                         0                   0       52      60
Birth       MAL-ED          BRAZIL                         0                   1        2      60
Birth       MAL-ED          INDIA                          1                   0        4      39
Birth       MAL-ED          INDIA                          1                   1        0      39
Birth       MAL-ED          INDIA                          0                   0       33      39
Birth       MAL-ED          INDIA                          0                   1        2      39
Birth       MAL-ED          NEPAL                          1                   0        3      24
Birth       MAL-ED          NEPAL                          1                   1        0      24
Birth       MAL-ED          NEPAL                          0                   0       20      24
Birth       MAL-ED          NEPAL                          0                   1        1      24
Birth       MAL-ED          PERU                           1                   0       73     213
Birth       MAL-ED          PERU                           1                   1        0     213
Birth       MAL-ED          PERU                           0                   0      136     213
Birth       MAL-ED          PERU                           0                   1        4     213
Birth       MAL-ED          SOUTH AFRICA                   1                   0        1      91
Birth       MAL-ED          SOUTH AFRICA                   1                   1        0      91
Birth       MAL-ED          SOUTH AFRICA                   0                   0       89      91
Birth       MAL-ED          SOUTH AFRICA                   0                   1        1      91
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     113
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     113
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      105     113
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        8     113
6 months    EE              PAKISTAN                       1                   0       31      48
6 months    EE              PAKISTAN                       1                   1       12      48
6 months    EE              PAKISTAN                       0                   0        5      48
6 months    EE              PAKISTAN                       0                   1        0      48
6 months    GMS-Nepal       NEPAL                          1                   0      394     547
6 months    GMS-Nepal       NEPAL                          1                   1       12     547
6 months    GMS-Nepal       NEPAL                          0                   0      132     547
6 months    GMS-Nepal       NEPAL                          0                   1        9     547
6 months    JiVitA-3        BANGLADESH                     1                   0     7180    9901
6 months    JiVitA-3        BANGLADESH                     1                   1      464    9901
6 months    JiVitA-3        BANGLADESH                     0                   0     2112    9901
6 months    JiVitA-3        BANGLADESH                     0                   1      145    9901
6 months    JiVitA-4        BANGLADESH                     1                   0     3184    4272
6 months    JiVitA-4        BANGLADESH                     1                   1      144    4272
6 months    JiVitA-4        BANGLADESH                     0                   0      854    4272
6 months    JiVitA-4        BANGLADESH                     0                   1       90    4272
6 months    LCNI-5          MALAWI                         1                   0       44     272
6 months    LCNI-5          MALAWI                         1                   1        3     272
6 months    LCNI-5          MALAWI                         0                   0      208     272
6 months    LCNI-5          MALAWI                         0                   1       17     272
6 months    MAL-ED          BANGLADESH                     1                   0       82     231
6 months    MAL-ED          BANGLADESH                     1                   1        2     231
6 months    MAL-ED          BANGLADESH                     0                   0      142     231
6 months    MAL-ED          BANGLADESH                     0                   1        5     231
6 months    MAL-ED          BRAZIL                         1                   0       30     209
6 months    MAL-ED          BRAZIL                         1                   1        0     209
6 months    MAL-ED          BRAZIL                         0                   0      179     209
6 months    MAL-ED          BRAZIL                         0                   1        0     209
6 months    MAL-ED          INDIA                          1                   0        9     218
6 months    MAL-ED          INDIA                          1                   1        2     218
6 months    MAL-ED          INDIA                          0                   0      200     218
6 months    MAL-ED          INDIA                          0                   1        7     218
6 months    MAL-ED          NEPAL                          1                   0       12     225
6 months    MAL-ED          NEPAL                          1                   1        0     225
6 months    MAL-ED          NEPAL                          0                   0      212     225
6 months    MAL-ED          NEPAL                          0                   1        1     225
6 months    MAL-ED          PERU                           1                   0       90     271
6 months    MAL-ED          PERU                           1                   1        2     271
6 months    MAL-ED          PERU                           0                   0      171     271
6 months    MAL-ED          PERU                           0                   1        8     271
6 months    MAL-ED          SOUTH AFRICA                   1                   0        3     233
6 months    MAL-ED          SOUTH AFRICA                   1                   1        0     233
6 months    MAL-ED          SOUTH AFRICA                   0                   0      226     233
6 months    MAL-ED          SOUTH AFRICA                   0                   1        4     233
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      217     232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       14     232
6 months    SAS-FoodSuppl   INDIA                          1                   0        0     168
6 months    SAS-FoodSuppl   INDIA                          1                   1        0     168
6 months    SAS-FoodSuppl   INDIA                          0                   0      140     168
6 months    SAS-FoodSuppl   INDIA                          0                   1       28     168
24 months   EE              PAKISTAN                       1                   0       12      23
24 months   EE              PAKISTAN                       1                   1        8      23
24 months   EE              PAKISTAN                       0                   0        3      23
24 months   EE              PAKISTAN                       0                   1        0      23
24 months   GMS-Nepal       NEPAL                          1                   0      320     470
24 months   GMS-Nepal       NEPAL                          1                   1       36     470
24 months   GMS-Nepal       NEPAL                          0                   0       98     470
24 months   GMS-Nepal       NEPAL                          0                   1       16     470
24 months   JiVitA-3        BANGLADESH                     1                   0     3325    5088
24 months   JiVitA-3        BANGLADESH                     1                   1      601    5088
24 months   JiVitA-3        BANGLADESH                     0                   0      995    5088
24 months   JiVitA-3        BANGLADESH                     0                   1      167    5088
24 months   JiVitA-4        BANGLADESH                     1                   0     3008    4199
24 months   JiVitA-4        BANGLADESH                     1                   1      284    4199
24 months   JiVitA-4        BANGLADESH                     0                   0      791    4199
24 months   JiVitA-4        BANGLADESH                     0                   1      116    4199
24 months   LCNI-5          MALAWI                         1                   0       30     189
24 months   LCNI-5          MALAWI                         1                   1        4     189
24 months   LCNI-5          MALAWI                         0                   0      135     189
24 months   LCNI-5          MALAWI                         0                   1       20     189
24 months   MAL-ED          BANGLADESH                     1                   0       62     205
24 months   MAL-ED          BANGLADESH                     1                   1       14     205
24 months   MAL-ED          BANGLADESH                     0                   0      117     205
24 months   MAL-ED          BANGLADESH                     0                   1       12     205
24 months   MAL-ED          BRAZIL                         1                   0       25     169
24 months   MAL-ED          BRAZIL                         1                   1        0     169
24 months   MAL-ED          BRAZIL                         0                   0      143     169
24 months   MAL-ED          BRAZIL                         0                   1        1     169
24 months   MAL-ED          INDIA                          1                   0        8     209
24 months   MAL-ED          INDIA                          1                   1        3     209
24 months   MAL-ED          INDIA                          0                   0      174     209
24 months   MAL-ED          INDIA                          0                   1       24     209
24 months   MAL-ED          NEPAL                          1                   0       11     219
24 months   MAL-ED          NEPAL                          1                   1        1     219
24 months   MAL-ED          NEPAL                          0                   0      201     219
24 months   MAL-ED          NEPAL                          0                   1        6     219
24 months   MAL-ED          PERU                           1                   0       63     201
24 months   MAL-ED          PERU                           1                   1        5     201
24 months   MAL-ED          PERU                           0                   0      123     201
24 months   MAL-ED          PERU                           0                   1       10     201
24 months   MAL-ED          SOUTH AFRICA                   1                   0        3     216
24 months   MAL-ED          SOUTH AFRICA                   1                   1        0     216
24 months   MAL-ED          SOUTH AFRICA                   0                   0      189     216
24 months   MAL-ED          SOUTH AFRICA                   0                   1       24     216
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     202
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     202
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      133     202
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       68     202


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




# Results Detail

## Results Plots
![](/tmp/cc61d486-da51-46df-ad03-9435c9ef2d5f/d60c4ea2-62d5-48e1-8291-86eaf779828f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cc61d486-da51-46df-ad03-9435c9ef2d5f/d60c4ea2-62d5-48e1-8291-86eaf779828f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cc61d486-da51-46df-ad03-9435c9ef2d5f/d60c4ea2-62d5-48e1-8291-86eaf779828f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cc61d486-da51-46df-ad03-9435c9ef2d5f/d60c4ea2-62d5-48e1-8291-86eaf779828f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                0.0357995   0.0179942   0.0536048
Birth       GMS-Nepal   NEPAL        0                    NA                0.0416667   0.0089999   0.0743334
Birth       JiVitA-3    BANGLADESH   1                    NA                0.1100707   0.1034047   0.1167367
Birth       JiVitA-3    BANGLADESH   0                    NA                0.1119378   0.1005550   0.1233205
Birth       JiVitA-4    BANGLADESH   1                    NA                0.0737042   0.0601985   0.0872100
Birth       JiVitA-4    BANGLADESH   0                    NA                0.1266541   0.0961648   0.1571434
6 months    GMS-Nepal   NEPAL        1                    NA                0.0295567   0.0130676   0.0460457
6 months    GMS-Nepal   NEPAL        0                    NA                0.0638298   0.0234443   0.1042152
6 months    JiVitA-3    BANGLADESH   1                    NA                0.0607012   0.0549514   0.0664510
6 months    JiVitA-3    BANGLADESH   0                    NA                0.0642446   0.0532229   0.0752663
6 months    JiVitA-4    BANGLADESH   1                    NA                0.0432692   0.0360627   0.0504757
6 months    JiVitA-4    BANGLADESH   0                    NA                0.0953390   0.0766414   0.1140366
24 months   GMS-Nepal   NEPAL        1                    NA                0.1011236   0.0697718   0.1324753
24 months   GMS-Nepal   NEPAL        0                    NA                0.1403509   0.0765207   0.2041811
24 months   JiVitA-3    BANGLADESH   1                    NA                0.1530820   0.1403145   0.1658496
24 months   JiVitA-3    BANGLADESH   0                    NA                0.1437177   0.1159163   0.1715192
24 months   JiVitA-4    BANGLADESH   1                    NA                0.0862697   0.0749041   0.0976354
24 months   JiVitA-4    BANGLADESH   0                    NA                0.1278942   0.1057177   0.1500707
24 months   MAL-ED      BANGLADESH   1                    NA                0.1842105   0.0968431   0.2715779
24 months   MAL-ED      BANGLADESH   0                    NA                0.0930233   0.0427764   0.1432701
24 months   MAL-ED      PERU         1                    NA                0.0735294   0.0113391   0.1357198
24 months   MAL-ED      PERU         0                    NA                0.0751880   0.0302611   0.1201148


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        NA                   NA                0.0373002   0.0216334   0.0529670
Birth       JiVitA-3    BANGLADESH   NA                   NA                0.1104820   0.1047181   0.1162459
Birth       JiVitA-4    BANGLADESH   NA                   NA                0.0843465   0.0720577   0.0966353
6 months    GMS-Nepal   NEPAL        NA                   NA                0.0383912   0.0222749   0.0545076
6 months    JiVitA-3    BANGLADESH   NA                   NA                0.0615089   0.0563485   0.0666694
6 months    JiVitA-4    BANGLADESH   NA                   NA                0.0547753   0.0477475   0.0618030
24 months   GMS-Nepal   NEPAL        NA                   NA                0.1106383   0.0822491   0.1390275
24 months   JiVitA-3    BANGLADESH   NA                   NA                0.1509434   0.1390224   0.1628644
24 months   JiVitA-4    BANGLADESH   NA                   NA                0.0952608   0.0849096   0.1056119
24 months   MAL-ED      BANGLADESH   NA                   NA                0.1268293   0.0811633   0.1724952
24 months   MAL-ED      PERU         NA                   NA                0.0746269   0.0382069   0.1110468


### Parameter: RR


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal   NEPAL        0                    1                 1.1638889   0.4599272   2.945330
Birth       JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3    BANGLADESH   0                    1                 1.0169625   0.9033202   1.144902
Birth       JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4    BANGLADESH   0                    1                 1.7184097   1.2678383   2.329108
6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal   NEPAL        0                    1                 2.1595745   0.9290246   5.020063
6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3    BANGLADESH   0                    1                 1.0583739   0.8719831   1.284607
6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4    BANGLADESH   0                    1                 2.2033898   1.7067821   2.844491
24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal   NEPAL        0                    1                 1.3879142   0.8004256   2.406602
24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3    BANGLADESH   0                    1                 0.9388283   0.7627524   1.155550
24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4    BANGLADESH   0                    1                 1.4824914   1.1998472   1.831717
24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED      BANGLADESH   0                    1                 0.5049834   0.2460911   1.036235
24 months   MAL-ED      PERU         1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED      PERU         0                    1                 1.0225564   0.3630333   2.880236


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                 0.0015007   -0.0080175   0.0110188
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0004113   -0.0024976   0.0033202
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.0106423    0.0039482   0.0173364
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0088346   -0.0024799   0.0201491
6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0008077   -0.0019932   0.0036087
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0115061    0.0071207   0.0158914
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0095147   -0.0078013   0.0268307
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0021386   -0.0090140   0.0047368
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0089910    0.0037483   0.0142338
24 months   MAL-ED      BANGLADESH   1                    NA                -0.0573813   -0.1210900   0.0063275
24 months   MAL-ED      PERU         1                    NA                 0.0010975   -0.0496681   0.0518630


### Parameter: PAF


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                 0.0402318   -0.2514084    0.2639055
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0037228   -0.0229747    0.0297235
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.1261732    0.0424066    0.2026123
6 months    GMS-Nepal   NEPAL        1                    NA                 0.2301196   -0.1068011    0.4644785
6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0131320   -0.0334293    0.0575954
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.2100592    0.1289049    0.2836528
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0859983   -0.0832793    0.2288239
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0141684   -0.0609584    0.0305581
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0943834    0.0371752    0.1481924
24 months   MAL-ED      BANGLADESH   1                    NA                -0.4524291   -1.0307541   -0.0388015
24 months   MAL-ED      PERU         1                    NA                 0.0147059   -0.9651411    0.5059874
