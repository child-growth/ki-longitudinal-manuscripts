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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        exclfeed3    swasted   n_cell       n
----------  ---------------  -----------------------------  ----------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                  0        4       4
Birth       CMC-V-BCS-2002   INDIA                          1                  1        0       4
Birth       CMC-V-BCS-2002   INDIA                          0                  0        0       4
Birth       CMC-V-BCS-2002   INDIA                          0                  1        0       4
Birth       EE               PAKISTAN                       1                  0       22      22
Birth       EE               PAKISTAN                       1                  1        0      22
Birth       EE               PAKISTAN                       0                  0        0      22
Birth       EE               PAKISTAN                       0                  1        0      22
Birth       GMS-Nepal        NEPAL                          1                  0      335     422
Birth       GMS-Nepal        NEPAL                          1                  1       17     422
Birth       GMS-Nepal        NEPAL                          0                  0       70     422
Birth       GMS-Nepal        NEPAL                          0                  1        0     422
Birth       IRC              INDIA                          1                  0        0       9
Birth       IRC              INDIA                          1                  1        0       9
Birth       IRC              INDIA                          0                  0        9       9
Birth       IRC              INDIA                          0                  1        0       9
Birth       JiVitA-3         BANGLADESH                     1                  0     9443   10634
Birth       JiVitA-3         BANGLADESH                     1                  1      193   10634
Birth       JiVitA-3         BANGLADESH                     0                  0      981   10634
Birth       JiVitA-3         BANGLADESH                     0                  1       17   10634
Birth       JiVitA-4         BANGLADESH                     1                  0       89      97
Birth       JiVitA-4         BANGLADESH                     1                  1        0      97
Birth       JiVitA-4         BANGLADESH                     0                  0        8      97
Birth       JiVitA-4         BANGLADESH                     0                  1        0      97
Birth       Keneba           GAMBIA                         1                  0     1052    1282
Birth       Keneba           GAMBIA                         1                  1       81    1282
Birth       Keneba           GAMBIA                         0                  0      138    1282
Birth       Keneba           GAMBIA                         0                  1       11    1282
Birth       MAL-ED           BANGLADESH                     1                  0      126     202
Birth       MAL-ED           BANGLADESH                     1                  1        4     202
Birth       MAL-ED           BANGLADESH                     0                  0       68     202
Birth       MAL-ED           BANGLADESH                     0                  1        4     202
Birth       MAL-ED           BRAZIL                         1                  0       11      55
Birth       MAL-ED           BRAZIL                         1                  1        0      55
Birth       MAL-ED           BRAZIL                         0                  0       44      55
Birth       MAL-ED           BRAZIL                         0                  1        0      55
Birth       MAL-ED           INDIA                          1                  0       22      39
Birth       MAL-ED           INDIA                          1                  1        0      39
Birth       MAL-ED           INDIA                          0                  0       17      39
Birth       MAL-ED           INDIA                          0                  1        0      39
Birth       MAL-ED           NEPAL                          1                  0        8      25
Birth       MAL-ED           NEPAL                          1                  1        0      25
Birth       MAL-ED           NEPAL                          0                  0       16      25
Birth       MAL-ED           NEPAL                          0                  1        1      25
Birth       MAL-ED           PERU                           1                  0       47     218
Birth       MAL-ED           PERU                           1                  1        0     218
Birth       MAL-ED           PERU                           0                  0      171     218
Birth       MAL-ED           PERU                           0                  1        0     218
Birth       MAL-ED           SOUTH AFRICA                   1                  0       12      99
Birth       MAL-ED           SOUTH AFRICA                   1                  1        0      99
Birth       MAL-ED           SOUTH AFRICA                   0                  0       87      99
Birth       MAL-ED           SOUTH AFRICA                   0                  1        0      99
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       15      95
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0      95
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0       80      95
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1        0      95
Birth       PROVIDE          BANGLADESH                     1                  0      375     532
Birth       PROVIDE          BANGLADESH                     1                  1        6     532
Birth       PROVIDE          BANGLADESH                     0                  0      144     532
Birth       PROVIDE          BANGLADESH                     0                  1        7     532
Birth       SAS-CompFeed     INDIA                          1                  0      303     325
Birth       SAS-CompFeed     INDIA                          1                  1        7     325
Birth       SAS-CompFeed     INDIA                          0                  0       15     325
Birth       SAS-CompFeed     INDIA                          0                  1        0     325
6 months    CMC-V-BCS-2002   INDIA                          1                  0       10      10
6 months    CMC-V-BCS-2002   INDIA                          1                  1        0      10
6 months    CMC-V-BCS-2002   INDIA                          0                  0        0      10
6 months    CMC-V-BCS-2002   INDIA                          0                  1        0      10
6 months    EE               PAKISTAN                       1                  0       38      39
6 months    EE               PAKISTAN                       1                  1        1      39
6 months    EE               PAKISTAN                       0                  0        0      39
6 months    EE               PAKISTAN                       0                  1        0      39
6 months    GMS-Nepal        NEPAL                          1                  0      360     441
6 months    GMS-Nepal        NEPAL                          1                  1        7     441
6 months    GMS-Nepal        NEPAL                          0                  0       74     441
6 months    GMS-Nepal        NEPAL                          0                  1        0     441
6 months    IRC              INDIA                          1                  0        0      10
6 months    IRC              INDIA                          1                  1        0      10
6 months    IRC              INDIA                          0                  0       10      10
6 months    IRC              INDIA                          0                  1        0      10
6 months    JiVitA-3         BANGLADESH                     1                  0     8378    9310
6 months    JiVitA-3         BANGLADESH                     1                  1      121    9310
6 months    JiVitA-3         BANGLADESH                     0                  0      803    9310
6 months    JiVitA-3         BANGLADESH                     0                  1        8    9310
6 months    JiVitA-4         BANGLADESH                     1                  0       76      88
6 months    JiVitA-4         BANGLADESH                     1                  1        0      88
6 months    JiVitA-4         BANGLADESH                     0                  0       12      88
6 months    JiVitA-4         BANGLADESH                     0                  1        0      88
6 months    Keneba           GAMBIA                         1                  0     1516    1742
6 months    Keneba           GAMBIA                         1                  1       25    1742
6 months    Keneba           GAMBIA                         0                  0      196    1742
6 months    Keneba           GAMBIA                         0                  1        5    1742
6 months    MAL-ED           BANGLADESH                     1                  0      151     233
6 months    MAL-ED           BANGLADESH                     1                  1        1     233
6 months    MAL-ED           BANGLADESH                     0                  0       80     233
6 months    MAL-ED           BANGLADESH                     0                  1        1     233
6 months    MAL-ED           BRAZIL                         1                  0       60     187
6 months    MAL-ED           BRAZIL                         1                  1        0     187
6 months    MAL-ED           BRAZIL                         0                  0      127     187
6 months    MAL-ED           BRAZIL                         0                  1        0     187
6 months    MAL-ED           INDIA                          1                  0      109     210
6 months    MAL-ED           INDIA                          1                  1        1     210
6 months    MAL-ED           INDIA                          0                  0       96     210
6 months    MAL-ED           INDIA                          0                  1        4     210
6 months    MAL-ED           NEPAL                          1                  0       70     227
6 months    MAL-ED           NEPAL                          1                  1        0     227
6 months    MAL-ED           NEPAL                          0                  0      157     227
6 months    MAL-ED           NEPAL                          0                  1        0     227
6 months    MAL-ED           PERU                           1                  0       61     270
6 months    MAL-ED           PERU                           1                  1        0     270
6 months    MAL-ED           PERU                           0                  0      209     270
6 months    MAL-ED           PERU                           0                  1        0     270
6 months    MAL-ED           SOUTH AFRICA                   1                  0       22     244
6 months    MAL-ED           SOUTH AFRICA                   1                  1        0     244
6 months    MAL-ED           SOUTH AFRICA                   0                  0      220     244
6 months    MAL-ED           SOUTH AFRICA                   0                  1        2     244
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       46     212
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     212
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      166     212
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1        0     212
6 months    PROVIDE          BANGLADESH                     1                  0      427     603
6 months    PROVIDE          BANGLADESH                     1                  1        1     603
6 months    PROVIDE          BANGLADESH                     0                  0      171     603
6 months    PROVIDE          BANGLADESH                     0                  1        4     603
6 months    SAS-CompFeed     INDIA                          1                  0      360     395
6 months    SAS-CompFeed     INDIA                          1                  1       16     395
6 months    SAS-CompFeed     INDIA                          0                  0       18     395
6 months    SAS-CompFeed     INDIA                          0                  1        1     395
24 months   CMC-V-BCS-2002   INDIA                          1                  0       10      10
24 months   CMC-V-BCS-2002   INDIA                          1                  1        0      10
24 months   CMC-V-BCS-2002   INDIA                          0                  0        0      10
24 months   CMC-V-BCS-2002   INDIA                          0                  1        0      10
24 months   EE               PAKISTAN                       1                  0       20      20
24 months   EE               PAKISTAN                       1                  1        0      20
24 months   EE               PAKISTAN                       0                  0        0      20
24 months   EE               PAKISTAN                       0                  1        0      20
24 months   GMS-Nepal        NEPAL                          1                  0      313     384
24 months   GMS-Nepal        NEPAL                          1                  1        9     384
24 months   GMS-Nepal        NEPAL                          0                  0       60     384
24 months   GMS-Nepal        NEPAL                          0                  1        2     384
24 months   IRC              INDIA                          1                  0        0      10
24 months   IRC              INDIA                          1                  1        0      10
24 months   IRC              INDIA                          0                  0       10      10
24 months   IRC              INDIA                          0                  1        0      10
24 months   JiVitA-3         BANGLADESH                     1                  0     4246    4833
24 months   JiVitA-3         BANGLADESH                     1                  1      170    4833
24 months   JiVitA-3         BANGLADESH                     0                  0      400    4833
24 months   JiVitA-3         BANGLADESH                     0                  1       17    4833
24 months   JiVitA-4         BANGLADESH                     1                  0      131     150
24 months   JiVitA-4         BANGLADESH                     1                  1        4     150
24 months   JiVitA-4         BANGLADESH                     0                  0       14     150
24 months   JiVitA-4         BANGLADESH                     0                  1        1     150
24 months   Keneba           GAMBIA                         1                  0     1254    1421
24 months   Keneba           GAMBIA                         1                  1       20    1421
24 months   Keneba           GAMBIA                         0                  0      144    1421
24 months   Keneba           GAMBIA                         0                  1        3    1421
24 months   MAL-ED           BANGLADESH                     1                  0      135     205
24 months   MAL-ED           BANGLADESH                     1                  1        0     205
24 months   MAL-ED           BANGLADESH                     0                  0       70     205
24 months   MAL-ED           BANGLADESH                     0                  1        0     205
24 months   MAL-ED           BRAZIL                         1                  0       51     152
24 months   MAL-ED           BRAZIL                         1                  1        1     152
24 months   MAL-ED           BRAZIL                         0                  0      100     152
24 months   MAL-ED           BRAZIL                         0                  1        0     152
24 months   MAL-ED           INDIA                          1                  0      102     202
24 months   MAL-ED           INDIA                          1                  1        0     202
24 months   MAL-ED           INDIA                          0                  0       99     202
24 months   MAL-ED           INDIA                          0                  1        1     202
24 months   MAL-ED           NEPAL                          1                  0       67     220
24 months   MAL-ED           NEPAL                          1                  1        0     220
24 months   MAL-ED           NEPAL                          0                  0      153     220
24 months   MAL-ED           NEPAL                          0                  1        0     220
24 months   MAL-ED           PERU                           1                  0       43     198
24 months   MAL-ED           PERU                           1                  1        0     198
24 months   MAL-ED           PERU                           0                  0      154     198
24 months   MAL-ED           PERU                           0                  1        1     198
24 months   MAL-ED           SOUTH AFRICA                   1                  0       19     228
24 months   MAL-ED           SOUTH AFRICA                   1                  1        0     228
24 months   MAL-ED           SOUTH AFRICA                   0                  0      209     228
24 months   MAL-ED           SOUTH AFRICA                   0                  1        0     228
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       38     184
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     184
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      146     184
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1        0     184
24 months   PROVIDE          BANGLADESH                     1                  0      403     579
24 months   PROVIDE          BANGLADESH                     1                  1        5     579
24 months   PROVIDE          BANGLADESH                     0                  0      167     579
24 months   PROVIDE          BANGLADESH                     0                  1        4     579


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/60d36f70-07ab-425f-b8fb-ebe1324df350/db7d63c9-5ee7-4eab-bbd3-bea13871ee7d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/60d36f70-07ab-425f-b8fb-ebe1324df350/db7d63c9-5ee7-4eab-bbd3-bea13871ee7d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/60d36f70-07ab-425f-b8fb-ebe1324df350/db7d63c9-5ee7-4eab-bbd3-bea13871ee7d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/60d36f70-07ab-425f-b8fb-ebe1324df350/db7d63c9-5ee7-4eab-bbd3-bea13871ee7d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3   BANGLADESH   1                    NA                0.0200291   0.0169566   0.0231015
Birth       JiVitA-3   BANGLADESH   0                    NA                0.0170341   0.0084167   0.0256514
Birth       Keneba     GAMBIA       1                    NA                0.0714916   0.0564836   0.0864996
Birth       Keneba     GAMBIA       0                    NA                0.0738255   0.0318231   0.1158279
Birth       PROVIDE    BANGLADESH   1                    NA                0.0157480   0.0032351   0.0282610
Birth       PROVIDE    BANGLADESH   0                    NA                0.0463576   0.0127899   0.0799253
6 months    JiVitA-3   BANGLADESH   1                    NA                0.0142370   0.0114519   0.0170221
6 months    JiVitA-3   BANGLADESH   0                    NA                0.0098644   0.0015474   0.0181813
6 months    Keneba     GAMBIA       1                    NA                0.0162232   0.0099138   0.0225326
6 months    Keneba     GAMBIA       0                    NA                0.0248756   0.0033383   0.0464129
24 months   JiVitA-3   BANGLADESH   1                    NA                0.0384964   0.0312267   0.0457660
24 months   JiVitA-3   BANGLADESH   0                    NA                0.0407674   0.0234199   0.0581148


### Parameter: E(Y)


agecat      studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3   BANGLADESH   NA                   NA                0.0197480   0.0168324   0.0226636
Birth       Keneba     GAMBIA       NA                   NA                0.0717629   0.0576293   0.0858965
Birth       PROVIDE    BANGLADESH   NA                   NA                0.0244361   0.0113037   0.0375685
6 months    JiVitA-3   BANGLADESH   NA                   NA                0.0138561   0.0112336   0.0164785
6 months    Keneba     GAMBIA       NA                   NA                0.0172216   0.0111106   0.0233326
24 months   JiVitA-3   BANGLADESH   NA                   NA                0.0386923   0.0318833   0.0455013


### Parameter: RR


agecat      studyid    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3   BANGLADESH   0                    1                 0.8504678   0.5028625   1.438356
Birth       Keneba     GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       Keneba     GAMBIA       0                    1                 1.0326456   0.5630926   1.893751
Birth       PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       PROVIDE    BANGLADESH   0                    1                 2.9437086   1.0046589   8.625236
6 months    JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3   BANGLADESH   0                    1                 0.6928697   0.2896953   1.657150
6 months    Keneba     GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    Keneba     GAMBIA       0                    1                 1.5333333   0.5935144   3.961338
24 months   JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3   BANGLADESH   0                    1                 1.0589928   0.6648687   1.686748


### Parameter: PAR


agecat      studyid    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3   BANGLADESH   1                    NA                -0.0002811   -0.0011334   0.0005712
Birth       Keneba     GAMBIA       1                    NA                 0.0002713   -0.0049129   0.0054554
Birth       PROVIDE    BANGLADESH   1                    NA                 0.0086881   -0.0015476   0.0189237
6 months    JiVitA-3   BANGLADESH   1                    NA                -0.0003809   -0.0011520   0.0003902
6 months    Keneba     GAMBIA       1                    NA                 0.0009984   -0.0015944   0.0035911
24 months   JiVitA-3   BANGLADESH   1                    NA                 0.0001959   -0.0014244   0.0018163


### Parameter: PAF


agecat      studyid    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3   BANGLADESH   1                    NA                -0.0142333   -0.0582832   0.0279830
Birth       Keneba     GAMBIA       1                    NA                 0.0037799   -0.0711403   0.0734598
Birth       PROVIDE    BANGLADESH   1                    NA                 0.3555421   -0.1520028   0.6394748
6 months    JiVitA-3   BANGLADESH   1                    NA                -0.0274898   -0.0845481   0.0265667
6 months    Keneba     GAMBIA       1                    NA                 0.0579710   -0.1036799   0.1959457
24 months   JiVitA-3   BANGLADESH   1                    NA                 0.0050642   -0.0378795   0.0462311
