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

**Intervention Variable:** safeh20

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country                        safeh20    sstunted   n_cell       n
----------  --------------  -----------------------------  --------  ---------  -------  ------
Birth       JiVitA-3        BANGLADESH                     1                 0    19952   22432
Birth       JiVitA-3        BANGLADESH                     1                 1     2440   22432
Birth       JiVitA-3        BANGLADESH                     0                 0       32   22432
Birth       JiVitA-3        BANGLADESH                     0                 1        8   22432
Birth       JiVitA-4        BANGLADESH                     1                 0     2587    2820
Birth       JiVitA-4        BANGLADESH                     1                 1      233    2820
Birth       JiVitA-4        BANGLADESH                     0                 0        0    2820
Birth       JiVitA-4        BANGLADESH                     0                 1        0    2820
Birth       MAL-ED          BANGLADESH                     1                 0        0     213
Birth       MAL-ED          BANGLADESH                     1                 1        0     213
Birth       MAL-ED          BANGLADESH                     0                 0      207     213
Birth       MAL-ED          BANGLADESH                     0                 1        6     213
Birth       MAL-ED          BRAZIL                         1                 0        0      41
Birth       MAL-ED          BRAZIL                         1                 1        0      41
Birth       MAL-ED          BRAZIL                         0                 0       38      41
Birth       MAL-ED          BRAZIL                         0                 1        3      41
Birth       MAL-ED          INDIA                          1                 0        0      41
Birth       MAL-ED          INDIA                          1                 1        0      41
Birth       MAL-ED          INDIA                          0                 0       39      41
Birth       MAL-ED          INDIA                          0                 1        2      41
Birth       MAL-ED          NEPAL                          1                 0        1      26
Birth       MAL-ED          NEPAL                          1                 1        0      26
Birth       MAL-ED          NEPAL                          0                 0       24      26
Birth       MAL-ED          NEPAL                          0                 1        1      26
Birth       MAL-ED          PERU                           1                 0        9     207
Birth       MAL-ED          PERU                           1                 1        0     207
Birth       MAL-ED          PERU                           0                 0      194     207
Birth       MAL-ED          PERU                           0                 1        4     207
Birth       MAL-ED          SOUTH AFRICA                   1                 0       13      96
Birth       MAL-ED          SOUTH AFRICA                   1                 1        0      96
Birth       MAL-ED          SOUTH AFRICA                   0                 0       82      96
Birth       MAL-ED          SOUTH AFRICA                   0                 1        1      96
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       74     119
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        5     119
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       37     119
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        3     119
Birth       NIH-Birth       BANGLADESH                     1                 0      587     608
Birth       NIH-Birth       BANGLADESH                     1                 1       19     608
Birth       NIH-Birth       BANGLADESH                     0                 0        2     608
Birth       NIH-Birth       BANGLADESH                     0                 1        0     608
Birth       NIH-Crypto      BANGLADESH                     1                 0      722     732
Birth       NIH-Crypto      BANGLADESH                     1                 1       10     732
Birth       NIH-Crypto      BANGLADESH                     0                 0        0     732
Birth       NIH-Crypto      BANGLADESH                     0                 1        0     732
Birth       PROVIDE         BANGLADESH                     1                 0       45      45
Birth       PROVIDE         BANGLADESH                     1                 1        0      45
Birth       PROVIDE         BANGLADESH                     0                 0        0      45
Birth       PROVIDE         BANGLADESH                     0                 1        0      45
6 months    CONTENT         PERU                           1                 0       54      57
6 months    CONTENT         PERU                           1                 1        0      57
6 months    CONTENT         PERU                           0                 0        3      57
6 months    CONTENT         PERU                           0                 1        0      57
6 months    JiVitA-3        BANGLADESH                     1                 0    15767   16803
6 months    JiVitA-3        BANGLADESH                     1                 1     1016   16803
6 months    JiVitA-3        BANGLADESH                     0                 0       17   16803
6 months    JiVitA-3        BANGLADESH                     0                 1        3   16803
6 months    JiVitA-4        BANGLADESH                     1                 0     4553    4825
6 months    JiVitA-4        BANGLADESH                     1                 1      271    4825
6 months    JiVitA-4        BANGLADESH                     0                 0        1    4825
6 months    JiVitA-4        BANGLADESH                     0                 1        0    4825
6 months    LCNI-5          MALAWI                         1                 0      620     816
6 months    LCNI-5          MALAWI                         1                 1       52     816
6 months    LCNI-5          MALAWI                         0                 0      131     816
6 months    LCNI-5          MALAWI                         0                 1       13     816
6 months    MAL-ED          BANGLADESH                     1                 0        0     240
6 months    MAL-ED          BANGLADESH                     1                 1        0     240
6 months    MAL-ED          BANGLADESH                     0                 0      232     240
6 months    MAL-ED          BANGLADESH                     0                 1        8     240
6 months    MAL-ED          BRAZIL                         1                 0        0     142
6 months    MAL-ED          BRAZIL                         1                 1        0     142
6 months    MAL-ED          BRAZIL                         0                 0      142     142
6 months    MAL-ED          BRAZIL                         0                 1        0     142
6 months    MAL-ED          INDIA                          1                 0        0     235
6 months    MAL-ED          INDIA                          1                 1        0     235
6 months    MAL-ED          INDIA                          0                 0      226     235
6 months    MAL-ED          INDIA                          0                 1        9     235
6 months    MAL-ED          NEPAL                          1                 0        1     233
6 months    MAL-ED          NEPAL                          1                 1        0     233
6 months    MAL-ED          NEPAL                          0                 0      232     233
6 months    MAL-ED          NEPAL                          0                 1        0     233
6 months    MAL-ED          PERU                           1                 0       11     259
6 months    MAL-ED          PERU                           1                 1        0     259
6 months    MAL-ED          PERU                           0                 0      239     259
6 months    MAL-ED          PERU                           0                 1        9     259
6 months    MAL-ED          SOUTH AFRICA                   1                 0       35     248
6 months    MAL-ED          SOUTH AFRICA                   1                 1        2     248
6 months    MAL-ED          SOUTH AFRICA                   0                 0      207     248
6 months    MAL-ED          SOUTH AFRICA                   0                 1        4     248
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0      159     246
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        9     246
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       73     246
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        5     246
6 months    NIH-Birth       BANGLADESH                     1                 0      500     537
6 months    NIH-Birth       BANGLADESH                     1                 1       35     537
6 months    NIH-Birth       BANGLADESH                     0                 0        2     537
6 months    NIH-Birth       BANGLADESH                     0                 1        0     537
6 months    NIH-Crypto      BANGLADESH                     1                 0      692     715
6 months    NIH-Crypto      BANGLADESH                     1                 1       23     715
6 months    NIH-Crypto      BANGLADESH                     0                 0        0     715
6 months    NIH-Crypto      BANGLADESH                     0                 1        0     715
6 months    PROVIDE         BANGLADESH                     1                 0       11      11
6 months    PROVIDE         BANGLADESH                     1                 1        0      11
6 months    PROVIDE         BANGLADESH                     0                 0        0      11
6 months    PROVIDE         BANGLADESH                     0                 1        0      11
6 months    SAS-FoodSuppl   INDIA                          1                 0      326     380
6 months    SAS-FoodSuppl   INDIA                          1                 1       54     380
6 months    SAS-FoodSuppl   INDIA                          0                 0        0     380
6 months    SAS-FoodSuppl   INDIA                          0                 1        0     380
24 months   CONTENT         PERU                           1                 0       45      48
24 months   CONTENT         PERU                           1                 1        0      48
24 months   CONTENT         PERU                           0                 0        3      48
24 months   CONTENT         PERU                           0                 1        0      48
24 months   JiVitA-3        BANGLADESH                     1                 0     7268    8623
24 months   JiVitA-3        BANGLADESH                     1                 1     1344    8623
24 months   JiVitA-3        BANGLADESH                     0                 0       10    8623
24 months   JiVitA-3        BANGLADESH                     0                 1        1    8623
24 months   JiVitA-4        BANGLADESH                     1                 0     4294    4747
24 months   JiVitA-4        BANGLADESH                     1                 1      452    4747
24 months   JiVitA-4        BANGLADESH                     0                 0        1    4747
24 months   JiVitA-4        BANGLADESH                     0                 1        0    4747
24 months   LCNI-5          MALAWI                         1                 0      419     574
24 months   LCNI-5          MALAWI                         1                 1       56     574
24 months   LCNI-5          MALAWI                         0                 0       86     574
24 months   LCNI-5          MALAWI                         0                 1       13     574
24 months   MAL-ED          BANGLADESH                     1                 0        0     212
24 months   MAL-ED          BANGLADESH                     1                 1        0     212
24 months   MAL-ED          BANGLADESH                     0                 0      184     212
24 months   MAL-ED          BANGLADESH                     0                 1       28     212
24 months   MAL-ED          BRAZIL                         1                 0        0     113
24 months   MAL-ED          BRAZIL                         1                 1        0     113
24 months   MAL-ED          BRAZIL                         0                 0      113     113
24 months   MAL-ED          BRAZIL                         0                 1        0     113
24 months   MAL-ED          INDIA                          1                 0        0     227
24 months   MAL-ED          INDIA                          1                 1        0     227
24 months   MAL-ED          INDIA                          0                 0      197     227
24 months   MAL-ED          INDIA                          0                 1       30     227
24 months   MAL-ED          NEPAL                          1                 0        1     226
24 months   MAL-ED          NEPAL                          1                 1        0     226
24 months   MAL-ED          NEPAL                          0                 0      218     226
24 months   MAL-ED          NEPAL                          0                 1        7     226
24 months   MAL-ED          PERU                           1                 0        5     193
24 months   MAL-ED          PERU                           1                 1        2     193
24 months   MAL-ED          PERU                           0                 0      173     193
24 months   MAL-ED          PERU                           0                 1       13     193
24 months   MAL-ED          SOUTH AFRICA                   1                 0       29     237
24 months   MAL-ED          SOUTH AFRICA                   1                 1        5     237
24 months   MAL-ED          SOUTH AFRICA                   0                 0      181     237
24 months   MAL-ED          SOUTH AFRICA                   0                 1       22     237
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       96     213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1       49     213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       47     213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1       21     213
24 months   NIH-Birth       BANGLADESH                     1                 0      332     429
24 months   NIH-Birth       BANGLADESH                     1                 1       95     429
24 months   NIH-Birth       BANGLADESH                     0                 0        2     429
24 months   NIH-Birth       BANGLADESH                     0                 1        0     429
24 months   NIH-Crypto      BANGLADESH                     1                 0      478     514
24 months   NIH-Crypto      BANGLADESH                     1                 1       36     514
24 months   NIH-Crypto      BANGLADESH                     0                 0        0     514
24 months   NIH-Crypto      BANGLADESH                     0                 1        0     514
24 months   PROVIDE         BANGLADESH                     1                 0        8       9
24 months   PROVIDE         BANGLADESH                     1                 1        1       9
24 months   PROVIDE         BANGLADESH                     0                 0        0       9
24 months   PROVIDE         BANGLADESH                     0                 1        0       9


The following strata were considered:

* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/be374bd1-a965-465c-b86a-d70c088b5eff/faf2e260-fde4-4372-a2fd-e482b37b8434/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/be374bd1-a965-465c-b86a-d70c088b5eff/faf2e260-fde4-4372-a2fd-e482b37b8434/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/be374bd1-a965-465c-b86a-d70c088b5eff/faf2e260-fde4-4372-a2fd-e482b37b8434/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/be374bd1-a965-465c-b86a-d70c088b5eff/faf2e260-fde4-4372-a2fd-e482b37b8434/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3   BANGLADESH                     1                    NA                0.1089675   0.1043043   0.1136306
Birth       JiVitA-3   BANGLADESH                     0                    NA                0.2000000   0.1907007   0.2092993
6 months    LCNI-5     MALAWI                         1                    NA                0.0773810   0.0571667   0.0975952
6 months    LCNI-5     MALAWI                         0                    NA                0.0902778   0.0434420   0.1371136
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0535714   0.0194530   0.0876898
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0641026   0.0096351   0.1185700
24 months   LCNI-5     MALAWI                         1                    NA                0.1178947   0.0888687   0.1469207
24 months   LCNI-5     MALAWI                         0                    NA                0.1313131   0.0647253   0.1979010
24 months   MAL-ED     SOUTH AFRICA                   1                    NA                0.1470588   0.0277612   0.2663565
24 months   MAL-ED     SOUTH AFRICA                   0                    NA                0.1083744   0.0655222   0.1512266
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3379310   0.2607605   0.4151016
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3088235   0.1987545   0.4188926


### Parameter: E(Y)


agecat      studyid    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3   BANGLADESH                     NA                   NA                0.1091298   0.1045720   0.1136876
6 months    LCNI-5     MALAWI                         NA                   NA                0.0796569   0.0610679   0.0982459
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0569106   0.0279012   0.0859199
24 months   LCNI-5     MALAWI                         NA                   NA                0.1202091   0.0935816   0.1468365
24 months   MAL-ED     SOUTH AFRICA                   NA                   NA                0.1139241   0.0733886   0.1544595
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3286385   0.2654093   0.3918677


### Parameter: RR


agecat      studyid    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       JiVitA-3   BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3   BANGLADESH                     0                    1                 1.8354098   1.7237409   1.954313
6 months    LCNI-5     MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6 months    LCNI-5     MALAWI                         0                    1                 1.1666667   0.6526572   2.085491
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.1965812   0.4137839   3.460276
24 months   LCNI-5     MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
24 months   LCNI-5     MALAWI                         0                    1                 1.1138167   0.6338724   1.957157
24 months   MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED     SOUTH AFRICA                   0                    1                 0.7369458   0.2988839   1.817057
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9138655   0.5984762   1.395461


### Parameter: PAR


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3   BANGLADESH                     1                    NA                 0.0001623   -0.0001034   0.0004281
6 months    LCNI-5     MALAWI                         1                    NA                 0.0022759   -0.0067325   0.0112843
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0033391   -0.0170487   0.0237270
24 months   LCNI-5     MALAWI                         1                    NA                 0.0023143   -0.0102209   0.0148496
24 months   MAL-ED     SOUTH AFRICA                   1                    NA                -0.0331348   -0.1417241   0.0754545
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0092925   -0.0522469   0.0336618


### Parameter: PAF


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3   BANGLADESH                     1                    NA                 0.0014875   -0.0009747   0.0039436
6 months    LCNI-5     MALAWI                         1                    NA                 0.0285714   -0.0911809   0.1351815
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0586735   -0.3756562   0.3558742
24 months   LCNI-5     MALAWI                         1                    NA                 0.0192525   -0.0907007   0.1181213
24 months   MAL-ED     SOUTH AFRICA                   1                    NA                -0.2908497   -1.6933735   0.3813361
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0282759   -0.1676510   0.0944630
