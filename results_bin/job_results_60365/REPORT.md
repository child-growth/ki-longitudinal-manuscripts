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

**Intervention Variable:** predexfd6

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

agecat      studyid          country                        predexfd6    swasted   n_cell       n
----------  ---------------  -----------------------------  ----------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                  0        7       7
Birth       CMC-V-BCS-2002   INDIA                          1                  1        0       7
Birth       CMC-V-BCS-2002   INDIA                          0                  0        0       7
Birth       CMC-V-BCS-2002   INDIA                          0                  1        0       7
Birth       EE               PAKISTAN                       1                  0       24      28
Birth       EE               PAKISTAN                       1                  1        0      28
Birth       EE               PAKISTAN                       0                  0        3      28
Birth       EE               PAKISTAN                       0                  1        1      28
Birth       GMS-Nepal        NEPAL                          1                  0      371     522
Birth       GMS-Nepal        NEPAL                          1                  1       19     522
Birth       GMS-Nepal        NEPAL                          0                  0      129     522
Birth       GMS-Nepal        NEPAL                          0                  1        3     522
Birth       IRC              INDIA                          1                  0        0      12
Birth       IRC              INDIA                          1                  1        0      12
Birth       IRC              INDIA                          0                  0       12      12
Birth       IRC              INDIA                          0                  1        0      12
Birth       JiVitA-3         BANGLADESH                     1                  0     8220   10744
Birth       JiVitA-3         BANGLADESH                     1                  1      172   10744
Birth       JiVitA-3         BANGLADESH                     0                  0     2314   10744
Birth       JiVitA-3         BANGLADESH                     0                  1       38   10744
Birth       JiVitA-4         BANGLADESH                     1                  0     1783    2224
Birth       JiVitA-4         BANGLADESH                     1                  1       19    2224
Birth       JiVitA-4         BANGLADESH                     0                  0      412    2224
Birth       JiVitA-4         BANGLADESH                     0                  1       10    2224
Birth       Keneba           GAMBIA                         1                  0      411    1327
Birth       Keneba           GAMBIA                         1                  1       39    1327
Birth       Keneba           GAMBIA                         0                  0      820    1327
Birth       Keneba           GAMBIA                         0                  1       57    1327
Birth       MAL-ED           BANGLADESH                     1                  0       68     194
Birth       MAL-ED           BANGLADESH                     1                  1        0     194
Birth       MAL-ED           BANGLADESH                     0                  0      118     194
Birth       MAL-ED           BANGLADESH                     0                  1        8     194
Birth       MAL-ED           BRAZIL                         1                  0        5      57
Birth       MAL-ED           BRAZIL                         1                  1        0      57
Birth       MAL-ED           BRAZIL                         0                  0       52      57
Birth       MAL-ED           BRAZIL                         0                  1        0      57
Birth       MAL-ED           INDIA                          1                  0        4      37
Birth       MAL-ED           INDIA                          1                  1        0      37
Birth       MAL-ED           INDIA                          0                  0       33      37
Birth       MAL-ED           INDIA                          0                  1        0      37
Birth       MAL-ED           NEPAL                          1                  0        3      23
Birth       MAL-ED           NEPAL                          1                  1        0      23
Birth       MAL-ED           NEPAL                          0                  0       19      23
Birth       MAL-ED           NEPAL                          0                  1        1      23
Birth       MAL-ED           PERU                           1                  0       72     208
Birth       MAL-ED           PERU                           1                  1        0     208
Birth       MAL-ED           PERU                           0                  0      136     208
Birth       MAL-ED           PERU                           0                  1        0     208
Birth       MAL-ED           SOUTH AFRICA                   1                  0        1      90
Birth       MAL-ED           SOUTH AFRICA                   1                  1        0      90
Birth       MAL-ED           SOUTH AFRICA                   0                  0       89      90
Birth       MAL-ED           SOUTH AFRICA                   0                  1        0      90
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        0     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      105     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1        0     105
Birth       PROVIDE          BANGLADESH                     1                  0      153     532
Birth       PROVIDE          BANGLADESH                     1                  1        2     532
Birth       PROVIDE          BANGLADESH                     0                  0      366     532
Birth       PROVIDE          BANGLADESH                     0                  1       11     532
Birth       SAS-CompFeed     INDIA                          1                  0      303     325
Birth       SAS-CompFeed     INDIA                          1                  1        7     325
Birth       SAS-CompFeed     INDIA                          0                  0       15     325
Birth       SAS-CompFeed     INDIA                          0                  1        0     325
6 months    CMC-V-BCS-2002   INDIA                          1                  0       19      19
6 months    CMC-V-BCS-2002   INDIA                          1                  1        0      19
6 months    CMC-V-BCS-2002   INDIA                          0                  0        0      19
6 months    CMC-V-BCS-2002   INDIA                          0                  1        0      19
6 months    EE               PAKISTAN                       1                  0       42      48
6 months    EE               PAKISTAN                       1                  1        1      48
6 months    EE               PAKISTAN                       0                  0        5      48
6 months    EE               PAKISTAN                       0                  1        0      48
6 months    GMS-Nepal        NEPAL                          1                  0      399     547
6 months    GMS-Nepal        NEPAL                          1                  1        7     547
6 months    GMS-Nepal        NEPAL                          0                  0      141     547
6 months    GMS-Nepal        NEPAL                          0                  1        0     547
6 months    IRC              INDIA                          1                  0        0      14
6 months    IRC              INDIA                          1                  1        0      14
6 months    IRC              INDIA                          0                  0       14      14
6 months    IRC              INDIA                          0                  1        0      14
6 months    JiVitA-3         BANGLADESH                     1                  0     7512    9882
6 months    JiVitA-3         BANGLADESH                     1                  1      113    9882
6 months    JiVitA-3         BANGLADESH                     0                  0     2232    9882
6 months    JiVitA-3         BANGLADESH                     0                  1       25    9882
6 months    JiVitA-4         BANGLADESH                     1                  0     3308    4275
6 months    JiVitA-4         BANGLADESH                     1                  1       19    4275
6 months    JiVitA-4         BANGLADESH                     0                  0      937    4275
6 months    JiVitA-4         BANGLADESH                     0                  1       11    4275
6 months    Keneba           GAMBIA                         1                  0      577    1908
6 months    Keneba           GAMBIA                         1                  1        9    1908
6 months    Keneba           GAMBIA                         0                  0     1299    1908
6 months    Keneba           GAMBIA                         0                  1       23    1908
6 months    LCNI-5           MALAWI                         1                  0       47     272
6 months    LCNI-5           MALAWI                         1                  1        0     272
6 months    LCNI-5           MALAWI                         0                  0      225     272
6 months    LCNI-5           MALAWI                         0                  1        0     272
6 months    MAL-ED           BANGLADESH                     1                  0       83     231
6 months    MAL-ED           BANGLADESH                     1                  1        1     231
6 months    MAL-ED           BANGLADESH                     0                  0      146     231
6 months    MAL-ED           BANGLADESH                     0                  1        1     231
6 months    MAL-ED           BRAZIL                         1                  0       30     209
6 months    MAL-ED           BRAZIL                         1                  1        0     209
6 months    MAL-ED           BRAZIL                         0                  0      179     209
6 months    MAL-ED           BRAZIL                         0                  1        0     209
6 months    MAL-ED           INDIA                          1                  0       11     218
6 months    MAL-ED           INDIA                          1                  1        0     218
6 months    MAL-ED           INDIA                          0                  0      202     218
6 months    MAL-ED           INDIA                          0                  1        5     218
6 months    MAL-ED           NEPAL                          1                  0       12     225
6 months    MAL-ED           NEPAL                          1                  1        0     225
6 months    MAL-ED           NEPAL                          0                  0      213     225
6 months    MAL-ED           NEPAL                          0                  1        0     225
6 months    MAL-ED           PERU                           1                  0       92     271
6 months    MAL-ED           PERU                           1                  1        0     271
6 months    MAL-ED           PERU                           0                  0      179     271
6 months    MAL-ED           PERU                           0                  1        0     271
6 months    MAL-ED           SOUTH AFRICA                   1                  0        3     233
6 months    MAL-ED           SOUTH AFRICA                   1                  1        0     233
6 months    MAL-ED           SOUTH AFRICA                   0                  0      227     233
6 months    MAL-ED           SOUTH AFRICA                   0                  1        3     233
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        1     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      231     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1        0     232
6 months    PROVIDE          BANGLADESH                     1                  0      141     603
6 months    PROVIDE          BANGLADESH                     1                  1        0     603
6 months    PROVIDE          BANGLADESH                     0                  0      457     603
6 months    PROVIDE          BANGLADESH                     0                  1        5     603
6 months    SAS-CompFeed     INDIA                          1                  0      360     395
6 months    SAS-CompFeed     INDIA                          1                  1       16     395
6 months    SAS-CompFeed     INDIA                          0                  0       18     395
6 months    SAS-CompFeed     INDIA                          0                  1        1     395
6 months    SAS-FoodSuppl    INDIA                          1                  0        0     168
6 months    SAS-FoodSuppl    INDIA                          1                  1        0     168
6 months    SAS-FoodSuppl    INDIA                          0                  0      156     168
6 months    SAS-FoodSuppl    INDIA                          0                  1       12     168
24 months   CMC-V-BCS-2002   INDIA                          1                  0       19      19
24 months   CMC-V-BCS-2002   INDIA                          1                  1        0      19
24 months   CMC-V-BCS-2002   INDIA                          0                  0        0      19
24 months   CMC-V-BCS-2002   INDIA                          0                  1        0      19
24 months   EE               PAKISTAN                       1                  0       20      23
24 months   EE               PAKISTAN                       1                  1        0      23
24 months   EE               PAKISTAN                       0                  0        3      23
24 months   EE               PAKISTAN                       0                  1        0      23
24 months   GMS-Nepal        NEPAL                          1                  0      349     469
24 months   GMS-Nepal        NEPAL                          1                  1        6     469
24 months   GMS-Nepal        NEPAL                          0                  0      105     469
24 months   GMS-Nepal        NEPAL                          0                  1        9     469
24 months   IRC              INDIA                          1                  0        0      14
24 months   IRC              INDIA                          1                  1        0      14
24 months   IRC              INDIA                          0                  0       14      14
24 months   IRC              INDIA                          0                  1        0      14
24 months   JiVitA-3         BANGLADESH                     1                  0     3752    5067
24 months   JiVitA-3         BANGLADESH                     1                  1      157    5067
24 months   JiVitA-3         BANGLADESH                     0                  0     1120    5067
24 months   JiVitA-3         BANGLADESH                     0                  1       38    5067
24 months   JiVitA-4         BANGLADESH                     1                  0     3198    4184
24 months   JiVitA-4         BANGLADESH                     1                  1       80    4184
24 months   JiVitA-4         BANGLADESH                     0                  0      880    4184
24 months   JiVitA-4         BANGLADESH                     0                  1       26    4184
24 months   Keneba           GAMBIA                         1                  0      509    1514
24 months   Keneba           GAMBIA                         1                  1        5    1514
24 months   Keneba           GAMBIA                         0                  0      978    1514
24 months   Keneba           GAMBIA                         0                  1       22    1514
24 months   LCNI-5           MALAWI                         1                  0       34     184
24 months   LCNI-5           MALAWI                         1                  1        0     184
24 months   LCNI-5           MALAWI                         0                  0      150     184
24 months   LCNI-5           MALAWI                         0                  1        0     184
24 months   MAL-ED           BANGLADESH                     1                  0       76     205
24 months   MAL-ED           BANGLADESH                     1                  1        0     205
24 months   MAL-ED           BANGLADESH                     0                  0      129     205
24 months   MAL-ED           BANGLADESH                     0                  1        0     205
24 months   MAL-ED           BRAZIL                         1                  0       24     169
24 months   MAL-ED           BRAZIL                         1                  1        1     169
24 months   MAL-ED           BRAZIL                         0                  0      144     169
24 months   MAL-ED           BRAZIL                         0                  1        0     169
24 months   MAL-ED           INDIA                          1                  0       11     209
24 months   MAL-ED           INDIA                          1                  1        0     209
24 months   MAL-ED           INDIA                          0                  0      196     209
24 months   MAL-ED           INDIA                          0                  1        2     209
24 months   MAL-ED           NEPAL                          1                  0       12     219
24 months   MAL-ED           NEPAL                          1                  1        0     219
24 months   MAL-ED           NEPAL                          0                  0      207     219
24 months   MAL-ED           NEPAL                          0                  1        0     219
24 months   MAL-ED           PERU                           1                  0       67     201
24 months   MAL-ED           PERU                           1                  1        1     201
24 months   MAL-ED           PERU                           0                  0      132     201
24 months   MAL-ED           PERU                           0                  1        1     201
24 months   MAL-ED           SOUTH AFRICA                   1                  0        3     216
24 months   MAL-ED           SOUTH AFRICA                   1                  1        0     216
24 months   MAL-ED           SOUTH AFRICA                   0                  0      213     216
24 months   MAL-ED           SOUTH AFRICA                   0                  1        0     216
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        1     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      201     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1        0     202
24 months   PROVIDE          BANGLADESH                     1                  0      135     579
24 months   PROVIDE          BANGLADESH                     1                  1        2     579
24 months   PROVIDE          BANGLADESH                     0                  0      435     579
24 months   PROVIDE          BANGLADESH                     0                  1        7     579


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
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
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
![](/tmp/44100ea1-a1a7-4c1c-9439-bc1236c9743c/a11c8f76-af96-456d-918d-ae874ca8aff2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/44100ea1-a1a7-4c1c-9439-bc1236c9743c/a11c8f76-af96-456d-918d-ae874ca8aff2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/44100ea1-a1a7-4c1c-9439-bc1236c9743c/a11c8f76-af96-456d-918d-ae874ca8aff2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/44100ea1-a1a7-4c1c-9439-bc1236c9743c/a11c8f76-af96-456d-918d-ae874ca8aff2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3    BANGLADESH   1                    NA                0.0205046   0.0172542   0.0237550
Birth       JiVitA-3    BANGLADESH   0                    NA                0.0161331   0.0095699   0.0226964
Birth       JiVitA-4    BANGLADESH   1                    NA                0.0106168   0.0056900   0.0155437
Birth       JiVitA-4    BANGLADESH   0                    NA                0.0230640   0.0035491   0.0425789
Birth       Keneba      GAMBIA       1                    NA                0.0900318   0.0646904   0.1153731
Birth       Keneba      GAMBIA       0                    NA                0.0636337   0.0476077   0.0796598
6 months    JiVitA-3    BANGLADESH   1                    NA                0.0148371   0.0119384   0.0177358
6 months    JiVitA-3    BANGLADESH   0                    NA                0.0110763   0.0060403   0.0161123
6 months    JiVitA-4    BANGLADESH   1                    NA                0.0057880   0.0020950   0.0094811
6 months    JiVitA-4    BANGLADESH   0                    NA                0.0116350   0.0055143   0.0177556
6 months    Keneba      GAMBIA       1                    NA                0.0153584   0.0053992   0.0253176
6 months    Keneba      GAMBIA       0                    NA                0.0173979   0.0103480   0.0244478
24 months   GMS-Nepal   NEPAL        1                    NA                0.0169014   0.0034782   0.0303246
24 months   GMS-Nepal   NEPAL        0                    NA                0.0789474   0.0293943   0.1285004
24 months   JiVitA-3    BANGLADESH   1                    NA                0.0402616   0.0321079   0.0484153
24 months   JiVitA-3    BANGLADESH   0                    NA                0.0334530   0.0233771   0.0435290
24 months   JiVitA-4    BANGLADESH   1                    NA                0.0244168   0.0180187   0.0308148
24 months   JiVitA-4    BANGLADESH   0                    NA                0.0279311   0.0172071   0.0386550
24 months   Keneba      GAMBIA       1                    NA                0.0097276   0.0012399   0.0182153
24 months   Keneba      GAMBIA       0                    NA                0.0220000   0.0129056   0.0310944


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3    BANGLADESH   NA                   NA                0.0195458   0.0166489   0.0224427
Birth       JiVitA-4    BANGLADESH   NA                   NA                0.0130396   0.0073461   0.0187330
Birth       Keneba      GAMBIA       NA                   NA                0.0723436   0.0584002   0.0862871
6 months    JiVitA-3    BANGLADESH   NA                   NA                0.0139648   0.0114567   0.0164729
6 months    JiVitA-4    BANGLADESH   NA                   NA                0.0070175   0.0038738   0.0101612
6 months    Keneba      GAMBIA       NA                   NA                0.0167715   0.0110080   0.0225350
24 months   GMS-Nepal   NEPAL        NA                   NA                0.0319829   0.0160416   0.0479243
24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0384843   0.0318086   0.0451600
24 months   JiVitA-4    BANGLADESH   NA                   NA                0.0253346   0.0198022   0.0308670
24 months   Keneba      GAMBIA       NA                   NA                0.0178336   0.0111649   0.0245022


### Parameter: RR


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       JiVitA-3    BANGLADESH   0                    1                 0.7868051   0.5071308    1.220715
Birth       JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       JiVitA-4    BANGLADESH   0                    1                 2.1723993   0.8264983    5.710016
Birth       Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
Birth       Keneba      GAMBIA       0                    1                 0.7067921   0.4897701    1.019979
6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    JiVitA-3    BANGLADESH   0                    1                 0.7465257   0.4538079    1.228054
6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    JiVitA-4    BANGLADESH   0                    1                 2.0101868   0.8748746    4.618777
6 months    Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
6 months    Keneba      GAMBIA       0                    1                 1.1327954   0.5273112    2.433526
24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000    1.000000
24 months   GMS-Nepal   NEPAL        0                    1                 4.6710526   1.6973880   12.854299
24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   JiVitA-3    BANGLADESH   0                    1                 0.8308910   0.5767333    1.197052
24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   JiVitA-4    BANGLADESH   0                    1                 1.1439309   0.7148719    1.830507
24 months   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
24 months   Keneba      GAMBIA       0                    1                 2.2616000   0.8611947    5.939231


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0009588   -0.0025765   0.0006589
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.0024227   -0.0017815   0.0066270
Birth       Keneba      GAMBIA       1                    NA                -0.0176881   -0.0371578   0.0017815
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0008723   -0.0022284   0.0004837
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0012295   -0.0003532   0.0028123
6 months    Keneba      GAMBIA       1                    NA                 0.0014131   -0.0070414   0.0098676
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0150815    0.0023717   0.0277913
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0017773   -0.0047774   0.0012228
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0009179   -0.0019059   0.0037416
24 months   Keneba      GAMBIA       1                    NA                 0.0081059   -0.0001158   0.0163277


### Parameter: PAF


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0490545   -0.1358895    0.0311422
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.1857983   -0.1581856    0.4276181
Birth       Keneba      GAMBIA       1                    NA                -0.2445016   -0.5426580   -0.0039712
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0624667   -0.1643631    0.0305125
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.1752087   -0.1140416    0.3893579
6 months    Keneba      GAMBIA       1                    NA                 0.0842577   -0.5865784    0.4714513
24 months   GMS-Nepal   NEPAL        1                    NA                 0.4715493    0.0254393    0.7134502
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0461824   -0.1247463    0.0268937
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0362294   -0.0829105    0.1422617
24 months   Keneba      GAMBIA       1                    NA                 0.4545324   -0.1981385    0.7516690
