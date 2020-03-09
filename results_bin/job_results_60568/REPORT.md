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

**Outcome Variable:** ever_co

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

agecat        studyid          country                        exclfeed3    ever_co   n_cell       n
------------  ---------------  -----------------------------  ----------  --------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          1                  0        7      10
0-24 months   CMC-V-BCS-2002   INDIA                          1                  1        3      10
0-24 months   CMC-V-BCS-2002   INDIA                          0                  0        0      10
0-24 months   CMC-V-BCS-2002   INDIA                          0                  1        0      10
0-24 months   EE               PAKISTAN                       1                  0       17      39
0-24 months   EE               PAKISTAN                       1                  1       22      39
0-24 months   EE               PAKISTAN                       0                  0        0      39
0-24 months   EE               PAKISTAN                       0                  1        0      39
0-24 months   GMS-Nepal        NEPAL                          1                  0      247     458
0-24 months   GMS-Nepal        NEPAL                          1                  1      133     458
0-24 months   GMS-Nepal        NEPAL                          0                  0       54     458
0-24 months   GMS-Nepal        NEPAL                          0                  1       24     458
0-24 months   IRC              INDIA                          1                  0        0      10
0-24 months   IRC              INDIA                          1                  1        0      10
0-24 months   IRC              INDIA                          0                  0        9      10
0-24 months   IRC              INDIA                          0                  1        1      10
0-24 months   JiVitA-3         BANGLADESH                     1                  0    12291   14981
0-24 months   JiVitA-3         BANGLADESH                     1                  1     1267   14981
0-24 months   JiVitA-3         BANGLADESH                     0                  0     1290   14981
0-24 months   JiVitA-3         BANGLADESH                     0                  1      133   14981
0-24 months   JiVitA-4         BANGLADESH                     1                  0      132     165
0-24 months   JiVitA-4         BANGLADESH                     1                  1       16     165
0-24 months   JiVitA-4         BANGLADESH                     0                  0       13     165
0-24 months   JiVitA-4         BANGLADESH                     0                  1        4     165
0-24 months   Keneba           GAMBIA                         1                  0     1515    2019
0-24 months   Keneba           GAMBIA                         1                  1      284    2019
0-24 months   Keneba           GAMBIA                         0                  0      163    2019
0-24 months   Keneba           GAMBIA                         0                  1       57    2019
0-24 months   MAL-ED           BANGLADESH                     1                  0      132     244
0-24 months   MAL-ED           BANGLADESH                     1                  1       27     244
0-24 months   MAL-ED           BANGLADESH                     0                  0       74     244
0-24 months   MAL-ED           BANGLADESH                     0                  1       11     244
0-24 months   MAL-ED           BRAZIL                         1                  0       62     202
0-24 months   MAL-ED           BRAZIL                         1                  1        2     202
0-24 months   MAL-ED           BRAZIL                         0                  0      137     202
0-24 months   MAL-ED           BRAZIL                         0                  1        1     202
0-24 months   MAL-ED           INDIA                          1                  0       91     216
0-24 months   MAL-ED           INDIA                          1                  1       22     216
0-24 months   MAL-ED           INDIA                          0                  0       76     216
0-24 months   MAL-ED           INDIA                          0                  1       27     216
0-24 months   MAL-ED           NEPAL                          1                  0       62     228
0-24 months   MAL-ED           NEPAL                          1                  1        9     228
0-24 months   MAL-ED           NEPAL                          0                  0      145     228
0-24 months   MAL-ED           NEPAL                          0                  1       12     228
0-24 months   MAL-ED           PERU                           1                  0       62     287
0-24 months   MAL-ED           PERU                           1                  1        2     287
0-24 months   MAL-ED           PERU                           0                  0      214     287
0-24 months   MAL-ED           PERU                           0                  1        9     287
0-24 months   MAL-ED           SOUTH AFRICA                   1                  0       25     269
0-24 months   MAL-ED           SOUTH AFRICA                   1                  1        0     269
0-24 months   MAL-ED           SOUTH AFRICA                   0                  0      223     269
0-24 months   MAL-ED           SOUTH AFRICA                   0                  1       21     269
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       46     219
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        1     219
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      154     219
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       18     219
0-24 months   PROVIDE          BANGLADESH                     1                  0      440     700
0-24 months   PROVIDE          BANGLADESH                     1                  1       63     700
0-24 months   PROVIDE          BANGLADESH                     0                  0      170     700
0-24 months   PROVIDE          BANGLADESH                     0                  1       27     700
0-24 months   SAS-CompFeed     INDIA                          1                  0      318     444
0-24 months   SAS-CompFeed     INDIA                          1                  1      104     444
0-24 months   SAS-CompFeed     INDIA                          0                  0       15     444
0-24 months   SAS-CompFeed     INDIA                          0                  1        7     444
0-6 months    CMC-V-BCS-2002   INDIA                          1                  0        9      10
0-6 months    CMC-V-BCS-2002   INDIA                          1                  1        1      10
0-6 months    CMC-V-BCS-2002   INDIA                          0                  0        0      10
0-6 months    CMC-V-BCS-2002   INDIA                          0                  1        0      10
0-6 months    EE               PAKISTAN                       1                  0       32      39
0-6 months    EE               PAKISTAN                       1                  1        7      39
0-6 months    EE               PAKISTAN                       0                  0        0      39
0-6 months    EE               PAKISTAN                       0                  1        0      39
0-6 months    GMS-Nepal        NEPAL                          1                  0      363     458
0-6 months    GMS-Nepal        NEPAL                          1                  1       17     458
0-6 months    GMS-Nepal        NEPAL                          0                  0       71     458
0-6 months    GMS-Nepal        NEPAL                          0                  1        7     458
0-6 months    IRC              INDIA                          1                  0        0      10
0-6 months    IRC              INDIA                          1                  1        0      10
0-6 months    IRC              INDIA                          0                  0        9      10
0-6 months    IRC              INDIA                          0                  1        1      10
0-6 months    JiVitA-3         BANGLADESH                     1                  0    12964   14954
0-6 months    JiVitA-3         BANGLADESH                     1                  1      570   14954
0-6 months    JiVitA-3         BANGLADESH                     0                  0     1354   14954
0-6 months    JiVitA-3         BANGLADESH                     0                  1       66   14954
0-6 months    JiVitA-4         BANGLADESH                     1                  0      148     164
0-6 months    JiVitA-4         BANGLADESH                     1                  1        0     164
0-6 months    JiVitA-4         BANGLADESH                     0                  0       15     164
0-6 months    JiVitA-4         BANGLADESH                     0                  1        1     164
0-6 months    Keneba           GAMBIA                         1                  0     1754    2019
0-6 months    Keneba           GAMBIA                         1                  1       45    2019
0-6 months    Keneba           GAMBIA                         0                  0      201    2019
0-6 months    Keneba           GAMBIA                         0                  1       19    2019
0-6 months    MAL-ED           BANGLADESH                     1                  0      154     244
0-6 months    MAL-ED           BANGLADESH                     1                  1        5     244
0-6 months    MAL-ED           BANGLADESH                     0                  0       81     244
0-6 months    MAL-ED           BANGLADESH                     0                  1        4     244
0-6 months    MAL-ED           BRAZIL                         1                  0       63     202
0-6 months    MAL-ED           BRAZIL                         1                  1        1     202
0-6 months    MAL-ED           BRAZIL                         0                  0      138     202
0-6 months    MAL-ED           BRAZIL                         0                  1        0     202
0-6 months    MAL-ED           INDIA                          1                  0      108     216
0-6 months    MAL-ED           INDIA                          1                  1        5     216
0-6 months    MAL-ED           INDIA                          0                  0       92     216
0-6 months    MAL-ED           INDIA                          0                  1       11     216
0-6 months    MAL-ED           NEPAL                          1                  0       69     228
0-6 months    MAL-ED           NEPAL                          1                  1        2     228
0-6 months    MAL-ED           NEPAL                          0                  0      152     228
0-6 months    MAL-ED           NEPAL                          0                  1        5     228
0-6 months    MAL-ED           PERU                           1                  0       64     287
0-6 months    MAL-ED           PERU                           1                  1        0     287
0-6 months    MAL-ED           PERU                           0                  0      221     287
0-6 months    MAL-ED           PERU                           0                  1        2     287
0-6 months    MAL-ED           SOUTH AFRICA                   1                  0       25     269
0-6 months    MAL-ED           SOUTH AFRICA                   1                  1        0     269
0-6 months    MAL-ED           SOUTH AFRICA                   0                  0      240     269
0-6 months    MAL-ED           SOUTH AFRICA                   0                  1        4     269
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       47     219
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     219
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      169     219
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1        3     219
0-6 months    PROVIDE          BANGLADESH                     1                  0      486     700
0-6 months    PROVIDE          BANGLADESH                     1                  1       17     700
0-6 months    PROVIDE          BANGLADESH                     0                  0      184     700
0-6 months    PROVIDE          BANGLADESH                     0                  1       13     700
0-6 months    SAS-CompFeed     INDIA                          1                  0      394     444
0-6 months    SAS-CompFeed     INDIA                          1                  1       28     444
0-6 months    SAS-CompFeed     INDIA                          0                  0       20     444
0-6 months    SAS-CompFeed     INDIA                          0                  1        2     444
6-24 months   CMC-V-BCS-2002   INDIA                          1                  0        8      10
6-24 months   CMC-V-BCS-2002   INDIA                          1                  1        2      10
6-24 months   CMC-V-BCS-2002   INDIA                          0                  0        0      10
6-24 months   CMC-V-BCS-2002   INDIA                          0                  1        0      10
6-24 months   EE               PAKISTAN                       1                  0       20      38
6-24 months   EE               PAKISTAN                       1                  1       18      38
6-24 months   EE               PAKISTAN                       0                  0        0      38
6-24 months   EE               PAKISTAN                       0                  1        0      38
6-24 months   GMS-Nepal        NEPAL                          1                  0      244     451
6-24 months   GMS-Nepal        NEPAL                          1                  1      131     451
6-24 months   GMS-Nepal        NEPAL                          0                  0       55     451
6-24 months   GMS-Nepal        NEPAL                          0                  1       21     451
6-24 months   IRC              INDIA                          1                  0        0      10
6-24 months   IRC              INDIA                          1                  1        0      10
6-24 months   IRC              INDIA                          0                  0       10      10
6-24 months   IRC              INDIA                          0                  1        0      10
6-24 months   JiVitA-3         BANGLADESH                     1                  0     7986    9608
6-24 months   JiVitA-3         BANGLADESH                     1                  1      793    9608
6-24 months   JiVitA-3         BANGLADESH                     0                  0      756    9608
6-24 months   JiVitA-3         BANGLADESH                     0                  1       73    9608
6-24 months   JiVitA-4         BANGLADESH                     1                  0      132     165
6-24 months   JiVitA-4         BANGLADESH                     1                  1       16     165
6-24 months   JiVitA-4         BANGLADESH                     0                  0       14     165
6-24 months   JiVitA-4         BANGLADESH                     0                  1        3     165
6-24 months   Keneba           GAMBIA                         1                  0     1436    1910
6-24 months   Keneba           GAMBIA                         1                  1      264    1910
6-24 months   Keneba           GAMBIA                         0                  0      158    1910
6-24 months   Keneba           GAMBIA                         0                  1       52    1910
6-24 months   MAL-ED           BANGLADESH                     1                  0      127     231
6-24 months   MAL-ED           BANGLADESH                     1                  1       24     231
6-24 months   MAL-ED           BANGLADESH                     0                  0       70     231
6-24 months   MAL-ED           BANGLADESH                     0                  1       10     231
6-24 months   MAL-ED           BRAZIL                         1                  0       59     185
6-24 months   MAL-ED           BRAZIL                         1                  1        1     185
6-24 months   MAL-ED           BRAZIL                         0                  0      124     185
6-24 months   MAL-ED           BRAZIL                         0                  1        1     185
6-24 months   MAL-ED           INDIA                          1                  0       90     209
6-24 months   MAL-ED           INDIA                          1                  1       19     209
6-24 months   MAL-ED           INDIA                          0                  0       76     209
6-24 months   MAL-ED           INDIA                          0                  1       24     209
6-24 months   MAL-ED           NEPAL                          1                  0       62     226
6-24 months   MAL-ED           NEPAL                          1                  1        8     226
6-24 months   MAL-ED           NEPAL                          0                  0      148     226
6-24 months   MAL-ED           NEPAL                          0                  1        8     226
6-24 months   MAL-ED           PERU                           1                  0       59     267
6-24 months   MAL-ED           PERU                           1                  1        2     267
6-24 months   MAL-ED           PERU                           0                  0      198     267
6-24 months   MAL-ED           PERU                           0                  1        8     267
6-24 months   MAL-ED           SOUTH AFRICA                   1                  0       23     248
6-24 months   MAL-ED           SOUTH AFRICA                   1                  1        0     248
6-24 months   MAL-ED           SOUTH AFRICA                   0                  0      206     248
6-24 months   MAL-ED           SOUTH AFRICA                   0                  1       19     248
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       45     210
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        1     210
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      148     210
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       16     210
6-24 months   PROVIDE          BANGLADESH                     1                  0      380     614
6-24 months   PROVIDE          BANGLADESH                     1                  1       55     614
6-24 months   PROVIDE          BANGLADESH                     0                  0      159     614
6-24 months   PROVIDE          BANGLADESH                     0                  1       20     614
6-24 months   SAS-CompFeed     INDIA                          1                  0      298     417
6-24 months   SAS-CompFeed     INDIA                          1                  1      100     417
6-24 months   SAS-CompFeed     INDIA                          0                  0       12     417
6-24 months   SAS-CompFeed     INDIA                          0                  1        7     417


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
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/a52522ab-cbe3-446f-a59e-f243d495c385/ae8aa182-6eb6-4284-bbaf-6f8230ba8468/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a52522ab-cbe3-446f-a59e-f243d495c385/ae8aa182-6eb6-4284-bbaf-6f8230ba8468/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a52522ab-cbe3-446f-a59e-f243d495c385/ae8aa182-6eb6-4284-bbaf-6f8230ba8468/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a52522ab-cbe3-446f-a59e-f243d495c385/ae8aa182-6eb6-4284-bbaf-6f8230ba8468/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                0.3503019   0.3022242   0.3983796
0-24 months   GMS-Nepal      NEPAL        0                    NA                0.3206159   0.2161191   0.4251127
0-24 months   JiVitA-3       BANGLADESH   1                    NA                0.0935693   0.0882300   0.0989086
0-24 months   JiVitA-3       BANGLADESH   0                    NA                0.0924785   0.0769278   0.1080292
0-24 months   Keneba         GAMBIA       1                    NA                0.1580008   0.1411751   0.1748265
0-24 months   Keneba         GAMBIA       0                    NA                0.2577272   0.2017724   0.3136819
0-24 months   MAL-ED         BANGLADESH   1                    NA                0.1687247   0.1099561   0.2274933
0-24 months   MAL-ED         BANGLADESH   0                    NA                0.1248812   0.0522962   0.1974661
0-24 months   MAL-ED         INDIA        1                    NA                0.2015944   0.1247860   0.2784029
0-24 months   MAL-ED         INDIA        0                    NA                0.2683054   0.1809663   0.3556445
0-24 months   MAL-ED         NEPAL        1                    NA                0.1267606   0.0492016   0.2043196
0-24 months   MAL-ED         NEPAL        0                    NA                0.0764331   0.0347819   0.1180843
0-24 months   PROVIDE        BANGLADESH   1                    NA                0.1285118   0.0990457   0.1579779
0-24 months   PROVIDE        BANGLADESH   0                    NA                0.1287803   0.0811359   0.1764247
0-24 months   SAS-CompFeed   INDIA        1                    NA                0.2464455   0.2022875   0.2906035
0-24 months   SAS-CompFeed   INDIA        0                    NA                0.3181818   0.1124254   0.5239382
0-6 months    GMS-Nepal      NEPAL        1                    NA                0.0447368   0.0239291   0.0655446
0-6 months    GMS-Nepal      NEPAL        0                    NA                0.0897436   0.0262457   0.1532414
0-6 months    JiVitA-3       BANGLADESH   1                    NA                0.0421491   0.0384268   0.0458715
0-6 months    JiVitA-3       BANGLADESH   0                    NA                0.0458843   0.0346724   0.0570962
0-6 months    Keneba         GAMBIA       1                    NA                0.0250674   0.0178466   0.0322882
0-6 months    Keneba         GAMBIA       0                    NA                0.0850503   0.0496851   0.1204155
0-6 months    MAL-ED         INDIA        1                    NA                0.0442478   0.0062433   0.0822523
0-6 months    MAL-ED         INDIA        0                    NA                0.1067961   0.0470114   0.1665808
0-6 months    PROVIDE        BANGLADESH   1                    NA                0.0336998   0.0178968   0.0495029
0-6 months    PROVIDE        BANGLADESH   0                    NA                0.0653567   0.0302543   0.1004590
6-24 months   GMS-Nepal      NEPAL        1                    NA                0.3489419   0.3006237   0.3972600
6-24 months   GMS-Nepal      NEPAL        0                    NA                0.2943415   0.1916251   0.3970580
6-24 months   JiVitA-3       BANGLADESH   1                    NA                0.0904106   0.0839182   0.0969031
6-24 months   JiVitA-3       BANGLADESH   0                    NA                0.0872390   0.0672291   0.1072489
6-24 months   Keneba         GAMBIA       1                    NA                0.1552091   0.1380165   0.1724018
6-24 months   Keneba         GAMBIA       0                    NA                0.2527046   0.1950076   0.3104017
6-24 months   MAL-ED         BANGLADESH   1                    NA                0.1560645   0.0974545   0.2146745
6-24 months   MAL-ED         BANGLADESH   0                    NA                0.1171039   0.0433833   0.1908246
6-24 months   MAL-ED         INDIA        1                    NA                0.1796445   0.1058662   0.2534227
6-24 months   MAL-ED         INDIA        0                    NA                0.2447034   0.1573042   0.3321026
6-24 months   MAL-ED         NEPAL        1                    NA                0.1142857   0.0395884   0.1889830
6-24 months   MAL-ED         NEPAL        0                    NA                0.0512821   0.0165924   0.0859717
6-24 months   PROVIDE        BANGLADESH   1                    NA                0.1235469   0.0927982   0.1542956
6-24 months   PROVIDE        BANGLADESH   0                    NA                0.1149987   0.0679154   0.1620820
6-24 months   SAS-CompFeed   INDIA        1                    NA                0.2512563   0.2120897   0.2904228
6-24 months   SAS-CompFeed   INDIA        0                    NA                0.3684211   0.0727072   0.6641349


### Parameter: E(Y)


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal      NEPAL        NA                   NA                0.3427948   0.2992779   0.3863116
0-24 months   JiVitA-3       BANGLADESH   NA                   NA                0.0934517   0.0884729   0.0984306
0-24 months   Keneba         GAMBIA       NA                   NA                0.1688955   0.1525490   0.1852420
0-24 months   MAL-ED         BANGLADESH   NA                   NA                0.1557377   0.1101466   0.2013289
0-24 months   MAL-ED         INDIA        NA                   NA                0.2268519   0.1708720   0.2828317
0-24 months   MAL-ED         NEPAL        NA                   NA                0.0921053   0.0544873   0.1297232
0-24 months   PROVIDE        BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   SAS-CompFeed   INDIA        NA                   NA                0.2500000   0.2118239   0.2881761
0-6 months    GMS-Nepal      NEPAL        NA                   NA                0.0524017   0.0319714   0.0728321
0-6 months    JiVitA-3       BANGLADESH   NA                   NA                0.0425304   0.0390546   0.0460063
0-6 months    Keneba         GAMBIA       NA                   NA                0.0316989   0.0240550   0.0393428
0-6 months    MAL-ED         INDIA        NA                   NA                0.0740741   0.0390675   0.1090807
0-6 months    PROVIDE        BANGLADESH   NA                   NA                0.0428571   0.0278427   0.0578716
6-24 months   GMS-Nepal      NEPAL        NA                   NA                0.3370288   0.2933549   0.3807028
6-24 months   JiVitA-3       BANGLADESH   NA                   NA                0.0901332   0.0839189   0.0963475
6-24 months   Keneba         GAMBIA       NA                   NA                0.1654450   0.1487764   0.1821136
6-24 months   MAL-ED         BANGLADESH   NA                   NA                0.1471861   0.1013989   0.1929734
6-24 months   MAL-ED         INDIA        NA                   NA                0.2057416   0.1508055   0.2606778
6-24 months   MAL-ED         NEPAL        NA                   NA                0.0707965   0.0372831   0.1043098
6-24 months   PROVIDE        BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   SAS-CompFeed   INDIA        NA                   NA                0.2565947   0.2209578   0.2922316


### Parameter: RR


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal      NEPAL        0                    1                 0.9152560   0.6425359   1.303730
0-24 months   JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3       BANGLADESH   0                    1                 0.9883421   0.8254012   1.183449
0-24 months   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   Keneba         GAMBIA       0                    1                 1.6311764   1.2829278   2.073956
0-24 months   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED         BANGLADESH   0                    1                 0.7401475   0.3762263   1.456087
0-24 months   MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED         INDIA        0                    1                 1.3309169   0.8035763   2.204321
0-24 months   MAL-ED         NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED         NEPAL        0                    1                 0.6029724   0.2657429   1.368149
0-24 months   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   PROVIDE        BANGLADESH   0                    1                 1.0020894   0.6485155   1.548434
0-24 months   SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed   INDIA        0                    1                 1.2910839   0.6050646   2.754908
0-6 months    GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal      NEPAL        0                    1                 2.0060332   0.8602153   4.678096
0-6 months    JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3       BANGLADESH   0                    1                 1.0886185   0.8356614   1.418146
0-6 months    Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    Keneba         GAMBIA       0                    1                 3.3928671   2.0465976   5.624724
0-6 months    MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    MAL-ED         INDIA        0                    1                 2.4135922   0.8657918   6.728440
0-6 months    PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    PROVIDE        BANGLADESH   0                    1                 1.9393770   0.9515138   3.952841
6-24 months   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal      NEPAL        0                    1                 0.8435260   0.5795944   1.227645
6-24 months   JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3       BANGLADESH   0                    1                 0.9649196   0.7598713   1.225299
6-24 months   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   Keneba         GAMBIA       0                    1                 1.6281559   1.2657246   2.094367
6-24 months   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED         BANGLADESH   0                    1                 0.7503562   0.3606318   1.561244
6-24 months   MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED         INDIA        0                    1                 1.3621538   0.7895568   2.350006
6-24 months   MAL-ED         NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED         NEPAL        0                    1                 0.4487179   0.1751721   1.149429
6-24 months   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   PROVIDE        BANGLADESH   0                    1                 0.9308102   0.5771421   1.501203
6-24 months   SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed   INDIA        0                    1                 1.4663158   0.6118309   3.514177


### Parameter: PAR


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                -0.0075072   -0.0269568   0.0119425
0-24 months   JiVitA-3       BANGLADESH   1                    NA                -0.0001176   -0.0016831   0.0014479
0-24 months   Keneba         GAMBIA       1                    NA                 0.0108947    0.0044433   0.0173461
0-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0129870   -0.0453200   0.0193460
0-24 months   MAL-ED         INDIA        1                    NA                 0.0252574   -0.0320358   0.0825506
0-24 months   MAL-ED         NEPAL        1                    NA                -0.0346553   -0.0953519   0.0260413
0-24 months   PROVIDE        BANGLADESH   1                    NA                 0.0000596   -0.0161268   0.0162460
0-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0035545   -0.0086130   0.0157220
0-6 months    GMS-Nepal      NEPAL        1                    NA                 0.0076649   -0.0038202   0.0191500
0-6 months    JiVitA-3       BANGLADESH   1                    NA                 0.0003813   -0.0007608   0.0015235
0-6 months    Keneba         GAMBIA       1                    NA                 0.0066315    0.0024346   0.0108284
0-6 months    MAL-ED         INDIA        1                    NA                 0.0298263   -0.0042119   0.0638644
0-6 months    PROVIDE        BANGLADESH   1                    NA                 0.0091573   -0.0016122   0.0199269
6-24 months   GMS-Nepal      NEPAL        1                    NA                -0.0119130   -0.0308232   0.0069972
6-24 months   JiVitA-3       BANGLADESH   1                    NA                -0.0002774   -0.0020718   0.0015170
6-24 months   Keneba         GAMBIA       1                    NA                 0.0102359    0.0037224   0.0167494
6-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0088783   -0.0412601   0.0235034
6-24 months   MAL-ED         INDIA        1                    NA                 0.0260972   -0.0293925   0.0815869
6-24 months   MAL-ED         NEPAL        1                    NA                -0.0434893   -0.1004663   0.0134878
6-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0013971   -0.0174743   0.0146802
6-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0053384   -0.0095993   0.0202761


### Parameter: PAF


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                -0.0218999   -0.0802465    0.0332953
0-24 months   JiVitA-3       BANGLADESH   1                    NA                -0.0012582   -0.0181454    0.0153490
0-24 months   Keneba         GAMBIA       1                    NA                 0.0645055    0.0257801    0.1016917
0-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0833902   -0.3106559    0.1044680
0-24 months   MAL-ED         INDIA        1                    NA                 0.1113389   -0.1798073    0.3306376
0-24 months   MAL-ED         NEPAL        1                    NA                -0.3762575   -1.2005759    0.1392776
0-24 months   PROVIDE        BANGLADESH   1                    NA                 0.0004638   -0.1337012    0.1187515
0-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0142180   -0.0365627    0.0625110
0-6 months    GMS-Nepal      NEPAL        1                    NA                 0.1462719   -0.0948184    0.3342717
0-6 months    JiVitA-3       BANGLADESH   1                    NA                 0.0089654   -0.0183114    0.0355116
0-6 months    Keneba         GAMBIA       1                    NA                 0.2092025    0.0762688    0.3230057
0-6 months    MAL-ED         INDIA        1                    NA                 0.4026549   -0.2114697    0.7054642
0-6 months    PROVIDE        BANGLADESH   1                    NA                 0.2136707   -0.0683518    0.4212452
6-24 months   GMS-Nepal      NEPAL        1                    NA                -0.0353473   -0.0929975    0.0192622
6-24 months   JiVitA-3       BANGLADESH   1                    NA                -0.0030779   -0.0231828    0.0166321
6-24 months   Keneba         GAMBIA       1                    NA                 0.0618689    0.0218862    0.1002173
6-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0603204   -0.3035380    0.1375169
6-24 months   MAL-ED         INDIA        1                    NA                 0.1268444   -0.1871025    0.3577633
6-24 months   MAL-ED         NEPAL        1                    NA                -0.6142857   -1.5915829   -0.0055315
6-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0114373   -0.1519797    0.1119588
6-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0208050   -0.0393691    0.0774953
