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

unadjusted

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
![](/tmp/c791a7a7-fdd4-423b-b6c0-6923e7317c8c/af6af2f3-501d-4d73-b564-168475f77d05/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c791a7a7-fdd4-423b-b6c0-6923e7317c8c/af6af2f3-501d-4d73-b564-168475f77d05/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c791a7a7-fdd4-423b-b6c0-6923e7317c8c/af6af2f3-501d-4d73-b564-168475f77d05/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c791a7a7-fdd4-423b-b6c0-6923e7317c8c/af6af2f3-501d-4d73-b564-168475f77d05/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        1                    NA                0.2626263   0.1758604   0.3493921
0-24 months   GMS-Nepal    NEPAL        0                    NA                0.3043478   0.2611667   0.3475290
0-24 months   JiVitA-3     BANGLADESH   1                    NA                0.0542965   0.0428444   0.0657486
0-24 months   JiVitA-3     BANGLADESH   0                    NA                0.0916882   0.0876425   0.0957339
0-24 months   JiVitA-4     BANGLADESH   1                    NA                0.0879630   0.0597695   0.1161564
0-24 months   JiVitA-4     BANGLADESH   0                    NA                0.1714465   0.1593551   0.1835379
0-24 months   MAL-ED       BANGLADESH   1                    NA                0.1524664   0.1051882   0.1997445
0-24 months   MAL-ED       BANGLADESH   0                    NA                0.2631579   0.0647468   0.4615690
0-24 months   MAL-ED       INDIA        1                    NA                0.2136364   0.1593598   0.2679129
0-24 months   MAL-ED       INDIA        0                    NA                0.4000000   0.1515528   0.6484472
0-24 months   MAL-ED       NEPAL        1                    NA                0.0970874   0.0397835   0.1543913
0-24 months   MAL-ED       NEPAL        0                    NA                0.0793651   0.0320639   0.1266662
0-24 months   NIH-Birth    BANGLADESH   1                    NA                0.2040073   0.1702716   0.2377429
0-24 months   NIH-Birth    BANGLADESH   0                    NA                0.3194444   0.2116587   0.4272302
0-24 months   NIH-Crypto   BANGLADESH   1                    NA                0.0965517   0.0724997   0.1206038
0-24 months   NIH-Crypto   BANGLADESH   0                    NA                0.0842697   0.0434336   0.1251058
0-24 months   PROVIDE      BANGLADESH   1                    NA                0.1175549   0.0925449   0.1425648
0-24 months   PROVIDE      BANGLADESH   0                    NA                0.2419355   0.1352598   0.3486112
0-6 months    GMS-Nepal    NEPAL        1                    NA                0.0808081   0.0270719   0.1345442
0-6 months    GMS-Nepal    NEPAL        0                    NA                0.0503432   0.0298237   0.0708628
0-6 months    JiVitA-3     BANGLADESH   1                    NA                0.0294397   0.0210229   0.0378565
0-6 months    JiVitA-3     BANGLADESH   0                    NA                0.0405016   0.0378920   0.0431113
0-6 months    JiVitA-4     BANGLADESH   1                    NA                0.0194805   0.0040737   0.0348874
0-6 months    JiVitA-4     BANGLADESH   0                    NA                0.0273359   0.0216756   0.0329961
0-6 months    NIH-Birth    BANGLADESH   1                    NA                0.0639854   0.0434602   0.0845106
0-6 months    NIH-Birth    BANGLADESH   0                    NA                0.1111111   0.0384611   0.1837611
0-6 months    PROVIDE      BANGLADESH   1                    NA                0.0360502   0.0215748   0.0505255
0-6 months    PROVIDE      BANGLADESH   0                    NA                0.1129032   0.0340714   0.1917350
6-24 months   GMS-Nepal    NEPAL        1                    NA                0.2771084   0.1807167   0.3735002
6-24 months   GMS-Nepal    NEPAL        0                    NA                0.3342105   0.2867312   0.3816898
6-24 months   JiVitA-3     BANGLADESH   1                    NA                0.0384871   0.0274092   0.0495649
6-24 months   JiVitA-3     BANGLADESH   0                    NA                0.0912673   0.0863363   0.0961983
6-24 months   JiVitA-4     BANGLADESH   1                    NA                0.0744186   0.0493663   0.0994709
6-24 months   JiVitA-4     BANGLADESH   0                    NA                0.1576633   0.1462115   0.1691152
6-24 months   MAL-ED       INDIA        1                    NA                0.1909091   0.1388646   0.2429536
6-24 months   MAL-ED       INDIA        0                    NA                0.3333333   0.0942649   0.5724018
6-24 months   MAL-ED       NEPAL        1                    NA                0.0490196   0.0070270   0.0910122
6-24 months   MAL-ED       NEPAL        0                    NA                0.0714286   0.0263613   0.1164958
6-24 months   NIH-Birth    BANGLADESH   1                    NA                0.2004175   0.1645350   0.2363001
6-24 months   NIH-Birth    BANGLADESH   0                    NA                0.3000000   0.1839393   0.4160607
6-24 months   NIH-Crypto   BANGLADESH   1                    NA                0.0869565   0.0634346   0.1104785
6-24 months   NIH-Crypto   BANGLADESH   0                    NA                0.0842697   0.0434325   0.1251068
6-24 months   PROVIDE      BANGLADESH   1                    NA                0.1097345   0.0839411   0.1355279
6-24 months   PROVIDE      BANGLADESH   0                    NA                0.2653061   0.1415887   0.3890235


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
0-24 months   GMS-Nepal    NEPAL        0                    1                 1.1588629   0.8088713   1.660293
0-24 months   JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3     BANGLADESH   0                    1                 1.6886580   1.3626978   2.092589
0-24 months   JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4     BANGLADESH   0                    1                 1.9490762   1.4063273   2.701290
0-24 months   MAL-ED       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED       BANGLADESH   0                    1                 1.7260062   0.7638160   3.900281
0-24 months   MAL-ED       INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED       INDIA        0                    1                 1.8723404   0.9570686   3.662913
0-24 months   MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED       NEPAL        0                    1                 0.8174603   0.3533310   1.891262
0-24 months   NIH-Birth    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth    BANGLADESH   0                    1                 1.5658482   1.0753735   2.280027
0-24 months   NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto   BANGLADESH   0                    1                 0.8727929   0.5061482   1.505029
0-24 months   PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   PROVIDE      BANGLADESH   0                    1                 2.0580645   1.2613666   3.357969
0-6 months    GMS-Nepal    NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal    NEPAL        0                    1                 0.6229977   0.2855976   1.358996
0-6 months    JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3     BANGLADESH   0                    1                 1.3757480   1.0260906   1.844557
0-6 months    JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4     BANGLADESH   0                    1                 1.4032415   0.6213086   3.169257
0-6 months    NIH-Birth    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth    BANGLADESH   0                    1                 1.7365079   0.8382638   3.597268
0-6 months    PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    PROVIDE      BANGLADESH   0                    1                 3.1318373   1.3995795   7.008108
6-24 months   GMS-Nepal    NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal    NEPAL        0                    1                 1.2060641   0.8283014   1.756113
6-24 months   JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3     BANGLADESH   0                    1                 2.3713767   1.7676286   3.181340
6-24 months   JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4     BANGLADESH   0                    1                 2.1186008   1.5009875   2.990344
6-24 months   MAL-ED       INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED       INDIA        0                    1                 1.7460317   0.8106464   3.760736
6-24 months   MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED       NEPAL        0                    1                 1.4571429   0.5028581   4.222395
6-24 months   NIH-Birth    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth    BANGLADESH   0                    1                 1.4968750   0.9773506   2.292560
6-24 months   NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto   BANGLADESH   0                    1                 0.9691011   0.5563420   1.688093
6-24 months   PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   PROVIDE      BANGLADESH   0                    1                 2.4177090   1.4342038   4.075653


### Parameter: PAR


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL        1                    NA                 0.0340155   -0.0450128   0.1130438
0-24 months   JiVitA-3     BANGLADESH   1                    NA                 0.0344426    0.0233284   0.0455568
0-24 months   JiVitA-4     BANGLADESH   1                    NA                 0.0735117    0.0466831   0.1003403
0-24 months   MAL-ED       BANGLADESH   1                    NA                 0.0086907   -0.0077585   0.0251398
0-24 months   MAL-ED       INDIA        1                    NA                 0.0118956   -0.0053544   0.0291455
0-24 months   MAL-ED       NEPAL        1                    NA                -0.0097511   -0.0506507   0.0311485
0-24 months   NIH-Birth    BANGLADESH   1                    NA                 0.0133840   -0.0000299   0.0267980
0-24 months   NIH-Crypto   BANGLADESH   1                    NA                -0.0028842   -0.0140196   0.0082512
0-24 months   PROVIDE      BANGLADESH   1                    NA                 0.0110166    0.0009646   0.0210686
0-6 months    GMS-Nepal    NEPAL        1                    NA                -0.0248379   -0.0717451   0.0220693
0-6 months    JiVitA-3     BANGLADESH   1                    NA                 0.0101909    0.0020663   0.0183156
0-6 months    JiVitA-4     BANGLADESH   1                    NA                 0.0069026   -0.0074542   0.0212594
0-6 months    NIH-Birth    BANGLADESH   1                    NA                 0.0054815   -0.0033801   0.0143431
0-6 months    PROVIDE      BANGLADESH   1                    NA                 0.0068070   -0.0004742   0.0140882
6-24 months   GMS-Nepal    NEPAL        1                    NA                 0.0468656   -0.0413455   0.1350768
6-24 months   JiVitA-3     BANGLADESH   1                    NA                 0.0481668    0.0370110   0.0593227
6-24 months   JiVitA-4     BANGLADESH   1                    NA                 0.0733401    0.0489524   0.0977278
6-24 months   MAL-ED       INDIA        1                    NA                 0.0090909   -0.0071508   0.0253326
6-24 months   MAL-ED       NEPAL        1                    NA                 0.0123839   -0.0216885   0.0464563
6-24 months   NIH-Birth    BANGLADESH   1                    NA                 0.0110852   -0.0026943   0.0248647
6-24 months   NIH-Crypto   BANGLADESH   1                    NA                -0.0006552   -0.0121467   0.0108364
6-24 months   PROVIDE      BANGLADESH   1                    NA                 0.0124153    0.0017920   0.0230387


### Parameter: PAF


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL        1                    NA                 0.1146687   -0.1960229   0.3446518
0-24 months   JiVitA-3     BANGLADESH   1                    NA                 0.3881333    0.2495281   0.5011394
0-24 months   JiVitA-4     BANGLADESH   1                    NA                 0.4552522    0.2606151   0.5986526
0-24 months   MAL-ED       BANGLADESH   1                    NA                 0.0539266   -0.0530109   0.1500043
0-24 months   MAL-ED       INDIA        1                    NA                 0.0527444   -0.0264141   0.1257982
0-24 months   MAL-ED       NEPAL        1                    NA                -0.1116505   -0.6912181   0.2693037
0-24 months   NIH-Birth    BANGLADESH   1                    NA                 0.0615665   -0.0018604   0.1209779
0-24 months   NIH-Crypto   BANGLADESH   1                    NA                -0.0307916   -0.1566273   0.0813537
0-24 months   PROVIDE      BANGLADESH   1                    NA                 0.0856844    0.0054637   0.1594344
0-6 months    GMS-Nepal    NEPAL        1                    NA                -0.4437710   -1.5587230   0.1853457
0-6 months    JiVitA-3     BANGLADESH   1                    NA                 0.2571476    0.0209547   0.4363594
0-6 months    JiVitA-4     BANGLADESH   1                    NA                 0.2616302   -0.5502538   0.6483221
0-6 months    NIH-Birth    BANGLADESH   1                    NA                 0.0789082   -0.0558885   0.1964965
0-6 months    PROVIDE      BANGLADESH   1                    NA                 0.1588297   -0.0189113   0.3055651
6-24 months   GMS-Nepal    NEPAL        1                    NA                 0.1446586   -0.1757802   0.3777674
6-24 months   JiVitA-3     BANGLADESH   1                    NA                 0.5558531    0.4108712   0.6651557
6-24 months   JiVitA-4     BANGLADESH   1                    NA                 0.4963505    0.3033143   0.6359006
6-24 months   MAL-ED       INDIA        1                    NA                 0.0454545   -0.0388318   0.1229023
6-24 months   MAL-ED       NEPAL        1                    NA                 0.2016807   -0.5826684   0.5973170
6-24 months   NIH-Birth    BANGLADESH   1                    NA                 0.0524118   -0.0147344   0.1151149
6-24 months   NIH-Crypto   BANGLADESH   1                    NA                -0.0075914   -0.1499354   0.1171326
6-24 months   PROVIDE      BANGLADESH   1                    NA                 0.1016401    0.0125550   0.1826882
