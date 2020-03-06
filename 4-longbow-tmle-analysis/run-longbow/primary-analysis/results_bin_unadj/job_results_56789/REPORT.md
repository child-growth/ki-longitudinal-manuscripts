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

**Outcome Variable:** sstunted

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

agecat      studyid        country                        earlybf    sstunted   n_cell       n
----------  -------------  -----------------------------  --------  ---------  -------  ------
Birth       EE             PAKISTAN                       1                 0       38     229
Birth       EE             PAKISTAN                       1                 1        6     229
Birth       EE             PAKISTAN                       0                 0      145     229
Birth       EE             PAKISTAN                       0                 1       40     229
Birth       GMS-Nepal      NEPAL                          1                 0      176     632
Birth       GMS-Nepal      NEPAL                          1                 1        4     632
Birth       GMS-Nepal      NEPAL                          0                 0      431     632
Birth       GMS-Nepal      NEPAL                          0                 1       21     632
Birth       MAL-ED         BANGLADESH                     1                 0      145     230
Birth       MAL-ED         BANGLADESH                     1                 1        2     230
Birth       MAL-ED         BANGLADESH                     0                 0       76     230
Birth       MAL-ED         BANGLADESH                     0                 1        7     230
Birth       MAL-ED         BRAZIL                         1                 0       26      65
Birth       MAL-ED         BRAZIL                         1                 1        2      65
Birth       MAL-ED         BRAZIL                         0                 0       36      65
Birth       MAL-ED         BRAZIL                         0                 1        1      65
Birth       MAL-ED         INDIA                          1                 0       31      46
Birth       MAL-ED         INDIA                          1                 1        1      46
Birth       MAL-ED         INDIA                          0                 0       13      46
Birth       MAL-ED         INDIA                          0                 1        1      46
Birth       MAL-ED         NEPAL                          1                 0       14      27
Birth       MAL-ED         NEPAL                          1                 1        0      27
Birth       MAL-ED         NEPAL                          0                 0       12      27
Birth       MAL-ED         NEPAL                          0                 1        1      27
Birth       MAL-ED         PERU                           1                 0      173     233
Birth       MAL-ED         PERU                           1                 1        2     233
Birth       MAL-ED         PERU                           0                 0       56     233
Birth       MAL-ED         PERU                           0                 1        2     233
Birth       MAL-ED         SOUTH AFRICA                   1                 0       69     111
Birth       MAL-ED         SOUTH AFRICA                   1                 1        0     111
Birth       MAL-ED         SOUTH AFRICA                   0                 0       41     111
Birth       MAL-ED         SOUTH AFRICA                   0                 1        1     111
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 0      103     125
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 1        8     125
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 0       12     125
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 1        2     125
Birth       NIH-Crypto     BANGLADESH                     1                 0      628     732
Birth       NIH-Crypto     BANGLADESH                     1                 1        6     732
Birth       NIH-Crypto     BANGLADESH                     0                 0       94     732
Birth       NIH-Crypto     BANGLADESH                     0                 1        4     732
Birth       SAS-CompFeed   INDIA                          1                 0       81    1207
Birth       SAS-CompFeed   INDIA                          1                 1        5    1207
Birth       SAS-CompFeed   INDIA                          0                 0     1046    1207
Birth       SAS-CompFeed   INDIA                          0                 1       75    1207
Birth       ZVITAMBO       ZIMBABWE                       1                 0     6387   12354
Birth       ZVITAMBO       ZIMBABWE                       1                 1      169   12354
Birth       ZVITAMBO       ZIMBABWE                       0                 0     5581   12354
Birth       ZVITAMBO       ZIMBABWE                       0                 1      217   12354
6 months    EE             PAKISTAN                       1                 0       54     362
6 months    EE             PAKISTAN                       1                 1       14     362
6 months    EE             PAKISTAN                       0                 0      229     362
6 months    EE             PAKISTAN                       0                 1       65     362
6 months    GMS-Nepal      NEPAL                          1                 0      147     511
6 months    GMS-Nepal      NEPAL                          1                 1        4     511
6 months    GMS-Nepal      NEPAL                          0                 0      347     511
6 months    GMS-Nepal      NEPAL                          0                 1       13     511
6 months    MAL-ED         BANGLADESH                     1                 0      142     240
6 months    MAL-ED         BANGLADESH                     1                 1        5     240
6 months    MAL-ED         BANGLADESH                     0                 0       90     240
6 months    MAL-ED         BANGLADESH                     0                 1        3     240
6 months    MAL-ED         BRAZIL                         1                 0       95     209
6 months    MAL-ED         BRAZIL                         1                 1        0     209
6 months    MAL-ED         BRAZIL                         0                 0      114     209
6 months    MAL-ED         BRAZIL                         0                 1        0     209
6 months    MAL-ED         INDIA                          1                 0      135     236
6 months    MAL-ED         INDIA                          1                 1        5     236
6 months    MAL-ED         INDIA                          0                 0       92     236
6 months    MAL-ED         INDIA                          0                 1        4     236
6 months    MAL-ED         NEPAL                          1                 0       96     236
6 months    MAL-ED         NEPAL                          1                 1        0     236
6 months    MAL-ED         NEPAL                          0                 0      139     236
6 months    MAL-ED         NEPAL                          0                 1        1     236
6 months    MAL-ED         PERU                           1                 0      193     273
6 months    MAL-ED         PERU                           1                 1        9     273
6 months    MAL-ED         PERU                           0                 0       70     273
6 months    MAL-ED         PERU                           0                 1        1     273
6 months    MAL-ED         SOUTH AFRICA                   1                 0      155     250
6 months    MAL-ED         SOUTH AFRICA                   1                 1        1     250
6 months    MAL-ED         SOUTH AFRICA                   0                 0       89     250
6 months    MAL-ED         SOUTH AFRICA                   0                 1        5     250
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 0      197     247
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 1        8     247
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 0       36     247
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 1        6     247
6 months    NIH-Crypto     BANGLADESH                     1                 0      599     715
6 months    NIH-Crypto     BANGLADESH                     1                 1       20     715
6 months    NIH-Crypto     BANGLADESH                     0                 0       93     715
6 months    NIH-Crypto     BANGLADESH                     0                 1        3     715
6 months    SAS-CompFeed   INDIA                          1                 0       92    1336
6 months    SAS-CompFeed   INDIA                          1                 1        6    1336
6 months    SAS-CompFeed   INDIA                          0                 0     1116    1336
6 months    SAS-CompFeed   INDIA                          0                 1      122    1336
6 months    ZVITAMBO       ZIMBABWE                       1                 0     3994    7698
6 months    ZVITAMBO       ZIMBABWE                       1                 1      152    7698
6 months    ZVITAMBO       ZIMBABWE                       0                 0     3395    7698
6 months    ZVITAMBO       ZIMBABWE                       0                 1      157    7698
24 months   EE             PAKISTAN                       1                 0       20     164
24 months   EE             PAKISTAN                       1                 1       12     164
24 months   EE             PAKISTAN                       0                 0       87     164
24 months   EE             PAKISTAN                       0                 1       45     164
24 months   GMS-Nepal      NEPAL                          1                 0      126     445
24 months   GMS-Nepal      NEPAL                          1                 1        5     445
24 months   GMS-Nepal      NEPAL                          0                 0      271     445
24 months   GMS-Nepal      NEPAL                          0                 1       43     445
24 months   MAL-ED         BANGLADESH                     1                 0      112     211
24 months   MAL-ED         BANGLADESH                     1                 1       16     211
24 months   MAL-ED         BANGLADESH                     0                 0       71     211
24 months   MAL-ED         BANGLADESH                     0                 1       12     211
24 months   MAL-ED         BRAZIL                         1                 0       79     169
24 months   MAL-ED         BRAZIL                         1                 1        1     169
24 months   MAL-ED         BRAZIL                         0                 0       89     169
24 months   MAL-ED         BRAZIL                         0                 1        0     169
24 months   MAL-ED         INDIA                          1                 0      114     227
24 months   MAL-ED         INDIA                          1                 1       20     227
24 months   MAL-ED         INDIA                          0                 0       83     227
24 months   MAL-ED         INDIA                          0                 1       10     227
24 months   MAL-ED         NEPAL                          1                 0       94     228
24 months   MAL-ED         NEPAL                          1                 1        1     228
24 months   MAL-ED         NEPAL                          0                 0      127     228
24 months   MAL-ED         NEPAL                          0                 1        6     228
24 months   MAL-ED         PERU                           1                 0      136     201
24 months   MAL-ED         PERU                           1                 1       13     201
24 months   MAL-ED         PERU                           0                 0       50     201
24 months   MAL-ED         PERU                           0                 1        2     201
24 months   MAL-ED         SOUTH AFRICA                   1                 0      125     235
24 months   MAL-ED         SOUTH AFRICA                   1                 1       19     235
24 months   MAL-ED         SOUTH AFRICA                   0                 0       84     235
24 months   MAL-ED         SOUTH AFRICA                   0                 1        7     235
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 0      126     214
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 1       54     214
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 0       18     214
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 1       16     214
24 months   NIH-Crypto     BANGLADESH                     1                 0      409     514
24 months   NIH-Crypto     BANGLADESH                     1                 1       34     514
24 months   NIH-Crypto     BANGLADESH                     0                 0       69     514
24 months   NIH-Crypto     BANGLADESH                     0                 1        2     514
24 months   ZVITAMBO       ZIMBABWE                       1                 0      637    1406
24 months   ZVITAMBO       ZIMBABWE                       1                 1       80    1406
24 months   ZVITAMBO       ZIMBABWE                       0                 0      617    1406
24 months   ZVITAMBO       ZIMBABWE                       0                 1       72    1406


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/18dd6e99-5bad-4e88-9bbe-c2a37b5db597/60859e13-1a3d-49cd-83ed-405c6e4f4781/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/18dd6e99-5bad-4e88-9bbe-c2a37b5db597/60859e13-1a3d-49cd-83ed-405c6e4f4781/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/18dd6e99-5bad-4e88-9bbe-c2a37b5db597/60859e13-1a3d-49cd-83ed-405c6e4f4781/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/18dd6e99-5bad-4e88-9bbe-c2a37b5db597/60859e13-1a3d-49cd-83ed-405c6e4f4781/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       EE             PAKISTAN                       1                    NA                0.1363636   0.0347419   0.2379854
Birth       EE             PAKISTAN                       0                    NA                0.2162162   0.1567658   0.2756666
Birth       SAS-CompFeed   INDIA                          1                    NA                0.0581395   0.0251640   0.0911151
Birth       SAS-CompFeed   INDIA                          0                    NA                0.0669045   0.0492927   0.0845164
Birth       ZVITAMBO       ZIMBABWE                       1                    NA                0.0257779   0.0219417   0.0296141
Birth       ZVITAMBO       ZIMBABWE                       0                    NA                0.0374267   0.0325409   0.0423125
6 months    EE             PAKISTAN                       1                    NA                0.2058824   0.1096444   0.3021203
6 months    EE             PAKISTAN                       0                    NA                0.2210884   0.1735875   0.2685894
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0390244   0.0124614   0.0655873
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1428571   0.0368142   0.2489001
6 months    SAS-CompFeed   INDIA                          1                    NA                0.0612245   0.0218241   0.1006248
6 months    SAS-CompFeed   INDIA                          0                    NA                0.0985460   0.0798882   0.1172039
6 months    ZVITAMBO       ZIMBABWE                       1                    NA                0.0366618   0.0309410   0.0423827
6 months    ZVITAMBO       ZIMBABWE                       0                    NA                0.0442005   0.0374406   0.0509603
24 months   EE             PAKISTAN                       1                    NA                0.3750000   0.2067493   0.5432507
24 months   EE             PAKISTAN                       0                    NA                0.3409091   0.2597978   0.4220204
24 months   GMS-Nepal      NEPAL                          1                    NA                0.0381679   0.0053206   0.0710153
24 months   GMS-Nepal      NEPAL                          0                    NA                0.1369427   0.0988746   0.1750108
24 months   MAL-ED         BANGLADESH                     1                    NA                0.1250000   0.0675707   0.1824293
24 months   MAL-ED         BANGLADESH                     0                    NA                0.1445783   0.0687411   0.2204155
24 months   MAL-ED         INDIA                          1                    NA                0.1492537   0.0887869   0.2097205
24 months   MAL-ED         INDIA                          0                    NA                0.1075269   0.0444280   0.1706257
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.1319444   0.0765505   0.1873384
24 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.0769231   0.0220574   0.1317887
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3000000   0.2328975   0.3671025
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4705882   0.3024204   0.6387561
24 months   ZVITAMBO       ZIMBABWE                       1                    NA                0.1115760   0.0885224   0.1346296
24 months   ZVITAMBO       ZIMBABWE                       0                    NA                0.1044993   0.0816495   0.1273491


### Parameter: E(Y)


agecat      studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       EE             PAKISTAN                       NA                   NA                0.2008734   0.1488678   0.2528789
Birth       SAS-CompFeed   INDIA                          NA                   NA                0.0662800   0.0486880   0.0838721
Birth       ZVITAMBO       ZIMBABWE                       NA                   NA                0.0312449   0.0281769   0.0343130
6 months    EE             PAKISTAN                       NA                   NA                0.2182320   0.1756239   0.2608402
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0566802   0.0277850   0.0855754
6 months    SAS-CompFeed   INDIA                          NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ZVITAMBO       ZIMBABWE                       NA                   NA                0.0401403   0.0357552   0.0445254
24 months   EE             PAKISTAN                       NA                   NA                0.3475610   0.2744572   0.4206647
24 months   GMS-Nepal      NEPAL                          NA                   NA                0.1078652   0.0790107   0.1367196
24 months   MAL-ED         BANGLADESH                     NA                   NA                0.1327014   0.0868175   0.1785853
24 months   MAL-ED         INDIA                          NA                   NA                0.1321586   0.0880054   0.1763117
24 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.1106383   0.0704470   0.1508296
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3271028   0.2640978   0.3901078
24 months   ZVITAMBO       ZIMBABWE                       NA                   NA                0.1081081   0.0918715   0.1243447


### Parameter: RR


agecat      studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       EE             PAKISTAN                       1                    1                 1.0000000   1.0000000    1.000000
Birth       EE             PAKISTAN                       0                    1                 1.5855856   0.7164987    3.508843
Birth       SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000    1.000000
Birth       SAS-CompFeed   INDIA                          0                    1                 1.1507583   0.6866757    1.928486
Birth       ZVITAMBO       ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.000000
Birth       ZVITAMBO       ZIMBABWE                       0                    1                 1.4518902   1.1911357    1.769727
6 months    EE             PAKISTAN                       1                    1                 1.0000000   1.0000000    1.000000
6 months    EE             PAKISTAN                       0                    1                 1.0738581   0.6419818    1.796268
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000    1.000000
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 3.6607143   1.3371210   10.022151
6 months    SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000    1.000000
6 months    SAS-CompFeed   INDIA                          0                    1                 1.6095854   0.8339140    3.106753
6 months    ZVITAMBO       ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.000000
6 months    ZVITAMBO       ZIMBABWE                       0                    1                 1.2056254   0.9689971    1.500038
24 months   EE             PAKISTAN                       1                    1                 1.0000000   1.0000000    1.000000
24 months   EE             PAKISTAN                       0                    1                 0.9090909   0.5470796    1.510651
24 months   GMS-Nepal      NEPAL                          1                    1                 1.0000000   1.0000000    1.000000
24 months   GMS-Nepal      NEPAL                          0                    1                 3.5878981   1.4523514    8.863566
24 months   MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000    1.000000
24 months   MAL-ED         BANGLADESH                     0                    1                 1.1566265   0.5759183    2.322872
24 months   MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000    1.000000
24 months   MAL-ED         INDIA                          0                    1                 0.7204301   0.3531055    1.469871
24 months   MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000    1.000000
24 months   MAL-ED         SOUTH AFRICA                   0                    1                 0.5829960   0.2548159    1.333842
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000    1.000000
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.5686275   1.0290289    2.391179
24 months   ZVITAMBO       ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.000000
24 months   ZVITAMBO       ZIMBABWE                       0                    1                 0.9365747   0.6932509    1.265303


### Parameter: PAR


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       EE             PAKISTAN                       1                    NA                 0.0645097   -0.0306907   0.1597101
Birth       SAS-CompFeed   INDIA                          1                    NA                 0.0081405   -0.0199419   0.0362229
Birth       ZVITAMBO       ZIMBABWE                       1                    NA                 0.0054670    0.0025499   0.0083842
6 months    EE             PAKISTAN                       1                    NA                 0.0123497   -0.0748148   0.0995142
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0176558   -0.0015614   0.0368729
6 months    SAS-CompFeed   INDIA                          1                    NA                 0.0345839   -0.0039983   0.0731661
6 months    ZVITAMBO       ZIMBABWE                       1                    NA                 0.0034785   -0.0006086   0.0075655
24 months   EE             PAKISTAN                       1                    NA                -0.0274390   -0.1777897   0.1229116
24 months   GMS-Nepal      NEPAL                          1                    NA                 0.0696972    0.0339722   0.1054223
24 months   MAL-ED         BANGLADESH                     1                    NA                 0.0077014   -0.0297411   0.0451439
24 months   MAL-ED         INDIA                          1                    NA                -0.0170951   -0.0529995   0.0188092
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0213061   -0.0516920   0.0090797
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0271028   -0.0028582   0.0570638
24 months   ZVITAMBO       ZIMBABWE                       1                    NA                -0.0034679   -0.0193752   0.0124394


### Parameter: PAF


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       EE             PAKISTAN                       1                    NA                 0.3211462   -0.3548268   0.6598514
Birth       SAS-CompFeed   INDIA                          1                    NA                 0.1228198   -0.4233308   0.4594052
Birth       ZVITAMBO       ZIMBABWE                       1                    NA                 0.1749732    0.0778093   0.2618998
6 months    EE             PAKISTAN                       1                    NA                 0.0565897   -0.4405711   0.3821735
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3114983   -0.0691645   0.5566308
6 months    SAS-CompFeed   INDIA                          1                    NA                 0.3609694   -0.1862100   0.6557438
6 months    ZVITAMBO       ZIMBABWE                       1                    NA                 0.0866574   -0.0205986   0.1826417
24 months   EE             PAKISTAN                       1                    NA                -0.0789474   -0.6111773   0.2774678
24 months   GMS-Nepal      NEPAL                          1                    NA                 0.6461514    0.2037010   0.8427615
24 months   MAL-ED         BANGLADESH                     1                    NA                 0.0580357   -0.2702485   0.3014779
24 months   MAL-ED         INDIA                          1                    NA                -0.1293532   -0.4336153   0.1103340
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.1925748   -0.4934545   0.0476880
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0828571   -0.0133013   0.1698905
24 months   ZVITAMBO       ZIMBABWE                       1                    NA                -0.0320781   -0.1901585   0.1050056
