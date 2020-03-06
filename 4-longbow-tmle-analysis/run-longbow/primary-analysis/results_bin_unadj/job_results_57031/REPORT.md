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

**Outcome Variable:** ever_swasted

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

agecat        studyid      country        hfoodsec                ever_swasted   n_cell     n
------------  -----------  -------------  ---------------------  -------------  -------  ----
0-24 months   GMS-Nepal    NEPAL          Food Secure                        0      348   663
0-24 months   GMS-Nepal    NEPAL          Food Secure                        1      123   663
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure               0       82   663
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure               1       23   663
0-24 months   GMS-Nepal    NEPAL          Food Insecure                      0       65   663
0-24 months   GMS-Nepal    NEPAL          Food Insecure                      1       22   663
0-24 months   MAL-ED       BANGLADESH     Food Secure                        0      146   194
0-24 months   MAL-ED       BANGLADESH     Food Secure                        1       15   194
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure               0        4   194
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure               1        0   194
0-24 months   MAL-ED       BANGLADESH     Food Insecure                      0       26   194
0-24 months   MAL-ED       BANGLADESH     Food Insecure                      1        3   194
0-24 months   MAL-ED       BRAZIL         Food Secure                        0        3   129
0-24 months   MAL-ED       BRAZIL         Food Secure                        1        0   129
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure               0       11   129
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure               1        0   129
0-24 months   MAL-ED       BRAZIL         Food Insecure                      0      113   129
0-24 months   MAL-ED       BRAZIL         Food Insecure                      1        2   129
0-24 months   MAL-ED       INDIA          Food Secure                        0      170   212
0-24 months   MAL-ED       INDIA          Food Secure                        1       20   212
0-24 months   MAL-ED       INDIA          Mildly Food Insecure               0        3   212
0-24 months   MAL-ED       INDIA          Mildly Food Insecure               1        2   212
0-24 months   MAL-ED       INDIA          Food Insecure                      0       16   212
0-24 months   MAL-ED       INDIA          Food Insecure                      1        1   212
0-24 months   MAL-ED       NEPAL          Food Secure                        0       92   128
0-24 months   MAL-ED       NEPAL          Food Secure                        1        2   128
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure               0       14   128
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure               1        1   128
0-24 months   MAL-ED       NEPAL          Food Insecure                      0       18   128
0-24 months   MAL-ED       NEPAL          Food Insecure                      1        1   128
0-24 months   MAL-ED       PERU           Food Secure                        0       26   113
0-24 months   MAL-ED       PERU           Food Secure                        1        1   113
0-24 months   MAL-ED       PERU           Mildly Food Insecure               0       29   113
0-24 months   MAL-ED       PERU           Mildly Food Insecure               1        0   113
0-24 months   MAL-ED       PERU           Food Insecure                      0       55   113
0-24 months   MAL-ED       PERU           Food Insecure                      1        2   113
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                        0      125   233
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                        1        7   233
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       18   233
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        1   233
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                      0       76   233
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                      1        6   233
0-24 months   NIH-Birth    BANGLADESH     Food Secure                        0       83   624
0-24 months   NIH-Birth    BANGLADESH     Food Secure                        1       11   624
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure               0      408   624
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure               1       80   624
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                      0       34   624
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                      1        8   624
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                        0      409   758
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                        1       44   758
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      202   758
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure               1       17   758
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                      0       81   758
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                      1        5   758
0-6 months    GMS-Nepal    NEPAL          Food Secure                        0      410   663
0-6 months    GMS-Nepal    NEPAL          Food Secure                        1       61   663
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure               0      100   663
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure               1        5   663
0-6 months    GMS-Nepal    NEPAL          Food Insecure                      0       78   663
0-6 months    GMS-Nepal    NEPAL          Food Insecure                      1        9   663
0-6 months    MAL-ED       BANGLADESH     Food Secure                        0      151   194
0-6 months    MAL-ED       BANGLADESH     Food Secure                        1       10   194
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure               0        4   194
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure               1        0   194
0-6 months    MAL-ED       BANGLADESH     Food Insecure                      0       26   194
0-6 months    MAL-ED       BANGLADESH     Food Insecure                      1        3   194
0-6 months    MAL-ED       BRAZIL         Food Secure                        0        3   129
0-6 months    MAL-ED       BRAZIL         Food Secure                        1        0   129
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure               0       11   129
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure               1        0   129
0-6 months    MAL-ED       BRAZIL         Food Insecure                      0      114   129
0-6 months    MAL-ED       BRAZIL         Food Insecure                      1        1   129
0-6 months    MAL-ED       INDIA          Food Secure                        0      174   212
0-6 months    MAL-ED       INDIA          Food Secure                        1       16   212
0-6 months    MAL-ED       INDIA          Mildly Food Insecure               0        3   212
0-6 months    MAL-ED       INDIA          Mildly Food Insecure               1        2   212
0-6 months    MAL-ED       INDIA          Food Insecure                      0       16   212
0-6 months    MAL-ED       INDIA          Food Insecure                      1        1   212
0-6 months    MAL-ED       NEPAL          Food Secure                        0       93   128
0-6 months    MAL-ED       NEPAL          Food Secure                        1        1   128
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure               0       14   128
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure               1        1   128
0-6 months    MAL-ED       NEPAL          Food Insecure                      0       18   128
0-6 months    MAL-ED       NEPAL          Food Insecure                      1        1   128
0-6 months    MAL-ED       PERU           Food Secure                        0       26   113
0-6 months    MAL-ED       PERU           Food Secure                        1        1   113
0-6 months    MAL-ED       PERU           Mildly Food Insecure               0       29   113
0-6 months    MAL-ED       PERU           Mildly Food Insecure               1        0   113
0-6 months    MAL-ED       PERU           Food Insecure                      0       57   113
0-6 months    MAL-ED       PERU           Food Insecure                      1        0   113
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                        0      129   233
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                        1        3   233
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       19   233
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        0   233
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                      0       80   233
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                      1        2   233
0-6 months    NIH-Birth    BANGLADESH     Food Secure                        0       87   622
0-6 months    NIH-Birth    BANGLADESH     Food Secure                        1        7   622
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure               0      442   622
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure               1       44   622
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                      0       37   622
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                      1        5   622
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                        0      417   758
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                        1       36   758
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      208   758
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure               1       11   758
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                      0       83   758
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                      1        3   758
6-24 months   GMS-Nepal    NEPAL          Food Secure                        0      342   573
6-24 months   GMS-Nepal    NEPAL          Food Secure                        1       72   573
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure               0       62   573
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure               1       19   573
6-24 months   GMS-Nepal    NEPAL          Food Insecure                      0       63   573
6-24 months   GMS-Nepal    NEPAL          Food Insecure                      1       15   573
6-24 months   MAL-ED       BANGLADESH     Food Secure                        0      156   194
6-24 months   MAL-ED       BANGLADESH     Food Secure                        1        5   194
6-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure               0        4   194
6-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure               1        0   194
6-24 months   MAL-ED       BANGLADESH     Food Insecure                      0       29   194
6-24 months   MAL-ED       BANGLADESH     Food Insecure                      1        0   194
6-24 months   MAL-ED       BRAZIL         Food Secure                        0        3   129
6-24 months   MAL-ED       BRAZIL         Food Secure                        1        0   129
6-24 months   MAL-ED       BRAZIL         Mildly Food Insecure               0       11   129
6-24 months   MAL-ED       BRAZIL         Mildly Food Insecure               1        0   129
6-24 months   MAL-ED       BRAZIL         Food Insecure                      0      114   129
6-24 months   MAL-ED       BRAZIL         Food Insecure                      1        1   129
6-24 months   MAL-ED       INDIA          Food Secure                        0      185   212
6-24 months   MAL-ED       INDIA          Food Secure                        1        5   212
6-24 months   MAL-ED       INDIA          Mildly Food Insecure               0        5   212
6-24 months   MAL-ED       INDIA          Mildly Food Insecure               1        0   212
6-24 months   MAL-ED       INDIA          Food Insecure                      0       17   212
6-24 months   MAL-ED       INDIA          Food Insecure                      1        0   212
6-24 months   MAL-ED       NEPAL          Food Secure                        0       93   128
6-24 months   MAL-ED       NEPAL          Food Secure                        1        1   128
6-24 months   MAL-ED       NEPAL          Mildly Food Insecure               0       15   128
6-24 months   MAL-ED       NEPAL          Mildly Food Insecure               1        0   128
6-24 months   MAL-ED       NEPAL          Food Insecure                      0       19   128
6-24 months   MAL-ED       NEPAL          Food Insecure                      1        0   128
6-24 months   MAL-ED       PERU           Food Secure                        0       27   111
6-24 months   MAL-ED       PERU           Food Secure                        1        0   111
6-24 months   MAL-ED       PERU           Mildly Food Insecure               0       28   111
6-24 months   MAL-ED       PERU           Mildly Food Insecure               1        0   111
6-24 months   MAL-ED       PERU           Food Insecure                      0       54   111
6-24 months   MAL-ED       PERU           Food Insecure                      1        2   111
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure                        0      126   231
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure                        1        4   231
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       18   231
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        1   231
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                      0       78   231
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                      1        4   231
6-24 months   NIH-Birth    BANGLADESH     Food Secure                        0       77   542
6-24 months   NIH-Birth    BANGLADESH     Food Secure                        1        4   542
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure               0      382   542
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure               1       39   542
6-24 months   NIH-Birth    BANGLADESH     Food Insecure                      0       35   542
6-24 months   NIH-Birth    BANGLADESH     Food Insecure                      1        5   542
6-24 months   NIH-Crypto   BANGLADESH     Food Secure                        0      428   730
6-24 months   NIH-Crypto   BANGLADESH     Food Secure                        1       10   730
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      199   730
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure               1        8   730
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure                      0       83   730
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure                      1        2   730


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
![](/tmp/de6b73dd-5656-49dd-ba74-07f496119453/8edc7a37-4084-48fa-88ec-8d5e7bce93e2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/de6b73dd-5656-49dd-ba74-07f496119453/8edc7a37-4084-48fa-88ec-8d5e7bce93e2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/de6b73dd-5656-49dd-ba74-07f496119453/8edc7a37-4084-48fa-88ec-8d5e7bce93e2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/de6b73dd-5656-49dd-ba74-07f496119453/8edc7a37-4084-48fa-88ec-8d5e7bce93e2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        Food Secure            NA                0.2611465   0.2214468   0.3008461
0-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.2190476   0.1398772   0.2982180
0-24 months   GMS-Nepal    NEPAL        Food Insecure          NA                0.2528736   0.1614696   0.3442775
0-24 months   NIH-Birth    BANGLADESH   Food Secure            NA                0.1170213   0.0519874   0.1820552
0-24 months   NIH-Birth    BANGLADESH   Mildly Food Insecure   NA                0.1639344   0.1310612   0.1968076
0-24 months   NIH-Birth    BANGLADESH   Food Insecure          NA                0.1904762   0.0716241   0.3093283
0-24 months   NIH-Crypto   BANGLADESH   Food Secure            NA                0.0971302   0.0698420   0.1244185
0-24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0776256   0.0421631   0.1130880
0-24 months   NIH-Crypto   BANGLADESH   Food Insecure          NA                0.0581395   0.0086499   0.1076292
0-6 months    GMS-Nepal    NEPAL        Food Secure            NA                0.1295117   0.0991657   0.1598577
0-6 months    GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.0476190   0.0068550   0.0883831
0-6 months    GMS-Nepal    NEPAL        Food Insecure          NA                0.1034483   0.0394062   0.1674904
0-6 months    NIH-Birth    BANGLADESH   Food Secure            NA                0.0744681   0.0213534   0.1275827
0-6 months    NIH-Birth    BANGLADESH   Mildly Food Insecure   NA                0.0905350   0.0650032   0.1160667
0-6 months    NIH-Birth    BANGLADESH   Food Insecure          NA                0.1190476   0.0210288   0.2170664
6-24 months   GMS-Nepal    NEPAL        Food Secure            NA                0.1739130   0.1373699   0.2104562
6-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.2345679   0.1422103   0.3269255
6-24 months   GMS-Nepal    NEPAL        Food Insecure          NA                0.1923077   0.1047687   0.2798467


### Parameter: E(Y)


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        NA                   NA                0.2533937   0.2202605   0.2865268
0-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.1586538   0.1299648   0.1873429
0-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.0870712   0.0669870   0.1071555
0-6 months    GMS-Nepal    NEPAL        NA                   NA                0.1131222   0.0889940   0.1372504
0-6 months    NIH-Birth    BANGLADESH   NA                   NA                0.0900322   0.0675202   0.1125442
6-24 months   GMS-Nepal    NEPAL        NA                   NA                0.1849913   0.1531708   0.2168118


### Parameter: RR


agecat        studyid      country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       0.8387921   0.5667190   1.2414834
0-24 months   GMS-Nepal    NEPAL        Food Insecure          Food Secure       0.9683207   0.6542145   1.4332378
0-24 months   NIH-Birth    BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth    BANGLADESH   Mildly Food Insecure   Food Secure       1.4008942   0.7759210   2.5292582
0-24 months   NIH-Birth    BANGLADESH   Food Insecure          Food Secure       1.6277056   0.7058100   3.7537375
0-24 months   NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.7991905   0.4674468   1.3663705
0-24 months   NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       0.5985729   0.2442425   1.4669421
0-6 months    GMS-Nepal    NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       0.3676815   0.1513636   0.8931452
0-6 months    GMS-Nepal    NEPAL        Food Insecure          Food Secure       0.7987564   0.4120415   1.5484160
0-6 months    NIH-Birth    BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth    BANGLADESH   Mildly Food Insecure   Food Secure       1.2157554   0.5646124   2.6178337
0-6 months    NIH-Birth    BANGLADESH   Food Insecure          Food Secure       1.5986395   0.5378468   4.7516283
6-24 months   GMS-Nepal    NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       1.3487654   0.8632033   2.1074620
6-24 months   GMS-Nepal    NEPAL        Food Insecure          Food Secure       1.1057692   0.6697719   1.8255851


### Parameter: PAR


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   GMS-Nepal    NEPAL        Food Secure          NA                -0.0077528   -0.0285993    0.0130937
0-24 months   NIH-Birth    BANGLADESH   Food Secure          NA                 0.0416326   -0.0198347    0.1030999
0-24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0100590   -0.0261209    0.0060029
0-6 months    GMS-Nepal    NEPAL        Food Secure          NA                -0.0163895   -0.0303412   -0.0024378
0-6 months    NIH-Birth    BANGLADESH   Food Secure          NA                 0.0155641   -0.0341879    0.0653160
6-24 months   GMS-Nepal    NEPAL        Food Secure          NA                 0.0110782   -0.0093730    0.0315295


### Parameter: PAF


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   GMS-Nepal    NEPAL        Food Secure          NA                -0.0305960   -0.1162063    0.0484482
0-24 months   NIH-Birth    BANGLADESH   Food Secure          NA                 0.2624113   -0.2436437    0.5625459
0-24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                -0.1155261   -0.3143298    0.0532068
0-6 months    GMS-Nepal    NEPAL        Food Secure          NA                -0.1448832   -0.2720211   -0.0304527
0-6 months    NIH-Birth    BANGLADESH   Food Secure          NA                 0.1728723   -0.6105727    0.5752193
6-24 months   GMS-Nepal    NEPAL        Food Secure          NA                 0.0598852   -0.0571203    0.1639401
