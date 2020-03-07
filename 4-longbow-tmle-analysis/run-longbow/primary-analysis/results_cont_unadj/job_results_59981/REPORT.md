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

**Intervention Variable:** predfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country                        predfeed6    n_cell       n
----------  --------------  -----------------------------  ----------  -------  ------
Birth       EE              PAKISTAN                       1                38      42
Birth       EE              PAKISTAN                       0                 4      42
Birth       GMS-Nepal       NEPAL                          1               419     563
Birth       GMS-Nepal       NEPAL                          0               144     563
Birth       JiVitA-3        BANGLADESH                     1             10466   13423
Birth       JiVitA-3        BANGLADESH                     0              2957   13423
Birth       JiVitA-4        BANGLADESH                     1              2103    2632
Birth       JiVitA-4        BANGLADESH                     0               529    2632
Birth       MAL-ED          BANGLADESH                     1                72     205
Birth       MAL-ED          BANGLADESH                     0               133     205
Birth       MAL-ED          BRAZIL                         1                 6      60
Birth       MAL-ED          BRAZIL                         0                54      60
Birth       MAL-ED          INDIA                          1                 4      39
Birth       MAL-ED          INDIA                          0                35      39
Birth       MAL-ED          NEPAL                          1                 3      24
Birth       MAL-ED          NEPAL                          0                21      24
Birth       MAL-ED          PERU                           1                73     213
Birth       MAL-ED          PERU                           0               140     213
Birth       MAL-ED          SOUTH AFRICA                   1                 1      91
Birth       MAL-ED          SOUTH AFRICA                   0                90      91
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     113
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               113     113
6 months    EE              PAKISTAN                       1                43      48
6 months    EE              PAKISTAN                       0                 5      48
6 months    GMS-Nepal       NEPAL                          1               406     547
6 months    GMS-Nepal       NEPAL                          0               141     547
6 months    JiVitA-3        BANGLADESH                     1              7644    9901
6 months    JiVitA-3        BANGLADESH                     0              2257    9901
6 months    JiVitA-4        BANGLADESH                     1              3328    4272
6 months    JiVitA-4        BANGLADESH                     0               944    4272
6 months    LCNI-5          MALAWI                         1                47     272
6 months    LCNI-5          MALAWI                         0               225     272
6 months    MAL-ED          BANGLADESH                     1                84     231
6 months    MAL-ED          BANGLADESH                     0               147     231
6 months    MAL-ED          BRAZIL                         1                30     209
6 months    MAL-ED          BRAZIL                         0               179     209
6 months    MAL-ED          INDIA                          1                11     218
6 months    MAL-ED          INDIA                          0               207     218
6 months    MAL-ED          NEPAL                          1                12     225
6 months    MAL-ED          NEPAL                          0               213     225
6 months    MAL-ED          PERU                           1                92     271
6 months    MAL-ED          PERU                           0               179     271
6 months    MAL-ED          SOUTH AFRICA                   1                 3     233
6 months    MAL-ED          SOUTH AFRICA                   0               230     233
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               231     232
6 months    SAS-FoodSuppl   INDIA                          1                 0     168
6 months    SAS-FoodSuppl   INDIA                          0               168     168
24 months   EE              PAKISTAN                       1                20      23
24 months   EE              PAKISTAN                       0                 3      23
24 months   GMS-Nepal       NEPAL                          1               356     470
24 months   GMS-Nepal       NEPAL                          0               114     470
24 months   JiVitA-3        BANGLADESH                     1              3926    5088
24 months   JiVitA-3        BANGLADESH                     0              1162    5088
24 months   JiVitA-4        BANGLADESH                     1              3292    4199
24 months   JiVitA-4        BANGLADESH                     0               907    4199
24 months   LCNI-5          MALAWI                         1                34     189
24 months   LCNI-5          MALAWI                         0               155     189
24 months   MAL-ED          BANGLADESH                     1                76     205
24 months   MAL-ED          BANGLADESH                     0               129     205
24 months   MAL-ED          BRAZIL                         1                25     169
24 months   MAL-ED          BRAZIL                         0               144     169
24 months   MAL-ED          INDIA                          1                11     209
24 months   MAL-ED          INDIA                          0               198     209
24 months   MAL-ED          NEPAL                          1                12     219
24 months   MAL-ED          NEPAL                          0               207     219
24 months   MAL-ED          PERU                           1                68     201
24 months   MAL-ED          PERU                           0               133     201
24 months   MAL-ED          SOUTH AFRICA                   1                 3     216
24 months   MAL-ED          SOUTH AFRICA                   0               213     216
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     202
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               201     202


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
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/946fead6-d1ba-4bcf-a607-2a2d17bd9ec3/c835f694-cbe3-4e22-888d-e0992e7ebd4b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/946fead6-d1ba-4bcf-a607-2a2d17bd9ec3/c835f694-cbe3-4e22-888d-e0992e7ebd4b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/946fead6-d1ba-4bcf-a607-2a2d17bd9ec3/c835f694-cbe3-4e22-888d-e0992e7ebd4b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -1.0491647   -1.1485493   -0.9497800
Birth       GMS-Nepal   NEPAL        0                    NA                -1.1076389   -1.2968501   -0.9184276
Birth       JiVitA-3    BANGLADESH   1                    NA                -1.5944563   -1.6198837   -1.5690289
Birth       JiVitA-3    BANGLADESH   0                    NA                -1.5993473   -1.6438519   -1.5548428
Birth       JiVitA-4    BANGLADESH   1                    NA                -1.5046362   -1.5562090   -1.4530635
Birth       JiVitA-4    BANGLADESH   0                    NA                -1.6174669   -1.7496962   -1.4852376
Birth       MAL-ED      BANGLADESH   1                    NA                -1.0498611   -1.2691185   -0.8306038
Birth       MAL-ED      BANGLADESH   0                    NA                -1.0547368   -1.2318965   -0.8775772
Birth       MAL-ED      BRAZIL       1                    NA                -1.0216667   -2.1085384    0.0652051
Birth       MAL-ED      BRAZIL       0                    NA                -0.6601852   -0.9595686   -0.3608018
Birth       MAL-ED      PERU         1                    NA                -0.8691781   -1.0528844   -0.6854718
Birth       MAL-ED      PERU         0                    NA                -0.9260714   -1.0870100   -0.7651328
6 months    EE          PAKISTAN     1                    NA                -2.3121318   -2.6865239   -1.9377397
6 months    EE          PAKISTAN     0                    NA                -0.8473333   -1.8424880    0.1478213
6 months    GMS-Nepal   NEPAL        1                    NA                -1.3056486   -1.3947532   -1.2165440
6 months    GMS-Nepal   NEPAL        0                    NA                -1.4933333   -1.6620428   -1.3246238
6 months    JiVitA-3    BANGLADESH   1                    NA                -1.3083804   -1.3388665   -1.2778944
6 months    JiVitA-3    BANGLADESH   0                    NA                -1.3322685   -1.3819293   -1.2826077
6 months    JiVitA-4    BANGLADESH   1                    NA                -1.3052299   -1.3460942   -1.2643655
6 months    JiVitA-4    BANGLADESH   0                    NA                -1.4998252   -1.5902124   -1.4094381
6 months    LCNI-5      MALAWI       1                    NA                -1.7051064   -1.9955729   -1.4146399
6 months    LCNI-5      MALAWI       0                    NA                -1.6259111   -1.7571663   -1.4946560
6 months    MAL-ED      BANGLADESH   1                    NA                -1.1119444   -1.2953108   -0.9285781
6 months    MAL-ED      BANGLADESH   0                    NA                -1.2347279   -1.3901957   -1.0792601
6 months    MAL-ED      BRAZIL       1                    NA                 0.1416667   -0.3071072    0.5904406
6 months    MAL-ED      BRAZIL       0                    NA                 0.0318063   -0.1183463    0.1819589
6 months    MAL-ED      INDIA        1                    NA                -1.7686364   -2.6098495   -0.9274232
6 months    MAL-ED      INDIA        0                    NA                -1.1896135   -1.3104308   -1.0687962
6 months    MAL-ED      NEPAL        1                    NA                -0.6354167   -1.1447584   -0.1260749
6 months    MAL-ED      NEPAL        0                    NA                -0.5581142   -0.6763168   -0.4399116
6 months    MAL-ED      PERU         1                    NA                -1.2462319   -1.4228164   -1.0696474
6 months    MAL-ED      PERU         0                    NA                -1.3609916   -1.4980728   -1.2239104
24 months   GMS-Nepal   NEPAL        1                    NA                -1.9043914   -2.0002013   -1.8085814
24 months   GMS-Nepal   NEPAL        0                    NA                -1.8871637   -2.0828171   -1.6915103
24 months   JiVitA-3    BANGLADESH   1                    NA                -2.0034488   -2.0437267   -1.9631710
24 months   JiVitA-3    BANGLADESH   0                    NA                -2.0400172   -2.1120950   -1.9679394
24 months   JiVitA-4    BANGLADESH   1                    NA                -1.7696902   -1.8117178   -1.7276626
24 months   JiVitA-4    BANGLADESH   0                    NA                -1.8705513   -1.9503175   -1.7907850
24 months   LCNI-5      MALAWI       1                    NA                -2.0273529   -2.3204751   -1.7342307
24 months   LCNI-5      MALAWI       0                    NA                -1.9514839   -2.1097913   -1.7931764
24 months   MAL-ED      BANGLADESH   1                    NA                -2.0310526   -2.2694286   -1.7926766
24 months   MAL-ED      BANGLADESH   0                    NA                -1.9143798   -2.0612919   -1.7674678
24 months   MAL-ED      BRAZIL       1                    NA                -0.0362000   -0.4674140    0.3950140
24 months   MAL-ED      BRAZIL       0                    NA                 0.0134606   -0.1698006    0.1967219
24 months   MAL-ED      INDIA        1                    NA                -2.6113636   -3.1949653   -2.0277620
24 months   MAL-ED      INDIA        0                    NA                -1.8460606   -1.9776894   -1.7144318
24 months   MAL-ED      NEPAL        1                    NA                -1.5375000   -2.0368115   -1.0381885
24 months   MAL-ED      NEPAL        0                    NA                -1.3060870   -1.4315470   -1.1806269
24 months   MAL-ED      PERU         1                    NA                -1.7622304   -1.9635686   -1.5608922
24 months   MAL-ED      PERU         0                    NA                -1.7474812   -1.8989264   -1.5960360


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        NA                   NA                -1.0641208   -1.1525364   -0.9757052
Birth       JiVitA-3    BANGLADESH   NA                   NA                -1.5955338   -1.6186322   -1.5724354
Birth       JiVitA-4    BANGLADESH   NA                   NA                -1.5273138   -1.5765339   -1.4780937
Birth       MAL-ED      BANGLADESH   NA                   NA                -1.0530244   -1.1913751   -0.9146736
Birth       MAL-ED      BRAZIL       NA                   NA                -0.6963333   -0.9881882   -0.4044785
Birth       MAL-ED      PERU         NA                   NA                -0.9065728   -1.0297267   -0.7834188
6 months    EE          PAKISTAN     NA                   NA                -2.1595486   -2.5331781   -1.7859192
6 months    GMS-Nepal   NEPAL        NA                   NA                -1.3540280   -1.4334801   -1.2745760
6 months    JiVitA-3    BANGLADESH   NA                   NA                -1.3138259   -1.3418712   -1.2857806
6 months    JiVitA-4    BANGLADESH   NA                   NA                -1.3482303   -1.3866421   -1.3098185
6 months    LCNI-5      MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    MAL-ED      BANGLADESH   NA                   NA                -1.1900794   -1.3096296   -1.0705291
6 months    MAL-ED      BRAZIL       NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED      INDIA        NA                   NA                -1.2188303   -1.3423090   -1.0953516
6 months    MAL-ED      NEPAL        NA                   NA                -0.5622370   -0.6774081   -0.4470660
6 months    MAL-ED      PERU         NA                   NA                -1.3220326   -1.4308168   -1.2132484
24 months   GMS-Nepal   NEPAL        NA                   NA                -1.9002128   -1.9869255   -1.8135001
24 months   JiVitA-3    BANGLADESH   NA                   NA                -2.0118003   -2.0479952   -1.9756055
24 months   JiVitA-4    BANGLADESH   NA                   NA                -1.7914765   -1.8297816   -1.7531715
24 months   LCNI-5      MALAWI       NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   MAL-ED      BANGLADESH   NA                   NA                -1.9576341   -2.0857597   -1.8295086
24 months   MAL-ED      BRAZIL       NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED      INDIA        NA                   NA                -1.8863397   -2.0168508   -1.7558287
24 months   MAL-ED      NEPAL        NA                   NA                -1.3187671   -1.4406685   -1.1968657
24 months   MAL-ED      PERU         NA                   NA                -1.7524710   -1.8736426   -1.6312994


### Parameter: ATE


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal   NEPAL        0                    1                 -0.0584742   -0.2721988    0.1552504
Birth       JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH   0                    1                 -0.0048910   -0.0535633    0.0437813
Birth       JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH   0                    1                 -0.1128307   -0.2539070    0.0282456
Birth       MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH   0                    1                 -0.0048757   -0.2867610    0.2770096
Birth       MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL       0                    1                  0.3614815   -0.7658697    1.4888326
Birth       MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU         0                    1                 -0.0568933   -0.3011253    0.1873386
6 months    EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE          PAKISTAN     0                    1                  1.4647984    0.4015477    2.5280492
6 months    GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL        0                    1                 -0.1876847   -0.3784792    0.0031097
6 months    JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH   0                    1                 -0.0238881   -0.0768538    0.0290776
6 months    JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH   0                    1                 -0.1945953   -0.2919623   -0.0972284
6 months    LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5      MALAWI       0                    1                  0.0791953   -0.2395502    0.3979408
6 months    MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH   0                    1                 -0.1227834   -0.3631861    0.1176192
6 months    MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL       0                    1                 -0.1098603   -0.5830874    0.3633667
6 months    MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA        0                    1                  0.5790228   -0.2708221    1.4288678
6 months    MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      NEPAL        0                    1                  0.0773024   -0.4455751    0.6001799
6 months    MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU         0                    1                 -0.1147597   -0.3383069    0.1087874
24 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL        0                    1                  0.0172276   -0.2006251    0.2350803
24 months   JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH   0                    1                 -0.0365684   -0.1166540    0.0435172
24 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH   0                    1                 -0.1008611   -0.1881899   -0.0135323
24 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5      MALAWI       0                    1                  0.0758691   -0.2572704    0.4090085
24 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH   0                    1                  0.1166728   -0.1633384    0.3966840
24 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL       0                    1                  0.0496606   -0.4188799    0.5182011
24 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA        0                    1                  0.7653030    0.1670414    1.3635647
24 months   MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      NEPAL        0                    1                  0.2314130   -0.2834192    0.7462453
24 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      PERU         0                    1                  0.0147492   -0.2371888    0.2666872


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0149561   -0.0696617    0.0397495
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0010775   -0.0117976    0.0096427
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.0226776   -0.0507547    0.0053995
Birth       MAL-ED      BANGLADESH   1                    NA                -0.0031633   -0.1860452    0.1797187
Birth       MAL-ED      BRAZIL       1                    NA                 0.3253333   -0.6896600    1.3403266
Birth       MAL-ED      PERU         1                    NA                -0.0373947   -0.1979638    0.1231745
6 months    EE          PAKISTAN     1                    NA                 0.1525832   -0.0166253    0.3217917
6 months    GMS-Nepal   NEPAL        1                    NA                -0.0483794   -0.0980402    0.0012813
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0054454   -0.0175103    0.0066194
6 months    JiVitA-4    BANGLADESH   1                    NA                -0.0430005   -0.0641672   -0.0218337
6 months    LCNI-5      MALAWI       1                    NA                 0.0655108   -0.1981815    0.3292031
6 months    MAL-ED      BANGLADESH   1                    NA                -0.0781349   -0.2313088    0.0750389
6 months    MAL-ED      BRAZIL       1                    NA                -0.0940909   -0.4994244    0.3112426
6 months    MAL-ED      INDIA        1                    NA                 0.5498061   -0.2573329    1.3569451
6 months    MAL-ED      NEPAL        1                    NA                 0.0731796   -0.4218163    0.5681756
6 months    MAL-ED      PERU         1                    NA                -0.0758007   -0.2235995    0.0719981
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0041786   -0.0486665    0.0570237
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0083515   -0.0266634    0.0099604
24 months   JiVitA-4    BANGLADESH   1                    NA                -0.0217864   -0.0404439   -0.0031289
24 months   LCNI-5      MALAWI       1                    NA                 0.0622207   -0.2110207    0.3354620
24 months   MAL-ED      BANGLADESH   1                    NA                 0.0734185   -0.1029533    0.2497903
24 months   MAL-ED      BRAZIL       1                    NA                 0.0423144   -0.3569243    0.4415531
24 months   MAL-ED      INDIA        1                    NA                 0.7250239    0.1577741    1.2922737
24 months   MAL-ED      NEPAL        1                    NA                 0.2187329   -0.2679396    0.7054053
24 months   MAL-ED      PERU         1                    NA                 0.0097594   -0.1569486    0.1764674
