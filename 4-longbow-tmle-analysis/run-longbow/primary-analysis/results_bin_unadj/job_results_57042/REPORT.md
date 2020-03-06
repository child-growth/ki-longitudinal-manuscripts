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

**Outcome Variable:** ever_wasted

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

agecat                        studyid         country                        safeh20    ever_wasted   n_cell     n
----------------------------  --------------  -----------------------------  --------  ------------  -------  ----
0-24 months (no birth wast)   CONTENT         PERU                           1                    0       53    57
0-24 months (no birth wast)   CONTENT         PERU                           1                    1        1    57
0-24 months (no birth wast)   CONTENT         PERU                           0                    0        3    57
0-24 months (no birth wast)   CONTENT         PERU                           0                    1        0    57
0-24 months (no birth wast)   LCNI-5          MALAWI                         1                    0      627   814
0-24 months (no birth wast)   LCNI-5          MALAWI                         1                    1       44   814
0-24 months (no birth wast)   LCNI-5          MALAWI                         0                    0      132   814
0-24 months (no birth wast)   LCNI-5          MALAWI                         0                    1       11   814
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     1                    0        0   242
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     1                    1        0   242
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     0                    0      185   242
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     0                    1       57   242
0-24 months (no birth wast)   MAL-ED          BRAZIL                         1                    0        0   142
0-24 months (no birth wast)   MAL-ED          BRAZIL                         1                    1        0   142
0-24 months (no birth wast)   MAL-ED          BRAZIL                         0                    0      134   142
0-24 months (no birth wast)   MAL-ED          BRAZIL                         0                    1        8   142
0-24 months (no birth wast)   MAL-ED          INDIA                          1                    0        0   231
0-24 months (no birth wast)   MAL-ED          INDIA                          1                    1        0   231
0-24 months (no birth wast)   MAL-ED          INDIA                          0                    0      143   231
0-24 months (no birth wast)   MAL-ED          INDIA                          0                    1       88   231
0-24 months (no birth wast)   MAL-ED          NEPAL                          1                    0        1   233
0-24 months (no birth wast)   MAL-ED          NEPAL                          1                    1        0   233
0-24 months (no birth wast)   MAL-ED          NEPAL                          0                    0      186   233
0-24 months (no birth wast)   MAL-ED          NEPAL                          0                    1       46   233
0-24 months (no birth wast)   MAL-ED          PERU                           1                    0       11   259
0-24 months (no birth wast)   MAL-ED          PERU                           1                    1        0   259
0-24 months (no birth wast)   MAL-ED          PERU                           0                    0      227   259
0-24 months (no birth wast)   MAL-ED          PERU                           0                    1       21   259
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   1                    0       29   254
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   1                    1        9   254
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   0                    0      181   254
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   0                    1       35   254
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0      145   249
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1       25   249
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       70   249
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        9   249
0-24 months (no birth wast)   NIH-Birth       BANGLADESH                     1                    0      422   602
0-24 months (no birth wast)   NIH-Birth       BANGLADESH                     1                    1      178   602
0-24 months (no birth wast)   NIH-Birth       BANGLADESH                     0                    0        2   602
0-24 months (no birth wast)   NIH-Birth       BANGLADESH                     0                    1        0   602
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH                     1                    0      646   754
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH                     1                    1      108   754
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH                     0                    0        0   754
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH                     0                    1        0   754
0-24 months (no birth wast)   PROVIDE         BANGLADESH                     1                    0       49    52
0-24 months (no birth wast)   PROVIDE         BANGLADESH                     1                    1        3    52
0-24 months (no birth wast)   PROVIDE         BANGLADESH                     0                    0        0    52
0-24 months (no birth wast)   PROVIDE         BANGLADESH                     0                    1        0    52
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          1                    0      254   397
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          1                    1      143   397
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          0                    0        0   397
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          0                    1        0   397
0-6 months (no birth wast)    CONTENT         PERU                           1                    0       53    57
0-6 months (no birth wast)    CONTENT         PERU                           1                    1        1    57
0-6 months (no birth wast)    CONTENT         PERU                           0                    0        3    57
0-6 months (no birth wast)    CONTENT         PERU                           0                    1        0    57
0-6 months (no birth wast)    LCNI-5          MALAWI                         1                    0      210   265
0-6 months (no birth wast)    LCNI-5          MALAWI                         1                    1        0   265
0-6 months (no birth wast)    LCNI-5          MALAWI                         0                    0       55   265
0-6 months (no birth wast)    LCNI-5          MALAWI                         0                    1        0   265
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     1                    0        0   241
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     1                    1        0   241
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     0                    0      223   241
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     0                    1       18   241
0-6 months (no birth wast)    MAL-ED          BRAZIL                         1                    0        0   142
0-6 months (no birth wast)    MAL-ED          BRAZIL                         1                    1        0   142
0-6 months (no birth wast)    MAL-ED          BRAZIL                         0                    0      137   142
0-6 months (no birth wast)    MAL-ED          BRAZIL                         0                    1        5   142
0-6 months (no birth wast)    MAL-ED          INDIA                          1                    0        0   229
0-6 months (no birth wast)    MAL-ED          INDIA                          1                    1        0   229
0-6 months (no birth wast)    MAL-ED          INDIA                          0                    0      193   229
0-6 months (no birth wast)    MAL-ED          INDIA                          0                    1       36   229
0-6 months (no birth wast)    MAL-ED          NEPAL                          1                    0        1   231
0-6 months (no birth wast)    MAL-ED          NEPAL                          1                    1        0   231
0-6 months (no birth wast)    MAL-ED          NEPAL                          0                    0      214   231
0-6 months (no birth wast)    MAL-ED          NEPAL                          0                    1       16   231
0-6 months (no birth wast)    MAL-ED          PERU                           1                    0       11   259
0-6 months (no birth wast)    MAL-ED          PERU                           1                    1        0   259
0-6 months (no birth wast)    MAL-ED          PERU                           0                    0      243   259
0-6 months (no birth wast)    MAL-ED          PERU                           0                    1        5   259
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   1                    0       36   253
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   1                    1        2   253
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   0                    0      204   253
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   0                    1       11   253
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0      163   249
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        7   249
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       76   249
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        3   249
0-6 months (no birth wast)    NIH-Birth       BANGLADESH                     1                    0      536   584
0-6 months (no birth wast)    NIH-Birth       BANGLADESH                     1                    1       46   584
0-6 months (no birth wast)    NIH-Birth       BANGLADESH                     0                    0        2   584
0-6 months (no birth wast)    NIH-Birth       BANGLADESH                     0                    1        0   584
0-6 months (no birth wast)    NIH-Crypto      BANGLADESH                     1                    0      729   749
0-6 months (no birth wast)    NIH-Crypto      BANGLADESH                     1                    1       20   749
0-6 months (no birth wast)    NIH-Crypto      BANGLADESH                     0                    0        0   749
0-6 months (no birth wast)    NIH-Crypto      BANGLADESH                     0                    1        0   749
0-6 months (no birth wast)    PROVIDE         BANGLADESH                     1                    0       50    52
0-6 months (no birth wast)    PROVIDE         BANGLADESH                     1                    1        2    52
0-6 months (no birth wast)    PROVIDE         BANGLADESH                     0                    0        0    52
0-6 months (no birth wast)    PROVIDE         BANGLADESH                     0                    1        0    52
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          1                    0      341   341
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          1                    1        0   341
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          0                    0        0   341
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          0                    1        0   341
6-24 months                   CONTENT         PERU                           1                    0       54    57
6-24 months                   CONTENT         PERU                           1                    1        0    57
6-24 months                   CONTENT         PERU                           0                    0        3    57
6-24 months                   CONTENT         PERU                           0                    1        0    57
6-24 months                   LCNI-5          MALAWI                         1                    0      614   805
6-24 months                   LCNI-5          MALAWI                         1                    1       50   805
6-24 months                   LCNI-5          MALAWI                         0                    0      128   805
6-24 months                   LCNI-5          MALAWI                         0                    1       13   805
6-24 months                   MAL-ED          BANGLADESH                     1                    0        0   240
6-24 months                   MAL-ED          BANGLADESH                     1                    1        0   240
6-24 months                   MAL-ED          BANGLADESH                     0                    0      197   240
6-24 months                   MAL-ED          BANGLADESH                     0                    1       43   240
6-24 months                   MAL-ED          BRAZIL                         1                    0        0   140
6-24 months                   MAL-ED          BRAZIL                         1                    1        0   140
6-24 months                   MAL-ED          BRAZIL                         0                    0      136   140
6-24 months                   MAL-ED          BRAZIL                         0                    1        4   140
6-24 months                   MAL-ED          INDIA                          1                    0        0   235
6-24 months                   MAL-ED          INDIA                          1                    1        0   235
6-24 months                   MAL-ED          INDIA                          0                    0      171   235
6-24 months                   MAL-ED          INDIA                          0                    1       64   235
6-24 months                   MAL-ED          NEPAL                          1                    0        1   232
6-24 months                   MAL-ED          NEPAL                          1                    1        0   232
6-24 months                   MAL-ED          NEPAL                          0                    0      195   232
6-24 months                   MAL-ED          NEPAL                          0                    1       36   232
6-24 months                   MAL-ED          PERU                           1                    0       11   259
6-24 months                   MAL-ED          PERU                           1                    1        0   259
6-24 months                   MAL-ED          PERU                           0                    0      230   259
6-24 months                   MAL-ED          PERU                           0                    1       18   259
6-24 months                   MAL-ED          SOUTH AFRICA                   1                    0       30   254
6-24 months                   MAL-ED          SOUTH AFRICA                   1                    1        8   254
6-24 months                   MAL-ED          SOUTH AFRICA                   0                    0      187   254
6-24 months                   MAL-ED          SOUTH AFRICA                   0                    1       29   254
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0      145   244
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1       22   244
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       71   244
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        6   244
6-24 months                   NIH-Birth       BANGLADESH                     1                    0      381   542
6-24 months                   NIH-Birth       BANGLADESH                     1                    1      159   542
6-24 months                   NIH-Birth       BANGLADESH                     0                    0        2   542
6-24 months                   NIH-Birth       BANGLADESH                     0                    1        0   542
6-24 months                   NIH-Crypto      BANGLADESH                     1                    0      634   730
6-24 months                   NIH-Crypto      BANGLADESH                     1                    1       96   730
6-24 months                   NIH-Crypto      BANGLADESH                     0                    0        0   730
6-24 months                   NIH-Crypto      BANGLADESH                     0                    1        0   730
6-24 months                   PROVIDE         BANGLADESH                     1                    0        9    10
6-24 months                   PROVIDE         BANGLADESH                     1                    1        1    10
6-24 months                   PROVIDE         BANGLADESH                     0                    0        0    10
6-24 months                   PROVIDE         BANGLADESH                     0                    1        0    10
6-24 months                   SAS-FoodSuppl   INDIA                          1                    0      259   402
6-24 months                   SAS-FoodSuppl   INDIA                          1                    1      143   402
6-24 months                   SAS-FoodSuppl   INDIA                          0                    0        0   402
6-24 months                   SAS-FoodSuppl   INDIA                          0                    1        0   402


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
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

* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/4686aa48-d7e3-43f3-b481-66aca35e6b57/17acda17-b6bd-4384-bd2a-f325a5468858/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4686aa48-d7e3-43f3-b481-66aca35e6b57/17acda17-b6bd-4384-bd2a-f325a5468858/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4686aa48-d7e3-43f3-b481-66aca35e6b57/17acda17-b6bd-4384-bd2a-f325a5468858/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4686aa48-d7e3-43f3-b481-66aca35e6b57/17acda17-b6bd-4384-bd2a-f325a5468858/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   LCNI-5    MALAWI                         1                    NA                0.0655738   0.0468328   0.0843147
0-24 months (no birth wast)   LCNI-5    MALAWI                         0                    NA                0.0769231   0.0332218   0.1206244
0-24 months (no birth wast)   MAL-ED    SOUTH AFRICA                   1                    NA                0.2368421   0.1014013   0.3722829
0-24 months (no birth wast)   MAL-ED    SOUTH AFRICA                   0                    NA                0.1620370   0.1127994   0.2112747
0-24 months (no birth wast)   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1470588   0.0937127   0.2004049
0-24 months (no birth wast)   MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1139241   0.0437217   0.1841264
6-24 months                   LCNI-5    MALAWI                         1                    NA                0.0753012   0.0552179   0.0953845
6-24 months                   LCNI-5    MALAWI                         0                    NA                0.0921986   0.0444164   0.1399808
6-24 months                   MAL-ED    SOUTH AFRICA                   1                    NA                0.2105263   0.0806485   0.3404041
6-24 months                   MAL-ED    SOUTH AFRICA                   0                    NA                0.1342593   0.0887034   0.1798151
6-24 months                   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1317365   0.0803368   0.1831362
6-24 months                   MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0779221   0.0179280   0.1379162


### Parameter: E(Y)


agecat                        studyid   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   LCNI-5    MALAWI                         NA                   NA                0.0675676   0.0503139   0.0848212
0-24 months (no birth wast)   MAL-ED    SOUTH AFRICA                   NA                   NA                0.1732283   0.1265957   0.2198610
0-24 months (no birth wast)   MAL-ED    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1365462   0.0938114   0.1792810
6-24 months                   LCNI-5    MALAWI                         NA                   NA                0.0782609   0.0596958   0.0968259
6-24 months                   MAL-ED    SOUTH AFRICA                   NA                   NA                0.1456693   0.1021998   0.1891388
6-24 months                   MAL-ED    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1147541   0.0746803   0.1548279


### Parameter: RR


agecat                        studyid   country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   LCNI-5    MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   LCNI-5    MALAWI                         0                    1                 1.1730769   0.6210621   2.215736
0-24 months (no birth wast)   MAL-ED    SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED    SOUTH AFRICA                   0                    1                 0.6841564   0.3580262   1.307362
0-24 months (no birth wast)   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    1                 0.7746835   0.3789445   1.583700
6-24 months                   LCNI-5    MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   LCNI-5    MALAWI                         0                    1                 1.2243972   0.6835845   2.193070
6-24 months                   MAL-ED    SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED    SOUTH AFRICA                   0                    1                 0.6377315   0.3154000   1.289478
6-24 months                   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    1                 0.5914994   0.2495146   1.402209


### Parameter: PAR


agecat                        studyid   country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   LCNI-5    MALAWI                         1                    NA                 0.0019938   -0.0063649   0.0103525
0-24 months (no birth wast)   MAL-ED    SOUTH AFRICA                   1                    NA                -0.0636138   -0.1862107   0.0589831
0-24 months (no birth wast)   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0105126   -0.0385524   0.0175271
6-24 months                   LCNI-5    MALAWI                         1                    NA                 0.0029597   -0.0061297   0.0120490
6-24 months                   MAL-ED    SOUTH AFRICA                   1                    NA                -0.0648570   -0.1819495   0.0522355
6-24 months                   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0169824   -0.0421107   0.0081459


### Parameter: PAF


agecat                        studyid   country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   LCNI-5    MALAWI                         1                    NA                 0.0295082   -0.1022069   0.1454832
0-24 months (no birth wast)   MAL-ED    SOUTH AFRICA                   1                    NA                -0.3672249   -1.2893164   0.1834663
0-24 months (no birth wast)   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0769896   -0.3020928   0.1091982
6-24 months                   LCNI-5    MALAWI                         1                    NA                 0.0378179   -0.0852968   0.1469667
6-24 months                   MAL-ED    SOUTH AFRICA                   1                    NA                -0.4452347   -1.5107824   0.1681066
6-24 months                   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1479897   -0.3840175   0.0477863
