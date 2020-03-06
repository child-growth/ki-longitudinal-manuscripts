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

unadjusted

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
![](/tmp/decd7135-7419-4ff7-bae3-c9936ae87c29/a68a82e2-a460-4823-8c05-3a4f95d40ff4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/decd7135-7419-4ff7-bae3-c9936ae87c29/a68a82e2-a460-4823-8c05-3a4f95d40ff4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/decd7135-7419-4ff7-bae3-c9936ae87c29/a68a82e2-a460-4823-8c05-3a4f95d40ff4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/decd7135-7419-4ff7-bae3-c9936ae87c29/a68a82e2-a460-4823-8c05-3a4f95d40ff4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   EE             PAKISTAN       1                    NA                0.4202899   0.3036637   0.5369160
0-24 months   EE             PAKISTAN       0                    NA                0.4530201   0.3964253   0.5096150
0-24 months   GMS-Nepal      NEPAL          1                    NA                0.2166667   0.1564343   0.2768990
0-24 months   GMS-Nepal      NEPAL          0                    NA                0.3205418   0.2770488   0.3640347
0-24 months   MAL-ED         BANGLADESH     1                    NA                0.1304348   0.0783137   0.1825559
0-24 months   MAL-ED         BANGLADESH     0                    NA                0.1683168   0.0952096   0.2414241
0-24 months   MAL-ED         INDIA          1                    NA                0.2229730   0.1557788   0.2901672
0-24 months   MAL-ED         INDIA          0                    NA                0.2058824   0.1272556   0.2845091
0-24 months   MAL-ED         NEPAL          1                    NA                0.0918367   0.0345397   0.1491337
0-24 months   MAL-ED         NEPAL          0                    NA                0.0915493   0.0440170   0.1390816
0-24 months   MAL-ED         SOUTH AFRICA   1                    NA                0.0662983   0.0299908   0.1026059
0-24 months   MAL-ED         SOUTH AFRICA   0                    NA                0.0948276   0.0414223   0.1482329
0-24 months   NIH-Crypto     BANGLADESH     1                    NA                0.1004566   0.0774553   0.1234579
0-24 months   NIH-Crypto     BANGLADESH     0                    NA                0.0495050   0.0071725   0.0918374
0-24 months   SAS-CompFeed   INDIA          1                    NA                0.2135922   0.1179650   0.3092194
0-24 months   SAS-CompFeed   INDIA          0                    NA                0.2388605   0.1960578   0.2816632
0-24 months   ZVITAMBO       ZIMBABWE       1                    NA                0.0368852   0.0323338   0.0414367
0-24 months   ZVITAMBO       ZIMBABWE       0                    NA                0.0487721   0.0432396   0.0543046
0-6 months    EE             PAKISTAN       1                    NA                0.1159420   0.0402976   0.1915864
0-6 months    EE             PAKISTAN       0                    NA                0.1577181   0.1162798   0.1991564
0-6 months    GMS-Nepal      NEPAL          1                    NA                0.0444444   0.0143146   0.0745743
0-6 months    GMS-Nepal      NEPAL          0                    NA                0.0541761   0.0330799   0.0752723
0-6 months    MAL-ED         INDIA          1                    NA                0.0675676   0.0270479   0.1080872
0-6 months    MAL-ED         INDIA          0                    NA                0.0882353   0.0330808   0.1433898
0-6 months    SAS-CompFeed   INDIA          1                    NA                0.0686275   0.0186437   0.1186112
0-6 months    SAS-CompFeed   INDIA          0                    NA                0.0712711   0.0481167   0.0944255
0-6 months    ZVITAMBO       ZIMBABWE       1                    NA                0.0085496   0.0063199   0.0107794
0-6 months    ZVITAMBO       ZIMBABWE       0                    NA                0.0154086   0.0122320   0.0185852
6-24 months   EE             PAKISTAN       1                    NA                0.3970588   0.2806031   0.5135146
6-24 months   EE             PAKISTAN       0                    NA                0.4232082   0.3665578   0.4798586
6-24 months   GMS-Nepal      NEPAL          1                    NA                0.2292994   0.1634809   0.2951179
6-24 months   GMS-Nepal      NEPAL          0                    NA                0.3588391   0.3105034   0.4071747
6-24 months   MAL-ED         BANGLADESH     1                    NA                0.1301370   0.0754465   0.1848275
6-24 months   MAL-ED         BANGLADESH     0                    NA                0.1630435   0.0874000   0.2386870
6-24 months   MAL-ED         INDIA          1                    NA                0.2158273   0.1472902   0.2843644
6-24 months   MAL-ED         INDIA          0                    NA                0.1770833   0.1005580   0.2536087
6-24 months   MAL-ED         NEPAL          1                    NA                0.0842105   0.0282485   0.1401725
6-24 months   MAL-ED         NEPAL          0                    NA                0.0571429   0.0186115   0.0956742
6-24 months   MAL-ED         SOUTH AFRICA   1                    NA                0.0759494   0.0345606   0.1173382
6-24 months   MAL-ED         SOUTH AFRICA   0                    NA                0.0824742   0.0276233   0.1373251
6-24 months   SAS-CompFeed   INDIA          1                    NA                0.1980198   0.1080545   0.2879851
6-24 months   SAS-CompFeed   INDIA          0                    NA                0.2282609   0.1905962   0.2659255
6-24 months   ZVITAMBO       ZIMBABWE       1                    NA                0.0378014   0.0326100   0.0429927
6-24 months   ZVITAMBO       ZIMBABWE       0                    NA                0.0456085   0.0394637   0.0517532


### Parameter: E(Y)


agecat        studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   EE             PAKISTAN       NA                   NA                0.4468665   0.3959321   0.4978009
0-24 months   GMS-Nepal      NEPAL          NA                   NA                0.2905297   0.2548505   0.3262089
0-24 months   MAL-ED         BANGLADESH     NA                   NA                0.1450382   0.1023171   0.1877593
0-24 months   MAL-ED         INDIA          NA                   NA                0.2160000   0.1648868   0.2671132
0-24 months   MAL-ED         NEPAL          NA                   NA                0.0916667   0.0550838   0.1282495
0-24 months   MAL-ED         SOUTH AFRICA   NA                   NA                0.0774411   0.0469912   0.1078909
0-24 months   NIH-Crypto     BANGLADESH     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   SAS-CompFeed   INDIA          NA                   NA                0.2370924   0.1969570   0.2772278
0-24 months   ZVITAMBO       ZIMBABWE       NA                   NA                0.0424623   0.0389147   0.0460100
0-6 months    EE             PAKISTAN       NA                   NA                0.1498638   0.1132959   0.1864317
0-6 months    GMS-Nepal      NEPAL          NA                   NA                0.0513644   0.0340170   0.0687117
0-6 months    MAL-ED         INDIA          NA                   NA                0.0760000   0.0430852   0.1089148
0-6 months    SAS-CompFeed   INDIA          NA                   NA                0.0710868   0.0489978   0.0931759
0-6 months    ZVITAMBO       ZIMBABWE       NA                   NA                0.0117638   0.0098602   0.0136673
6-24 months   EE             PAKISTAN       NA                   NA                0.4182825   0.3673274   0.4692377
6-24 months   GMS-Nepal      NEPAL          NA                   NA                0.3208955   0.2813387   0.3604523
6-24 months   MAL-ED         BANGLADESH     NA                   NA                0.1428571   0.0983068   0.1874075
6-24 months   MAL-ED         INDIA          NA                   NA                0.2000000   0.1487493   0.2512507
6-24 months   MAL-ED         NEPAL          NA                   NA                0.0680851   0.0358110   0.1003592
6-24 months   MAL-ED         SOUTH AFRICA   NA                   NA                0.0784314   0.0453685   0.1114942
6-24 months   SAS-CompFeed   INDIA          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   ZVITAMBO       ZIMBABWE       NA                   NA                0.0413980   0.0374157   0.0453802


### Parameter: RR


agecat        studyid        country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   EE             PAKISTAN       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   EE             PAKISTAN       0                    1                 1.0778755   0.7950717   1.461271
0-24 months   GMS-Nepal      NEPAL          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal      NEPAL          0                    1                 1.4794235   1.0857934   2.015755
0-24 months   MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED         BANGLADESH     0                    1                 1.2904290   0.7151806   2.328373
0-24 months   MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED         INDIA          0                    1                 0.9233512   0.5676633   1.501907
0-24 months   MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED         NEPAL          0                    1                 0.9968701   0.4427226   2.244633
0-24 months   MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED         SOUTH AFRICA   0                    1                 1.4303161   0.6520389   3.137549
0-24 months   NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto     BANGLADESH     0                    1                 0.4927993   0.2033366   1.194330
0-24 months   SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed   INDIA          0                    1                 1.1183013   0.6894732   1.813846
0-24 months   ZVITAMBO       ZIMBABWE       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO       ZIMBABWE       0                    1                 1.3222661   1.1182151   1.563552
0-6 months    EE             PAKISTAN       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    EE             PAKISTAN       0                    1                 1.3603188   0.6732560   2.748534
0-6 months    GMS-Nepal      NEPAL          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal      NEPAL          0                    1                 1.2189616   0.5577744   2.663922
0-6 months    MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    MAL-ED         INDIA          0                    1                 1.3058824   0.5491665   3.105304
0-6 months    SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed   INDIA          0                    1                 1.0385221   0.4797340   2.248180
0-6 months    ZVITAMBO       ZIMBABWE       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO       ZIMBABWE       0                    1                 1.8022544   1.2925239   2.513006
6-24 months   EE             PAKISTAN       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   EE             PAKISTAN       0                    1                 1.0658577   0.7721173   1.471347
6-24 months   GMS-Nepal      NEPAL          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal      NEPAL          0                    1                 1.5649370   1.1397052   2.148826
6-24 months   MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED         BANGLADESH     0                    1                 1.2528604   0.6699465   2.342962
6-24 months   MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED         INDIA          0                    1                 0.8204861   0.4799221   1.402722
6-24 months   MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED         NEPAL          0                    1                 0.6785714   0.2632902   1.748866
6-24 months   MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED         SOUTH AFRICA   0                    1                 1.0859107   0.4595997   2.565715
6-24 months   SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed   INDIA          0                    1                 1.1527174   0.7055086   1.883404
6-24 months   ZVITAMBO       ZIMBABWE       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO       ZIMBABWE       0                    1                 1.2065307   0.9953747   1.462481


### Parameter: PAR


agecat        studyid        country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   EE             PAKISTAN       1                    NA                 0.0265766   -0.0786919    0.1318451
0-24 months   GMS-Nepal      NEPAL          1                    NA                 0.0738630    0.0209051    0.1268210
0-24 months   MAL-ED         BANGLADESH     1                    NA                 0.0146034   -0.0200804    0.0492872
0-24 months   MAL-ED         INDIA          1                    NA                -0.0069730   -0.0491842    0.0352383
0-24 months   MAL-ED         NEPAL          1                    NA                -0.0001701   -0.0442175    0.0438774
0-24 months   MAL-ED         SOUTH AFRICA   1                    NA                 0.0111427   -0.0141296    0.0364150
0-24 months   NIH-Crypto     BANGLADESH     1                    NA                -0.0067891   -0.0133260   -0.0002522
0-24 months   SAS-CompFeed   INDIA          1                    NA                 0.0235002   -0.0735909    0.1205913
0-24 months   ZVITAMBO       ZIMBABWE       1                    NA                 0.0055771    0.0022142    0.0089400
0-6 months    EE             PAKISTAN       1                    NA                 0.0339217   -0.0361330    0.1039764
0-6 months    GMS-Nepal      NEPAL          1                    NA                 0.0069199   -0.0192366    0.0330764
0-6 months    MAL-ED         INDIA          1                    NA                 0.0084324   -0.0195191    0.0363839
0-6 months    SAS-CompFeed   INDIA          1                    NA                 0.0024594   -0.0470533    0.0519720
0-6 months    ZVITAMBO       ZIMBABWE       1                    NA                 0.0032141    0.0013945    0.0050338
6-24 months   EE             PAKISTAN       1                    NA                 0.0212237   -0.0838912    0.1263387
6-24 months   GMS-Nepal      NEPAL          1                    NA                 0.0915962    0.0336393    0.1495530
6-24 months   MAL-ED         BANGLADESH     1                    NA                 0.0127202   -0.0234198    0.0488601
6-24 months   MAL-ED         INDIA          1                    NA                -0.0158273   -0.0578645    0.0262099
6-24 months   MAL-ED         NEPAL          1                    NA                -0.0161254   -0.0566386    0.0243877
6-24 months   MAL-ED         SOUTH AFRICA   1                    NA                 0.0024820   -0.0236593    0.0286233
6-24 months   SAS-CompFeed   INDIA          1                    NA                 0.0280421   -0.0633719    0.1194562
6-24 months   ZVITAMBO       ZIMBABWE       1                    NA                 0.0035966   -0.0001100    0.0073032


### Parameter: PAF


agecat        studyid        country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   EE             PAKISTAN       1                    NA                 0.0594733   -0.2082887    0.2678981
0-24 months   GMS-Nepal      NEPAL          1                    NA                 0.2542357    0.0490787    0.4151310
0-24 months   MAL-ED         BANGLADESH     1                    NA                 0.1006865   -0.1715891    0.3096856
0-24 months   MAL-ED         INDIA          1                    NA                -0.0322823   -0.2473495    0.1457032
0-24 months   MAL-ED         NEPAL          1                    NA                -0.0018553   -0.6184695    0.3798375
0-24 months   MAL-ED         SOUTH AFRICA   1                    NA                 0.1438866   -0.2472002    0.4123397
0-24 months   NIH-Crypto     BANGLADESH     1                    NA                -0.0724805   -0.1430392   -0.0062774
0-24 months   SAS-CompFeed   INDIA          1                    NA                 0.0991181   -0.4134315    0.4258030
0-24 months   ZVITAMBO       ZIMBABWE       1                    NA                 0.1313420    0.0491944    0.2063922
0-6 months    EE             PAKISTAN       1                    NA                 0.2263505   -0.4112992    0.5758988
0-6 months    GMS-Nepal      NEPAL          1                    NA                 0.1347222   -0.5553245    0.5186177
0-6 months    MAL-ED         INDIA          1                    NA                 0.1109531   -0.3405113    0.4103709
0-6 months    SAS-CompFeed   INDIA          1                    NA                 0.0345965   -0.9819848    0.5297624
0-6 months    ZVITAMBO       ZIMBABWE       1                    NA                 0.2732235    0.1086528    0.4074092
6-24 months   EE             PAKISTAN       1                    NA                 0.0507402   -0.2370017    0.2715497
6-24 months   GMS-Nepal      NEPAL          1                    NA                 0.2854392    0.0813896    0.4441636
6-24 months   MAL-ED         BANGLADESH     1                    NA                 0.0890411   -0.2011532    0.3091255
6-24 months   MAL-ED         INDIA          1                    NA                -0.0791367   -0.3106404    0.1114756
6-24 months   MAL-ED         NEPAL          1                    NA                -0.2368421   -0.9869236    0.2300769
6-24 months   MAL-ED         SOUTH AFRICA   1                    NA                 0.0316456   -0.3658897    0.3134802
6-24 months   SAS-CompFeed   INDIA          1                    NA                 0.1240462   -0.3834323    0.4453685
6-24 months   ZVITAMBO       ZIMBABWE       1                    NA                 0.0868789   -0.0067970    0.1718389
