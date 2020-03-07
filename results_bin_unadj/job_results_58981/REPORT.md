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

**Outcome Variable:** ever_sstunted

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

agecat        studyid      country        hfoodsec                ever_sstunted   n_cell       n
------------  -----------  -------------  ---------------------  --------------  -------  ------
0-24 months   GMS-Nepal    NEPAL          Food Secure                         0      368     674
0-24 months   GMS-Nepal    NEPAL          Food Secure                         1      111     674
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure                0       77     674
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure                1       29     674
0-24 months   GMS-Nepal    NEPAL          Food Insecure                       0       66     674
0-24 months   GMS-Nepal    NEPAL          Food Insecure                       1       23     674
0-24 months   JiVitA-3     BANGLADESH     Food Secure                         0     7235   17380
0-24 months   JiVitA-3     BANGLADESH     Food Secure                         1     1464   17380
0-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure                0     4642   17380
0-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure                1     1143   17380
0-24 months   JiVitA-3     BANGLADESH     Food Insecure                       0     2222   17380
0-24 months   JiVitA-3     BANGLADESH     Food Insecure                       1      674   17380
0-24 months   JiVitA-4     BANGLADESH     Food Secure                         0     2193    5398
0-24 months   JiVitA-4     BANGLADESH     Food Secure                         1      556    5398
0-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure                0     1528    5398
0-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure                1      419    5398
0-24 months   JiVitA-4     BANGLADESH     Food Insecure                       0      580    5398
0-24 months   JiVitA-4     BANGLADESH     Food Insecure                       1      122    5398
0-24 months   MAL-ED       BANGLADESH     Food Secure                         0      131     194
0-24 months   MAL-ED       BANGLADESH     Food Secure                         1       30     194
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure                0        2     194
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure                1        2     194
0-24 months   MAL-ED       BANGLADESH     Food Insecure                       0       17     194
0-24 months   MAL-ED       BANGLADESH     Food Insecure                       1       12     194
0-24 months   MAL-ED       BRAZIL         Food Secure                         0        3     129
0-24 months   MAL-ED       BRAZIL         Food Secure                         1        0     129
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure                0        9     129
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure                1        2     129
0-24 months   MAL-ED       BRAZIL         Food Insecure                       0      104     129
0-24 months   MAL-ED       BRAZIL         Food Insecure                       1       11     129
0-24 months   MAL-ED       INDIA          Food Secure                         0      143     212
0-24 months   MAL-ED       INDIA          Food Secure                         1       47     212
0-24 months   MAL-ED       INDIA          Mildly Food Insecure                0        4     212
0-24 months   MAL-ED       INDIA          Mildly Food Insecure                1        1     212
0-24 months   MAL-ED       INDIA          Food Insecure                       0       13     212
0-24 months   MAL-ED       INDIA          Food Insecure                       1        4     212
0-24 months   MAL-ED       NEPAL          Food Secure                         0       86     128
0-24 months   MAL-ED       NEPAL          Food Secure                         1        8     128
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure                0       15     128
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure                1        0     128
0-24 months   MAL-ED       NEPAL          Food Insecure                       0       13     128
0-24 months   MAL-ED       NEPAL          Food Insecure                       1        6     128
0-24 months   MAL-ED       PERU           Food Secure                         0       18     113
0-24 months   MAL-ED       PERU           Food Secure                         1        9     113
0-24 months   MAL-ED       PERU           Mildly Food Insecure                0       24     113
0-24 months   MAL-ED       PERU           Mildly Food Insecure                1        5     113
0-24 months   MAL-ED       PERU           Food Insecure                       0       39     113
0-24 months   MAL-ED       PERU           Food Insecure                       1       18     113
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                         0       97     233
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                         1       35     233
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure                0       14     233
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure                1        5     233
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                       0       58     233
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                       1       24     233
0-24 months   NIH-Birth    BANGLADESH     Food Secure                         0       77     629
0-24 months   NIH-Birth    BANGLADESH     Food Secure                         1       18     629
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure                0      339     629
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure                1      153     629
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                       0       17     629
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                       1       25     629
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                         0      400     758
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                         1       53     758
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure                0      191     758
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure                1       28     758
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                       0       68     758
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                       1       18     758
0-6 months    GMS-Nepal    NEPAL          Food Secure                         0      441     674
0-6 months    GMS-Nepal    NEPAL          Food Secure                         1       38     674
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure                0       97     674
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure                1        9     674
0-6 months    GMS-Nepal    NEPAL          Food Insecure                       0       80     674
0-6 months    GMS-Nepal    NEPAL          Food Insecure                       1        9     674
0-6 months    JiVitA-3     BANGLADESH     Food Secure                         0     7670   17317
0-6 months    JiVitA-3     BANGLADESH     Food Secure                         1     1001   17317
0-6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure                0     4968   17317
0-6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure                1      793   17317
0-6 months    JiVitA-3     BANGLADESH     Food Insecure                       0     2412   17317
0-6 months    JiVitA-3     BANGLADESH     Food Insecure                       1      473   17317
0-6 months    JiVitA-4     BANGLADESH     Food Secure                         0     2324    5092
0-6 months    JiVitA-4     BANGLADESH     Food Secure                         1      271    5092
0-6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure                0     1639    5092
0-6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure                1      186    5092
0-6 months    JiVitA-4     BANGLADESH     Food Insecure                       0      612    5092
0-6 months    JiVitA-4     BANGLADESH     Food Insecure                       1       60    5092
0-6 months    MAL-ED       BANGLADESH     Food Secure                         0      152     194
0-6 months    MAL-ED       BANGLADESH     Food Secure                         1        9     194
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure                0        3     194
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure                1        1     194
0-6 months    MAL-ED       BANGLADESH     Food Insecure                       0       27     194
0-6 months    MAL-ED       BANGLADESH     Food Insecure                       1        2     194
0-6 months    MAL-ED       BRAZIL         Food Secure                         0        3     129
0-6 months    MAL-ED       BRAZIL         Food Secure                         1        0     129
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure                0        9     129
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure                1        2     129
0-6 months    MAL-ED       BRAZIL         Food Insecure                       0      106     129
0-6 months    MAL-ED       BRAZIL         Food Insecure                       1        9     129
0-6 months    MAL-ED       INDIA          Food Secure                         0      175     212
0-6 months    MAL-ED       INDIA          Food Secure                         1       15     212
0-6 months    MAL-ED       INDIA          Mildly Food Insecure                0        5     212
0-6 months    MAL-ED       INDIA          Mildly Food Insecure                1        0     212
0-6 months    MAL-ED       INDIA          Food Insecure                       0       15     212
0-6 months    MAL-ED       INDIA          Food Insecure                       1        2     212
0-6 months    MAL-ED       NEPAL          Food Secure                         0       92     128
0-6 months    MAL-ED       NEPAL          Food Secure                         1        2     128
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure                0       15     128
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure                1        0     128
0-6 months    MAL-ED       NEPAL          Food Insecure                       0       16     128
0-6 months    MAL-ED       NEPAL          Food Insecure                       1        3     128
0-6 months    MAL-ED       PERU           Food Secure                         0       24     113
0-6 months    MAL-ED       PERU           Food Secure                         1        3     113
0-6 months    MAL-ED       PERU           Mildly Food Insecure                0       27     113
0-6 months    MAL-ED       PERU           Mildly Food Insecure                1        2     113
0-6 months    MAL-ED       PERU           Food Insecure                       0       46     113
0-6 months    MAL-ED       PERU           Food Insecure                       1       11     113
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                         0      117     233
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                         1       15     233
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure                0       17     233
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure                1        2     233
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                       0       76     233
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                       1        6     233
0-6 months    NIH-Birth    BANGLADESH     Food Secure                         0       89     629
0-6 months    NIH-Birth    BANGLADESH     Food Secure                         1        6     629
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure                0      444     629
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure                1       48     629
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                       0       37     629
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                       1        5     629
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                         0      430     758
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                         1       23     758
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure                0      203     758
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure                1       16     758
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                       0       78     758
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                       1        8     758


The following strata were considered:

* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA

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




# Results Detail

## Results Plots
![](/tmp/c69044dc-c99c-4c06-8e2f-7762e0a0bc73/caca7c83-1f0d-4d5e-ae04-23eded8f5302/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c69044dc-c99c-4c06-8e2f-7762e0a0bc73/caca7c83-1f0d-4d5e-ae04-23eded8f5302/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c69044dc-c99c-4c06-8e2f-7762e0a0bc73/caca7c83-1f0d-4d5e-ae04-23eded8f5302/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c69044dc-c99c-4c06-8e2f-7762e0a0bc73/caca7c83-1f0d-4d5e-ae04-23eded8f5302/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country        intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -------------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL          Food Secure            NA                0.2317328   0.1939188   0.2695468
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.2735849   0.1886559   0.3585139
0-24 months   GMS-Nepal    NEPAL          Food Insecure          NA                0.2584270   0.1674102   0.3494437
0-24 months   JiVitA-3     BANGLADESH     Food Secure            NA                0.1682952   0.1593920   0.1771985
0-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                0.1975799   0.1863317   0.2088282
0-24 months   JiVitA-3     BANGLADESH     Food Insecure          NA                0.2327348   0.2159441   0.2495256
0-24 months   JiVitA-4     BANGLADESH     Food Secure            NA                0.2022554   0.1854305   0.2190802
0-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                0.2152029   0.1954965   0.2349092
0-24 months   JiVitA-4     BANGLADESH     Food Insecure          NA                0.1737892   0.1457780   0.2018003
0-24 months   MAL-ED       PERU           Food Secure            NA                0.3333333   0.1547298   0.5119369
0-24 months   MAL-ED       PERU           Mildly Food Insecure   NA                0.1724138   0.0343207   0.3105069
0-24 months   MAL-ED       PERU           Food Insecure          NA                0.3157895   0.1945806   0.4369984
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                0.2651515   0.1896873   0.3406157
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.2631579   0.0647309   0.4615849
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.2926829   0.1939912   0.3913747
0-24 months   NIH-Birth    BANGLADESH     Food Secure            NA                0.1894737   0.1106077   0.2683397
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.3109756   0.2700409   0.3519103
0-24 months   NIH-Birth    BANGLADESH     Food Insecure          NA                0.5952381   0.4466739   0.7438023
0-24 months   NIH-Crypto   BANGLADESH     Food Secure            NA                0.1169978   0.0873798   0.1466158
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.1278539   0.0835987   0.1721091
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                0.2093023   0.1232668   0.2953378
0-6 months    GMS-Nepal    NEPAL          Food Secure            NA                0.0793319   0.0551117   0.1035522
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.0849057   0.0318027   0.1380086
0-6 months    GMS-Nepal    NEPAL          Food Insecure          NA                0.1011236   0.0384403   0.1638069
0-6 months    JiVitA-3     BANGLADESH     Food Secure            NA                0.1154423   0.1076421   0.1232425
0-6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                0.1376497   0.1281939   0.1471055
0-6 months    JiVitA-3     BANGLADESH     Food Insecure          NA                0.1639515   0.1490125   0.1788905
0-6 months    JiVitA-4     BANGLADESH     Food Secure            NA                0.1044316   0.0913610   0.1175022
0-6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                0.1019178   0.0866539   0.1171817
0-6 months    JiVitA-4     BANGLADESH     Food Insecure          NA                0.0892857   0.0692845   0.1092870
0-6 months    NIH-Birth    BANGLADESH     Food Secure            NA                0.0631579   0.0142050   0.1121108
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.0975610   0.0713213   0.1238006
0-6 months    NIH-Birth    BANGLADESH     Food Insecure          NA                0.1190476   0.0210297   0.2170655
0-6 months    NIH-Crypto   BANGLADESH     Food Secure            NA                0.0507726   0.0305431   0.0710021
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.0730594   0.0385707   0.1075480
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure          NA                0.0930233   0.0315934   0.1544531


### Parameter: E(Y)


agecat        studyid      country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL          NA                   NA                0.2418398   0.2094890   0.2741906
0-24 months   JiVitA-3     BANGLADESH     NA                   NA                0.1887802   0.1818268   0.1957336
0-24 months   JiVitA-4     BANGLADESH     NA                   NA                0.2032234   0.1913541   0.2150928
0-24 months   MAL-ED       PERU           NA                   NA                0.2831858   0.1997451   0.3666266
0-24 months   MAL-ED       SOUTH AFRICA   NA                   NA                0.2746781   0.2172425   0.3321138
0-24 months   NIH-Birth    BANGLADESH     NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   NIH-Crypto   BANGLADESH     NA                   NA                0.1306069   0.1066024   0.1546113
0-6 months    GMS-Nepal    NEPAL          NA                   NA                0.0830861   0.0622330   0.1039391
0-6 months    JiVitA-3     BANGLADESH     NA                   NA                0.1309118   0.1250608   0.1367629
0-6 months    JiVitA-4     BANGLADESH     NA                   NA                0.1015318   0.0925643   0.1104993
0-6 months    NIH-Birth    BANGLADESH     NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    NIH-Crypto   BANGLADESH     NA                   NA                0.0620053   0.0448256   0.0791849


### Parameter: RR


agecat        studyid      country        intervention_level     baseline_level     estimate    ci_lower   ci_upper
------------  -----------  -------------  ---------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal    NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       1.1806051   0.8313716   1.676541
0-24 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       1.1151938   0.7564394   1.644094
0-24 months   JiVitA-3     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       1.1740082   1.0912772   1.263011
0-24 months   JiVitA-3     BANGLADESH     Food Insecure          Food Secure       1.3828962   1.2650945   1.511667
0-24 months   JiVitA-4     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       1.0640157   0.9414328   1.202560
0-24 months   JiVitA-4     BANGLADESH     Food Insecure          Food Secure       0.8592562   0.7138157   1.034330
0-24 months   MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure       0.5172414   0.1973289   1.355801
0-24 months   MAL-ED       PERU           Food Insecure          Food Secure       0.9473684   0.4900879   1.831318
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       0.9924812   0.4433061   2.221984
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       1.1038328   0.7100190   1.716076
0-24 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       1.6412602   1.0606786   2.539634
0-24 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       3.1415344   1.9335912   5.104098
0-24 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.0927888   0.7116998   1.677937
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.7889425   1.1039205   2.899045
0-6 months    GMS-Nepal    NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       1.0702582   0.5336190   2.146574
0-6 months    GMS-Nepal    NEPAL          Food Insecure          Food Secure       1.2746895   0.6387309   2.543846
0-6 months    JiVitA-3     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       1.1923683   1.0877326   1.307070
0-6 months    JiVitA-3     BANGLADESH     Food Insecure          Food Secure       1.4202030   1.2680679   1.590590
0-6 months    JiVitA-4     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       0.9759288   0.8008476   1.189286
0-6 months    JiVitA-4     BANGLADESH     Food Insecure          Food Secure       0.8549684   0.6596413   1.108134
0-6 months    NIH-Birth    BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       1.5447154   0.6800516   3.508772
0-6 months    NIH-Birth    BANGLADESH     Food Insecure          Food Secure       1.8849206   0.6084161   5.839632
0-6 months    NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.4389518   0.7758332   2.668850
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.8321537   0.8472446   3.962005


### Parameter: PAR


agecat        studyid      country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0101070   -0.0109659   0.0311798
0-24 months   JiVitA-3     BANGLADESH     Food Secure          NA                 0.0204850    0.0141818   0.0267882
0-24 months   JiVitA-4     BANGLADESH     Food Secure          NA                 0.0009681   -0.0107465   0.0126826
0-24 months   MAL-ED       PERU           Food Secure          NA                -0.0501475   -0.2038280   0.1035331
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0095266   -0.0408834   0.0599366
0-24 months   NIH-Birth    BANGLADESH     Food Secure          NA                 0.1221320    0.0469444   0.1973196
0-24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0136091   -0.0065139   0.0337320
0-6 months    GMS-Nepal    NEPAL          Food Secure          NA                 0.0037541   -0.0099451   0.0174533
0-6 months    JiVitA-3     BANGLADESH     Food Secure          NA                 0.0154695    0.0100476   0.0208915
0-6 months    JiVitA-4     BANGLADESH     Food Secure          NA                -0.0028998   -0.0119906   0.0061911
0-6 months    NIH-Birth    BANGLADESH     Food Secure          NA                 0.0306418   -0.0161820   0.0774656
0-6 months    NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0112327   -0.0034383   0.0259036


### Parameter: PAF


agecat        studyid      country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0417921   -0.0493518   0.1250195
0-24 months   JiVitA-3     BANGLADESH     Food Secure          NA                 0.1085124    0.0746595   0.1411269
0-24 months   JiVitA-4     BANGLADESH     Food Secure          NA                 0.0047635   -0.0545880   0.0607747
0-24 months   MAL-ED       PERU           Food Secure          NA                -0.1770833   -0.8662521   0.2575895
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0346828   -0.1674004   0.2017843
0-24 months   NIH-Birth    BANGLADESH     Food Secure          NA                 0.3919441    0.0986469   0.5898035
0-24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.1041987   -0.0628818   0.2450149
0-6 months    GMS-Nepal    NEPAL          Food Secure          NA                 0.0451834   -0.1344042   0.1963405
0-6 months    JiVitA-3     BANGLADESH     Food Secure          NA                 0.1181676    0.0756534   0.1587265
0-6 months    JiVitA-4     BANGLADESH     Food Secure          NA                -0.0285604   -0.1220175   0.0571124
0-6 months    NIH-Birth    BANGLADESH     Food Secure          NA                 0.3266726   -0.4017699   0.6765733
0-6 months    NIH-Crypto   BANGLADESH     Food Secure          NA                 0.1811564   -0.0867976   0.3830453
