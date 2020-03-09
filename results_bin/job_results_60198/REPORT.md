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

agecat      studyid          country                        exclfeed36    sstunted   n_cell       n
----------  ---------------  -----------------------------  -----------  ---------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                    0        3       3
Birth       CMC-V-BCS-2002   INDIA                          1                    1        0       3
Birth       CMC-V-BCS-2002   INDIA                          0                    0        0       3
Birth       CMC-V-BCS-2002   INDIA                          0                    1        0       3
Birth       EE               PAKISTAN                       1                    0        2       7
Birth       EE               PAKISTAN                       1                    1        1       7
Birth       EE               PAKISTAN                       0                    0        4       7
Birth       EE               PAKISTAN                       0                    1        0       7
Birth       GMS-Nepal        NEPAL                          1                    0      409     526
Birth       GMS-Nepal        NEPAL                          1                    1       13     526
Birth       GMS-Nepal        NEPAL                          0                    0      101     526
Birth       GMS-Nepal        NEPAL                          0                    1        3     526
Birth       IRC              INDIA                          1                    0        0       4
Birth       IRC              INDIA                          1                    1        0       4
Birth       IRC              INDIA                          0                    0        4       4
Birth       IRC              INDIA                          0                    1        0       4
Birth       JiVitA-3         BANGLADESH                     1                    0     7457   10681
Birth       JiVitA-3         BANGLADESH                     1                    1      865   10681
Birth       JiVitA-3         BANGLADESH                     0                    0     2103   10681
Birth       JiVitA-3         BANGLADESH                     0                    1      256   10681
Birth       JiVitA-4         BANGLADESH                     1                    0     1848    2517
Birth       JiVitA-4         BANGLADESH                     1                    1      146    2517
Birth       JiVitA-4         BANGLADESH                     0                    0      457    2517
Birth       JiVitA-4         BANGLADESH                     0                    1       66    2517
Birth       Keneba           GAMBIA                         1                    0      358    1253
Birth       Keneba           GAMBIA                         1                    1        5    1253
Birth       Keneba           GAMBIA                         0                    0      871    1253
Birth       Keneba           GAMBIA                         0                    1       19    1253
Birth       MAL-ED           BANGLADESH                     1                    0       32     221
Birth       MAL-ED           BANGLADESH                     1                    1        0     221
Birth       MAL-ED           BANGLADESH                     0                    0      182     221
Birth       MAL-ED           BANGLADESH                     0                    1        7     221
Birth       MAL-ED           BRAZIL                         1                    0        4      65
Birth       MAL-ED           BRAZIL                         1                    1        1      65
Birth       MAL-ED           BRAZIL                         0                    0       58      65
Birth       MAL-ED           BRAZIL                         0                    1        2      65
Birth       MAL-ED           INDIA                          1                    0        1      42
Birth       MAL-ED           INDIA                          1                    1        0      42
Birth       MAL-ED           INDIA                          0                    0       39      42
Birth       MAL-ED           INDIA                          0                    1        2      42
Birth       MAL-ED           NEPAL                          1                    0        0      26
Birth       MAL-ED           NEPAL                          1                    1        0      26
Birth       MAL-ED           NEPAL                          0                    0       25      26
Birth       MAL-ED           NEPAL                          0                    1        1      26
Birth       MAL-ED           PERU                           1                    0        5     223
Birth       MAL-ED           PERU                           1                    1        0     223
Birth       MAL-ED           PERU                           0                    0      214     223
Birth       MAL-ED           PERU                           0                    1        4     223
Birth       MAL-ED           SOUTH AFRICA                   1                    0        1     105
Birth       MAL-ED           SOUTH AFRICA                   1                    1        0     105
Birth       MAL-ED           SOUTH AFRICA                   0                    0      103     105
Birth       MAL-ED           SOUTH AFRICA                   0                    1        1     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        0     119
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0     119
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      111     119
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        8     119
Birth       PROVIDE          BANGLADESH                     1                    0      118     490
Birth       PROVIDE          BANGLADESH                     1                    1        1     490
Birth       PROVIDE          BANGLADESH                     0                    0      368     490
Birth       PROVIDE          BANGLADESH                     0                    1        3     490
6 months    CMC-V-BCS-2002   INDIA                          1                    0        7       9
6 months    CMC-V-BCS-2002   INDIA                          1                    1        2       9
6 months    CMC-V-BCS-2002   INDIA                          0                    0        0       9
6 months    CMC-V-BCS-2002   INDIA                          0                    1        0       9
6 months    EE               PAKISTAN                       1                    0        3       9
6 months    EE               PAKISTAN                       1                    1        1       9
6 months    EE               PAKISTAN                       0                    0        5       9
6 months    EE               PAKISTAN                       0                    1        0       9
6 months    GMS-Nepal        NEPAL                          1                    0      410     527
6 months    GMS-Nepal        NEPAL                          1                    1       12     527
6 months    GMS-Nepal        NEPAL                          0                    0       98     527
6 months    GMS-Nepal        NEPAL                          0                    1        7     527
6 months    IRC              INDIA                          1                    0        0       4
6 months    IRC              INDIA                          1                    1        0       4
6 months    IRC              INDIA                          0                    0        4       4
6 months    IRC              INDIA                          0                    1        0       4
6 months    JiVitA-3         BANGLADESH                     1                    0     6169    8552
6 months    JiVitA-3         BANGLADESH                     1                    1      409    8552
6 months    JiVitA-3         BANGLADESH                     0                    0     1846    8552
6 months    JiVitA-3         BANGLADESH                     0                    1      128    8552
6 months    JiVitA-4         BANGLADESH                     1                    0     3098    4185
6 months    JiVitA-4         BANGLADESH                     1                    1      143    4185
6 months    JiVitA-4         BANGLADESH                     0                    0      854    4185
6 months    JiVitA-4         BANGLADESH                     0                    1       90    4185
6 months    Keneba           GAMBIA                         1                    0      490    1790
6 months    Keneba           GAMBIA                         1                    1       17    1790
6 months    Keneba           GAMBIA                         0                    0     1242    1790
6 months    Keneba           GAMBIA                         0                    1       41    1790
6 months    LCNI-5           MALAWI                         1                    0       44     272
6 months    LCNI-5           MALAWI                         1                    1        3     272
6 months    LCNI-5           MALAWI                         0                    0      208     272
6 months    LCNI-5           MALAWI                         0                    1       17     272
6 months    MAL-ED           BANGLADESH                     1                    0       29     240
6 months    MAL-ED           BANGLADESH                     1                    1        1     240
6 months    MAL-ED           BANGLADESH                     0                    0      203     240
6 months    MAL-ED           BANGLADESH                     0                    1        7     240
6 months    MAL-ED           BRAZIL                         1                    0       12     209
6 months    MAL-ED           BRAZIL                         1                    1        0     209
6 months    MAL-ED           BRAZIL                         0                    0      197     209
6 months    MAL-ED           BRAZIL                         0                    1        0     209
6 months    MAL-ED           INDIA                          1                    0        8     233
6 months    MAL-ED           INDIA                          1                    1        1     233
6 months    MAL-ED           INDIA                          0                    0      216     233
6 months    MAL-ED           INDIA                          0                    1        8     233
6 months    MAL-ED           NEPAL                          1                    0        4     235
6 months    MAL-ED           NEPAL                          1                    1        0     235
6 months    MAL-ED           NEPAL                          0                    0      230     235
6 months    MAL-ED           NEPAL                          0                    1        1     235
6 months    MAL-ED           PERU                           1                    0        6     272
6 months    MAL-ED           PERU                           1                    1        0     272
6 months    MAL-ED           PERU                           0                    0      256     272
6 months    MAL-ED           PERU                           0                    1       10     272
6 months    MAL-ED           SOUTH AFRICA                   1                    0        1     250
6 months    MAL-ED           SOUTH AFRICA                   1                    1        0     250
6 months    MAL-ED           SOUTH AFRICA                   0                    0      243     250
6 months    MAL-ED           SOUTH AFRICA                   0                    1        6     250
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        4     243
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0     243
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      225     243
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1       14     243
6 months    PROVIDE          BANGLADESH                     1                    0      143     603
6 months    PROVIDE          BANGLADESH                     1                    1        2     603
6 months    PROVIDE          BANGLADESH                     0                    0      447     603
6 months    PROVIDE          BANGLADESH                     0                    1       11     603
6 months    SAS-FoodSuppl    INDIA                          1                    0        0     168
6 months    SAS-FoodSuppl    INDIA                          1                    1        0     168
6 months    SAS-FoodSuppl    INDIA                          0                    0      140     168
6 months    SAS-FoodSuppl    INDIA                          0                    1       28     168
24 months   CMC-V-BCS-2002   INDIA                          1                    0        6       9
24 months   CMC-V-BCS-2002   INDIA                          1                    1        3       9
24 months   CMC-V-BCS-2002   INDIA                          0                    0        0       9
24 months   CMC-V-BCS-2002   INDIA                          0                    1        0       9
24 months   EE               PAKISTAN                       1                    0        0       3
24 months   EE               PAKISTAN                       1                    1        0       3
24 months   EE               PAKISTAN                       0                    0        3       3
24 months   EE               PAKISTAN                       0                    1        0       3
24 months   GMS-Nepal        NEPAL                          1                    0      329     446
24 months   GMS-Nepal        NEPAL                          1                    1       34     446
24 months   GMS-Nepal        NEPAL                          0                    0       69     446
24 months   GMS-Nepal        NEPAL                          0                    1       14     446
24 months   IRC              INDIA                          1                    0        0       4
24 months   IRC              INDIA                          1                    1        0       4
24 months   IRC              INDIA                          0                    0        3       4
24 months   IRC              INDIA                          0                    1        1       4
24 months   JiVitA-3         BANGLADESH                     1                    0     2829    4334
24 months   JiVitA-3         BANGLADESH                     1                    1      496    4334
24 months   JiVitA-3         BANGLADESH                     0                    0      863    4334
24 months   JiVitA-3         BANGLADESH                     0                    1      146    4334
24 months   JiVitA-4         BANGLADESH                     1                    0     2870    4049
24 months   JiVitA-4         BANGLADESH                     1                    1      275    4049
24 months   JiVitA-4         BANGLADESH                     0                    0      787    4049
24 months   JiVitA-4         BANGLADESH                     0                    1      117    4049
24 months   Keneba           GAMBIA                         1                    0      399    1394
24 months   Keneba           GAMBIA                         1                    1       25    1394
24 months   Keneba           GAMBIA                         0                    0      879    1394
24 months   Keneba           GAMBIA                         0                    1       91    1394
24 months   LCNI-5           MALAWI                         1                    0       30     189
24 months   LCNI-5           MALAWI                         1                    1        4     189
24 months   LCNI-5           MALAWI                         0                    0      135     189
24 months   LCNI-5           MALAWI                         0                    1       20     189
24 months   MAL-ED           BANGLADESH                     1                    0       21     212
24 months   MAL-ED           BANGLADESH                     1                    1        4     212
24 months   MAL-ED           BANGLADESH                     0                    0      163     212
24 months   MAL-ED           BANGLADESH                     0                    1       24     212
24 months   MAL-ED           BRAZIL                         1                    0       11     169
24 months   MAL-ED           BRAZIL                         1                    1        0     169
24 months   MAL-ED           BRAZIL                         0                    0      157     169
24 months   MAL-ED           BRAZIL                         0                    1        1     169
24 months   MAL-ED           INDIA                          1                    0        8     224
24 months   MAL-ED           INDIA                          1                    1        1     224
24 months   MAL-ED           INDIA                          0                    0      186     224
24 months   MAL-ED           INDIA                          0                    1       29     224
24 months   MAL-ED           NEPAL                          1                    0        4     227
24 months   MAL-ED           NEPAL                          1                    1        0     227
24 months   MAL-ED           NEPAL                          0                    0      216     227
24 months   MAL-ED           NEPAL                          0                    1        7     227
24 months   MAL-ED           PERU                           1                    0        4     201
24 months   MAL-ED           PERU                           1                    1        0     201
24 months   MAL-ED           PERU                           0                    0      182     201
24 months   MAL-ED           PERU                           0                    1       15     201
24 months   MAL-ED           SOUTH AFRICA                   1                    0        1     235
24 months   MAL-ED           SOUTH AFRICA                   1                    1        0     235
24 months   MAL-ED           SOUTH AFRICA                   0                    0      208     235
24 months   MAL-ED           SOUTH AFRICA                   0                    1       26     235
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        1     213
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        2     213
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      142     213
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1       68     213
24 months   PROVIDE          BANGLADESH                     1                    0      128     577
24 months   PROVIDE          BANGLADESH                     1                    1       13     577
24 months   PROVIDE          BANGLADESH                     0                    0      397     577
24 months   PROVIDE          BANGLADESH                     0                    1       39     577


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




# Results Detail

## Results Plots
![](/tmp/ae285177-39b6-4ae9-932b-9c306f6406b1/f3647f8a-ba3d-49aa-af3e-45b8cebea5db/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ae285177-39b6-4ae9-932b-9c306f6406b1/f3647f8a-ba3d-49aa-af3e-45b8cebea5db/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ae285177-39b6-4ae9-932b-9c306f6406b1/f3647f8a-ba3d-49aa-af3e-45b8cebea5db/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ae285177-39b6-4ae9-932b-9c306f6406b1/f3647f8a-ba3d-49aa-af3e-45b8cebea5db/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3    BANGLADESH   1                    NA                0.1049555   0.0985688   0.1113421
Birth       JiVitA-3    BANGLADESH   0                    NA                0.1048239   0.0982035   0.1114442
Birth       JiVitA-4    BANGLADESH   1                    NA                0.0735244   0.0592634   0.0877855
Birth       JiVitA-4    BANGLADESH   0                    NA                0.1235351   0.0943346   0.1527356
Birth       Keneba      GAMBIA       1                    NA                0.0137741   0.0017794   0.0257688
Birth       Keneba      GAMBIA       0                    NA                0.0213483   0.0118483   0.0308483
6 months    GMS-Nepal   NEPAL        1                    NA                0.0284360   0.0125625   0.0443096
6 months    GMS-Nepal   NEPAL        0                    NA                0.0666667   0.0189095   0.1144238
6 months    JiVitA-3    BANGLADESH   1                    NA                0.0619283   0.0557515   0.0681051
6 months    JiVitA-3    BANGLADESH   0                    NA                0.0657195   0.0551804   0.0762586
6 months    JiVitA-4    BANGLADESH   1                    NA                0.0465158   0.0391812   0.0538504
6 months    JiVitA-4    BANGLADESH   0                    NA                0.0822663   0.0639779   0.1005547
6 months    Keneba      GAMBIA       1                    NA                0.0333467   0.0174306   0.0492629
6 months    Keneba      GAMBIA       0                    NA                0.0319648   0.0223101   0.0416195
24 months   GMS-Nepal   NEPAL        1                    NA                0.0927724   0.0628554   0.1226893
24 months   GMS-Nepal   NEPAL        0                    NA                0.1737534   0.0904615   0.2570452
24 months   JiVitA-3    BANGLADESH   1                    NA                0.1491079   0.1357256   0.1624902
24 months   JiVitA-3    BANGLADESH   0                    NA                0.1448753   0.1196584   0.1700922
24 months   JiVitA-4    BANGLADESH   1                    NA                0.0900125   0.0780782   0.1019468
24 months   JiVitA-4    BANGLADESH   0                    NA                0.1149177   0.0934879   0.1363475
24 months   Keneba      GAMBIA       1                    NA                0.0609553   0.0385165   0.0833942
24 months   Keneba      GAMBIA       0                    NA                0.0940060   0.0756427   0.1123693
24 months   PROVIDE     BANGLADESH   1                    NA                0.0908320   0.0425853   0.1390788
24 months   PROVIDE     BANGLADESH   0                    NA                0.0891935   0.0623549   0.1160321


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3    BANGLADESH   NA                   NA                0.1049527   0.0986146   0.1112909
Birth       JiVitA-4    BANGLADESH   NA                   NA                0.0842273   0.0714625   0.0969920
Birth       Keneba      GAMBIA       NA                   NA                0.0191540   0.0115617   0.0267464
6 months    GMS-Nepal   NEPAL        NA                   NA                0.0360531   0.0201218   0.0519845
6 months    JiVitA-3    BANGLADESH   NA                   NA                0.0627923   0.0572659   0.0683187
6 months    JiVitA-4    BANGLADESH   NA                   NA                0.0556750   0.0484735   0.0628765
6 months    Keneba      GAMBIA       NA                   NA                0.0324022   0.0241972   0.0406072
24 months   GMS-Nepal   NEPAL        NA                   NA                0.1076233   0.0788298   0.1364169
24 months   JiVitA-3    BANGLADESH   NA                   NA                0.1481311   0.1360218   0.1602403
24 months   JiVitA-4    BANGLADESH   NA                   NA                0.0968140   0.0862351   0.1073930
24 months   Keneba      GAMBIA       NA                   NA                0.0832138   0.0687092   0.0977183
24 months   PROVIDE     BANGLADESH   NA                   NA                0.0901213   0.0667360   0.1135066


### Parameter: RR


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3    BANGLADESH   0                    1                 0.9987460   0.9728309   1.025351
Birth       JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4    BANGLADESH   0                    1                 1.6801915   1.2374477   2.281344
Birth       Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       Keneba      GAMBIA       0                    1                 1.5498876   0.5828980   4.121050
6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal   NEPAL        0                    1                 2.3444444   0.9454214   5.813725
6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3    BANGLADESH   0                    1                 1.0612189   0.8852453   1.272174
6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4    BANGLADESH   0                    1                 1.7685659   1.3581865   2.302942
6 months    Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    Keneba      GAMBIA       0                    1                 0.9585585   0.5449725   1.686020
24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal   NEPAL        0                    1                 1.8729004   1.0518725   3.334773
24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3    BANGLADESH   0                    1                 0.9716137   0.8024364   1.176459
24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4    BANGLADESH   0                    1                 1.2766858   1.0190853   1.599401
24 months   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   Keneba      GAMBIA       0                    1                 1.5422115   1.0164180   2.339998
24 months   PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   PROVIDE     BANGLADESH   0                    1                 0.9819609   0.5331451   1.808602


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0000028   -0.0006135   0.0006080
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.0107028    0.0037449   0.0176608
Birth       Keneba      GAMBIA       1                    NA                 0.0053799   -0.0054900   0.0162498
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0076171   -0.0024945   0.0177287
6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0008640   -0.0018430   0.0035710
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0091592    0.0047374   0.0135810
6 months    Keneba      GAMBIA       1                    NA                -0.0009445   -0.0143447   0.0124556
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0148510   -0.0013219   0.0310238
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0009769   -0.0074619   0.0055081
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0068015    0.0011325   0.0124706
24 months   Keneba      GAMBIA       1                    NA                 0.0222584    0.0020637   0.0424531
24 months   PROVIDE     BANGLADESH   1                    NA                -0.0007107   -0.0425431   0.0411217


### Parameter: PAF


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0000263   -0.0058624   0.0057760
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.1270708    0.0389206   0.2071358
Birth       Keneba      GAMBIA       1                    NA                 0.2808770   -0.5597600   0.6684503
6 months    GMS-Nepal   NEPAL        1                    NA                 0.2112746   -0.1042928   0.4366642
6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0137599   -0.0303367   0.0559692
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.1645120    0.0845921   0.2374545
6 months    Keneba      GAMBIA       1                    NA                -0.0291497   -0.5379187   0.3113101
24 months   GMS-Nepal   NEPAL        1                    NA                 0.1379902   -0.0223098   0.2731549
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0065947   -0.0513774   0.0362806
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0702535    0.0093903   0.1273773
24 months   Keneba      GAMBIA       1                    NA                 0.2674851   -0.0137143   0.4706811
24 months   PROVIDE     BANGLADESH   1                    NA                -0.0078859   -0.5973953   0.3640685
