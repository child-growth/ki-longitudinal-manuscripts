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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        exclfeed3    wasted   n_cell       n
----------  ---------------  -----------------------------  ----------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                 0        4       4
Birth       CMC-V-BCS-2002   INDIA                          1                 1        0       4
Birth       CMC-V-BCS-2002   INDIA                          0                 0        0       4
Birth       CMC-V-BCS-2002   INDIA                          0                 1        0       4
Birth       EE               PAKISTAN                       1                 0       18      22
Birth       EE               PAKISTAN                       1                 1        4      22
Birth       EE               PAKISTAN                       0                 0        0      22
Birth       EE               PAKISTAN                       0                 1        0      22
Birth       GMS-Nepal        NEPAL                          1                 0      282     422
Birth       GMS-Nepal        NEPAL                          1                 1       70     422
Birth       GMS-Nepal        NEPAL                          0                 0       60     422
Birth       GMS-Nepal        NEPAL                          0                 1       10     422
Birth       IRC              INDIA                          1                 0        0       9
Birth       IRC              INDIA                          1                 1        0       9
Birth       IRC              INDIA                          0                 0        6       9
Birth       IRC              INDIA                          0                 1        3       9
Birth       JiVitA-3         BANGLADESH                     1                 0     8558   10634
Birth       JiVitA-3         BANGLADESH                     1                 1     1078   10634
Birth       JiVitA-3         BANGLADESH                     0                 0      898   10634
Birth       JiVitA-3         BANGLADESH                     0                 1      100   10634
Birth       JiVitA-4         BANGLADESH                     1                 0       87      97
Birth       JiVitA-4         BANGLADESH                     1                 1        2      97
Birth       JiVitA-4         BANGLADESH                     0                 0        8      97
Birth       JiVitA-4         BANGLADESH                     0                 1        0      97
Birth       Keneba           GAMBIA                         1                 0      858    1282
Birth       Keneba           GAMBIA                         1                 1      275    1282
Birth       Keneba           GAMBIA                         0                 0      102    1282
Birth       Keneba           GAMBIA                         0                 1       47    1282
Birth       MAL-ED           BANGLADESH                     1                 0      109     202
Birth       MAL-ED           BANGLADESH                     1                 1       21     202
Birth       MAL-ED           BANGLADESH                     0                 0       60     202
Birth       MAL-ED           BANGLADESH                     0                 1       12     202
Birth       MAL-ED           BRAZIL                         1                 0       11      55
Birth       MAL-ED           BRAZIL                         1                 1        0      55
Birth       MAL-ED           BRAZIL                         0                 0       43      55
Birth       MAL-ED           BRAZIL                         0                 1        1      55
Birth       MAL-ED           INDIA                          1                 0       19      39
Birth       MAL-ED           INDIA                          1                 1        3      39
Birth       MAL-ED           INDIA                          0                 0       15      39
Birth       MAL-ED           INDIA                          0                 1        2      39
Birth       MAL-ED           NEPAL                          1                 0        8      25
Birth       MAL-ED           NEPAL                          1                 1        0      25
Birth       MAL-ED           NEPAL                          0                 0       15      25
Birth       MAL-ED           NEPAL                          0                 1        2      25
Birth       MAL-ED           PERU                           1                 0       47     218
Birth       MAL-ED           PERU                           1                 1        0     218
Birth       MAL-ED           PERU                           0                 0      166     218
Birth       MAL-ED           PERU                           0                 1        5     218
Birth       MAL-ED           SOUTH AFRICA                   1                 0       12      99
Birth       MAL-ED           SOUTH AFRICA                   1                 1        0      99
Birth       MAL-ED           SOUTH AFRICA                   0                 0       78      99
Birth       MAL-ED           SOUTH AFRICA                   0                 1        9      99
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       15      95
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        0      95
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0       79      95
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        1      95
Birth       PROVIDE          BANGLADESH                     1                 0      299     532
Birth       PROVIDE          BANGLADESH                     1                 1       82     532
Birth       PROVIDE          BANGLADESH                     0                 0      116     532
Birth       PROVIDE          BANGLADESH                     0                 1       35     532
Birth       SAS-CompFeed     INDIA                          1                 0      283     325
Birth       SAS-CompFeed     INDIA                          1                 1       27     325
Birth       SAS-CompFeed     INDIA                          0                 0       14     325
Birth       SAS-CompFeed     INDIA                          0                 1        1     325
6 months    CMC-V-BCS-2002   INDIA                          1                 0        9      10
6 months    CMC-V-BCS-2002   INDIA                          1                 1        1      10
6 months    CMC-V-BCS-2002   INDIA                          0                 0        0      10
6 months    CMC-V-BCS-2002   INDIA                          0                 1        0      10
6 months    EE               PAKISTAN                       1                 0       35      39
6 months    EE               PAKISTAN                       1                 1        4      39
6 months    EE               PAKISTAN                       0                 0        0      39
6 months    EE               PAKISTAN                       0                 1        0      39
6 months    GMS-Nepal        NEPAL                          1                 0      330     441
6 months    GMS-Nepal        NEPAL                          1                 1       37     441
6 months    GMS-Nepal        NEPAL                          0                 0       67     441
6 months    GMS-Nepal        NEPAL                          0                 1        7     441
6 months    IRC              INDIA                          1                 0        0      10
6 months    IRC              INDIA                          1                 1        0      10
6 months    IRC              INDIA                          0                 0        8      10
6 months    IRC              INDIA                          0                 1        2      10
6 months    JiVitA-3         BANGLADESH                     1                 0     7754    9310
6 months    JiVitA-3         BANGLADESH                     1                 1      745    9310
6 months    JiVitA-3         BANGLADESH                     0                 0      747    9310
6 months    JiVitA-3         BANGLADESH                     0                 1       64    9310
6 months    JiVitA-4         BANGLADESH                     1                 0       72      88
6 months    JiVitA-4         BANGLADESH                     1                 1        4      88
6 months    JiVitA-4         BANGLADESH                     0                 0       12      88
6 months    JiVitA-4         BANGLADESH                     0                 1        0      88
6 months    Keneba           GAMBIA                         1                 0     1459    1742
6 months    Keneba           GAMBIA                         1                 1       82    1742
6 months    Keneba           GAMBIA                         0                 0      177    1742
6 months    Keneba           GAMBIA                         0                 1       24    1742
6 months    MAL-ED           BANGLADESH                     1                 0      147     233
6 months    MAL-ED           BANGLADESH                     1                 1        5     233
6 months    MAL-ED           BANGLADESH                     0                 0       78     233
6 months    MAL-ED           BANGLADESH                     0                 1        3     233
6 months    MAL-ED           BRAZIL                         1                 0       59     187
6 months    MAL-ED           BRAZIL                         1                 1        1     187
6 months    MAL-ED           BRAZIL                         0                 0      127     187
6 months    MAL-ED           BRAZIL                         0                 1        0     187
6 months    MAL-ED           INDIA                          1                 0      105     210
6 months    MAL-ED           INDIA                          1                 1        5     210
6 months    MAL-ED           INDIA                          0                 0       88     210
6 months    MAL-ED           INDIA                          0                 1       12     210
6 months    MAL-ED           NEPAL                          1                 0       69     227
6 months    MAL-ED           NEPAL                          1                 1        1     227
6 months    MAL-ED           NEPAL                          0                 0      154     227
6 months    MAL-ED           NEPAL                          0                 1        3     227
6 months    MAL-ED           PERU                           1                 0       61     270
6 months    MAL-ED           PERU                           1                 1        0     270
6 months    MAL-ED           PERU                           0                 0      209     270
6 months    MAL-ED           PERU                           0                 1        0     270
6 months    MAL-ED           SOUTH AFRICA                   1                 0       22     244
6 months    MAL-ED           SOUTH AFRICA                   1                 1        0     244
6 months    MAL-ED           SOUTH AFRICA                   0                 0      216     244
6 months    MAL-ED           SOUTH AFRICA                   0                 1        6     244
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       46     212
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        0     212
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      166     212
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        0     212
6 months    PROVIDE          BANGLADESH                     1                 0      416     603
6 months    PROVIDE          BANGLADESH                     1                 1       12     603
6 months    PROVIDE          BANGLADESH                     0                 0      162     603
6 months    PROVIDE          BANGLADESH                     0                 1       13     603
6 months    SAS-CompFeed     INDIA                          1                 0      330     395
6 months    SAS-CompFeed     INDIA                          1                 1       46     395
6 months    SAS-CompFeed     INDIA                          0                 0       17     395
6 months    SAS-CompFeed     INDIA                          0                 1        2     395
24 months   CMC-V-BCS-2002   INDIA                          1                 0        9      10
24 months   CMC-V-BCS-2002   INDIA                          1                 1        1      10
24 months   CMC-V-BCS-2002   INDIA                          0                 0        0      10
24 months   CMC-V-BCS-2002   INDIA                          0                 1        0      10
24 months   EE               PAKISTAN                       1                 0       17      20
24 months   EE               PAKISTAN                       1                 1        3      20
24 months   EE               PAKISTAN                       0                 0        0      20
24 months   EE               PAKISTAN                       0                 1        0      20
24 months   GMS-Nepal        NEPAL                          1                 0      258     384
24 months   GMS-Nepal        NEPAL                          1                 1       64     384
24 months   GMS-Nepal        NEPAL                          0                 0       53     384
24 months   GMS-Nepal        NEPAL                          0                 1        9     384
24 months   IRC              INDIA                          1                 0        0      10
24 months   IRC              INDIA                          1                 1        0      10
24 months   IRC              INDIA                          0                 0       10      10
24 months   IRC              INDIA                          0                 1        0      10
24 months   JiVitA-3         BANGLADESH                     1                 0     3452    4833
24 months   JiVitA-3         BANGLADESH                     1                 1      964    4833
24 months   JiVitA-3         BANGLADESH                     0                 0      324    4833
24 months   JiVitA-3         BANGLADESH                     0                 1       93    4833
24 months   JiVitA-4         BANGLADESH                     1                 0      113     150
24 months   JiVitA-4         BANGLADESH                     1                 1       22     150
24 months   JiVitA-4         BANGLADESH                     0                 0       12     150
24 months   JiVitA-4         BANGLADESH                     0                 1        3     150
24 months   Keneba           GAMBIA                         1                 0     1146    1421
24 months   Keneba           GAMBIA                         1                 1      128    1421
24 months   Keneba           GAMBIA                         0                 0      128    1421
24 months   Keneba           GAMBIA                         0                 1       19    1421
24 months   MAL-ED           BANGLADESH                     1                 0      120     205
24 months   MAL-ED           BANGLADESH                     1                 1       15     205
24 months   MAL-ED           BANGLADESH                     0                 0       66     205
24 months   MAL-ED           BANGLADESH                     0                 1        4     205
24 months   MAL-ED           BRAZIL                         1                 0       50     152
24 months   MAL-ED           BRAZIL                         1                 1        2     152
24 months   MAL-ED           BRAZIL                         0                 0       99     152
24 months   MAL-ED           BRAZIL                         0                 1        1     152
24 months   MAL-ED           INDIA                          1                 0       91     202
24 months   MAL-ED           INDIA                          1                 1       11     202
24 months   MAL-ED           INDIA                          0                 0       87     202
24 months   MAL-ED           INDIA                          0                 1       13     202
24 months   MAL-ED           NEPAL                          1                 0       66     220
24 months   MAL-ED           NEPAL                          1                 1        1     220
24 months   MAL-ED           NEPAL                          0                 0      149     220
24 months   MAL-ED           NEPAL                          0                 1        4     220
24 months   MAL-ED           PERU                           1                 0       42     198
24 months   MAL-ED           PERU                           1                 1        1     198
24 months   MAL-ED           PERU                           0                 0      153     198
24 months   MAL-ED           PERU                           0                 1        2     198
24 months   MAL-ED           SOUTH AFRICA                   1                 0       19     228
24 months   MAL-ED           SOUTH AFRICA                   1                 1        0     228
24 months   MAL-ED           SOUTH AFRICA                   0                 0      208     228
24 months   MAL-ED           SOUTH AFRICA                   0                 1        1     228
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       38     184
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        0     184
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      142     184
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        4     184
24 months   PROVIDE          BANGLADESH                     1                 0      368     579
24 months   PROVIDE          BANGLADESH                     1                 1       40     579
24 months   PROVIDE          BANGLADESH                     0                 0      149     579
24 months   PROVIDE          BANGLADESH                     0                 1       22     579


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
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
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




# Results Detail

## Results Plots
![](/tmp/20d049e9-a23e-4d9f-87e2-b1d0aa31d92a/6adaf24a-12d4-4cb4-8906-668fe46fbf1e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/20d049e9-a23e-4d9f-87e2-b1d0aa31d92a/6adaf24a-12d4-4cb4-8906-668fe46fbf1e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/20d049e9-a23e-4d9f-87e2-b1d0aa31d92a/6adaf24a-12d4-4cb4-8906-668fe46fbf1e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/20d049e9-a23e-4d9f-87e2-b1d0aa31d92a/6adaf24a-12d4-4cb4-8906-668fe46fbf1e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                0.1991209   0.1573730   0.2408688
Birth       GMS-Nepal   NEPAL        0                    NA                0.1514429   0.0689938   0.2338920
Birth       JiVitA-3    BANGLADESH   1                    NA                0.1116518   0.1048901   0.1184136
Birth       JiVitA-3    BANGLADESH   0                    NA                0.1023605   0.0847550   0.1199659
Birth       Keneba      GAMBIA       1                    NA                0.2441122   0.2192223   0.2690021
Birth       Keneba      GAMBIA       0                    NA                0.2997389   0.2251107   0.3743671
Birth       MAL-ED      BANGLADESH   1                    NA                0.1602422   0.0962978   0.2241866
Birth       MAL-ED      BANGLADESH   0                    NA                0.1672204   0.0781854   0.2562554
Birth       PROVIDE     BANGLADESH   1                    NA                0.2140632   0.1729763   0.2551502
Birth       PROVIDE     BANGLADESH   0                    NA                0.2351664   0.1682834   0.3020493
6 months    GMS-Nepal   NEPAL        1                    NA                0.1008174   0.0699785   0.1316564
6 months    GMS-Nepal   NEPAL        0                    NA                0.0945946   0.0278402   0.1613490
6 months    JiVitA-3    BANGLADESH   1                    NA                0.0877051   0.0810134   0.0943967
6 months    JiVitA-3    BANGLADESH   0                    NA                0.0784186   0.0575547   0.0992825
6 months    Keneba      GAMBIA       1                    NA                0.0531354   0.0419245   0.0643463
6 months    Keneba      GAMBIA       0                    NA                0.1153647   0.0710274   0.1597019
6 months    MAL-ED      INDIA        1                    NA                0.0454545   0.0064356   0.0844735
6 months    MAL-ED      INDIA        0                    NA                0.1200000   0.0561565   0.1838435
6 months    PROVIDE     BANGLADESH   1                    NA                0.0279041   0.0121991   0.0436091
6 months    PROVIDE     BANGLADESH   0                    NA                0.0688087   0.0294958   0.1081216
24 months   GMS-Nepal   NEPAL        1                    NA                0.1987578   0.1551132   0.2424023
24 months   GMS-Nepal   NEPAL        0                    NA                0.1451613   0.0573630   0.2329596
24 months   JiVitA-3    BANGLADESH   1                    NA                0.2179748   0.2037050   0.2322447
24 months   JiVitA-3    BANGLADESH   0                    NA                0.2280780   0.1730700   0.2830861
24 months   Keneba      GAMBIA       1                    NA                0.1006879   0.0841503   0.1172255
24 months   Keneba      GAMBIA       0                    NA                0.1290445   0.0718218   0.1862672
24 months   MAL-ED      INDIA        1                    NA                0.1112553   0.0482478   0.1742628
24 months   MAL-ED      INDIA        0                    NA                0.1295532   0.0619026   0.1972038
24 months   PROVIDE     BANGLADESH   1                    NA                0.0986201   0.0695769   0.1276634
24 months   PROVIDE     BANGLADESH   0                    NA                0.1272853   0.0764607   0.1781098


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        NA                   NA                0.1895735   0.1521320   0.2270149
Birth       JiVitA-3    BANGLADESH   NA                   NA                0.1107768   0.1043978   0.1171557
Birth       Keneba      GAMBIA       NA                   NA                0.2511700   0.2274208   0.2749193
Birth       MAL-ED      BANGLADESH   NA                   NA                0.1633663   0.1122571   0.2144755
Birth       PROVIDE     BANGLADESH   NA                   NA                0.2199248   0.1846953   0.2551543
6 months    GMS-Nepal   NEPAL        NA                   NA                0.0997732   0.0717702   0.1277763
6 months    JiVitA-3    BANGLADESH   NA                   NA                0.0868958   0.0805887   0.0932029
6 months    Keneba      GAMBIA       NA                   NA                0.0608496   0.0496205   0.0720787
6 months    MAL-ED      INDIA        NA                   NA                0.0809524   0.0439731   0.1179317
6 months    PROVIDE     BANGLADESH   NA                   NA                0.0414594   0.0255348   0.0573839
24 months   GMS-Nepal   NEPAL        NA                   NA                0.1901042   0.1508072   0.2294011
24 months   JiVitA-3    BANGLADESH   NA                   NA                0.2187047   0.2046312   0.2327783
24 months   Keneba      GAMBIA       NA                   NA                0.1034483   0.0876083   0.1192882
24 months   MAL-ED      INDIA        NA                   NA                0.1188119   0.0740803   0.1635435
24 months   PROVIDE     BANGLADESH   NA                   NA                0.1070812   0.0818727   0.1322897


### Parameter: RR


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal   NEPAL        0                    1                 0.7605574   0.4242080   1.363594
Birth       JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3    BANGLADESH   0                    1                 0.9167826   0.7649099   1.098809
Birth       Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       Keneba      GAMBIA       0                    1                 1.2278735   0.9395314   1.604708
Birth       MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       MAL-ED      BANGLADESH   0                    1                 1.0435478   0.5346788   2.036722
Birth       PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       PROVIDE     BANGLADESH   0                    1                 1.0985837   0.7814565   1.544406
6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal   NEPAL        0                    1                 0.9382761   0.4348109   2.024701
6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3    BANGLADESH   0                    1                 0.8941174   0.6760463   1.182531
6 months    Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    Keneba      GAMBIA       0                    1                 2.1711450   1.4013036   3.363918
6 months    MAL-ED      INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    MAL-ED      INDIA        0                    1                 2.6400000   0.9616175   7.247788
6 months    PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    PROVIDE     BANGLADESH   0                    1                 2.4658970   1.1047789   5.503950
24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal   NEPAL        0                    1                 0.7303427   0.3837740   1.389882
24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3    BANGLADESH   0                    1                 1.0463503   0.8171199   1.339888
24 months   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   Keneba      GAMBIA       0                    1                 1.2816292   0.7990918   2.055550
24 months   MAL-ED      INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED      INDIA        0                    1                 1.1644675   0.5381699   2.519621
24 months   PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   PROVIDE     BANGLADESH   0                    1                 1.2906620   0.7858107   2.119860


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0095474   -0.0249878   0.0058929
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0008751   -0.0026571   0.0009070
Birth       Keneba      GAMBIA       1                    NA                 0.0070578   -0.0020023   0.0161180
Birth       MAL-ED      BANGLADESH   1                    NA                 0.0031241   -0.0356640   0.0419123
Birth       PROVIDE     BANGLADESH   1                    NA                 0.0058616   -0.0162752   0.0279984
6 months    GMS-Nepal   NEPAL        1                    NA                -0.0010442   -0.0133851   0.0112967
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0008093   -0.0027264   0.0011079
6 months    Keneba      GAMBIA       1                    NA                 0.0077142    0.0023247   0.0131036
6 months    MAL-ED      INDIA        1                    NA                 0.0354978   -0.0004879   0.0714835
6 months    PROVIDE     BANGLADESH   1                    NA                 0.0135552    0.0012255   0.0258849
24 months   GMS-Nepal   NEPAL        1                    NA                -0.0086536   -0.0246070   0.0072998
24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0007299   -0.0040579   0.0055177
24 months   Keneba      GAMBIA       1                    NA                 0.0027604   -0.0031320   0.0086527
24 months   MAL-ED      INDIA        1                    NA                 0.0075566   -0.0392047   0.0543178
24 months   PROVIDE     BANGLADESH   1                    NA                 0.0084610   -0.0087962   0.0257183


### Parameter: PAF


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0503627   -0.1347537   0.0277521
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0078995   -0.0240843   0.0080295
Birth       Keneba      GAMBIA       1                    NA                 0.0280998   -0.0085806   0.0634463
Birth       MAL-ED      BANGLADESH   1                    NA                 0.0191236   -0.2495515   0.2300289
Birth       PROVIDE     BANGLADESH   1                    NA                 0.0266527   -0.0793621   0.1222548
6 months    GMS-Nepal   NEPAL        1                    NA                -0.0104657   -0.1420133   0.1059291
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0093129   -0.0315908   0.0124839
6 months    Keneba      GAMBIA       1                    NA                 0.1267747    0.0364776   0.2086096
6 months    MAL-ED      INDIA        1                    NA                 0.4385027   -0.1484993   0.7254859
6 months    PROVIDE     BANGLADESH   1                    NA                 0.3269525   -0.0082037   0.5506930
24 months   GMS-Nepal   NEPAL        1                    NA                -0.0455203   -0.1326078   0.0348709
24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0033375   -0.0187692   0.0249645
24 months   Keneba      GAMBIA       1                    NA                 0.0266838   -0.0318489   0.0818961
24 months   MAL-ED      INDIA        1                    NA                 0.0636011   -0.4248112   0.3845902
24 months   PROVIDE     BANGLADESH   1                    NA                 0.0790152   -0.0960961   0.2261509
