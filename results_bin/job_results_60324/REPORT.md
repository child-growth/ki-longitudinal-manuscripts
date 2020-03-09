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

**Outcome Variable:** wasted

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

agecat      studyid        country                        earlybf    wasted   n_cell       n
----------  -------------  -----------------------------  --------  -------  -------  ------
Birth       EE             PAKISTAN                       1               0       34     170
Birth       EE             PAKISTAN                       1               1        2     170
Birth       EE             PAKISTAN                       0               0      115     170
Birth       EE             PAKISTAN                       0               1       19     170
Birth       GMS-Nepal      NEPAL                          1               0      129     586
Birth       GMS-Nepal      NEPAL                          1               1       42     586
Birth       GMS-Nepal      NEPAL                          0               0      332     586
Birth       GMS-Nepal      NEPAL                          0               1       83     586
Birth       JiVitA-3       BANGLADESH                     1               0       89   17943
Birth       JiVitA-3       BANGLADESH                     1               1       16   17943
Birth       JiVitA-3       BANGLADESH                     0               0    15888   17943
Birth       JiVitA-3       BANGLADESH                     0               1     1950   17943
Birth       JiVitA-4       BANGLADESH                     1               0     1477    2396
Birth       JiVitA-4       BANGLADESH                     1               1      147    2396
Birth       JiVitA-4       BANGLADESH                     0               0      680    2396
Birth       JiVitA-4       BANGLADESH                     0               1       92    2396
Birth       MAL-ED         BANGLADESH                     1               0      120     214
Birth       MAL-ED         BANGLADESH                     1               1       20     214
Birth       MAL-ED         BANGLADESH                     0               0       58     214
Birth       MAL-ED         BANGLADESH                     0               1       16     214
Birth       MAL-ED         BRAZIL                         1               0       25      62
Birth       MAL-ED         BRAZIL                         1               1        1      62
Birth       MAL-ED         BRAZIL                         0               0       35      62
Birth       MAL-ED         BRAZIL                         0               1        1      62
Birth       MAL-ED         INDIA                          1               0       27      44
Birth       MAL-ED         INDIA                          1               1        4      44
Birth       MAL-ED         INDIA                          0               0       12      44
Birth       MAL-ED         INDIA                          0               1        1      44
Birth       MAL-ED         NEPAL                          1               0       13      26
Birth       MAL-ED         NEPAL                          1               1        1      26
Birth       MAL-ED         NEPAL                          0               0       11      26
Birth       MAL-ED         NEPAL                          0               1        1      26
Birth       MAL-ED         PERU                           1               0      169     228
Birth       MAL-ED         PERU                           1               1        3     228
Birth       MAL-ED         PERU                           0               0       54     228
Birth       MAL-ED         PERU                           0               1        2     228
Birth       MAL-ED         SOUTH AFRICA                   1               0       64     110
Birth       MAL-ED         SOUTH AFRICA                   1               1        5     110
Birth       MAL-ED         SOUTH AFRICA                   0               0       36     110
Birth       MAL-ED         SOUTH AFRICA                   0               1        5     110
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               0      102     115
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               1        1     115
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               0       12     115
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               1        0     115
Birth       NIH-Crypto     BANGLADESH                     1               0      465     707
Birth       NIH-Crypto     BANGLADESH                     1               1      148     707
Birth       NIH-Crypto     BANGLADESH                     0               0       70     707
Birth       NIH-Crypto     BANGLADESH                     0               1       24     707
Birth       SAS-CompFeed   INDIA                          1               0       69    1072
Birth       SAS-CompFeed   INDIA                          1               1       10    1072
Birth       SAS-CompFeed   INDIA                          0               0      888    1072
Birth       SAS-CompFeed   INDIA                          0               1      105    1072
Birth       ZVITAMBO       ZIMBABWE                       1               0     5320   11514
Birth       ZVITAMBO       ZIMBABWE                       1               1      822   11514
Birth       ZVITAMBO       ZIMBABWE                       0               0     4314   11514
Birth       ZVITAMBO       ZIMBABWE                       0               1     1058   11514
6 months    EE             PAKISTAN                       1               0       62     364
6 months    EE             PAKISTAN                       1               1        7     364
6 months    EE             PAKISTAN                       0               0      256     364
6 months    EE             PAKISTAN                       0               1       39     364
6 months    GMS-Nepal      NEPAL                          1               0      138     511
6 months    GMS-Nepal      NEPAL                          1               1       13     511
6 months    GMS-Nepal      NEPAL                          0               0      325     511
6 months    GMS-Nepal      NEPAL                          0               1       35     511
6 months    JiVitA-3       BANGLADESH                     1               0       28   16784
6 months    JiVitA-3       BANGLADESH                     1               1        8   16784
6 months    JiVitA-3       BANGLADESH                     0               0    15335   16784
6 months    JiVitA-3       BANGLADESH                     0               1     1413   16784
6 months    JiVitA-4       BANGLADESH                     1               0     2921    4833
6 months    JiVitA-4       BANGLADESH                     1               1      174    4833
6 months    JiVitA-4       BANGLADESH                     0               0     1637    4833
6 months    JiVitA-4       BANGLADESH                     0               1      101    4833
6 months    MAL-ED         BANGLADESH                     1               0      142     240
6 months    MAL-ED         BANGLADESH                     1               1        5     240
6 months    MAL-ED         BANGLADESH                     0               0       90     240
6 months    MAL-ED         BANGLADESH                     0               1        3     240
6 months    MAL-ED         BRAZIL                         1               0       94     209
6 months    MAL-ED         BRAZIL                         1               1        1     209
6 months    MAL-ED         BRAZIL                         0               0      114     209
6 months    MAL-ED         BRAZIL                         0               1        0     209
6 months    MAL-ED         INDIA                          1               0      127     236
6 months    MAL-ED         INDIA                          1               1       13     236
6 months    MAL-ED         INDIA                          0               0       90     236
6 months    MAL-ED         INDIA                          0               1        6     236
6 months    MAL-ED         NEPAL                          1               0       94     236
6 months    MAL-ED         NEPAL                          1               1        2     236
6 months    MAL-ED         NEPAL                          0               0      138     236
6 months    MAL-ED         NEPAL                          0               1        2     236
6 months    MAL-ED         PERU                           1               0      202     273
6 months    MAL-ED         PERU                           1               1        0     273
6 months    MAL-ED         PERU                           0               0       71     273
6 months    MAL-ED         PERU                           0               1        0     273
6 months    MAL-ED         SOUTH AFRICA                   1               0      151     250
6 months    MAL-ED         SOUTH AFRICA                   1               1        5     250
6 months    MAL-ED         SOUTH AFRICA                   0               0       92     250
6 months    MAL-ED         SOUTH AFRICA                   0               1        2     250
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               0      204     247
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               1        1     247
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               0       42     247
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               1        0     247
6 months    NIH-Crypto     BANGLADESH                     1               0      601     715
6 months    NIH-Crypto     BANGLADESH                     1               1       18     715
6 months    NIH-Crypto     BANGLADESH                     0               0       93     715
6 months    NIH-Crypto     BANGLADESH                     0               1        3     715
6 months    SAS-CompFeed   INDIA                          1               0       87    1334
6 months    SAS-CompFeed   INDIA                          1               1       10    1334
6 months    SAS-CompFeed   INDIA                          0               0     1081    1334
6 months    SAS-CompFeed   INDIA                          0               1      156    1334
6 months    ZVITAMBO       ZIMBABWE                       1               0     3946    7553
6 months    ZVITAMBO       ZIMBABWE                       1               1      119    7553
6 months    ZVITAMBO       ZIMBABWE                       0               0     3369    7553
6 months    ZVITAMBO       ZIMBABWE                       0               1      119    7553
24 months   EE             PAKISTAN                       1               0       28     164
24 months   EE             PAKISTAN                       1               1        4     164
24 months   EE             PAKISTAN                       0               0      106     164
24 months   EE             PAKISTAN                       0               1       26     164
24 months   GMS-Nepal      NEPAL                          1               0      108     444
24 months   GMS-Nepal      NEPAL                          1               1       23     444
24 months   GMS-Nepal      NEPAL                          0               0      253     444
24 months   GMS-Nepal      NEPAL                          0               1       60     444
24 months   JiVitA-3       BANGLADESH                     1               0        1    8603
24 months   JiVitA-3       BANGLADESH                     1               1        0    8603
24 months   JiVitA-3       BANGLADESH                     0               0     6724    8603
24 months   JiVitA-3       BANGLADESH                     0               1     1878    8603
24 months   JiVitA-4       BANGLADESH                     1               0     2433    4735
24 months   JiVitA-4       BANGLADESH                     1               1      598    4735
24 months   JiVitA-4       BANGLADESH                     0               0     1382    4735
24 months   JiVitA-4       BANGLADESH                     0               1      322    4735
24 months   MAL-ED         BANGLADESH                     1               0      116     211
24 months   MAL-ED         BANGLADESH                     1               1       12     211
24 months   MAL-ED         BANGLADESH                     0               0       74     211
24 months   MAL-ED         BANGLADESH                     0               1        9     211
24 months   MAL-ED         BRAZIL                         1               0       79     169
24 months   MAL-ED         BRAZIL                         1               1        1     169
24 months   MAL-ED         BRAZIL                         0               0       87     169
24 months   MAL-ED         BRAZIL                         0               1        2     169
24 months   MAL-ED         INDIA                          1               0      115     227
24 months   MAL-ED         INDIA                          1               1       19     227
24 months   MAL-ED         INDIA                          0               0       85     227
24 months   MAL-ED         INDIA                          0               1        8     227
24 months   MAL-ED         NEPAL                          1               0       94     228
24 months   MAL-ED         NEPAL                          1               1        1     228
24 months   MAL-ED         NEPAL                          0               0      129     228
24 months   MAL-ED         NEPAL                          0               1        4     228
24 months   MAL-ED         PERU                           1               0      145     201
24 months   MAL-ED         PERU                           1               1        4     201
24 months   MAL-ED         PERU                           0               0       52     201
24 months   MAL-ED         PERU                           0               1        0     201
24 months   MAL-ED         SOUTH AFRICA                   1               0      144     235
24 months   MAL-ED         SOUTH AFRICA                   1               1        0     235
24 months   MAL-ED         SOUTH AFRICA                   0               0       90     235
24 months   MAL-ED         SOUTH AFRICA                   0               1        1     235
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               0      178     214
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               1        2     214
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               0       32     214
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               1        2     214
24 months   NIH-Crypto     BANGLADESH                     1               0      399     514
24 months   NIH-Crypto     BANGLADESH                     1               1       44     514
24 months   NIH-Crypto     BANGLADESH                     0               0       70     514
24 months   NIH-Crypto     BANGLADESH                     0               1        1     514
24 months   ZVITAMBO       ZIMBABWE                       1               0      169     379
24 months   ZVITAMBO       ZIMBABWE                       1               1       32     379
24 months   ZVITAMBO       ZIMBABWE                       0               0      139     379
24 months   ZVITAMBO       ZIMBABWE                       0               1       39     379


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

* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/ab4de963-ee77-4db8-9f5e-786a49a5e693/2016c989-e434-4966-a243-a2949f0b68c2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ab4de963-ee77-4db8-9f5e-786a49a5e693/2016c989-e434-4966-a243-a2949f0b68c2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ab4de963-ee77-4db8-9f5e-786a49a5e693/2016c989-e434-4966-a243-a2949f0b68c2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ab4de963-ee77-4db8-9f5e-786a49a5e693/2016c989-e434-4966-a243-a2949f0b68c2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal      NEPAL          1                    NA                0.2422902   0.1772059   0.3073745
Birth       GMS-Nepal      NEPAL          0                    NA                0.2013583   0.1628001   0.2399165
Birth       JiVitA-3       BANGLADESH     1                    NA                0.1513186   0.1332992   0.1693381
Birth       JiVitA-3       BANGLADESH     0                    NA                0.1093159   0.1040610   0.1145709
Birth       JiVitA-4       BANGLADESH     1                    NA                0.0994609   0.0842254   0.1146964
Birth       JiVitA-4       BANGLADESH     0                    NA                0.1003530   0.0827018   0.1180041
Birth       MAL-ED         BANGLADESH     1                    NA                0.1442245   0.0853125   0.2031366
Birth       MAL-ED         BANGLADESH     0                    NA                0.2110277   0.1150604   0.3069949
Birth       MAL-ED         SOUTH AFRICA   1                    NA                0.0724638   0.0110123   0.1339153
Birth       MAL-ED         SOUTH AFRICA   0                    NA                0.1219512   0.0213295   0.2225729
Birth       NIH-Crypto     BANGLADESH     1                    NA                0.2421847   0.2082694   0.2760999
Birth       NIH-Crypto     BANGLADESH     0                    NA                0.2477749   0.1599153   0.3356345
Birth       SAS-CompFeed   INDIA          1                    NA                0.1837623   0.1104633   0.2570613
Birth       SAS-CompFeed   INDIA          0                    NA                0.1062980   0.0787098   0.1338862
Birth       ZVITAMBO       ZIMBABWE       1                    NA                0.1630139   0.1561825   0.1698453
Birth       ZVITAMBO       ZIMBABWE       0                    NA                0.1636092   0.1567206   0.1704977
6 months    EE             PAKISTAN       1                    NA                0.1014493   0.0301120   0.1727866
6 months    EE             PAKISTAN       0                    NA                0.1322034   0.0934986   0.1709082
6 months    GMS-Nepal      NEPAL          1                    NA                0.0860933   0.0429035   0.1292832
6 months    GMS-Nepal      NEPAL          0                    NA                0.0980814   0.0672859   0.1288768
6 months    JiVitA-3       BANGLADESH     1                    NA                0.2222222   0.2115818   0.2328627
6 months    JiVitA-3       BANGLADESH     0                    NA                0.0843683   0.0794631   0.0892735
6 months    JiVitA-4       BANGLADESH     1                    NA                0.0572748   0.0467214   0.0678283
6 months    JiVitA-4       BANGLADESH     0                    NA                0.0556915   0.0394554   0.0719277
6 months    MAL-ED         INDIA          1                    NA                0.0928571   0.0446788   0.1410355
6 months    MAL-ED         INDIA          0                    NA                0.0625000   0.0139756   0.1110244
6 months    SAS-CompFeed   INDIA          1                    NA                0.1709216   0.0729186   0.2689247
6 months    SAS-CompFeed   INDIA          0                    NA                0.1258323   0.0989194   0.1527451
6 months    ZVITAMBO       ZIMBABWE       1                    NA                0.0298450   0.0245420   0.0351481
6 months    ZVITAMBO       ZIMBABWE       0                    NA                0.0344975   0.0283170   0.0406781
24 months   GMS-Nepal      NEPAL          1                    NA                0.1751671   0.1095210   0.2408132
24 months   GMS-Nepal      NEPAL          0                    NA                0.1920223   0.1482396   0.2358051
24 months   JiVitA-4       BANGLADESH     1                    NA                0.1961323   0.1801441   0.2121204
24 months   JiVitA-4       BANGLADESH     0                    NA                0.1907746   0.1662071   0.2153421
24 months   MAL-ED         BANGLADESH     1                    NA                0.0937500   0.0431344   0.1443656
24 months   MAL-ED         BANGLADESH     0                    NA                0.1084337   0.0413836   0.1754839
24 months   MAL-ED         INDIA          1                    NA                0.1417910   0.0825974   0.2009847
24 months   MAL-ED         INDIA          0                    NA                0.0860215   0.0289083   0.1431348
24 months   ZVITAMBO       ZIMBABWE       1                    NA                0.1639269   0.1134246   0.2144291
24 months   ZVITAMBO       ZIMBABWE       0                    NA                0.2183513   0.1570061   0.2796965


### Parameter: E(Y)


agecat      studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal      NEPAL          NA                   NA                0.2133106   0.1801152   0.2465060
Birth       JiVitA-3       BANGLADESH     NA                   NA                0.1095692   0.1044330   0.1147054
Birth       JiVitA-4       BANGLADESH     NA                   NA                0.0997496   0.0843744   0.1151247
Birth       MAL-ED         BANGLADESH     NA                   NA                0.1682243   0.1179894   0.2184592
Birth       MAL-ED         SOUTH AFRICA   NA                   NA                0.0909091   0.0369404   0.1448778
Birth       NIH-Crypto     BANGLADESH     NA                   NA                0.2432815   0.2116319   0.2749310
Birth       SAS-CompFeed   INDIA          NA                   NA                0.1072761   0.0774575   0.1370947
Birth       ZVITAMBO       ZIMBABWE       NA                   NA                0.1632795   0.1565278   0.1700311
6 months    EE             PAKISTAN       NA                   NA                0.1263736   0.0921925   0.1605547
6 months    GMS-Nepal      NEPAL          NA                   NA                0.0939335   0.0686141   0.1192529
6 months    JiVitA-3       BANGLADESH     NA                   NA                0.0846640   0.0798626   0.0894653
6 months    JiVitA-4       BANGLADESH     NA                   NA                0.0569005   0.0480577   0.0657432
6 months    MAL-ED         INDIA          NA                   NA                0.0805085   0.0457221   0.1152948
6 months    SAS-CompFeed   INDIA          NA                   NA                0.1244378   0.0992652   0.1496104
6 months    ZVITAMBO       ZIMBABWE       NA                   NA                0.0315107   0.0275707   0.0354506
24 months   GMS-Nepal      NEPAL          NA                   NA                0.1869369   0.1506328   0.2232411
24 months   JiVitA-4       BANGLADESH     NA                   NA                0.1942978   0.1810880   0.2075076
24 months   MAL-ED         BANGLADESH     NA                   NA                0.0995261   0.0590366   0.1400156
24 months   MAL-ED         INDIA          NA                   NA                0.1189427   0.0767376   0.1611478
24 months   ZVITAMBO       ZIMBABWE       NA                   NA                0.1873351   0.1480011   0.2266690


### Parameter: RR


agecat      studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal      NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal      NEPAL          0                    1                 0.8310625   0.5975843   1.1557614
Birth       JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-3       BANGLADESH     0                    1                 0.7224221   0.6349399   0.8219577
Birth       JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-4       BANGLADESH     0                    1                 1.0089690   0.9152938   1.1122314
Birth       MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       MAL-ED         BANGLADESH     0                    1                 1.4631885   0.7918865   2.7035701
Birth       MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
Birth       MAL-ED         SOUTH AFRICA   0                    1                 1.6829268   0.5154797   5.4943827
Birth       NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto     BANGLADESH     0                    1                 1.0230827   0.6989169   1.4976006
Birth       SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed   INDIA          0                    1                 0.5784538   0.3911144   0.8555267
Birth       ZVITAMBO       ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO       ZIMBABWE       0                    1                 1.0036515   0.9890863   1.0184313
6 months    EE             PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
6 months    EE             PAKISTAN       0                    1                 1.3031477   0.6084070   2.7912135
6 months    GMS-Nepal      NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal      NEPAL          0                    1                 1.1392444   0.6299531   2.0602769
6 months    JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-3       BANGLADESH     0                    1                 0.3796573   0.3526532   0.4087292
6 months    JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-4       BANGLADESH     0                    1                 0.9723559   0.6936356   1.3630732
6 months    MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED         INDIA          0                    1                 0.6730769   0.2645580   1.7124128
6 months    SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed   INDIA          0                    1                 0.7361986   0.3697876   1.4656746
6 months    ZVITAMBO       ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO       ZIMBABWE       0                    1                 1.1558881   0.8983466   1.4872625
24 months   GMS-Nepal      NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal      NEPAL          0                    1                 1.0962238   0.7075182   1.6984815
24 months   JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-4       BANGLADESH     0                    1                 0.9726835   0.8359784   1.1317437
24 months   MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED         BANGLADESH     0                    1                 1.1566265   0.5089650   2.6284418
24 months   MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED         INDIA          0                    1                 0.6066780   0.2769161   1.3291323
24 months   ZVITAMBO       ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ZVITAMBO       ZIMBABWE       0                    1                 1.3320044   0.8787187   2.0191168


### Parameter: PAR


agecat      studyid        country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL          1                    NA                -0.0289796   -0.0827253    0.0247661
Birth       JiVitA-3       BANGLADESH     1                    NA                -0.0417495   -0.0601327   -0.0233662
Birth       JiVitA-4       BANGLADESH     1                    NA                 0.0002887   -0.0028119    0.0033892
Birth       MAL-ED         BANGLADESH     1                    NA                 0.0239998   -0.0151566    0.0631562
Birth       MAL-ED         SOUTH AFRICA   1                    NA                 0.0184453   -0.0257292    0.0626198
Birth       NIH-Crypto     BANGLADESH     1                    NA                 0.0010968   -0.0115167    0.0137103
Birth       SAS-CompFeed   INDIA          1                    NA                -0.0764862   -0.1412938   -0.0116785
Birth       ZVITAMBO       ZIMBABWE       1                    NA                 0.0002655   -0.0009017    0.0014328
6 months    EE             PAKISTAN       1                    NA                 0.0249244   -0.0408632    0.0907119
6 months    GMS-Nepal      NEPAL          1                    NA                 0.0078401   -0.0291997    0.0448799
6 months    JiVitA-3       BANGLADESH     1                    NA                -0.1375583   -0.1488080   -0.1263085
6 months    JiVitA-4       BANGLADESH     1                    NA                -0.0003744   -0.0068096    0.0060609
6 months    MAL-ED         INDIA          1                    NA                -0.0123487   -0.0402294    0.0155320
6 months    SAS-CompFeed   INDIA          1                    NA                -0.0464838   -0.1547824    0.0618147
6 months    ZVITAMBO       ZIMBABWE       1                    NA                 0.0016656   -0.0021253    0.0054565
24 months   GMS-Nepal      NEPAL          1                    NA                 0.0117698   -0.0439048    0.0674445
24 months   JiVitA-4       BANGLADESH     1                    NA                -0.0018345   -0.0119918    0.0083228
24 months   MAL-ED         BANGLADESH     1                    NA                 0.0057761   -0.0272847    0.0388368
24 months   MAL-ED         INDIA          1                    NA                -0.0228483   -0.0567365    0.0110399
24 months   ZVITAMBO       ZIMBABWE       1                    NA                 0.0234082   -0.0137178    0.0605343


### Parameter: PAF


agecat      studyid        country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL          1                    NA                -0.1358564   -0.4172388    0.0896597
Birth       JiVitA-3       BANGLADESH     1                    NA                -0.3810328   -0.5646698   -0.2189482
Birth       JiVitA-4       BANGLADESH     1                    NA                 0.0028941   -0.0286150    0.0334381
Birth       MAL-ED         BANGLADESH     1                    NA                 0.1426654   -0.1215347    0.3446278
Birth       MAL-ED         SOUTH AFRICA   1                    NA                 0.2028986   -0.4432286    0.5597574
Birth       NIH-Crypto     BANGLADESH     1                    NA                 0.0045084   -0.0487081    0.0550245
Birth       SAS-CompFeed   INDIA          1                    NA                -0.7129840   -1.4626670   -0.1915189
Birth       ZVITAMBO       ZIMBABWE       1                    NA                 0.0016263   -0.0055475    0.0087490
6 months    EE             PAKISTAN       1                    NA                 0.1972275   -0.5313880    0.5791767
6 months    GMS-Nepal      NEPAL          1                    NA                 0.0834646   -0.4075351    0.4031857
6 months    JiVitA-3       BANGLADESH     1                    NA                -1.6247556   -1.8169228   -1.4456979
6 months    JiVitA-4       BANGLADESH     1                    NA                -0.0065794   -0.1263628    0.1004656
6 months    MAL-ED         INDIA          1                    NA                -0.1533835   -0.5504312    0.1419849
6 months    SAS-CompFeed   INDIA          1                    NA                -0.3735509   -1.6658955    0.2923046
6 months    ZVITAMBO       ZIMBABWE       1                    NA                 0.0528590   -0.0751812    0.1656512
24 months   GMS-Nepal      NEPAL          1                    NA                 0.0629615   -0.2875288    0.3180416
24 months   JiVitA-4       BANGLADESH     1                    NA                -0.0094415   -0.0631554    0.0415586
24 months   MAL-ED         BANGLADESH     1                    NA                 0.0580357   -0.3393097    0.3374970
24 months   MAL-ED         INDIA          1                    NA                -0.1920951   -0.5068616    0.0569202
24 months   ZVITAMBO       ZIMBABWE       1                    NA                 0.1249538   -0.0954088    0.3009863
