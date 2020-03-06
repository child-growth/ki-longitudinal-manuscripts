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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid      country        hfoodsec                ever_wasted   n_cell     n
------------  -----------  -------------  ---------------------  ------------  -------  ----
0-24 months   GMS-Nepal    NEPAL          Food Secure                       0      188   663
0-24 months   GMS-Nepal    NEPAL          Food Secure                       1      283   663
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure              0       55   663
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure              1       50   663
0-24 months   GMS-Nepal    NEPAL          Food Insecure                     0       28   663
0-24 months   GMS-Nepal    NEPAL          Food Insecure                     1       59   663
0-24 months   MAL-ED       BANGLADESH     Food Secure                       0      105   194
0-24 months   MAL-ED       BANGLADESH     Food Secure                       1       56   194
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure              0        3   194
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure              1        1   194
0-24 months   MAL-ED       BANGLADESH     Food Insecure                     0       19   194
0-24 months   MAL-ED       BANGLADESH     Food Insecure                     1       10   194
0-24 months   MAL-ED       BRAZIL         Food Secure                       0        3   129
0-24 months   MAL-ED       BRAZIL         Food Secure                       1        0   129
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure              0       11   129
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure              1        0   129
0-24 months   MAL-ED       BRAZIL         Food Insecure                     0      103   129
0-24 months   MAL-ED       BRAZIL         Food Insecure                     1       12   129
0-24 months   MAL-ED       INDIA          Food Secure                       0       97   212
0-24 months   MAL-ED       INDIA          Food Secure                       1       93   212
0-24 months   MAL-ED       INDIA          Mildly Food Insecure              0        1   212
0-24 months   MAL-ED       INDIA          Mildly Food Insecure              1        4   212
0-24 months   MAL-ED       INDIA          Food Insecure                     0       10   212
0-24 months   MAL-ED       INDIA          Food Insecure                     1        7   212
0-24 months   MAL-ED       NEPAL          Food Secure                       0       64   128
0-24 months   MAL-ED       NEPAL          Food Secure                       1       30   128
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure              0       10   128
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure              1        5   128
0-24 months   MAL-ED       NEPAL          Food Insecure                     0       10   128
0-24 months   MAL-ED       NEPAL          Food Insecure                     1        9   128
0-24 months   MAL-ED       PERU           Food Secure                       0       22   113
0-24 months   MAL-ED       PERU           Food Secure                       1        5   113
0-24 months   MAL-ED       PERU           Mildly Food Insecure              0       29   113
0-24 months   MAL-ED       PERU           Mildly Food Insecure              1        0   113
0-24 months   MAL-ED       PERU           Food Insecure                     0       49   113
0-24 months   MAL-ED       PERU           Food Insecure                     1        8   113
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                       0      100   233
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                       1       32   233
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0       17   233
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        2   233
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                     0       64   233
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                     1       18   233
0-24 months   NIH-Birth    BANGLADESH     Food Secure                       0       56   624
0-24 months   NIH-Birth    BANGLADESH     Food Secure                       1       38   624
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure              0      247   624
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure              1      241   624
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                     0       23   624
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                     1       19   624
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                       0      308   758
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                       1      145   758
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure              0      149   758
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       70   758
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                     0       51   758
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                     1       35   758
0-6 months    GMS-Nepal    NEPAL          Food Secure                       0      276   663
0-6 months    GMS-Nepal    NEPAL          Food Secure                       1      195   663
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure              0       81   663
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure              1       24   663
0-6 months    GMS-Nepal    NEPAL          Food Insecure                     0       57   663
0-6 months    GMS-Nepal    NEPAL          Food Insecure                     1       30   663
0-6 months    MAL-ED       BANGLADESH     Food Secure                       0      124   194
0-6 months    MAL-ED       BANGLADESH     Food Secure                       1       37   194
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure              0        3   194
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure              1        1   194
0-6 months    MAL-ED       BANGLADESH     Food Insecure                     0       22   194
0-6 months    MAL-ED       BANGLADESH     Food Insecure                     1        7   194
0-6 months    MAL-ED       BRAZIL         Food Secure                       0        3   129
0-6 months    MAL-ED       BRAZIL         Food Secure                       1        0   129
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure              0       11   129
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure              1        0   129
0-6 months    MAL-ED       BRAZIL         Food Insecure                     0      106   129
0-6 months    MAL-ED       BRAZIL         Food Insecure                     1        9   129
0-6 months    MAL-ED       INDIA          Food Secure                       0      128   212
0-6 months    MAL-ED       INDIA          Food Secure                       1       62   212
0-6 months    MAL-ED       INDIA          Mildly Food Insecure              0        2   212
0-6 months    MAL-ED       INDIA          Mildly Food Insecure              1        3   212
0-6 months    MAL-ED       INDIA          Food Insecure                     0       13   212
0-6 months    MAL-ED       INDIA          Food Insecure                     1        4   212
0-6 months    MAL-ED       NEPAL          Food Secure                       0       74   128
0-6 months    MAL-ED       NEPAL          Food Secure                       1       20   128
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure              0       11   128
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure              1        4   128
0-6 months    MAL-ED       NEPAL          Food Insecure                     0       15   128
0-6 months    MAL-ED       NEPAL          Food Insecure                     1        4   128
0-6 months    MAL-ED       PERU           Food Secure                       0       25   113
0-6 months    MAL-ED       PERU           Food Secure                       1        2   113
0-6 months    MAL-ED       PERU           Mildly Food Insecure              0       29   113
0-6 months    MAL-ED       PERU           Mildly Food Insecure              1        0   113
0-6 months    MAL-ED       PERU           Food Insecure                     0       53   113
0-6 months    MAL-ED       PERU           Food Insecure                     1        4   113
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                       0      119   233
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                       1       13   233
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0       18   233
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        1   233
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                     0       71   233
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                     1       11   233
0-6 months    NIH-Birth    BANGLADESH     Food Secure                       0       67   622
0-6 months    NIH-Birth    BANGLADESH     Food Secure                       1       27   622
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure              0      303   622
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure              1      183   622
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                     0       30   622
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                     1       12   622
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                       0      339   758
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                       1      114   758
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure              0      165   758
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       54   758
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                     0       59   758
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                     1       27   758
6-24 months   GMS-Nepal    NEPAL          Food Secure                       0      233   573
6-24 months   GMS-Nepal    NEPAL          Food Secure                       1      181   573
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure              0       39   573
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure              1       42   573
6-24 months   GMS-Nepal    NEPAL          Food Insecure                     0       31   573
6-24 months   GMS-Nepal    NEPAL          Food Insecure                     1       47   573
6-24 months   MAL-ED       BANGLADESH     Food Secure                       0      131   194
6-24 months   MAL-ED       BANGLADESH     Food Secure                       1       30   194
6-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure              0        3   194
6-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure              1        1   194
6-24 months   MAL-ED       BANGLADESH     Food Insecure                     0       24   194
6-24 months   MAL-ED       BANGLADESH     Food Insecure                     1        5   194
6-24 months   MAL-ED       BRAZIL         Food Secure                       0        3   129
6-24 months   MAL-ED       BRAZIL         Food Secure                       1        0   129
6-24 months   MAL-ED       BRAZIL         Mildly Food Insecure              0       11   129
6-24 months   MAL-ED       BRAZIL         Mildly Food Insecure              1        0   129
6-24 months   MAL-ED       BRAZIL         Food Insecure                     0      111   129
6-24 months   MAL-ED       BRAZIL         Food Insecure                     1        4   129
6-24 months   MAL-ED       INDIA          Food Secure                       0      137   212
6-24 months   MAL-ED       INDIA          Food Secure                       1       53   212
6-24 months   MAL-ED       INDIA          Mildly Food Insecure              0        4   212
6-24 months   MAL-ED       INDIA          Mildly Food Insecure              1        1   212
6-24 months   MAL-ED       INDIA          Food Insecure                     0       13   212
6-24 months   MAL-ED       INDIA          Food Insecure                     1        4   212
6-24 months   MAL-ED       NEPAL          Food Secure                       0       77   128
6-24 months   MAL-ED       NEPAL          Food Secure                       1       17   128
6-24 months   MAL-ED       NEPAL          Mildly Food Insecure              0       13   128
6-24 months   MAL-ED       NEPAL          Mildly Food Insecure              1        2   128
6-24 months   MAL-ED       NEPAL          Food Insecure                     0       13   128
6-24 months   MAL-ED       NEPAL          Food Insecure                     1        6   128
6-24 months   MAL-ED       PERU           Food Secure                       0       23   111
6-24 months   MAL-ED       PERU           Food Secure                       1        4   111
6-24 months   MAL-ED       PERU           Mildly Food Insecure              0       28   111
6-24 months   MAL-ED       PERU           Mildly Food Insecure              1        0   111
6-24 months   MAL-ED       PERU           Food Insecure                     0       51   111
6-24 months   MAL-ED       PERU           Food Insecure                     1        5   111
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure                       0      107   231
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure                       1       23   231
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0       17   231
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        2   231
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                     0       73   231
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                     1        9   231
6-24 months   NIH-Birth    BANGLADESH     Food Secure                       0       62   542
6-24 months   NIH-Birth    BANGLADESH     Food Secure                       1       19   542
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure              0      295   542
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure              1      126   542
6-24 months   NIH-Birth    BANGLADESH     Food Insecure                     0       26   542
6-24 months   NIH-Birth    BANGLADESH     Food Insecure                     1       14   542
6-24 months   NIH-Crypto   BANGLADESH     Food Secure                       0      382   730
6-24 months   NIH-Crypto   BANGLADESH     Food Secure                       1       56   730
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure              0      179   730
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       28   730
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure                     0       73   730
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure                     1       12   730


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
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA

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
![](/tmp/d43f43c6-1b11-4ca3-bb82-8db40ef65c19/3d033caf-882a-454d-a71f-6e356ab696c0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d43f43c6-1b11-4ca3-bb82-8db40ef65c19/3d033caf-882a-454d-a71f-6e356ab696c0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d43f43c6-1b11-4ca3-bb82-8db40ef65c19/3d033caf-882a-454d-a71f-6e356ab696c0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d43f43c6-1b11-4ca3-bb82-8db40ef65c19/3d033caf-882a-454d-a71f-6e356ab696c0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        Food Secure            NA                0.6008493   0.5565887   0.6451098
0-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.4761905   0.3805904   0.5717906
0-24 months   GMS-Nepal    NEPAL        Food Insecure          NA                0.6781609   0.5799178   0.7764040
0-24 months   MAL-ED       NEPAL        Food Secure            NA                0.3191489   0.2245448   0.4137531
0-24 months   MAL-ED       NEPAL        Mildly Food Insecure   NA                0.3333333   0.0938367   0.5728299
0-24 months   MAL-ED       NEPAL        Food Insecure          NA                0.4736842   0.2482904   0.6990781
0-24 months   NIH-Birth    BANGLADESH   Food Secure            NA                0.4042553   0.3049688   0.5035419
0-24 months   NIH-Birth    BANGLADESH   Mildly Food Insecure   NA                0.4938525   0.4494585   0.5382464
0-24 months   NIH-Birth    BANGLADESH   Food Insecure          NA                0.4523810   0.3017330   0.6030289
0-24 months   NIH-Crypto   BANGLADESH   Food Secure            NA                0.3200883   0.2771003   0.3630763
0-24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.3196347   0.2578315   0.3814379
0-24 months   NIH-Crypto   BANGLADESH   Food Insecure          NA                0.4069767   0.3030790   0.5108745
0-6 months    GMS-Nepal    NEPAL        Food Secure            NA                0.4140127   0.3694967   0.4585288
0-6 months    GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.2285714   0.1481929   0.3089500
0-6 months    GMS-Nepal    NEPAL        Food Insecure          NA                0.3448276   0.2448748   0.4447804
0-6 months    NIH-Birth    BANGLADESH   Food Secure            NA                0.2872340   0.1956911   0.3787770
0-6 months    NIH-Birth    BANGLADESH   Mildly Food Insecure   NA                0.3765432   0.3334320   0.4196544
0-6 months    NIH-Birth    BANGLADESH   Food Insecure          NA                0.2857143   0.1489808   0.4224477
0-6 months    NIH-Crypto   BANGLADESH   Food Secure            NA                0.2516556   0.2116667   0.2916446
0-6 months    NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.2465753   0.1894528   0.3036979
0-6 months    NIH-Crypto   BANGLADESH   Food Insecure          NA                0.3139535   0.2158024   0.4121045
6-24 months   GMS-Nepal    NEPAL        Food Secure            NA                0.4371981   0.3893743   0.4850219
6-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.5185185   0.4096113   0.6274258
6-24 months   GMS-Nepal    NEPAL        Food Insecure          NA                0.6025641   0.4938677   0.7112605
6-24 months   NIH-Birth    BANGLADESH   Food Secure            NA                0.2345679   0.1422057   0.3269301
6-24 months   NIH-Birth    BANGLADESH   Mildly Food Insecure   NA                0.2992874   0.2555027   0.3430721
6-24 months   NIH-Birth    BANGLADESH   Food Insecure          NA                0.3500000   0.2020518   0.4979482
6-24 months   NIH-Crypto   BANGLADESH   Food Secure            NA                0.1278539   0.0965599   0.1591478
6-24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.1352657   0.0886432   0.1818882
6-24 months   NIH-Crypto   BANGLADESH   Food Insecure          NA                0.1411765   0.0671019   0.2152511


### Parameter: E(Y)


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        NA                   NA                0.5912519   0.5538035   0.6287003
0-24 months   MAL-ED       NEPAL        NA                   NA                0.3437500   0.2611458   0.4263542
0-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.3298153   0.2963239   0.3633067
0-6 months    GMS-Nepal    NEPAL        NA                   NA                0.3755656   0.3386759   0.4124553
0-6 months    NIH-Birth    BANGLADESH   NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    NIH-Crypto   BANGLADESH   NA                   NA                0.2572559   0.2261171   0.2883948
6-24 months   GMS-Nepal    NEPAL        NA                   NA                0.4712042   0.4302971   0.5121113
6-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.1315068   0.1069744   0.1560393


### Parameter: RR


agecat        studyid      country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       0.7925290   0.6399444   0.9814951
0-24 months   GMS-Nepal    NEPAL        Food Insecure          Food Secure       1.1286706   0.9593692   1.3278491
0-24 months   MAL-ED       NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED       NEPAL        Mildly Food Insecure   Food Secure       1.0444444   0.4801047   2.2721381
0-24 months   MAL-ED       NEPAL        Food Insecure          Food Secure       1.4842105   0.8472771   2.5999533
0-24 months   NIH-Birth    BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth    BANGLADESH   Mildly Food Insecure   Food Secure       1.2216350   0.9404965   1.5868131
0-24 months   NIH-Birth    BANGLADESH   Food Insecure          Food Secure       1.1190476   0.7398510   1.6925943
0-24 months   NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.9985829   0.7891184   1.2636479
0-24 months   NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.2714515   0.9528451   1.6965916
0-6 months    GMS-Nepal    NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       0.5520879   0.3822138   0.7974622
0-6 months    GMS-Nepal    NEPAL        Food Insecure          Food Secure       0.8328912   0.6113929   1.1346350
0-6 months    NIH-Birth    BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth    BANGLADESH   Mildly Food Insecure   Food Secure       1.3109282   0.9343437   1.8392941
0-6 months    NIH-Birth    BANGLADESH   Food Insecure          Food Secure       0.9947090   0.5597400   1.7676884
0-6 months    NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.9798125   0.7398425   1.2976176
0-6 months    NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.2475520   0.8785238   1.7715923
6-24 months   GMS-Nepal    NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       1.1860037   0.9359216   1.5029088
6-24 months   GMS-Nepal    NEPAL        Food Insecure          Food Secure       1.3782405   1.1161031   1.7019458
6-24 months   NIH-Birth    BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth    BANGLADESH   Mildly Food Insecure   Food Secure       1.2759095   0.8382870   1.9419900
6-24 months   NIH-Birth    BANGLADESH   Food Insecure          Food Secure       1.4921053   0.8373593   2.6588085
6-24 months   NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.0579710   0.6932345   1.6146090
6-24 months   NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.1042017   0.6188736   1.9701298


### Parameter: PAR


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   GMS-Nepal    NEPAL        Food Secure          NA                -0.0095974   -0.0336392    0.0144444
0-24 months   MAL-ED       NEPAL        Food Secure          NA                 0.0246011   -0.0266646    0.0758668
0-24 months   NIH-Birth    BANGLADESH   Food Secure          NA                 0.0733088   -0.0184858    0.1651034
0-24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0097270   -0.0178566    0.0373106
0-6 months    GMS-Nepal    NEPAL        Food Secure          NA                -0.0384471   -0.0614022   -0.0154921
0-6 months    NIH-Birth    BANGLADESH   Food Secure          NA                 0.0696791   -0.0155679    0.1549261
0-6 months    NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0056003   -0.0200395    0.0312401
6-24 months   GMS-Nepal    NEPAL        Food Secure          NA                 0.0340061    0.0084021    0.0596101
6-24 months   NIH-Birth    BANGLADESH   Food Secure          NA                 0.0587900   -0.0275404    0.1451205
6-24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0036530   -0.0164960    0.0238019


### Parameter: PAF


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   GMS-Nepal    NEPAL        Food Secure          NA                -0.0162323   -0.0577456    0.0236517
0-24 months   MAL-ED       NEPAL        Food Secure          NA                 0.0715667   -0.0901841    0.2093186
0-24 months   NIH-Birth    BANGLADESH   Food Secure          NA                 0.1535056   -0.0625656    0.3256391
0-24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0294923   -0.0578479    0.1096213
0-6 months    GMS-Nepal    NEPAL        Food Secure          NA                -0.1023713   -0.1655032   -0.0426590
0-6 months    NIH-Birth    BANGLADESH   Food Secure          NA                 0.1952271   -0.0827160    0.4018197
0-6 months    NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0217694   -0.0831388    0.1165167
6-24 months   GMS-Nepal    NEPAL        Food Secure          NA                 0.0721685    0.0159588    0.1251675
6-24 months   NIH-Birth    BANGLADESH   Food Secure          NA                 0.2004038   -0.1547698    0.4463363
6-24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0277778   -0.1380989    0.1694781
