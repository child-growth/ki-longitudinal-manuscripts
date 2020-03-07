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

**Outcome Variable:** stunted

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

agecat      studyid          country                        exclfeed6    stunted   n_cell       n
----------  ---------------  -----------------------------  ----------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                  0        7       7
Birth       CMC-V-BCS-2002   INDIA                          1                  1        0       7
Birth       CMC-V-BCS-2002   INDIA                          0                  0        0       7
Birth       CMC-V-BCS-2002   INDIA                          0                  1        0       7
Birth       EE               PAKISTAN                       1                  0       22      42
Birth       EE               PAKISTAN                       1                  1       16      42
Birth       EE               PAKISTAN                       0                  0        3      42
Birth       EE               PAKISTAN                       0                  1        1      42
Birth       GMS-Nepal        NEPAL                          1                  0      351     563
Birth       GMS-Nepal        NEPAL                          1                  1       68     563
Birth       GMS-Nepal        NEPAL                          0                  0      118     563
Birth       GMS-Nepal        NEPAL                          0                  1       26     563
Birth       IRC              INDIA                          1                  0        0      14
Birth       IRC              INDIA                          1                  1        0      14
Birth       IRC              INDIA                          0                  0       13      14
Birth       IRC              INDIA                          0                  1        1      14
Birth       JiVitA-3         BANGLADESH                     1                  0     7003   13423
Birth       JiVitA-3         BANGLADESH                     1                  1     3449   13423
Birth       JiVitA-3         BANGLADESH                     0                  0     1976   13423
Birth       JiVitA-3         BANGLADESH                     0                  1      995   13423
Birth       JiVitA-4         BANGLADESH                     1                  0     1476    2632
Birth       JiVitA-4         BANGLADESH                     1                  1      622    2632
Birth       JiVitA-4         BANGLADESH                     0                  0      357    2632
Birth       JiVitA-4         BANGLADESH                     0                  1      177    2632
Birth       Keneba           GAMBIA                         1                  0      459    1403
Birth       Keneba           GAMBIA                         1                  1       26    1403
Birth       Keneba           GAMBIA                         0                  0      865    1403
Birth       Keneba           GAMBIA                         0                  1       53    1403
Birth       MAL-ED           BANGLADESH                     1                  0       26     205
Birth       MAL-ED           BANGLADESH                     1                  1        5     205
Birth       MAL-ED           BANGLADESH                     0                  0      143     205
Birth       MAL-ED           BANGLADESH                     0                  1       31     205
Birth       MAL-ED           BRAZIL                         1                  0        0      60
Birth       MAL-ED           BRAZIL                         1                  1        2      60
Birth       MAL-ED           BRAZIL                         0                  0       51      60
Birth       MAL-ED           BRAZIL                         0                  1        7      60
Birth       MAL-ED           INDIA                          1                  0        0      39
Birth       MAL-ED           INDIA                          1                  1        1      39
Birth       MAL-ED           INDIA                          0                  0       31      39
Birth       MAL-ED           INDIA                          0                  1        7      39
Birth       MAL-ED           NEPAL                          1                  0        2      24
Birth       MAL-ED           NEPAL                          1                  1        0      24
Birth       MAL-ED           NEPAL                          0                  0       21      24
Birth       MAL-ED           NEPAL                          0                  1        1      24
Birth       MAL-ED           PERU                           1                  0        2     213
Birth       MAL-ED           PERU                           1                  1        0     213
Birth       MAL-ED           PERU                           0                  0      185     213
Birth       MAL-ED           PERU                           0                  1       26     213
Birth       MAL-ED           SOUTH AFRICA                   1                  0        0      91
Birth       MAL-ED           SOUTH AFRICA                   1                  1        0      91
Birth       MAL-ED           SOUTH AFRICA                   0                  0       83      91
Birth       MAL-ED           SOUTH AFRICA                   0                  1        8      91
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        0     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0       92     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       21     113
Birth       PROVIDE          BANGLADESH                     1                  0      148     539
Birth       PROVIDE          BANGLADESH                     1                  1       11     539
Birth       PROVIDE          BANGLADESH                     0                  0      343     539
Birth       PROVIDE          BANGLADESH                     0                  1       37     539
Birth       SAS-CompFeed     INDIA                          1                  0      257     364
Birth       SAS-CompFeed     INDIA                          1                  1       89     364
Birth       SAS-CompFeed     INDIA                          0                  0       12     364
Birth       SAS-CompFeed     INDIA                          0                  1        6     364
6 months    CMC-V-BCS-2002   INDIA                          1                  0       12      19
6 months    CMC-V-BCS-2002   INDIA                          1                  1        7      19
6 months    CMC-V-BCS-2002   INDIA                          0                  0        0      19
6 months    CMC-V-BCS-2002   INDIA                          0                  1        0      19
6 months    EE               PAKISTAN                       1                  0       20      48
6 months    EE               PAKISTAN                       1                  1       23      48
6 months    EE               PAKISTAN                       0                  0        4      48
6 months    EE               PAKISTAN                       0                  1        1      48
6 months    GMS-Nepal        NEPAL                          1                  0      326     547
6 months    GMS-Nepal        NEPAL                          1                  1       80     547
6 months    GMS-Nepal        NEPAL                          0                  0      103     547
6 months    GMS-Nepal        NEPAL                          0                  1       38     547
6 months    IRC              INDIA                          1                  0        0      14
6 months    IRC              INDIA                          1                  1        0      14
6 months    IRC              INDIA                          0                  0       11      14
6 months    IRC              INDIA                          0                  1        3      14
6 months    JiVitA-3         BANGLADESH                     1                  0     5758    9901
6 months    JiVitA-3         BANGLADESH                     1                  1     1870    9901
6 months    JiVitA-3         BANGLADESH                     0                  0     1685    9901
6 months    JiVitA-3         BANGLADESH                     0                  1      588    9901
6 months    JiVitA-4         BANGLADESH                     1                  0     2534    4272
6 months    JiVitA-4         BANGLADESH                     1                  1      782    4272
6 months    JiVitA-4         BANGLADESH                     0                  0      665    4272
6 months    JiVitA-4         BANGLADESH                     0                  1      291    4272
6 months    Keneba           GAMBIA                         1                  0      502    1908
6 months    Keneba           GAMBIA                         1                  1       84    1908
6 months    Keneba           GAMBIA                         0                  0     1124    1908
6 months    Keneba           GAMBIA                         0                  1      198    1908
6 months    LCNI-5           MALAWI                         1                  0       30     272
6 months    LCNI-5           MALAWI                         1                  1       17     272
6 months    LCNI-5           MALAWI                         0                  0      145     272
6 months    LCNI-5           MALAWI                         0                  1       80     272
6 months    MAL-ED           BANGLADESH                     1                  0       27     231
6 months    MAL-ED           BANGLADESH                     1                  1        6     231
6 months    MAL-ED           BANGLADESH                     0                  0      163     231
6 months    MAL-ED           BANGLADESH                     0                  1       35     231
6 months    MAL-ED           BRAZIL                         1                  0       12     209
6 months    MAL-ED           BRAZIL                         1                  1        0     209
6 months    MAL-ED           BRAZIL                         0                  0      191     209
6 months    MAL-ED           BRAZIL                         0                  1        6     209
6 months    MAL-ED           INDIA                          1                  0        1     218
6 months    MAL-ED           INDIA                          1                  1        1     218
6 months    MAL-ED           INDIA                          0                  0      176     218
6 months    MAL-ED           INDIA                          0                  1       40     218
6 months    MAL-ED           NEPAL                          1                  0        5     225
6 months    MAL-ED           NEPAL                          1                  1        0     225
6 months    MAL-ED           NEPAL                          0                  0      208     225
6 months    MAL-ED           NEPAL                          0                  1       12     225
6 months    MAL-ED           PERU                           1                  0        3     271
6 months    MAL-ED           PERU                           1                  1        2     271
6 months    MAL-ED           PERU                           0                  0      208     271
6 months    MAL-ED           PERU                           0                  1       58     271
6 months    MAL-ED           SOUTH AFRICA                   1                  0        0     233
6 months    MAL-ED           SOUTH AFRICA                   1                  1        0     233
6 months    MAL-ED           SOUTH AFRICA                   0                  0      190     233
6 months    MAL-ED           SOUTH AFRICA                   0                  1       43     233
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        0     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      174     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       58     232
6 months    PROVIDE          BANGLADESH                     1                  0      123     604
6 months    PROVIDE          BANGLADESH                     1                  1       18     604
6 months    PROVIDE          BANGLADESH                     0                  0      385     604
6 months    PROVIDE          BANGLADESH                     0                  1       78     604
6 months    SAS-CompFeed     INDIA                          1                  0      260     398
6 months    SAS-CompFeed     INDIA                          1                  1      119     398
6 months    SAS-CompFeed     INDIA                          0                  0       13     398
6 months    SAS-CompFeed     INDIA                          0                  1        6     398
6 months    SAS-FoodSuppl    INDIA                          1                  0        0     168
6 months    SAS-FoodSuppl    INDIA                          1                  1        0     168
6 months    SAS-FoodSuppl    INDIA                          0                  0       87     168
6 months    SAS-FoodSuppl    INDIA                          0                  1       81     168
24 months   CMC-V-BCS-2002   INDIA                          1                  0        7      19
24 months   CMC-V-BCS-2002   INDIA                          1                  1       12      19
24 months   CMC-V-BCS-2002   INDIA                          0                  0        0      19
24 months   CMC-V-BCS-2002   INDIA                          0                  1        0      19
24 months   EE               PAKISTAN                       1                  0        5      23
24 months   EE               PAKISTAN                       1                  1       15      23
24 months   EE               PAKISTAN                       0                  0        2      23
24 months   EE               PAKISTAN                       0                  1        1      23
24 months   GMS-Nepal        NEPAL                          1                  0      199     470
24 months   GMS-Nepal        NEPAL                          1                  1      157     470
24 months   GMS-Nepal        NEPAL                          0                  0       57     470
24 months   GMS-Nepal        NEPAL                          0                  1       57     470
24 months   IRC              INDIA                          1                  0        0      14
24 months   IRC              INDIA                          1                  1        0      14
24 months   IRC              INDIA                          0                  0        5      14
24 months   IRC              INDIA                          0                  1        9      14
24 months   JiVitA-3         BANGLADESH                     1                  0     2002    5088
24 months   JiVitA-3         BANGLADESH                     1                  1     1914    5088
24 months   JiVitA-3         BANGLADESH                     0                  0      582    5088
24 months   JiVitA-3         BANGLADESH                     0                  1      590    5088
24 months   JiVitA-4         BANGLADESH                     1                  0     1984    4199
24 months   JiVitA-4         BANGLADESH                     1                  1     1296    4199
24 months   JiVitA-4         BANGLADESH                     0                  0      514    4199
24 months   JiVitA-4         BANGLADESH                     0                  1      405    4199
24 months   Keneba           GAMBIA                         1                  0      365    1513
24 months   Keneba           GAMBIA                         1                  1      150    1513
24 months   Keneba           GAMBIA                         0                  0      638    1513
24 months   Keneba           GAMBIA                         0                  1      360    1513
24 months   LCNI-5           MALAWI                         1                  0       17     189
24 months   LCNI-5           MALAWI                         1                  1       17     189
24 months   LCNI-5           MALAWI                         0                  0       80     189
24 months   LCNI-5           MALAWI                         0                  1       75     189
24 months   MAL-ED           BANGLADESH                     1                  0       16     205
24 months   MAL-ED           BANGLADESH                     1                  1       15     205
24 months   MAL-ED           BANGLADESH                     0                  0       93     205
24 months   MAL-ED           BANGLADESH                     0                  1       81     205
24 months   MAL-ED           BRAZIL                         1                  0       11     169
24 months   MAL-ED           BRAZIL                         1                  1        0     169
24 months   MAL-ED           BRAZIL                         0                  0      151     169
24 months   MAL-ED           BRAZIL                         0                  1        7     169
24 months   MAL-ED           INDIA                          1                  0        0     209
24 months   MAL-ED           INDIA                          1                  1        2     209
24 months   MAL-ED           INDIA                          0                  0      120     209
24 months   MAL-ED           INDIA                          0                  1       87     209
24 months   MAL-ED           NEPAL                          1                  0        5     219
24 months   MAL-ED           NEPAL                          1                  1        0     219
24 months   MAL-ED           NEPAL                          0                  0      165     219
24 months   MAL-ED           NEPAL                          0                  1       49     219
24 months   MAL-ED           PERU                           1                  0        0     201
24 months   MAL-ED           PERU                           1                  1        3     201
24 months   MAL-ED           PERU                           0                  0      127     201
24 months   MAL-ED           PERU                           0                  1       71     201
24 months   MAL-ED           SOUTH AFRICA                   1                  0        0     216
24 months   MAL-ED           SOUTH AFRICA                   1                  1        0     216
24 months   MAL-ED           SOUTH AFRICA                   0                  0      144     216
24 months   MAL-ED           SOUTH AFRICA                   0                  1       72     216
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        0     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0       54     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1      148     202
24 months   PROVIDE          BANGLADESH                     1                  0       88     578
24 months   PROVIDE          BANGLADESH                     1                  1       49     578
24 months   PROVIDE          BANGLADESH                     0                  0      300     578
24 months   PROVIDE          BANGLADESH                     0                  1      141     578


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
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/a61f2926-0de9-4a49-ba6f-900a23780b1d/a83a4bf2-3214-473a-9db8-b744eb6d1beb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a61f2926-0de9-4a49-ba6f-900a23780b1d/a83a4bf2-3214-473a-9db8-b744eb6d1beb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a61f2926-0de9-4a49-ba6f-900a23780b1d/a83a4bf2-3214-473a-9db8-b744eb6d1beb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a61f2926-0de9-4a49-ba6f-900a23780b1d/a83a4bf2-3214-473a-9db8-b744eb6d1beb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal      NEPAL        1                    NA                0.1620879   0.1267303   0.1974455
Birth       GMS-Nepal      NEPAL        0                    NA                0.1760426   0.1128298   0.2392554
Birth       JiVitA-3       BANGLADESH   1                    NA                0.3306747   0.3214353   0.3399141
Birth       JiVitA-3       BANGLADESH   0                    NA                0.3326003   0.3228576   0.3423430
Birth       JiVitA-4       BANGLADESH   1                    NA                0.3046438   0.2831336   0.3261541
Birth       JiVitA-4       BANGLADESH   0                    NA                0.2985290   0.2746539   0.3224041
Birth       Keneba         GAMBIA       1                    NA                0.0537581   0.0334503   0.0740658
Birth       Keneba         GAMBIA       0                    NA                0.0580854   0.0428441   0.0733267
Birth       MAL-ED         BANGLADESH   1                    NA                0.1612903   0.0315010   0.2910797
Birth       MAL-ED         BANGLADESH   0                    NA                0.1781609   0.1211662   0.2351557
Birth       PROVIDE        BANGLADESH   1                    NA                0.0667456   0.0271932   0.1062980
Birth       PROVIDE        BANGLADESH   0                    NA                0.0985082   0.0685230   0.1284933
Birth       SAS-CompFeed   INDIA        1                    NA                0.2572254   0.2236819   0.2907690
Birth       SAS-CompFeed   INDIA        0                    NA                0.3333333   0.0564891   0.6101775
6 months    GMS-Nepal      NEPAL        1                    NA                0.1968923   0.1580923   0.2356922
6 months    GMS-Nepal      NEPAL        0                    NA                0.2675633   0.1930519   0.3420746
6 months    JiVitA-3       BANGLADESH   1                    NA                0.2458596   0.2348995   0.2568197
6 months    JiVitA-3       BANGLADESH   0                    NA                0.2563263   0.2384205   0.2742320
6 months    JiVitA-4       BANGLADESH   1                    NA                0.2428377   0.2268521   0.2588234
6 months    JiVitA-4       BANGLADESH   0                    NA                0.2829584   0.2505519   0.3153649
6 months    Keneba         GAMBIA       1                    NA                0.1391046   0.1117384   0.1664709
6 months    Keneba         GAMBIA       0                    NA                0.1509325   0.1318782   0.1699867
6 months    LCNI-5         MALAWI       1                    NA                0.3782323   0.2414586   0.5150060
6 months    LCNI-5         MALAWI       0                    NA                0.3565961   0.2938590   0.4193332
6 months    MAL-ED         BANGLADESH   1                    NA                0.1818182   0.0499388   0.3136975
6 months    MAL-ED         BANGLADESH   0                    NA                0.1767677   0.1235176   0.2300177
6 months    PROVIDE        BANGLADESH   1                    NA                0.1204744   0.0651403   0.1758085
6 months    PROVIDE        BANGLADESH   0                    NA                0.1679179   0.1338182   0.2020177
6 months    SAS-CompFeed   INDIA        1                    NA                0.3139842   0.2679102   0.3600581
6 months    SAS-CompFeed   INDIA        0                    NA                0.3157895   0.1014523   0.5301266
24 months   GMS-Nepal      NEPAL        1                    NA                0.4425419   0.3910047   0.4940790
24 months   GMS-Nepal      NEPAL        0                    NA                0.5154895   0.4278607   0.6031183
24 months   JiVitA-3       BANGLADESH   1                    NA                0.4873502   0.4686891   0.5060113
24 months   JiVitA-3       BANGLADESH   0                    NA                0.5082069   0.4763799   0.5400340
24 months   JiVitA-4       BANGLADESH   1                    NA                0.4005783   0.3808834   0.4202731
24 months   JiVitA-4       BANGLADESH   0                    NA                0.4207816   0.3836673   0.4578959
24 months   Keneba         GAMBIA       1                    NA                0.2893387   0.2509864   0.3276910
24 months   Keneba         GAMBIA       0                    NA                0.3566970   0.3274007   0.3859933
24 months   LCNI-5         MALAWI       1                    NA                0.4748416   0.3039900   0.6456932
24 months   LCNI-5         MALAWI       0                    NA                0.4834763   0.4044392   0.5625134
24 months   MAL-ED         BANGLADESH   1                    NA                0.4394672   0.2674468   0.6114875
24 months   MAL-ED         BANGLADESH   0                    NA                0.4730680   0.3992080   0.5469280
24 months   PROVIDE        BANGLADESH   1                    NA                0.3537360   0.2755244   0.4319475
24 months   PROVIDE        BANGLADESH   0                    NA                0.3222283   0.2789666   0.3654901


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal      NEPAL        NA                   NA                0.1669627   0.1361293   0.1977961
Birth       JiVitA-3       BANGLADESH   NA                   NA                0.3310735   0.3218922   0.3402548
Birth       JiVitA-4       BANGLADESH   NA                   NA                0.3035714   0.2824097   0.3247332
Birth       Keneba         GAMBIA       NA                   NA                0.0563079   0.0442416   0.0683742
Birth       MAL-ED         BANGLADESH   NA                   NA                0.1756098   0.1233973   0.2278222
Birth       PROVIDE        BANGLADESH   NA                   NA                0.0890538   0.0649864   0.1131212
Birth       SAS-CompFeed   INDIA        NA                   NA                0.2609890   0.2179233   0.3040547
6 months    GMS-Nepal      NEPAL        NA                   NA                0.2157221   0.1812209   0.2502233
6 months    JiVitA-3       BANGLADESH   NA                   NA                0.2482578   0.2382387   0.2582768
6 months    JiVitA-4       BANGLADESH   NA                   NA                0.2511704   0.2362353   0.2661055
6 months    Keneba         GAMBIA       NA                   NA                0.1477987   0.1318701   0.1637274
6 months    LCNI-5         MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    MAL-ED         BANGLADESH   NA                   NA                0.1774892   0.1281103   0.2268680
6 months    PROVIDE        BANGLADESH   NA                   NA                0.1589404   0.1297581   0.1881227
6 months    SAS-CompFeed   INDIA        NA                   NA                0.3140704   0.2712850   0.3568557
24 months   GMS-Nepal      NEPAL        NA                   NA                0.4553191   0.4102488   0.5003895
24 months   JiVitA-3       BANGLADESH   NA                   NA                0.4921384   0.4750959   0.5091808
24 months   JiVitA-4       BANGLADESH   NA                   NA                0.4050965   0.3867240   0.4234689
24 months   Keneba         GAMBIA       NA                   NA                0.3370787   0.3132517   0.3609056
24 months   LCNI-5         MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   MAL-ED         BANGLADESH   NA                   NA                0.4682927   0.3998183   0.5367670
24 months   PROVIDE        BANGLADESH   NA                   NA                0.3287197   0.2903909   0.3670485


### Parameter: RR


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal      NEPAL        0                    1                 1.0860933   0.7137738   1.652623
Birth       JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3       BANGLADESH   0                    1                 1.0058232   0.9930669   1.018743
Birth       JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4       BANGLADESH   0                    1                 0.9799279   0.9320103   1.030309
Birth       Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       Keneba         GAMBIA       0                    1                 1.0804966   0.6822099   1.711310
Birth       MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       MAL-ED         BANGLADESH   0                    1                 1.1045977   0.4646502   2.625924
Birth       PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       PROVIDE        BANGLADESH   0                    1                 1.4758746   0.7587484   2.870788
Birth       SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
Birth       SAS-CompFeed   INDIA        0                    1                 1.2958801   0.6113712   2.746785
6 months    GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal      NEPAL        0                    1                 1.3589323   0.9657629   1.912164
6 months    JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3       BANGLADESH   0                    1                 1.0425719   0.9663180   1.124843
6 months    JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4       BANGLADESH   0                    1                 1.1652159   1.0280242   1.320716
6 months    Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    Keneba         GAMBIA       0                    1                 1.0850281   0.8619036   1.365914
6 months    LCNI-5         MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6 months    LCNI-5         MALAWI       0                    1                 0.9427966   0.6303840   1.410038
6 months    MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    MAL-ED         BANGLADESH   0                    1                 0.9722222   0.4432703   2.132369
6 months    PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    PROVIDE        BANGLADESH   0                    1                 1.3938059   0.8439511   2.301904
6 months    SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed   INDIA        0                    1                 1.0057497   0.4866253   2.078668
24 months   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal      NEPAL        0                    1                 1.1648378   0.9519903   1.425274
24 months   JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3       BANGLADESH   0                    1                 1.0427962   0.9736568   1.116845
24 months   JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4       BANGLADESH   0                    1                 1.0504354   0.9565466   1.153540
24 months   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   Keneba         GAMBIA       0                    1                 1.2328009   1.0573662   1.437343
24 months   LCNI-5         MALAWI       1                    1                 1.0000000   1.0000000   1.000000
24 months   LCNI-5         MALAWI       0                    1                 1.0181844   0.6852193   1.512946
24 months   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED         BANGLADESH   0                    1                 1.0764580   0.7106037   1.630672
24 months   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   PROVIDE        BANGLADESH   0                    1                 0.9109289   0.7067483   1.174098


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal      NEPAL        1                    NA                 0.0048748   -0.0135979   0.0233474
Birth       JiVitA-3       BANGLADESH   1                    NA                 0.0003988   -0.0005364   0.0013340
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.0010724   -0.0040204   0.0018756
Birth       Keneba         GAMBIA       1                    NA                 0.0025498   -0.0141204   0.0192201
Birth       MAL-ED         BANGLADESH   1                    NA                 0.0143194   -0.1059999   0.1346388
Birth       PROVIDE        BANGLADESH   1                    NA                 0.0223082   -0.0126823   0.0572987
Birth       SAS-CompFeed   INDIA        1                    NA                 0.0037636   -0.0100156   0.0175428
6 months    GMS-Nepal      NEPAL        1                    NA                 0.0188299   -0.0028003   0.0404600
6 months    JiVitA-3       BANGLADESH   1                    NA                 0.0023982   -0.0020241   0.0068205
6 months    JiVitA-4       BANGLADESH   1                    NA                 0.0083327    0.0008598   0.0158055
6 months    Keneba         GAMBIA       1                    NA                 0.0086941   -0.0139539   0.0313421
6 months    LCNI-5         MALAWI       1                    NA                -0.0216146   -0.1461651   0.1029359
6 months    MAL-ED         BANGLADESH   1                    NA                -0.0043290   -0.1262357   0.1175777
6 months    PROVIDE        BANGLADESH   1                    NA                 0.0384660   -0.0114358   0.0883678
6 months    SAS-CompFeed   INDIA        1                    NA                 0.0000862   -0.0108674   0.0110398
24 months   GMS-Nepal      NEPAL        1                    NA                 0.0127773   -0.0114664   0.0370209
24 months   JiVitA-3       BANGLADESH   1                    NA                 0.0047881   -0.0031656   0.0127419
24 months   JiVitA-4       BANGLADESH   1                    NA                 0.0045182   -0.0039595   0.0129959
24 months   Keneba         GAMBIA       1                    NA                 0.0477400    0.0162826   0.0791974
24 months   LCNI-5         MALAWI       1                    NA                 0.0119309   -0.1434771   0.1673388
24 months   MAL-ED         BANGLADESH   1                    NA                 0.0288255   -0.1283359   0.1859869
24 months   PROVIDE        BANGLADESH   1                    NA                -0.0250163   -0.0922550   0.0422225


### Parameter: PAF


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal      NEPAL        1                    NA                 0.0291968   -0.0879191   0.1337051
Birth       JiVitA-3       BANGLADESH   1                    NA                 0.0012046   -0.0016248   0.0040260
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.0035326   -0.0132816   0.0061225
Birth       Keneba         GAMBIA       1                    NA                 0.0452840   -0.3016627   0.2997552
Birth       MAL-ED         BANGLADESH   1                    NA                 0.0815412   -0.9360258   0.5642793
Birth       PROVIDE        BANGLADESH   1                    NA                 0.2505024   -0.2596251   0.5540366
Birth       SAS-CompFeed   INDIA        1                    NA                 0.0144204   -0.0378960   0.0640998
6 months    GMS-Nepal      NEPAL        1                    NA                 0.0872876   -0.0181850   0.1818344
6 months    JiVitA-3       BANGLADESH   1                    NA                 0.0096600   -0.0083197   0.0273191
6 months    JiVitA-4       BANGLADESH   1                    NA                 0.0331754    0.0031065   0.0623373
6 months    Keneba         GAMBIA       1                    NA                 0.0588239   -0.1075621   0.2002141
6 months    LCNI-5         MALAWI       1                    NA                -0.0606101   -0.4744792   0.2370908
6 months    MAL-ED         BANGLADESH   1                    NA                -0.0243902   -1.0028399   0.4760563
6 months    PROVIDE        BANGLADESH   1                    NA                 0.2420152   -0.1452580   0.4983305
6 months    SAS-CompFeed   INDIA        1                    NA                 0.0002744   -0.0352245   0.0345560
24 months   GMS-Nepal      NEPAL        1                    NA                 0.0280623   -0.0267946   0.0799884
24 months   JiVitA-3       BANGLADESH   1                    NA                 0.0097293   -0.0065617   0.0257566
24 months   JiVitA-4       BANGLADESH   1                    NA                 0.0111534   -0.0099678   0.0318328
24 months   Keneba         GAMBIA       1                    NA                 0.1416286    0.0430875   0.2300221
24 months   LCNI-5         MALAWI       1                    NA                 0.0245102   -0.3532080   0.2967966
24 months   MAL-ED         BANGLADESH   1                    NA                 0.0615545   -0.3421951   0.3438509
24 months   PROVIDE        BANGLADESH   1                    NA                -0.0761021   -0.3013510   0.1101588
