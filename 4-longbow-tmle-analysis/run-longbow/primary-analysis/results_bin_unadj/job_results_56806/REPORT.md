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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid      country        hfoodsec                ever_stunted   n_cell     n
------------  -----------  -------------  ---------------------  -------------  -------  ----
0-24 months   GMS-Nepal    NEPAL          Food Secure                        0      181   674
0-24 months   GMS-Nepal    NEPAL          Food Secure                        1      298   674
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure               0       38   674
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure               1       68   674
0-24 months   GMS-Nepal    NEPAL          Food Insecure                      0       26   674
0-24 months   GMS-Nepal    NEPAL          Food Insecure                      1       63   674
0-24 months   MAL-ED       BANGLADESH     Food Secure                        0       61   194
0-24 months   MAL-ED       BANGLADESH     Food Secure                        1      100   194
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure               0        1   194
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure               1        3   194
0-24 months   MAL-ED       BANGLADESH     Food Insecure                      0       10   194
0-24 months   MAL-ED       BANGLADESH     Food Insecure                      1       19   194
0-24 months   MAL-ED       BRAZIL         Food Secure                        0        3   129
0-24 months   MAL-ED       BRAZIL         Food Secure                        1        0   129
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure               0        7   129
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure               1        4   129
0-24 months   MAL-ED       BRAZIL         Food Insecure                      0       84   129
0-24 months   MAL-ED       BRAZIL         Food Insecure                      1       31   129
0-24 months   MAL-ED       INDIA          Food Secure                        0       66   212
0-24 months   MAL-ED       INDIA          Food Secure                        1      124   212
0-24 months   MAL-ED       INDIA          Mildly Food Insecure               0        4   212
0-24 months   MAL-ED       INDIA          Mildly Food Insecure               1        1   212
0-24 months   MAL-ED       INDIA          Food Insecure                      0        7   212
0-24 months   MAL-ED       INDIA          Food Insecure                      1       10   212
0-24 months   MAL-ED       NEPAL          Food Secure                        0       63   128
0-24 months   MAL-ED       NEPAL          Food Secure                        1       31   128
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure               0        9   128
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure               1        6   128
0-24 months   MAL-ED       NEPAL          Food Insecure                      0        9   128
0-24 months   MAL-ED       NEPAL          Food Insecure                      1       10   128
0-24 months   MAL-ED       PERU           Food Secure                        0        6   113
0-24 months   MAL-ED       PERU           Food Secure                        1       21   113
0-24 months   MAL-ED       PERU           Mildly Food Insecure               0        8   113
0-24 months   MAL-ED       PERU           Mildly Food Insecure               1       21   113
0-24 months   MAL-ED       PERU           Food Insecure                      0       17   113
0-24 months   MAL-ED       PERU           Food Insecure                      1       40   113
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                        0       55   233
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                        1       77   233
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       10   233
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        9   233
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                      0       25   233
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                      1       57   233
0-24 months   NIH-Birth    BANGLADESH     Food Secure                        0       44   629
0-24 months   NIH-Birth    BANGLADESH     Food Secure                        1       51   629
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure               0      159   629
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure               1      333   629
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                      0        8   629
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                      1       34   629
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                        0      243   758
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                        1      210   758
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      113   758
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure               1      106   758
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                      0       40   758
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                      1       46   758
0-6 months    GMS-Nepal    NEPAL          Food Secure                        0      337   674
0-6 months    GMS-Nepal    NEPAL          Food Secure                        1      142   674
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure               0       66   674
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure               1       40   674
0-6 months    GMS-Nepal    NEPAL          Food Insecure                      0       58   674
0-6 months    GMS-Nepal    NEPAL          Food Insecure                      1       31   674
0-6 months    MAL-ED       BANGLADESH     Food Secure                        0      109   194
0-6 months    MAL-ED       BANGLADESH     Food Secure                        1       52   194
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure               0        2   194
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure               1        2   194
0-6 months    MAL-ED       BANGLADESH     Food Insecure                      0       20   194
0-6 months    MAL-ED       BANGLADESH     Food Insecure                      1        9   194
0-6 months    MAL-ED       BRAZIL         Food Secure                        0        3   129
0-6 months    MAL-ED       BRAZIL         Food Secure                        1        0   129
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure               0        7   129
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure               1        4   129
0-6 months    MAL-ED       BRAZIL         Food Insecure                      0       91   129
0-6 months    MAL-ED       BRAZIL         Food Insecure                      1       24   129
0-6 months    MAL-ED       INDIA          Food Secure                        0      122   212
0-6 months    MAL-ED       INDIA          Food Secure                        1       68   212
0-6 months    MAL-ED       INDIA          Mildly Food Insecure               0        5   212
0-6 months    MAL-ED       INDIA          Mildly Food Insecure               1        0   212
0-6 months    MAL-ED       INDIA          Food Insecure                      0       13   212
0-6 months    MAL-ED       INDIA          Food Insecure                      1        4   212
0-6 months    MAL-ED       NEPAL          Food Secure                        0       81   128
0-6 months    MAL-ED       NEPAL          Food Secure                        1       13   128
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure               0       12   128
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure               1        3   128
0-6 months    MAL-ED       NEPAL          Food Insecure                      0       12   128
0-6 months    MAL-ED       NEPAL          Food Insecure                      1        7   128
0-6 months    MAL-ED       PERU           Food Secure                        0       13   113
0-6 months    MAL-ED       PERU           Food Secure                        1       14   113
0-6 months    MAL-ED       PERU           Mildly Food Insecure               0       17   113
0-6 months    MAL-ED       PERU           Mildly Food Insecure               1       12   113
0-6 months    MAL-ED       PERU           Food Insecure                      0       32   113
0-6 months    MAL-ED       PERU           Food Insecure                      1       25   113
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                        0       80   233
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                        1       52   233
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       16   233
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        3   233
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                      0       49   233
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                      1       33   233
0-6 months    NIH-Birth    BANGLADESH     Food Secure                        0       65   629
0-6 months    NIH-Birth    BANGLADESH     Food Secure                        1       30   629
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure               0      320   629
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure               1      172   629
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                      0       24   629
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                      1       18   629
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                        0      325   758
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                        1      128   758
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      146   758
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure               1       73   758
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                      0       58   758
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                      1       28   758
6-24 months   GMS-Nepal    NEPAL          Food Secure                        0      132   387
6-24 months   GMS-Nepal    NEPAL          Food Secure                        1      156   387
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure               0       20   387
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure               1       28   387
6-24 months   GMS-Nepal    NEPAL          Food Insecure                      0       19   387
6-24 months   GMS-Nepal    NEPAL          Food Insecure                      1       32   387
6-24 months   MAL-ED       BANGLADESH     Food Secure                        0       61   131
6-24 months   MAL-ED       BANGLADESH     Food Secure                        1       48   131
6-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure               0        1   131
6-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure               1        1   131
6-24 months   MAL-ED       BANGLADESH     Food Insecure                      0       10   131
6-24 months   MAL-ED       BANGLADESH     Food Insecure                      1       10   131
6-24 months   MAL-ED       BRAZIL         Food Secure                        0        3   101
6-24 months   MAL-ED       BRAZIL         Food Secure                        1        0   101
6-24 months   MAL-ED       BRAZIL         Mildly Food Insecure               0        7   101
6-24 months   MAL-ED       BRAZIL         Mildly Food Insecure               1        0   101
6-24 months   MAL-ED       BRAZIL         Food Insecure                      0       84   101
6-24 months   MAL-ED       BRAZIL         Food Insecure                      1        7   101
6-24 months   MAL-ED       INDIA          Food Secure                        0       66   140
6-24 months   MAL-ED       INDIA          Food Secure                        1       56   140
6-24 months   MAL-ED       INDIA          Mildly Food Insecure               0        4   140
6-24 months   MAL-ED       INDIA          Mildly Food Insecure               1        1   140
6-24 months   MAL-ED       INDIA          Food Insecure                      0        7   140
6-24 months   MAL-ED       INDIA          Food Insecure                      1        6   140
6-24 months   MAL-ED       NEPAL          Food Secure                        0       63   105
6-24 months   MAL-ED       NEPAL          Food Secure                        1       18   105
6-24 months   MAL-ED       NEPAL          Mildly Food Insecure               0        9   105
6-24 months   MAL-ED       NEPAL          Mildly Food Insecure               1        3   105
6-24 months   MAL-ED       NEPAL          Food Insecure                      0        9   105
6-24 months   MAL-ED       NEPAL          Food Insecure                      1        3   105
6-24 months   MAL-ED       PERU           Food Secure                        0        6    61
6-24 months   MAL-ED       PERU           Food Secure                        1        7    61
6-24 months   MAL-ED       PERU           Mildly Food Insecure               0        7    61
6-24 months   MAL-ED       PERU           Mildly Food Insecure               1        9    61
6-24 months   MAL-ED       PERU           Food Insecure                      0       17    61
6-24 months   MAL-ED       PERU           Food Insecure                      1       15    61
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure                        0       54   144
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure                        1       25   144
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       10   144
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        6   144
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                      0       25   144
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                      1       24   144
6-24 months   NIH-Birth    BANGLADESH     Food Secure                        0       35   345
6-24 months   NIH-Birth    BANGLADESH     Food Secure                        1       21   345
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure               0      106   345
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure               1      161   345
6-24 months   NIH-Birth    BANGLADESH     Food Insecure                      0        6   345
6-24 months   NIH-Birth    BANGLADESH     Food Insecure                      1       16   345
6-24 months   NIH-Crypto   BANGLADESH     Food Secure                        0      232   506
6-24 months   NIH-Crypto   BANGLADESH     Food Secure                        1       82   506
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      101   506
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure               1       33   506
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure                      0       40   506
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure                      1       18   506


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
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL

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
![](/tmp/1f562585-4fda-42f8-81a1-b891f4c83aac/82aa4e8a-181e-4db8-8dbf-95bcc7257058/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1f562585-4fda-42f8-81a1-b891f4c83aac/82aa4e8a-181e-4db8-8dbf-95bcc7257058/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1f562585-4fda-42f8-81a1-b891f4c83aac/82aa4e8a-181e-4db8-8dbf-95bcc7257058/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1f562585-4fda-42f8-81a1-b891f4c83aac/82aa4e8a-181e-4db8-8dbf-95bcc7257058/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country        intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -------------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL          Food Secure            NA                0.6221294   0.5786769   0.6655819
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.6415094   0.5501490   0.7328698
0-24 months   GMS-Nepal    NEPAL          Food Insecure          NA                0.7078652   0.6133193   0.8024110
0-24 months   MAL-ED       NEPAL          Food Secure            NA                0.3297872   0.2343736   0.4252009
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                0.4000000   0.1511078   0.6488922
0-24 months   MAL-ED       NEPAL          Food Insecure          NA                0.5263158   0.3009219   0.7517096
0-24 months   MAL-ED       PERU           Food Secure            NA                0.7777778   0.6202642   0.9352913
0-24 months   MAL-ED       PERU           Mildly Food Insecure   NA                0.7241379   0.5607440   0.8875319
0-24 months   MAL-ED       PERU           Food Insecure          NA                0.7017544   0.5824599   0.8210489
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                0.5833333   0.4990488   0.6676179
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.4736842   0.2486892   0.6986792
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.6951220   0.5952672   0.7949767
0-24 months   NIH-Birth    BANGLADESH     Food Secure            NA                0.5368421   0.4364916   0.6371926
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.6768293   0.6354706   0.7181879
0-24 months   NIH-Birth    BANGLADESH     Food Insecure          NA                0.8095238   0.6906725   0.9283752
0-24 months   NIH-Crypto   BANGLADESH     Food Secure            NA                0.4635762   0.4176246   0.5095277
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.4840183   0.4177874   0.5502492
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                0.5348837   0.4293974   0.6403700
0-6 months    GMS-Nepal    NEPAL          Food Secure            NA                0.2964509   0.2555224   0.3373795
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.3773585   0.2850134   0.4697036
0-6 months    GMS-Nepal    NEPAL          Food Insecure          NA                0.3483146   0.2492587   0.4473705
0-6 months    MAL-ED       PERU           Food Secure            NA                0.5185185   0.3292108   0.7078262
0-6 months    MAL-ED       PERU           Mildly Food Insecure   NA                0.4137931   0.2337418   0.5938445
0-6 months    MAL-ED       PERU           Food Insecure          NA                0.4385965   0.3092034   0.5679896
0-6 months    NIH-Birth    BANGLADESH     Food Secure            NA                0.3157895   0.2222434   0.4093355
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.3495935   0.3074253   0.3917617
0-6 months    NIH-Birth    BANGLADESH     Food Insecure          NA                0.4285714   0.2787888   0.5783541
0-6 months    NIH-Crypto   BANGLADESH     Food Secure            NA                0.2825607   0.2410716   0.3240498
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.3333333   0.2708583   0.3958084
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure          NA                0.3255814   0.2264799   0.4246829
6-24 months   GMS-Nepal    NEPAL          Food Secure            NA                0.5416667   0.4840470   0.5992863
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.5833333   0.4436830   0.7229837
6-24 months   GMS-Nepal    NEPAL          Food Insecure          NA                0.6274510   0.4945872   0.7603147
6-24 months   MAL-ED       PERU           Food Secure            NA                0.5384615   0.2652198   0.8117033
6-24 months   MAL-ED       PERU           Mildly Food Insecure   NA                0.5625000   0.3174088   0.8075912
6-24 months   MAL-ED       PERU           Food Insecure          NA                0.4687500   0.2944158   0.6430842
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                0.3164557   0.2135386   0.4193728
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.3750000   0.1369561   0.6130439
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.4897959   0.3493391   0.6302527
6-24 months   NIH-Birth    BANGLADESH     Food Secure            NA                0.3750000   0.2480186   0.5019814
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.6029963   0.5442233   0.6617692
6-24 months   NIH-Birth    BANGLADESH     Food Insecure          NA                0.7272727   0.5409010   0.9136444
6-24 months   NIH-Crypto   BANGLADESH     Food Secure            NA                0.2611465   0.2125132   0.3097798
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2462687   0.1732493   0.3192880
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                0.3103448   0.1911652   0.4295244


### Parameter: E(Y)


agecat        studyid      country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL          NA                   NA                0.6364985   0.6001579   0.6728391
0-24 months   MAL-ED       NEPAL          NA                   NA                0.3671875   0.2833521   0.4510229
0-24 months   MAL-ED       PERU           NA                   NA                0.7256637   0.6430317   0.8082957
0-24 months   MAL-ED       SOUTH AFRICA   NA                   NA                0.6137339   0.5510815   0.6763863
0-24 months   NIH-Birth    BANGLADESH     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   NIH-Crypto   BANGLADESH     NA                   NA                0.4775726   0.4419904   0.5131548
0-6 months    GMS-Nepal    NEPAL          NA                   NA                0.3160237   0.2808984   0.3511491
0-6 months    MAL-ED       PERU           NA                   NA                0.4513274   0.3591676   0.5434872
0-6 months    NIH-Birth    BANGLADESH     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    NIH-Crypto   BANGLADESH     NA                   NA                0.3021108   0.2694011   0.3348205
6-24 months   GMS-Nepal    NEPAL          NA                   NA                0.5581395   0.5085981   0.6076809
6-24 months   MAL-ED       PERU           NA                   NA                0.5081967   0.3816986   0.6346949
6-24 months   MAL-ED       SOUTH AFRICA   NA                   NA                0.3819444   0.3023113   0.4615776
6-24 months   NIH-Birth    BANGLADESH     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   NIH-Crypto   BANGLADESH     NA                   NA                0.2628458   0.2244546   0.3012371


### Parameter: RR


agecat        studyid      country        intervention_level     baseline_level     estimate    ci_lower   ci_upper
------------  -----------  -------------  ---------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal    NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       1.0311511   0.8799026   1.208398
0-24 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       1.1378101   0.9786131   1.322905
0-24 months   MAL-ED       NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       1.2129032   0.6106769   2.409022
0-24 months   MAL-ED       NEPAL          Food Insecure          Food Secure       1.5959253   0.9518332   2.675865
0-24 months   MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure       0.9310345   0.6875281   1.260785
0-24 months   MAL-ED       PERU           Food Insecure          Food Secure       0.9022556   0.6926259   1.175332
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       0.8120301   0.4942582   1.334106
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       1.1916376   0.9719830   1.460931
0-24 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       1.2607604   1.0356748   1.534764
0-24 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       1.5079365   1.1889272   1.912541
0-24 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.0440965   0.8817787   1.236294
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.1538206   0.9252933   1.438789
0-6 months    GMS-Nepal    NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       1.2729205   0.9611164   1.685880
0-6 months    GMS-Nepal    NEPAL          Food Insecure          Food Secure       1.1749486   0.8564981   1.611801
0-6 months    MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    MAL-ED       PERU           Mildly Food Insecure   Food Secure       0.7980296   0.4522086   1.408313
0-6 months    MAL-ED       PERU           Food Insecure          Food Secure       0.8458647   0.5289894   1.352554
0-6 months    NIH-Birth    BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       1.1070461   0.8040047   1.524308
0-6 months    NIH-Birth    BANGLADESH     Food Insecure          Food Secure       1.3571429   0.8583327   2.145831
0-6 months    NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.1796875   0.9297470   1.496819
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.1522529   0.8218241   1.615536
6-24 months   GMS-Nepal    NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       1.0769231   0.8287291   1.399448
6-24 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       1.1583710   0.9139730   1.468122
6-24 months   MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure       1.0446429   0.5351702   2.039124
6-24 months   MAL-ED       PERU           Food Insecure          Food Secure       0.8705357   0.4640367   1.633130
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       1.1850000   0.5807115   2.418111
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       1.5477551   1.0032193   2.387859
6-24 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       1.6079900   1.1304540   2.287251
6-24 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       1.9393939   1.2683556   2.965453
6-24 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       0.9430288   0.6644504   1.338404
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.1883936   0.7755412   1.821024


### Parameter: PAR


agecat        studyid      country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0143691   -0.0085450   0.0372831
0-24 months   MAL-ED       NEPAL          Food Secure          NA                 0.0374003   -0.0151449   0.0899454
0-24 months   MAL-ED       PERU           Food Secure          NA                -0.0521141   -0.1927633   0.0885352
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0304006   -0.0241903   0.0849915
0-24 months   NIH-Birth    BANGLADESH     Food Secure          NA                 0.1277048    0.0360971   0.2193125
0-24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0139964   -0.0152237   0.0432165
0-6 months    GMS-Nepal    NEPAL          Food Secure          NA                 0.0195728   -0.0034042   0.0425498
0-6 months    MAL-ED       PERU           Food Secure          NA                -0.0671911   -0.2321305   0.0977483
0-6 months    NIH-Birth    BANGLADESH     Food Secure          NA                 0.0339721   -0.0526229   0.1205670
0-6 months    NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0195501   -0.0075392   0.0466394
6-24 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0164729   -0.0123879   0.0453337
6-24 months   MAL-ED       PERU           Food Secure          NA                -0.0302648   -0.2728345   0.2123049
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0654887   -0.0073924   0.1383699
6-24 months   NIH-Birth    BANGLADESH     Food Secure          NA                 0.1989130    0.0822062   0.3156198
6-24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0016994   -0.0283609   0.0317596


### Parameter: PAF


agecat        studyid      country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0225752   -0.0141541   0.0579743
0-24 months   MAL-ED       NEPAL          Food Secure          NA                 0.1018560   -0.0533699   0.2342077
0-24 months   MAL-ED       PERU           Food Secure          NA                -0.0718157   -0.2852318   0.1061621
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0495338   -0.0440285   0.1347113
0-24 months   NIH-Birth    BANGLADESH     Food Secure          NA                 0.1921682    0.0407818   0.3196624
0-24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0293074   -0.0338788   0.0886319
0-6 months    GMS-Nepal    NEPAL          Food Secure          NA                 0.0619346   -0.0136170   0.1318548
0-6 months    MAL-ED       PERU           Food Secure          NA                -0.1488744   -0.5806847   0.1649743
0-6 months    NIH-Birth    BANGLADESH     Food Secure          NA                 0.0971292   -0.1877192   0.3136629
0-6 months    NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0647117   -0.0293366   0.1501671
6-24 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0295139   -0.0236989   0.0799607
6-24 months   MAL-ED       PERU           Food Secure          NA                -0.0595533   -0.6629489   0.3249021
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.1714614   -0.0432176   0.3419627
6-24 months   NIH-Birth    BANGLADESH     Food Secure          NA                 0.3465909    0.1055065   0.5226981
6-24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0064652   -0.1147404   0.1144922
