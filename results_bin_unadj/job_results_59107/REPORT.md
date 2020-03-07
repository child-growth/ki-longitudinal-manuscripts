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

**Outcome Variable:** swasted

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

agecat      studyid         country                        predfeed6    swasted   n_cell       n
----------  --------------  -----------------------------  ----------  --------  -------  ------
Birth       EE              PAKISTAN                       1                  0       24      28
Birth       EE              PAKISTAN                       1                  1        0      28
Birth       EE              PAKISTAN                       0                  0        3      28
Birth       EE              PAKISTAN                       0                  1        1      28
Birth       GMS-Nepal       NEPAL                          1                  0      371     522
Birth       GMS-Nepal       NEPAL                          1                  1       19     522
Birth       GMS-Nepal       NEPAL                          0                  0      129     522
Birth       GMS-Nepal       NEPAL                          0                  1        3     522
Birth       JiVitA-3        BANGLADESH                     1                  0     8220   10744
Birth       JiVitA-3        BANGLADESH                     1                  1      172   10744
Birth       JiVitA-3        BANGLADESH                     0                  0     2314   10744
Birth       JiVitA-3        BANGLADESH                     0                  1       38   10744
Birth       JiVitA-4        BANGLADESH                     1                  0     1783    2224
Birth       JiVitA-4        BANGLADESH                     1                  1       19    2224
Birth       JiVitA-4        BANGLADESH                     0                  0      412    2224
Birth       JiVitA-4        BANGLADESH                     0                  1       10    2224
Birth       MAL-ED          BANGLADESH                     1                  0       68     194
Birth       MAL-ED          BANGLADESH                     1                  1        0     194
Birth       MAL-ED          BANGLADESH                     0                  0      118     194
Birth       MAL-ED          BANGLADESH                     0                  1        8     194
Birth       MAL-ED          BRAZIL                         1                  0        5      57
Birth       MAL-ED          BRAZIL                         1                  1        0      57
Birth       MAL-ED          BRAZIL                         0                  0       52      57
Birth       MAL-ED          BRAZIL                         0                  1        0      57
Birth       MAL-ED          INDIA                          1                  0        4      37
Birth       MAL-ED          INDIA                          1                  1        0      37
Birth       MAL-ED          INDIA                          0                  0       33      37
Birth       MAL-ED          INDIA                          0                  1        0      37
Birth       MAL-ED          NEPAL                          1                  0        3      23
Birth       MAL-ED          NEPAL                          1                  1        0      23
Birth       MAL-ED          NEPAL                          0                  0       19      23
Birth       MAL-ED          NEPAL                          0                  1        1      23
Birth       MAL-ED          PERU                           1                  0       72     208
Birth       MAL-ED          PERU                           1                  1        0     208
Birth       MAL-ED          PERU                           0                  0      136     208
Birth       MAL-ED          PERU                           0                  1        0     208
Birth       MAL-ED          SOUTH AFRICA                   1                  0        1      90
Birth       MAL-ED          SOUTH AFRICA                   1                  1        0      90
Birth       MAL-ED          SOUTH AFRICA                   0                  0       89      90
Birth       MAL-ED          SOUTH AFRICA                   0                  1        0      90
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0     105
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     105
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      105     105
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     105
6 months    EE              PAKISTAN                       1                  0       42      48
6 months    EE              PAKISTAN                       1                  1        1      48
6 months    EE              PAKISTAN                       0                  0        5      48
6 months    EE              PAKISTAN                       0                  1        0      48
6 months    GMS-Nepal       NEPAL                          1                  0      399     547
6 months    GMS-Nepal       NEPAL                          1                  1        7     547
6 months    GMS-Nepal       NEPAL                          0                  0      141     547
6 months    GMS-Nepal       NEPAL                          0                  1        0     547
6 months    JiVitA-3        BANGLADESH                     1                  0     7512    9882
6 months    JiVitA-3        BANGLADESH                     1                  1      113    9882
6 months    JiVitA-3        BANGLADESH                     0                  0     2232    9882
6 months    JiVitA-3        BANGLADESH                     0                  1       25    9882
6 months    JiVitA-4        BANGLADESH                     1                  0     3308    4275
6 months    JiVitA-4        BANGLADESH                     1                  1       19    4275
6 months    JiVitA-4        BANGLADESH                     0                  0      937    4275
6 months    JiVitA-4        BANGLADESH                     0                  1       11    4275
6 months    LCNI-5          MALAWI                         1                  0       47     272
6 months    LCNI-5          MALAWI                         1                  1        0     272
6 months    LCNI-5          MALAWI                         0                  0      225     272
6 months    LCNI-5          MALAWI                         0                  1        0     272
6 months    MAL-ED          BANGLADESH                     1                  0       83     231
6 months    MAL-ED          BANGLADESH                     1                  1        1     231
6 months    MAL-ED          BANGLADESH                     0                  0      146     231
6 months    MAL-ED          BANGLADESH                     0                  1        1     231
6 months    MAL-ED          BRAZIL                         1                  0       30     209
6 months    MAL-ED          BRAZIL                         1                  1        0     209
6 months    MAL-ED          BRAZIL                         0                  0      179     209
6 months    MAL-ED          BRAZIL                         0                  1        0     209
6 months    MAL-ED          INDIA                          1                  0       11     218
6 months    MAL-ED          INDIA                          1                  1        0     218
6 months    MAL-ED          INDIA                          0                  0      202     218
6 months    MAL-ED          INDIA                          0                  1        5     218
6 months    MAL-ED          NEPAL                          1                  0       12     225
6 months    MAL-ED          NEPAL                          1                  1        0     225
6 months    MAL-ED          NEPAL                          0                  0      213     225
6 months    MAL-ED          NEPAL                          0                  1        0     225
6 months    MAL-ED          PERU                           1                  0       92     271
6 months    MAL-ED          PERU                           1                  1        0     271
6 months    MAL-ED          PERU                           0                  0      179     271
6 months    MAL-ED          PERU                           0                  1        0     271
6 months    MAL-ED          SOUTH AFRICA                   1                  0        3     233
6 months    MAL-ED          SOUTH AFRICA                   1                  1        0     233
6 months    MAL-ED          SOUTH AFRICA                   0                  0      227     233
6 months    MAL-ED          SOUTH AFRICA                   0                  1        3     233
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      231     232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     232
6 months    SAS-FoodSuppl   INDIA                          1                  0        0     168
6 months    SAS-FoodSuppl   INDIA                          1                  1        0     168
6 months    SAS-FoodSuppl   INDIA                          0                  0      156     168
6 months    SAS-FoodSuppl   INDIA                          0                  1       12     168
24 months   EE              PAKISTAN                       1                  0       20      23
24 months   EE              PAKISTAN                       1                  1        0      23
24 months   EE              PAKISTAN                       0                  0        3      23
24 months   EE              PAKISTAN                       0                  1        0      23
24 months   GMS-Nepal       NEPAL                          1                  0      349     469
24 months   GMS-Nepal       NEPAL                          1                  1        6     469
24 months   GMS-Nepal       NEPAL                          0                  0      105     469
24 months   GMS-Nepal       NEPAL                          0                  1        9     469
24 months   JiVitA-3        BANGLADESH                     1                  0     3752    5067
24 months   JiVitA-3        BANGLADESH                     1                  1      157    5067
24 months   JiVitA-3        BANGLADESH                     0                  0     1120    5067
24 months   JiVitA-3        BANGLADESH                     0                  1       38    5067
24 months   JiVitA-4        BANGLADESH                     1                  0     3198    4184
24 months   JiVitA-4        BANGLADESH                     1                  1       80    4184
24 months   JiVitA-4        BANGLADESH                     0                  0      880    4184
24 months   JiVitA-4        BANGLADESH                     0                  1       26    4184
24 months   LCNI-5          MALAWI                         1                  0       34     184
24 months   LCNI-5          MALAWI                         1                  1        0     184
24 months   LCNI-5          MALAWI                         0                  0      150     184
24 months   LCNI-5          MALAWI                         0                  1        0     184
24 months   MAL-ED          BANGLADESH                     1                  0       76     205
24 months   MAL-ED          BANGLADESH                     1                  1        0     205
24 months   MAL-ED          BANGLADESH                     0                  0      129     205
24 months   MAL-ED          BANGLADESH                     0                  1        0     205
24 months   MAL-ED          BRAZIL                         1                  0       24     169
24 months   MAL-ED          BRAZIL                         1                  1        1     169
24 months   MAL-ED          BRAZIL                         0                  0      144     169
24 months   MAL-ED          BRAZIL                         0                  1        0     169
24 months   MAL-ED          INDIA                          1                  0       11     209
24 months   MAL-ED          INDIA                          1                  1        0     209
24 months   MAL-ED          INDIA                          0                  0      196     209
24 months   MAL-ED          INDIA                          0                  1        2     209
24 months   MAL-ED          NEPAL                          1                  0       12     219
24 months   MAL-ED          NEPAL                          1                  1        0     219
24 months   MAL-ED          NEPAL                          0                  0      207     219
24 months   MAL-ED          NEPAL                          0                  1        0     219
24 months   MAL-ED          PERU                           1                  0       67     201
24 months   MAL-ED          PERU                           1                  1        1     201
24 months   MAL-ED          PERU                           0                  0      132     201
24 months   MAL-ED          PERU                           0                  1        1     201
24 months   MAL-ED          SOUTH AFRICA                   1                  0        3     216
24 months   MAL-ED          SOUTH AFRICA                   1                  1        0     216
24 months   MAL-ED          SOUTH AFRICA                   0                  0      213     216
24 months   MAL-ED          SOUTH AFRICA                   0                  1        0     216
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     202
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     202
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      201     202
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     202


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
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/7da50057-7cf7-46a2-bd47-5ca61bc3dae7/d023c364-695a-48ad-900b-4c09c2273951/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7da50057-7cf7-46a2-bd47-5ca61bc3dae7/d023c364-695a-48ad-900b-4c09c2273951/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7da50057-7cf7-46a2-bd47-5ca61bc3dae7/d023c364-695a-48ad-900b-4c09c2273951/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7da50057-7cf7-46a2-bd47-5ca61bc3dae7/d023c364-695a-48ad-900b-4c09c2273951/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3    BANGLADESH   1                    NA                0.0204957   0.0172481   0.0237433
Birth       JiVitA-3    BANGLADESH   0                    NA                0.0161565   0.0095646   0.0227484
Birth       JiVitA-4    BANGLADESH   1                    NA                0.0105438   0.0056293   0.0154584
Birth       JiVitA-4    BANGLADESH   0                    NA                0.0236967   0.0022219   0.0451714
6 months    JiVitA-3    BANGLADESH   1                    NA                0.0148197   0.0119197   0.0177197
6 months    JiVitA-3    BANGLADESH   0                    NA                0.0110767   0.0059602   0.0161931
6 months    JiVitA-4    BANGLADESH   1                    NA                0.0057109   0.0020227   0.0093990
6 months    JiVitA-4    BANGLADESH   0                    NA                0.0116034   0.0055832   0.0176236
24 months   GMS-Nepal   NEPAL        1                    NA                0.0169014   0.0034782   0.0303246
24 months   GMS-Nepal   NEPAL        0                    NA                0.0789474   0.0293943   0.1285004
24 months   JiVitA-3    BANGLADESH   1                    NA                0.0401637   0.0320064   0.0483211
24 months   JiVitA-3    BANGLADESH   0                    NA                0.0328152   0.0226906   0.0429398
24 months   JiVitA-4    BANGLADESH   1                    NA                0.0244051   0.0179842   0.0308260
24 months   JiVitA-4    BANGLADESH   0                    NA                0.0286976   0.0174361   0.0399591


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3    BANGLADESH   NA                   NA                0.0195458   0.0166489   0.0224427
Birth       JiVitA-4    BANGLADESH   NA                   NA                0.0130396   0.0073461   0.0187330
6 months    JiVitA-3    BANGLADESH   NA                   NA                0.0139648   0.0114567   0.0164729
6 months    JiVitA-4    BANGLADESH   NA                   NA                0.0070175   0.0038738   0.0101612
24 months   GMS-Nepal   NEPAL        NA                   NA                0.0319829   0.0160416   0.0479243
24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0384843   0.0318086   0.0451600
24 months   JiVitA-4    BANGLADESH   NA                   NA                0.0253346   0.0198022   0.0308670


### Parameter: RR


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       JiVitA-3    BANGLADESH   0                    1                 0.7882851   0.5075555    1.224287
Birth       JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       JiVitA-4    BANGLADESH   0                    1                 2.2474433   0.8096472    6.238521
6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    JiVitA-3    BANGLADESH   0                    1                 0.7474288   0.4509941    1.238708
6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    JiVitA-4    BANGLADESH   0                    1                 2.0318121   0.8808884    4.686474
24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000    1.000000
24 months   GMS-Nepal   NEPAL        0                    1                 4.6710526   1.6973880   12.854299
24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   JiVitA-3    BANGLADESH   0                    1                 0.8170357   0.5633987    1.184858
24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   JiVitA-4    BANGLADESH   0                    1                 1.1758830   0.7291736    1.896257


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0009499   -0.0025684   0.0006686
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.0024957   -0.0017114   0.0067028
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0008549   -0.0022103   0.0005005
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0013067   -0.0002711   0.0028845
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0150815    0.0023717   0.0277913
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0016794   -0.0046737   0.0013148
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0009295   -0.0019098   0.0037687


### Parameter: PAF


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0485996   -0.1354855   0.0316379
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.1913965   -0.1518655   0.4323646
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0612174   -0.1630362   0.0316876
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.1862038   -0.1055211   0.4009483
24 months   GMS-Nepal   NEPAL        1                    NA                 0.4715493    0.0254393   0.7134502
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0436389   -0.1221301   0.0293619
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0366883   -0.0832125   0.1433172
