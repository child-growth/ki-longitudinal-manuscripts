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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** earlybf

**Adjustment Set:**

* arm
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

agecat                       studyid        country                        earlybf    ever_stunted   n_cell       n
---------------------------  -------------  -----------------------------  --------  -------------  -------  ------
0-24 months (no birth st.)   EE             PAKISTAN                       1                     0       12     206
0-24 months (no birth st.)   EE             PAKISTAN                       1                     1       31     206
0-24 months (no birth st.)   EE             PAKISTAN                       0                     0       26     206
0-24 months (no birth st.)   EE             PAKISTAN                       0                     1      137     206
0-24 months (no birth st.)   GMS-Nepal      NEPAL                          1                     0       77     527
0-24 months (no birth st.)   GMS-Nepal      NEPAL                          1                     1       77     527
0-24 months (no birth st.)   GMS-Nepal      NEPAL                          0                     0      155     527
0-24 months (no birth st.)   GMS-Nepal      NEPAL                          0                     1      218     527
0-24 months (no birth st.)   JiVitA-3       BANGLADESH                     1                     0       79   18308
0-24 months (no birth st.)   JiVitA-3       BANGLADESH                     1                     1       17   18308
0-24 months (no birth st.)   JiVitA-3       BANGLADESH                     0                     0    13594   18308
0-24 months (no birth st.)   JiVitA-3       BANGLADESH                     0                     1     4618   18308
0-24 months (no birth st.)   JiVitA-4       BANGLADESH                     1                     0     1421    3886
0-24 months (no birth st.)   JiVitA-4       BANGLADESH                     1                     1     1056    3886
0-24 months (no birth st.)   JiVitA-4       BANGLADESH                     0                     0      858    3886
0-24 months (no birth st.)   JiVitA-4       BANGLADESH                     0                     1      551    3886
0-24 months (no birth st.)   MAL-ED         BANGLADESH                     1                     0       65     216
0-24 months (no birth st.)   MAL-ED         BANGLADESH                     1                     1       73     216
0-24 months (no birth st.)   MAL-ED         BANGLADESH                     0                     0       38     216
0-24 months (no birth st.)   MAL-ED         BANGLADESH                     0                     1       40     216
0-24 months (no birth st.)   MAL-ED         BRAZIL                         1                     0       78     202
0-24 months (no birth st.)   MAL-ED         BRAZIL                         1                     1       17     202
0-24 months (no birth st.)   MAL-ED         BRAZIL                         0                     0       92     202
0-24 months (no birth st.)   MAL-ED         BRAZIL                         0                     1       15     202
0-24 months (no birth st.)   MAL-ED         INDIA                          1                     0       61     209
0-24 months (no birth st.)   MAL-ED         INDIA                          1                     1       66     209
0-24 months (no birth st.)   MAL-ED         INDIA                          0                     0       37     209
0-24 months (no birth st.)   MAL-ED         INDIA                          0                     1       45     209
0-24 months (no birth st.)   MAL-ED         NEPAL                          1                     0       65     211
0-24 months (no birth st.)   MAL-ED         NEPAL                          1                     1       25     211
0-24 months (no birth st.)   MAL-ED         NEPAL                          0                     0       91     211
0-24 months (no birth st.)   MAL-ED         NEPAL                          0                     1       30     211
0-24 months (no birth st.)   MAL-ED         PERU                           1                     0       85     266
0-24 months (no birth st.)   MAL-ED         PERU                           1                     1      117     266
0-24 months (no birth st.)   MAL-ED         PERU                           0                     0       30     266
0-24 months (no birth st.)   MAL-ED         PERU                           0                     1       34     266
0-24 months (no birth st.)   MAL-ED         SOUTH AFRICA                   1                     0       78     260
0-24 months (no birth st.)   MAL-ED         SOUTH AFRICA                   1                     1       87     260
0-24 months (no birth st.)   MAL-ED         SOUTH AFRICA                   0                     0       49     260
0-24 months (no birth st.)   MAL-ED         SOUTH AFRICA                   0                     1       46     260
0-24 months (no birth st.)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0       32     219
0-24 months (no birth st.)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1      152     219
0-24 months (no birth st.)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0        8     219
0-24 months (no birth st.)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1       27     219
0-24 months (no birth st.)   NIH-Crypto     BANGLADESH                     1                     0      334     653
0-24 months (no birth st.)   NIH-Crypto     BANGLADESH                     1                     1      235     653
0-24 months (no birth st.)   NIH-Crypto     BANGLADESH                     0                     0       62     653
0-24 months (no birth st.)   NIH-Crypto     BANGLADESH                     0                     1       22     653
0-24 months (no birth st.)   SAS-CompFeed   INDIA                          1                     0       29    1063
0-24 months (no birth st.)   SAS-CompFeed   INDIA                          1                     1       58    1063
0-24 months (no birth st.)   SAS-CompFeed   INDIA                          0                     0      417    1063
0-24 months (no birth st.)   SAS-CompFeed   INDIA                          0                     1      559    1063
0-24 months (no birth st.)   ZVITAMBO       ZIMBABWE                       1                     0     3956   11219
0-24 months (no birth st.)   ZVITAMBO       ZIMBABWE                       1                     1     2020   11219
0-24 months (no birth st.)   ZVITAMBO       ZIMBABWE                       0                     0     3375   11219
0-24 months (no birth st.)   ZVITAMBO       ZIMBABWE                       0                     1     1868   11219
0-6 months (no birth st.)    EE             PAKISTAN                       1                     0       24     206
0-6 months (no birth st.)    EE             PAKISTAN                       1                     1       19     206
0-6 months (no birth st.)    EE             PAKISTAN                       0                     0       66     206
0-6 months (no birth st.)    EE             PAKISTAN                       0                     1       97     206
0-6 months (no birth st.)    GMS-Nepal      NEPAL                          1                     0      127     527
0-6 months (no birth st.)    GMS-Nepal      NEPAL                          1                     1       27     527
0-6 months (no birth st.)    GMS-Nepal      NEPAL                          0                     0      311     527
0-6 months (no birth st.)    GMS-Nepal      NEPAL                          0                     1       62     527
0-6 months (no birth st.)    JiVitA-3       BANGLADESH                     1                     0       80   18265
0-6 months (no birth st.)    JiVitA-3       BANGLADESH                     1                     1       15   18265
0-6 months (no birth st.)    JiVitA-3       BANGLADESH                     0                     0    15797   18265
0-6 months (no birth st.)    JiVitA-3       BANGLADESH                     0                     1     2373   18265
0-6 months (no birth st.)    JiVitA-4       BANGLADESH                     1                     0     2239    3659
0-6 months (no birth st.)    JiVitA-4       BANGLADESH                     1                     1      209    3659
0-6 months (no birth st.)    JiVitA-4       BANGLADESH                     0                     0     1107    3659
0-6 months (no birth st.)    JiVitA-4       BANGLADESH                     0                     1      104    3659
0-6 months (no birth st.)    MAL-ED         BANGLADESH                     1                     0      107     216
0-6 months (no birth st.)    MAL-ED         BANGLADESH                     1                     1       31     216
0-6 months (no birth st.)    MAL-ED         BANGLADESH                     0                     0       62     216
0-6 months (no birth st.)    MAL-ED         BANGLADESH                     0                     1       16     216
0-6 months (no birth st.)    MAL-ED         BRAZIL                         1                     0       83     202
0-6 months (no birth st.)    MAL-ED         BRAZIL                         1                     1       12     202
0-6 months (no birth st.)    MAL-ED         BRAZIL                         0                     0       98     202
0-6 months (no birth st.)    MAL-ED         BRAZIL                         0                     1        9     202
0-6 months (no birth st.)    MAL-ED         INDIA                          1                     0      103     209
0-6 months (no birth st.)    MAL-ED         INDIA                          1                     1       24     209
0-6 months (no birth st.)    MAL-ED         INDIA                          0                     0       60     209
0-6 months (no birth st.)    MAL-ED         INDIA                          0                     1       22     209
0-6 months (no birth st.)    MAL-ED         NEPAL                          1                     0       84     211
0-6 months (no birth st.)    MAL-ED         NEPAL                          1                     1        6     211
0-6 months (no birth st.)    MAL-ED         NEPAL                          0                     0      113     211
0-6 months (no birth st.)    MAL-ED         NEPAL                          0                     1        8     211
0-6 months (no birth st.)    MAL-ED         PERU                           1                     0      132     266
0-6 months (no birth st.)    MAL-ED         PERU                           1                     1       70     266
0-6 months (no birth st.)    MAL-ED         PERU                           0                     0       42     266
0-6 months (no birth st.)    MAL-ED         PERU                           0                     1       22     266
0-6 months (no birth st.)    MAL-ED         SOUTH AFRICA                   1                     0      115     260
0-6 months (no birth st.)    MAL-ED         SOUTH AFRICA                   1                     1       50     260
0-6 months (no birth st.)    MAL-ED         SOUTH AFRICA                   0                     0       71     260
0-6 months (no birth st.)    MAL-ED         SOUTH AFRICA                   0                     1       24     260
0-6 months (no birth st.)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0      130     219
0-6 months (no birth st.)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1       54     219
0-6 months (no birth st.)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0       23     219
0-6 months (no birth st.)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1       12     219
0-6 months (no birth st.)    NIH-Crypto     BANGLADESH                     1                     0      462     653
0-6 months (no birth st.)    NIH-Crypto     BANGLADESH                     1                     1      107     653
0-6 months (no birth st.)    NIH-Crypto     BANGLADESH                     0                     0       67     653
0-6 months (no birth st.)    NIH-Crypto     BANGLADESH                     0                     1       17     653
0-6 months (no birth st.)    SAS-CompFeed   INDIA                          1                     0       74    1062
0-6 months (no birth st.)    SAS-CompFeed   INDIA                          1                     1       13    1062
0-6 months (no birth st.)    SAS-CompFeed   INDIA                          0                     0      778    1062
0-6 months (no birth st.)    SAS-CompFeed   INDIA                          0                     1      197    1062
0-6 months (no birth st.)    ZVITAMBO       ZIMBABWE                       1                     0     5032   11210
0-6 months (no birth st.)    ZVITAMBO       ZIMBABWE                       1                     1      941   11210
0-6 months (no birth st.)    ZVITAMBO       ZIMBABWE                       0                     0     4260   11210
0-6 months (no birth st.)    ZVITAMBO       ZIMBABWE                       0                     1      977   11210
6-24 months                  EE             PAKISTAN                       1                     0       12      88
6-24 months                  EE             PAKISTAN                       1                     1       12      88
6-24 months                  EE             PAKISTAN                       0                     0       24      88
6-24 months                  EE             PAKISTAN                       0                     1       40      88
6-24 months                  GMS-Nepal      NEPAL                          1                     0       59     366
6-24 months                  GMS-Nepal      NEPAL                          1                     1       50     366
6-24 months                  GMS-Nepal      NEPAL                          0                     0      101     366
6-24 months                  GMS-Nepal      NEPAL                          0                     1      156     366
6-24 months                  JiVitA-3       BANGLADESH                     1                     0       11   10492
6-24 months                  JiVitA-3       BANGLADESH                     1                     1        2   10492
6-24 months                  JiVitA-3       BANGLADESH                     0                     0     8212   10492
6-24 months                  JiVitA-3       BANGLADESH                     0                     1     2267   10492
6-24 months                  JiVitA-4       BANGLADESH                     1                     0     1417    3649
6-24 months                  JiVitA-4       BANGLADESH                     1                     1      855    3649
6-24 months                  JiVitA-4       BANGLADESH                     0                     0      853    3649
6-24 months                  JiVitA-4       BANGLADESH                     0                     1      524    3649
6-24 months                  MAL-ED         BANGLADESH                     1                     0       58     157
6-24 months                  MAL-ED         BANGLADESH                     1                     1       42     157
6-24 months                  MAL-ED         BANGLADESH                     0                     0       33     157
6-24 months                  MAL-ED         BANGLADESH                     0                     1       24     157
6-24 months                  MAL-ED         BRAZIL                         1                     0       69     163
6-24 months                  MAL-ED         BRAZIL                         1                     1        5     163
6-24 months                  MAL-ED         BRAZIL                         0                     0       83     163
6-24 months                  MAL-ED         BRAZIL                         0                     1        6     163
6-24 months                  MAL-ED         INDIA                          1                     0       55     154
6-24 months                  MAL-ED         INDIA                          1                     1       42     154
6-24 months                  MAL-ED         INDIA                          0                     0       34     154
6-24 months                  MAL-ED         INDIA                          0                     1       23     154
6-24 months                  MAL-ED         NEPAL                          1                     0       62     194
6-24 months                  MAL-ED         NEPAL                          1                     1       19     194
6-24 months                  MAL-ED         NEPAL                          0                     0       91     194
6-24 months                  MAL-ED         NEPAL                          0                     1       22     194
6-24 months                  MAL-ED         PERU                           1                     0       66     149
6-24 months                  MAL-ED         PERU                           1                     1       47     149
6-24 months                  MAL-ED         PERU                           0                     0       24     149
6-24 months                  MAL-ED         PERU                           0                     1       12     149
6-24 months                  MAL-ED         SOUTH AFRICA                   1                     0       61     156
6-24 months                  MAL-ED         SOUTH AFRICA                   1                     1       37     156
6-24 months                  MAL-ED         SOUTH AFRICA                   0                     0       36     156
6-24 months                  MAL-ED         SOUTH AFRICA                   0                     1       22     156
6-24 months                  MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0       24     144
6-24 months                  MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1       98     144
6-24 months                  MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0        7     144
6-24 months                  MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1       15     144
6-24 months                  NIH-Crypto     BANGLADESH                     1                     0      314     506
6-24 months                  NIH-Crypto     BANGLADESH                     1                     1      128     506
6-24 months                  NIH-Crypto     BANGLADESH                     0                     0       59     506
6-24 months                  NIH-Crypto     BANGLADESH                     0                     1        5     506
6-24 months                  SAS-CompFeed   INDIA                          1                     0       29     813
6-24 months                  SAS-CompFeed   INDIA                          1                     1       46     813
6-24 months                  SAS-CompFeed   INDIA                          0                     0      375     813
6-24 months                  SAS-CompFeed   INDIA                          0                     1      363     813
6-24 months                  ZVITAMBO       ZIMBABWE                       1                     0     3065    7553
6-24 months                  ZVITAMBO       ZIMBABWE                       1                     1     1081    7553
6-24 months                  ZVITAMBO       ZIMBABWE                       0                     0     2512    7553
6-24 months                  ZVITAMBO       ZIMBABWE                       0                     1      895    7553


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE
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

* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH

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

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/1f34c59a-dcd2-41db-b6f3-01e2e2cd0117/3d0666eb-5012-4cf0-8012-a868fa88d53b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1f34c59a-dcd2-41db-b6f3-01e2e2cd0117/3d0666eb-5012-4cf0-8012-a868fa88d53b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1f34c59a-dcd2-41db-b6f3-01e2e2cd0117/3d0666eb-5012-4cf0-8012-a868fa88d53b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1f34c59a-dcd2-41db-b6f3-01e2e2cd0117/3d0666eb-5012-4cf0-8012-a868fa88d53b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   EE             PAKISTAN                       1                    NA                0.7252023   0.5866697   0.8637350
0-24 months (no birth st.)   EE             PAKISTAN                       0                    NA                0.8413303   0.7848507   0.8978099
0-24 months (no birth st.)   GMS-Nepal      NEPAL                          1                    NA                0.5105145   0.4297479   0.5912811
0-24 months (no birth st.)   GMS-Nepal      NEPAL                          0                    NA                0.5783057   0.5288520   0.6277594
0-24 months (no birth st.)   JiVitA-3       BANGLADESH                     1                    NA                0.1772045   0.1613927   0.1930162
0-24 months (no birth st.)   JiVitA-3       BANGLADESH                     0                    NA                0.2535655   0.2456240   0.2615071
0-24 months (no birth st.)   JiVitA-4       BANGLADESH                     1                    NA                0.4201571   0.3967537   0.4435605
0-24 months (no birth st.)   JiVitA-4       BANGLADESH                     0                    NA                0.4019644   0.3735261   0.4304028
0-24 months (no birth st.)   MAL-ED         BANGLADESH                     1                    NA                0.5409769   0.4589493   0.6230045
0-24 months (no birth st.)   MAL-ED         BANGLADESH                     0                    NA                0.4882125   0.3825058   0.5939192
0-24 months (no birth st.)   MAL-ED         BRAZIL                         1                    NA                0.1836976   0.1053838   0.2620115
0-24 months (no birth st.)   MAL-ED         BRAZIL                         0                    NA                0.1416136   0.0754143   0.2078129
0-24 months (no birth st.)   MAL-ED         INDIA                          1                    NA                0.5301046   0.4440315   0.6161778
0-24 months (no birth st.)   MAL-ED         INDIA                          0                    NA                0.5310205   0.4241863   0.6378546
0-24 months (no birth st.)   MAL-ED         NEPAL                          1                    NA                0.2782303   0.1850617   0.3713988
0-24 months (no birth st.)   MAL-ED         NEPAL                          0                    NA                0.2451416   0.1673067   0.3229765
0-24 months (no birth st.)   MAL-ED         PERU                           1                    NA                0.5808269   0.5126432   0.6490107
0-24 months (no birth st.)   MAL-ED         PERU                           0                    NA                0.5171396   0.3943495   0.6399298
0-24 months (no birth st.)   MAL-ED         SOUTH AFRICA                   1                    NA                0.5293531   0.4536531   0.6050531
0-24 months (no birth st.)   MAL-ED         SOUTH AFRICA                   0                    NA                0.4945968   0.3982236   0.5909701
0-24 months (no birth st.)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8260870   0.7711946   0.8809793
0-24 months (no birth st.)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7714286   0.6319952   0.9108619
0-24 months (no birth st.)   NIH-Crypto     BANGLADESH                     1                    NA                0.4138309   0.3735090   0.4541527
0-24 months (no birth st.)   NIH-Crypto     BANGLADESH                     0                    NA                0.2667634   0.1724507   0.3610761
0-24 months (no birth st.)   SAS-CompFeed   INDIA                          1                    NA                0.6658856   0.5399571   0.7918141
0-24 months (no birth st.)   SAS-CompFeed   INDIA                          0                    NA                0.5722453   0.5162156   0.6282749
0-24 months (no birth st.)   ZVITAMBO       ZIMBABWE                       1                    NA                0.3400651   0.3282707   0.3518595
0-24 months (no birth st.)   ZVITAMBO       ZIMBABWE                       0                    NA                0.3520382   0.3393570   0.3647194
0-6 months (no birth st.)    EE             PAKISTAN                       1                    NA                0.4815665   0.3395454   0.6235876
0-6 months (no birth st.)    EE             PAKISTAN                       0                    NA                0.5859895   0.5110362   0.6609428
0-6 months (no birth st.)    GMS-Nepal      NEPAL                          1                    NA                0.1842668   0.1238605   0.2446731
0-6 months (no birth st.)    GMS-Nepal      NEPAL                          0                    NA                0.1632149   0.1257368   0.2006930
0-6 months (no birth st.)    JiVitA-3       BANGLADESH                     1                    NA                0.1558327   0.1405789   0.1710864
0-6 months (no birth st.)    JiVitA-3       BANGLADESH                     0                    NA                0.1306035   0.1248816   0.1363253
0-6 months (no birth st.)    JiVitA-4       BANGLADESH                     1                    NA                0.0846091   0.0716728   0.0975455
0-6 months (no birth st.)    JiVitA-4       BANGLADESH                     0                    NA                0.0871666   0.0649697   0.1093634
0-6 months (no birth st.)    MAL-ED         BANGLADESH                     1                    NA                0.2203210   0.1498696   0.2907723
0-6 months (no birth st.)    MAL-ED         BANGLADESH                     0                    NA                0.2290679   0.1314736   0.3266622
0-6 months (no birth st.)    MAL-ED         BRAZIL                         1                    NA                0.1263158   0.0593474   0.1932842
0-6 months (no birth st.)    MAL-ED         BRAZIL                         0                    NA                0.0841121   0.0313911   0.1368332
0-6 months (no birth st.)    MAL-ED         INDIA                          1                    NA                0.1988681   0.1300079   0.2677283
0-6 months (no birth st.)    MAL-ED         INDIA                          0                    NA                0.2532081   0.1557938   0.3506225
0-6 months (no birth st.)    MAL-ED         NEPAL                          1                    NA                0.0666667   0.0150094   0.1183239
0-6 months (no birth st.)    MAL-ED         NEPAL                          0                    NA                0.0661157   0.0217359   0.1104956
0-6 months (no birth st.)    MAL-ED         PERU                           1                    NA                0.3478687   0.2818580   0.4138794
0-6 months (no birth st.)    MAL-ED         PERU                           0                    NA                0.3262493   0.2057211   0.4467775
0-6 months (no birth st.)    MAL-ED         SOUTH AFRICA                   1                    NA                0.3015609   0.2310577   0.3720642
0-6 months (no birth st.)    MAL-ED         SOUTH AFRICA                   0                    NA                0.2640965   0.1769738   0.3512192
0-6 months (no birth st.)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2951322   0.2290556   0.3612089
0-6 months (no birth st.)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3750026   0.2170619   0.5329432
0-6 months (no birth st.)    NIH-Crypto     BANGLADESH                     1                    NA                0.1896803   0.1574063   0.2219544
0-6 months (no birth st.)    NIH-Crypto     BANGLADESH                     0                    NA                0.1844868   0.1018901   0.2670834
0-6 months (no birth st.)    SAS-CompFeed   INDIA                          1                    NA                0.1354565   0.1047200   0.1661929
0-6 months (no birth st.)    SAS-CompFeed   INDIA                          0                    NA                0.2023824   0.1759158   0.2288491
0-6 months (no birth st.)    ZVITAMBO       ZIMBABWE                       1                    NA                0.1602079   0.1510834   0.1693324
0-6 months (no birth st.)    ZVITAMBO       ZIMBABWE                       0                    NA                0.1804534   0.1703920   0.1905147
6-24 months                  EE             PAKISTAN                       1                    NA                0.4743530   0.2693362   0.6793698
6-24 months                  EE             PAKISTAN                       0                    NA                0.6201667   0.5002450   0.7400884
6-24 months                  GMS-Nepal      NEPAL                          1                    NA                0.4644302   0.3693259   0.5595345
6-24 months                  GMS-Nepal      NEPAL                          0                    NA                0.6059650   0.5467634   0.6651667
6-24 months                  JiVitA-4       BANGLADESH                     1                    NA                0.3723821   0.3476779   0.3970864
6-24 months                  JiVitA-4       BANGLADESH                     0                    NA                0.3839189   0.3561555   0.4116824
6-24 months                  MAL-ED         BANGLADESH                     1                    NA                0.4292703   0.3326326   0.5259079
6-24 months                  MAL-ED         BANGLADESH                     0                    NA                0.3942371   0.2655364   0.5229379
6-24 months                  MAL-ED         BRAZIL                         1                    NA                0.0675676   0.0102027   0.1249325
6-24 months                  MAL-ED         BRAZIL                         0                    NA                0.0674157   0.0151624   0.1196691
6-24 months                  MAL-ED         INDIA                          1                    NA                0.4425065   0.3433864   0.5416265
6-24 months                  MAL-ED         INDIA                          0                    NA                0.3850574   0.2594074   0.5107074
6-24 months                  MAL-ED         NEPAL                          1                    NA                0.2338851   0.1403409   0.3274293
6-24 months                  MAL-ED         NEPAL                          0                    NA                0.1943976   0.1206300   0.2681652
6-24 months                  MAL-ED         PERU                           1                    NA                0.4179897   0.3261342   0.5098453
6-24 months                  MAL-ED         PERU                           0                    NA                0.3192081   0.1669632   0.4714529
6-24 months                  MAL-ED         SOUTH AFRICA                   1                    NA                0.3724632   0.2758279   0.4690986
6-24 months                  MAL-ED         SOUTH AFRICA                   0                    NA                0.3675030   0.2414527   0.4935532
6-24 months                  MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8032787   0.7324939   0.8740635
6-24 months                  MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6818182   0.4865093   0.8771270
6-24 months                  NIH-Crypto     BANGLADESH                     1                    NA                0.2895928   0.2472661   0.3319194
6-24 months                  NIH-Crypto     BANGLADESH                     0                    NA                0.0781250   0.0123109   0.1439391
6-24 months                  SAS-CompFeed   INDIA                          1                    NA                0.6120866   0.4446282   0.7795449
6-24 months                  SAS-CompFeed   INDIA                          0                    NA                0.4910358   0.4434108   0.5386608
6-24 months                  ZVITAMBO       ZIMBABWE                       1                    NA                0.2602119   0.2468928   0.2735309
6-24 months                  ZVITAMBO       ZIMBABWE                       0                    NA                0.2639826   0.2492570   0.2787083


### Parameter: E(Y)


agecat                       studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   EE             PAKISTAN                       NA                   NA                0.8155340   0.7624394   0.8686286
0-24 months (no birth st.)   GMS-Nepal      NEPAL                          NA                   NA                0.5597723   0.5173495   0.6021951
0-24 months (no birth st.)   JiVitA-3       BANGLADESH                     NA                   NA                0.2531680   0.2454102   0.2609258
0-24 months (no birth st.)   JiVitA-4       BANGLADESH                     NA                   NA                0.4135358   0.3953404   0.4317312
0-24 months (no birth st.)   MAL-ED         BANGLADESH                     NA                   NA                0.5231481   0.4563856   0.5899107
0-24 months (no birth st.)   MAL-ED         BRAZIL                         NA                   NA                0.1584158   0.1079383   0.2088934
0-24 months (no birth st.)   MAL-ED         INDIA                          NA                   NA                0.5311005   0.4632825   0.5989184
0-24 months (no birth st.)   MAL-ED         NEPAL                          NA                   NA                0.2606635   0.2012891   0.3200380
0-24 months (no birth st.)   MAL-ED         PERU                           NA                   NA                0.5676692   0.5080232   0.6273151
0-24 months (no birth st.)   MAL-ED         SOUTH AFRICA                   NA                   NA                0.5115385   0.4506616   0.5724154
0-24 months (no birth st.)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8173516   0.7660617   0.8686415
0-24 months (no birth st.)   NIH-Crypto     BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   SAS-CompFeed   INDIA                          NA                   NA                0.5804327   0.5278252   0.6330403
0-24 months (no birth st.)   ZVITAMBO       ZIMBABWE                       NA                   NA                0.3465550   0.3377489   0.3553610
0-6 months (no birth st.)    EE             PAKISTAN                       NA                   NA                0.5631068   0.4952092   0.6310044
0-6 months (no birth st.)    GMS-Nepal      NEPAL                          NA                   NA                0.1688805   0.1368637   0.2008972
0-6 months (no birth st.)    JiVitA-3       BANGLADESH                     NA                   NA                0.1307419   0.1251476   0.1363361
0-6 months (no birth st.)    JiVitA-4       BANGLADESH                     NA                   NA                0.0855425   0.0741829   0.0969021
0-6 months (no birth st.)    MAL-ED         BANGLADESH                     NA                   NA                0.2175926   0.1624398   0.2727454
0-6 months (no birth st.)    MAL-ED         BRAZIL                         NA                   NA                0.1039604   0.0617667   0.1461541
0-6 months (no birth st.)    MAL-ED         INDIA                          NA                   NA                0.2200957   0.1637912   0.2764002
0-6 months (no birth st.)    MAL-ED         NEPAL                          NA                   NA                0.0663507   0.0326877   0.1000137
0-6 months (no birth st.)    MAL-ED         PERU                           NA                   NA                0.3458647   0.2885967   0.4031327
0-6 months (no birth st.)    MAL-ED         SOUTH AFRICA                   NA                   NA                0.2846154   0.2296617   0.3395691
0-6 months (no birth st.)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3013699   0.2404592   0.3622805
0-6 months (no birth st.)    NIH-Crypto     BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    SAS-CompFeed   INDIA                          NA                   NA                0.1977401   0.1736271   0.2218531
0-6 months (no birth st.)    ZVITAMBO       ZIMBABWE                       NA                   NA                0.1710972   0.1641255   0.1780689
6-24 months                  EE             PAKISTAN                       NA                   NA                0.5909091   0.4875952   0.6942230
6-24 months                  GMS-Nepal      NEPAL                          NA                   NA                0.5628415   0.5119537   0.6137294
6-24 months                  JiVitA-4       BANGLADESH                     NA                   NA                0.3779118   0.3593176   0.3965059
6-24 months                  MAL-ED         BANGLADESH                     NA                   NA                0.4203822   0.3429219   0.4978424
6-24 months                  MAL-ED         BRAZIL                         NA                   NA                0.0674847   0.0288550   0.1061143
6-24 months                  MAL-ED         INDIA                          NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months                  MAL-ED         NEPAL                          NA                   NA                0.2113402   0.1537425   0.2689379
6-24 months                  MAL-ED         PERU                           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months                  MAL-ED         SOUTH AFRICA                   NA                   NA                0.3782051   0.3018621   0.4545482
6-24 months                  MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7847222   0.7173567   0.8520877
6-24 months                  NIH-Crypto     BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  SAS-CompFeed   INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months                  ZVITAMBO       ZIMBABWE                       NA                   NA                0.2616179   0.2517052   0.2715306


### Parameter: RR


agecat                       studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   EE             PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   EE             PAKISTAN                       0                    1                 1.1601318   0.9475248   1.4204438
0-24 months (no birth st.)   GMS-Nepal      NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   GMS-Nepal      NEPAL                          0                    1                 1.1327899   0.9482587   1.3532310
0-24 months (no birth st.)   JiVitA-3       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   JiVitA-3       BANGLADESH                     0                    1                 1.4309206   1.3019010   1.5727262
0-24 months (no birth st.)   JiVitA-4       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   JiVitA-4       BANGLADESH                     0                    1                 0.9567004   0.8756957   1.0451982
0-24 months (no birth st.)   MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED         BANGLADESH                     0                    1                 0.9024647   0.7004164   1.1627976
0-24 months (no birth st.)   MAL-ED         BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED         BRAZIL                         0                    1                 0.7709060   0.4083950   1.4551992
0-24 months (no birth st.)   MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED         INDIA                          0                    1                 1.0017276   0.7776869   1.2903114
0-24 months (no birth st.)   MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED         NEPAL                          0                    1                 0.8810745   0.5551803   1.3982705
0-24 months (no birth st.)   MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED         PERU                           0                    1                 0.8903506   0.6843643   1.1583367
0-24 months (no birth st.)   MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED         SOUTH AFRICA                   0                    1                 0.9343420   0.7386375   1.1818992
0-24 months (no birth st.)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9338346   0.7702576   1.1321499
0-24 months (no birth st.)   NIH-Crypto     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   NIH-Crypto     BANGLADESH                     0                    1                 0.6446194   0.4475917   0.9283777
0-24 months (no birth st.)   SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   SAS-CompFeed   INDIA                          0                    1                 0.8593748   0.7038594   1.0492508
0-24 months (no birth st.)   ZVITAMBO       ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ZVITAMBO       ZIMBABWE                       0                    1                 1.0352082   0.9864962   1.0863256
0-6 months (no birth st.)    EE             PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    EE             PAKISTAN                       0                    1                 1.2168403   0.8883487   1.6668008
0-6 months (no birth st.)    GMS-Nepal      NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    GMS-Nepal      NEPAL                          0                    1                 0.8857531   0.5949448   1.3187083
0-6 months (no birth st.)    JiVitA-3       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    JiVitA-3       BANGLADESH                     0                    1                 0.8381007   0.7531352   0.9326516
0-6 months (no birth st.)    JiVitA-4       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    JiVitA-4       BANGLADESH                     0                    1                 1.0302269   0.7670016   1.3837880
0-6 months (no birth st.)    MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED         BANGLADESH                     0                    1                 1.0397010   0.6090644   1.7748173
0-6 months (no birth st.)    MAL-ED         BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED         BRAZIL                         0                    1                 0.6658879   0.2930014   1.5133259
0-6 months (no birth st.)    MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED         INDIA                          0                    1                 1.2732464   0.7586368   2.1369335
0-6 months (no birth st.)    MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED         NEPAL                          0                    1                 0.9917355   0.3557703   2.7645348
0-6 months (no birth st.)    MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED         PERU                           0                    1                 0.9378518   0.6188828   1.4212157
0-6 months (no birth st.)    MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED         SOUTH AFRICA                   0                    1                 0.8757648   0.5857528   1.3093648
0-6 months (no birth st.)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.2706255   0.7881039   2.0485740
0-6 months (no birth st.)    NIH-Crypto     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    NIH-Crypto     BANGLADESH                     0                    1                 0.9726194   0.6030503   1.5686728
0-6 months (no birth st.)    SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    SAS-CompFeed   INDIA                          0                    1                 1.4940774   1.1402286   1.9577366
0-6 months (no birth st.)    ZVITAMBO       ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ZVITAMBO       ZIMBABWE                       0                    1                 1.1263700   1.0436830   1.2156080
6-24 months                  EE             PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  EE             PAKISTAN                       0                    1                 1.3073949   0.8154208   2.0961956
6-24 months                  GMS-Nepal      NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  GMS-Nepal      NEPAL                          0                    1                 1.3047495   1.0415165   1.6345120
6-24 months                  JiVitA-4       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  JiVitA-4       BANGLADESH                     0                    1                 1.0309811   0.9355028   1.1362040
6-24 months                  MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED         BANGLADESH                     0                    1                 0.9183891   0.6183074   1.3641086
6-24 months                  MAL-ED         BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED         BRAZIL                         0                    1                 0.9977528   0.3160532   3.1498199
6-24 months                  MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED         INDIA                          0                    1                 0.8701734   0.5894342   1.2846247
6-24 months                  MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED         NEPAL                          0                    1                 0.8311672   0.4777828   1.4459267
6-24 months                  MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED         PERU                           0                    1                 0.7636744   0.4510218   1.2930606
6-24 months                  MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED         SOUTH AFRICA                   0                    1                 0.9866825   0.6408672   1.5191015
6-24 months                  MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 0.8487941   0.6289904   1.1454091
6-24 months                  NIH-Crypto     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  NIH-Crypto     BANGLADESH                     0                    1                 0.2697754   0.1147303   0.6343463
6-24 months                  SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  SAS-CompFeed   INDIA                          0                    1                 0.8022327   0.6041342   1.0652886
6-24 months                  ZVITAMBO       ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ZVITAMBO       ZIMBABWE                       0                    1                 1.0144910   0.9413239   1.0933454


### Parameter: PAR


agecat                       studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   EE             PAKISTAN                       1                    NA                 0.0903316   -0.0290511    0.2097144
0-24 months (no birth st.)   GMS-Nepal      NEPAL                          1                    NA                 0.0492578   -0.0180997    0.1166153
0-24 months (no birth st.)   JiVitA-3       BANGLADESH                     1                    NA                 0.0759635    0.0587362    0.0931909
0-24 months (no birth st.)   JiVitA-4       BANGLADESH                     1                    NA                -0.0066213   -0.0195209    0.0062783
0-24 months (no birth st.)   MAL-ED         BANGLADESH                     1                    NA                -0.0178287   -0.0641491    0.0284916
0-24 months (no birth st.)   MAL-ED         BRAZIL                         1                    NA                -0.0252818   -0.0802770    0.0297134
0-24 months (no birth st.)   MAL-ED         INDIA                          1                    NA                 0.0009958   -0.0516173    0.0536090
0-24 months (no birth st.)   MAL-ED         NEPAL                          1                    NA                -0.0175668   -0.0876313    0.0524978
0-24 months (no birth st.)   MAL-ED         PERU                           1                    NA                -0.0131578   -0.0463423    0.0200268
0-24 months (no birth st.)   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0178146   -0.0617318    0.0261026
0-24 months (no birth st.)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0087354   -0.0328310    0.0153603
0-24 months (no birth st.)   NIH-Crypto     BANGLADESH                     1                    NA                -0.0202627   -0.0337049   -0.0068205
0-24 months (no birth st.)   SAS-CompFeed   INDIA                          1                    NA                -0.0854529   -0.2070506    0.0361448
0-24 months (no birth st.)   ZVITAMBO       ZIMBABWE                       1                    NA                 0.0064898   -0.0013945    0.0143742
0-6 months (no birth st.)    EE             PAKISTAN                       1                    NA                 0.0815403   -0.0430943    0.2061749
0-6 months (no birth st.)    GMS-Nepal      NEPAL                          1                    NA                -0.0153863   -0.0656488    0.0348761
0-6 months (no birth st.)    JiVitA-3       BANGLADESH                     1                    NA                -0.0250908   -0.0409353   -0.0092464
0-6 months (no birth st.)    JiVitA-4       BANGLADESH                     1                    NA                 0.0009334   -0.0074805    0.0093472
0-6 months (no birth st.)    MAL-ED         BANGLADESH                     1                    NA                -0.0027284   -0.0455380    0.0400813
0-6 months (no birth st.)    MAL-ED         BRAZIL                         1                    NA                -0.0223554   -0.0675962    0.0228854
0-6 months (no birth st.)    MAL-ED         INDIA                          1                    NA                 0.0212276   -0.0255603    0.0680155
0-6 months (no birth st.)    MAL-ED         NEPAL                          1                    NA                -0.0003160   -0.0393704    0.0387385
0-6 months (no birth st.)    MAL-ED         PERU                           1                    NA                -0.0020040   -0.0342491    0.0302411
0-6 months (no birth st.)    MAL-ED         SOUTH AFRICA                   1                    NA                -0.0169456   -0.0578959    0.0240048
0-6 months (no birth st.)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0062376   -0.0215511    0.0340264
0-6 months (no birth st.)    NIH-Crypto     BANGLADESH                     1                    NA                 0.0002125   -0.0116464    0.0120713
0-6 months (no birth st.)    SAS-CompFeed   INDIA                          1                    NA                 0.0622836    0.0226435    0.1019238
0-6 months (no birth st.)    ZVITAMBO       ZIMBABWE                       1                    NA                 0.0108893    0.0047002    0.0170785
6-24 months                  EE             PAKISTAN                       1                    NA                 0.1165561   -0.0582736    0.2913858
6-24 months                  GMS-Nepal      NEPAL                          1                    NA                 0.0984113    0.0196701    0.1771526
6-24 months                  JiVitA-4       BANGLADESH                     1                    NA                 0.0055296   -0.0082225    0.0192818
6-24 months                  MAL-ED         BANGLADESH                     1                    NA                -0.0088881   -0.0670663    0.0492901
6-24 months                  MAL-ED         BRAZIL                         1                    NA                -0.0000829   -0.0424513    0.0422855
6-24 months                  MAL-ED         INDIA                          1                    NA                -0.0204285   -0.0785083    0.0376512
6-24 months                  MAL-ED         NEPAL                          1                    NA                -0.0225449   -0.0924705    0.0473807
6-24 months                  MAL-ED         PERU                           1                    NA                -0.0220166   -0.0670460    0.0230129
6-24 months                  MAL-ED         SOUTH AFRICA                   1                    NA                 0.0057419   -0.0539700    0.0654538
6-24 months                  MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0185565   -0.0510927    0.0139797
6-24 months                  NIH-Crypto     BANGLADESH                     1                    NA                -0.0267469   -0.0383890   -0.0151048
6-24 months                  SAS-CompFeed   INDIA                          1                    NA                -0.1090115   -0.2658993    0.0478763
6-24 months                  ZVITAMBO       ZIMBABWE                       1                    NA                 0.0014060   -0.0075181    0.0103302


### Parameter: PAF


agecat                       studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   EE             PAKISTAN                       1                    NA                 0.1107638   -0.0499853    0.2469027
0-24 months (no birth st.)   GMS-Nepal      NEPAL                          1                    NA                 0.0879961   -0.0410918    0.2010781
0-24 months (no birth st.)   JiVitA-3       BANGLADESH                     1                    NA                 0.3000519    0.2320290    0.3620496
0-24 months (no birth st.)   JiVitA-4       BANGLADESH                     1                    NA                -0.0160115   -0.0476190    0.0146424
0-24 months (no birth st.)   MAL-ED         BANGLADESH                     1                    NA                -0.0340797   -0.1265425    0.0507941
0-24 months (no birth st.)   MAL-ED         BRAZIL                         1                    NA                -0.1595913   -0.5624074    0.1393716
0-24 months (no birth st.)   MAL-ED         INDIA                          1                    NA                 0.0018751   -0.1022740    0.0961835
0-24 months (no birth st.)   MAL-ED         NEPAL                          1                    NA                -0.0673925   -0.3730387    0.1702152
0-24 months (no birth st.)   MAL-ED         PERU                           1                    NA                -0.0231786   -0.0833984    0.0336940
0-24 months (no birth st.)   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0348255   -0.1243687    0.0475865
0-24 months (no birth st.)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0106874   -0.0406648    0.0184265
0-24 months (no birth st.)   NIH-Crypto     BANGLADESH                     1                    NA                -0.0514846   -0.0863679   -0.0177215
0-24 months (no birth st.)   SAS-CompFeed   INDIA                          1                    NA                -0.1472227   -0.3796867    0.0460734
0-24 months (no birth st.)   ZVITAMBO       ZIMBABWE                       1                    NA                 0.0187268   -0.0042928    0.0412186
0-6 months (no birth st.)    EE             PAKISTAN                       1                    NA                 0.1448043   -0.1087367    0.3403667
0-6 months (no birth st.)    GMS-Nepal      NEPAL                          1                    NA                -0.0911078   -0.4332476    0.1693576
0-6 months (no birth st.)    JiVitA-3       BANGLADESH                     1                    NA                -0.1919111   -0.3223031   -0.0743771
0-6 months (no birth st.)    JiVitA-4       BANGLADESH                     1                    NA                 0.0109113   -0.0922438    0.1043241
0-6 months (no birth st.)    MAL-ED         BANGLADESH                     1                    NA                -0.0125389   -0.2296544    0.1662414
0-6 months (no birth st.)    MAL-ED         BRAZIL                         1                    NA                -0.2150376   -0.7293081    0.1462965
0-6 months (no birth st.)    MAL-ED         INDIA                          1                    NA                 0.0964470   -0.1413694    0.2847118
0-6 months (no birth st.)    MAL-ED         NEPAL                          1                    NA                -0.0047619   -0.8050043    0.4406958
0-6 months (no birth st.)    MAL-ED         PERU                           1                    NA                -0.0057942   -0.1034768    0.0832412
0-6 months (no birth st.)    MAL-ED         SOUTH AFRICA                   1                    NA                -0.0595384   -0.2133692    0.0747897
0-6 months (no birth st.)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0206976   -0.0759376    0.1086535
0-6 months (no birth st.)    NIH-Crypto     BANGLADESH                     1                    NA                 0.0011189   -0.0633236    0.0616560
0-6 months (no birth st.)    SAS-CompFeed   INDIA                          1                    NA                 0.3149773    0.1108143    0.4722631
0-6 months (no birth st.)    ZVITAMBO       ZIMBABWE                       1                    NA                 0.0636442    0.0267804    0.0991116
6-24 months                  EE             PAKISTAN                       1                    NA                 0.1972488   -0.1644917    0.4466173
6-24 months                  GMS-Nepal      NEPAL                          1                    NA                 0.1748473    0.0207412    0.3047018
6-24 months                  JiVitA-4       BANGLADESH                     1                    NA                 0.0146321   -0.0225555    0.0504672
6-24 months                  MAL-ED         BANGLADESH                     1                    NA                -0.0211430   -0.1694385    0.1083474
6-24 months                  MAL-ED         BRAZIL                         1                    NA                -0.0012285   -0.8743831    0.4651795
6-24 months                  MAL-ED         INDIA                          1                    NA                -0.0483999   -0.1954085    0.0805299
6-24 months                  MAL-ED         NEPAL                          1                    NA                -0.1066757   -0.4914011    0.1788050
6-24 months                  MAL-ED         PERU                           1                    NA                -0.0556012   -0.1759199    0.0524066
6-24 months                  MAL-ED         SOUTH AFRICA                   1                    NA                 0.0151820   -0.1560733    0.1610682
6-24 months                  MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0236472   -0.0662936    0.0172936
6-24 months                  NIH-Crypto     BANGLADESH                     1                    NA                -0.1017589   -0.1463941   -0.0588616
6-24 months                  SAS-CompFeed   INDIA                          1                    NA                -0.2166904   -0.5702969    0.0572894
6-24 months                  ZVITAMBO       ZIMBABWE                       1                    NA                 0.0053744   -0.0293286    0.0389075
