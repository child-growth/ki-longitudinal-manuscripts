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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid      country        hfoodsec                wast_rec90d   n_cell     n
------------  -----------  -------------  ---------------------  ------------  -------  ----
0-24 months   GMS-Nepal    NEPAL          Food Secure                       0      201   624
0-24 months   GMS-Nepal    NEPAL          Food Secure                       1      251   624
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure              0       37   624
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure              1       42   624
0-24 months   GMS-Nepal    NEPAL          Food Insecure                     0       46   624
0-24 months   GMS-Nepal    NEPAL          Food Insecure                     1       47   624
0-24 months   MAL-ED       BANGLADESH     Food Secure                       0       31   100
0-24 months   MAL-ED       BANGLADESH     Food Secure                       1       49   100
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure              0        1   100
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure              1        2   100
0-24 months   MAL-ED       BANGLADESH     Food Insecure                     0        6   100
0-24 months   MAL-ED       BANGLADESH     Food Insecure                     1       11   100
0-24 months   MAL-ED       BRAZIL         Food Secure                       0        0    15
0-24 months   MAL-ED       BRAZIL         Food Secure                       1        0    15
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure              0        0    15
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure              1        0    15
0-24 months   MAL-ED       BRAZIL         Food Insecure                     0        3    15
0-24 months   MAL-ED       BRAZIL         Food Insecure                     1       12    15
0-24 months   MAL-ED       INDIA          Food Secure                       0       54   161
0-24 months   MAL-ED       INDIA          Food Secure                       1       90   161
0-24 months   MAL-ED       INDIA          Mildly Food Insecure              0        3   161
0-24 months   MAL-ED       INDIA          Mildly Food Insecure              1        2   161
0-24 months   MAL-ED       INDIA          Food Insecure                     0        5   161
0-24 months   MAL-ED       INDIA          Food Insecure                     1        7   161
0-24 months   MAL-ED       NEPAL          Food Secure                       0        9    64
0-24 months   MAL-ED       NEPAL          Food Secure                       1       36    64
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure              0        1    64
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure              1        6    64
0-24 months   MAL-ED       NEPAL          Food Insecure                     0        1    64
0-24 months   MAL-ED       NEPAL          Food Insecure                     1       11    64
0-24 months   MAL-ED       PERU           Food Secure                       0        2    18
0-24 months   MAL-ED       PERU           Food Secure                       1        6    18
0-24 months   MAL-ED       PERU           Mildly Food Insecure              0        0    18
0-24 months   MAL-ED       PERU           Mildly Food Insecure              1        0    18
0-24 months   MAL-ED       PERU           Food Insecure                     0        2    18
0-24 months   MAL-ED       PERU           Food Insecure                     1        8    18
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                       0        7    73
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                       1       38    73
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0        2    73
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        1    73
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                     0        4    73
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                     1       21    73
0-24 months   NIH-Birth    BANGLADESH     Food Secure                       0       21   421
0-24 months   NIH-Birth    BANGLADESH     Food Secure                       1       26   421
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure              0      161   421
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure              1      186   421
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                     0       20   421
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                     1        7   421
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                       0       65   310
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                       1      116   310
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure              0       37   310
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       49   310
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                     0       15   310
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                     1       28   310
0-6 months    GMS-Nepal    NEPAL          Food Secure                       0       76   254
0-6 months    GMS-Nepal    NEPAL          Food Secure                       1      123   254
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure              0        9   254
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure              1       15   254
0-6 months    GMS-Nepal    NEPAL          Food Insecure                     0       14   254
0-6 months    GMS-Nepal    NEPAL          Food Insecure                     1       17   254
0-6 months    MAL-ED       BANGLADESH     Food Secure                       0        8    48
0-6 months    MAL-ED       BANGLADESH     Food Secure                       1       31    48
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure              0        0    48
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure              1        1    48
0-6 months    MAL-ED       BANGLADESH     Food Insecure                     0        2    48
0-6 months    MAL-ED       BANGLADESH     Food Insecure                     1        6    48
0-6 months    MAL-ED       BRAZIL         Food Secure                       0        0     9
0-6 months    MAL-ED       BRAZIL         Food Secure                       1        0     9
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure              0        0     9
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure              1        0     9
0-6 months    MAL-ED       BRAZIL         Food Insecure                     0        0     9
0-6 months    MAL-ED       BRAZIL         Food Insecure                     1        9     9
0-6 months    MAL-ED       INDIA          Food Secure                       0       19    73
0-6 months    MAL-ED       INDIA          Food Secure                       1       47    73
0-6 months    MAL-ED       INDIA          Mildly Food Insecure              0        2    73
0-6 months    MAL-ED       INDIA          Mildly Food Insecure              1        1    73
0-6 months    MAL-ED       INDIA          Food Insecure                     0        1    73
0-6 months    MAL-ED       INDIA          Food Insecure                     1        3    73
0-6 months    MAL-ED       NEPAL          Food Secure                       0        4    28
0-6 months    MAL-ED       NEPAL          Food Secure                       1       16    28
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure              0        1    28
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure              1        3    28
0-6 months    MAL-ED       NEPAL          Food Insecure                     0        0    28
0-6 months    MAL-ED       NEPAL          Food Insecure                     1        4    28
0-6 months    MAL-ED       PERU           Food Secure                       0        0     6
0-6 months    MAL-ED       PERU           Food Secure                       1        2     6
0-6 months    MAL-ED       PERU           Mildly Food Insecure              0        0     6
0-6 months    MAL-ED       PERU           Mildly Food Insecure              1        0     6
0-6 months    MAL-ED       PERU           Food Insecure                     0        0     6
0-6 months    MAL-ED       PERU           Food Insecure                     1        4     6
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                       0        2    26
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                       1       11    26
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0        1    26
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        0    26
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                     0        1    26
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                     1       11    26
0-6 months    NIH-Birth    BANGLADESH     Food Secure                       0        7   223
0-6 months    NIH-Birth    BANGLADESH     Food Secure                       1       20   223
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure              0       51   223
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure              1      133   223
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                     0        6   223
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                     1        6   223
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                       0       10   197
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                       1      105   197
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure              0        8   197
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       46   197
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                     0        3   197
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                     1       25   197
6-24 months   GMS-Nepal    NEPAL          Food Secure                       0      125   370
6-24 months   GMS-Nepal    NEPAL          Food Secure                       1      128   370
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure              0       28   370
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure              1       27   370
6-24 months   GMS-Nepal    NEPAL          Food Insecure                     0       32   370
6-24 months   GMS-Nepal    NEPAL          Food Insecure                     1       30   370
6-24 months   MAL-ED       BANGLADESH     Food Secure                       0       23    52
6-24 months   MAL-ED       BANGLADESH     Food Secure                       1       18    52
6-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure              0        1    52
6-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure              1        1    52
6-24 months   MAL-ED       BANGLADESH     Food Insecure                     0        4    52
6-24 months   MAL-ED       BANGLADESH     Food Insecure                     1        5    52
6-24 months   MAL-ED       BRAZIL         Food Secure                       0        0     6
6-24 months   MAL-ED       BRAZIL         Food Secure                       1        0     6
6-24 months   MAL-ED       BRAZIL         Mildly Food Insecure              0        0     6
6-24 months   MAL-ED       BRAZIL         Mildly Food Insecure              1        0     6
6-24 months   MAL-ED       BRAZIL         Food Insecure                     0        3     6
6-24 months   MAL-ED       BRAZIL         Food Insecure                     1        3     6
6-24 months   MAL-ED       INDIA          Food Secure                       0       35    88
6-24 months   MAL-ED       INDIA          Food Secure                       1       43    88
6-24 months   MAL-ED       INDIA          Mildly Food Insecure              0        1    88
6-24 months   MAL-ED       INDIA          Mildly Food Insecure              1        1    88
6-24 months   MAL-ED       INDIA          Food Insecure                     0        4    88
6-24 months   MAL-ED       INDIA          Food Insecure                     1        4    88
6-24 months   MAL-ED       NEPAL          Food Secure                       0        5    36
6-24 months   MAL-ED       NEPAL          Food Secure                       1       20    36
6-24 months   MAL-ED       NEPAL          Mildly Food Insecure              0        0    36
6-24 months   MAL-ED       NEPAL          Mildly Food Insecure              1        3    36
6-24 months   MAL-ED       NEPAL          Food Insecure                     0        1    36
6-24 months   MAL-ED       NEPAL          Food Insecure                     1        7    36
6-24 months   MAL-ED       PERU           Food Secure                       0        2    12
6-24 months   MAL-ED       PERU           Food Secure                       1        4    12
6-24 months   MAL-ED       PERU           Mildly Food Insecure              0        0    12
6-24 months   MAL-ED       PERU           Mildly Food Insecure              1        0    12
6-24 months   MAL-ED       PERU           Food Insecure                     0        2    12
6-24 months   MAL-ED       PERU           Food Insecure                     1        4    12
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure                       0        5    47
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure                       1       27    47
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0        1    47
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        1    47
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                     0        3    47
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                     1       10    47
6-24 months   NIH-Birth    BANGLADESH     Food Secure                       0       14   198
6-24 months   NIH-Birth    BANGLADESH     Food Secure                       1        6   198
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure              0      110   198
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure              1       53   198
6-24 months   NIH-Birth    BANGLADESH     Food Insecure                     0       14   198
6-24 months   NIH-Birth    BANGLADESH     Food Insecure                     1        1   198
6-24 months   NIH-Crypto   BANGLADESH     Food Secure                       0       55   113
6-24 months   NIH-Crypto   BANGLADESH     Food Secure                       1       11   113
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure              0       29   113
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure              1        3   113
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure                     0       12   113
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure                     1        3   113


The following strata were considered:

* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
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
![](/tmp/38464c72-56a0-406e-97d1-8d98d7741e28/d19ddfaa-fee5-426d-a158-137e66e31ffa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/38464c72-56a0-406e-97d1-8d98d7741e28/d19ddfaa-fee5-426d-a158-137e66e31ffa/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/38464c72-56a0-406e-97d1-8d98d7741e28/d19ddfaa-fee5-426d-a158-137e66e31ffa/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/38464c72-56a0-406e-97d1-8d98d7741e28/d19ddfaa-fee5-426d-a158-137e66e31ffa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        Food Secure            NA                0.5553097   0.5048934   0.6057261
0-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.5316456   0.4071454   0.6561458
0-24 months   GMS-Nepal    NEPAL        Food Insecure          NA                0.5053763   0.3979319   0.6128208
0-24 months   NIH-Birth    BANGLADESH   Food Secure            NA                0.5531915   0.3813656   0.7250173
0-24 months   NIH-Birth    BANGLADESH   Mildly Food Insecure   NA                0.5360231   0.4817521   0.5902940
0-24 months   NIH-Birth    BANGLADESH   Food Insecure          NA                0.2592593   0.0762417   0.4422768
0-24 months   NIH-Crypto   BANGLADESH   Food Secure            NA                0.6408840   0.5711045   0.7106635
0-24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.5697674   0.4629077   0.6766272
0-24 months   NIH-Crypto   BANGLADESH   Food Insecure          NA                0.6511628   0.5085212   0.7938043
0-6 months    GMS-Nepal    NEPAL        Food Secure            NA                0.6180905   0.5500694   0.6861115
0-6 months    GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.6250000   0.4270268   0.8229732
0-6 months    GMS-Nepal    NEPAL        Food Insecure          NA                0.5483871   0.3717297   0.7250445
0-6 months    NIH-Birth    BANGLADESH   Food Secure            NA                0.7407407   0.5743234   0.9071581
0-6 months    NIH-Birth    BANGLADESH   Mildly Food Insecure   NA                0.7228261   0.6582010   0.7874512
0-6 months    NIH-Birth    BANGLADESH   Food Insecure          NA                0.5000000   0.2151871   0.7848129
6-24 months   GMS-Nepal    NEPAL        Food Secure            NA                0.5059289   0.4389523   0.5729054
6-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.4909091   0.3400895   0.6417287
6-24 months   GMS-Nepal    NEPAL        Food Insecure          NA                0.4838710   0.3540881   0.6136538


### Parameter: E(Y)


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        NA                   NA                0.5448718   0.5019351   0.5878085
0-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.6225806   0.5684562   0.6767051
0-6 months    GMS-Nepal    NEPAL        NA                   NA                0.6102362   0.5496896   0.6707828
0-6 months    NIH-Birth    BANGLADESH   NA                   NA                0.7130045   0.6535890   0.7724200
6-24 months   GMS-Nepal    NEPAL        NA                   NA                0.5000000   0.4445928   0.5554072


### Parameter: RR


agecat        studyid      country      intervention_level     baseline_level     estimate    ci_lower   ci_upper
------------  -----------  -----------  ---------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal    NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       0.9573856   0.7447074   1.230802
0-24 months   GMS-Nepal    NEPAL        Food Insecure          Food Secure       0.9100801   0.7222117   1.146819
0-24 months   NIH-Birth    BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth    BANGLADESH   Mildly Food Insecure   Food Secure       0.9689648   0.6988560   1.343471
0-24 months   NIH-Birth    BANGLADESH   Food Insecure          Food Secure       0.4686610   0.2166940   1.013610
0-24 months   NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.8890337   0.7154757   1.104693
0-24 months   NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.0160385   0.7952953   1.298051
0-6 months    GMS-Nepal    NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       1.0111789   0.7230962   1.414034
0-6 months    GMS-Nepal    NEPAL        Food Insecure          Food Secure       0.8872279   0.6312344   1.247038
0-6 months    NIH-Birth    BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth    BANGLADESH   Mildly Food Insecure   Food Secure       0.9758152   0.7662232   1.242739
0-6 months    NIH-Birth    BANGLADESH   Food Insecure          Food Secure       0.6750000   0.3659085   1.245188
6-24 months   GMS-Nepal    NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       0.9703125   0.6944632   1.355732
6-24 months   GMS-Nepal    NEPAL        Food Insecure          Food Secure       0.9564012   0.7090245   1.290087


### Parameter: PAR


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL        Food Secure          NA                -0.0104379   -0.0370185   0.0161426
0-24 months   NIH-Birth    BANGLADESH   Food Secure          NA                -0.0330015   -0.1926012   0.1265982
0-24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0183033   -0.0642942   0.0276876
0-6 months    GMS-Nepal    NEPAL        Food Secure          NA                -0.0078542   -0.0401588   0.0244504
0-6 months    NIH-Birth    BANGLADESH   Food Secure          NA                -0.0277363   -0.1843204   0.1288479
6-24 months   GMS-Nepal    NEPAL        Food Secure          NA                -0.0059289   -0.0437445   0.0318868


### Parameter: PAF


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL        Food Secure          NA                -0.0191567   -0.0691565   0.0285048
0-24 months   NIH-Birth    BANGLADESH   Food Secure          NA                -0.0634412   -0.4184141   0.2026961
0-24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0293991   -0.1061298   0.0420088
0-6 months    GMS-Nepal    NEPAL        Food Secure          NA                -0.0128708   -0.0672611   0.0387476
0-6 months    NIH-Birth    BANGLADESH   Food Secure          NA                -0.0389005   -0.2835555   0.1591214
6-24 months   GMS-Nepal    NEPAL        Food Secure          NA                -0.0118577   -0.0904043   0.0610308
