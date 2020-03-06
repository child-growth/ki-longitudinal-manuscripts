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

**Intervention Variable:** safeh20

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid         country                        safeh20    ever_stunted   n_cell     n
---------------------------  --------------  -----------------------------  --------  -------------  -------  ----
0-24 months (no birth st.)   CONTENT         PERU                           1                     0       46    55
0-24 months (no birth st.)   CONTENT         PERU                           1                     1        6    55
0-24 months (no birth st.)   CONTENT         PERU                           0                     0        3    55
0-24 months (no birth st.)   CONTENT         PERU                           0                     1        0    55
0-24 months (no birth st.)   LCNI-5          MALAWI                         1                     0      243   521
0-24 months (no birth st.)   LCNI-5          MALAWI                         1                     1      186   521
0-24 months (no birth st.)   LCNI-5          MALAWI                         0                     0       53   521
0-24 months (no birth st.)   LCNI-5          MALAWI                         0                     1       39   521
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     1                     0        0   203
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     1                     1        0   203
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     0                     0       93   203
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     0                     1      110   203
0-24 months (no birth st.)   MAL-ED          BRAZIL                         1                     0        0   128
0-24 months (no birth st.)   MAL-ED          BRAZIL                         1                     1        0   128
0-24 months (no birth st.)   MAL-ED          BRAZIL                         0                     0      110   128
0-24 months (no birth st.)   MAL-ED          BRAZIL                         0                     1       18   128
0-24 months (no birth st.)   MAL-ED          INDIA                          1                     0        0   197
0-24 months (no birth st.)   MAL-ED          INDIA                          1                     1        0   197
0-24 months (no birth st.)   MAL-ED          INDIA                          0                     0       89   197
0-24 months (no birth st.)   MAL-ED          INDIA                          0                     1      108   197
0-24 months (no birth st.)   MAL-ED          NEPAL                          1                     0        0   206
0-24 months (no birth st.)   MAL-ED          NEPAL                          1                     1        1   206
0-24 months (no birth st.)   MAL-ED          NEPAL                          0                     0      152   206
0-24 months (no birth st.)   MAL-ED          NEPAL                          0                     1       53   206
0-24 months (no birth st.)   MAL-ED          PERU                           1                     0        5   229
0-24 months (no birth st.)   MAL-ED          PERU                           1                     1        5   229
0-24 months (no birth st.)   MAL-ED          PERU                           0                     0       84   229
0-24 months (no birth st.)   MAL-ED          PERU                           0                     1      135   229
0-24 months (no birth st.)   MAL-ED          SOUTH AFRICA                   1                     0       19   228
0-24 months (no birth st.)   MAL-ED          SOUTH AFRICA                   1                     1       16   228
0-24 months (no birth st.)   MAL-ED          SOUTH AFRICA                   0                     0       78   228
0-24 months (no birth st.)   MAL-ED          SOUTH AFRICA                   0                     1      115   228
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       23   210
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1      126   210
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0       11   210
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       50   210
0-24 months (no birth st.)   NIH-Birth       BANGLADESH                     1                     0      211   530
0-24 months (no birth st.)   NIH-Birth       BANGLADESH                     1                     1      319   530
0-24 months (no birth st.)   NIH-Birth       BANGLADESH                     0                     0        0   530
0-24 months (no birth st.)   NIH-Birth       BANGLADESH                     0                     1        0   530
0-24 months (no birth st.)   NIH-Crypto      BANGLADESH                     1                     0      396   653
0-24 months (no birth st.)   NIH-Crypto      BANGLADESH                     1                     1      257   653
0-24 months (no birth st.)   NIH-Crypto      BANGLADESH                     0                     0        0   653
0-24 months (no birth st.)   NIH-Crypto      BANGLADESH                     0                     1        0   653
0-24 months (no birth st.)   PROVIDE         BANGLADESH                     1                     0       50    58
0-24 months (no birth st.)   PROVIDE         BANGLADESH                     1                     1        8    58
0-24 months (no birth st.)   PROVIDE         BANGLADESH                     0                     0        0    58
0-24 months (no birth st.)   PROVIDE         BANGLADESH                     0                     1        0    58
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          1                     0       72   257
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          1                     1      185   257
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          0                     0        0   257
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          0                     1        0   257
0-6 months (no birth st.)    CONTENT         PERU                           1                     0       52    55
0-6 months (no birth st.)    CONTENT         PERU                           1                     1        0    55
0-6 months (no birth st.)    CONTENT         PERU                           0                     0        3    55
0-6 months (no birth st.)    CONTENT         PERU                           0                     1        0    55
0-6 months (no birth st.)    LCNI-5          MALAWI                         1                     0      140   174
0-6 months (no birth st.)    LCNI-5          MALAWI                         1                     1        0   174
0-6 months (no birth st.)    LCNI-5          MALAWI                         0                     0       34   174
0-6 months (no birth st.)    LCNI-5          MALAWI                         0                     1        0   174
0-6 months (no birth st.)    MAL-ED          BANGLADESH                     1                     0        0   203
0-6 months (no birth st.)    MAL-ED          BANGLADESH                     1                     1        0   203
0-6 months (no birth st.)    MAL-ED          BANGLADESH                     0                     0      160   203
0-6 months (no birth st.)    MAL-ED          BANGLADESH                     0                     1       43   203
0-6 months (no birth st.)    MAL-ED          BRAZIL                         1                     0        0   128
0-6 months (no birth st.)    MAL-ED          BRAZIL                         1                     1        0   128
0-6 months (no birth st.)    MAL-ED          BRAZIL                         0                     0      120   128
0-6 months (no birth st.)    MAL-ED          BRAZIL                         0                     1        8   128
0-6 months (no birth st.)    MAL-ED          INDIA                          1                     0        0   197
0-6 months (no birth st.)    MAL-ED          INDIA                          1                     1        0   197
0-6 months (no birth st.)    MAL-ED          INDIA                          0                     0      154   197
0-6 months (no birth st.)    MAL-ED          INDIA                          0                     1       43   197
0-6 months (no birth st.)    MAL-ED          NEPAL                          1                     0        0   206
0-6 months (no birth st.)    MAL-ED          NEPAL                          1                     1        1   206
0-6 months (no birth st.)    MAL-ED          NEPAL                          0                     0      193   206
0-6 months (no birth st.)    MAL-ED          NEPAL                          0                     1       12   206
0-6 months (no birth st.)    MAL-ED          PERU                           1                     0        5   229
0-6 months (no birth st.)    MAL-ED          PERU                           1                     1        5   229
0-6 months (no birth st.)    MAL-ED          PERU                           0                     0      141   229
0-6 months (no birth st.)    MAL-ED          PERU                           0                     1       78   229
0-6 months (no birth st.)    MAL-ED          SOUTH AFRICA                   1                     0       24   228
0-6 months (no birth st.)    MAL-ED          SOUTH AFRICA                   1                     1       11   228
0-6 months (no birth st.)    MAL-ED          SOUTH AFRICA                   0                     0      131   228
0-6 months (no birth st.)    MAL-ED          SOUTH AFRICA                   0                     1       62   228
0-6 months (no birth st.)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0      104   210
0-6 months (no birth st.)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1       45   210
0-6 months (no birth st.)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0       43   210
0-6 months (no birth st.)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       18   210
0-6 months (no birth st.)    NIH-Birth       BANGLADESH                     1                     0      409   530
0-6 months (no birth st.)    NIH-Birth       BANGLADESH                     1                     1      121   530
0-6 months (no birth st.)    NIH-Birth       BANGLADESH                     0                     0        0   530
0-6 months (no birth st.)    NIH-Birth       BANGLADESH                     0                     1        0   530
0-6 months (no birth st.)    NIH-Crypto      BANGLADESH                     1                     0      529   653
0-6 months (no birth st.)    NIH-Crypto      BANGLADESH                     1                     1      124   653
0-6 months (no birth st.)    NIH-Crypto      BANGLADESH                     0                     0        0   653
0-6 months (no birth st.)    NIH-Crypto      BANGLADESH                     0                     1        0   653
0-6 months (no birth st.)    PROVIDE         BANGLADESH                     1                     0       53    58
0-6 months (no birth st.)    PROVIDE         BANGLADESH                     1                     1        5    58
0-6 months (no birth st.)    PROVIDE         BANGLADESH                     0                     0        0    58
0-6 months (no birth st.)    PROVIDE         BANGLADESH                     0                     1        0    58
0-6 months (no birth st.)    SAS-FoodSuppl   INDIA                          1                     0      254   257
0-6 months (no birth st.)    SAS-FoodSuppl   INDIA                          1                     1        3   257
0-6 months (no birth st.)    SAS-FoodSuppl   INDIA                          0                     0        0   257
0-6 months (no birth st.)    SAS-FoodSuppl   INDIA                          0                     1        0   257
6-24 months                  CONTENT         PERU                           1                     0       46    55
6-24 months                  CONTENT         PERU                           1                     1        6    55
6-24 months                  CONTENT         PERU                           0                     0        3    55
6-24 months                  CONTENT         PERU                           0                     1        0    55
6-24 months                  LCNI-5          MALAWI                         1                     0      234   710
6-24 months                  LCNI-5          MALAWI                         1                     1      357   710
6-24 months                  LCNI-5          MALAWI                         0                     0       50   710
6-24 months                  LCNI-5          MALAWI                         0                     1       69   710
6-24 months                  MAL-ED          BANGLADESH                     1                     0        0   158
6-24 months                  MAL-ED          BANGLADESH                     1                     1        0   158
6-24 months                  MAL-ED          BANGLADESH                     0                     0       91   158
6-24 months                  MAL-ED          BANGLADESH                     0                     1       67   158
6-24 months                  MAL-ED          BRAZIL                         1                     0        0   119
6-24 months                  MAL-ED          BRAZIL                         1                     1        0   119
6-24 months                  MAL-ED          BRAZIL                         0                     0      109   119
6-24 months                  MAL-ED          BRAZIL                         0                     1       10   119
6-24 months                  MAL-ED          INDIA                          1                     0        0   154
6-24 months                  MAL-ED          INDIA                          1                     1        0   154
6-24 months                  MAL-ED          INDIA                          0                     0       89   154
6-24 months                  MAL-ED          INDIA                          0                     1       65   154
6-24 months                  MAL-ED          NEPAL                          1                     0        0   192
6-24 months                  MAL-ED          NEPAL                          1                     1        0   192
6-24 months                  MAL-ED          NEPAL                          0                     0      151   192
6-24 months                  MAL-ED          NEPAL                          0                     1       41   192
6-24 months                  MAL-ED          PERU                           1                     0        5   146
6-24 months                  MAL-ED          PERU                           1                     1        0   146
6-24 months                  MAL-ED          PERU                           0                     0       84   146
6-24 months                  MAL-ED          PERU                           0                     1       57   146
6-24 months                  MAL-ED          SOUTH AFRICA                   1                     0       19   155
6-24 months                  MAL-ED          SOUTH AFRICA                   1                     1        5   155
6-24 months                  MAL-ED          SOUTH AFRICA                   0                     0       78   155
6-24 months                  MAL-ED          SOUTH AFRICA                   0                     1       53   155
6-24 months                  MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       21   144
6-24 months                  MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1       81   144
6-24 months                  MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0       10   144
6-24 months                  MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       32   144
6-24 months                  NIH-Birth       BANGLADESH                     1                     0      147   345
6-24 months                  NIH-Birth       BANGLADESH                     1                     1      198   345
6-24 months                  NIH-Birth       BANGLADESH                     0                     0        0   345
6-24 months                  NIH-Birth       BANGLADESH                     0                     1        0   345
6-24 months                  NIH-Crypto      BANGLADESH                     1                     0      373   506
6-24 months                  NIH-Crypto      BANGLADESH                     1                     1      133   506
6-24 months                  NIH-Crypto      BANGLADESH                     0                     0        0   506
6-24 months                  NIH-Crypto      BANGLADESH                     0                     1        0   506
6-24 months                  PROVIDE         BANGLADESH                     1                     0        3     6
6-24 months                  PROVIDE         BANGLADESH                     1                     1        3     6
6-24 months                  PROVIDE         BANGLADESH                     0                     0        0     6
6-24 months                  PROVIDE         BANGLADESH                     0                     1        0     6
6-24 months                  SAS-FoodSuppl   INDIA                          1                     0       59   243
6-24 months                  SAS-FoodSuppl   INDIA                          1                     1      184   243
6-24 months                  SAS-FoodSuppl   INDIA                          0                     0        0   243
6-24 months                  SAS-FoodSuppl   INDIA                          0                     1        0   243


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/228bb47c-51ed-4b06-a282-3ea369f82dde/16690a23-c130-4f76-995e-a849d0e9279d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/228bb47c-51ed-4b06-a282-3ea369f82dde/16690a23-c130-4f76-995e-a849d0e9279d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/228bb47c-51ed-4b06-a282-3ea369f82dde/16690a23-c130-4f76-995e-a849d0e9279d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/228bb47c-51ed-4b06-a282-3ea369f82dde/16690a23-c130-4f76-995e-a849d0e9279d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   LCNI-5    MALAWI                         1                    NA                0.4335664   0.3866269   0.4805060
0-24 months (no birth st.)   LCNI-5    MALAWI                         0                    NA                0.4239130   0.3228357   0.5249904
0-24 months (no birth st.)   MAL-ED    PERU                           1                    NA                0.5000000   0.1894236   0.8105764
0-24 months (no birth st.)   MAL-ED    PERU                           0                    NA                0.6164384   0.5518969   0.6809798
0-24 months (no birth st.)   MAL-ED    SOUTH AFRICA                   1                    NA                0.4571429   0.2917422   0.6225435
0-24 months (no birth st.)   MAL-ED    SOUTH AFRICA                   0                    NA                0.5958549   0.5264704   0.6652395
0-24 months (no birth st.)   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8456376   0.7874870   0.9037882
0-24 months (no birth st.)   MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8196721   0.7229622   0.9163821
0-6 months (no birth st.)    MAL-ED    PERU                           1                    NA                0.5000000   0.1894236   0.8105764
0-6 months (no birth st.)    MAL-ED    PERU                           0                    NA                0.3561644   0.2926036   0.4197251
0-6 months (no birth st.)    MAL-ED    SOUTH AFRICA                   1                    NA                0.3142857   0.1601503   0.4684211
0-6 months (no birth st.)    MAL-ED    SOUTH AFRICA                   0                    NA                0.3212435   0.2552201   0.3872670
0-6 months (no birth st.)    MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3020134   0.2281162   0.3759106
0-6 months (no birth st.)    MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2950820   0.1803564   0.4098076
6-24 months                  LCNI-5    MALAWI                         1                    NA                0.6040609   0.5646047   0.6435171
6-24 months                  LCNI-5    MALAWI                         0                    NA                0.5798319   0.4910871   0.6685768
6-24 months                  MAL-ED    SOUTH AFRICA                   1                    NA                0.2083333   0.0453292   0.3713374
6-24 months                  MAL-ED    SOUTH AFRICA                   0                    NA                0.4045802   0.3202599   0.4889004
6-24 months                  MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7941176   0.7153744   0.8728609
6-24 months                  MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7619048   0.6326453   0.8911642


### Parameter: E(Y)


agecat                       studyid   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   LCNI-5    MALAWI                         NA                   NA                0.4318618   0.3892877   0.4744359
0-24 months (no birth st.)   MAL-ED    PERU                           NA                   NA                0.6113537   0.5480828   0.6746246
0-24 months (no birth st.)   MAL-ED    SOUTH AFRICA                   NA                   NA                0.5745614   0.5102450   0.6388778
0-24 months (no birth st.)   MAL-ED    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8380952   0.7881549   0.8880356
0-6 months (no birth st.)    MAL-ED    PERU                           NA                   NA                0.3624454   0.3000489   0.4248420
0-6 months (no birth st.)    MAL-ED    SOUTH AFRICA                   NA                   NA                0.3201754   0.2594840   0.3808669
0-6 months (no birth st.)    MAL-ED    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3000000   0.2378724   0.3621276
6-24 months                  LCNI-5    MALAWI                         NA                   NA                0.6000000   0.5639396   0.6360604
6-24 months                  MAL-ED    SOUTH AFRICA                   NA                   NA                0.3741935   0.2977649   0.4506221
6-24 months                  MAL-ED    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7847222   0.7173567   0.8520877


### Parameter: RR


agecat                       studyid   country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  --------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   LCNI-5    MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   LCNI-5    MALAWI                         0                    1                 0.9777349   0.7524782   1.270423
0-24 months (no birth st.)   MAL-ED    PERU                           1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED    PERU                           0                    1                 1.2328767   0.6566758   2.314666
0-24 months (no birth st.)   MAL-ED    SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED    SOUTH AFRICA                   0                    1                 1.3034326   0.8912865   1.906162
0-24 months (no birth st.)   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9692948   0.8455658   1.111129
0-6 months (no birth st.)    MAL-ED    PERU                           1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED    PERU                           0                    1                 0.7123288   0.3732540   1.359429
0-6 months (no birth st.)    MAL-ED    SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED    SOUTH AFRICA                   0                    1                 1.0221385   0.6005812   1.739594
0-6 months (no birth st.)    MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9770492   0.6171786   1.546757
6-24 months                  LCNI-5    MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  LCNI-5    MALAWI                         0                    1                 0.9598898   0.8127394   1.133682
6-24 months                  MAL-ED    SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED    SOUTH AFRICA                   0                    1                 1.9419847   0.8641652   4.364101
6-24 months                  MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9594356   0.7882691   1.167770


### Parameter: PAR


agecat                       studyid   country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  --------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   LCNI-5    MALAWI                         1                    NA                -0.0017046   -0.0213865   0.0179772
0-24 months (no birth st.)   MAL-ED    PERU                           1                    NA                 0.1113537   -0.1920217   0.4147291
0-24 months (no birth st.)   MAL-ED    SOUTH AFRICA                   1                    NA                 0.1174185   -0.0345512   0.2693883
0-24 months (no birth st.)   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0075423   -0.0403605   0.0252758
0-6 months (no birth st.)    MAL-ED    PERU                           1                    NA                -0.1375546   -0.4407488   0.1656397
0-6 months (no birth st.)    MAL-ED    SOUTH AFRICA                   1                    NA                 0.0058897   -0.1360509   0.1478304
0-6 months (no birth st.)    MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0020134   -0.0416556   0.0376288
6-24 months                  LCNI-5    MALAWI                         1                    NA                -0.0040609   -0.0203525   0.0122307
6-24 months                  MAL-ED    SOUTH AFRICA                   1                    NA                 0.1658602    0.0103500   0.3213705
6-24 months                  MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0093954   -0.0536060   0.0348151


### Parameter: PAF


agecat                       studyid   country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  --------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   LCNI-5    MALAWI                         1                    NA                -0.0039472   -0.0505728   0.0406092
0-24 months (no birth st.)   MAL-ED    PERU                           1                    NA                 0.1821429   -0.5013602   0.5544771
0-24 months (no birth st.)   MAL-ED    SOUTH AFRICA                   1                    NA                 0.2043621   -0.1109865   0.4302003
0-24 months (no birth st.)   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0089994   -0.0489632   0.0294419
0-6 months (no birth st.)    MAL-ED    PERU                           1                    NA                -0.3795181   -1.5324147   0.2485156
0-6 months (no birth st.)    MAL-ED    SOUTH AFRICA                   1                    NA                 0.0183953   -0.5419713   0.3751195
0-6 months (no birth st.)    MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0067114   -0.1479155   0.1171233
6-24 months                  LCNI-5    MALAWI                         1                    NA                -0.0067682   -0.0342967   0.0200276
6-24 months                  MAL-ED    SOUTH AFRICA                   1                    NA                 0.4432471   -0.1675092   0.7344999
6-24 months                  MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0119729   -0.0699730   0.0428831
