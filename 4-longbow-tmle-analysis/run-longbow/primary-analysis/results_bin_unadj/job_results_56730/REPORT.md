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

**Outcome Variable:** stunted

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

agecat      studyid      country        hfoodsec                stunted   n_cell     n
----------  -----------  -------------  ---------------------  --------  -------  ----
Birth       GMS-Nepal    NEPAL          Food Secure                   0      401   672
Birth       GMS-Nepal    NEPAL          Food Secure                   1       76   672
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure          0       86   672
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure          1       20   672
Birth       GMS-Nepal    NEPAL          Food Insecure                 0       69   672
Birth       GMS-Nepal    NEPAL          Food Insecure                 1       20   672
Birth       MAL-ED       BANGLADESH     Food Secure                   0      121   172
Birth       MAL-ED       BANGLADESH     Food Secure                   1       23   172
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure          0        3   172
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure          1        1   172
Birth       MAL-ED       BANGLADESH     Food Insecure                 0       19   172
Birth       MAL-ED       BANGLADESH     Food Insecure                 1        5   172
Birth       MAL-ED       BRAZIL         Food Secure                   0        0    28
Birth       MAL-ED       BRAZIL         Food Secure                   1        0    28
Birth       MAL-ED       BRAZIL         Mildly Food Insecure          0        3    28
Birth       MAL-ED       BRAZIL         Mildly Food Insecure          1        1    28
Birth       MAL-ED       BRAZIL         Food Insecure                 0       20    28
Birth       MAL-ED       BRAZIL         Food Insecure                 1        4    28
Birth       MAL-ED       INDIA          Food Secure                   0       28    37
Birth       MAL-ED       INDIA          Food Secure                   1        6    37
Birth       MAL-ED       INDIA          Mildly Food Insecure          0        1    37
Birth       MAL-ED       INDIA          Mildly Food Insecure          1        0    37
Birth       MAL-ED       INDIA          Food Insecure                 0        1    37
Birth       MAL-ED       INDIA          Food Insecure                 1        1    37
Birth       MAL-ED       NEPAL          Food Secure                   0       10    14
Birth       MAL-ED       NEPAL          Food Secure                   1        0    14
Birth       MAL-ED       NEPAL          Mildly Food Insecure          0        1    14
Birth       MAL-ED       NEPAL          Mildly Food Insecure          1        0    14
Birth       MAL-ED       NEPAL          Food Insecure                 0        3    14
Birth       MAL-ED       NEPAL          Food Insecure                 1        0    14
Birth       MAL-ED       PERU           Food Secure                   0       20    91
Birth       MAL-ED       PERU           Food Secure                   1        4    91
Birth       MAL-ED       PERU           Mildly Food Insecure          0       21    91
Birth       MAL-ED       PERU           Mildly Food Insecure          1        2    91
Birth       MAL-ED       PERU           Food Insecure                 0       39    91
Birth       MAL-ED       PERU           Food Insecure                 1        5    91
Birth       MAL-ED       SOUTH AFRICA   Food Secure                   0       41    88
Birth       MAL-ED       SOUTH AFRICA   Food Secure                   1        4    88
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0        9    88
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0    88
Birth       MAL-ED       SOUTH AFRICA   Food Insecure                 0       31    88
Birth       MAL-ED       SOUTH AFRICA   Food Insecure                 1        3    88
Birth       NIH-Birth    BANGLADESH     Food Secure                   0       78   608
Birth       NIH-Birth    BANGLADESH     Food Secure                   1       12   608
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure          0      404   608
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure          1       74   608
Birth       NIH-Birth    BANGLADESH     Food Insecure                 0       29   608
Birth       NIH-Birth    BANGLADESH     Food Insecure                 1       11   608
Birth       NIH-Crypto   BANGLADESH     Food Secure                   0      387   732
Birth       NIH-Crypto   BANGLADESH     Food Secure                   1       52   732
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      175   732
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       34   732
Birth       NIH-Crypto   BANGLADESH     Food Insecure                 0       69   732
Birth       NIH-Crypto   BANGLADESH     Food Insecure                 1       15   732
6 months    GMS-Nepal    NEPAL          Food Secure                   0      314   546
6 months    GMS-Nepal    NEPAL          Food Secure                   1       82   546
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure          0       54   546
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure          1       22   546
6 months    GMS-Nepal    NEPAL          Food Insecure                 0       60   546
6 months    GMS-Nepal    NEPAL          Food Insecure                 1       14   546
6 months    MAL-ED       BANGLADESH     Food Secure                   0      129   193
6 months    MAL-ED       BANGLADESH     Food Secure                   1       31   193
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure          0        2   193
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure          1        2   193
6 months    MAL-ED       BANGLADESH     Food Insecure                 0       25   193
6 months    MAL-ED       BANGLADESH     Food Insecure                 1        4   193
6 months    MAL-ED       BRAZIL         Food Secure                   0        3   129
6 months    MAL-ED       BRAZIL         Food Secure                   1        0   129
6 months    MAL-ED       BRAZIL         Mildly Food Insecure          0       11   129
6 months    MAL-ED       BRAZIL         Mildly Food Insecure          1        0   129
6 months    MAL-ED       BRAZIL         Food Insecure                 0      113   129
6 months    MAL-ED       BRAZIL         Food Insecure                 1        2   129
6 months    MAL-ED       INDIA          Food Secure                   0      153   212
6 months    MAL-ED       INDIA          Food Secure                   1       37   212
6 months    MAL-ED       INDIA          Mildly Food Insecure          0        5   212
6 months    MAL-ED       INDIA          Mildly Food Insecure          1        0   212
6 months    MAL-ED       INDIA          Food Insecure                 0       14   212
6 months    MAL-ED       INDIA          Food Insecure                 1        3   212
6 months    MAL-ED       NEPAL          Food Secure                   0       91   128
6 months    MAL-ED       NEPAL          Food Secure                   1        3   128
6 months    MAL-ED       NEPAL          Mildly Food Insecure          0       15   128
6 months    MAL-ED       NEPAL          Mildly Food Insecure          1        0   128
6 months    MAL-ED       NEPAL          Food Insecure                 0       15   128
6 months    MAL-ED       NEPAL          Food Insecure                 1        4   128
6 months    MAL-ED       PERU           Food Secure                   0       19   111
6 months    MAL-ED       PERU           Food Secure                   1        8   111
6 months    MAL-ED       PERU           Mildly Food Insecure          0       22   111
6 months    MAL-ED       PERU           Mildly Food Insecure          1        6   111
6 months    MAL-ED       PERU           Food Insecure                 0       41   111
6 months    MAL-ED       PERU           Food Insecure                 1       15   111
6 months    MAL-ED       SOUTH AFRICA   Food Secure                   0      104   228
6 months    MAL-ED       SOUTH AFRICA   Food Secure                   1       25   228
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       15   228
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        3   228
6 months    MAL-ED       SOUTH AFRICA   Food Insecure                 0       65   228
6 months    MAL-ED       SOUTH AFRICA   Food Insecure                 1       16   228
6 months    NIH-Birth    BANGLADESH     Food Secure                   0       60   537
6 months    NIH-Birth    BANGLADESH     Food Secure                   1       20   537
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure          0      308   537
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure          1      109   537
6 months    NIH-Birth    BANGLADESH     Food Insecure                 0       25   537
6 months    NIH-Birth    BANGLADESH     Food Insecure                 1       15   537
6 months    NIH-Crypto   BANGLADESH     Food Secure                   0      342   715
6 months    NIH-Crypto   BANGLADESH     Food Secure                   1       85   715
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      158   715
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       46   715
6 months    NIH-Crypto   BANGLADESH     Food Insecure                 0       65   715
6 months    NIH-Crypto   BANGLADESH     Food Insecure                 1       19   715
24 months   GMS-Nepal    NEPAL          Food Secure                   0      202   478
24 months   GMS-Nepal    NEPAL          Food Secure                   1      140   478
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure          0       29   478
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure          1       38   478
24 months   GMS-Nepal    NEPAL          Food Insecure                 0       36   478
24 months   GMS-Nepal    NEPAL          Food Insecure                 1       33   478
24 months   MAL-ED       BANGLADESH     Food Secure                   0       87   194
24 months   MAL-ED       BANGLADESH     Food Secure                   1       74   194
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure          0        1   194
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure          1        3   194
24 months   MAL-ED       BANGLADESH     Food Insecure                 0       12   194
24 months   MAL-ED       BANGLADESH     Food Insecure                 1       17   194
24 months   MAL-ED       BRAZIL         Food Secure                   0        3   129
24 months   MAL-ED       BRAZIL         Food Secure                   1        0   129
24 months   MAL-ED       BRAZIL         Mildly Food Insecure          0       11   129
24 months   MAL-ED       BRAZIL         Mildly Food Insecure          1        0   129
24 months   MAL-ED       BRAZIL         Food Insecure                 0      112   129
24 months   MAL-ED       BRAZIL         Food Insecure                 1        3   129
24 months   MAL-ED       INDIA          Food Secure                   0      107   212
24 months   MAL-ED       INDIA          Food Secure                   1       83   212
24 months   MAL-ED       INDIA          Mildly Food Insecure          0        5   212
24 months   MAL-ED       INDIA          Mildly Food Insecure          1        0   212
24 months   MAL-ED       INDIA          Food Insecure                 0        9   212
24 months   MAL-ED       INDIA          Food Insecure                 1        8   212
24 months   MAL-ED       NEPAL          Food Secure                   0       76   128
24 months   MAL-ED       NEPAL          Food Secure                   1       18   128
24 months   MAL-ED       NEPAL          Mildly Food Insecure          0       12   128
24 months   MAL-ED       NEPAL          Mildly Food Insecure          1        3   128
24 months   MAL-ED       NEPAL          Food Insecure                 0       10   128
24 months   MAL-ED       NEPAL          Food Insecure                 1        9   128
24 months   MAL-ED       PERU           Food Secure                   0       14   107
24 months   MAL-ED       PERU           Food Secure                   1       12   107
24 months   MAL-ED       PERU           Mildly Food Insecure          0       20   107
24 months   MAL-ED       PERU           Mildly Food Insecure          1        7   107
24 months   MAL-ED       PERU           Food Insecure                 0       33   107
24 months   MAL-ED       PERU           Food Insecure                 1       21   107
24 months   MAL-ED       SOUTH AFRICA   Food Secure                   0       88   228
24 months   MAL-ED       SOUTH AFRICA   Food Secure                   1       41   228
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       12   228
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        6   228
24 months   MAL-ED       SOUTH AFRICA   Food Insecure                 0       49   228
24 months   MAL-ED       SOUTH AFRICA   Food Insecure                 1       32   228
24 months   NIH-Birth    BANGLADESH     Food Secure                   0       45   429
24 months   NIH-Birth    BANGLADESH     Food Secure                   1       23   429
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure          0      131   429
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure          1      197   429
24 months   NIH-Birth    BANGLADESH     Food Insecure                 0        9   429
24 months   NIH-Birth    BANGLADESH     Food Insecure                 1       24   429
24 months   NIH-Crypto   BANGLADESH     Food Secure                   0      254   514
24 months   NIH-Crypto   BANGLADESH     Food Secure                   1       80   514
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure          0       91   514
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       33   514
24 months   NIH-Crypto   BANGLADESH     Food Insecure                 0       37   514
24 months   NIH-Crypto   BANGLADESH     Food Insecure                 1       19   514


The following strata were considered:

* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL

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
![](/tmp/15cfd374-fd11-41a3-8cb5-589bec0f87c1/1cecd80e-4897-4deb-bf8a-296e171eb77d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/15cfd374-fd11-41a3-8cb5-589bec0f87c1/1cecd80e-4897-4deb-bf8a-296e171eb77d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/15cfd374-fd11-41a3-8cb5-589bec0f87c1/1cecd80e-4897-4deb-bf8a-296e171eb77d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/15cfd374-fd11-41a3-8cb5-589bec0f87c1/1cecd80e-4897-4deb-bf8a-296e171eb77d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country        intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -------------  ---------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal    NEPAL          Food Secure            NA                0.1593291   0.1264612   0.1921971
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.1886792   0.1141414   0.2632171
Birth       GMS-Nepal    NEPAL          Food Insecure          NA                0.2247191   0.1379378   0.3115004
Birth       NIH-Birth    BANGLADESH     Food Secure            NA                0.1333333   0.0630456   0.2036211
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.1548117   0.1223576   0.1872659
Birth       NIH-Birth    BANGLADESH     Food Insecure          NA                0.2750000   0.1365124   0.4134876
Birth       NIH-Crypto   BANGLADESH     Food Secure            NA                0.1184510   0.0882024   0.1486996
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.1626794   0.1126087   0.2127502
Birth       NIH-Crypto   BANGLADESH     Food Insecure          NA                0.1785714   0.0966125   0.2605303
6 months    GMS-Nepal    NEPAL          Food Secure            NA                0.2070707   0.1671245   0.2470169
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.2894737   0.1874188   0.3915286
6 months    GMS-Nepal    NEPAL          Food Insecure          NA                0.1891892   0.0998713   0.2785070
6 months    MAL-ED       PERU           Food Secure            NA                0.2962963   0.1232791   0.4693135
6 months    MAL-ED       PERU           Mildly Food Insecure   NA                0.2142857   0.0616124   0.3669590
6 months    MAL-ED       PERU           Food Insecure          NA                0.2678571   0.1513457   0.3843686
6 months    NIH-Birth    BANGLADESH     Food Secure            NA                0.2500000   0.1550252   0.3449748
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.2613909   0.2191787   0.3036030
6 months    NIH-Birth    BANGLADESH     Food Insecure          NA                0.3750000   0.2248316   0.5251684
6 months    NIH-Crypto   BANGLADESH     Food Secure            NA                0.1990632   0.1611638   0.2369627
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2254902   0.1681031   0.2828773
6 months    NIH-Crypto   BANGLADESH     Food Insecure          NA                0.2261905   0.1366609   0.3157201
24 months   GMS-Nepal    NEPAL          Food Secure            NA                0.4093567   0.3571888   0.4615246
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.5671642   0.4484011   0.6859273
24 months   GMS-Nepal    NEPAL          Food Insecure          NA                0.4782609   0.3602730   0.5962488
24 months   MAL-ED       PERU           Food Secure            NA                0.4615385   0.2690159   0.6540610
24 months   MAL-ED       PERU           Mildly Food Insecure   NA                0.2592593   0.0931838   0.4253347
24 months   MAL-ED       PERU           Food Insecure          NA                0.3888889   0.2582528   0.5195249
24 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                0.3178295   0.2373006   0.3983583
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.3333333   0.1150804   0.5515863
24 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.3950617   0.2883657   0.5017577
24 months   NIH-Birth    BANGLADESH     Food Secure            NA                0.3382353   0.2256552   0.4508154
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.6006098   0.5475442   0.6536753
24 months   NIH-Birth    BANGLADESH     Food Insecure          NA                0.7272727   0.5751441   0.8794013
24 months   NIH-Crypto   BANGLADESH     Food Secure            NA                0.2395210   0.1937054   0.2853365
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2661290   0.1882687   0.3439893
24 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                0.3392857   0.2151586   0.4634128


### Parameter: E(Y)


agecat      studyid      country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal    NEPAL          NA                   NA                0.1726190   0.1440245   0.2012136
Birth       NIH-Birth    BANGLADESH     NA                   NA                0.1595395   0.1304091   0.1886699
Birth       NIH-Crypto   BANGLADESH     NA                   NA                0.1379781   0.1129774   0.1629789
6 months    GMS-Nepal    NEPAL          NA                   NA                0.2161172   0.1815615   0.2506729
6 months    MAL-ED       PERU           NA                   NA                0.2612613   0.1791629   0.3433597
6 months    NIH-Birth    BANGLADESH     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    NIH-Crypto   BANGLADESH     NA                   NA                0.2097902   0.1799252   0.2396552
24 months   GMS-Nepal    NEPAL          NA                   NA                0.4414226   0.3968613   0.4859839
24 months   MAL-ED       PERU           NA                   NA                0.3738318   0.2817277   0.4659358
24 months   MAL-ED       SOUTH AFRICA   NA                   NA                0.3464912   0.2845889   0.4083936
24 months   NIH-Birth    BANGLADESH     NA                   NA                0.5687646   0.5218455   0.6156837
24 months   NIH-Crypto   BANGLADESH     NA                   NA                0.2568093   0.2190047   0.2946140


### Parameter: RR


agecat      studyid      country        intervention_level     baseline_level     estimate    ci_lower   ci_upper
----------  -----------  -------------  ---------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal    NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       1.1842105   0.7583637   1.849185
Birth       GMS-Nepal    NEPAL          Food Insecure          Food Secure       1.4104080   0.9103349   2.185186
Birth       NIH-Birth    BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       1.1610879   0.6583920   2.047602
Birth       NIH-Birth    BANGLADESH     Food Insecure          Food Secure       2.0625000   0.9948915   4.275749
Birth       NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.3733898   0.9206727   2.048719
Birth       NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.5075549   0.8915974   2.549045
6 months    GMS-Nepal    NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       1.3979461   0.9353102   2.089417
6 months    GMS-Nepal    NEPAL          Food Insecure          Food Secure       0.9136454   0.5486394   1.521487
6 months    MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    MAL-ED       PERU           Mildly Food Insecure   Food Secure       0.7232143   0.2878706   1.816924
6 months    MAL-ED       PERU           Food Insecure          Food Secure       0.9040179   0.4364671   1.872417
6 months    NIH-Birth    BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       1.0455635   0.6919493   1.579889
6 months    NIH-Birth    BANGLADESH     Food Insecure          Food Secure       1.5000000   0.8637121   2.605035
6 months    NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.1327566   0.8243345   1.556574
6 months    NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.1362745   0.7323705   1.762933
24 months   GMS-Nepal    NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       1.3855011   1.0842982   1.770374
24 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       1.1683230   0.8850563   1.542250
24 months   MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure       0.5617284   0.2615430   1.206451
24 months   MAL-ED       PERU           Food Insecure          Food Secure       0.8425926   0.4931961   1.439513
24 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       1.0487805   0.5197306   2.116366
24 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       1.2429991   0.8583073   1.800109
24 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       1.7757158   1.2583875   2.505720
24 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       2.1501976   1.4512752   3.185716
24 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.1110887   0.7833260   1.575995
24 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.4165179   0.9374108   2.140495


### Parameter: PAR


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal    NEPAL          Food Secure          NA                 0.0132899   -0.0057970   0.0323768
Birth       NIH-Birth    BANGLADESH     Food Secure          NA                 0.0262061   -0.0395688   0.0919811
Birth       NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0195271   -0.0015096   0.0405638
6 months    GMS-Nepal    NEPAL          Food Secure          NA                 0.0090465   -0.0127516   0.0308446
6 months    MAL-ED       PERU           Food Secure          NA                -0.0350350   -0.1837366   0.1136665
6 months    NIH-Birth    BANGLADESH     Food Secure          NA                 0.0181564   -0.0698159   0.1061287
6 months    NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0107270   -0.0140254   0.0354794
24 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0320659    0.0035553   0.0605764
24 months   MAL-ED       PERU           Food Secure          NA                -0.0877067   -0.2536441   0.0782307
24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0286618   -0.0259150   0.0832385
24 months   NIH-Birth    BANGLADESH     Food Secure          NA                 0.2305293    0.1263288   0.3347297
24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0172884   -0.0110010   0.0455777


### Parameter: PAF


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal    NEPAL          Food Secure          NA                 0.0769898   -0.0399674   0.1807937
Birth       NIH-Birth    BANGLADESH     Food Secure          NA                 0.1642612   -0.3674953   0.4892418
Birth       NIH-Crypto   BANGLADESH     Food Secure          NA                 0.1415233   -0.0234423   0.2798985
6 months    GMS-Nepal    NEPAL          Food Secure          NA                 0.0418593   -0.0643870   0.1375001
6 months    MAL-ED       PERU           Food Secure          NA                -0.1340996   -0.8728000   0.3132305
6 months    NIH-Birth    BANGLADESH     Food Secure          NA                 0.0677083   -0.3254250   0.3442347
6 months    NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0511319   -0.0743775   0.1619793
24 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0726421    0.0055444   0.1352126
24 months   MAL-ED       PERU           Food Secure          NA                -0.2346154   -0.7713345   0.1394764
24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0827200   -0.0891025   0.2274349
24 months   NIH-Birth    BANGLADESH     Food Secure          NA                 0.4053158    0.1884019   0.5642557
24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0673199   -0.0494277   0.1710795
