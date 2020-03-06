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

agecat        studyid      country        hfoodsec                ever_sstunted   n_cell     n
------------  -----------  -------------  ---------------------  --------------  -------  ----
0-24 months   GMS-Nepal    NEPAL          Food Secure                         0      368   674
0-24 months   GMS-Nepal    NEPAL          Food Secure                         1      111   674
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure                0       77   674
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure                1       29   674
0-24 months   GMS-Nepal    NEPAL          Food Insecure                       0       66   674
0-24 months   GMS-Nepal    NEPAL          Food Insecure                       1       23   674
0-24 months   MAL-ED       BANGLADESH     Food Secure                         0      131   194
0-24 months   MAL-ED       BANGLADESH     Food Secure                         1       30   194
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure                0        2   194
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure                1        2   194
0-24 months   MAL-ED       BANGLADESH     Food Insecure                       0       17   194
0-24 months   MAL-ED       BANGLADESH     Food Insecure                       1       12   194
0-24 months   MAL-ED       BRAZIL         Food Secure                         0        3   129
0-24 months   MAL-ED       BRAZIL         Food Secure                         1        0   129
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure                0        9   129
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure                1        2   129
0-24 months   MAL-ED       BRAZIL         Food Insecure                       0      104   129
0-24 months   MAL-ED       BRAZIL         Food Insecure                       1       11   129
0-24 months   MAL-ED       INDIA          Food Secure                         0      143   212
0-24 months   MAL-ED       INDIA          Food Secure                         1       47   212
0-24 months   MAL-ED       INDIA          Mildly Food Insecure                0        4   212
0-24 months   MAL-ED       INDIA          Mildly Food Insecure                1        1   212
0-24 months   MAL-ED       INDIA          Food Insecure                       0       13   212
0-24 months   MAL-ED       INDIA          Food Insecure                       1        4   212
0-24 months   MAL-ED       NEPAL          Food Secure                         0       86   128
0-24 months   MAL-ED       NEPAL          Food Secure                         1        8   128
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure                0       15   128
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure                1        0   128
0-24 months   MAL-ED       NEPAL          Food Insecure                       0       13   128
0-24 months   MAL-ED       NEPAL          Food Insecure                       1        6   128
0-24 months   MAL-ED       PERU           Food Secure                         0       18   113
0-24 months   MAL-ED       PERU           Food Secure                         1        9   113
0-24 months   MAL-ED       PERU           Mildly Food Insecure                0       24   113
0-24 months   MAL-ED       PERU           Mildly Food Insecure                1        5   113
0-24 months   MAL-ED       PERU           Food Insecure                       0       39   113
0-24 months   MAL-ED       PERU           Food Insecure                       1       18   113
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                         0       97   233
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                         1       35   233
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure                0       14   233
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure                1        5   233
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                       0       58   233
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                       1       24   233
0-24 months   NIH-Birth    BANGLADESH     Food Secure                         0       77   629
0-24 months   NIH-Birth    BANGLADESH     Food Secure                         1       18   629
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure                0      339   629
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure                1      153   629
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                       0       17   629
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                       1       25   629
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                         0      400   758
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                         1       53   758
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure                0      191   758
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure                1       28   758
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                       0       68   758
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                       1       18   758
0-6 months    GMS-Nepal    NEPAL          Food Secure                         0      441   674
0-6 months    GMS-Nepal    NEPAL          Food Secure                         1       38   674
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure                0       97   674
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure                1        9   674
0-6 months    GMS-Nepal    NEPAL          Food Insecure                       0       80   674
0-6 months    GMS-Nepal    NEPAL          Food Insecure                       1        9   674
0-6 months    MAL-ED       BANGLADESH     Food Secure                         0      152   194
0-6 months    MAL-ED       BANGLADESH     Food Secure                         1        9   194
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure                0        3   194
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure                1        1   194
0-6 months    MAL-ED       BANGLADESH     Food Insecure                       0       27   194
0-6 months    MAL-ED       BANGLADESH     Food Insecure                       1        2   194
0-6 months    MAL-ED       BRAZIL         Food Secure                         0        3   129
0-6 months    MAL-ED       BRAZIL         Food Secure                         1        0   129
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure                0        9   129
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure                1        2   129
0-6 months    MAL-ED       BRAZIL         Food Insecure                       0      106   129
0-6 months    MAL-ED       BRAZIL         Food Insecure                       1        9   129
0-6 months    MAL-ED       INDIA          Food Secure                         0      175   212
0-6 months    MAL-ED       INDIA          Food Secure                         1       15   212
0-6 months    MAL-ED       INDIA          Mildly Food Insecure                0        5   212
0-6 months    MAL-ED       INDIA          Mildly Food Insecure                1        0   212
0-6 months    MAL-ED       INDIA          Food Insecure                       0       15   212
0-6 months    MAL-ED       INDIA          Food Insecure                       1        2   212
0-6 months    MAL-ED       NEPAL          Food Secure                         0       92   128
0-6 months    MAL-ED       NEPAL          Food Secure                         1        2   128
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure                0       15   128
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure                1        0   128
0-6 months    MAL-ED       NEPAL          Food Insecure                       0       16   128
0-6 months    MAL-ED       NEPAL          Food Insecure                       1        3   128
0-6 months    MAL-ED       PERU           Food Secure                         0       24   113
0-6 months    MAL-ED       PERU           Food Secure                         1        3   113
0-6 months    MAL-ED       PERU           Mildly Food Insecure                0       27   113
0-6 months    MAL-ED       PERU           Mildly Food Insecure                1        2   113
0-6 months    MAL-ED       PERU           Food Insecure                       0       46   113
0-6 months    MAL-ED       PERU           Food Insecure                       1       11   113
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                         0      117   233
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                         1       15   233
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure                0       17   233
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure                1        2   233
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                       0       76   233
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                       1        6   233
0-6 months    NIH-Birth    BANGLADESH     Food Secure                         0       89   629
0-6 months    NIH-Birth    BANGLADESH     Food Secure                         1        6   629
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure                0      444   629
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure                1       48   629
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                       0       37   629
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                       1        5   629
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                         0      430   758
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                         1       23   758
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure                0      203   758
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure                1       16   758
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                       0       78   758
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                       1        8   758


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




# Results Detail

## Results Plots
![](/tmp/97528903-6771-4e31-9cd6-0b96698bdf7f/3e843e8c-33d1-47f3-9c70-1ed59f32033f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/97528903-6771-4e31-9cd6-0b96698bdf7f/3e843e8c-33d1-47f3-9c70-1ed59f32033f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/97528903-6771-4e31-9cd6-0b96698bdf7f/3e843e8c-33d1-47f3-9c70-1ed59f32033f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/97528903-6771-4e31-9cd6-0b96698bdf7f/3e843e8c-33d1-47f3-9c70-1ed59f32033f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country        intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -------------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL          Food Secure            NA                0.2317328   0.1939188   0.2695468
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.2735849   0.1886559   0.3585139
0-24 months   GMS-Nepal    NEPAL          Food Insecure          NA                0.2584270   0.1674102   0.3494437
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
0-24 months   MAL-ED       PERU           NA                   NA                0.2831858   0.1997451   0.3666266
0-24 months   MAL-ED       SOUTH AFRICA   NA                   NA                0.2746781   0.2172425   0.3321138
0-24 months   NIH-Birth    BANGLADESH     NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   NIH-Crypto   BANGLADESH     NA                   NA                0.1306069   0.1066024   0.1546113
0-6 months    GMS-Nepal    NEPAL          NA                   NA                0.0830861   0.0622330   0.1039391
0-6 months    NIH-Birth    BANGLADESH     NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    NIH-Crypto   BANGLADESH     NA                   NA                0.0620053   0.0448256   0.0791849


### Parameter: RR


agecat        studyid      country        intervention_level     baseline_level     estimate    ci_lower   ci_upper
------------  -----------  -------------  ---------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal    NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       1.1806051   0.8313716   1.676541
0-24 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       1.1151938   0.7564394   1.644094
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
0-24 months   MAL-ED       PERU           Food Secure          NA                -0.0501475   -0.2038280   0.1035331
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0095266   -0.0408834   0.0599366
0-24 months   NIH-Birth    BANGLADESH     Food Secure          NA                 0.1221320    0.0469444   0.1973196
0-24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0136091   -0.0065139   0.0337320
0-6 months    GMS-Nepal    NEPAL          Food Secure          NA                 0.0037541   -0.0099451   0.0174533
0-6 months    NIH-Birth    BANGLADESH     Food Secure          NA                 0.0306418   -0.0161820   0.0774656
0-6 months    NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0112327   -0.0034383   0.0259036


### Parameter: PAF


agecat        studyid      country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0417921   -0.0493518   0.1250195
0-24 months   MAL-ED       PERU           Food Secure          NA                -0.1770833   -0.8662521   0.2575895
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0346828   -0.1674004   0.2017843
0-24 months   NIH-Birth    BANGLADESH     Food Secure          NA                 0.3919441    0.0986469   0.5898035
0-24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.1041987   -0.0628818   0.2450149
0-6 months    GMS-Nepal    NEPAL          Food Secure          NA                 0.0451834   -0.1344042   0.1963405
0-6 months    NIH-Birth    BANGLADESH     Food Secure          NA                 0.3266726   -0.4017699   0.6765733
0-6 months    NIH-Crypto   BANGLADESH     Food Secure          NA                 0.1811564   -0.0867976   0.3830453
