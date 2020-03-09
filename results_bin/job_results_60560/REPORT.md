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

**Intervention Variable:** impfloor

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* W_parity
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
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        impfloor    ever_co   n_cell       n
------------  ---------------  -----------------------------  ---------  --------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          1                 0      198     261
0-24 months   CMC-V-BCS-2002   INDIA                          1                 1       63     261
0-24 months   CMC-V-BCS-2002   INDIA                          0                 0        0     261
0-24 months   CMC-V-BCS-2002   INDIA                          0                 1        0     261
0-24 months   CONTENT          PERU                           1                 0      201     215
0-24 months   CONTENT          PERU                           1                 1        0     215
0-24 months   CONTENT          PERU                           0                 0       14     215
0-24 months   CONTENT          PERU                           0                 1        0     215
0-24 months   GMS-Nepal        NEPAL                          1                 0       73     536
0-24 months   GMS-Nepal        NEPAL                          1                 1       26     536
0-24 months   GMS-Nepal        NEPAL                          0                 0      304     536
0-24 months   GMS-Nepal        NEPAL                          0                 1      133     536
0-24 months   IRC              INDIA                          1                 0      253     306
0-24 months   IRC              INDIA                          1                 1       53     306
0-24 months   IRC              INDIA                          0                 0        0     306
0-24 months   IRC              INDIA                          0                 1        0     306
0-24 months   JiVitA-3         BANGLADESH                     1                 0     2003   26854
0-24 months   JiVitA-3         BANGLADESH                     1                 1      115   26854
0-24 months   JiVitA-3         BANGLADESH                     0                 0    22468   26854
0-24 months   JiVitA-3         BANGLADESH                     0                 1     2268   26854
0-24 months   JiVitA-4         BANGLADESH                     1                 0      591    5425
0-24 months   JiVitA-4         BANGLADESH                     1                 1       57    5425
0-24 months   JiVitA-4         BANGLADESH                     0                 0     3958    5425
0-24 months   JiVitA-4         BANGLADESH                     0                 1      819    5425
0-24 months   MAL-ED           BANGLADESH                     1                 0      189     242
0-24 months   MAL-ED           BANGLADESH                     1                 1       34     242
0-24 months   MAL-ED           BANGLADESH                     0                 0       14     242
0-24 months   MAL-ED           BANGLADESH                     0                 1        5     242
0-24 months   MAL-ED           BRAZIL                         1                 0      205     210
0-24 months   MAL-ED           BRAZIL                         1                 1        3     210
0-24 months   MAL-ED           BRAZIL                         0                 0        2     210
0-24 months   MAL-ED           BRAZIL                         0                 1        0     210
0-24 months   MAL-ED           INDIA                          1                 0      173     235
0-24 months   MAL-ED           INDIA                          1                 1       47     235
0-24 months   MAL-ED           INDIA                          0                 0        9     235
0-24 months   MAL-ED           INDIA                          0                 1        6     235
0-24 months   MAL-ED           NEPAL                          1                 0       93     229
0-24 months   MAL-ED           NEPAL                          1                 1       10     229
0-24 months   MAL-ED           NEPAL                          0                 0      116     229
0-24 months   MAL-ED           NEPAL                          0                 1       10     229
0-24 months   MAL-ED           PERU                           1                 0       55     272
0-24 months   MAL-ED           PERU                           1                 1        4     272
0-24 months   MAL-ED           PERU                           0                 0      206     272
0-24 months   MAL-ED           PERU                           0                 1        7     272
0-24 months   MAL-ED           SOUTH AFRICA                   1                 0      214     257
0-24 months   MAL-ED           SOUTH AFRICA                   1                 1       22     257
0-24 months   MAL-ED           SOUTH AFRICA                   0                 0       21     257
0-24 months   MAL-ED           SOUTH AFRICA                   0                 1        0     257
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       14     248
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        0     248
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      211     248
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1       23     248
0-24 months   NIH-Birth        BANGLADESH                     1                 0      437     621
0-24 months   NIH-Birth        BANGLADESH                     1                 1      112     621
0-24 months   NIH-Birth        BANGLADESH                     0                 0       49     621
0-24 months   NIH-Birth        BANGLADESH                     0                 1       23     621
0-24 months   NIH-Crypto       BANGLADESH                     1                 0      524     758
0-24 months   NIH-Crypto       BANGLADESH                     1                 1       56     758
0-24 months   NIH-Crypto       BANGLADESH                     0                 0      163     758
0-24 months   NIH-Crypto       BANGLADESH                     0                 1       15     758
0-24 months   PROVIDE          BANGLADESH                     1                 0      563     700
0-24 months   PROVIDE          BANGLADESH                     1                 1       75     700
0-24 months   PROVIDE          BANGLADESH                     0                 0       47     700
0-24 months   PROVIDE          BANGLADESH                     0                 1       15     700
0-6 months    CMC-V-BCS-2002   INDIA                          1                 0      233     257
0-6 months    CMC-V-BCS-2002   INDIA                          1                 1       24     257
0-6 months    CMC-V-BCS-2002   INDIA                          0                 0        0     257
0-6 months    CMC-V-BCS-2002   INDIA                          0                 1        0     257
0-6 months    CONTENT          PERU                           1                 0      201     215
0-6 months    CONTENT          PERU                           1                 1        0     215
0-6 months    CONTENT          PERU                           0                 0       14     215
0-6 months    CONTENT          PERU                           0                 1        0     215
0-6 months    GMS-Nepal        NEPAL                          1                 0       91     536
0-6 months    GMS-Nepal        NEPAL                          1                 1        8     536
0-6 months    GMS-Nepal        NEPAL                          0                 0      415     536
0-6 months    GMS-Nepal        NEPAL                          0                 1       22     536
0-6 months    IRC              INDIA                          1                 0      289     305
0-6 months    IRC              INDIA                          1                 1       16     305
0-6 months    IRC              INDIA                          0                 0        0     305
0-6 months    IRC              INDIA                          0                 1        0     305
0-6 months    JiVitA-3         BANGLADESH                     1                 0     2044   26747
0-6 months    JiVitA-3         BANGLADESH                     1                 1       62   26747
0-6 months    JiVitA-3         BANGLADESH                     0                 0    23643   26747
0-6 months    JiVitA-3         BANGLADESH                     0                 1      998   26747
0-6 months    JiVitA-4         BANGLADESH                     1                 0      604    5079
0-6 months    JiVitA-4         BANGLADESH                     1                 1       12    5079
0-6 months    JiVitA-4         BANGLADESH                     0                 0     4341    5079
0-6 months    JiVitA-4         BANGLADESH                     0                 1      122    5079
0-6 months    MAL-ED           BANGLADESH                     1                 0      215     242
0-6 months    MAL-ED           BANGLADESH                     1                 1        8     242
0-6 months    MAL-ED           BANGLADESH                     0                 0       18     242
0-6 months    MAL-ED           BANGLADESH                     0                 1        1     242
0-6 months    MAL-ED           BRAZIL                         1                 0      207     210
0-6 months    MAL-ED           BRAZIL                         1                 1        1     210
0-6 months    MAL-ED           BRAZIL                         0                 0        2     210
0-6 months    MAL-ED           BRAZIL                         0                 1        0     210
0-6 months    MAL-ED           INDIA                          1                 0      204     235
0-6 months    MAL-ED           INDIA                          1                 1       16     235
0-6 months    MAL-ED           INDIA                          0                 0       13     235
0-6 months    MAL-ED           INDIA                          0                 1        2     235
0-6 months    MAL-ED           NEPAL                          1                 0       96     229
0-6 months    MAL-ED           NEPAL                          1                 1        7     229
0-6 months    MAL-ED           NEPAL                          0                 0      125     229
0-6 months    MAL-ED           NEPAL                          0                 1        1     229
0-6 months    MAL-ED           PERU                           1                 0       58     272
0-6 months    MAL-ED           PERU                           1                 1        1     272
0-6 months    MAL-ED           PERU                           0                 0      213     272
0-6 months    MAL-ED           PERU                           0                 1        0     272
0-6 months    MAL-ED           SOUTH AFRICA                   1                 0      232     257
0-6 months    MAL-ED           SOUTH AFRICA                   1                 1        4     257
0-6 months    MAL-ED           SOUTH AFRICA                   0                 0       21     257
0-6 months    MAL-ED           SOUTH AFRICA                   0                 1        0     257
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       14     248
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        0     248
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      230     248
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        4     248
0-6 months    NIH-Birth        BANGLADESH                     1                 0      512     619
0-6 months    NIH-Birth        BANGLADESH                     1                 1       35     619
0-6 months    NIH-Birth        BANGLADESH                     0                 0       64     619
0-6 months    NIH-Birth        BANGLADESH                     0                 1        8     619
0-6 months    NIH-Crypto       BANGLADESH                     1                 0      567     758
0-6 months    NIH-Crypto       BANGLADESH                     1                 1       13     758
0-6 months    NIH-Crypto       BANGLADESH                     0                 0      174     758
0-6 months    NIH-Crypto       BANGLADESH                     0                 1        4     758
0-6 months    PROVIDE          BANGLADESH                     1                 0      615     700
0-6 months    PROVIDE          BANGLADESH                     1                 1       23     700
0-6 months    PROVIDE          BANGLADESH                     0                 0       55     700
0-6 months    PROVIDE          BANGLADESH                     0                 1        7     700
6-24 months   CMC-V-BCS-2002   INDIA                          1                 0      211     261
6-24 months   CMC-V-BCS-2002   INDIA                          1                 1       50     261
6-24 months   CMC-V-BCS-2002   INDIA                          0                 0        0     261
6-24 months   CMC-V-BCS-2002   INDIA                          0                 1        0     261
6-24 months   CONTENT          PERU                           1                 0      201     215
6-24 months   CONTENT          PERU                           1                 1        0     215
6-24 months   CONTENT          PERU                           0                 0       14     215
6-24 months   CONTENT          PERU                           0                 1        0     215
6-24 months   GMS-Nepal        NEPAL                          1                 0       60     463
6-24 months   GMS-Nepal        NEPAL                          1                 1       23     463
6-24 months   GMS-Nepal        NEPAL                          0                 0      253     463
6-24 months   GMS-Nepal        NEPAL                          0                 1      127     463
6-24 months   IRC              INDIA                          1                 0      262     306
6-24 months   IRC              INDIA                          1                 1       44     306
6-24 months   IRC              INDIA                          0                 0        0     306
6-24 months   IRC              INDIA                          0                 1        0     306
6-24 months   JiVitA-3         BANGLADESH                     1                 0     1449   17241
6-24 months   JiVitA-3         BANGLADESH                     1                 1       58   17241
6-24 months   JiVitA-3         BANGLADESH                     0                 0    14298   17241
6-24 months   JiVitA-3         BANGLADESH                     0                 1     1436   17241
6-24 months   JiVitA-4         BANGLADESH                     1                 0      597    5421
6-24 months   JiVitA-4         BANGLADESH                     1                 1       48    5421
6-24 months   JiVitA-4         BANGLADESH                     0                 0     4023    5421
6-24 months   JiVitA-4         BANGLADESH                     0                 1      753    5421
6-24 months   MAL-ED           BANGLADESH                     1                 0      190     239
6-24 months   MAL-ED           BANGLADESH                     1                 1       31     239
6-24 months   MAL-ED           BANGLADESH                     0                 0       14     239
6-24 months   MAL-ED           BANGLADESH                     0                 1        4     239
6-24 months   MAL-ED           BRAZIL                         1                 0      203     207
6-24 months   MAL-ED           BRAZIL                         1                 1        2     207
6-24 months   MAL-ED           BRAZIL                         0                 0        2     207
6-24 months   MAL-ED           BRAZIL                         0                 1        0     207
6-24 months   MAL-ED           INDIA                          1                 0      178     235
6-24 months   MAL-ED           INDIA                          1                 1       42     235
6-24 months   MAL-ED           INDIA                          0                 0       10     235
6-24 months   MAL-ED           INDIA                          0                 1        5     235
6-24 months   MAL-ED           NEPAL                          1                 0       97     228
6-24 months   MAL-ED           NEPAL                          1                 1        5     228
6-24 months   MAL-ED           NEPAL                          0                 0      117     228
6-24 months   MAL-ED           NEPAL                          0                 1        9     228
6-24 months   MAL-ED           PERU                           1                 0       54     270
6-24 months   MAL-ED           PERU                           1                 1        4     270
6-24 months   MAL-ED           PERU                           0                 0      205     270
6-24 months   MAL-ED           PERU                           0                 1        7     270
6-24 months   MAL-ED           SOUTH AFRICA                   1                 0      214     255
6-24 months   MAL-ED           SOUTH AFRICA                   1                 1       20     255
6-24 months   MAL-ED           SOUTH AFRICA                   0                 0       21     255
6-24 months   MAL-ED           SOUTH AFRICA                   0                 1        0     255
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       12     243
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        0     243
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      210     243
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1       21     243
6-24 months   NIH-Birth        BANGLADESH                     1                 0      383     539
6-24 months   NIH-Birth        BANGLADESH                     1                 1       96     539
6-24 months   NIH-Birth        BANGLADESH                     0                 0       42     539
6-24 months   NIH-Birth        BANGLADESH                     0                 1       18     539
6-24 months   NIH-Crypto       BANGLADESH                     1                 0      504     730
6-24 months   NIH-Crypto       BANGLADESH                     1                 1       48     730
6-24 months   NIH-Crypto       BANGLADESH                     0                 0      163     730
6-24 months   NIH-Crypto       BANGLADESH                     0                 1       15     730
6-24 months   PROVIDE          BANGLADESH                     1                 0      503     614
6-24 months   PROVIDE          BANGLADESH                     1                 1       62     614
6-24 months   PROVIDE          BANGLADESH                     0                 0       36     614
6-24 months   PROVIDE          BANGLADESH                     0                 1       13     614


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
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
![](/tmp/741b811f-b996-474b-afbb-fb979bf7b71c/2f025318-2469-49ef-883b-a9ca7a159824/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/741b811f-b996-474b-afbb-fb979bf7b71c/2f025318-2469-49ef-883b-a9ca7a159824/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/741b811f-b996-474b-afbb-fb979bf7b71c/2f025318-2469-49ef-883b-a9ca7a159824/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/741b811f-b996-474b-afbb-fb979bf7b71c/2f025318-2469-49ef-883b-a9ca7a159824/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL        1                    NA                0.2808408    0.1861052   0.3755765
0-24 months   GMS-Nepal    NEPAL        0                    NA                0.3024995    0.2590906   0.3459084
0-24 months   JiVitA-3     BANGLADESH   1                    NA                0.0792937    0.0669004   0.0916870
0-24 months   JiVitA-3     BANGLADESH   0                    NA                0.0888129    0.0847817   0.0928441
0-24 months   JiVitA-4     BANGLADESH   1                    NA                0.1065249    0.0673847   0.1456650
0-24 months   JiVitA-4     BANGLADESH   0                    NA                0.1651079    0.1531066   0.1771093
0-24 months   MAL-ED       BANGLADESH   1                    NA                0.1524664    0.1051882   0.1997445
0-24 months   MAL-ED       BANGLADESH   0                    NA                0.2631579    0.0647468   0.4615690
0-24 months   MAL-ED       INDIA        1                    NA                0.2136364    0.1593598   0.2679129
0-24 months   MAL-ED       INDIA        0                    NA                0.4000000    0.1515528   0.6484472
0-24 months   MAL-ED       NEPAL        1                    NA                0.0918224    0.0369271   0.1467177
0-24 months   MAL-ED       NEPAL        0                    NA                0.0790269    0.0314219   0.1266318
0-24 months   NIH-Birth    BANGLADESH   1                    NA                0.2068235    0.1727892   0.2408577
0-24 months   NIH-Birth    BANGLADESH   0                    NA                0.3065820    0.1881689   0.4249951
0-24 months   NIH-Crypto   BANGLADESH   1                    NA                0.0955709    0.0716498   0.1194920
0-24 months   NIH-Crypto   BANGLADESH   0                    NA                0.0874659    0.0454994   0.1294325
0-24 months   PROVIDE      BANGLADESH   1                    NA                0.1170442    0.0920817   0.1420067
0-24 months   PROVIDE      BANGLADESH   0                    NA                0.2586656    0.1489621   0.3683692
0-6 months    GMS-Nepal    NEPAL        1                    NA                0.0808081    0.0270719   0.1345442
0-6 months    GMS-Nepal    NEPAL        0                    NA                0.0503432    0.0298237   0.0708628
0-6 months    JiVitA-3     BANGLADESH   1                    NA                0.0253988    0.0169229   0.0338747
0-6 months    JiVitA-3     BANGLADESH   0                    NA                0.0393462    0.0367384   0.0419541
0-6 months    JiVitA-4     BANGLADESH   1                    NA                0.0208406   -0.0151018   0.0567830
0-6 months    JiVitA-4     BANGLADESH   0                    NA                0.0264956    0.0207351   0.0322562
0-6 months    NIH-Birth    BANGLADESH   1                    NA                0.0639854    0.0434602   0.0845106
0-6 months    NIH-Birth    BANGLADESH   0                    NA                0.1111111    0.0384611   0.1837611
0-6 months    PROVIDE      BANGLADESH   1                    NA                0.0360502    0.0215748   0.0505255
0-6 months    PROVIDE      BANGLADESH   0                    NA                0.1129032    0.0340714   0.1917350
6-24 months   GMS-Nepal    NEPAL        1                    NA                0.2960900    0.1898066   0.4023734
6-24 months   GMS-Nepal    NEPAL        0                    NA                0.3317807    0.2841790   0.3793823
6-24 months   JiVitA-3     BANGLADESH   1                    NA                0.0777805    0.0610565   0.0945046
6-24 months   JiVitA-3     BANGLADESH   0                    NA                0.0884010    0.0834880   0.0933141
6-24 months   JiVitA-4     BANGLADESH   1                    NA                0.0952788    0.0588585   0.1316991
6-24 months   JiVitA-4     BANGLADESH   0                    NA                0.1524279    0.1409561   0.1638997
6-24 months   MAL-ED       INDIA        1                    NA                0.1909091    0.1388646   0.2429536
6-24 months   MAL-ED       INDIA        0                    NA                0.3333333    0.0942649   0.5724018
6-24 months   MAL-ED       NEPAL        1                    NA                0.0490196    0.0070270   0.0910122
6-24 months   MAL-ED       NEPAL        0                    NA                0.0714286    0.0263613   0.1164958
6-24 months   NIH-Birth    BANGLADESH   1                    NA                0.2033139    0.1670937   0.2395341
6-24 months   NIH-Birth    BANGLADESH   0                    NA                0.2684614    0.1546038   0.3823190
6-24 months   NIH-Crypto   BANGLADESH   1                    NA                0.0861086    0.0626820   0.1095353
6-24 months   NIH-Crypto   BANGLADESH   0                    NA                0.0820805    0.0410140   0.1231470
6-24 months   PROVIDE      BANGLADESH   1                    NA                0.1109288    0.0848786   0.1369790
6-24 months   PROVIDE      BANGLADESH   0                    NA                0.2020469    0.1035218   0.3005721


### Parameter: E(Y)


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        NA                   NA                0.2966418   0.2579360   0.3353476
0-24 months   JiVitA-3     BANGLADESH   NA                   NA                0.0887391   0.0848621   0.0926161
0-24 months   JiVitA-4     BANGLADESH   NA                   NA                0.1614747   0.1501435   0.1728058
0-24 months   MAL-ED       BANGLADESH   NA                   NA                0.1611570   0.1147371   0.2075770
0-24 months   MAL-ED       INDIA        NA                   NA                0.2255319   0.1719836   0.2790802
0-24 months   MAL-ED       NEPAL        NA                   NA                0.0873362   0.0506897   0.1239828
0-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.2173913   0.1849240   0.2498586
0-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   PROVIDE      BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-6 months    GMS-Nepal    NEPAL        NA                   NA                0.0559701   0.0364922   0.0754481
0-6 months    JiVitA-3     BANGLADESH   NA                   NA                0.0396306   0.0371318   0.0421294
0-6 months    JiVitA-4     BANGLADESH   NA                   NA                0.0263831   0.0210411   0.0317252
0-6 months    NIH-Birth    BANGLADESH   NA                   NA                0.0694669   0.0494218   0.0895120
0-6 months    PROVIDE      BANGLADESH   NA                   NA                0.0428571   0.0278427   0.0578716
6-24 months   GMS-Nepal    NEPAL        NA                   NA                0.3239741   0.2813000   0.3666481
6-24 months   JiVitA-3     BANGLADESH   NA                   NA                0.0866539   0.0820272   0.0912806
6-24 months   JiVitA-4     BANGLADESH   NA                   NA                0.1477587   0.1371623   0.1583552
6-24 months   MAL-ED       INDIA        NA                   NA                0.2000000   0.1487493   0.2512507
6-24 months   MAL-ED       NEPAL        NA                   NA                0.0614035   0.0301736   0.0926335
6-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.2115028   0.1769952   0.2460104
6-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   PROVIDE      BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722


### Parameter: RR


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal    NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal    NEPAL        0                    1                 1.0771210   0.7469458   1.553245
0-24 months   JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3     BANGLADESH   0                    1                 1.1200499   0.9540711   1.314904
0-24 months   JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4     BANGLADESH   0                    1                 1.5499474   1.0753398   2.234026
0-24 months   MAL-ED       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED       BANGLADESH   0                    1                 1.7260062   0.7638160   3.900281
0-24 months   MAL-ED       INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED       INDIA        0                    1                 1.8723404   0.9570686   3.662913
0-24 months   MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED       NEPAL        0                    1                 0.8606492   0.3673114   2.016591
0-24 months   NIH-Birth    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth    BANGLADESH   0                    1                 1.4823367   0.9743929   2.255068
0-24 months   NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto   BANGLADESH   0                    1                 0.9151943   0.5328365   1.571928
0-24 months   PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   PROVIDE      BANGLADESH   0                    1                 2.2099833   1.3760641   3.549272
0-6 months    GMS-Nepal    NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal    NEPAL        0                    1                 0.6229977   0.2855976   1.358996
0-6 months    JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3     BANGLADESH   0                    1                 1.5491390   1.1032009   2.175335
0-6 months    JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4     BANGLADESH   0                    1                 1.2713468   0.2231843   7.242100
0-6 months    NIH-Birth    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth    BANGLADESH   0                    1                 1.7365079   0.8382638   3.597268
0-6 months    PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    PROVIDE      BANGLADESH   0                    1                 3.1318373   1.3995795   7.008108
6-24 months   GMS-Nepal    NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal    NEPAL        0                    1                 1.1205400   0.7612919   1.649315
6-24 months   JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3     BANGLADESH   0                    1                 1.1365444   0.9122129   1.416044
6-24 months   JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4     BANGLADESH   0                    1                 1.5998091   1.0922996   2.343120
6-24 months   MAL-ED       INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED       INDIA        0                    1                 1.7460317   0.8106464   3.760736
6-24 months   MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED       NEPAL        0                    1                 1.4571429   0.5028581   4.222395
6-24 months   NIH-Birth    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth    BANGLADESH   0                    1                 1.3204280   0.8344703   2.089386
6-24 months   NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto   BANGLADESH   0                    1                 0.9532199   0.5396571   1.683714
6-24 months   PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   PROVIDE      BANGLADESH   0                    1                 1.8214115   1.0630322   3.120827


### Parameter: PAR


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL        1                    NA                 0.0158010   -0.0712610   0.1028630
0-24 months   JiVitA-3     BANGLADESH   1                    NA                 0.0094454   -0.0027213   0.0216122
0-24 months   JiVitA-4     BANGLADESH   1                    NA                 0.0549498    0.0169062   0.0929933
0-24 months   MAL-ED       BANGLADESH   1                    NA                 0.0086907   -0.0077585   0.0251398
0-24 months   MAL-ED       INDIA        1                    NA                 0.0118956   -0.0053544   0.0291455
0-24 months   MAL-ED       NEPAL        1                    NA                -0.0044861   -0.0441958   0.0352236
0-24 months   NIH-Birth    BANGLADESH   1                    NA                 0.0105678   -0.0028361   0.0239718
0-24 months   NIH-Crypto   BANGLADESH   1                    NA                -0.0019034   -0.0129790   0.0091723
0-24 months   PROVIDE      BANGLADESH   1                    NA                 0.0115273    0.0015911   0.0214634
0-6 months    GMS-Nepal    NEPAL        1                    NA                -0.0248379   -0.0717451   0.0220693
0-6 months    JiVitA-3     BANGLADESH   1                    NA                 0.0142318    0.0058324   0.0226313
0-6 months    JiVitA-4     BANGLADESH   1                    NA                 0.0055426   -0.0295789   0.0406640
0-6 months    NIH-Birth    BANGLADESH   1                    NA                 0.0054815   -0.0033801   0.0143431
0-6 months    PROVIDE      BANGLADESH   1                    NA                 0.0068070   -0.0004742   0.0140882
6-24 months   GMS-Nepal    NEPAL        1                    NA                 0.0278841   -0.0701615   0.1259297
6-24 months   JiVitA-3     BANGLADESH   1                    NA                 0.0088734   -0.0076012   0.0253480
6-24 months   JiVitA-4     BANGLADESH   1                    NA                 0.0524799    0.0168607   0.0880991
6-24 months   MAL-ED       INDIA        1                    NA                 0.0090909   -0.0071508   0.0253326
6-24 months   MAL-ED       NEPAL        1                    NA                 0.0123839   -0.0216885   0.0464563
6-24 months   NIH-Birth    BANGLADESH   1                    NA                 0.0081889   -0.0056700   0.0220477
6-24 months   NIH-Crypto   BANGLADESH   1                    NA                 0.0001927   -0.0113365   0.0117219
6-24 months   PROVIDE      BANGLADESH   1                    NA                 0.0112211    0.0006689   0.0217732


### Parameter: PAF


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL        1                    NA                 0.0532662   -0.2907740   0.3056067
0-24 months   JiVitA-3     BANGLADESH   1                    NA                 0.1064405   -0.0412921   0.2332137
0-24 months   JiVitA-4     BANGLADESH   1                    NA                 0.3402998    0.0571418   0.5384201
0-24 months   MAL-ED       BANGLADESH   1                    NA                 0.0539266   -0.0530109   0.1500043
0-24 months   MAL-ED       INDIA        1                    NA                 0.0527444   -0.0264141   0.1257982
0-24 months   MAL-ED       NEPAL        1                    NA                -0.0513662   -0.6199230   0.3176399
0-24 months   NIH-Birth    BANGLADESH   1                    NA                 0.0486121   -0.0148723   0.1081252
0-24 months   NIH-Crypto   BANGLADESH   1                    NA                -0.0203203   -0.1455793   0.0912427
0-24 months   PROVIDE      BANGLADESH   1                    NA                 0.0896565    0.0103910   0.1625731
0-6 months    GMS-Nepal    NEPAL        1                    NA                -0.4437710   -1.5587230   0.1853457
0-6 months    JiVitA-3     BANGLADESH   1                    NA                 0.3591120    0.1099584   0.5385189
0-6 months    JiVitA-4     BANGLADESH   1                    NA                 0.2100795   -3.2825514   0.8542985
0-6 months    NIH-Birth    BANGLADESH   1                    NA                 0.0789082   -0.0558885   0.1964965
0-6 months    PROVIDE      BANGLADESH   1                    NA                 0.1588297   -0.0189113   0.3055651
6-24 months   GMS-Nepal    NEPAL        1                    NA                 0.0860689   -0.2727276   0.3437165
6-24 months   JiVitA-3     BANGLADESH   1                    NA                 0.1024004   -0.1088683   0.2734168
6-24 months   JiVitA-4     BANGLADESH   1                    NA                 0.3551730    0.0635889   0.5559622
6-24 months   MAL-ED       INDIA        1                    NA                 0.0454545   -0.0388318   0.1229023
6-24 months   MAL-ED       NEPAL        1                    NA                 0.2016807   -0.5826684   0.5973170
6-24 months   NIH-Birth    BANGLADESH   1                    NA                 0.0387175   -0.0289173   0.1019063
6-24 months   NIH-Crypto   BANGLADESH   1                    NA                 0.0022331   -0.1407173   0.1272696
6-24 months   PROVIDE      BANGLADESH   1                    NA                 0.0918632    0.0029322   0.1728622
