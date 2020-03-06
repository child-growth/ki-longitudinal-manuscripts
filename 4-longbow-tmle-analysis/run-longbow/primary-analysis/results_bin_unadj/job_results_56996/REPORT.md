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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** predexfd6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        predexfd6    wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  ----------  ------------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          1                      0        7     16
0-24 months   CMC-V-BCS-2002   INDIA                          1                      1        9     16
0-24 months   CMC-V-BCS-2002   INDIA                          0                      0        0     16
0-24 months   CMC-V-BCS-2002   INDIA                          0                      1        0     16
0-24 months   EE               PAKISTAN                       1                      0       15     34
0-24 months   EE               PAKISTAN                       1                      1       16     34
0-24 months   EE               PAKISTAN                       0                      0        0     34
0-24 months   EE               PAKISTAN                       0                      1        3     34
0-24 months   GMS-Nepal        NEPAL                          1                      0      192    594
0-24 months   GMS-Nepal        NEPAL                          1                      1      251    594
0-24 months   GMS-Nepal        NEPAL                          0                      0       70    594
0-24 months   GMS-Nepal        NEPAL                          0                      1       81    594
0-24 months   IRC              INDIA                          1                      0        0     19
0-24 months   IRC              INDIA                          1                      1        0     19
0-24 months   IRC              INDIA                          0                      0       11     19
0-24 months   IRC              INDIA                          0                      1        8     19
0-24 months   Keneba           GAMBIA                         1                      0      180   1602
0-24 months   Keneba           GAMBIA                         1                      1      316   1602
0-24 months   Keneba           GAMBIA                         0                      0      406   1602
0-24 months   Keneba           GAMBIA                         0                      1      700   1602
0-24 months   LCNI-5           MALAWI                         1                      0        5     34
0-24 months   LCNI-5           MALAWI                         1                      1        2     34
0-24 months   LCNI-5           MALAWI                         0                      0       22     34
0-24 months   LCNI-5           MALAWI                         0                      1        5     34
0-24 months   MAL-ED           BANGLADESH                     1                      0       15    114
0-24 months   MAL-ED           BANGLADESH                     1                      1       30    114
0-24 months   MAL-ED           BANGLADESH                     0                      0       25    114
0-24 months   MAL-ED           BANGLADESH                     0                      1       44    114
0-24 months   MAL-ED           BRAZIL                         1                      0        1     24
0-24 months   MAL-ED           BRAZIL                         1                      1        1     24
0-24 months   MAL-ED           BRAZIL                         0                      0        5     24
0-24 months   MAL-ED           BRAZIL                         0                      1       17     24
0-24 months   MAL-ED           INDIA                          1                      0        0    162
0-24 months   MAL-ED           INDIA                          1                      1        2    162
0-24 months   MAL-ED           INDIA                          0                      0       62    162
0-24 months   MAL-ED           INDIA                          0                      1       98    162
0-24 months   MAL-ED           NEPAL                          1                      0        1     94
0-24 months   MAL-ED           NEPAL                          1                      1        2     94
0-24 months   MAL-ED           NEPAL                          0                      0       18     94
0-24 months   MAL-ED           NEPAL                          0                      1       73     94
0-24 months   MAL-ED           PERU                           1                      0        2     34
0-24 months   MAL-ED           PERU                           1                      1        6     34
0-24 months   MAL-ED           PERU                           0                      0        4     34
0-24 months   MAL-ED           PERU                           0                      1       22     34
0-24 months   MAL-ED           SOUTH AFRICA                   1                      0        0     75
0-24 months   MAL-ED           SOUTH AFRICA                   1                      1        0     75
0-24 months   MAL-ED           SOUTH AFRICA                   0                      0       11     75
0-24 months   MAL-ED           SOUTH AFRICA                   0                      1       64     75
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        0     50
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        0     50
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0        9     50
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1       41     50
0-24 months   PROVIDE          BANGLADESH                     1                      0       31    308
0-24 months   PROVIDE          BANGLADESH                     1                      1       45    308
0-24 months   PROVIDE          BANGLADESH                     0                      0       98    308
0-24 months   PROVIDE          BANGLADESH                     0                      1      134    308
0-24 months   SAS-CompFeed     INDIA                          1                      0      144    238
0-24 months   SAS-CompFeed     INDIA                          1                      1       81    238
0-24 months   SAS-CompFeed     INDIA                          0                      0        6    238
0-24 months   SAS-CompFeed     INDIA                          0                      1        7    238
0-24 months   SAS-FoodSuppl    INDIA                          1                      0        0    108
0-24 months   SAS-FoodSuppl    INDIA                          1                      1        0    108
0-24 months   SAS-FoodSuppl    INDIA                          0                      0      100    108
0-24 months   SAS-FoodSuppl    INDIA                          0                      1        8    108
0-6 months    CMC-V-BCS-2002   INDIA                          1                      0        4      9
0-6 months    CMC-V-BCS-2002   INDIA                          1                      1        5      9
0-6 months    CMC-V-BCS-2002   INDIA                          0                      0        0      9
0-6 months    CMC-V-BCS-2002   INDIA                          0                      1        0      9
0-6 months    EE               PAKISTAN                       1                      0        6     15
0-6 months    EE               PAKISTAN                       1                      1        7     15
0-6 months    EE               PAKISTAN                       0                      0        0     15
0-6 months    EE               PAKISTAN                       0                      1        2     15
0-6 months    GMS-Nepal        NEPAL                          1                      0       54    228
0-6 months    GMS-Nepal        NEPAL                          1                      1      116    228
0-6 months    GMS-Nepal        NEPAL                          0                      0       24    228
0-6 months    GMS-Nepal        NEPAL                          0                      1       34    228
0-6 months    IRC              INDIA                          1                      0        0     13
0-6 months    IRC              INDIA                          1                      1        0     13
0-6 months    IRC              INDIA                          0                      0        7     13
0-6 months    IRC              INDIA                          0                      1        6     13
0-6 months    Keneba           GAMBIA                         1                      0       37    678
0-6 months    Keneba           GAMBIA                         1                      1      166    678
0-6 months    Keneba           GAMBIA                         0                      0      110    678
0-6 months    Keneba           GAMBIA                         0                      1      365    678
0-6 months    LCNI-5           MALAWI                         1                      0        0      4
0-6 months    LCNI-5           MALAWI                         1                      1        0      4
0-6 months    LCNI-5           MALAWI                         0                      0        4      4
0-6 months    LCNI-5           MALAWI                         0                      1        0      4
0-6 months    MAL-ED           BANGLADESH                     1                      0        4     58
0-6 months    MAL-ED           BANGLADESH                     1                      1       14     58
0-6 months    MAL-ED           BANGLADESH                     0                      0        8     58
0-6 months    MAL-ED           BANGLADESH                     0                      1       32     58
0-6 months    MAL-ED           BRAZIL                         1                      0        1     15
0-6 months    MAL-ED           BRAZIL                         1                      1        1     15
0-6 months    MAL-ED           BRAZIL                         0                      0        0     15
0-6 months    MAL-ED           BRAZIL                         0                      1       13     15
0-6 months    MAL-ED           INDIA                          1                      0        0     72
0-6 months    MAL-ED           INDIA                          1                      1        1     72
0-6 months    MAL-ED           INDIA                          0                      0       20     72
0-6 months    MAL-ED           INDIA                          0                      1       51     72
0-6 months    MAL-ED           NEPAL                          1                      0        0     44
0-6 months    MAL-ED           NEPAL                          1                      1        1     44
0-6 months    MAL-ED           NEPAL                          0                      0        8     44
0-6 months    MAL-ED           NEPAL                          0                      1       35     44
0-6 months    MAL-ED           PERU                           1                      0        0     10
0-6 months    MAL-ED           PERU                           1                      1        3     10
0-6 months    MAL-ED           PERU                           0                      0        0     10
0-6 months    MAL-ED           PERU                           0                      1        7     10
0-6 months    MAL-ED           SOUTH AFRICA                   1                      0        0     28
0-6 months    MAL-ED           SOUTH AFRICA                   1                      1        0     28
0-6 months    MAL-ED           SOUTH AFRICA                   0                      0        4     28
0-6 months    MAL-ED           SOUTH AFRICA                   0                      1       24     28
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0        1     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1       13     14
0-6 months    PROVIDE          BANGLADESH                     1                      0       14    185
0-6 months    PROVIDE          BANGLADESH                     1                      1       38    185
0-6 months    PROVIDE          BANGLADESH                     0                      0       26    185
0-6 months    PROVIDE          BANGLADESH                     0                      1      107    185
0-6 months    SAS-CompFeed     INDIA                          1                      0       45     94
0-6 months    SAS-CompFeed     INDIA                          1                      1       43     94
0-6 months    SAS-CompFeed     INDIA                          0                      0        3     94
0-6 months    SAS-CompFeed     INDIA                          0                      1        3     94
0-6 months    SAS-FoodSuppl    INDIA                          1                      0        0     48
0-6 months    SAS-FoodSuppl    INDIA                          1                      1        0     48
0-6 months    SAS-FoodSuppl    INDIA                          0                      0       48     48
0-6 months    SAS-FoodSuppl    INDIA                          0                      1        0     48
6-24 months   CMC-V-BCS-2002   INDIA                          1                      0        3      7
6-24 months   CMC-V-BCS-2002   INDIA                          1                      1        4      7
6-24 months   CMC-V-BCS-2002   INDIA                          0                      0        0      7
6-24 months   CMC-V-BCS-2002   INDIA                          0                      1        0      7
6-24 months   EE               PAKISTAN                       1                      0        9     19
6-24 months   EE               PAKISTAN                       1                      1        9     19
6-24 months   EE               PAKISTAN                       0                      0        0     19
6-24 months   EE               PAKISTAN                       0                      1        1     19
6-24 months   GMS-Nepal        NEPAL                          1                      0      138    366
6-24 months   GMS-Nepal        NEPAL                          1                      1      135    366
6-24 months   GMS-Nepal        NEPAL                          0                      0       46    366
6-24 months   GMS-Nepal        NEPAL                          0                      1       47    366
6-24 months   IRC              INDIA                          1                      0        0      6
6-24 months   IRC              INDIA                          1                      1        0      6
6-24 months   IRC              INDIA                          0                      0        4      6
6-24 months   IRC              INDIA                          0                      1        2      6
6-24 months   Keneba           GAMBIA                         1                      0      143    924
6-24 months   Keneba           GAMBIA                         1                      1      150    924
6-24 months   Keneba           GAMBIA                         0                      0      296    924
6-24 months   Keneba           GAMBIA                         0                      1      335    924
6-24 months   LCNI-5           MALAWI                         1                      0        5     30
6-24 months   LCNI-5           MALAWI                         1                      1        2     30
6-24 months   LCNI-5           MALAWI                         0                      0       18     30
6-24 months   LCNI-5           MALAWI                         0                      1        5     30
6-24 months   MAL-ED           BANGLADESH                     1                      0       11     56
6-24 months   MAL-ED           BANGLADESH                     1                      1       16     56
6-24 months   MAL-ED           BANGLADESH                     0                      0       17     56
6-24 months   MAL-ED           BANGLADESH                     0                      1       12     56
6-24 months   MAL-ED           BRAZIL                         1                      0        0      9
6-24 months   MAL-ED           BRAZIL                         1                      1        0      9
6-24 months   MAL-ED           BRAZIL                         0                      0        5      9
6-24 months   MAL-ED           BRAZIL                         0                      1        4      9
6-24 months   MAL-ED           INDIA                          1                      0        0     90
6-24 months   MAL-ED           INDIA                          1                      1        1     90
6-24 months   MAL-ED           INDIA                          0                      0       42     90
6-24 months   MAL-ED           INDIA                          0                      1       47     90
6-24 months   MAL-ED           NEPAL                          1                      0        1     50
6-24 months   MAL-ED           NEPAL                          1                      1        1     50
6-24 months   MAL-ED           NEPAL                          0                      0       10     50
6-24 months   MAL-ED           NEPAL                          0                      1       38     50
6-24 months   MAL-ED           PERU                           1                      0        2     24
6-24 months   MAL-ED           PERU                           1                      1        3     24
6-24 months   MAL-ED           PERU                           0                      0        4     24
6-24 months   MAL-ED           PERU                           0                      1       15     24
6-24 months   MAL-ED           SOUTH AFRICA                   1                      0        0     47
6-24 months   MAL-ED           SOUTH AFRICA                   1                      1        0     47
6-24 months   MAL-ED           SOUTH AFRICA                   0                      0        7     47
6-24 months   MAL-ED           SOUTH AFRICA                   0                      1       40     47
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        0     36
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        0     36
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0        8     36
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1       28     36
6-24 months   PROVIDE          BANGLADESH                     1                      0       17    123
6-24 months   PROVIDE          BANGLADESH                     1                      1        7    123
6-24 months   PROVIDE          BANGLADESH                     0                      0       72    123
6-24 months   PROVIDE          BANGLADESH                     0                      1       27    123
6-24 months   SAS-CompFeed     INDIA                          1                      0       99    144
6-24 months   SAS-CompFeed     INDIA                          1                      1       38    144
6-24 months   SAS-CompFeed     INDIA                          0                      0        3    144
6-24 months   SAS-CompFeed     INDIA                          0                      1        4    144
6-24 months   SAS-FoodSuppl    INDIA                          1                      0        0     60
6-24 months   SAS-FoodSuppl    INDIA                          1                      1        0     60
6-24 months   SAS-FoodSuppl    INDIA                          0                      0       52     60
6-24 months   SAS-FoodSuppl    INDIA                          0                      1        8     60


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/cf85088b-12b2-49c3-8107-25c6bfef06da/4603470f-b6fa-4386-b60d-f05690ebe221/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cf85088b-12b2-49c3-8107-25c6bfef06da/4603470f-b6fa-4386-b60d-f05690ebe221/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cf85088b-12b2-49c3-8107-25c6bfef06da/4603470f-b6fa-4386-b60d-f05690ebe221/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cf85088b-12b2-49c3-8107-25c6bfef06da/4603470f-b6fa-4386-b60d-f05690ebe221/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                0.5665914   0.5166081   0.6165747
0-24 months   GMS-Nepal      NEPAL        0                    NA                0.5364238   0.4464027   0.6264450
0-24 months   Keneba         GAMBIA       1                    NA                0.6370968   0.5912320   0.6829616
0-24 months   Keneba         GAMBIA       0                    NA                0.6329114   0.6028311   0.6629917
0-24 months   MAL-ED         BANGLADESH   1                    NA                0.6666667   0.5380396   0.7952937
0-24 months   MAL-ED         BANGLADESH   0                    NA                0.6376812   0.5149052   0.7604571
0-24 months   PROVIDE        BANGLADESH   1                    NA                0.5921053   0.4748033   0.7094072
0-24 months   PROVIDE        BANGLADESH   0                    NA                0.5775862   0.5129264   0.6422461
0-24 months   SAS-CompFeed   INDIA        1                    NA                0.3600000   0.2937351   0.4262649
0-24 months   SAS-CompFeed   INDIA        0                    NA                0.5384615   0.2364546   0.8404685
0-6 months    GMS-Nepal      NEPAL        1                    NA                0.6823529   0.6118839   0.7528220
0-6 months    GMS-Nepal      NEPAL        0                    NA                0.5862069   0.4571188   0.7152950
0-6 months    Keneba         GAMBIA       1                    NA                0.8177340   0.7659291   0.8695389
0-6 months    Keneba         GAMBIA       0                    NA                0.7684211   0.7311579   0.8056842
0-6 months    PROVIDE        BANGLADESH   1                    NA                0.7307692   0.6140851   0.8474534
0-6 months    PROVIDE        BANGLADESH   0                    NA                0.8045113   0.7374219   0.8716007
6-24 months   GMS-Nepal      NEPAL        1                    NA                0.4945055   0.4294359   0.5595751
6-24 months   GMS-Nepal      NEPAL        0                    NA                0.5053763   0.3987212   0.6120315
6-24 months   Keneba         GAMBIA       1                    NA                0.5119454   0.4487526   0.5751382
6-24 months   Keneba         GAMBIA       0                    NA                0.5309033   0.4898337   0.5719730
6-24 months   MAL-ED         BANGLADESH   1                    NA                0.5925926   0.4104877   0.7746975
6-24 months   MAL-ED         BANGLADESH   0                    NA                0.4137931   0.2226867   0.6048995
6-24 months   PROVIDE        BANGLADESH   1                    NA                0.2916667   0.0943448   0.4889886
6-24 months   PROVIDE        BANGLADESH   0                    NA                0.2727273   0.1836941   0.3617604


### Parameter: E(Y)


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal      NEPAL        NA                   NA                0.5589226   0.5151400   0.6027051
0-24 months   Keneba         GAMBIA       NA                   NA                0.6342072   0.6090524   0.6593621
0-24 months   MAL-ED         BANGLADESH   NA                   NA                0.6491228   0.5591034   0.7391422
0-24 months   PROVIDE        BANGLADESH   NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   SAS-CompFeed   INDIA        NA                   NA                0.3697479   0.3045176   0.4349782
0-6 months    GMS-Nepal      NEPAL        NA                   NA                0.6578947   0.5956613   0.7201282
0-6 months    Keneba         GAMBIA       NA                   NA                0.7831858   0.7527627   0.8136090
0-6 months    PROVIDE        BANGLADESH   NA                   NA                0.7837838   0.7252863   0.8422812
6-24 months   GMS-Nepal      NEPAL        NA                   NA                0.4972678   0.4417121   0.5528234
6-24 months   Keneba         GAMBIA       NA                   NA                0.5248918   0.4904236   0.5593599
6-24 months   MAL-ED         BANGLADESH   NA                   NA                0.5000000   0.3630175   0.6369825
6-24 months   PROVIDE        BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682


### Parameter: RR


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal      NEPAL        0                    1                 0.9467560   0.7832370   1.144413
0-24 months   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   Keneba         GAMBIA       0                    1                 0.9934305   0.9113118   1.082949
0-24 months   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED         BANGLADESH   0                    1                 0.9565217   0.7281502   1.256518
0-24 months   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   PROVIDE        BANGLADESH   0                    1                 0.9754789   0.7769013   1.224813
0-24 months   SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed   INDIA        0                    1                 1.4957265   0.8288715   2.699089
0-6 months    GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal      NEPAL        0                    1                 0.8590963   0.6736130   1.095654
0-6 months    Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    Keneba         GAMBIA       0                    1                 0.9396956   0.8676281   1.017749
0-6 months    PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    PROVIDE        BANGLADESH   0                    1                 1.1009102   0.9194229   1.318222
6-24 months   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal      NEPAL        0                    1                 1.0219833   0.7968052   1.310797
6-24 months   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   Keneba         GAMBIA       0                    1                 1.0370312   0.8964221   1.199696
6-24 months   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED         BANGLADESH   0                    1                 0.6982759   0.4011192   1.215572
6-24 months   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   PROVIDE        BANGLADESH   0                    1                 0.9350649   0.4411401   1.982015


### Parameter: PAR


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                -0.0076689   -0.0339330   0.0185953
0-24 months   Keneba         GAMBIA       1                    NA                -0.0028895   -0.0407593   0.0349802
0-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0175439   -0.1251106   0.0900229
0-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0109364   -0.1118324   0.0899596
0-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0097479   -0.0087899   0.0282857
0-6 months    GMS-Nepal      NEPAL        1                    NA                -0.0244582   -0.0623411   0.0134247
0-6 months    Keneba         GAMBIA       1                    NA                -0.0345481   -0.0792460   0.0101497
0-6 months    PROVIDE        BANGLADESH   1                    NA                 0.0530146   -0.0439657   0.1499948
6-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0027623   -0.0289795   0.0345040
6-24 months   Keneba         GAMBIA       1                    NA                 0.0129464   -0.0385156   0.0644084
6-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0925926   -0.2328449   0.0476597
6-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0152439   -0.1895523   0.1590645


### Parameter: PAF


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                -0.0137208   -0.0618835   0.0322574
0-24 months   Keneba         GAMBIA       1                    NA                -0.0045561   -0.0660751   0.0534128
0-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0270270   -0.2076159   0.1265563
0-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0188180   -0.2080360   0.1407623
0-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0263636   -0.0248925   0.0750564
0-6 months    GMS-Nepal      NEPAL        1                    NA                -0.0371765   -0.0967690   0.0191781
0-6 months    Keneba         GAMBIA       1                    NA                -0.0441123   -0.1029591   0.0115948
0-6 months    PROVIDE        BANGLADESH   1                    NA                 0.0676393   -0.0651972   0.1839102
6-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0055549   -0.0604002   0.0674077
6-24 months   Keneba         GAMBIA       1                    NA                 0.0246649   -0.0785693   0.1180180
6-24 months   MAL-ED         BANGLADESH   1                    NA                -0.1851852   -0.5160790   0.0734890
6-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0551471   -0.9164156   0.4190533
