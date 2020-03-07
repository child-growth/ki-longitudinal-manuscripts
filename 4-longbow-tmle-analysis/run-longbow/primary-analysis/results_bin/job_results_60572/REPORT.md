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
* W_gagebrth
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
* delta_W_gagebrth
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

agecat        studyid        country                        earlybf    ever_co   n_cell       n
------------  -------------  -----------------------------  --------  --------  -------  ------
0-24 months   EE             PAKISTAN                       1                0       40     367
0-24 months   EE             PAKISTAN                       1                1       29     367
0-24 months   EE             PAKISTAN                       0                0      163     367
0-24 months   EE             PAKISTAN                       0                1      135     367
0-24 months   GMS-Nepal      NEPAL                          1                0      141     623
0-24 months   GMS-Nepal      NEPAL                          1                1       39     623
0-24 months   GMS-Nepal      NEPAL                          0                0      301     623
0-24 months   GMS-Nepal      NEPAL                          0                1      142     623
0-24 months   JiVitA-3       BANGLADESH                     1                0      137   26843
0-24 months   JiVitA-3       BANGLADESH                     1                1       29   26843
0-24 months   JiVitA-3       BANGLADESH                     0                0    24316   26843
0-24 months   JiVitA-3       BANGLADESH                     0                1     2361   26843
0-24 months   JiVitA-4       BANGLADESH                     1                0     2898    5442
0-24 months   JiVitA-4       BANGLADESH                     1                1      536    5442
0-24 months   JiVitA-4       BANGLADESH                     0                0     1666    5442
0-24 months   JiVitA-4       BANGLADESH                     0                1      342    5442
0-24 months   MAL-ED         BANGLADESH                     1                0      140     262
0-24 months   MAL-ED         BANGLADESH                     1                1       21     262
0-24 months   MAL-ED         BANGLADESH                     0                0       84     262
0-24 months   MAL-ED         BANGLADESH                     0                1       17     262
0-24 months   MAL-ED         BRAZIL                         1                0      107     233
0-24 months   MAL-ED         BRAZIL                         1                1        1     233
0-24 months   MAL-ED         BRAZIL                         0                0      123     233
0-24 months   MAL-ED         BRAZIL                         0                1        2     233
0-24 months   MAL-ED         INDIA                          1                0      115     250
0-24 months   MAL-ED         INDIA                          1                1       33     250
0-24 months   MAL-ED         INDIA                          0                0       81     250
0-24 months   MAL-ED         INDIA                          0                1       21     250
0-24 months   MAL-ED         NEPAL                          1                0       89     240
0-24 months   MAL-ED         NEPAL                          1                1        9     240
0-24 months   MAL-ED         NEPAL                          0                0      129     240
0-24 months   MAL-ED         NEPAL                          0                1       13     240
0-24 months   MAL-ED         PERU                           1                0      214     302
0-24 months   MAL-ED         PERU                           1                1       11     302
0-24 months   MAL-ED         PERU                           0                0       76     302
0-24 months   MAL-ED         PERU                           0                1        1     302
0-24 months   MAL-ED         SOUTH AFRICA                   1                0      169     297
0-24 months   MAL-ED         SOUTH AFRICA                   1                1       12     297
0-24 months   MAL-ED         SOUTH AFRICA                   0                0      105     297
0-24 months   MAL-ED         SOUTH AFRICA                   0                1       11     297
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      197     261
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1       19     261
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       41     261
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        4     261
0-24 months   NIH-Crypto     BANGLADESH                     1                0      591     758
0-24 months   NIH-Crypto     BANGLADESH                     1                1       66     758
0-24 months   NIH-Crypto     BANGLADESH                     0                0       96     758
0-24 months   NIH-Crypto     BANGLADESH                     0                1        5     758
0-24 months   SAS-CompFeed   INDIA                          1                0       81    1472
0-24 months   SAS-CompFeed   INDIA                          1                1       22    1472
0-24 months   SAS-CompFeed   INDIA                          0                0     1042    1472
0-24 months   SAS-CompFeed   INDIA                          0                1      327    1472
0-24 months   ZVITAMBO       ZIMBABWE                       1                0     6345   12411
0-24 months   ZVITAMBO       ZIMBABWE                       1                1      243   12411
0-24 months   ZVITAMBO       ZIMBABWE                       0                0     5539   12411
0-24 months   ZVITAMBO       ZIMBABWE                       0                1      284   12411
0-6 months    EE             PAKISTAN                       1                0       61     367
0-6 months    EE             PAKISTAN                       1                1        8     367
0-6 months    EE             PAKISTAN                       0                0      251     367
0-6 months    EE             PAKISTAN                       0                1       47     367
0-6 months    GMS-Nepal      NEPAL                          1                0      172     623
0-6 months    GMS-Nepal      NEPAL                          1                1        8     623
0-6 months    GMS-Nepal      NEPAL                          0                0      419     623
0-6 months    GMS-Nepal      NEPAL                          0                1       24     623
0-6 months    JiVitA-3       BANGLADESH                     1                0      137   26737
0-6 months    JiVitA-3       BANGLADESH                     1                1       27   26737
0-6 months    JiVitA-3       BANGLADESH                     0                0    25538   26737
0-6 months    JiVitA-3       BANGLADESH                     0                1     1035   26737
0-6 months    JiVitA-4       BANGLADESH                     1                0     3311    5092
0-6 months    JiVitA-4       BANGLADESH                     1                1       74    5092
0-6 months    JiVitA-4       BANGLADESH                     0                0     1646    5092
0-6 months    JiVitA-4       BANGLADESH                     0                1       61    5092
0-6 months    MAL-ED         BANGLADESH                     1                0      155     262
0-6 months    MAL-ED         BANGLADESH                     1                1        6     262
0-6 months    MAL-ED         BANGLADESH                     0                0       98     262
0-6 months    MAL-ED         BANGLADESH                     0                1        3     262
0-6 months    MAL-ED         BRAZIL                         1                0      107     233
0-6 months    MAL-ED         BRAZIL                         1                1        1     233
0-6 months    MAL-ED         BRAZIL                         0                0      125     233
0-6 months    MAL-ED         BRAZIL                         0                1        0     233
0-6 months    MAL-ED         INDIA                          1                0      138     250
0-6 months    MAL-ED         INDIA                          1                1       10     250
0-6 months    MAL-ED         INDIA                          0                0       93     250
0-6 months    MAL-ED         INDIA                          0                1        9     250
0-6 months    MAL-ED         NEPAL                          1                0       96     240
0-6 months    MAL-ED         NEPAL                          1                1        2     240
0-6 months    MAL-ED         NEPAL                          0                0      136     240
0-6 months    MAL-ED         NEPAL                          0                1        6     240
0-6 months    MAL-ED         PERU                           1                0      223     302
0-6 months    MAL-ED         PERU                           1                1        2     302
0-6 months    MAL-ED         PERU                           0                0       77     302
0-6 months    MAL-ED         PERU                           0                1        0     302
0-6 months    MAL-ED         SOUTH AFRICA                   1                0      180     297
0-6 months    MAL-ED         SOUTH AFRICA                   1                1        1     297
0-6 months    MAL-ED         SOUTH AFRICA                   0                0      112     297
0-6 months    MAL-ED         SOUTH AFRICA                   0                1        4     297
0-6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      213     261
0-6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1        3     261
0-6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       44     261
0-6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        1     261
0-6 months    NIH-Crypto     BANGLADESH                     1                0      643     758
0-6 months    NIH-Crypto     BANGLADESH                     1                1       14     758
0-6 months    NIH-Crypto     BANGLADESH                     0                0       98     758
0-6 months    NIH-Crypto     BANGLADESH                     0                1        3     758
0-6 months    SAS-CompFeed   INDIA                          1                0       95    1463
0-6 months    SAS-CompFeed   INDIA                          1                1        7    1463
0-6 months    SAS-CompFeed   INDIA                          0                0     1264    1463
0-6 months    SAS-CompFeed   INDIA                          0                1       97    1463
0-6 months    ZVITAMBO       ZIMBABWE                       1                0     6494   12326
0-6 months    ZVITAMBO       ZIMBABWE                       1                1       56   12326
0-6 months    ZVITAMBO       ZIMBABWE                       0                0     5687   12326
0-6 months    ZVITAMBO       ZIMBABWE                       0                1       89   12326
6-24 months   EE             PAKISTAN                       1                0       41     361
6-24 months   EE             PAKISTAN                       1                1       27     361
6-24 months   EE             PAKISTAN                       0                0      169     361
6-24 months   EE             PAKISTAN                       0                1      124     361
6-24 months   GMS-Nepal      NEPAL                          1                0      121     536
6-24 months   GMS-Nepal      NEPAL                          1                1       36     536
6-24 months   GMS-Nepal      NEPAL                          0                0      243     536
6-24 months   GMS-Nepal      NEPAL                          0                1      136     536
6-24 months   JiVitA-3       BANGLADESH                     1                0       32   17279
6-24 months   JiVitA-3       BANGLADESH                     1                1        3   17279
6-24 months   JiVitA-3       BANGLADESH                     0                0    15745   17279
6-24 months   JiVitA-3       BANGLADESH                     0                1     1499   17279
6-24 months   JiVitA-4       BANGLADESH                     1                0     2930    5429
6-24 months   JiVitA-4       BANGLADESH                     1                1      498    5429
6-24 months   JiVitA-4       BANGLADESH                     0                0     1697    5429
6-24 months   JiVitA-4       BANGLADESH                     0                1      304    5429
6-24 months   MAL-ED         BANGLADESH                     1                0      127     238
6-24 months   MAL-ED         BANGLADESH                     1                1       19     238
6-24 months   MAL-ED         BANGLADESH                     0                0       77     238
6-24 months   MAL-ED         BANGLADESH                     0                1       15     238
6-24 months   MAL-ED         BRAZIL                         1                0       95     207
6-24 months   MAL-ED         BRAZIL                         1                1        0     207
6-24 months   MAL-ED         BRAZIL                         0                0      110     207
6-24 months   MAL-ED         BRAZIL                         0                1        2     207
6-24 months   MAL-ED         INDIA                          1                0      109     235
6-24 months   MAL-ED         INDIA                          1                1       30     235
6-24 months   MAL-ED         INDIA                          0                0       79     235
6-24 months   MAL-ED         INDIA                          0                1       17     235
6-24 months   MAL-ED         NEPAL                          1                0       87     235
6-24 months   MAL-ED         NEPAL                          1                1        8     235
6-24 months   MAL-ED         NEPAL                          0                0      132     235
6-24 months   MAL-ED         NEPAL                          0                1        8     235
6-24 months   MAL-ED         PERU                           1                0      191     270
6-24 months   MAL-ED         PERU                           1                1       10     270
6-24 months   MAL-ED         PERU                           0                0       68     270
6-24 months   MAL-ED         PERU                           0                1        1     270
6-24 months   MAL-ED         SOUTH AFRICA                   1                0      146     255
6-24 months   MAL-ED         SOUTH AFRICA                   1                1       12     255
6-24 months   MAL-ED         SOUTH AFRICA                   0                0       89     255
6-24 months   MAL-ED         SOUTH AFRICA                   0                1        8     255
6-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      185     245
6-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1       18     245
6-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       39     245
6-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        3     245
6-24 months   NIH-Crypto     BANGLADESH                     1                0      571     730
6-24 months   NIH-Crypto     BANGLADESH                     1                1       61     730
6-24 months   NIH-Crypto     BANGLADESH                     0                0       96     730
6-24 months   NIH-Crypto     BANGLADESH                     0                1        2     730
6-24 months   SAS-CompFeed   INDIA                          1                0       81    1389
6-24 months   SAS-CompFeed   INDIA                          1                1       20    1389
6-24 months   SAS-CompFeed   INDIA                          0                0      994    1389
6-24 months   SAS-CompFeed   INDIA                          0                1      294    1389
6-24 months   ZVITAMBO       ZIMBABWE                       1                0     4989    9614
6-24 months   ZVITAMBO       ZIMBABWE                       1                1      196    9614
6-24 months   ZVITAMBO       ZIMBABWE                       0                0     4227    9614
6-24 months   ZVITAMBO       ZIMBABWE                       0                1      202    9614


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
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/5d847ae8-8ed0-4ba6-aa82-8581fedbb466/f4f5cf76-2e91-4bdc-b433-766a63107553/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5d847ae8-8ed0-4ba6-aa82-8581fedbb466/f4f5cf76-2e91-4bdc-b433-766a63107553/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5d847ae8-8ed0-4ba6-aa82-8581fedbb466/f4f5cf76-2e91-4bdc-b433-766a63107553/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5d847ae8-8ed0-4ba6-aa82-8581fedbb466/f4f5cf76-2e91-4bdc-b433-766a63107553/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   EE             PAKISTAN       1                    NA                0.4194080   0.2972059   0.5416100
0-24 months   EE             PAKISTAN       0                    NA                0.4550910   0.3985037   0.5116783
0-24 months   GMS-Nepal      NEPAL          1                    NA                0.2313651   0.1704278   0.2923024
0-24 months   GMS-Nepal      NEPAL          0                    NA                0.3146167   0.2715094   0.3577240
0-24 months   JiVitA-3       BANGLADESH     1                    NA                0.1737191   0.1581912   0.1892471
0-24 months   JiVitA-3       BANGLADESH     0                    NA                0.0885124   0.0844836   0.0925413
0-24 months   JiVitA-4       BANGLADESH     1                    NA                0.1563381   0.1421954   0.1704809
0-24 months   JiVitA-4       BANGLADESH     0                    NA                0.1657250   0.1480680   0.1833821
0-24 months   MAL-ED         BANGLADESH     1                    NA                0.1283665   0.0760838   0.1806493
0-24 months   MAL-ED         BANGLADESH     0                    NA                0.1733871   0.1002253   0.2465489
0-24 months   MAL-ED         INDIA          1                    NA                0.2217934   0.1540293   0.2895575
0-24 months   MAL-ED         INDIA          0                    NA                0.1935904   0.1141484   0.2730323
0-24 months   MAL-ED         NEPAL          1                    NA                0.0918367   0.0345397   0.1491337
0-24 months   MAL-ED         NEPAL          0                    NA                0.0915493   0.0440170   0.1390816
0-24 months   MAL-ED         SOUTH AFRICA   1                    NA                0.0730658   0.0358015   0.1103302
0-24 months   MAL-ED         SOUTH AFRICA   0                    NA                0.0881998   0.0383508   0.1380487
0-24 months   NIH-Crypto     BANGLADESH     1                    NA                0.1004566   0.0774553   0.1234579
0-24 months   NIH-Crypto     BANGLADESH     0                    NA                0.0495050   0.0071725   0.0918374
0-24 months   SAS-CompFeed   INDIA          1                    NA                0.2134435   0.0859481   0.3409389
0-24 months   SAS-CompFeed   INDIA          0                    NA                0.2391137   0.1955176   0.2827099
0-24 months   ZVITAMBO       ZIMBABWE       1                    NA                0.0421843   0.0372894   0.0470792
0-24 months   ZVITAMBO       ZIMBABWE       0                    NA                0.0433830   0.0382256   0.0485404
0-6 months    EE             PAKISTAN       1                    NA                0.1159420   0.0402976   0.1915864
0-6 months    EE             PAKISTAN       0                    NA                0.1577181   0.1162798   0.1991564
0-6 months    GMS-Nepal      NEPAL          1                    NA                0.0444444   0.0143146   0.0745743
0-6 months    GMS-Nepal      NEPAL          0                    NA                0.0541761   0.0330799   0.0752723
0-6 months    JiVitA-3       BANGLADESH     1                    NA                0.1695852   0.1542697   0.1849007
0-6 months    JiVitA-3       BANGLADESH     0                    NA                0.0389473   0.0363753   0.0415193
0-6 months    JiVitA-4       BANGLADESH     1                    NA                0.0220307   0.0160063   0.0280552
0-6 months    JiVitA-4       BANGLADESH     0                    NA                0.0349235   0.0247481   0.0450989
0-6 months    MAL-ED         INDIA          1                    NA                0.0675676   0.0270479   0.1080872
0-6 months    MAL-ED         INDIA          0                    NA                0.0882353   0.0330808   0.1433898
0-6 months    SAS-CompFeed   INDIA          1                    NA                0.0686275   0.0186437   0.1186112
0-6 months    SAS-CompFeed   INDIA          0                    NA                0.0712711   0.0481167   0.0944255
0-6 months    ZVITAMBO       ZIMBABWE       1                    NA                0.0085623   0.0063246   0.0107999
0-6 months    ZVITAMBO       ZIMBABWE       0                    NA                0.0154734   0.0122718   0.0186750
6-24 months   EE             PAKISTAN       1                    NA                0.4116277   0.2888337   0.5344216
6-24 months   EE             PAKISTAN       0                    NA                0.4217442   0.3649028   0.4785856
6-24 months   GMS-Nepal      NEPAL          1                    NA                0.2395764   0.1737631   0.3053897
6-24 months   GMS-Nepal      NEPAL          0                    NA                0.3531795   0.3050868   0.4012722
6-24 months   JiVitA-4       BANGLADESH     1                    NA                0.1450670   0.1316123   0.1585216
6-24 months   JiVitA-4       BANGLADESH     0                    NA                0.1505062   0.1338586   0.1671538
6-24 months   MAL-ED         BANGLADESH     1                    NA                0.1268888   0.0719947   0.1817829
6-24 months   MAL-ED         BANGLADESH     0                    NA                0.1623343   0.0856820   0.2389866
6-24 months   MAL-ED         INDIA          1                    NA                0.2128710   0.1440342   0.2817078
6-24 months   MAL-ED         INDIA          0                    NA                0.1694991   0.0921687   0.2468294
6-24 months   MAL-ED         NEPAL          1                    NA                0.0842105   0.0282485   0.1401725
6-24 months   MAL-ED         NEPAL          0                    NA                0.0571429   0.0186115   0.0956742
6-24 months   MAL-ED         SOUTH AFRICA   1                    NA                0.0759494   0.0345606   0.1173382
6-24 months   MAL-ED         SOUTH AFRICA   0                    NA                0.0824742   0.0276233   0.1373251
6-24 months   SAS-CompFeed   INDIA          1                    NA                0.1965839   0.0755385   0.3176293
6-24 months   SAS-CompFeed   INDIA          0                    NA                0.2285365   0.1901782   0.2668948
6-24 months   ZVITAMBO       ZIMBABWE       1                    NA                0.0401593   0.0347328   0.0455858
6-24 months   ZVITAMBO       ZIMBABWE       0                    NA                0.0432708   0.0371830   0.0493586


### Parameter: E(Y)


agecat        studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   EE             PAKISTAN       NA                   NA                0.4468665   0.3959321   0.4978009
0-24 months   GMS-Nepal      NEPAL          NA                   NA                0.2905297   0.2548505   0.3262089
0-24 months   JiVitA-3       BANGLADESH     NA                   NA                0.0890362   0.0851140   0.0929585
0-24 months   JiVitA-4       BANGLADESH     NA                   NA                0.1613377   0.1500062   0.1726692
0-24 months   MAL-ED         BANGLADESH     NA                   NA                0.1450382   0.1023171   0.1877593
0-24 months   MAL-ED         INDIA          NA                   NA                0.2160000   0.1648868   0.2671132
0-24 months   MAL-ED         NEPAL          NA                   NA                0.0916667   0.0550838   0.1282495
0-24 months   MAL-ED         SOUTH AFRICA   NA                   NA                0.0774411   0.0469912   0.1078909
0-24 months   NIH-Crypto     BANGLADESH     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   SAS-CompFeed   INDIA          NA                   NA                0.2370924   0.1969570   0.2772278
0-24 months   ZVITAMBO       ZIMBABWE       NA                   NA                0.0424623   0.0389147   0.0460100
0-6 months    EE             PAKISTAN       NA                   NA                0.1498638   0.1132959   0.1864317
0-6 months    GMS-Nepal      NEPAL          NA                   NA                0.0513644   0.0340170   0.0687117
0-6 months    JiVitA-3       BANGLADESH     NA                   NA                0.0397202   0.0372135   0.0422270
0-6 months    JiVitA-4       BANGLADESH     NA                   NA                0.0265122   0.0211694   0.0318550
0-6 months    MAL-ED         INDIA          NA                   NA                0.0760000   0.0430852   0.1089148
0-6 months    SAS-CompFeed   INDIA          NA                   NA                0.0710868   0.0489978   0.0931759
0-6 months    ZVITAMBO       ZIMBABWE       NA                   NA                0.0117638   0.0098602   0.0136673
6-24 months   EE             PAKISTAN       NA                   NA                0.4182825   0.3673274   0.4692377
6-24 months   GMS-Nepal      NEPAL          NA                   NA                0.3208955   0.2813387   0.3604523
6-24 months   JiVitA-4       BANGLADESH     NA                   NA                0.1477252   0.1371297   0.1583206
6-24 months   MAL-ED         BANGLADESH     NA                   NA                0.1428571   0.0983068   0.1874075
6-24 months   MAL-ED         INDIA          NA                   NA                0.2000000   0.1487493   0.2512507
6-24 months   MAL-ED         NEPAL          NA                   NA                0.0680851   0.0358110   0.1003592
6-24 months   MAL-ED         SOUTH AFRICA   NA                   NA                0.0784314   0.0453685   0.1114942
6-24 months   SAS-CompFeed   INDIA          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   ZVITAMBO       ZIMBABWE       NA                   NA                0.0413980   0.0374157   0.0453802


### Parameter: RR


agecat        studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   EE             PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   EE             PAKISTAN       0                    1                 1.0850796   0.7899800   1.4904146
0-24 months   GMS-Nepal      NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal      NEPAL          0                    1                 1.3598274   1.0129363   1.8255153
0-24 months   JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3       BANGLADESH     0                    1                 0.5095147   0.4596970   0.5647310
0-24 months   JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4       BANGLADESH     0                    1                 1.0600425   0.9254740   1.2141778
0-24 months   MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED         BANGLADESH     0                    1                 1.3507186   0.7503118   2.4315767
0-24 months   MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED         INDIA          0                    1                 0.8728408   0.5230134   1.4566567
0-24 months   MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED         NEPAL          0                    1                 0.9968701   0.4427226   2.2446334
0-24 months   MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED         SOUTH AFRICA   0                    1                 1.2071276   0.5720898   2.5470773
0-24 months   NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto     BANGLADESH     0                    1                 0.4927993   0.2033366   1.1943305
0-24 months   SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed   INDIA          0                    1                 1.1202673   0.5860422   2.1414820
0-24 months   ZVITAMBO       ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO       ZIMBABWE       0                    1                 1.0284163   0.8754399   1.2081242
0-6 months    EE             PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    EE             PAKISTAN       0                    1                 1.3603188   0.6732560   2.7485342
0-6 months    GMS-Nepal      NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal      NEPAL          0                    1                 1.2189616   0.5577744   2.6639218
0-6 months    JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3       BANGLADESH     0                    1                 0.2296620   0.2046268   0.2577602
0-6 months    JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4       BANGLADESH     0                    1                 1.5852172   1.0756441   2.3361942
0-6 months    MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED         INDIA          0                    1                 1.3058824   0.5491665   3.1053038
0-6 months    SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed   INDIA          0                    1                 1.0385221   0.4797340   2.2481797
0-6 months    ZVITAMBO       ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO       ZIMBABWE       0                    1                 1.8071647   1.2948469   2.5221856
6-24 months   EE             PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   EE             PAKISTAN       0                    1                 1.0245769   0.7385168   1.4214407
6-24 months   GMS-Nepal      NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal      NEPAL          0                    1                 1.4741830   1.0869976   1.9992827
6-24 months   JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4       BANGLADESH     0                    1                 1.0374946   0.8995524   1.1965896
6-24 months   MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED         BANGLADESH     0                    1                 1.2793433   0.6728034   2.4326857
6-24 months   MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED         INDIA          0                    1                 0.7962525   0.4547933   1.3940795
6-24 months   MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED         NEPAL          0                    1                 0.6785714   0.2632902   1.7488658
6-24 months   MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED         SOUTH AFRICA   0                    1                 1.0859107   0.4595997   2.5657150
6-24 months   SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed   INDIA          0                    1                 1.1625395   0.5946514   2.2727568
6-24 months   ZVITAMBO       ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO       ZIMBABWE       0                    1                 1.0774782   0.8879736   1.3074253


### Parameter: PAR


agecat        studyid        country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   EE             PAKISTAN       1                    NA                 0.0274585   -0.0837085    0.1386255
0-24 months   GMS-Nepal      NEPAL          1                    NA                 0.0591646    0.0059737    0.1123555
0-24 months   JiVitA-3       BANGLADESH     1                    NA                -0.0846829   -0.1005719   -0.0687938
0-24 months   JiVitA-4       BANGLADESH     1                    NA                 0.0049996   -0.0031294    0.0131287
0-24 months   MAL-ED         BANGLADESH     1                    NA                 0.0166716   -0.0182506    0.0515939
0-24 months   MAL-ED         INDIA          1                    NA                -0.0057934   -0.0484618    0.0368749
0-24 months   MAL-ED         NEPAL          1                    NA                -0.0001701   -0.0442175    0.0438774
0-24 months   MAL-ED         SOUTH AFRICA   1                    NA                 0.0043752   -0.0193800    0.0281305
0-24 months   NIH-Crypto     BANGLADESH     1                    NA                -0.0067891   -0.0133260   -0.0002522
0-24 months   SAS-CompFeed   INDIA          1                    NA                 0.0236489   -0.1081553    0.1554531
0-24 months   ZVITAMBO       ZIMBABWE       1                    NA                 0.0002780   -0.0032376    0.0037936
0-6 months    EE             PAKISTAN       1                    NA                 0.0339217   -0.0361330    0.1039764
0-6 months    GMS-Nepal      NEPAL          1                    NA                 0.0069199   -0.0192366    0.0330764
0-6 months    JiVitA-3       BANGLADESH     1                    NA                -0.1298650   -0.1451792   -0.1145508
0-6 months    JiVitA-4       BANGLADESH     1                    NA                 0.0044814    0.0005255    0.0084374
0-6 months    MAL-ED         INDIA          1                    NA                 0.0084324   -0.0195191    0.0363839
0-6 months    SAS-CompFeed   INDIA          1                    NA                 0.0024594   -0.0470533    0.0519720
0-6 months    ZVITAMBO       ZIMBABWE       1                    NA                 0.0032015    0.0013735    0.0050295
6-24 months   EE             PAKISTAN       1                    NA                 0.0066549   -0.1049213    0.1182311
6-24 months   GMS-Nepal      NEPAL          1                    NA                 0.0813191    0.0237621    0.1388761
6-24 months   JiVitA-4       BANGLADESH     1                    NA                 0.0026582   -0.0051816    0.0104981
6-24 months   MAL-ED         BANGLADESH     1                    NA                 0.0159684   -0.0205811    0.0525179
6-24 months   MAL-ED         INDIA          1                    NA                -0.0128710   -0.0554303    0.0296883
6-24 months   MAL-ED         NEPAL          1                    NA                -0.0161254   -0.0566386    0.0243877
6-24 months   MAL-ED         SOUTH AFRICA   1                    NA                 0.0024820   -0.0236593    0.0286233
6-24 months   SAS-CompFeed   INDIA          1                    NA                 0.0294780   -0.0967702    0.1557263
6-24 months   ZVITAMBO       ZIMBABWE       1                    NA                 0.0012386   -0.0026826    0.0051599


### Parameter: PAF


agecat        studyid        country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   EE             PAKISTAN       1                    NA                 0.0614468   -0.2235221    0.2800439
0-24 months   GMS-Nepal      NEPAL          1                    NA                 0.2036438   -0.0011167    0.3665242
0-24 months   JiVitA-3       BANGLADESH     1                    NA                -0.9511057   -1.1527119   -0.7683803
0-24 months   JiVitA-4       BANGLADESH     1                    NA                 0.0309886   -0.0208478    0.0801928
0-24 months   MAL-ED         BANGLADESH     1                    NA                 0.1149464   -0.1602564    0.3248735
0-24 months   MAL-ED         INDIA          1                    NA                -0.0268215   -0.2444842    0.1527715
0-24 months   MAL-ED         NEPAL          1                    NA                -0.0018553   -0.6184695    0.3798375
0-24 months   MAL-ED         SOUTH AFRICA   1                    NA                 0.0564977   -0.3049205    0.3178155
0-24 months   NIH-Crypto     BANGLADESH     1                    NA                -0.0724805   -0.1430392   -0.0062774
0-24 months   SAS-CompFeed   INDIA          1                    NA                 0.0997456   -0.6617431    0.5122844
0-24 months   ZVITAMBO       ZIMBABWE       1                    NA                 0.0065477   -0.0797721    0.0859669
0-6 months    EE             PAKISTAN       1                    NA                 0.2263505   -0.4112992    0.5758988
0-6 months    GMS-Nepal      NEPAL          1                    NA                 0.1347222   -0.5553245    0.5186177
0-6 months    JiVitA-3       BANGLADESH     1                    NA                -3.2694911   -3.7461150   -2.8407318
0-6 months    JiVitA-4       BANGLADESH     1                    NA                 0.1690331    0.0085718    0.3035240
0-6 months    MAL-ED         INDIA          1                    NA                 0.1109531   -0.3405113    0.4103709
0-6 months    SAS-CompFeed   INDIA          1                    NA                 0.0345965   -0.9819848    0.5297624
0-6 months    ZVITAMBO       ZIMBABWE       1                    NA                 0.2721495    0.1066596    0.4069828
6-24 months   EE             PAKISTAN       1                    NA                 0.0159100   -0.2905079    0.2495721
6-24 months   GMS-Nepal      NEPAL          1                    NA                 0.2534130    0.0519776    0.4120475
6-24 months   JiVitA-4       BANGLADESH     1                    NA                 0.0179943   -0.0366128    0.0697249
6-24 months   MAL-ED         BANGLADESH     1                    NA                 0.1117785   -0.1835028    0.3333879
6-24 months   MAL-ED         INDIA          1                    NA                -0.0643549   -0.2993071    0.1281111
6-24 months   MAL-ED         NEPAL          1                    NA                -0.2368421   -0.9869236    0.2300769
6-24 months   MAL-ED         SOUTH AFRICA   1                    NA                 0.0316456   -0.3658897    0.3134802
6-24 months   SAS-CompFeed   INDIA          1                    NA                 0.1303980   -0.6425637    0.5396175
6-24 months   ZVITAMBO       ZIMBABWE       1                    NA                 0.0299200   -0.0694455    0.1200531
