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
Birth       JiVitA-3       BANGLADESH                     1                 0      142   22370
Birth       JiVitA-3       BANGLADESH                     1                 1       94   22370
Birth       JiVitA-3       BANGLADESH                     0                 0    19786   22370
Birth       JiVitA-3       BANGLADESH                     0                 1     2348   22370
Birth       JiVitA-4       BANGLADESH                     1                 0     1764    2823
Birth       JiVitA-4       BANGLADESH                     1                 1      148    2823
Birth       JiVitA-4       BANGLADESH                     0                 0      826    2823
Birth       JiVitA-4       BANGLADESH                     0                 1       85    2823
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
6 months    JiVitA-3       BANGLADESH                     1                 0       21   16811
6 months    JiVitA-3       BANGLADESH                     1                 1       14   16811
6 months    JiVitA-3       BANGLADESH                     0                 0    15770   16811
6 months    JiVitA-3       BANGLADESH                     0                 1     1006   16811
6 months    JiVitA-4       BANGLADESH                     1                 0     2929    4831
6 months    JiVitA-4       BANGLADESH                     1                 1      165    4831
6 months    JiVitA-4       BANGLADESH                     0                 0     1631    4831
6 months    JiVitA-4       BANGLADESH                     0                 1      106    4831
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
24 months   JiVitA-3       BANGLADESH                     1                 0        1    8632
24 months   JiVitA-3       BANGLADESH                     1                 1        0    8632
24 months   JiVitA-3       BANGLADESH                     0                 0     7284    8632
24 months   JiVitA-3       BANGLADESH                     0                 1     1347    8632
24 months   JiVitA-4       BANGLADESH                     1                 0     2754    4752
24 months   JiVitA-4       BANGLADESH                     1                 1      288    4752
24 months   JiVitA-4       BANGLADESH                     0                 0     1545    4752
24 months   JiVitA-4       BANGLADESH                     0                 1      165    4752
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
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/8823d8bf-7f3b-4e10-835d-b5e4245cd199/47205bfd-f920-49cc-adc2-ba9142f0b484/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8823d8bf-7f3b-4e10-835d-b5e4245cd199/47205bfd-f920-49cc-adc2-ba9142f0b484/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8823d8bf-7f3b-4e10-835d-b5e4245cd199/47205bfd-f920-49cc-adc2-ba9142f0b484/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8823d8bf-7f3b-4e10-835d-b5e4245cd199/47205bfd-f920-49cc-adc2-ba9142f0b484/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       EE             PAKISTAN                       1                    NA                0.1363636   0.0347419   0.2379854
Birth       EE             PAKISTAN                       0                    NA                0.2162162   0.1567658   0.2756666
Birth       JiVitA-3       BANGLADESH                     1                    NA                0.2859035   0.2600212   0.3117858
Birth       JiVitA-3       BANGLADESH                     0                    NA                0.1067056   0.1020924   0.1113188
Birth       JiVitA-4       BANGLADESH                     1                    NA                0.0817630   0.0691968   0.0943291
Birth       JiVitA-4       BANGLADESH                     0                    NA                0.0836698   0.0714333   0.0959063
Birth       SAS-CompFeed   INDIA                          1                    NA                0.0581395   0.0251640   0.0911151
Birth       SAS-CompFeed   INDIA                          0                    NA                0.0669045   0.0492927   0.0845164
Birth       ZVITAMBO       ZIMBABWE                       1                    NA                0.0311561   0.0280864   0.0342258
Birth       ZVITAMBO       ZIMBABWE                       0                    NA                0.0314378   0.0283422   0.0345333
6 months    EE             PAKISTAN                       1                    NA                0.2042693   0.0984261   0.3101124
6 months    EE             PAKISTAN                       0                    NA                0.2232339   0.1755109   0.2709569
6 months    JiVitA-3       BANGLADESH                     1                    NA                0.3949210   0.3821533   0.4076886
6 months    JiVitA-3       BANGLADESH                     0                    NA                0.0599726   0.0560378   0.0639074
6 months    JiVitA-4       BANGLADESH                     1                    NA                0.0532274   0.0450420   0.0614127
6 months    JiVitA-4       BANGLADESH                     0                    NA                0.0598207   0.0486476   0.0709938
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0390244   0.0124614   0.0655873
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1428571   0.0368142   0.2489001
6 months    SAS-CompFeed   INDIA                          1                    NA                0.0612245   0.0218241   0.1006248
6 months    SAS-CompFeed   INDIA                          0                    NA                0.0985460   0.0798882   0.1172039
6 months    ZVITAMBO       ZIMBABWE                       1                    NA                0.0400995   0.0342135   0.0459856
6 months    ZVITAMBO       ZIMBABWE                       0                    NA                0.0394446   0.0331419   0.0457474
24 months   EE             PAKISTAN                       1                    NA                0.3745074   0.1985877   0.5504271
24 months   EE             PAKISTAN                       0                    NA                0.3403251   0.2587761   0.4218740
24 months   GMS-Nepal      NEPAL                          1                    NA                0.0381679   0.0053206   0.0710153
24 months   GMS-Nepal      NEPAL                          0                    NA                0.1369427   0.0988746   0.1750108
24 months   JiVitA-4       BANGLADESH                     1                    NA                0.0948678   0.0830153   0.1067203
24 months   JiVitA-4       BANGLADESH                     0                    NA                0.0960987   0.0796292   0.1125683
24 months   MAL-ED         BANGLADESH                     1                    NA                0.1215331   0.0637096   0.1793565
24 months   MAL-ED         BANGLADESH                     0                    NA                0.1565122   0.0816851   0.2313393
24 months   MAL-ED         INDIA                          1                    NA                0.1602476   0.0991577   0.2213375
24 months   MAL-ED         INDIA                          0                    NA                0.1197981   0.0570819   0.1825143
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.1319444   0.0765505   0.1873384
24 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.0769231   0.0220574   0.1317887
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2997663   0.2325687   0.3669639
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4679223   0.2934916   0.6423530
24 months   ZVITAMBO       ZIMBABWE                       1                    NA                0.1114131   0.0885709   0.1342553
24 months   ZVITAMBO       ZIMBABWE                       0                    NA                0.1033022   0.0806300   0.1259743


### Parameter: E(Y)


agecat      studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       EE             PAKISTAN                       NA                   NA                0.2008734   0.1488678   0.2528789
Birth       JiVitA-3       BANGLADESH                     NA                   NA                0.1091641   0.1046058   0.1137223
Birth       JiVitA-4       BANGLADESH                     NA                   NA                0.0825363   0.0708486   0.0942240
Birth       SAS-CompFeed   INDIA                          NA                   NA                0.0662800   0.0486880   0.0838721
Birth       ZVITAMBO       ZIMBABWE                       NA                   NA                0.0312449   0.0281769   0.0343130
6 months    EE             PAKISTAN                       NA                   NA                0.2182320   0.1756239   0.2608402
6 months    JiVitA-3       BANGLADESH                     NA                   NA                0.0606746   0.0568229   0.0645262
6 months    JiVitA-4       BANGLADESH                     NA                   NA                0.0560960   0.0493335   0.0628586
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0566802   0.0277850   0.0855754
6 months    SAS-CompFeed   INDIA                          NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ZVITAMBO       ZIMBABWE                       NA                   NA                0.0401403   0.0357552   0.0445254
24 months   EE             PAKISTAN                       NA                   NA                0.3475610   0.2744572   0.4206647
24 months   GMS-Nepal      NEPAL                          NA                   NA                0.1078652   0.0790107   0.1367196
24 months   JiVitA-4       BANGLADESH                     NA                   NA                0.0953283   0.0857752   0.1048814
24 months   MAL-ED         BANGLADESH                     NA                   NA                0.1327014   0.0868175   0.1785853
24 months   MAL-ED         INDIA                          NA                   NA                0.1321586   0.0880054   0.1763117
24 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.1106383   0.0704470   0.1508296
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3271028   0.2640978   0.3901078
24 months   ZVITAMBO       ZIMBABWE                       NA                   NA                0.1081081   0.0918715   0.1243447


### Parameter: RR


agecat      studyid        country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
Birth       EE             PAKISTAN                       1                    1                 1.0000000   1.0000000    1.0000000
Birth       EE             PAKISTAN                       0                    1                 1.5855856   0.7164987    3.5088434
Birth       JiVitA-3       BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
Birth       JiVitA-3       BANGLADESH                     0                    1                 0.3732224   0.3376903    0.4124933
Birth       JiVitA-4       BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
Birth       JiVitA-4       BANGLADESH                     0                    1                 1.0233214   0.9126183    1.1474532
Birth       SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
Birth       SAS-CompFeed   INDIA                          0                    1                 1.1507583   0.6866757    1.9284861
Birth       ZVITAMBO       ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.0000000
Birth       ZVITAMBO       ZIMBABWE                       0                    1                 1.0090408   0.9942708    1.0240303
6 months    EE             PAKISTAN                       1                    1                 1.0000000   1.0000000    1.0000000
6 months    EE             PAKISTAN                       0                    1                 1.0928412   0.6235456    1.9153402
6 months    JiVitA-3       BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
6 months    JiVitA-3       BANGLADESH                     0                    1                 0.1518597   0.1410187    0.1635342
6 months    JiVitA-4       BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
6 months    JiVitA-4       BANGLADESH                     0                    1                 1.1238702   0.8868866    1.4241778
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000    1.0000000
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 3.6607143   1.3371210   10.0221514
6 months    SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
6 months    SAS-CompFeed   INDIA                          0                    1                 1.6095854   0.8339140    3.1067532
6 months    ZVITAMBO       ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.0000000
6 months    ZVITAMBO       ZIMBABWE                       0                    1                 0.9836678   0.7954579    1.2164091
24 months   EE             PAKISTAN                       1                    1                 1.0000000   1.0000000    1.0000000
24 months   EE             PAKISTAN                       0                    1                 0.9087273   0.5358100    1.5411904
24 months   GMS-Nepal      NEPAL                          1                    1                 1.0000000   1.0000000    1.0000000
24 months   GMS-Nepal      NEPAL                          0                    1                 3.5878981   1.4523514    8.8635661
24 months   JiVitA-4       BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
24 months   JiVitA-4       BANGLADESH                     0                    1                 1.0129750   0.8208658    1.2500440
24 months   MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
24 months   MAL-ED         BANGLADESH                     0                    1                 1.2878157   0.6588566    2.5171929
24 months   MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
24 months   MAL-ED         INDIA                          0                    1                 0.7475811   0.3898326    1.4336348
24 months   MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000    1.0000000
24 months   MAL-ED         SOUTH AFRICA                   0                    1                 0.5829960   0.2548159    1.3338424
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000    1.0000000
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.5609570   1.0102683    2.4118214
24 months   ZVITAMBO       ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.0000000
24 months   ZVITAMBO       ZIMBABWE                       0                    1                 0.9271996   0.6881828    1.2492307


### Parameter: PAR


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       1                    NA                 0.0645097   -0.0306907    0.1597101
Birth       JiVitA-3       BANGLADESH                     1                    NA                -0.1767395   -0.2023194   -0.1511595
Birth       JiVitA-4       BANGLADESH                     1                    NA                 0.0007733   -0.0022438    0.0037905
Birth       SAS-CompFeed   INDIA                          1                    NA                 0.0081405   -0.0199419    0.0362229
Birth       ZVITAMBO       ZIMBABWE                       1                    NA                 0.0000889   -0.0001656    0.0003433
6 months    EE             PAKISTAN                       1                    NA                 0.0139628   -0.0826944    0.1106200
6 months    JiVitA-3       BANGLADESH                     1                    NA                -0.3342464   -0.3473812   -0.3211116
6 months    JiVitA-4       BANGLADESH                     1                    NA                 0.0028686   -0.0020330    0.0077703
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0176558   -0.0015614    0.0368729
6 months    SAS-CompFeed   INDIA                          1                    NA                 0.0345839   -0.0039983    0.0731661
6 months    ZVITAMBO       ZIMBABWE                       1                    NA                 0.0000408   -0.0040741    0.0041556
24 months   EE             PAKISTAN                       1                    NA                -0.0269464   -0.1855189    0.1316261
24 months   GMS-Nepal      NEPAL                          1                    NA                 0.0696972    0.0339722    0.1054223
24 months   JiVitA-4       BANGLADESH                     1                    NA                 0.0004605   -0.0067922    0.0077132
24 months   MAL-ED         BANGLADESH                     1                    NA                 0.0111683   -0.0262691    0.0486058
24 months   MAL-ED         INDIA                          1                    NA                -0.0280890   -0.0653192    0.0091411
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0213061   -0.0516920    0.0090797
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0273365   -0.0026712    0.0573442
24 months   ZVITAMBO       ZIMBABWE                       1                    NA                -0.0033050   -0.0191029    0.0124930


### Parameter: PAF


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       1                    NA                 0.3211462   -0.3548268    0.6598514
Birth       JiVitA-3       BANGLADESH                     1                    NA                -1.6190261   -1.8762159   -1.3848340
Birth       JiVitA-4       BANGLADESH                     1                    NA                 0.0093696   -0.0281308    0.0455022
Birth       SAS-CompFeed   INDIA                          1                    NA                 0.1228198   -0.4233308    0.4594052
Birth       ZVITAMBO       ZIMBABWE                       1                    NA                 0.0028438   -0.0053276    0.0109487
6 months    EE             PAKISTAN                       1                    NA                 0.0639813   -0.5027940    0.4169986
6 months    JiVitA-3       BANGLADESH                     1                    NA                -5.5088397   -5.9784219   -5.0708559
6 months    JiVitA-4       BANGLADESH                     1                    NA                 0.0511381   -0.0403481    0.1345793
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3114983   -0.0691645    0.5566308
6 months    SAS-CompFeed   INDIA                          1                    NA                 0.3609694   -0.1862100    0.6557438
6 months    ZVITAMBO       ZIMBABWE                       1                    NA                 0.0010155   -0.1069353    0.0984387
24 months   EE             PAKISTAN                       1                    NA                -0.0775301   -0.6455240    0.2944065
24 months   GMS-Nepal      NEPAL                          1                    NA                 0.6461514    0.2037010    0.8427615
24 months   JiVitA-4       BANGLADESH                     1                    NA                 0.0048304   -0.0742234    0.0780665
24 months   MAL-ED         BANGLADESH                     1                    NA                 0.0841615   -0.2463954    0.3270513
24 months   MAL-ED         INDIA                          1                    NA                -0.2125402   -0.5301503    0.0391442
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.1925748   -0.4934545    0.0476880
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0835716   -0.0128074    0.1707792
24 months   ZVITAMBO       ZIMBABWE                       1                    NA                -0.0305709   -0.1875644    0.1056684
