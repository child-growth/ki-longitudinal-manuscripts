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

**Intervention Variable:** exclfeed36

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

agecat      studyid          country                        exclfeed36    swasted   n_cell      n
----------  ---------------  -----------------------------  -----------  --------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          1                   0        3      3
Birth       CMC-V-BCS-2002   INDIA                          1                   1        0      3
Birth       CMC-V-BCS-2002   INDIA                          0                   0        0      3
Birth       CMC-V-BCS-2002   INDIA                          0                   1        0      3
Birth       EE               PAKISTAN                       1                   0        2      6
Birth       EE               PAKISTAN                       1                   1        0      6
Birth       EE               PAKISTAN                       0                   0        3      6
Birth       EE               PAKISTAN                       0                   1        1      6
Birth       GMS-Nepal        NEPAL                          1                   0      378    491
Birth       GMS-Nepal        NEPAL                          1                   1       18    491
Birth       GMS-Nepal        NEPAL                          0                   0       92    491
Birth       GMS-Nepal        NEPAL                          0                   1        3    491
Birth       IRC              INDIA                          1                   0        0      3
Birth       IRC              INDIA                          1                   1        0      3
Birth       IRC              INDIA                          0                   0        3      3
Birth       IRC              INDIA                          0                   1        0      3
Birth       JiVitA-3         BANGLADESH                     1                   0     6593   8619
Birth       JiVitA-3         BANGLADESH                     1                   1      143   8619
Birth       JiVitA-3         BANGLADESH                     0                   0     1854   8619
Birth       JiVitA-3         BANGLADESH                     0                   1       29   8619
Birth       JiVitA-4         BANGLADESH                     1                   0     1692   2128
Birth       JiVitA-4         BANGLADESH                     1                   1       19   2128
Birth       JiVitA-4         BANGLADESH                     0                   0      407   2128
Birth       JiVitA-4         BANGLADESH                     0                   1       10   2128
Birth       Keneba           GAMBIA                         1                   0      312   1192
Birth       Keneba           GAMBIA                         1                   1       31   1192
Birth       Keneba           GAMBIA                         0                   0      793   1192
Birth       Keneba           GAMBIA                         0                   1       56   1192
Birth       MAL-ED           BANGLADESH                     1                   0       31    208
Birth       MAL-ED           BANGLADESH                     1                   1        0    208
Birth       MAL-ED           BANGLADESH                     0                   0      169    208
Birth       MAL-ED           BANGLADESH                     0                   1        8    208
Birth       MAL-ED           BRAZIL                         1                   0        4     62
Birth       MAL-ED           BRAZIL                         1                   1        0     62
Birth       MAL-ED           BRAZIL                         0                   0       58     62
Birth       MAL-ED           BRAZIL                         0                   1        0     62
Birth       MAL-ED           INDIA                          1                   0        1     40
Birth       MAL-ED           INDIA                          1                   1        0     40
Birth       MAL-ED           INDIA                          0                   0       39     40
Birth       MAL-ED           INDIA                          0                   1        0     40
Birth       MAL-ED           NEPAL                          1                   0        0     25
Birth       MAL-ED           NEPAL                          1                   1        0     25
Birth       MAL-ED           NEPAL                          0                   0       24     25
Birth       MAL-ED           NEPAL                          0                   1        1     25
Birth       MAL-ED           PERU                           1                   0        5    218
Birth       MAL-ED           PERU                           1                   1        0    218
Birth       MAL-ED           PERU                           0                   0      213    218
Birth       MAL-ED           PERU                           0                   1        0    218
Birth       MAL-ED           SOUTH AFRICA                   1                   0        1    104
Birth       MAL-ED           SOUTH AFRICA                   1                   1        0    104
Birth       MAL-ED           SOUTH AFRICA                   0                   0      103    104
Birth       MAL-ED           SOUTH AFRICA                   0                   1        0    104
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        0    111
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0    111
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      111    111
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        0    111
Birth       PROVIDE          BANGLADESH                     1                   0      113    483
Birth       PROVIDE          BANGLADESH                     1                   1        2    483
Birth       PROVIDE          BANGLADESH                     0                   0      358    483
Birth       PROVIDE          BANGLADESH                     0                   1       10    483
6 months    CMC-V-BCS-2002   INDIA                          1                   0        9      9
6 months    CMC-V-BCS-2002   INDIA                          1                   1        0      9
6 months    CMC-V-BCS-2002   INDIA                          0                   0        0      9
6 months    CMC-V-BCS-2002   INDIA                          0                   1        0      9
6 months    EE               PAKISTAN                       1                   0        4      9
6 months    EE               PAKISTAN                       1                   1        0      9
6 months    EE               PAKISTAN                       0                   0        5      9
6 months    EE               PAKISTAN                       0                   1        0      9
6 months    GMS-Nepal        NEPAL                          1                   0      416    527
6 months    GMS-Nepal        NEPAL                          1                   1        6    527
6 months    GMS-Nepal        NEPAL                          0                   0      105    527
6 months    GMS-Nepal        NEPAL                          0                   1        0    527
6 months    IRC              INDIA                          1                   0        0      4
6 months    IRC              INDIA                          1                   1        0      4
6 months    IRC              INDIA                          0                   0        4      4
6 months    IRC              INDIA                          0                   1        0      4
6 months    JiVitA-3         BANGLADESH                     1                   0     6462   8535
6 months    JiVitA-3         BANGLADESH                     1                   1       99   8535
6 months    JiVitA-3         BANGLADESH                     0                   0     1951   8535
6 months    JiVitA-3         BANGLADESH                     0                   1       23   8535
6 months    JiVitA-4         BANGLADESH                     1                   0     3221   4188
6 months    JiVitA-4         BANGLADESH                     1                   1       19   4188
6 months    JiVitA-4         BANGLADESH                     0                   0      937   4188
6 months    JiVitA-4         BANGLADESH                     0                   1       11   4188
6 months    Keneba           GAMBIA                         1                   0      498   1790
6 months    Keneba           GAMBIA                         1                   1        9   1790
6 months    Keneba           GAMBIA                         0                   0     1261   1790
6 months    Keneba           GAMBIA                         0                   1       22   1790
6 months    LCNI-5           MALAWI                         1                   0       47    272
6 months    LCNI-5           MALAWI                         1                   1        0    272
6 months    LCNI-5           MALAWI                         0                   0      225    272
6 months    LCNI-5           MALAWI                         0                   1        0    272
6 months    MAL-ED           BANGLADESH                     1                   0       30    240
6 months    MAL-ED           BANGLADESH                     1                   1        0    240
6 months    MAL-ED           BANGLADESH                     0                   0      208    240
6 months    MAL-ED           BANGLADESH                     0                   1        2    240
6 months    MAL-ED           BRAZIL                         1                   0       12    209
6 months    MAL-ED           BRAZIL                         1                   1        0    209
6 months    MAL-ED           BRAZIL                         0                   0      197    209
6 months    MAL-ED           BRAZIL                         0                   1        0    209
6 months    MAL-ED           INDIA                          1                   0        9    233
6 months    MAL-ED           INDIA                          1                   1        0    233
6 months    MAL-ED           INDIA                          0                   0      218    233
6 months    MAL-ED           INDIA                          0                   1        6    233
6 months    MAL-ED           NEPAL                          1                   0        4    235
6 months    MAL-ED           NEPAL                          1                   1        0    235
6 months    MAL-ED           NEPAL                          0                   0      231    235
6 months    MAL-ED           NEPAL                          0                   1        0    235
6 months    MAL-ED           PERU                           1                   0        6    272
6 months    MAL-ED           PERU                           1                   1        0    272
6 months    MAL-ED           PERU                           0                   0      266    272
6 months    MAL-ED           PERU                           0                   1        0    272
6 months    MAL-ED           SOUTH AFRICA                   1                   0        1    250
6 months    MAL-ED           SOUTH AFRICA                   1                   1        0    250
6 months    MAL-ED           SOUTH AFRICA                   0                   0      246    250
6 months    MAL-ED           SOUTH AFRICA                   0                   1        3    250
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        4    243
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0    243
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      239    243
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        0    243
6 months    PROVIDE          BANGLADESH                     1                   0      145    603
6 months    PROVIDE          BANGLADESH                     1                   1        0    603
6 months    PROVIDE          BANGLADESH                     0                   0      453    603
6 months    PROVIDE          BANGLADESH                     0                   1        5    603
6 months    SAS-FoodSuppl    INDIA                          1                   0        0    168
6 months    SAS-FoodSuppl    INDIA                          1                   1        0    168
6 months    SAS-FoodSuppl    INDIA                          0                   0      156    168
6 months    SAS-FoodSuppl    INDIA                          0                   1       12    168
24 months   CMC-V-BCS-2002   INDIA                          1                   0        9      9
24 months   CMC-V-BCS-2002   INDIA                          1                   1        0      9
24 months   CMC-V-BCS-2002   INDIA                          0                   0        0      9
24 months   CMC-V-BCS-2002   INDIA                          0                   1        0      9
24 months   EE               PAKISTAN                       1                   0        0      3
24 months   EE               PAKISTAN                       1                   1        0      3
24 months   EE               PAKISTAN                       0                   0        3      3
24 months   EE               PAKISTAN                       0                   1        0      3
24 months   GMS-Nepal        NEPAL                          1                   0      355    445
24 months   GMS-Nepal        NEPAL                          1                   1        7    445
24 months   GMS-Nepal        NEPAL                          0                   0       76    445
24 months   GMS-Nepal        NEPAL                          0                   1        7    445
24 months   IRC              INDIA                          1                   0        0      4
24 months   IRC              INDIA                          1                   1        0      4
24 months   IRC              INDIA                          0                   0        4      4
24 months   IRC              INDIA                          0                   1        0      4
24 months   JiVitA-3         BANGLADESH                     1                   0     3164   4317
24 months   JiVitA-3         BANGLADESH                     1                   1      147   4317
24 months   JiVitA-3         BANGLADESH                     0                   0      975   4317
24 months   JiVitA-3         BANGLADESH                     0                   1       31   4317
24 months   JiVitA-4         BANGLADESH                     1                   0     3056   4035
24 months   JiVitA-4         BANGLADESH                     1                   1       76   4035
24 months   JiVitA-4         BANGLADESH                     0                   0      878   4035
24 months   JiVitA-4         BANGLADESH                     0                   1       25   4035
24 months   Keneba           GAMBIA                         1                   0      418   1395
24 months   Keneba           GAMBIA                         1                   1        6   1395
24 months   Keneba           GAMBIA                         0                   0      950   1395
24 months   Keneba           GAMBIA                         0                   1       21   1395
24 months   LCNI-5           MALAWI                         1                   0       34    184
24 months   LCNI-5           MALAWI                         1                   1        0    184
24 months   LCNI-5           MALAWI                         0                   0      150    184
24 months   LCNI-5           MALAWI                         0                   1        0    184
24 months   MAL-ED           BANGLADESH                     1                   0       25    212
24 months   MAL-ED           BANGLADESH                     1                   1        0    212
24 months   MAL-ED           BANGLADESH                     0                   0      187    212
24 months   MAL-ED           BANGLADESH                     0                   1        0    212
24 months   MAL-ED           BRAZIL                         1                   0       11    169
24 months   MAL-ED           BRAZIL                         1                   1        0    169
24 months   MAL-ED           BRAZIL                         0                   0      157    169
24 months   MAL-ED           BRAZIL                         0                   1        1    169
24 months   MAL-ED           INDIA                          1                   0        9    224
24 months   MAL-ED           INDIA                          1                   1        0    224
24 months   MAL-ED           INDIA                          0                   0      213    224
24 months   MAL-ED           INDIA                          0                   1        2    224
24 months   MAL-ED           NEPAL                          1                   0        4    227
24 months   MAL-ED           NEPAL                          1                   1        0    227
24 months   MAL-ED           NEPAL                          0                   0      223    227
24 months   MAL-ED           NEPAL                          0                   1        0    227
24 months   MAL-ED           PERU                           1                   0        4    201
24 months   MAL-ED           PERU                           1                   1        0    201
24 months   MAL-ED           PERU                           0                   0      195    201
24 months   MAL-ED           PERU                           0                   1        2    201
24 months   MAL-ED           SOUTH AFRICA                   1                   0        1    235
24 months   MAL-ED           SOUTH AFRICA                   1                   1        0    235
24 months   MAL-ED           SOUTH AFRICA                   0                   0      234    235
24 months   MAL-ED           SOUTH AFRICA                   0                   1        0    235
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        3    213
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0    213
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      210    213
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        0    213
24 months   PROVIDE          BANGLADESH                     1                   0      139    577
24 months   PROVIDE          BANGLADESH                     1                   1        2    577
24 months   PROVIDE          BANGLADESH                     0                   0      429    577
24 months   PROVIDE          BANGLADESH                     0                   1        7    577


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
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




# Results Detail

## Results Plots
![](/tmp/c0a0f6bc-0fbe-4c88-996f-39ab330e4bb1/49ce1242-5277-46f0-bb14-26ad43922513/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c0a0f6bc-0fbe-4c88-996f-39ab330e4bb1/49ce1242-5277-46f0-bb14-26ad43922513/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c0a0f6bc-0fbe-4c88-996f-39ab330e4bb1/49ce1242-5277-46f0-bb14-26ad43922513/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c0a0f6bc-0fbe-4c88-996f-39ab330e4bb1/49ce1242-5277-46f0-bb14-26ad43922513/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3    BANGLADESH   1                    NA                0.0212336   0.0172110   0.0252561
Birth       JiVitA-3    BANGLADESH   0                    NA                0.0154095   0.0078438   0.0229752
Birth       JiVitA-4    BANGLADESH   1                    NA                0.0111330   0.0060082   0.0162578
Birth       JiVitA-4    BANGLADESH   0                    NA                0.0236399   0.0037629   0.0435169
Birth       Keneba      GAMBIA       1                    NA                0.0895477   0.0599432   0.1191523
Birth       Keneba      GAMBIA       0                    NA                0.0649127   0.0483977   0.0814278
6 months    JiVitA-3    BANGLADESH   1                    NA                0.0150922   0.0120172   0.0181671
6 months    JiVitA-3    BANGLADESH   0                    NA                0.0117939   0.0055996   0.0179883
6 months    JiVitA-4    BANGLADESH   1                    NA                0.0059368   0.0019648   0.0099088
6 months    JiVitA-4    BANGLADESH   0                    NA                0.0117572   0.0056884   0.0178260
6 months    Keneba      GAMBIA       1                    NA                0.0177515   0.0062542   0.0292487
6 months    Keneba      GAMBIA       0                    NA                0.0171473   0.0100418   0.0242529
24 months   GMS-Nepal   NEPAL        1                    NA                0.0193370   0.0051354   0.0335386
24 months   GMS-Nepal   NEPAL        0                    NA                0.0843373   0.0244858   0.1441889
24 months   JiVitA-3    BANGLADESH   1                    NA                0.0443726   0.0352469   0.0534982
24 months   JiVitA-3    BANGLADESH   0                    NA                0.0307798   0.0202620   0.0412976
24 months   JiVitA-4    BANGLADESH   1                    NA                0.0243336   0.0181294   0.0305379
24 months   JiVitA-4    BANGLADESH   0                    NA                0.0269526   0.0163167   0.0375885
24 months   Keneba      GAMBIA       1                    NA                0.0141509   0.0029044   0.0253975
24 months   Keneba      GAMBIA       0                    NA                0.0216272   0.0124745   0.0307798


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3    BANGLADESH   NA                   NA                0.0199559   0.0164404   0.0234714
Birth       JiVitA-4    BANGLADESH   NA                   NA                0.0136278   0.0077812   0.0194744
Birth       Keneba      GAMBIA       NA                   NA                0.0729866   0.0582140   0.0877592
6 months    JiVitA-3    BANGLADESH   NA                   NA                0.0142941   0.0115468   0.0170414
6 months    JiVitA-4    BANGLADESH   NA                   NA                0.0071633   0.0038384   0.0104883
6 months    Keneba      GAMBIA       NA                   NA                0.0173184   0.0112733   0.0233635
24 months   GMS-Nepal   NEPAL        NA                   NA                0.0314607   0.0152239   0.0476974
24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0412323   0.0338115   0.0486531
24 months   JiVitA-4    BANGLADESH   NA                   NA                0.0250310   0.0196459   0.0304161
24 months   Keneba      GAMBIA       NA                   NA                0.0193548   0.0121227   0.0265870


### Parameter: RR


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       JiVitA-3    BANGLADESH   0                    1                 0.7257138   0.4268069    1.233955
Birth       JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       JiVitA-4    BANGLADESH   0                    1                 2.1234110   0.8131336    5.545059
Birth       Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
Birth       Keneba      GAMBIA       0                    1                 0.7248954   0.4815508    1.091211
6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    JiVitA-3    BANGLADESH   0                    1                 0.7814621   0.4424676    1.380176
6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    JiVitA-4    BANGLADESH   0                    1                 1.9803887   0.8460372    4.635658
6 months    Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
6 months    Keneba      GAMBIA       0                    1                 0.9659652   0.4477489    2.083955
24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000    1.000000
24 months   GMS-Nepal   NEPAL        0                    1                 4.3614458   1.5707064   12.110608
24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   JiVitA-3    BANGLADESH   0                    1                 0.6936680   0.4654055    1.033884
24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   JiVitA-4    BANGLADESH   0                    1                 1.1076293   0.6891914    1.780119
24 months   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
24 months   Keneba      GAMBIA       0                    1                 1.5283213   0.6211156    3.760598


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0012776   -0.0031694   0.0006141
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.0024948   -0.0017937   0.0067834
Birth       Keneba      GAMBIA       1                    NA                -0.0165611   -0.0403935   0.0072712
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0007981   -0.0024385   0.0008424
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0012265   -0.0004061   0.0028592
6 months    Keneba      GAMBIA       1                    NA                -0.0004330   -0.0101206   0.0092545
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0121237    0.0004112   0.0238361
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0031402   -0.0063954   0.0001150
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0006973   -0.0021844   0.0035791
24 months   Keneba      GAMBIA       1                    NA                 0.0052039   -0.0048907   0.0152985


### Parameter: PAF


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0640235   -0.1636798    0.0270984
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.1830686   -0.1530671    0.4212159
Birth       Keneba      GAMBIA       1                    NA                -0.2269067   -0.5975396    0.0577386
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0558322   -0.1786568    0.0541931
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.1712225   -0.1276260    0.3908688
6 months    Keneba      GAMBIA       1                    NA                -0.0250048   -0.7689132    0.4060563
24 months   GMS-Nepal   NEPAL        1                    NA                 0.3853591   -0.0298156    0.6331543
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0761592   -0.1538817   -0.0036718
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0278594   -0.0947952    0.1367724
24 months   Keneba      GAMBIA       1                    NA                 0.2688679   -0.4728780    0.6370683
