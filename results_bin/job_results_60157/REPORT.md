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

agecat      studyid          country                        predexfd6    stunted   n_cell       n
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
Birth       JiVitA-3         BANGLADESH                     1                  0     7012   13423
Birth       JiVitA-3         BANGLADESH                     1                  1     3454   13423
Birth       JiVitA-3         BANGLADESH                     0                  0     1967   13423
Birth       JiVitA-3         BANGLADESH                     0                  1      990   13423
Birth       JiVitA-4         BANGLADESH                     1                  0     1479    2632
Birth       JiVitA-4         BANGLADESH                     1                  1      624    2632
Birth       JiVitA-4         BANGLADESH                     0                  0      354    2632
Birth       JiVitA-4         BANGLADESH                     0                  1      175    2632
Birth       Keneba           GAMBIA                         1                  0      459    1403
Birth       Keneba           GAMBIA                         1                  1       26    1403
Birth       Keneba           GAMBIA                         0                  0      865    1403
Birth       Keneba           GAMBIA                         0                  1       53    1403
Birth       MAL-ED           BANGLADESH                     1                  0       60     205
Birth       MAL-ED           BANGLADESH                     1                  1       12     205
Birth       MAL-ED           BANGLADESH                     0                  0      109     205
Birth       MAL-ED           BANGLADESH                     0                  1       24     205
Birth       MAL-ED           BRAZIL                         1                  0        4      60
Birth       MAL-ED           BRAZIL                         1                  1        2      60
Birth       MAL-ED           BRAZIL                         0                  0       47      60
Birth       MAL-ED           BRAZIL                         0                  1        7      60
Birth       MAL-ED           INDIA                          1                  0        2      39
Birth       MAL-ED           INDIA                          1                  1        2      39
Birth       MAL-ED           INDIA                          0                  0       29      39
Birth       MAL-ED           INDIA                          0                  1        6      39
Birth       MAL-ED           NEPAL                          1                  0        3      24
Birth       MAL-ED           NEPAL                          1                  1        0      24
Birth       MAL-ED           NEPAL                          0                  0       20      24
Birth       MAL-ED           NEPAL                          0                  1        1      24
Birth       MAL-ED           PERU                           1                  0       66     213
Birth       MAL-ED           PERU                           1                  1        7     213
Birth       MAL-ED           PERU                           0                  0      121     213
Birth       MAL-ED           PERU                           0                  1       19     213
Birth       MAL-ED           SOUTH AFRICA                   1                  0        1      91
Birth       MAL-ED           SOUTH AFRICA                   1                  1        0      91
Birth       MAL-ED           SOUTH AFRICA                   0                  0       82      91
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
6 months    JiVitA-3         BANGLADESH                     1                  0     5767    9901
6 months    JiVitA-3         BANGLADESH                     1                  1     1877    9901
6 months    JiVitA-3         BANGLADESH                     0                  0     1676    9901
6 months    JiVitA-3         BANGLADESH                     0                  1      581    9901
6 months    JiVitA-4         BANGLADESH                     1                  0     2542    4272
6 months    JiVitA-4         BANGLADESH                     1                  1      786    4272
6 months    JiVitA-4         BANGLADESH                     0                  0      657    4272
6 months    JiVitA-4         BANGLADESH                     0                  1      287    4272
6 months    Keneba           GAMBIA                         1                  0      502    1908
6 months    Keneba           GAMBIA                         1                  1       84    1908
6 months    Keneba           GAMBIA                         0                  0     1124    1908
6 months    Keneba           GAMBIA                         0                  1      198    1908
6 months    LCNI-5           MALAWI                         1                  0       30     272
6 months    LCNI-5           MALAWI                         1                  1       17     272
6 months    LCNI-5           MALAWI                         0                  0      145     272
6 months    LCNI-5           MALAWI                         0                  1       80     272
6 months    MAL-ED           BANGLADESH                     1                  0       73     231
6 months    MAL-ED           BANGLADESH                     1                  1       11     231
6 months    MAL-ED           BANGLADESH                     0                  0      117     231
6 months    MAL-ED           BANGLADESH                     0                  1       30     231
6 months    MAL-ED           BRAZIL                         1                  0       29     209
6 months    MAL-ED           BRAZIL                         1                  1        1     209
6 months    MAL-ED           BRAZIL                         0                  0      174     209
6 months    MAL-ED           BRAZIL                         0                  1        5     209
6 months    MAL-ED           INDIA                          1                  0        7     218
6 months    MAL-ED           INDIA                          1                  1        4     218
6 months    MAL-ED           INDIA                          0                  0      170     218
6 months    MAL-ED           INDIA                          0                  1       37     218
6 months    MAL-ED           NEPAL                          1                  0       11     225
6 months    MAL-ED           NEPAL                          1                  1        1     225
6 months    MAL-ED           NEPAL                          0                  0      202     225
6 months    MAL-ED           NEPAL                          0                  1       11     225
6 months    MAL-ED           PERU                           1                  0       77     271
6 months    MAL-ED           PERU                           1                  1       15     271
6 months    MAL-ED           PERU                           0                  0      134     271
6 months    MAL-ED           PERU                           0                  1       45     271
6 months    MAL-ED           SOUTH AFRICA                   1                  0        2     233
6 months    MAL-ED           SOUTH AFRICA                   1                  1        1     233
6 months    MAL-ED           SOUTH AFRICA                   0                  0      188     233
6 months    MAL-ED           SOUTH AFRICA                   0                  1       42     233
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        1     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      173     232
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
24 months   JiVitA-3         BANGLADESH                     1                  0     2006    5088
24 months   JiVitA-3         BANGLADESH                     1                  1     1920    5088
24 months   JiVitA-3         BANGLADESH                     0                  0      578    5088
24 months   JiVitA-3         BANGLADESH                     0                  1      584    5088
24 months   JiVitA-4         BANGLADESH                     1                  0     1989    4199
24 months   JiVitA-4         BANGLADESH                     1                  1     1303    4199
24 months   JiVitA-4         BANGLADESH                     0                  0      509    4199
24 months   JiVitA-4         BANGLADESH                     0                  1      398    4199
24 months   Keneba           GAMBIA                         1                  0      365    1513
24 months   Keneba           GAMBIA                         1                  1      150    1513
24 months   Keneba           GAMBIA                         0                  0      638    1513
24 months   Keneba           GAMBIA                         0                  1      360    1513
24 months   LCNI-5           MALAWI                         1                  0       17     189
24 months   LCNI-5           MALAWI                         1                  1       17     189
24 months   LCNI-5           MALAWI                         0                  0       80     189
24 months   LCNI-5           MALAWI                         0                  1       75     189
24 months   MAL-ED           BANGLADESH                     1                  0       38     205
24 months   MAL-ED           BANGLADESH                     1                  1       38     205
24 months   MAL-ED           BANGLADESH                     0                  0       71     205
24 months   MAL-ED           BANGLADESH                     0                  1       58     205
24 months   MAL-ED           BRAZIL                         1                  0       25     169
24 months   MAL-ED           BRAZIL                         1                  1        0     169
24 months   MAL-ED           BRAZIL                         0                  0      137     169
24 months   MAL-ED           BRAZIL                         0                  1        7     169
24 months   MAL-ED           INDIA                          1                  0        3     209
24 months   MAL-ED           INDIA                          1                  1        8     209
24 months   MAL-ED           INDIA                          0                  0      117     209
24 months   MAL-ED           INDIA                          0                  1       81     209
24 months   MAL-ED           NEPAL                          1                  0        9     219
24 months   MAL-ED           NEPAL                          1                  1        3     219
24 months   MAL-ED           NEPAL                          0                  0      161     219
24 months   MAL-ED           NEPAL                          0                  1       46     219
24 months   MAL-ED           PERU                           1                  0       42     201
24 months   MAL-ED           PERU                           1                  1       26     201
24 months   MAL-ED           PERU                           0                  0       85     201
24 months   MAL-ED           PERU                           0                  1       48     201
24 months   MAL-ED           SOUTH AFRICA                   1                  0        3     216
24 months   MAL-ED           SOUTH AFRICA                   1                  1        0     216
24 months   MAL-ED           SOUTH AFRICA                   0                  0      141     216
24 months   MAL-ED           SOUTH AFRICA                   0                  1       72     216
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        1     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0       53     202
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
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
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
![](/tmp/c889ab89-3c55-4e0f-8af1-622c3e4dfbb7/91a01c23-5351-47ef-b5b4-ab7fd124c0c2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c889ab89-3c55-4e0f-8af1-622c3e4dfbb7/91a01c23-5351-47ef-b5b4-ab7fd124c0c2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c889ab89-3c55-4e0f-8af1-622c3e4dfbb7/91a01c23-5351-47ef-b5b4-ab7fd124c0c2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c889ab89-3c55-4e0f-8af1-622c3e4dfbb7/91a01c23-5351-47ef-b5b4-ab7fd124c0c2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal      NEPAL        1                    NA                0.1619641   0.1265994   0.1973289
Birth       GMS-Nepal      NEPAL        0                    NA                0.1721145   0.1085724   0.2356566
Birth       JiVitA-3       BANGLADESH   1                    NA                0.3307341   0.3214849   0.3399833
Birth       JiVitA-3       BANGLADESH   0                    NA                0.3323437   0.3226524   0.3420350
Birth       JiVitA-4       BANGLADESH   1                    NA                0.3044427   0.2829304   0.3259550
Birth       JiVitA-4       BANGLADESH   0                    NA                0.2986379   0.2745671   0.3227086
Birth       Keneba         GAMBIA       1                    NA                0.0534096   0.0332699   0.0735493
Birth       Keneba         GAMBIA       0                    NA                0.0578921   0.0427167   0.0730676
Birth       MAL-ED         BANGLADESH   1                    NA                0.1630332   0.0756616   0.2504048
Birth       MAL-ED         BANGLADESH   0                    NA                0.1833021   0.1164148   0.2501893
Birth       MAL-ED         PERU         1                    NA                0.0958904   0.0281876   0.1635932
Birth       MAL-ED         PERU         0                    NA                0.1357143   0.0788490   0.1925796
Birth       PROVIDE        BANGLADESH   1                    NA                0.0664013   0.0267644   0.1060383
Birth       PROVIDE        BANGLADESH   0                    NA                0.0987563   0.0686844   0.1288282
Birth       SAS-CompFeed   INDIA        1                    NA                0.2572254   0.2236819   0.2907690
Birth       SAS-CompFeed   INDIA        0                    NA                0.3333333   0.0564891   0.6101775
6 months    GMS-Nepal      NEPAL        1                    NA                0.1973712   0.1586349   0.2361076
6 months    GMS-Nepal      NEPAL        0                    NA                0.2715747   0.1977093   0.3454401
6 months    JiVitA-3       BANGLADESH   1                    NA                0.2462800   0.2353314   0.2572287
6 months    JiVitA-3       BANGLADESH   0                    NA                0.2552478   0.2372730   0.2732225
6 months    JiVitA-4       BANGLADESH   1                    NA                0.2430428   0.2270786   0.2590070
6 months    JiVitA-4       BANGLADESH   0                    NA                0.2845527   0.2526034   0.3165020
6 months    Keneba         GAMBIA       1                    NA                0.1374991   0.1101026   0.1648957
6 months    Keneba         GAMBIA       0                    NA                0.1511425   0.1320712   0.1702137
6 months    LCNI-5         MALAWI       1                    NA                0.4046484   0.2701850   0.5391117
6 months    LCNI-5         MALAWI       0                    NA                0.3576207   0.2949319   0.4203094
6 months    MAL-ED         BANGLADESH   1                    NA                0.1165896   0.0496416   0.1835376
6 months    MAL-ED         BANGLADESH   0                    NA                0.2032520   0.1377242   0.2687798
6 months    MAL-ED         PERU         1                    NA                0.1642068   0.0870397   0.2413739
6 months    MAL-ED         PERU         0                    NA                0.2508934   0.1871252   0.3146615
6 months    PROVIDE        BANGLADESH   1                    NA                0.1255814   0.0696663   0.1814964
6 months    PROVIDE        BANGLADESH   0                    NA                0.1687243   0.1345956   0.2028529
6 months    SAS-CompFeed   INDIA        1                    NA                0.3139842   0.2679102   0.3600581
6 months    SAS-CompFeed   INDIA        0                    NA                0.3157895   0.1014523   0.5301266
24 months   GMS-Nepal      NEPAL        1                    NA                0.4406426   0.3891915   0.4920937
24 months   GMS-Nepal      NEPAL        0                    NA                0.5013070   0.4131890   0.5894251
24 months   JiVitA-3       BANGLADESH   1                    NA                0.4879499   0.4692501   0.5066497
24 months   JiVitA-3       BANGLADESH   0                    NA                0.5058075   0.4740148   0.5376002
24 months   JiVitA-4       BANGLADESH   1                    NA                0.4004869   0.3808767   0.4200971
24 months   JiVitA-4       BANGLADESH   0                    NA                0.4197776   0.3831761   0.4563790
24 months   Keneba         GAMBIA       1                    NA                0.2926201   0.2536842   0.3315560
24 months   Keneba         GAMBIA       0                    NA                0.3575712   0.3283592   0.3867831
24 months   LCNI-5         MALAWI       1                    NA                0.5088025   0.3344002   0.6832047
24 months   LCNI-5         MALAWI       0                    NA                0.4822274   0.4031709   0.5612839
24 months   MAL-ED         BANGLADESH   1                    NA                0.4726025   0.3585520   0.5866531
24 months   MAL-ED         BANGLADESH   0                    NA                0.4662255   0.3825778   0.5498731
24 months   MAL-ED         PERU         1                    NA                0.4102865   0.2927727   0.5278003
24 months   MAL-ED         PERU         0                    NA                0.3466989   0.2659421   0.4274557
24 months   PROVIDE        BANGLADESH   1                    NA                0.3565682   0.2796150   0.4335213
24 months   PROVIDE        BANGLADESH   0                    NA                0.3217625   0.2785226   0.3650025


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal      NEPAL        NA                   NA                0.1669627   0.1361293   0.1977961
Birth       JiVitA-3       BANGLADESH   NA                   NA                0.3310735   0.3218922   0.3402548
Birth       JiVitA-4       BANGLADESH   NA                   NA                0.3035714   0.2824097   0.3247332
Birth       Keneba         GAMBIA       NA                   NA                0.0563079   0.0442416   0.0683742
Birth       MAL-ED         BANGLADESH   NA                   NA                0.1756098   0.1233973   0.2278222
Birth       MAL-ED         PERU         NA                   NA                0.1220657   0.0779993   0.1661322
Birth       PROVIDE        BANGLADESH   NA                   NA                0.0890538   0.0649864   0.1131212
Birth       SAS-CompFeed   INDIA        NA                   NA                0.2609890   0.2179233   0.3040547
6 months    GMS-Nepal      NEPAL        NA                   NA                0.2157221   0.1812209   0.2502233
6 months    JiVitA-3       BANGLADESH   NA                   NA                0.2482578   0.2382387   0.2582768
6 months    JiVitA-4       BANGLADESH   NA                   NA                0.2511704   0.2362353   0.2661055
6 months    Keneba         GAMBIA       NA                   NA                0.1477987   0.1318701   0.1637274
6 months    LCNI-5         MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    MAL-ED         BANGLADESH   NA                   NA                0.1774892   0.1281103   0.2268680
6 months    MAL-ED         PERU         NA                   NA                0.2214022   0.1718784   0.2709260
6 months    PROVIDE        BANGLADESH   NA                   NA                0.1589404   0.1297581   0.1881227
6 months    SAS-CompFeed   INDIA        NA                   NA                0.3140704   0.2712850   0.3568557
24 months   GMS-Nepal      NEPAL        NA                   NA                0.4553191   0.4102488   0.5003895
24 months   JiVitA-3       BANGLADESH   NA                   NA                0.4921384   0.4750959   0.5091808
24 months   JiVitA-4       BANGLADESH   NA                   NA                0.4050965   0.3867240   0.4234689
24 months   Keneba         GAMBIA       NA                   NA                0.3370787   0.3132517   0.3609056
24 months   LCNI-5         MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   MAL-ED         BANGLADESH   NA                   NA                0.4682927   0.3998183   0.5367670
24 months   MAL-ED         PERU         NA                   NA                0.3681592   0.3013164   0.4350020
24 months   PROVIDE        BANGLADESH   NA                   NA                0.3287197   0.2903909   0.3670485


### Parameter: RR


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal      NEPAL        0                    1                 1.0626706   0.6918010   1.632361
Birth       JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3       BANGLADESH   0                    1                 1.0048668   0.9922151   1.017680
Birth       JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4       BANGLADESH   0                    1                 0.9809329   0.9317633   1.032697
Birth       Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       Keneba         GAMBIA       0                    1                 1.0839269   0.6848573   1.715536
Birth       MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       MAL-ED         BANGLADESH   0                    1                 1.1243234   0.5883498   2.148557
Birth       MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.000000
Birth       MAL-ED         PERU         0                    1                 1.4153061   0.6227136   3.216714
Birth       PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       PROVIDE        BANGLADESH   0                    1                 1.4872637   0.7620350   2.902693
Birth       SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
Birth       SAS-CompFeed   INDIA        0                    1                 1.2958801   0.6113712   2.746785
6 months    GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal      NEPAL        0                    1                 1.3759588   0.9833439   1.925331
6 months    JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3       BANGLADESH   0                    1                 1.0364127   0.9601990   1.118676
6 months    JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4       BANGLADESH   0                    1                 1.1707926   1.0359532   1.323183
6 months    Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    Keneba         GAMBIA       0                    1                 1.0992248   0.8711989   1.386934
6 months    LCNI-5         MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6 months    LCNI-5         MALAWI       0                    1                 0.8837813   0.6063450   1.288160
6 months    MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    MAL-ED         BANGLADESH   0                    1                 1.7433115   0.9025328   3.367340
6 months    MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.000000
6 months    MAL-ED         PERU         0                    1                 1.5279108   0.8951793   2.607870
6 months    PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    PROVIDE        BANGLADESH   0                    1                 1.3435453   0.8243843   2.189651
6 months    SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed   INDIA        0                    1                 1.0057497   0.4866253   2.078668
24 months   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal      NEPAL        0                    1                 1.1376727   0.9249649   1.399295
24 months   JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3       BANGLADESH   0                    1                 1.0365972   0.9675821   1.110535
24 months   JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4       BANGLADESH   0                    1                 1.0481681   0.9551244   1.150276
24 months   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   Keneba         GAMBIA       0                    1                 1.2219637   1.0479209   1.424912
24 months   LCNI-5         MALAWI       1                    1                 1.0000000   1.0000000   1.000000
24 months   LCNI-5         MALAWI       0                    1                 0.9477694   0.6480668   1.386071
24 months   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED         BANGLADESH   0                    1                 0.9865065   0.7359850   1.322303
24 months   MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED         PERU         0                    1                 0.8450166   0.5884417   1.213464
24 months   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   PROVIDE        BANGLADESH   0                    1                 0.9023872   0.7034275   1.157621


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal      NEPAL        1                    NA                 0.0049986   -0.0134966   0.0234937
Birth       JiVitA-3       BANGLADESH   1                    NA                 0.0003394   -0.0005919   0.0012708
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.0008713   -0.0039384   0.0021959
Birth       Keneba         GAMBIA       1                    NA                 0.0028983   -0.0136336   0.0194302
Birth       MAL-ED         BANGLADESH   1                    NA                 0.0125765   -0.0591484   0.0843015
Birth       MAL-ED         PERU         1                    NA                 0.0261753   -0.0319939   0.0843446
Birth       PROVIDE        BANGLADESH   1                    NA                 0.0226525   -0.0124028   0.0577078
Birth       SAS-CompFeed   INDIA        1                    NA                 0.0037636   -0.0100156   0.0175428
6 months    GMS-Nepal      NEPAL        1                    NA                 0.0183509   -0.0032695   0.0399713
6 months    JiVitA-3       BANGLADESH   1                    NA                 0.0019777   -0.0024318   0.0063873
6 months    JiVitA-4       BANGLADESH   1                    NA                 0.0081276    0.0007734   0.0154819
6 months    Keneba         GAMBIA       1                    NA                 0.0102996   -0.0124284   0.0330276
6 months    LCNI-5         MALAWI       1                    NA                -0.0480307   -0.1714529   0.0753915
6 months    MAL-ED         BANGLADESH   1                    NA                 0.0608996    0.0019265   0.1198726
6 months    MAL-ED         PERU         1                    NA                 0.0571954   -0.0095492   0.1239400
6 months    PROVIDE        BANGLADESH   1                    NA                 0.0333590   -0.0169742   0.0836922
6 months    SAS-CompFeed   INDIA        1                    NA                 0.0000862   -0.0108674   0.0110398
24 months   GMS-Nepal      NEPAL        1                    NA                 0.0146765   -0.0094420   0.0387951
24 months   JiVitA-3       BANGLADESH   1                    NA                 0.0041885   -0.0037065   0.0120835
24 months   JiVitA-4       BANGLADESH   1                    NA                 0.0046096   -0.0036582   0.0128774
24 months   Keneba         GAMBIA       1                    NA                 0.0444585    0.0126377   0.0762794
24 months   LCNI-5         MALAWI       1                    NA                -0.0220300   -0.1801542   0.1360942
24 months   MAL-ED         BANGLADESH   1                    NA                -0.0043098   -0.0920675   0.0834478
24 months   MAL-ED         PERU         1                    NA                -0.0421273   -0.1361638   0.0519092
24 months   PROVIDE        BANGLADESH   1                    NA                -0.0278484   -0.0939741   0.0382772


### Parameter: PAF


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal      NEPAL        1                    NA                 0.0299383   -0.0873343   0.1345627
Birth       JiVitA-3       BANGLADESH   1                    NA                 0.0010252   -0.0017926   0.0038351
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.0028701   -0.0130181   0.0071762
Birth       Keneba         GAMBIA       1                    NA                 0.0514718   -0.2924214   0.3038604
Birth       MAL-ED         BANGLADESH   1                    NA                 0.0716164   -0.4412389   0.4019755
Birth       MAL-ED         PERU         1                    NA                 0.2144362   -0.4318688   0.5690175
Birth       PROVIDE        BANGLADESH   1                    NA                 0.2543683   -0.2579507   0.5580378
Birth       SAS-CompFeed   INDIA        1                    NA                 0.0144204   -0.0378960   0.0640998
6 months    GMS-Nepal      NEPAL        1                    NA                 0.0850672   -0.0202804   0.1795373
6 months    JiVitA-3       BANGLADESH   1                    NA                 0.0079664   -0.0099587   0.0255734
6 months    JiVitA-4       BANGLADESH   1                    NA                 0.0323590    0.0027679   0.0610721
6 months    Keneba         GAMBIA       1                    NA                 0.0696866   -0.0975046   0.2114083
6 months    LCNI-5         MALAWI       1                    NA                -0.1346840   -0.5411052   0.1645555
6 months    MAL-ED         BANGLADESH   1                    NA                 0.3431170   -0.0729740   0.5978511
6 months    MAL-ED         PERU         1                    NA                 0.2583326   -0.1094165   0.5041804
6 months    PROVIDE        BANGLADESH   1                    NA                 0.2098838   -0.1780953   0.4700908
6 months    SAS-CompFeed   INDIA        1                    NA                 0.0002744   -0.0352245   0.0345560
24 months   GMS-Nepal      NEPAL        1                    NA                 0.0322335   -0.0223678   0.0839188
24 months   JiVitA-3       BANGLADESH   1                    NA                 0.0085108   -0.0076611   0.0244232
24 months   JiVitA-4       BANGLADESH   1                    NA                 0.0113790   -0.0092122   0.0315500
24 months   Keneba         GAMBIA       1                    NA                 0.1318937    0.0320952   0.2214022
24 months   LCNI-5         MALAWI       1                    NA                -0.0452573   -0.4262070   0.2339381
24 months   MAL-ED         BANGLADESH   1                    NA                -0.0092033   -0.2150529   0.1617721
24 months   MAL-ED         PERU         1                    NA                -0.1144269   -0.4015181   0.1138557
24 months   PROVIDE        BANGLADESH   1                    NA                -0.0847179   -0.3058442   0.0989639
