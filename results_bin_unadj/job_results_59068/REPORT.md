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

**Outcome Variable:** wasted

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

agecat      studyid          country                        exclfeed6    wasted   n_cell       n
----------  ---------------  -----------------------------  ----------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                 0        7       7
Birth       CMC-V-BCS-2002   INDIA                          1                 1        0       7
Birth       CMC-V-BCS-2002   INDIA                          0                 0        0       7
Birth       CMC-V-BCS-2002   INDIA                          0                 1        0       7
Birth       EE               PAKISTAN                       1                 0       20      28
Birth       EE               PAKISTAN                       1                 1        4      28
Birth       EE               PAKISTAN                       0                 0        3      28
Birth       EE               PAKISTAN                       0                 1        1      28
Birth       GMS-Nepal        NEPAL                          1                 0      309     522
Birth       GMS-Nepal        NEPAL                          1                 1       81     522
Birth       GMS-Nepal        NEPAL                          0                 0      111     522
Birth       GMS-Nepal        NEPAL                          0                 1       21     522
Birth       IRC              INDIA                          1                 0        0      12
Birth       IRC              INDIA                          1                 1        0      12
Birth       IRC              INDIA                          0                 0        8      12
Birth       IRC              INDIA                          0                 1        4      12
Birth       JiVitA-3         BANGLADESH                     1                 0     7428   10744
Birth       JiVitA-3         BANGLADESH                     1                 1      953   10744
Birth       JiVitA-3         BANGLADESH                     0                 0     2121   10744
Birth       JiVitA-3         BANGLADESH                     0                 1      242   10744
Birth       JiVitA-4         BANGLADESH                     1                 0     1623    2224
Birth       JiVitA-4         BANGLADESH                     1                 1      176    2224
Birth       JiVitA-4         BANGLADESH                     0                 0      378    2224
Birth       JiVitA-4         BANGLADESH                     0                 1       47    2224
Birth       Keneba           GAMBIA                         1                 0      351    1327
Birth       Keneba           GAMBIA                         1                 1       99    1327
Birth       Keneba           GAMBIA                         0                 0      645    1327
Birth       Keneba           GAMBIA                         0                 1      232    1327
Birth       MAL-ED           BANGLADESH                     1                 0       25     194
Birth       MAL-ED           BANGLADESH                     1                 1        4     194
Birth       MAL-ED           BANGLADESH                     0                 0      135     194
Birth       MAL-ED           BANGLADESH                     0                 1       30     194
Birth       MAL-ED           BRAZIL                         1                 0        1      57
Birth       MAL-ED           BRAZIL                         1                 1        0      57
Birth       MAL-ED           BRAZIL                         0                 0       54      57
Birth       MAL-ED           BRAZIL                         0                 1        2      57
Birth       MAL-ED           INDIA                          1                 0        1      37
Birth       MAL-ED           INDIA                          1                 1        0      37
Birth       MAL-ED           INDIA                          0                 0       31      37
Birth       MAL-ED           INDIA                          0                 1        5      37
Birth       MAL-ED           NEPAL                          1                 0        2      23
Birth       MAL-ED           NEPAL                          1                 1        0      23
Birth       MAL-ED           NEPAL                          0                 0       20      23
Birth       MAL-ED           NEPAL                          0                 1        1      23
Birth       MAL-ED           PERU                           1                 0        2     208
Birth       MAL-ED           PERU                           1                 1        0     208
Birth       MAL-ED           PERU                           0                 0      201     208
Birth       MAL-ED           PERU                           0                 1        5     208
Birth       MAL-ED           SOUTH AFRICA                   1                 0        0      90
Birth       MAL-ED           SOUTH AFRICA                   1                 1        0      90
Birth       MAL-ED           SOUTH AFRICA                   0                 0       81      90
Birth       MAL-ED           SOUTH AFRICA                   0                 1        9      90
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0        0     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        0     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      104     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        1     105
Birth       PROVIDE          BANGLADESH                     1                 0      116     532
Birth       PROVIDE          BANGLADESH                     1                 1       39     532
Birth       PROVIDE          BANGLADESH                     0                 0      299     532
Birth       PROVIDE          BANGLADESH                     0                 1       78     532
Birth       SAS-CompFeed     INDIA                          1                 0      283     325
Birth       SAS-CompFeed     INDIA                          1                 1       27     325
Birth       SAS-CompFeed     INDIA                          0                 0       14     325
Birth       SAS-CompFeed     INDIA                          0                 1        1     325
6 months    CMC-V-BCS-2002   INDIA                          1                 0       17      19
6 months    CMC-V-BCS-2002   INDIA                          1                 1        2      19
6 months    CMC-V-BCS-2002   INDIA                          0                 0        0      19
6 months    CMC-V-BCS-2002   INDIA                          0                 1        0      19
6 months    EE               PAKISTAN                       1                 0       39      48
6 months    EE               PAKISTAN                       1                 1        4      48
6 months    EE               PAKISTAN                       0                 0        5      48
6 months    EE               PAKISTAN                       0                 1        0      48
6 months    GMS-Nepal        NEPAL                          1                 0      370     547
6 months    GMS-Nepal        NEPAL                          1                 1       36     547
6 months    GMS-Nepal        NEPAL                          0                 0      127     547
6 months    GMS-Nepal        NEPAL                          0                 1       14     547
6 months    IRC              INDIA                          1                 0        0      14
6 months    IRC              INDIA                          1                 1        0      14
6 months    IRC              INDIA                          0                 0       11      14
6 months    IRC              INDIA                          0                 1        3      14
6 months    JiVitA-3         BANGLADESH                     1                 0     6948    9882
6 months    JiVitA-3         BANGLADESH                     1                 1      662    9882
6 months    JiVitA-3         BANGLADESH                     0                 0     2080    9882
6 months    JiVitA-3         BANGLADESH                     0                 1      192    9882
6 months    JiVitA-4         BANGLADESH                     1                 0     3152    4275
6 months    JiVitA-4         BANGLADESH                     1                 1      163    4275
6 months    JiVitA-4         BANGLADESH                     0                 0      882    4275
6 months    JiVitA-4         BANGLADESH                     0                 1       78    4275
6 months    Keneba           GAMBIA                         1                 0      562    1908
6 months    Keneba           GAMBIA                         1                 1       24    1908
6 months    Keneba           GAMBIA                         0                 0     1232    1908
6 months    Keneba           GAMBIA                         0                 1       90    1908
6 months    LCNI-5           MALAWI                         1                 0       47     272
6 months    LCNI-5           MALAWI                         1                 1        0     272
6 months    LCNI-5           MALAWI                         0                 0      221     272
6 months    LCNI-5           MALAWI                         0                 1        4     272
6 months    MAL-ED           BANGLADESH                     1                 0       31     231
6 months    MAL-ED           BANGLADESH                     1                 1        2     231
6 months    MAL-ED           BANGLADESH                     0                 0      192     231
6 months    MAL-ED           BANGLADESH                     0                 1        6     231
6 months    MAL-ED           BRAZIL                         1                 0       12     209
6 months    MAL-ED           BRAZIL                         1                 1        0     209
6 months    MAL-ED           BRAZIL                         0                 0      196     209
6 months    MAL-ED           BRAZIL                         0                 1        1     209
6 months    MAL-ED           INDIA                          1                 0        2     218
6 months    MAL-ED           INDIA                          1                 1        0     218
6 months    MAL-ED           INDIA                          0                 0      200     218
6 months    MAL-ED           INDIA                          0                 1       16     218
6 months    MAL-ED           NEPAL                          1                 0        5     225
6 months    MAL-ED           NEPAL                          1                 1        0     225
6 months    MAL-ED           NEPAL                          0                 0      216     225
6 months    MAL-ED           NEPAL                          0                 1        4     225
6 months    MAL-ED           PERU                           1                 0        5     271
6 months    MAL-ED           PERU                           1                 1        0     271
6 months    MAL-ED           PERU                           0                 0      266     271
6 months    MAL-ED           PERU                           0                 1        0     271
6 months    MAL-ED           SOUTH AFRICA                   1                 0        0     233
6 months    MAL-ED           SOUTH AFRICA                   1                 1        0     233
6 months    MAL-ED           SOUTH AFRICA                   0                 0      226     233
6 months    MAL-ED           SOUTH AFRICA                   0                 1        7     233
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0        0     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        0     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      231     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        1     232
6 months    PROVIDE          BANGLADESH                     1                 0      138     603
6 months    PROVIDE          BANGLADESH                     1                 1        3     603
6 months    PROVIDE          BANGLADESH                     0                 0      440     603
6 months    PROVIDE          BANGLADESH                     0                 1       22     603
6 months    SAS-CompFeed     INDIA                          1                 0      330     395
6 months    SAS-CompFeed     INDIA                          1                 1       46     395
6 months    SAS-CompFeed     INDIA                          0                 0       17     395
6 months    SAS-CompFeed     INDIA                          0                 1        2     395
6 months    SAS-FoodSuppl    INDIA                          1                 0        0     168
6 months    SAS-FoodSuppl    INDIA                          1                 1        0     168
6 months    SAS-FoodSuppl    INDIA                          0                 0      127     168
6 months    SAS-FoodSuppl    INDIA                          0                 1       41     168
24 months   CMC-V-BCS-2002   INDIA                          1                 0       18      19
24 months   CMC-V-BCS-2002   INDIA                          1                 1        1      19
24 months   CMC-V-BCS-2002   INDIA                          0                 0        0      19
24 months   CMC-V-BCS-2002   INDIA                          0                 1        0      19
24 months   EE               PAKISTAN                       1                 0       17      23
24 months   EE               PAKISTAN                       1                 1        3      23
24 months   EE               PAKISTAN                       0                 0        3      23
24 months   EE               PAKISTAN                       0                 1        0      23
24 months   GMS-Nepal        NEPAL                          1                 0      294     469
24 months   GMS-Nepal        NEPAL                          1                 1       61     469
24 months   GMS-Nepal        NEPAL                          0                 0       85     469
24 months   GMS-Nepal        NEPAL                          0                 1       29     469
24 months   IRC              INDIA                          1                 0        0      14
24 months   IRC              INDIA                          1                 1        0      14
24 months   IRC              INDIA                          0                 0       14      14
24 months   IRC              INDIA                          0                 1        0      14
24 months   JiVitA-3         BANGLADESH                     1                 0     3039    5067
24 months   JiVitA-3         BANGLADESH                     1                 1      860    5067
24 months   JiVitA-3         BANGLADESH                     0                 0      916    5067
24 months   JiVitA-3         BANGLADESH                     0                 1      252    5067
24 months   JiVitA-4         BANGLADESH                     1                 0     2653    4184
24 months   JiVitA-4         BANGLADESH                     1                 1      613    4184
24 months   JiVitA-4         BANGLADESH                     0                 0      714    4184
24 months   JiVitA-4         BANGLADESH                     0                 1      204    4184
24 months   Keneba           GAMBIA                         1                 0      463    1514
24 months   Keneba           GAMBIA                         1                 1       51    1514
24 months   Keneba           GAMBIA                         0                 0      891    1514
24 months   Keneba           GAMBIA                         0                 1      109    1514
24 months   LCNI-5           MALAWI                         1                 0       33     184
24 months   LCNI-5           MALAWI                         1                 1        1     184
24 months   LCNI-5           MALAWI                         0                 0      147     184
24 months   LCNI-5           MALAWI                         0                 1        3     184
24 months   MAL-ED           BANGLADESH                     1                 0       27     205
24 months   MAL-ED           BANGLADESH                     1                 1        4     205
24 months   MAL-ED           BANGLADESH                     0                 0      158     205
24 months   MAL-ED           BANGLADESH                     0                 1       16     205
24 months   MAL-ED           BRAZIL                         1                 0       11     169
24 months   MAL-ED           BRAZIL                         1                 1        0     169
24 months   MAL-ED           BRAZIL                         0                 0      155     169
24 months   MAL-ED           BRAZIL                         0                 1        3     169
24 months   MAL-ED           INDIA                          1                 0        2     209
24 months   MAL-ED           INDIA                          1                 1        0     209
24 months   MAL-ED           INDIA                          0                 0      183     209
24 months   MAL-ED           INDIA                          0                 1       24     209
24 months   MAL-ED           NEPAL                          1                 0        5     219
24 months   MAL-ED           NEPAL                          1                 1        0     219
24 months   MAL-ED           NEPAL                          0                 0      209     219
24 months   MAL-ED           NEPAL                          0                 1        5     219
24 months   MAL-ED           PERU                           1                 0        3     201
24 months   MAL-ED           PERU                           1                 1        0     201
24 months   MAL-ED           PERU                           0                 0      194     201
24 months   MAL-ED           PERU                           0                 1        4     201
24 months   MAL-ED           SOUTH AFRICA                   1                 0        0     216
24 months   MAL-ED           SOUTH AFRICA                   1                 1        0     216
24 months   MAL-ED           SOUTH AFRICA                   0                 0      215     216
24 months   MAL-ED           SOUTH AFRICA                   0                 1        1     216
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0        0     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        0     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      198     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        4     202
24 months   PROVIDE          BANGLADESH                     1                 0      127     579
24 months   PROVIDE          BANGLADESH                     1                 1       10     579
24 months   PROVIDE          BANGLADESH                     0                 0      390     579
24 months   PROVIDE          BANGLADESH                     0                 1       52     579


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
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
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/16315a79-7727-4b8f-8a55-d446c4084427/57d7d21b-585c-4eca-b08f-e6be31078b0b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/16315a79-7727-4b8f-8a55-d446c4084427/57d7d21b-585c-4eca-b08f-e6be31078b0b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/16315a79-7727-4b8f-8a55-d446c4084427/57d7d21b-585c-4eca-b08f-e6be31078b0b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/16315a79-7727-4b8f-8a55-d446c4084427/57d7d21b-585c-4eca-b08f-e6be31078b0b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                0.2076923   0.1673938   0.2479908
Birth       GMS-Nepal   NEPAL        0                    NA                0.1590909   0.0966348   0.2215470
Birth       JiVitA-3    BANGLADESH   1                    NA                0.1137096   0.1064898   0.1209293
Birth       JiVitA-3    BANGLADESH   0                    NA                0.1024122   0.0894140   0.1154104
Birth       JiVitA-4    BANGLADESH   1                    NA                0.0978321   0.0808004   0.1148639
Birth       JiVitA-4    BANGLADESH   0                    NA                0.1105882   0.0736556   0.1475209
Birth       Keneba      GAMBIA       1                    NA                0.2200000   0.1817119   0.2582881
Birth       Keneba      GAMBIA       0                    NA                0.2645382   0.2353346   0.2937418
Birth       PROVIDE     BANGLADESH   1                    NA                0.2516129   0.1832343   0.3199915
Birth       PROVIDE     BANGLADESH   0                    NA                0.2068966   0.1659679   0.2478252
6 months    GMS-Nepal   NEPAL        1                    NA                0.0886700   0.0609936   0.1163463
6 months    GMS-Nepal   NEPAL        0                    NA                0.0992908   0.0498844   0.1486971
6 months    JiVitA-3    BANGLADESH   1                    NA                0.0869908   0.0796231   0.0943585
6 months    JiVitA-3    BANGLADESH   0                    NA                0.0845070   0.0722904   0.0967237
6 months    JiVitA-4    BANGLADESH   1                    NA                0.0491704   0.0390057   0.0593352
6 months    JiVitA-4    BANGLADESH   0                    NA                0.0812500   0.0630642   0.0994358
6 months    Keneba      GAMBIA       1                    NA                0.0409556   0.0249051   0.0570062
6 months    Keneba      GAMBIA       0                    NA                0.0680787   0.0544974   0.0816600
24 months   GMS-Nepal   NEPAL        1                    NA                0.1718310   0.1325477   0.2111143
24 months   GMS-Nepal   NEPAL        0                    NA                0.2543860   0.1743541   0.3344178
24 months   JiVitA-3    BANGLADESH   1                    NA                0.2205694   0.2048132   0.2363256
24 months   JiVitA-3    BANGLADESH   0                    NA                0.2157534   0.1872226   0.2442842
24 months   JiVitA-4    BANGLADESH   1                    NA                0.1876914   0.1722260   0.2031568
24 months   JiVitA-4    BANGLADESH   0                    NA                0.2222222   0.1891984   0.2552460
24 months   Keneba      GAMBIA       1                    NA                0.0992218   0.0733681   0.1250755
24 months   Keneba      GAMBIA       0                    NA                0.1090000   0.0896784   0.1283216
24 months   PROVIDE     BANGLADESH   1                    NA                0.0729927   0.0293969   0.1165885
24 months   PROVIDE     BANGLADESH   0                    NA                0.1176471   0.0875846   0.1477095


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        NA                   NA                0.1954023   0.1613549   0.2294497
Birth       JiVitA-3    BANGLADESH   NA                   NA                0.1112249   0.1049045   0.1175452
Birth       JiVitA-4    BANGLADESH   NA                   NA                0.1002698   0.0846581   0.1158815
Birth       Keneba      GAMBIA       NA                   NA                0.2494348   0.2261459   0.2727237
Birth       PROVIDE     BANGLADESH   NA                   NA                0.2199248   0.1846953   0.2551543
6 months    GMS-Nepal   NEPAL        NA                   NA                0.0914077   0.0672348   0.1155805
6 months    JiVitA-3    BANGLADESH   NA                   NA                0.0864198   0.0802086   0.0926309
6 months    JiVitA-4    BANGLADESH   NA                   NA                0.0563743   0.0475411   0.0652074
6 months    Keneba      GAMBIA       NA                   NA                0.0597484   0.0491105   0.0703864
24 months   GMS-Nepal   NEPAL        NA                   NA                0.1918977   0.1562203   0.2275751
24 months   JiVitA-3    BANGLADESH   NA                   NA                0.2194592   0.2057462   0.2331723
24 months   JiVitA-4    BANGLADESH   NA                   NA                0.1952677   0.1809764   0.2095589
24 months   Keneba      GAMBIA       NA                   NA                0.1056803   0.0901896   0.1211711
24 months   PROVIDE     BANGLADESH   NA                   NA                0.1070812   0.0818727   0.1322897


### Parameter: RR


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal   NEPAL        0                    1                 0.7659933   0.4943584   1.186883
Birth       JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3    BANGLADESH   0                    1                 0.9006470   0.7816416   1.037771
Birth       JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4    BANGLADESH   0                    1                 1.1303877   0.7782405   1.641879
Birth       Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       Keneba      GAMBIA       0                    1                 1.2024464   0.9784960   1.477653
Birth       PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       PROVIDE     BANGLADESH   0                    1                 0.8222812   0.5875410   1.150807
6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal   NEPAL        0                    1                 1.1197794   0.6223492   2.014794
6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3    BANGLADESH   0                    1                 0.9714480   0.8187332   1.152648
6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4    BANGLADESH   0                    1                 1.6524156   1.2173657   2.242939
6 months    Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    Keneba      GAMBIA       0                    1                 1.6622542   1.0708153   2.580360
24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal   NEPAL        0                    1                 1.4804429   1.0034471   2.184182
24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3    BANGLADESH   0                    1                 0.9781658   0.8409744   1.137738
24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4    BANGLADESH   0                    1                 1.1839768   1.0012224   1.400090
24 months   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   Keneba      GAMBIA       0                    1                 1.0985490   0.8015932   1.505514
24 months   PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   PROVIDE     BANGLADESH   0                    1                 1.6117647   0.8417271   3.086256


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0122900   -0.0311731   0.0065930
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0024847   -0.0057560   0.0007866
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.0024377   -0.0052771   0.0101524
Birth       Keneba      GAMBIA       1                    NA                 0.0294348   -0.0024100   0.0612797
Birth       PROVIDE     BANGLADESH   1                    NA                -0.0316881   -0.0881879   0.0248117
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0027377   -0.0118650   0.0173404
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0005710   -0.0039208   0.0027787
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0072038    0.0024820   0.0119257
6 months    Keneba      GAMBIA       1                    NA                 0.0187928    0.0042140   0.0333716
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0200667   -0.0018400   0.0419733
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0011101   -0.0086621   0.0064418
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0075763   -0.0003790   0.0155316
24 months   Keneba      GAMBIA       1                    NA                 0.0064585   -0.0148611   0.0277781
24 months   PROVIDE     BANGLADESH   1                    NA                 0.0340885   -0.0063670   0.0745439


### Parameter: PAF


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0628959   -0.1637323   0.0292031
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0223395   -0.0521601   0.0066358
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.0243110   -0.0556208   0.0981903
Birth       Keneba      GAMBIA       1                    NA                 0.1180060   -0.0191368   0.2366939
Birth       PROVIDE     BANGLADESH   1                    NA                -0.1440860   -0.4316602   0.0857238
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0299507   -0.1435240   0.1771091
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0066078   -0.0460751   0.0313703
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.1277858    0.0365011   0.2104219
6 months    Keneba      GAMBIA       1                    NA                 0.3145321    0.0298959   0.5156537
24 months   GMS-Nepal   NEPAL        1                    NA                 0.1045696   -0.0161000   0.2109088
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0050585   -0.0400626   0.0287675
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0387997   -0.0025496   0.0784435
24 months   Keneba      GAMBIA       1                    NA                 0.0611138   -0.1637440   0.2425248
24 months   PROVIDE     BANGLADESH   1                    NA                 0.3183424   -0.1756416   0.6047629
