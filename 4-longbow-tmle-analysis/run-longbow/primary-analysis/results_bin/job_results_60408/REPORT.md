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

**Intervention Variable:** earlybf

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
* vagbrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* brthmon
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
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
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

agecat        studyid        country                        earlybf    wast_rec90d   n_cell      n
------------  -------------  -----------------------------  --------  ------------  -------  -----
0-24 months   EE             PAKISTAN                       1                    0       25    314
0-24 months   EE             PAKISTAN                       1                    1       30    314
0-24 months   EE             PAKISTAN                       0                    0      130    314
0-24 months   EE             PAKISTAN                       0                    1      129    314
0-24 months   GMS-Nepal      NEPAL                          1                    0       67    582
0-24 months   GMS-Nepal      NEPAL                          1                    1       94    582
0-24 months   GMS-Nepal      NEPAL                          0                    0      199    582
0-24 months   GMS-Nepal      NEPAL                          0                    1      222    582
0-24 months   JiVitA-3       BANGLADESH                     1                    0       43   7562
0-24 months   JiVitA-3       BANGLADESH                     1                    1       13   7562
0-24 months   JiVitA-3       BANGLADESH                     0                    0     4323   7562
0-24 months   JiVitA-3       BANGLADESH                     0                    1     3183   7562
0-24 months   JiVitA-4       BANGLADESH                     1                    0      958   2069
0-24 months   JiVitA-4       BANGLADESH                     1                    1      357   2069
0-24 months   JiVitA-4       BANGLADESH                     0                    0      576   2069
0-24 months   JiVitA-4       BANGLADESH                     0                    1      178   2069
0-24 months   MAL-ED         BANGLADESH                     1                    0       25    122
0-24 months   MAL-ED         BANGLADESH                     1                    1       46    122
0-24 months   MAL-ED         BANGLADESH                     0                    0       18    122
0-24 months   MAL-ED         BANGLADESH                     0                    1       33    122
0-24 months   MAL-ED         BRAZIL                         1                    0        3     24
0-24 months   MAL-ED         BRAZIL                         1                    1        6     24
0-24 months   MAL-ED         BRAZIL                         0                    0        3     24
0-24 months   MAL-ED         BRAZIL                         0                    1       12     24
0-24 months   MAL-ED         INDIA                          1                    0       44    181
0-24 months   MAL-ED         INDIA                          1                    1       63    181
0-24 months   MAL-ED         INDIA                          0                    0       27    181
0-24 months   MAL-ED         INDIA                          0                    1       47    181
0-24 months   MAL-ED         NEPAL                          1                    0        9     98
0-24 months   MAL-ED         NEPAL                          1                    1       33     98
0-24 months   MAL-ED         NEPAL                          0                    0       11     98
0-24 months   MAL-ED         NEPAL                          0                    1       45     98
0-24 months   MAL-ED         PERU                           1                    0        5     35
0-24 months   MAL-ED         PERU                           1                    1       26     35
0-24 months   MAL-ED         PERU                           0                    0        1     35
0-24 months   MAL-ED         PERU                           0                    1        3     35
0-24 months   MAL-ED         SOUTH AFRICA                   1                    0        8     84
0-24 months   MAL-ED         SOUTH AFRICA                   1                    1       46     84
0-24 months   MAL-ED         SOUTH AFRICA                   0                    0        7     84
0-24 months   MAL-ED         SOUTH AFRICA                   0                    1       23     84
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0        7     51
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       39     51
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0        2     51
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        3     51
0-24 months   NIH-Crypto     BANGLADESH                     1                    0      104    310
0-24 months   NIH-Crypto     BANGLADESH                     1                    1      170    310
0-24 months   NIH-Crypto     BANGLADESH                     0                    0       13    310
0-24 months   NIH-Crypto     BANGLADESH                     0                    1       23    310
0-24 months   SAS-CompFeed   INDIA                          1                    0       33    810
0-24 months   SAS-CompFeed   INDIA                          1                    1       29    810
0-24 months   SAS-CompFeed   INDIA                          0                    0      467    810
0-24 months   SAS-CompFeed   INDIA                          0                    1      281    810
0-24 months   ZVITAMBO       ZIMBABWE                       1                    0      759   3274
0-24 months   ZVITAMBO       ZIMBABWE                       1                    1      832   3274
0-24 months   ZVITAMBO       ZIMBABWE                       0                    0      728   3274
0-24 months   ZVITAMBO       ZIMBABWE                       0                    1      955   3274
0-6 months    EE             PAKISTAN                       1                    0        8    124
0-6 months    EE             PAKISTAN                       1                    1       12    124
0-6 months    EE             PAKISTAN                       0                    0       45    124
0-6 months    EE             PAKISTAN                       0                    1       59    124
0-6 months    GMS-Nepal      NEPAL                          1                    0       31    242
0-6 months    GMS-Nepal      NEPAL                          1                    1       39    242
0-6 months    GMS-Nepal      NEPAL                          0                    0       67    242
0-6 months    GMS-Nepal      NEPAL                          0                    1      105    242
0-6 months    JiVitA-3       BANGLADESH                     1                    0       38   4725
0-6 months    JiVitA-3       BANGLADESH                     1                    1       13   4725
0-6 months    JiVitA-3       BANGLADESH                     0                    0     1491   4725
0-6 months    JiVitA-3       BANGLADESH                     0                    1     3183   4725
0-6 months    JiVitA-4       BANGLADESH                     1                    0      152    553
0-6 months    JiVitA-4       BANGLADESH                     1                    1      207    553
0-6 months    JiVitA-4       BANGLADESH                     0                    0       92    553
0-6 months    JiVitA-4       BANGLADESH                     0                    1      102    553
0-6 months    MAL-ED         BANGLADESH                     1                    0        7     63
0-6 months    MAL-ED         BANGLADESH                     1                    1       30     63
0-6 months    MAL-ED         BANGLADESH                     0                    0        6     63
0-6 months    MAL-ED         BANGLADESH                     0                    1       20     63
0-6 months    MAL-ED         BRAZIL                         1                    0        1     15
0-6 months    MAL-ED         BRAZIL                         1                    1        5     15
0-6 months    MAL-ED         BRAZIL                         0                    0        0     15
0-6 months    MAL-ED         BRAZIL                         0                    1        9     15
0-6 months    MAL-ED         INDIA                          1                    0       15     86
0-6 months    MAL-ED         INDIA                          1                    1       33     86
0-6 months    MAL-ED         INDIA                          0                    0       12     86
0-6 months    MAL-ED         INDIA                          0                    1       26     86
0-6 months    MAL-ED         NEPAL                          1                    0        5     48
0-6 months    MAL-ED         NEPAL                          1                    1       15     48
0-6 months    MAL-ED         NEPAL                          0                    0        4     48
0-6 months    MAL-ED         NEPAL                          0                    1       24     48
0-6 months    MAL-ED         PERU                           1                    0        0     11
0-6 months    MAL-ED         PERU                           1                    1        9     11
0-6 months    MAL-ED         PERU                           0                    0        0     11
0-6 months    MAL-ED         PERU                           0                    1        2     11
0-6 months    MAL-ED         SOUTH AFRICA                   1                    0        3     33
0-6 months    MAL-ED         SOUTH AFRICA                   1                    1       16     33
0-6 months    MAL-ED         SOUTH AFRICA                   0                    0        3     33
0-6 months    MAL-ED         SOUTH AFRICA                   0                    1       11     33
0-6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0        1     14
0-6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       12     14
0-6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0        0     14
0-6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        1     14
0-6 months    NIH-Crypto     BANGLADESH                     1                    0       13    197
0-6 months    NIH-Crypto     BANGLADESH                     1                    1      154    197
0-6 months    NIH-Crypto     BANGLADESH                     0                    0        8    197
0-6 months    NIH-Crypto     BANGLADESH                     0                    1       22    197
0-6 months    SAS-CompFeed   INDIA                          1                    0       12    337
0-6 months    SAS-CompFeed   INDIA                          1                    1       18    337
0-6 months    SAS-CompFeed   INDIA                          0                    0      150    337
0-6 months    SAS-CompFeed   INDIA                          0                    1      157    337
0-6 months    ZVITAMBO       ZIMBABWE                       1                    0      268   2290
0-6 months    ZVITAMBO       ZIMBABWE                       1                    1      778   2290
0-6 months    ZVITAMBO       ZIMBABWE                       0                    0      305   2290
0-6 months    ZVITAMBO       ZIMBABWE                       0                    1      939   2290
6-24 months   EE             PAKISTAN                       1                    0       17    190
6-24 months   EE             PAKISTAN                       1                    1       18    190
6-24 months   EE             PAKISTAN                       0                    0       85    190
6-24 months   EE             PAKISTAN                       0                    1       70    190
6-24 months   GMS-Nepal      NEPAL                          1                    0       36    340
6-24 months   GMS-Nepal      NEPAL                          1                    1       55    340
6-24 months   GMS-Nepal      NEPAL                          0                    0      132    340
6-24 months   GMS-Nepal      NEPAL                          0                    1      117    340
6-24 months   JiVitA-3       BANGLADESH                     1                    0        5   2837
6-24 months   JiVitA-3       BANGLADESH                     1                    1        0   2837
6-24 months   JiVitA-3       BANGLADESH                     0                    0     2832   2837
6-24 months   JiVitA-3       BANGLADESH                     0                    1        0   2837
6-24 months   JiVitA-4       BANGLADESH                     1                    0      806   1516
6-24 months   JiVitA-4       BANGLADESH                     1                    1      150   1516
6-24 months   JiVitA-4       BANGLADESH                     0                    0      484   1516
6-24 months   JiVitA-4       BANGLADESH                     0                    1       76   1516
6-24 months   MAL-ED         BANGLADESH                     1                    0       18     59
6-24 months   MAL-ED         BANGLADESH                     1                    1       16     59
6-24 months   MAL-ED         BANGLADESH                     0                    0       12     59
6-24 months   MAL-ED         BANGLADESH                     0                    1       13     59
6-24 months   MAL-ED         BRAZIL                         1                    0        2      9
6-24 months   MAL-ED         BRAZIL                         1                    1        1      9
6-24 months   MAL-ED         BRAZIL                         0                    0        3      9
6-24 months   MAL-ED         BRAZIL                         0                    1        3      9
6-24 months   MAL-ED         INDIA                          1                    0       29     95
6-24 months   MAL-ED         INDIA                          1                    1       30     95
6-24 months   MAL-ED         INDIA                          0                    0       15     95
6-24 months   MAL-ED         INDIA                          0                    1       21     95
6-24 months   MAL-ED         NEPAL                          1                    0        4     50
6-24 months   MAL-ED         NEPAL                          1                    1       18     50
6-24 months   MAL-ED         NEPAL                          0                    0        7     50
6-24 months   MAL-ED         NEPAL                          0                    1       21     50
6-24 months   MAL-ED         PERU                           1                    0        5     24
6-24 months   MAL-ED         PERU                           1                    1       17     24
6-24 months   MAL-ED         PERU                           0                    0        1     24
6-24 months   MAL-ED         PERU                           0                    1        1     24
6-24 months   MAL-ED         SOUTH AFRICA                   1                    0        5     51
6-24 months   MAL-ED         SOUTH AFRICA                   1                    1       30     51
6-24 months   MAL-ED         SOUTH AFRICA                   0                    0        4     51
6-24 months   MAL-ED         SOUTH AFRICA                   0                    1       12     51
6-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0        6     37
6-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       27     37
6-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0        2     37
6-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        2     37
6-24 months   NIH-Crypto     BANGLADESH                     1                    0       91    113
6-24 months   NIH-Crypto     BANGLADESH                     1                    1       16    113
6-24 months   NIH-Crypto     BANGLADESH                     0                    0        5    113
6-24 months   NIH-Crypto     BANGLADESH                     0                    1        1    113
6-24 months   SAS-CompFeed   INDIA                          1                    0       21    473
6-24 months   SAS-CompFeed   INDIA                          1                    1       11    473
6-24 months   SAS-CompFeed   INDIA                          0                    0      317    473
6-24 months   SAS-CompFeed   INDIA                          0                    1      124    473
6-24 months   ZVITAMBO       ZIMBABWE                       1                    0      491    984
6-24 months   ZVITAMBO       ZIMBABWE                       1                    1       54    984
6-24 months   ZVITAMBO       ZIMBABWE                       0                    0      423    984
6-24 months   ZVITAMBO       ZIMBABWE                       0                    1       16    984


The following strata were considered:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/2719dd05-d1fa-4123-be53-da0aae946db7/e8066afb-a95e-4aad-89a1-96f5c70804d9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2719dd05-d1fa-4123-be53-da0aae946db7/e8066afb-a95e-4aad-89a1-96f5c70804d9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2719dd05-d1fa-4123-be53-da0aae946db7/e8066afb-a95e-4aad-89a1-96f5c70804d9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2719dd05-d1fa-4123-be53-da0aae946db7/e8066afb-a95e-4aad-89a1-96f5c70804d9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   EE             PAKISTAN       1                    NA                0.5428388   0.3865526   0.6991250
0-24 months   EE             PAKISTAN       0                    NA                0.4978961   0.4326969   0.5630954
0-24 months   GMS-Nepal      NEPAL          1                    NA                0.5869876   0.4972550   0.6767201
0-24 months   GMS-Nepal      NEPAL          0                    NA                0.5290270   0.4779653   0.5800887
0-24 months   JiVitA-3       BANGLADESH     1                    NA                0.2305724   0.1937263   0.2674186
0-24 months   JiVitA-3       BANGLADESH     0                    NA                0.4241262   0.4127616   0.4354908
0-24 months   JiVitA-4       BANGLADESH     1                    NA                0.2743716   0.2505870   0.2981562
0-24 months   JiVitA-4       BANGLADESH     0                    NA                0.2321087   0.2012800   0.2629374
0-24 months   MAL-ED         BANGLADESH     1                    NA                0.6353639   0.5121639   0.7585639
0-24 months   MAL-ED         BANGLADESH     0                    NA                0.6506404   0.4998907   0.8013901
0-24 months   MAL-ED         INDIA          1                    NA                0.5924360   0.4892393   0.6956327
0-24 months   MAL-ED         INDIA          0                    NA                0.6385989   0.5135939   0.7636039
0-24 months   MAL-ED         NEPAL          1                    NA                0.7857143   0.6676859   0.9037426
0-24 months   MAL-ED         NEPAL          0                    NA                0.8035714   0.7055573   0.9015856
0-24 months   MAL-ED         SOUTH AFRICA   1                    NA                0.8518519   0.7511196   0.9525841
0-24 months   MAL-ED         SOUTH AFRICA   0                    NA                0.7666667   0.6158718   0.9174615
0-24 months   NIH-Crypto     BANGLADESH     1                    NA                0.6249639   0.5686078   0.6813199
0-24 months   NIH-Crypto     BANGLADESH     0                    NA                0.5767030   0.3842875   0.7691185
0-24 months   SAS-CompFeed   INDIA          1                    NA                0.4349880   0.3042980   0.5656781
0-24 months   SAS-CompFeed   INDIA          0                    NA                0.3770800   0.3405105   0.4136495
0-24 months   ZVITAMBO       ZIMBABWE       1                    NA                0.5441886   0.5210998   0.5672775
0-24 months   ZVITAMBO       ZIMBABWE       0                    NA                0.5414189   0.5188816   0.5639562
0-6 months    EE             PAKISTAN       1                    NA                0.6000000   0.3790586   0.8209414
0-6 months    EE             PAKISTAN       0                    NA                0.5673077   0.4716455   0.6629699
0-6 months    GMS-Nepal      NEPAL          1                    NA                0.5581674   0.4383791   0.6779557
0-6 months    GMS-Nepal      NEPAL          0                    NA                0.6083260   0.5347578   0.6818943
0-6 months    JiVitA-3       BANGLADESH     1                    NA                0.2572980   0.2035185   0.3110775
0-6 months    JiVitA-3       BANGLADESH     0                    NA                0.6809787   0.6674232   0.6945341
0-6 months    JiVitA-4       BANGLADESH     1                    NA                0.6023656   0.5561313   0.6485998
0-6 months    JiVitA-4       BANGLADESH     0                    NA                0.4885086   0.4219814   0.5550357
0-6 months    MAL-ED         BANGLADESH     1                    NA                0.8108108   0.6848512   0.9367704
0-6 months    MAL-ED         BANGLADESH     0                    NA                0.7692308   0.6087603   0.9297013
0-6 months    MAL-ED         INDIA          1                    NA                0.6800526   0.5454731   0.8146321
0-6 months    MAL-ED         INDIA          0                    NA                0.7002076   0.5455849   0.8548303
0-6 months    NIH-Crypto     BANGLADESH     1                    NA                0.9221557   0.8810188   0.9632926
0-6 months    NIH-Crypto     BANGLADESH     0                    NA                0.7333333   0.5730566   0.8936101
0-6 months    SAS-CompFeed   INDIA          1                    NA                0.4793866   0.2984048   0.6603684
0-6 months    SAS-CompFeed   INDIA          0                    NA                0.5133812   0.4570110   0.5697514
0-6 months    ZVITAMBO       ZIMBABWE       1                    NA                0.7488454   0.7242660   0.7734248
0-6 months    ZVITAMBO       ZIMBABWE       0                    NA                0.7496265   0.7268369   0.7724160
6-24 months   EE             PAKISTAN       1                    NA                0.4549981   0.2845646   0.6254315
6-24 months   EE             PAKISTAN       0                    NA                0.4485469   0.3656383   0.5314555
6-24 months   GMS-Nepal      NEPAL          1                    NA                0.6043319   0.4917358   0.7169279
6-24 months   GMS-Nepal      NEPAL          0                    NA                0.4667176   0.3991801   0.5342552
6-24 months   JiVitA-4       BANGLADESH     1                    NA                0.1570748   0.1345264   0.1796232
6-24 months   JiVitA-4       BANGLADESH     0                    NA                0.1369921   0.1064283   0.1675560
6-24 months   MAL-ED         BANGLADESH     1                    NA                0.5581989   0.4032514   0.7131465
6-24 months   MAL-ED         BANGLADESH     0                    NA                0.4987995   0.1979969   0.7996020
6-24 months   MAL-ED         INDIA          1                    NA                0.5001657   0.3581428   0.6421885
6-24 months   MAL-ED         INDIA          0                    NA                0.5926890   0.3955423   0.7898358
6-24 months   SAS-CompFeed   INDIA          1                    NA                0.3172484   0.1465147   0.4879822
6-24 months   SAS-CompFeed   INDIA          0                    NA                0.2830929   0.2399783   0.3262075
6-24 months   ZVITAMBO       ZIMBABWE       1                    NA                0.1001618   0.0751428   0.1251807
6-24 months   ZVITAMBO       ZIMBABWE       0                    NA                0.0371973   0.0183744   0.0560203


### Parameter: E(Y)


agecat        studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   EE             PAKISTAN       NA                   NA                0.5063694   0.4463277   0.5664112
0-24 months   GMS-Nepal      NEPAL          NA                   NA                0.5429553   0.4984173   0.5874934
0-24 months   JiVitA-3       BANGLADESH     NA                   NA                0.4226395   0.4115112   0.4337678
0-24 months   JiVitA-4       BANGLADESH     NA                   NA                0.2585790   0.2392503   0.2779077
0-24 months   MAL-ED         BANGLADESH     NA                   NA                0.6475410   0.5607680   0.7343140
0-24 months   MAL-ED         INDIA          NA                   NA                0.6077348   0.5286689   0.6868008
0-24 months   MAL-ED         NEPAL          NA                   NA                0.7959184   0.7207268   0.8711100
0-24 months   MAL-ED         SOUTH AFRICA   NA                   NA                0.8214286   0.7371305   0.9057266
0-24 months   NIH-Crypto     BANGLADESH     NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   SAS-CompFeed   INDIA          NA                   NA                0.3827160   0.3474971   0.4179350
0-24 months   ZVITAMBO       ZIMBABWE       NA                   NA                0.5458155   0.5286072   0.5630238
0-6 months    EE             PAKISTAN       NA                   NA                0.5725806   0.4847582   0.6604031
0-6 months    GMS-Nepal      NEPAL          NA                   NA                0.5950413   0.5325830   0.6574997
0-6 months    JiVitA-3       BANGLADESH     NA                   NA                0.6764021   0.6630620   0.6897422
0-6 months    JiVitA-4       BANGLADESH     NA                   NA                0.5587703   0.5173487   0.6001920
0-6 months    MAL-ED         BANGLADESH     NA                   NA                0.7936508   0.6942781   0.8930235
0-6 months    MAL-ED         INDIA          NA                   NA                0.6860465   0.5849088   0.7871842
0-6 months    NIH-Crypto     BANGLADESH     NA                   NA                0.8934010   0.8497799   0.9370221
0-6 months    SAS-CompFeed   INDIA          NA                   NA                0.5192878   0.4654446   0.5731311
0-6 months    ZVITAMBO       ZIMBABWE       NA                   NA                0.7497817   0.7320520   0.7675113
6-24 months   EE             PAKISTAN       NA                   NA                0.4631579   0.3886610   0.5376548
6-24 months   GMS-Nepal      NEPAL          NA                   NA                0.5058824   0.4476568   0.5641079
6-24 months   JiVitA-4       BANGLADESH     NA                   NA                0.1490765   0.1314900   0.1666630
6-24 months   MAL-ED         BANGLADESH     NA                   NA                0.4915254   0.3576698   0.6253810
6-24 months   MAL-ED         INDIA          NA                   NA                0.5368421   0.4223932   0.6512910
6-24 months   SAS-CompFeed   INDIA          NA                   NA                0.2854123   0.2436284   0.3271961
6-24 months   ZVITAMBO       ZIMBABWE       NA                   NA                0.0711382   0.0551795   0.0870969


### Parameter: RR


agecat        studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   EE             PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   EE             PAKISTAN       0                    1                 0.9172080   0.6683417   1.2587431
0-24 months   GMS-Nepal      NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal      NEPAL          0                    1                 0.9012576   0.7523125   1.0796914
0-24 months   JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3       BANGLADESH     0                    1                 1.8394489   1.5642323   2.1630881
0-24 months   JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4       BANGLADESH     0                    1                 0.8459647   0.7260599   0.9856711
0-24 months   MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED         BANGLADESH     0                    1                 1.0240437   0.7561353   1.3868756
0-24 months   MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED         INDIA          0                    1                 1.0779204   0.8284190   1.4025662
0-24 months   MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED         NEPAL          0                    1                 1.0227273   0.8422004   1.2419503
0-24 months   MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED         SOUTH AFRICA   0                    1                 0.9000000   0.7153015   1.1323896
0-24 months   NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto     BANGLADESH     0                    1                 0.9227782   0.6533252   1.3033625
0-24 months   SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed   INDIA          0                    1                 0.8668744   0.6324792   1.1881357
0-24 months   ZVITAMBO       ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO       ZIMBABWE       0                    1                 0.9949103   0.9423178   1.0504381
0-6 months    EE             PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    EE             PAKISTAN       0                    1                 0.9455128   0.6306298   1.4176218
0-6 months    GMS-Nepal      NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal      NEPAL          0                    1                 1.0898631   0.8522827   1.3936708
0-6 months    JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3       BANGLADESH     0                    1                 2.6466534   2.1454453   3.2649512
0-6 months    JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4       BANGLADESH     0                    1                 0.8109835   0.7029858   0.9355727
0-6 months    MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED         BANGLADESH     0                    1                 0.9487179   0.7314256   1.2305636
0-6 months    MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED         INDIA          0                    1                 1.0296374   0.7708861   1.3752395
0-6 months    NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto     BANGLADESH     0                    1                 0.7952381   0.6362402   0.9939699
0-6 months    SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed   INDIA          0                    1                 1.0709127   0.7229798   1.5862877
0-6 months    ZVITAMBO       ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO       ZIMBABWE       0                    1                 1.0010431   0.9603864   1.0434208
6-24 months   EE             PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   EE             PAKISTAN       0                    1                 0.9858215   0.6488165   1.4978721
6-24 months   GMS-Nepal      NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal      NEPAL          0                    1                 0.7722870   0.6102056   0.9774200
6-24 months   JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4       BANGLADESH     0                    1                 0.8721459   0.6687540   1.1373966
6-24 months   MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED         BANGLADESH     0                    1                 0.8935873   0.4581264   1.7429651
6-24 months   MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED         INDIA          0                    1                 1.1849854   0.7629713   1.8404236
6-24 months   SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed   INDIA          0                    1                 0.8923382   0.5101480   1.5608559
6-24 months   ZVITAMBO       ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO       ZIMBABWE       0                    1                 0.3713724   0.2112993   0.6527115


### Parameter: PAR


agecat        studyid        country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   EE             PAKISTAN       1                    NA                -0.0364694   -0.1776971    0.1047583
0-24 months   GMS-Nepal      NEPAL          1                    NA                -0.0440323   -0.1187801    0.0307156
0-24 months   JiVitA-3       BANGLADESH     1                    NA                 0.1920671    0.1544223    0.2297119
0-24 months   JiVitA-4       BANGLADESH     1                    NA                -0.0157926   -0.0294713   -0.0021139
0-24 months   MAL-ED         BANGLADESH     1                    NA                 0.0121771   -0.0706531    0.0950073
0-24 months   MAL-ED         INDIA          1                    NA                 0.0152988   -0.0514192    0.0820167
0-24 months   MAL-ED         NEPAL          1                    NA                 0.0102041   -0.0780591    0.0984672
0-24 months   MAL-ED         SOUTH AFRICA   1                    NA                -0.0304233   -0.0951285    0.0342819
0-24 months   NIH-Crypto     BANGLADESH     1                    NA                -0.0023832   -0.0242016    0.0194352
0-24 months   SAS-CompFeed   INDIA          1                    NA                -0.0522720   -0.1777888    0.0732449
0-24 months   ZVITAMBO       ZIMBABWE       1                    NA                 0.0016269   -0.0137570    0.0170108
0-6 months    EE             PAKISTAN       1                    NA                -0.0274194   -0.2293626    0.1745239
0-6 months    GMS-Nepal      NEPAL          1                    NA                 0.0368739   -0.0633562    0.1371040
0-6 months    JiVitA-3       BANGLADESH     1                    NA                 0.4191041    0.3649622    0.4732460
0-6 months    JiVitA-4       BANGLADESH     1                    NA                -0.0435952   -0.0700330   -0.0171574
0-6 months    MAL-ED         BANGLADESH     1                    NA                -0.0171600   -0.1014153    0.0670952
0-6 months    MAL-ED         INDIA          1                    NA                 0.0059939   -0.0812488    0.0932366
0-6 months    NIH-Crypto     BANGLADESH     1                    NA                -0.0287547   -0.0557185   -0.0017909
0-6 months    SAS-CompFeed   INDIA          1                    NA                 0.0399012   -0.1342697    0.2140721
0-6 months    ZVITAMBO       ZIMBABWE       1                    NA                 0.0009363   -0.0159940    0.0178666
6-24 months   EE             PAKISTAN       1                    NA                 0.0081598   -0.1472852    0.1636048
6-24 months   GMS-Nepal      NEPAL          1                    NA                -0.0984495   -0.1954526   -0.0014464
6-24 months   JiVitA-4       BANGLADESH     1                    NA                -0.0079983   -0.0218694    0.0058729
6-24 months   MAL-ED         BANGLADESH     1                    NA                -0.0666735   -0.1803595    0.0470125
6-24 months   MAL-ED         INDIA          1                    NA                 0.0366764   -0.0559209    0.1292738
6-24 months   SAS-CompFeed   INDIA          1                    NA                -0.0318361   -0.1962388    0.1325665
6-24 months   ZVITAMBO       ZIMBABWE       1                    NA                -0.0290236   -0.0434231   -0.0146240


### Parameter: PAF


agecat        studyid        country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   EE             PAKISTAN       1                    NA                -0.0720213   -0.3901641    0.1733136
0-24 months   GMS-Nepal      NEPAL          1                    NA                -0.0810974   -0.2275519    0.0478842
0-24 months   JiVitA-3       BANGLADESH     1                    NA                 0.4544466    0.3598473    0.5350664
0-24 months   JiVitA-4       BANGLADESH     1                    NA                -0.0610746   -0.1154765   -0.0093258
0-24 months   MAL-ED         BANGLADESH     1                    NA                 0.0188051   -0.1180078    0.1388759
0-24 months   MAL-ED         INDIA          1                    NA                 0.0251734   -0.0910645    0.1290278
0-24 months   MAL-ED         NEPAL          1                    NA                 0.0128205   -0.1045999    0.1177590
0-24 months   MAL-ED         SOUTH AFRICA   1                    NA                -0.0370370   -0.1194057    0.0392707
0-24 months   NIH-Crypto     BANGLADESH     1                    NA                -0.0038280   -0.0395271    0.0306452
0-24 months   SAS-CompFeed   INDIA          1                    NA                -0.1365816   -0.5169218    0.1483953
0-24 months   ZVITAMBO       ZIMBABWE       1                    NA                 0.0029807   -0.0256069    0.0307714
0-6 months    EE             PAKISTAN       1                    NA                -0.0478873   -0.4672027    0.2515909
0-6 months    GMS-Nepal      NEPAL          1                    NA                 0.0619687   -0.1229445    0.2164326
0-6 months    JiVitA-3       BANGLADESH     1                    NA                 0.6196079    0.5316394    0.6910540
0-6 months    JiVitA-4       BANGLADESH     1                    NA                -0.0780199   -0.1275096   -0.0307025
0-6 months    MAL-ED         BANGLADESH     1                    NA                -0.0216216   -0.1337321    0.0794027
0-6 months    MAL-ED         INDIA          1                    NA                 0.0087368   -0.1269778    0.1281082
0-6 months    NIH-Crypto     BANGLADESH     1                    NA                -0.0321856   -0.0634921   -0.0018007
0-6 months    SAS-CompFeed   INDIA          1                    NA                 0.0768383   -0.3274382    0.3579908
0-6 months    ZVITAMBO       ZIMBABWE       1                    NA                 0.0012487   -0.0215890    0.0235759
6-24 months   EE             PAKISTAN       1                    NA                 0.0176178   -0.3823615    0.3018651
6-24 months   GMS-Nepal      NEPAL          1                    NA                -0.1946095   -0.4044203   -0.0161430
6-24 months   JiVitA-4       BANGLADESH     1                    NA                -0.0536521   -0.1510709    0.0355217
6-24 months   MAL-ED         BANGLADESH     1                    NA                -0.1356461   -0.4057042    0.0825295
6-24 months   MAL-ED         INDIA          1                    NA                 0.0683188   -0.1206626    0.2254316
6-24 months   SAS-CompFeed   INDIA          1                    NA                -0.1115444   -0.8659510    0.3378545
6-24 months   ZVITAMBO       ZIMBABWE       1                    NA                -0.4079882   -0.6115076   -0.2301716
