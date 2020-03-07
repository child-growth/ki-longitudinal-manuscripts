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

agecat      studyid          country                        exclfeed3    sstunted   n_cell       n
----------  ---------------  -----------------------------  ----------  ---------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                   0        4       4
Birth       CMC-V-BCS-2002   INDIA                          1                   1        0       4
Birth       CMC-V-BCS-2002   INDIA                          0                   0        0       4
Birth       CMC-V-BCS-2002   INDIA                          0                   1        0       4
Birth       EE               PAKISTAN                       1                   0       28      35
Birth       EE               PAKISTAN                       1                   1        7      35
Birth       EE               PAKISTAN                       0                   0        0      35
Birth       EE               PAKISTAN                       0                   1        0      35
Birth       GMS-Nepal        NEPAL                          1                   0      367     458
Birth       GMS-Nepal        NEPAL                          1                   1       13     458
Birth       GMS-Nepal        NEPAL                          0                   0       73     458
Birth       GMS-Nepal        NEPAL                          0                   1        5     458
Birth       IRC              INDIA                          1                   0        0      10
Birth       IRC              INDIA                          1                   1        0      10
Birth       IRC              INDIA                          0                   0       10      10
Birth       IRC              INDIA                          0                   1        0      10
Birth       JiVitA-3         BANGLADESH                     1                   0    10706   13276
Birth       JiVitA-3         BANGLADESH                     1                   1     1308   13276
Birth       JiVitA-3         BANGLADESH                     0                   0     1118   13276
Birth       JiVitA-3         BANGLADESH                     0                   1      144   13276
Birth       JiVitA-4         BANGLADESH                     1                   0       97     116
Birth       JiVitA-4         BANGLADESH                     1                   1        8     116
Birth       JiVitA-4         BANGLADESH                     0                   0        9     116
Birth       JiVitA-4         BANGLADESH                     0                   1        2     116
Birth       Keneba           GAMBIA                         1                   0     1171    1356
Birth       Keneba           GAMBIA                         1                   1       27    1356
Birth       Keneba           GAMBIA                         0                   0      156    1356
Birth       Keneba           GAMBIA                         0                   1        2    1356
Birth       MAL-ED           BANGLADESH                     1                   0      135     215
Birth       MAL-ED           BANGLADESH                     1                   1        3     215
Birth       MAL-ED           BANGLADESH                     0                   0       73     215
Birth       MAL-ED           BANGLADESH                     0                   1        4     215
Birth       MAL-ED           BRAZIL                         1                   0       11      57
Birth       MAL-ED           BRAZIL                         1                   1        1      57
Birth       MAL-ED           BRAZIL                         0                   0       44      57
Birth       MAL-ED           BRAZIL                         0                   1        1      57
Birth       MAL-ED           INDIA                          1                   0       22      41
Birth       MAL-ED           INDIA                          1                   1        2      41
Birth       MAL-ED           INDIA                          0                   0       17      41
Birth       MAL-ED           INDIA                          0                   1        0      41
Birth       MAL-ED           NEPAL                          1                   0        8      26
Birth       MAL-ED           NEPAL                          1                   1        0      26
Birth       MAL-ED           NEPAL                          0                   0       17      26
Birth       MAL-ED           NEPAL                          0                   1        1      26
Birth       MAL-ED           PERU                           1                   0       47     223
Birth       MAL-ED           PERU                           1                   1        2     223
Birth       MAL-ED           PERU                           0                   0      173     223
Birth       MAL-ED           PERU                           0                   1        1     223
Birth       MAL-ED           SOUTH AFRICA                   1                   0       12     100
Birth       MAL-ED           SOUTH AFRICA                   1                   1        0     100
Birth       MAL-ED           SOUTH AFRICA                   0                   0       87     100
Birth       MAL-ED           SOUTH AFRICA                   0                   1        1     100
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0       15     102
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        2     102
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0       80     102
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        5     102
Birth       PROVIDE          BANGLADESH                     1                   0      385     539
Birth       PROVIDE          BANGLADESH                     1                   1        2     539
Birth       PROVIDE          BANGLADESH                     0                   0      150     539
Birth       PROVIDE          BANGLADESH                     0                   1        2     539
Birth       SAS-CompFeed     INDIA                          1                   0      323     364
Birth       SAS-CompFeed     INDIA                          1                   1       23     364
Birth       SAS-CompFeed     INDIA                          0                   0       15     364
Birth       SAS-CompFeed     INDIA                          0                   1        3     364
6 months    CMC-V-BCS-2002   INDIA                          1                   0       10      10
6 months    CMC-V-BCS-2002   INDIA                          1                   1        0      10
6 months    CMC-V-BCS-2002   INDIA                          0                   0        0      10
6 months    CMC-V-BCS-2002   INDIA                          0                   1        0      10
6 months    EE               PAKISTAN                       1                   0       28      39
6 months    EE               PAKISTAN                       1                   1       11      39
6 months    EE               PAKISTAN                       0                   0        0      39
6 months    EE               PAKISTAN                       0                   1        0      39
6 months    GMS-Nepal        NEPAL                          1                   0      356     441
6 months    GMS-Nepal        NEPAL                          1                   1       11     441
6 months    GMS-Nepal        NEPAL                          0                   0       69     441
6 months    GMS-Nepal        NEPAL                          0                   1        5     441
6 months    IRC              INDIA                          1                   0        0      10
6 months    IRC              INDIA                          1                   1        0      10
6 months    IRC              INDIA                          0                   0        9      10
6 months    IRC              INDIA                          0                   1        1      10
6 months    JiVitA-3         BANGLADESH                     1                   0     7996    9328
6 months    JiVitA-3         BANGLADESH                     1                   1      518    9328
6 months    JiVitA-3         BANGLADESH                     0                   0      758    9328
6 months    JiVitA-3         BANGLADESH                     0                   1       56    9328
6 months    JiVitA-4         BANGLADESH                     1                   0       76      88
6 months    JiVitA-4         BANGLADESH                     1                   1        0      88
6 months    JiVitA-4         BANGLADESH                     0                   0       11      88
6 months    JiVitA-4         BANGLADESH                     0                   1        1      88
6 months    Keneba           GAMBIA                         1                   0     1495    1742
6 months    Keneba           GAMBIA                         1                   1       46    1742
6 months    Keneba           GAMBIA                         0                   0      191    1742
6 months    Keneba           GAMBIA                         0                   1       10    1742
6 months    MAL-ED           BANGLADESH                     1                   0      149     233
6 months    MAL-ED           BANGLADESH                     1                   1        3     233
6 months    MAL-ED           BANGLADESH                     0                   0       76     233
6 months    MAL-ED           BANGLADESH                     0                   1        5     233
6 months    MAL-ED           BRAZIL                         1                   0       60     187
6 months    MAL-ED           BRAZIL                         1                   1        0     187
6 months    MAL-ED           BRAZIL                         0                   0      127     187
6 months    MAL-ED           BRAZIL                         0                   1        0     187
6 months    MAL-ED           INDIA                          1                   0      107     210
6 months    MAL-ED           INDIA                          1                   1        3     210
6 months    MAL-ED           INDIA                          0                   0       94     210
6 months    MAL-ED           INDIA                          0                   1        6     210
6 months    MAL-ED           NEPAL                          1                   0       69     227
6 months    MAL-ED           NEPAL                          1                   1        1     227
6 months    MAL-ED           NEPAL                          0                   0      157     227
6 months    MAL-ED           NEPAL                          0                   1        0     227
6 months    MAL-ED           PERU                           1                   0       58     270
6 months    MAL-ED           PERU                           1                   1        3     270
6 months    MAL-ED           PERU                           0                   0      203     270
6 months    MAL-ED           PERU                           0                   1        6     270
6 months    MAL-ED           SOUTH AFRICA                   1                   0       22     244
6 months    MAL-ED           SOUTH AFRICA                   1                   1        0     244
6 months    MAL-ED           SOUTH AFRICA                   0                   0      216     244
6 months    MAL-ED           SOUTH AFRICA                   0                   1        6     244
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0       43     212
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        3     212
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      158     212
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        8     212
6 months    PROVIDE          BANGLADESH                     1                   0      422     604
6 months    PROVIDE          BANGLADESH                     1                   1        6     604
6 months    PROVIDE          BANGLADESH                     0                   0      168     604
6 months    PROVIDE          BANGLADESH                     0                   1        8     604
6 months    SAS-CompFeed     INDIA                          1                   0      342     398
6 months    SAS-CompFeed     INDIA                          1                   1       37     398
6 months    SAS-CompFeed     INDIA                          0                   0       16     398
6 months    SAS-CompFeed     INDIA                          0                   1        3     398
24 months   CMC-V-BCS-2002   INDIA                          1                   0        8      10
24 months   CMC-V-BCS-2002   INDIA                          1                   1        2      10
24 months   CMC-V-BCS-2002   INDIA                          0                   0        0      10
24 months   CMC-V-BCS-2002   INDIA                          0                   1        0      10
24 months   EE               PAKISTAN                       1                   0       12      20
24 months   EE               PAKISTAN                       1                   1        8      20
24 months   EE               PAKISTAN                       0                   0        0      20
24 months   EE               PAKISTAN                       0                   1        0      20
24 months   GMS-Nepal        NEPAL                          1                   0      289     384
24 months   GMS-Nepal        NEPAL                          1                   1       33     384
24 months   GMS-Nepal        NEPAL                          0                   0       56     384
24 months   GMS-Nepal        NEPAL                          0                   1        6     384
24 months   IRC              INDIA                          1                   0        0      10
24 months   IRC              INDIA                          1                   1        0      10
24 months   IRC              INDIA                          0                   0       10      10
24 months   IRC              INDIA                          0                   1        0      10
24 months   JiVitA-3         BANGLADESH                     1                   0     3764    4852
24 months   JiVitA-3         BANGLADESH                     1                   1      669    4852
24 months   JiVitA-3         BANGLADESH                     0                   0      345    4852
24 months   JiVitA-3         BANGLADESH                     0                   1       74    4852
24 months   JiVitA-4         BANGLADESH                     1                   0      130     151
24 months   JiVitA-4         BANGLADESH                     1                   1        6     151
24 months   JiVitA-4         BANGLADESH                     0                   0       13     151
24 months   JiVitA-4         BANGLADESH                     0                   1        2     151
24 months   Keneba           GAMBIA                         1                   0     1170    1420
24 months   Keneba           GAMBIA                         1                   1      104    1420
24 months   Keneba           GAMBIA                         0                   0      129    1420
24 months   Keneba           GAMBIA                         0                   1       17    1420
24 months   MAL-ED           BANGLADESH                     1                   0      117     205
24 months   MAL-ED           BANGLADESH                     1                   1       18     205
24 months   MAL-ED           BANGLADESH                     0                   0       60     205
24 months   MAL-ED           BANGLADESH                     0                   1       10     205
24 months   MAL-ED           BRAZIL                         1                   0       51     152
24 months   MAL-ED           BRAZIL                         1                   1        1     152
24 months   MAL-ED           BRAZIL                         0                   0      100     152
24 months   MAL-ED           BRAZIL                         0                   1        0     152
24 months   MAL-ED           INDIA                          1                   0       84     202
24 months   MAL-ED           INDIA                          1                   1       18     202
24 months   MAL-ED           INDIA                          0                   0       89     202
24 months   MAL-ED           INDIA                          0                   1       11     202
24 months   MAL-ED           NEPAL                          1                   0       65     220
24 months   MAL-ED           NEPAL                          1                   1        2     220
24 months   MAL-ED           NEPAL                          0                   0      149     220
24 months   MAL-ED           NEPAL                          0                   1        4     220
24 months   MAL-ED           PERU                           1                   0       39     198
24 months   MAL-ED           PERU                           1                   1        4     198
24 months   MAL-ED           PERU                           0                   0      145     198
24 months   MAL-ED           PERU                           0                   1       10     198
24 months   MAL-ED           SOUTH AFRICA                   1                   0       18     228
24 months   MAL-ED           SOUTH AFRICA                   1                   1        1     228
24 months   MAL-ED           SOUTH AFRICA                   0                   0      184     228
24 months   MAL-ED           SOUTH AFRICA                   0                   1       25     228
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0       26     184
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1       12     184
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0       94     184
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       52     184
24 months   PROVIDE          BANGLADESH                     1                   0      372     578
24 months   PROVIDE          BANGLADESH                     1                   1       36     578
24 months   PROVIDE          BANGLADESH                     0                   0      154     578
24 months   PROVIDE          BANGLADESH                     0                   1       16     578


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
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA

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




# Results Detail

## Results Plots
![](/tmp/9631feea-2f64-4cea-be29-00b90f38a948/08feca45-7422-43bb-9a55-6fdde9e87904/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9631feea-2f64-4cea-be29-00b90f38a948/08feca45-7422-43bb-9a55-6fdde9e87904/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9631feea-2f64-4cea-be29-00b90f38a948/08feca45-7422-43bb-9a55-6fdde9e87904/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9631feea-2f64-4cea-be29-00b90f38a948/08feca45-7422-43bb-9a55-6fdde9e87904/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL                          1                    NA                0.0342105   0.0159147   0.0525064
Birth       GMS-Nepal   NEPAL                          0                    NA                0.0641026   0.0096865   0.1185186
Birth       JiVitA-3    BANGLADESH                     1                    NA                0.1093897   0.1035809   0.1151985
Birth       JiVitA-3    BANGLADESH                     0                    NA                0.1096993   0.1015746   0.1178240
6 months    GMS-Nepal   NEPAL                          1                    NA                0.0299728   0.0125080   0.0474375
6 months    GMS-Nepal   NEPAL                          0                    NA                0.0675676   0.0103139   0.1248212
6 months    JiVitA-3    BANGLADESH                     1                    NA                0.0609487   0.0554049   0.0664924
6 months    JiVitA-3    BANGLADESH                     0                    NA                0.0681541   0.0487345   0.0875737
6 months    Keneba      GAMBIA                         1                    NA                0.0298600   0.0213559   0.0383641
6 months    Keneba      GAMBIA                         0                    NA                0.0462581   0.0160378   0.0764785
6 months    PROVIDE     BANGLADESH                     1                    NA                0.0140187   0.0028713   0.0251661
6 months    PROVIDE     BANGLADESH                     0                    NA                0.0454545   0.0146554   0.0762537
24 months   GMS-Nepal   NEPAL                          1                    NA                0.1024845   0.0693152   0.1356538
24 months   GMS-Nepal   NEPAL                          0                    NA                0.0967742   0.0230863   0.1704621
24 months   JiVitA-3    BANGLADESH                     1                    NA                0.1511639   0.1388327   0.1634950
24 months   JiVitA-3    BANGLADESH                     0                    NA                0.1750446   0.1244723   0.2256170
24 months   Keneba      GAMBIA                         1                    NA                0.0815766   0.0665338   0.0966193
24 months   Keneba      GAMBIA                         0                    NA                0.1046010   0.0522500   0.1569521
24 months   MAL-ED      BANGLADESH                     1                    NA                0.1350780   0.0775623   0.1925938
24 months   MAL-ED      BANGLADESH                     0                    NA                0.1389768   0.0568304   0.2211231
24 months   MAL-ED      INDIA                          1                    NA                0.1783487   0.1018761   0.2548213
24 months   MAL-ED      INDIA                          0                    NA                0.1174127   0.0514402   0.1833852
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3294163   0.1784397   0.4803929
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3570835   0.2790078   0.4351592
24 months   PROVIDE     BANGLADESH                     1                    NA                0.0884487   0.0608042   0.1160932
24 months   PROVIDE     BANGLADESH                     0                    NA                0.0922258   0.0481456   0.1363061


### Parameter: E(Y)


agecat      studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL                          NA                   NA                0.0393013   0.0214863   0.0571164
Birth       JiVitA-3    BANGLADESH                     NA                   NA                0.1093703   0.1036242   0.1151164
6 months    GMS-Nepal   NEPAL                          NA                   NA                0.0362812   0.0188094   0.0537530
6 months    JiVitA-3    BANGLADESH                     NA                   NA                0.0615352   0.0561307   0.0669396
6 months    Keneba      GAMBIA                         NA                   NA                0.0321470   0.0238614   0.0404325
6 months    PROVIDE     BANGLADESH                     NA                   NA                0.0231788   0.0111688   0.0351888
24 months   GMS-Nepal   NEPAL                          NA                   NA                0.1015625   0.0713101   0.1318149
24 months   JiVitA-3    BANGLADESH                     NA                   NA                0.1531327   0.1409934   0.1652721
24 months   Keneba      GAMBIA                         NA                   NA                0.0852113   0.0706846   0.0997379
24 months   MAL-ED      BANGLADESH                     NA                   NA                0.1365854   0.0894611   0.1837097
24 months   MAL-ED      INDIA                          NA                   NA                0.1435644   0.0950890   0.1920397
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3478261   0.2788203   0.4168318
24 months   PROVIDE     BANGLADESH                     NA                   NA                0.0899654   0.0666186   0.1133122


### Parameter: RR


agecat      studyid     country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal   NEPAL                          0                    1                 1.8737673   0.6870436   5.110307
Birth       JiVitA-3    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3    BANGLADESH                     0                    1                 1.0028297   0.9445791   1.064672
6 months    GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal   NEPAL                          0                    1                 2.2542998   0.8061176   6.304126
6 months    JiVitA-3    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3    BANGLADESH                     0                    1                 1.1182217   0.8321386   1.502658
6 months    Keneba      GAMBIA                         1                    1                 1.0000000   1.0000000   1.000000
6 months    Keneba      GAMBIA                         0                    1                 1.5491674   0.7599803   3.157871
6 months    PROVIDE     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6 months    PROVIDE     BANGLADESH                     0                    1                 3.2424242   1.1406585   9.216883
24 months   GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal   NEPAL                          0                    1                 0.9442815   0.4128367   2.159855
24 months   JiVitA-3    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3    BANGLADESH                     0                    1                 1.1579794   0.8588047   1.561375
24 months   Keneba      GAMBIA                         1                    1                 1.0000000   1.0000000   1.000000
24 months   Keneba      GAMBIA                         0                    1                 1.2822440   0.7523680   2.185300
24 months   MAL-ED      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED      BANGLADESH                     0                    1                 1.0288629   0.5022144   2.107783
24 months   MAL-ED      INDIA                          1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED      INDIA                          0                    1                 0.6583322   0.3227179   1.342973
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0839886   0.6513350   1.804035
24 months   PROVIDE     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
24 months   PROVIDE     BANGLADESH                     0                    1                 1.0427044   0.5887209   1.846771


### Parameter: PAR


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL                          1                    NA                 0.0050908   -0.0047405   0.0149221
Birth       JiVitA-3    BANGLADESH                     1                    NA                -0.0000194   -0.0006524   0.0006135
6 months    GMS-Nepal   NEPAL                          1                    NA                 0.0063084   -0.0038212   0.0164381
6 months    JiVitA-3    BANGLADESH                     1                    NA                 0.0005865   -0.0011549   0.0023279
6 months    Keneba      GAMBIA                         1                    NA                 0.0022870   -0.0013143   0.0058882
6 months    PROVIDE     BANGLADESH                     1                    NA                 0.0091601   -0.0004521   0.0187723
24 months   GMS-Nepal   NEPAL                          1                    NA                -0.0009220   -0.0139710   0.0121270
24 months   JiVitA-3    BANGLADESH                     1                    NA                 0.0019689   -0.0024416   0.0063793
24 months   Keneba      GAMBIA                         1                    NA                 0.0036347   -0.0019528   0.0092223
24 months   MAL-ED      BANGLADESH                     1                    NA                 0.0015073   -0.0319295   0.0349442
24 months   MAL-ED      INDIA                          1                    NA                -0.0347843   -0.0867954   0.0172267
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0184098   -0.1172777   0.1540972
24 months   PROVIDE     BANGLADESH                     1                    NA                 0.0015167   -0.0137951   0.0168285


### Parameter: PAF


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL                          1                    NA                 0.1295322   -0.1516576   0.3420664
Birth       JiVitA-3    BANGLADESH                     1                    NA                -0.0001776   -0.0059814   0.0055926
6 months    GMS-Nepal   NEPAL                          1                    NA                 0.1738760   -0.1415465   0.4021437
6 months    JiVitA-3    BANGLADESH                     1                    NA                 0.0095310   -0.0191204   0.0373769
6 months    Keneba      GAMBIA                         1                    NA                 0.0711405   -0.0463785   0.1754610
6 months    PROVIDE     BANGLADESH                     1                    NA                 0.3951936   -0.1009314   0.6677442
24 months   GMS-Nepal   NEPAL                          1                    NA                -0.0090779   -0.1460736   0.1115420
24 months   JiVitA-3    BANGLADESH                     1                    NA                 0.0128573   -0.0162423   0.0411236
24 months   Keneba      GAMBIA                         1                    NA                 0.0426554   -0.0248806   0.1057410
24 months   MAL-ED      BANGLADESH                     1                    NA                 0.0110359   -0.2667224   0.2278892
24 months   MAL-ED      INDIA                          1                    NA                -0.2422910   -0.6580566   0.0692194
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0529281   -0.4296751   0.3726231
24 months   PROVIDE     BANGLADESH                     1                    NA                 0.0168589   -0.1689133   0.1731069
