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

**Intervention Variable:** exclfeed6

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

agecat      studyid          country                        exclfeed6    sstunted   n_cell       n
----------  ---------------  -----------------------------  ----------  ---------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                   0        7       7
Birth       CMC-V-BCS-2002   INDIA                          1                   1        0       7
Birth       CMC-V-BCS-2002   INDIA                          0                   0        0       7
Birth       CMC-V-BCS-2002   INDIA                          0                   1        0       7
Birth       EE               PAKISTAN                       1                   0       30      42
Birth       EE               PAKISTAN                       1                   1        8      42
Birth       EE               PAKISTAN                       0                   0        4      42
Birth       EE               PAKISTAN                       0                   1        0      42
Birth       GMS-Nepal        NEPAL                          1                   0      404     563
Birth       GMS-Nepal        NEPAL                          1                   1       15     563
Birth       GMS-Nepal        NEPAL                          0                   0      138     563
Birth       GMS-Nepal        NEPAL                          0                   1        6     563
Birth       IRC              INDIA                          1                   0        0      14
Birth       IRC              INDIA                          1                   1        0      14
Birth       IRC              INDIA                          0                   0       14      14
Birth       IRC              INDIA                          0                   1        0      14
Birth       JiVitA-3         BANGLADESH                     1                   0     9303   13423
Birth       JiVitA-3         BANGLADESH                     1                   1     1149   13423
Birth       JiVitA-3         BANGLADESH                     0                   0     2637   13423
Birth       JiVitA-3         BANGLADESH                     0                   1      334   13423
Birth       JiVitA-4         BANGLADESH                     1                   0     1944    2632
Birth       JiVitA-4         BANGLADESH                     1                   1      154    2632
Birth       JiVitA-4         BANGLADESH                     0                   0      466    2632
Birth       JiVitA-4         BANGLADESH                     0                   1       68    2632
Birth       Keneba           GAMBIA                         1                   0      475    1403
Birth       Keneba           GAMBIA                         1                   1       10    1403
Birth       Keneba           GAMBIA                         0                   0      899    1403
Birth       Keneba           GAMBIA                         0                   1       19    1403
Birth       MAL-ED           BANGLADESH                     1                   0       31     205
Birth       MAL-ED           BANGLADESH                     1                   1        0     205
Birth       MAL-ED           BANGLADESH                     0                   0      169     205
Birth       MAL-ED           BANGLADESH                     0                   1        5     205
Birth       MAL-ED           BRAZIL                         1                   0        1      60
Birth       MAL-ED           BRAZIL                         1                   1        1      60
Birth       MAL-ED           BRAZIL                         0                   0       56      60
Birth       MAL-ED           BRAZIL                         0                   1        2      60
Birth       MAL-ED           INDIA                          1                   0        1      39
Birth       MAL-ED           INDIA                          1                   1        0      39
Birth       MAL-ED           INDIA                          0                   0       36      39
Birth       MAL-ED           INDIA                          0                   1        2      39
Birth       MAL-ED           NEPAL                          1                   0        2      24
Birth       MAL-ED           NEPAL                          1                   1        0      24
Birth       MAL-ED           NEPAL                          0                   0       21      24
Birth       MAL-ED           NEPAL                          0                   1        1      24
Birth       MAL-ED           PERU                           1                   0        2     213
Birth       MAL-ED           PERU                           1                   1        0     213
Birth       MAL-ED           PERU                           0                   0      207     213
Birth       MAL-ED           PERU                           0                   1        4     213
Birth       MAL-ED           SOUTH AFRICA                   1                   0        0      91
Birth       MAL-ED           SOUTH AFRICA                   1                   1        0      91
Birth       MAL-ED           SOUTH AFRICA                   0                   0       90      91
Birth       MAL-ED           SOUTH AFRICA                   0                   1        1      91
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        0     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      105     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        8     113
Birth       PROVIDE          BANGLADESH                     1                   0      158     539
Birth       PROVIDE          BANGLADESH                     1                   1        1     539
Birth       PROVIDE          BANGLADESH                     0                   0      377     539
Birth       PROVIDE          BANGLADESH                     0                   1        3     539
Birth       SAS-CompFeed     INDIA                          1                   0      323     364
Birth       SAS-CompFeed     INDIA                          1                   1       23     364
Birth       SAS-CompFeed     INDIA                          0                   0       15     364
Birth       SAS-CompFeed     INDIA                          0                   1        3     364
6 months    CMC-V-BCS-2002   INDIA                          1                   0       17      19
6 months    CMC-V-BCS-2002   INDIA                          1                   1        2      19
6 months    CMC-V-BCS-2002   INDIA                          0                   0        0      19
6 months    CMC-V-BCS-2002   INDIA                          0                   1        0      19
6 months    EE               PAKISTAN                       1                   0       31      48
6 months    EE               PAKISTAN                       1                   1       12      48
6 months    EE               PAKISTAN                       0                   0        5      48
6 months    EE               PAKISTAN                       0                   1        0      48
6 months    GMS-Nepal        NEPAL                          1                   0      394     547
6 months    GMS-Nepal        NEPAL                          1                   1       12     547
6 months    GMS-Nepal        NEPAL                          0                   0      132     547
6 months    GMS-Nepal        NEPAL                          0                   1        9     547
6 months    IRC              INDIA                          1                   0        0      14
6 months    IRC              INDIA                          1                   1        0      14
6 months    IRC              INDIA                          0                   0       13      14
6 months    IRC              INDIA                          0                   1        1      14
6 months    JiVitA-3         BANGLADESH                     1                   0     7168    9901
6 months    JiVitA-3         BANGLADESH                     1                   1      460    9901
6 months    JiVitA-3         BANGLADESH                     0                   0     2124    9901
6 months    JiVitA-3         BANGLADESH                     0                   1      149    9901
6 months    JiVitA-4         BANGLADESH                     1                   0     3173    4272
6 months    JiVitA-4         BANGLADESH                     1                   1      143    4272
6 months    JiVitA-4         BANGLADESH                     0                   0      865    4272
6 months    JiVitA-4         BANGLADESH                     0                   1       91    4272
6 months    Keneba           GAMBIA                         1                   0      564    1908
6 months    Keneba           GAMBIA                         1                   1       22    1908
6 months    Keneba           GAMBIA                         0                   0     1280    1908
6 months    Keneba           GAMBIA                         0                   1       42    1908
6 months    LCNI-5           MALAWI                         1                   0       44     272
6 months    LCNI-5           MALAWI                         1                   1        3     272
6 months    LCNI-5           MALAWI                         0                   0      208     272
6 months    LCNI-5           MALAWI                         0                   1       17     272
6 months    MAL-ED           BANGLADESH                     1                   0       32     231
6 months    MAL-ED           BANGLADESH                     1                   1        1     231
6 months    MAL-ED           BANGLADESH                     0                   0      192     231
6 months    MAL-ED           BANGLADESH                     0                   1        6     231
6 months    MAL-ED           BRAZIL                         1                   0       12     209
6 months    MAL-ED           BRAZIL                         1                   1        0     209
6 months    MAL-ED           BRAZIL                         0                   0      197     209
6 months    MAL-ED           BRAZIL                         0                   1        0     209
6 months    MAL-ED           INDIA                          1                   0        1     218
6 months    MAL-ED           INDIA                          1                   1        1     218
6 months    MAL-ED           INDIA                          0                   0      208     218
6 months    MAL-ED           INDIA                          0                   1        8     218
6 months    MAL-ED           NEPAL                          1                   0        5     225
6 months    MAL-ED           NEPAL                          1                   1        0     225
6 months    MAL-ED           NEPAL                          0                   0      219     225
6 months    MAL-ED           NEPAL                          0                   1        1     225
6 months    MAL-ED           PERU                           1                   0        5     271
6 months    MAL-ED           PERU                           1                   1        0     271
6 months    MAL-ED           PERU                           0                   0      256     271
6 months    MAL-ED           PERU                           0                   1       10     271
6 months    MAL-ED           SOUTH AFRICA                   1                   0        0     233
6 months    MAL-ED           SOUTH AFRICA                   1                   1        0     233
6 months    MAL-ED           SOUTH AFRICA                   0                   0      229     233
6 months    MAL-ED           SOUTH AFRICA                   0                   1        4     233
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        0     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      218     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       14     232
6 months    PROVIDE          BANGLADESH                     1                   0      139     604
6 months    PROVIDE          BANGLADESH                     1                   1        2     604
6 months    PROVIDE          BANGLADESH                     0                   0      451     604
6 months    PROVIDE          BANGLADESH                     0                   1       12     604
6 months    SAS-CompFeed     INDIA                          1                   0      342     398
6 months    SAS-CompFeed     INDIA                          1                   1       37     398
6 months    SAS-CompFeed     INDIA                          0                   0       16     398
6 months    SAS-CompFeed     INDIA                          0                   1        3     398
6 months    SAS-FoodSuppl    INDIA                          1                   0        0     168
6 months    SAS-FoodSuppl    INDIA                          1                   1        0     168
6 months    SAS-FoodSuppl    INDIA                          0                   0      140     168
6 months    SAS-FoodSuppl    INDIA                          0                   1       28     168
24 months   CMC-V-BCS-2002   INDIA                          1                   0       14      19
24 months   CMC-V-BCS-2002   INDIA                          1                   1        5      19
24 months   CMC-V-BCS-2002   INDIA                          0                   0        0      19
24 months   CMC-V-BCS-2002   INDIA                          0                   1        0      19
24 months   EE               PAKISTAN                       1                   0       12      23
24 months   EE               PAKISTAN                       1                   1        8      23
24 months   EE               PAKISTAN                       0                   0        3      23
24 months   EE               PAKISTAN                       0                   1        0      23
24 months   GMS-Nepal        NEPAL                          1                   0      320     470
24 months   GMS-Nepal        NEPAL                          1                   1       36     470
24 months   GMS-Nepal        NEPAL                          0                   0       98     470
24 months   GMS-Nepal        NEPAL                          0                   1       16     470
24 months   IRC              INDIA                          1                   0        0      14
24 months   IRC              INDIA                          1                   1        0      14
24 months   IRC              INDIA                          0                   0       13      14
24 months   IRC              INDIA                          0                   1        1      14
24 months   JiVitA-3         BANGLADESH                     1                   0     3319    5088
24 months   JiVitA-3         BANGLADESH                     1                   1      597    5088
24 months   JiVitA-3         BANGLADESH                     0                   0     1001    5088
24 months   JiVitA-3         BANGLADESH                     0                   1      171    5088
24 months   JiVitA-4         BANGLADESH                     1                   0     2999    4199
24 months   JiVitA-4         BANGLADESH                     1                   1      281    4199
24 months   JiVitA-4         BANGLADESH                     0                   0      800    4199
24 months   JiVitA-4         BANGLADESH                     0                   1      119    4199
24 months   Keneba           GAMBIA                         1                   0      478    1513
24 months   Keneba           GAMBIA                         1                   1       37    1513
24 months   Keneba           GAMBIA                         0                   0      907    1513
24 months   Keneba           GAMBIA                         0                   1       91    1513
24 months   LCNI-5           MALAWI                         1                   0       30     189
24 months   LCNI-5           MALAWI                         1                   1        4     189
24 months   LCNI-5           MALAWI                         0                   0      135     189
24 months   LCNI-5           MALAWI                         0                   1       20     189
24 months   MAL-ED           BANGLADESH                     1                   0       26     205
24 months   MAL-ED           BANGLADESH                     1                   1        5     205
24 months   MAL-ED           BANGLADESH                     0                   0      153     205
24 months   MAL-ED           BANGLADESH                     0                   1       21     205
24 months   MAL-ED           BRAZIL                         1                   0       11     169
24 months   MAL-ED           BRAZIL                         1                   1        0     169
24 months   MAL-ED           BRAZIL                         0                   0      157     169
24 months   MAL-ED           BRAZIL                         0                   1        1     169
24 months   MAL-ED           INDIA                          1                   0        1     209
24 months   MAL-ED           INDIA                          1                   1        1     209
24 months   MAL-ED           INDIA                          0                   0      181     209
24 months   MAL-ED           INDIA                          0                   1       26     209
24 months   MAL-ED           NEPAL                          1                   0        5     219
24 months   MAL-ED           NEPAL                          1                   1        0     219
24 months   MAL-ED           NEPAL                          0                   0      207     219
24 months   MAL-ED           NEPAL                          0                   1        7     219
24 months   MAL-ED           PERU                           1                   0        3     201
24 months   MAL-ED           PERU                           1                   1        0     201
24 months   MAL-ED           PERU                           0                   0      183     201
24 months   MAL-ED           PERU                           0                   1       15     201
24 months   MAL-ED           SOUTH AFRICA                   1                   0        0     216
24 months   MAL-ED           SOUTH AFRICA                   1                   1        0     216
24 months   MAL-ED           SOUTH AFRICA                   0                   0      192     216
24 months   MAL-ED           SOUTH AFRICA                   0                   1       24     216
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        0     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      134     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       68     202
24 months   PROVIDE          BANGLADESH                     1                   0      125     578
24 months   PROVIDE          BANGLADESH                     1                   1       12     578
24 months   PROVIDE          BANGLADESH                     0                   0      401     578
24 months   PROVIDE          BANGLADESH                     0                   1       40     578


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
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/e4178131-76dc-4fbb-93c0-8c00b75f9ea2/b6f6c8d4-549f-440e-9353-ed6c1b792433/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e4178131-76dc-4fbb-93c0-8c00b75f9ea2/b6f6c8d4-549f-440e-9353-ed6c1b792433/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e4178131-76dc-4fbb-93c0-8c00b75f9ea2/b6f6c8d4-549f-440e-9353-ed6c1b792433/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e4178131-76dc-4fbb-93c0-8c00b75f9ea2/b6f6c8d4-549f-440e-9353-ed6c1b792433/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                0.0357995   0.0179942   0.0536048
Birth       GMS-Nepal   NEPAL        0                    NA                0.0416667   0.0089999   0.0743334
Birth       JiVitA-3    BANGLADESH   1                    NA                0.1104595   0.1046563   0.1162627
Birth       JiVitA-3    BANGLADESH   0                    NA                0.1105156   0.1044118   0.1166194
Birth       JiVitA-4    BANGLADESH   1                    NA                0.0740360   0.0604220   0.0876499
Birth       JiVitA-4    BANGLADESH   0                    NA                0.1214268   0.0918435   0.1510100
Birth       Keneba      GAMBIA       1                    NA                0.0206186   0.0079461   0.0332912
Birth       Keneba      GAMBIA       0                    NA                0.0204632   0.0113514   0.0295751
6 months    GMS-Nepal   NEPAL        1                    NA                0.0295567   0.0130676   0.0460457
6 months    GMS-Nepal   NEPAL        0                    NA                0.0638298   0.0234443   0.1042152
6 months    JiVitA-3    BANGLADESH   1                    NA                0.0603213   0.0546554   0.0659872
6 months    JiVitA-3    BANGLADESH   0                    NA                0.0655598   0.0551110   0.0760087
6 months    JiVitA-4    BANGLADESH   1                    NA                0.0453874   0.0381406   0.0526342
6 months    JiVitA-4    BANGLADESH   0                    NA                0.0813059   0.0633360   0.0992758
6 months    Keneba      GAMBIA       1                    NA                0.0387480   0.0233552   0.0541408
6 months    Keneba      GAMBIA       0                    NA                0.0313987   0.0219797   0.0408178
24 months   GMS-Nepal   NEPAL        1                    NA                0.1009470   0.0695286   0.1323654
24 months   GMS-Nepal   NEPAL        0                    NA                0.1370163   0.0714307   0.2026019
24 months   JiVitA-3    BANGLADESH   1                    NA                0.1523715   0.1397794   0.1649637
24 months   JiVitA-3    BANGLADESH   0                    NA                0.1462357   0.1196779   0.1727934
24 months   JiVitA-4    BANGLADESH   1                    NA                0.0881920   0.0765548   0.0998291
24 months   JiVitA-4    BANGLADESH   0                    NA                0.1185414   0.0965268   0.1405561
24 months   Keneba      GAMBIA       1                    NA                0.0707315   0.0483928   0.0930703
24 months   Keneba      GAMBIA       0                    NA                0.0894810   0.0716192   0.1073429
24 months   MAL-ED      BANGLADESH   1                    NA                0.1612903   0.0315010   0.2910797
24 months   MAL-ED      BANGLADESH   0                    NA                0.1206897   0.0721673   0.1692120
24 months   PROVIDE     BANGLADESH   1                    NA                0.0878585   0.0401853   0.1355318
24 months   PROVIDE     BANGLADESH   0                    NA                0.0905137   0.0636883   0.1173390


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        NA                   NA                0.0373002   0.0216334   0.0529670
Birth       JiVitA-3    BANGLADESH   NA                   NA                0.1104820   0.1047181   0.1162459
Birth       JiVitA-4    BANGLADESH   NA                   NA                0.0843465   0.0720577   0.0966353
Birth       Keneba      GAMBIA       NA                   NA                0.0206700   0.0132225   0.0281175
6 months    GMS-Nepal   NEPAL        NA                   NA                0.0383912   0.0222749   0.0545076
6 months    JiVitA-3    BANGLADESH   NA                   NA                0.0615089   0.0563485   0.0666694
6 months    JiVitA-4    BANGLADESH   NA                   NA                0.0547753   0.0477475   0.0618030
6 months    Keneba      GAMBIA       NA                   NA                0.0335430   0.0254620   0.0416240
24 months   GMS-Nepal   NEPAL        NA                   NA                0.1106383   0.0822491   0.1390275
24 months   JiVitA-3    BANGLADESH   NA                   NA                0.1509434   0.1390224   0.1628644
24 months   JiVitA-4    BANGLADESH   NA                   NA                0.0952608   0.0849096   0.1056119
24 months   Keneba      GAMBIA       NA                   NA                0.0846001   0.0705732   0.0986271
24 months   MAL-ED      BANGLADESH   NA                   NA                0.1268293   0.0811633   0.1724952
24 months   PROVIDE     BANGLADESH   NA                   NA                0.0899654   0.0666186   0.1133122


### Parameter: RR


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal   NEPAL        0                    1                 1.1638889   0.4599272   2.945330
Birth       JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3    BANGLADESH   0                    1                 1.0005082   0.9764731   1.025135
Birth       JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4    BANGLADESH   0                    1                 1.6401047   1.2073699   2.227936
Birth       Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       Keneba      GAMBIA       0                    1                 0.9924633   0.4643700   2.121118
6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal   NEPAL        0                    1                 2.1595745   0.9290246   5.020063
6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3    BANGLADESH   0                    1                 1.0868443   0.9097658   1.298390
6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4    BANGLADESH   0                    1                 1.7913762   1.3743854   2.334883
6 months    Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    Keneba      GAMBIA       0                    1                 0.8103315   0.4928368   1.332362
24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal   NEPAL        0                    1                 1.3573093   0.7665178   2.403452
24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3    BANGLADESH   0                    1                 0.9597311   0.7917989   1.163280
24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4    BANGLADESH   0                    1                 1.3441294   1.0759314   1.679181
24 months   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   Keneba      GAMBIA       0                    1                 1.2650797   0.8707466   1.837993
24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED      BANGLADESH   0                    1                 0.7482759   0.3043666   1.839613
24 months   PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   PROVIDE     BANGLADESH   0                    1                 1.0302206   0.5550247   1.912265


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                 0.0015007   -0.0080175   0.0110188
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0000225   -0.0005713   0.0006163
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.0103105    0.0035134   0.0171076
Birth       Keneba      GAMBIA       1                    NA                 0.0000514   -0.0102296   0.0103323
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0088346   -0.0024799   0.0201491
6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0011877   -0.0014376   0.0038130
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0093879    0.0050901   0.0136856
6 months    Keneba      GAMBIA       1                    NA                -0.0052050   -0.0177290   0.0073189
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0096913   -0.0076855   0.0270681
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0014281   -0.0079190   0.0050627
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0070688    0.0017418   0.0123958
24 months   Keneba      GAMBIA       1                    NA                 0.0138686   -0.0050326   0.0327698
24 months   MAL-ED      BANGLADESH   1                    NA                -0.0344611   -0.1520875   0.0831654
24 months   PROVIDE     BANGLADESH   1                    NA                 0.0021069   -0.0397028   0.0439166


### Parameter: PAF


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                 0.0402318   -0.2514084   0.2639055
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0002040   -0.0051853   0.0055644
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.1222401    0.0370733   0.1998743
Birth       Keneba      GAMBIA       1                    NA                 0.0024844   -0.6423562   0.3941403
6 months    GMS-Nepal   NEPAL        1                    NA                 0.2301196   -0.1068011   0.4644785
6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0193086   -0.0242588   0.0610228
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.1713888    0.0918866   0.2439308
6 months    Keneba      GAMBIA       1                    NA                -0.1551754   -0.5947592   0.1632404
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0875945   -0.0824310   0.2309128
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0094613   -0.0535281   0.0327623
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0742047    0.0159540   0.1290072
24 months   Keneba      GAMBIA       1                    NA                 0.1639312   -0.0906591   0.3590931
24 months   MAL-ED      BANGLADESH   1                    NA                -0.2717122   -1.6302666   0.3851377
24 months   PROVIDE     BANGLADESH   1                    NA                 0.0234186   -0.5716937   0.3931952
