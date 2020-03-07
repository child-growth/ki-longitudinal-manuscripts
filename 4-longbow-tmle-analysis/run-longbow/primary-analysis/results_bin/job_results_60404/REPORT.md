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

agecat        studyid          country                        exclfeed3    wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  ----------  ------------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          1                      0        5     11
0-24 months   CMC-V-BCS-2002   INDIA                          1                      1        6     11
0-24 months   CMC-V-BCS-2002   INDIA                          0                      0        0     11
0-24 months   CMC-V-BCS-2002   INDIA                          0                      1        0     11
0-24 months   EE               PAKISTAN                       1                      0       14     30
0-24 months   EE               PAKISTAN                       1                      1       16     30
0-24 months   EE               PAKISTAN                       0                      0        0     30
0-24 months   EE               PAKISTAN                       0                      1        0     30
0-24 months   GMS-Nepal        NEPAL                          1                      0      185    491
0-24 months   GMS-Nepal        NEPAL                          1                      1      231    491
0-24 months   GMS-Nepal        NEPAL                          0                      0       32    491
0-24 months   GMS-Nepal        NEPAL                          0                      1       43    491
0-24 months   IRC              INDIA                          1                      0        0     14
0-24 months   IRC              INDIA                          1                      1        0     14
0-24 months   IRC              INDIA                          0                      0        8     14
0-24 months   IRC              INDIA                          0                      1        6     14
0-24 months   JiVitA-3         BANGLADESH                     1                      0     2251   4340
0-24 months   JiVitA-3         BANGLADESH                     1                      1     1698   4340
0-24 months   JiVitA-3         BANGLADESH                     0                      0      219   4340
0-24 months   JiVitA-3         BANGLADESH                     0                      1      172   4340
0-24 months   JiVitA-4         BANGLADESH                     1                      0       37     54
0-24 months   JiVitA-4         BANGLADESH                     1                      1       12     54
0-24 months   JiVitA-4         BANGLADESH                     0                      0        5     54
0-24 months   JiVitA-4         BANGLADESH                     0                      1        0     54
0-24 months   Keneba           GAMBIA                         1                      0      456   1502
0-24 months   Keneba           GAMBIA                         1                      1      849   1502
0-24 months   Keneba           GAMBIA                         0                      0       82   1502
0-24 months   Keneba           GAMBIA                         0                      1      115   1502
0-24 months   MAL-ED           BANGLADESH                     1                      0       26    117
0-24 months   MAL-ED           BANGLADESH                     1                      1       51    117
0-24 months   MAL-ED           BANGLADESH                     0                      0       15    117
0-24 months   MAL-ED           BANGLADESH                     0                      1       25    117
0-24 months   MAL-ED           BRAZIL                         1                      0        4     22
0-24 months   MAL-ED           BRAZIL                         1                      1        5     22
0-24 months   MAL-ED           BRAZIL                         0                      0        2     22
0-24 months   MAL-ED           BRAZIL                         0                      1       11     22
0-24 months   MAL-ED           INDIA                          1                      0       27    162
0-24 months   MAL-ED           INDIA                          1                      1       51    162
0-24 months   MAL-ED           INDIA                          0                      0       35    162
0-24 months   MAL-ED           INDIA                          0                      1       49    162
0-24 months   MAL-ED           NEPAL                          1                      0        6     96
0-24 months   MAL-ED           NEPAL                          1                      1       16     96
0-24 months   MAL-ED           NEPAL                          0                      0       14     96
0-24 months   MAL-ED           NEPAL                          0                      1       60     96
0-24 months   MAL-ED           PERU                           1                      0        1     33
0-24 months   MAL-ED           PERU                           1                      1        3     33
0-24 months   MAL-ED           PERU                           0                      0        5     33
0-24 months   MAL-ED           PERU                           0                      1       24     33
0-24 months   MAL-ED           SOUTH AFRICA                   1                      0        0     77
0-24 months   MAL-ED           SOUTH AFRICA                   1                      1        2     77
0-24 months   MAL-ED           SOUTH AFRICA                   0                      0       12     77
0-24 months   MAL-ED           SOUTH AFRICA                   0                      1       63     77
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        1     44
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        7     44
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0        7     44
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1       29     44
0-24 months   PROVIDE          BANGLADESH                     1                      0       89    308
0-24 months   PROVIDE          BANGLADESH                     1                      1      125    308
0-24 months   PROVIDE          BANGLADESH                     0                      0       40    308
0-24 months   PROVIDE          BANGLADESH                     0                      1       54    308
0-24 months   SAS-CompFeed     INDIA                          1                      0      144    238
0-24 months   SAS-CompFeed     INDIA                          1                      1       81    238
0-24 months   SAS-CompFeed     INDIA                          0                      0        6    238
0-24 months   SAS-CompFeed     INDIA                          0                      1        7    238
0-6 months    CMC-V-BCS-2002   INDIA                          1                      0        3      6
0-6 months    CMC-V-BCS-2002   INDIA                          1                      1        3      6
0-6 months    CMC-V-BCS-2002   INDIA                          0                      0        0      6
0-6 months    CMC-V-BCS-2002   INDIA                          0                      1        0      6
0-6 months    EE               PAKISTAN                       1                      0        5     12
0-6 months    EE               PAKISTAN                       1                      1        7     12
0-6 months    EE               PAKISTAN                       0                      0        0     12
0-6 months    EE               PAKISTAN                       0                      1        0     12
0-6 months    GMS-Nepal        NEPAL                          1                      0       54    181
0-6 months    GMS-Nepal        NEPAL                          1                      1       96    181
0-6 months    GMS-Nepal        NEPAL                          0                      0       13    181
0-6 months    GMS-Nepal        NEPAL                          0                      1       18    181
0-6 months    IRC              INDIA                          1                      0        0     10
0-6 months    IRC              INDIA                          1                      1        0     10
0-6 months    IRC              INDIA                          0                      0        5     10
0-6 months    IRC              INDIA                          0                      1        5     10
0-6 months    JiVitA-3         BANGLADESH                     1                      0      762   2720
0-6 months    JiVitA-3         BANGLADESH                     1                      1     1698   2720
0-6 months    JiVitA-3         BANGLADESH                     0                      0       88   2720
0-6 months    JiVitA-3         BANGLADESH                     0                      1      172   2720
0-6 months    JiVitA-4         BANGLADESH                     1                      0        5     10
0-6 months    JiVitA-4         BANGLADESH                     1                      1        3     10
0-6 months    JiVitA-4         BANGLADESH                     0                      0        2     10
0-6 months    JiVitA-4         BANGLADESH                     0                      1        0     10
0-6 months    Keneba           GAMBIA                         1                      0       98    645
0-6 months    Keneba           GAMBIA                         1                      1      444    645
0-6 months    Keneba           GAMBIA                         0                      0       32    645
0-6 months    Keneba           GAMBIA                         0                      1       71    645
0-6 months    MAL-ED           BANGLADESH                     1                      0        7     58
0-6 months    MAL-ED           BANGLADESH                     1                      1       30     58
0-6 months    MAL-ED           BANGLADESH                     0                      0        5     58
0-6 months    MAL-ED           BANGLADESH                     0                      1       16     58
0-6 months    MAL-ED           BRAZIL                         1                      0        1     13
0-6 months    MAL-ED           BRAZIL                         1                      1        4     13
0-6 months    MAL-ED           BRAZIL                         0                      0        0     13
0-6 months    MAL-ED           BRAZIL                         0                      1        8     13
0-6 months    MAL-ED           INDIA                          1                      0        6     74
0-6 months    MAL-ED           INDIA                          1                      1       24     74
0-6 months    MAL-ED           INDIA                          0                      0       17     74
0-6 months    MAL-ED           INDIA                          0                      1       27     74
0-6 months    MAL-ED           NEPAL                          1                      0        4     46
0-6 months    MAL-ED           NEPAL                          1                      1        6     46
0-6 months    MAL-ED           NEPAL                          0                      0        5     46
0-6 months    MAL-ED           NEPAL                          0                      1       31     46
0-6 months    MAL-ED           PERU                           1                      0        0     11
0-6 months    MAL-ED           PERU                           1                      1        0     11
0-6 months    MAL-ED           PERU                           0                      0        0     11
0-6 months    MAL-ED           PERU                           0                      1       11     11
0-6 months    MAL-ED           SOUTH AFRICA                   1                      0        0     29
0-6 months    MAL-ED           SOUTH AFRICA                   1                      1        1     29
0-6 months    MAL-ED           SOUTH AFRICA                   0                      0        4     29
0-6 months    MAL-ED           SOUTH AFRICA                   0                      1       24     29
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        0     12
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        4     12
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0        0     12
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1        8     12
0-6 months    PROVIDE          BANGLADESH                     1                      0       24    185
0-6 months    PROVIDE          BANGLADESH                     1                      1      100    185
0-6 months    PROVIDE          BANGLADESH                     0                      0       16    185
0-6 months    PROVIDE          BANGLADESH                     0                      1       45    185
0-6 months    SAS-CompFeed     INDIA                          1                      0       45     94
0-6 months    SAS-CompFeed     INDIA                          1                      1       43     94
0-6 months    SAS-CompFeed     INDIA                          0                      0        3     94
0-6 months    SAS-CompFeed     INDIA                          0                      1        3     94
6-24 months   CMC-V-BCS-2002   INDIA                          1                      0        2      5
6-24 months   CMC-V-BCS-2002   INDIA                          1                      1        3      5
6-24 months   CMC-V-BCS-2002   INDIA                          0                      0        0      5
6-24 months   CMC-V-BCS-2002   INDIA                          0                      1        0      5
6-24 months   EE               PAKISTAN                       1                      0        9     18
6-24 months   EE               PAKISTAN                       1                      1        9     18
6-24 months   EE               PAKISTAN                       0                      0        0     18
6-24 months   EE               PAKISTAN                       0                      1        0     18
6-24 months   GMS-Nepal        NEPAL                          1                      0      131    310
6-24 months   GMS-Nepal        NEPAL                          1                      1      135    310
6-24 months   GMS-Nepal        NEPAL                          0                      0       19    310
6-24 months   GMS-Nepal        NEPAL                          0                      1       25    310
6-24 months   IRC              INDIA                          1                      0        0      4
6-24 months   IRC              INDIA                          1                      1        0      4
6-24 months   IRC              INDIA                          0                      0        3      4
6-24 months   IRC              INDIA                          0                      1        1      4
6-24 months   JiVitA-3         BANGLADESH                     1                      0     1489   1620
6-24 months   JiVitA-3         BANGLADESH                     1                      1        0   1620
6-24 months   JiVitA-3         BANGLADESH                     0                      0      131   1620
6-24 months   JiVitA-3         BANGLADESH                     0                      1        0   1620
6-24 months   JiVitA-4         BANGLADESH                     1                      0       32     44
6-24 months   JiVitA-4         BANGLADESH                     1                      1        9     44
6-24 months   JiVitA-4         BANGLADESH                     0                      0        3     44
6-24 months   JiVitA-4         BANGLADESH                     0                      1        0     44
6-24 months   Keneba           GAMBIA                         1                      0      358    857
6-24 months   Keneba           GAMBIA                         1                      1      405    857
6-24 months   Keneba           GAMBIA                         0                      0       50    857
6-24 months   Keneba           GAMBIA                         0                      1       44    857
6-24 months   MAL-ED           BANGLADESH                     1                      0       19     59
6-24 months   MAL-ED           BANGLADESH                     1                      1       21     59
6-24 months   MAL-ED           BANGLADESH                     0                      0       10     59
6-24 months   MAL-ED           BANGLADESH                     0                      1        9     59
6-24 months   MAL-ED           BRAZIL                         1                      0        3      9
6-24 months   MAL-ED           BRAZIL                         1                      1        1      9
6-24 months   MAL-ED           BRAZIL                         0                      0        2      9
6-24 months   MAL-ED           BRAZIL                         0                      1        3      9
6-24 months   MAL-ED           INDIA                          1                      0       21     88
6-24 months   MAL-ED           INDIA                          1                      1       27     88
6-24 months   MAL-ED           INDIA                          0                      0       18     88
6-24 months   MAL-ED           INDIA                          0                      1       22     88
6-24 months   MAL-ED           NEPAL                          1                      0        2     50
6-24 months   MAL-ED           NEPAL                          1                      1       10     50
6-24 months   MAL-ED           NEPAL                          0                      0        9     50
6-24 months   MAL-ED           NEPAL                          0                      1       29     50
6-24 months   MAL-ED           PERU                           1                      0        1     22
6-24 months   MAL-ED           PERU                           1                      1        3     22
6-24 months   MAL-ED           PERU                           0                      0        5     22
6-24 months   MAL-ED           PERU                           0                      1       13     22
6-24 months   MAL-ED           SOUTH AFRICA                   1                      0        0     48
6-24 months   MAL-ED           SOUTH AFRICA                   1                      1        1     48
6-24 months   MAL-ED           SOUTH AFRICA                   0                      0        8     48
6-24 months   MAL-ED           SOUTH AFRICA                   0                      1       39     48
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        1     32
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        3     32
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0        7     32
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1       21     32
6-24 months   PROVIDE          BANGLADESH                     1                      0       65    123
6-24 months   PROVIDE          BANGLADESH                     1                      1       25    123
6-24 months   PROVIDE          BANGLADESH                     0                      0       24    123
6-24 months   PROVIDE          BANGLADESH                     0                      1        9    123
6-24 months   SAS-CompFeed     INDIA                          1                      0       99    144
6-24 months   SAS-CompFeed     INDIA                          1                      1       38    144
6-24 months   SAS-CompFeed     INDIA                          0                      0        3    144
6-24 months   SAS-CompFeed     INDIA                          0                      1        4    144


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA

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
![](/tmp/dac41cb6-311d-431c-aad1-10a17554b5a4/f5de5a4f-3132-40cf-8965-cd3860484a8b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dac41cb6-311d-431c-aad1-10a17554b5a4/f5de5a4f-3132-40cf-8965-cd3860484a8b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dac41cb6-311d-431c-aad1-10a17554b5a4/f5de5a4f-3132-40cf-8965-cd3860484a8b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dac41cb6-311d-431c-aad1-10a17554b5a4/f5de5a4f-3132-40cf-8965-cd3860484a8b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                0.5547280   0.5019438   0.6075123
0-24 months   GMS-Nepal      NEPAL        0                    NA                0.5504398   0.4229735   0.6779061
0-24 months   JiVitA-3       BANGLADESH   1                    NA                0.4286632   0.4133932   0.4439332
0-24 months   JiVitA-3       BANGLADESH   0                    NA                0.4533525   0.4048471   0.5018579
0-24 months   Keneba         GAMBIA       1                    NA                0.6500061   0.6224774   0.6775347
0-24 months   Keneba         GAMBIA       0                    NA                0.5818469   0.5126879   0.6510060
0-24 months   MAL-ED         BANGLADESH   1                    NA                0.6433853   0.5361710   0.7505996
0-24 months   MAL-ED         BANGLADESH   0                    NA                0.5538727   0.3883967   0.7193488
0-24 months   MAL-ED         INDIA        1                    NA                0.6681940   0.5557734   0.7806147
0-24 months   MAL-ED         INDIA        0                    NA                0.5946140   0.4742513   0.7149767
0-24 months   MAL-ED         NEPAL        1                    NA                0.7272727   0.5132170   0.9413285
0-24 months   MAL-ED         NEPAL        0                    NA                0.8108108   0.7343861   0.8872355
0-24 months   PROVIDE        BANGLADESH   1                    NA                0.5828503   0.5148707   0.6508298
0-24 months   PROVIDE        BANGLADESH   0                    NA                0.5674881   0.4635147   0.6714614
0-24 months   SAS-CompFeed   INDIA        1                    NA                0.3600000   0.2937351   0.4262649
0-24 months   SAS-CompFeed   INDIA        0                    NA                0.5384615   0.2364546   0.8404685
0-6 months    GMS-Nepal      NEPAL        1                    NA                0.6414400   0.5637170   0.7191630
0-6 months    GMS-Nepal      NEPAL        0                    NA                0.5874914   0.4047815   0.7702013
0-6 months    JiVitA-3       BANGLADESH   1                    NA                0.6898319   0.6715954   0.7080683
0-6 months    JiVitA-3       BANGLADESH   0                    NA                0.6644831   0.6067916   0.7221745
0-6 months    Keneba         GAMBIA       1                    NA                0.8196629   0.7881655   0.8511604
0-6 months    Keneba         GAMBIA       0                    NA                0.6905245   0.6072367   0.7738124
0-6 months    MAL-ED         BANGLADESH   1                    NA                0.8108108   0.6837788   0.9378428
0-6 months    MAL-ED         BANGLADESH   0                    NA                0.7619048   0.5846570   0.9391525
0-6 months    MAL-ED         INDIA        1                    NA                0.8000000   0.6503909   0.9496091
0-6 months    MAL-ED         INDIA        0                    NA                0.6136364   0.4674979   0.7597749
0-6 months    PROVIDE        BANGLADESH   1                    NA                0.8070121   0.7388425   0.8751818
0-6 months    PROVIDE        BANGLADESH   0                    NA                0.7428318   0.6304760   0.8551875
6-24 months   GMS-Nepal      NEPAL        1                    NA                0.5072618   0.4416935   0.5728301
6-24 months   GMS-Nepal      NEPAL        0                    NA                0.5480317   0.3836108   0.7124526
6-24 months   Keneba         GAMBIA       1                    NA                0.5292890   0.4914359   0.5671420
6-24 months   Keneba         GAMBIA       0                    NA                0.4446928   0.3392773   0.5501084
6-24 months   MAL-ED         BANGLADESH   1                    NA                0.5250000   0.3534413   0.6965587
6-24 months   MAL-ED         BANGLADESH   0                    NA                0.4736842   0.2738216   0.6735468
6-24 months   MAL-ED         INDIA        1                    NA                0.5702504   0.4129602   0.7275407
6-24 months   MAL-ED         INDIA        0                    NA                0.5438729   0.3531170   0.7346288
6-24 months   PROVIDE        BANGLADESH   1                    NA                0.2777778   0.1853143   0.3702413
6-24 months   PROVIDE        BANGLADESH   0                    NA                0.2727273   0.1045711   0.4408835


### Parameter: E(Y)


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal      NEPAL        NA                   NA                0.5580448   0.5093588   0.6067308
0-24 months   JiVitA-3       BANGLADESH   NA                   NA                0.4308756   0.4161410   0.4456101
0-24 months   Keneba         GAMBIA       NA                   NA                0.6418109   0.6160920   0.6675299
0-24 months   MAL-ED         BANGLADESH   NA                   NA                0.6495726   0.5607849   0.7383604
0-24 months   MAL-ED         INDIA        NA                   NA                0.6172840   0.5340594   0.7005085
0-24 months   MAL-ED         NEPAL        NA                   NA                0.7916667   0.7146386   0.8686947
0-24 months   PROVIDE        BANGLADESH   NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   SAS-CompFeed   INDIA        NA                   NA                0.3697479   0.3045176   0.4349782
0-6 months    GMS-Nepal      NEPAL        NA                   NA                0.6298343   0.5587812   0.7008873
0-6 months    JiVitA-3       BANGLADESH   NA                   NA                0.6875000   0.6700777   0.7049223
0-6 months    Keneba         GAMBIA       NA                   NA                0.7984496   0.7683939   0.8285053
0-6 months    MAL-ED         BANGLADESH   NA                   NA                0.7931034   0.6894917   0.8967152
0-6 months    MAL-ED         INDIA        NA                   NA                0.6891892   0.5810852   0.7972932
0-6 months    PROVIDE        BANGLADESH   NA                   NA                0.7837838   0.7252863   0.8422812
6-24 months   GMS-Nepal      NEPAL        NA                   NA                0.5161290   0.4555456   0.5767125
6-24 months   Keneba         GAMBIA       NA                   NA                0.5239207   0.4881434   0.5596979
6-24 months   MAL-ED         BANGLADESH   NA                   NA                0.5084746   0.3754416   0.6415076
6-24 months   MAL-ED         INDIA        NA                   NA                0.5568182   0.4384773   0.6751591
6-24 months   PROVIDE        BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682


### Parameter: RR


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal      NEPAL        0                    1                 0.9922697   0.7722239   1.2750179
0-24 months   JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3       BANGLADESH   0                    1                 1.0575961   0.9462051   1.1821004
0-24 months   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   Keneba         GAMBIA       0                    1                 0.8951408   0.7896248   1.0147565
0-24 months   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED         BANGLADESH   0                    1                 0.8608725   0.6078430   1.2192318
0-24 months   MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED         INDIA        0                    1                 0.8898823   0.6871080   1.1524979
0-24 months   MAL-ED         NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED         NEPAL        0                    1                 1.1148649   0.8180289   1.5194129
0-24 months   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE        BANGLADESH   0                    1                 0.9736430   0.7830945   1.2105571
0-24 months   SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed   INDIA        0                    1                 1.4957265   0.8288715   2.6990889
0-6 months    GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal      NEPAL        0                    1                 0.9158945   0.6558008   1.2791427
0-6 months    JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3       BANGLADESH   0                    1                 0.9632537   0.8798957   1.0545086
0-6 months    Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    Keneba         GAMBIA       0                    1                 0.8424494   0.7429767   0.9552399
0-6 months    MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED         BANGLADESH   0                    1                 0.9396825   0.7098559   1.2439191
0-6 months    MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED         INDIA        0                    1                 0.7670455   0.5666415   1.0383263
0-6 months    PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE        BANGLADESH   0                    1                 0.9204716   0.7737976   1.0949478
6-24 months   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal      NEPAL        0                    1                 1.0803725   0.7791245   1.4980978
6-24 months   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   Keneba         GAMBIA       0                    1                 0.8401702   0.6561439   1.0758098
6-24 months   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED         BANGLADESH   0                    1                 0.9022556   0.5291159   1.5385386
6-24 months   MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED         INDIA        0                    1                 0.9537439   0.6064702   1.4998717
6-24 months   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE        BANGLADESH   0                    1                 0.9818182   0.4873998   1.9777746


### Parameter: PAR


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0033168   -0.0178542    0.0244877
0-24 months   JiVitA-3       BANGLADESH   1                    NA                 0.0022124   -0.0022737    0.0066984
0-24 months   Keneba         GAMBIA       1                    NA                -0.0081952   -0.0178122    0.0014219
0-24 months   MAL-ED         BANGLADESH   1                    NA                 0.0061874   -0.0632524    0.0756271
0-24 months   MAL-ED         INDIA        1                    NA                -0.0509101   -0.1361223    0.0343021
0-24 months   MAL-ED         NEPAL        1                    NA                 0.0643939   -0.1121822    0.2409701
0-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0016814   -0.0396905    0.0363276
0-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0097479   -0.0087899    0.0282857
0-6 months    GMS-Nepal      NEPAL        1                    NA                -0.0116057   -0.0449106    0.0216991
0-6 months    JiVitA-3       BANGLADESH   1                    NA                -0.0023319   -0.0080371    0.0033733
0-6 months    Keneba         GAMBIA       1                    NA                -0.0212133   -0.0357077   -0.0067190
0-6 months    MAL-ED         BANGLADESH   1                    NA                -0.0177074   -0.0968466    0.0614319
0-6 months    MAL-ED         INDIA        1                    NA                -0.1108108   -0.2373338    0.0157122
0-6 months    PROVIDE        BANGLADESH   1                    NA                -0.0232284   -0.0665086    0.0200519
6-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0088672   -0.0155890    0.0333235
6-24 months   Keneba         GAMBIA       1                    NA                -0.0053683   -0.0178387    0.0071021
6-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0165254   -0.1017525    0.0687016
6-24 months   MAL-ED         INDIA        1                    NA                -0.0134323   -0.1308385    0.1039739
6-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0013550   -0.0528032    0.0500932


### Parameter: PAF


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0059436   -0.0327226    0.0431621
0-24 months   JiVitA-3       BANGLADESH   1                    NA                 0.0051346   -0.0053276    0.0154880
0-24 months   Keneba         GAMBIA       1                    NA                -0.0127688   -0.0278693    0.0021098
0-24 months   MAL-ED         BANGLADESH   1                    NA                 0.0095253   -0.1032239    0.1107515
0-24 months   MAL-ED         INDIA        1                    NA                -0.0824743   -0.2315851    0.0485833
0-24 months   MAL-ED         NEPAL        1                    NA                 0.0813397   -0.1745047    0.2814531
0-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0028932   -0.0704766    0.0604234
0-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0263636   -0.0248925    0.0750564
0-6 months    GMS-Nepal      NEPAL        1                    NA                -0.0184267   -0.0727992    0.0331901
0-6 months    JiVitA-3       BANGLADESH   1                    NA                -0.0033918   -0.0117267    0.0048744
0-6 months    Keneba         GAMBIA       1                    NA                -0.0265682   -0.0450518   -0.0084115
0-6 months    MAL-ED         BANGLADESH   1                    NA                -0.0223267   -0.1273587    0.0729199
0-6 months    MAL-ED         INDIA        1                    NA                -0.1607843   -0.3673319    0.0145624
0-6 months    PROVIDE        BANGLADESH   1                    NA                -0.0296362   -0.0867078    0.0244382
6-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0171802   -0.0314315    0.0635009
6-24 months   Keneba         GAMBIA       1                    NA                -0.0102464   -0.0343438    0.0132896
6-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0325000   -0.2127605    0.1209672
6-24 months   MAL-ED         INDIA        1                    NA                -0.0241232   -0.2590172    0.1669467
6-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0049020   -0.2095297    0.1651070
