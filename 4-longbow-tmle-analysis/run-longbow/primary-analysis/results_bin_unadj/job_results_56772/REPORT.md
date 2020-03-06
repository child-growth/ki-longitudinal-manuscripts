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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid      country        hfoodsec                sstunted   n_cell     n
----------  -----------  -------------  ---------------------  ---------  -------  ----
Birth       GMS-Nepal    NEPAL          Food Secure                    0      460   672
Birth       GMS-Nepal    NEPAL          Food Secure                    1       17   672
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure           0      101   672
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure           1        5   672
Birth       GMS-Nepal    NEPAL          Food Insecure                  0       81   672
Birth       GMS-Nepal    NEPAL          Food Insecure                  1        8   672
Birth       MAL-ED       BANGLADESH     Food Secure                    0      140   172
Birth       MAL-ED       BANGLADESH     Food Secure                    1        4   172
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure           0        3   172
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure           1        1   172
Birth       MAL-ED       BANGLADESH     Food Insecure                  0       23   172
Birth       MAL-ED       BANGLADESH     Food Insecure                  1        1   172
Birth       MAL-ED       BRAZIL         Food Secure                    0        0    28
Birth       MAL-ED       BRAZIL         Food Secure                    1        0    28
Birth       MAL-ED       BRAZIL         Mildly Food Insecure           0        4    28
Birth       MAL-ED       BRAZIL         Mildly Food Insecure           1        0    28
Birth       MAL-ED       BRAZIL         Food Insecure                  0       22    28
Birth       MAL-ED       BRAZIL         Food Insecure                  1        2    28
Birth       MAL-ED       INDIA          Food Secure                    0       32    37
Birth       MAL-ED       INDIA          Food Secure                    1        2    37
Birth       MAL-ED       INDIA          Mildly Food Insecure           0        1    37
Birth       MAL-ED       INDIA          Mildly Food Insecure           1        0    37
Birth       MAL-ED       INDIA          Food Insecure                  0        2    37
Birth       MAL-ED       INDIA          Food Insecure                  1        0    37
Birth       MAL-ED       NEPAL          Food Secure                    0       10    14
Birth       MAL-ED       NEPAL          Food Secure                    1        0    14
Birth       MAL-ED       NEPAL          Mildly Food Insecure           0        1    14
Birth       MAL-ED       NEPAL          Mildly Food Insecure           1        0    14
Birth       MAL-ED       NEPAL          Food Insecure                  0        3    14
Birth       MAL-ED       NEPAL          Food Insecure                  1        0    14
Birth       MAL-ED       PERU           Food Secure                    0       24    91
Birth       MAL-ED       PERU           Food Secure                    1        0    91
Birth       MAL-ED       PERU           Mildly Food Insecure           0       23    91
Birth       MAL-ED       PERU           Mildly Food Insecure           1        0    91
Birth       MAL-ED       PERU           Food Insecure                  0       44    91
Birth       MAL-ED       PERU           Food Insecure                  1        0    91
Birth       MAL-ED       SOUTH AFRICA   Food Secure                    0       45    88
Birth       MAL-ED       SOUTH AFRICA   Food Secure                    1        0    88
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure           0        9    88
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure           1        0    88
Birth       MAL-ED       SOUTH AFRICA   Food Insecure                  0       33    88
Birth       MAL-ED       SOUTH AFRICA   Food Insecure                  1        1    88
Birth       NIH-Birth    BANGLADESH     Food Secure                    0       89   608
Birth       NIH-Birth    BANGLADESH     Food Secure                    1        1   608
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure           0      462   608
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure           1       16   608
Birth       NIH-Birth    BANGLADESH     Food Insecure                  0       38   608
Birth       NIH-Birth    BANGLADESH     Food Insecure                  1        2   608
Birth       NIH-Crypto   BANGLADESH     Food Secure                    0      437   732
Birth       NIH-Crypto   BANGLADESH     Food Secure                    1        2   732
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure           0      205   732
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure           1        4   732
Birth       NIH-Crypto   BANGLADESH     Food Insecure                  0       80   732
Birth       NIH-Crypto   BANGLADESH     Food Insecure                  1        4   732
6 months    GMS-Nepal    NEPAL          Food Secure                    0      386   546
6 months    GMS-Nepal    NEPAL          Food Secure                    1       10   546
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure           0       71   546
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure           1        5   546
6 months    GMS-Nepal    NEPAL          Food Insecure                  0       71   546
6 months    GMS-Nepal    NEPAL          Food Insecure                  1        3   546
6 months    MAL-ED       BANGLADESH     Food Secure                    0      155   193
6 months    MAL-ED       BANGLADESH     Food Secure                    1        5   193
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure           0        4   193
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure           1        0   193
6 months    MAL-ED       BANGLADESH     Food Insecure                  0       29   193
6 months    MAL-ED       BANGLADESH     Food Insecure                  1        0   193
6 months    MAL-ED       BRAZIL         Food Secure                    0        3   129
6 months    MAL-ED       BRAZIL         Food Secure                    1        0   129
6 months    MAL-ED       BRAZIL         Mildly Food Insecure           0       11   129
6 months    MAL-ED       BRAZIL         Mildly Food Insecure           1        0   129
6 months    MAL-ED       BRAZIL         Food Insecure                  0      115   129
6 months    MAL-ED       BRAZIL         Food Insecure                  1        0   129
6 months    MAL-ED       INDIA          Food Secure                    0      183   212
6 months    MAL-ED       INDIA          Food Secure                    1        7   212
6 months    MAL-ED       INDIA          Mildly Food Insecure           0        5   212
6 months    MAL-ED       INDIA          Mildly Food Insecure           1        0   212
6 months    MAL-ED       INDIA          Food Insecure                  0       16   212
6 months    MAL-ED       INDIA          Food Insecure                  1        1   212
6 months    MAL-ED       NEPAL          Food Secure                    0       94   128
6 months    MAL-ED       NEPAL          Food Secure                    1        0   128
6 months    MAL-ED       NEPAL          Mildly Food Insecure           0       15   128
6 months    MAL-ED       NEPAL          Mildly Food Insecure           1        0   128
6 months    MAL-ED       NEPAL          Food Insecure                  0       19   128
6 months    MAL-ED       NEPAL          Food Insecure                  1        0   128
6 months    MAL-ED       PERU           Food Secure                    0       24   111
6 months    MAL-ED       PERU           Food Secure                    1        3   111
6 months    MAL-ED       PERU           Mildly Food Insecure           0       27   111
6 months    MAL-ED       PERU           Mildly Food Insecure           1        1   111
6 months    MAL-ED       PERU           Food Insecure                  0       53   111
6 months    MAL-ED       PERU           Food Insecure                  1        3   111
6 months    MAL-ED       SOUTH AFRICA   Food Secure                    0      127   228
6 months    MAL-ED       SOUTH AFRICA   Food Secure                    1        2   228
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure           0       17   228
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure           1        1   228
6 months    MAL-ED       SOUTH AFRICA   Food Insecure                  0       78   228
6 months    MAL-ED       SOUTH AFRICA   Food Insecure                  1        3   228
6 months    NIH-Birth    BANGLADESH     Food Secure                    0       77   537
6 months    NIH-Birth    BANGLADESH     Food Secure                    1        3   537
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure           0      391   537
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure           1       26   537
6 months    NIH-Birth    BANGLADESH     Food Insecure                  0       34   537
6 months    NIH-Birth    BANGLADESH     Food Insecure                  1        6   537
6 months    NIH-Crypto   BANGLADESH     Food Secure                    0      416   715
6 months    NIH-Crypto   BANGLADESH     Food Secure                    1       11   715
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure           0      196   715
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure           1        8   715
6 months    NIH-Crypto   BANGLADESH     Food Insecure                  0       80   715
6 months    NIH-Crypto   BANGLADESH     Food Insecure                  1        4   715
24 months   GMS-Nepal    NEPAL          Food Secure                    0      309   478
24 months   GMS-Nepal    NEPAL          Food Secure                    1       33   478
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure           0       59   478
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure           1        8   478
24 months   GMS-Nepal    NEPAL          Food Insecure                  0       59   478
24 months   GMS-Nepal    NEPAL          Food Insecure                  1       10   478
24 months   MAL-ED       BANGLADESH     Food Secure                    0      142   194
24 months   MAL-ED       BANGLADESH     Food Secure                    1       19   194
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure           0        2   194
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure           1        2   194
24 months   MAL-ED       BANGLADESH     Food Insecure                  0       23   194
24 months   MAL-ED       BANGLADESH     Food Insecure                  1        6   194
24 months   MAL-ED       BRAZIL         Food Secure                    0        3   129
24 months   MAL-ED       BRAZIL         Food Secure                    1        0   129
24 months   MAL-ED       BRAZIL         Mildly Food Insecure           0       11   129
24 months   MAL-ED       BRAZIL         Mildly Food Insecure           1        0   129
24 months   MAL-ED       BRAZIL         Food Insecure                  0      115   129
24 months   MAL-ED       BRAZIL         Food Insecure                  1        0   129
24 months   MAL-ED       INDIA          Food Secure                    0      165   212
24 months   MAL-ED       INDIA          Food Secure                    1       25   212
24 months   MAL-ED       INDIA          Mildly Food Insecure           0        5   212
24 months   MAL-ED       INDIA          Mildly Food Insecure           1        0   212
24 months   MAL-ED       INDIA          Food Insecure                  0       14   212
24 months   MAL-ED       INDIA          Food Insecure                  1        3   212
24 months   MAL-ED       NEPAL          Food Secure                    0       91   128
24 months   MAL-ED       NEPAL          Food Secure                    1        3   128
24 months   MAL-ED       NEPAL          Mildly Food Insecure           0       15   128
24 months   MAL-ED       NEPAL          Mildly Food Insecure           1        0   128
24 months   MAL-ED       NEPAL          Food Insecure                  0       16   128
24 months   MAL-ED       NEPAL          Food Insecure                  1        3   128
24 months   MAL-ED       PERU           Food Secure                    0       23   107
24 months   MAL-ED       PERU           Food Secure                    1        3   107
24 months   MAL-ED       PERU           Mildly Food Insecure           0       25   107
24 months   MAL-ED       PERU           Mildly Food Insecure           1        2   107
24 months   MAL-ED       PERU           Food Insecure                  0       50   107
24 months   MAL-ED       PERU           Food Insecure                  1        4   107
24 months   MAL-ED       SOUTH AFRICA   Food Secure                    0      116   228
24 months   MAL-ED       SOUTH AFRICA   Food Secure                    1       13   228
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure           0       14   228
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure           1        4   228
24 months   MAL-ED       SOUTH AFRICA   Food Insecure                  0       73   228
24 months   MAL-ED       SOUTH AFRICA   Food Insecure                  1        8   228
24 months   NIH-Birth    BANGLADESH     Food Secure                    0       60   429
24 months   NIH-Birth    BANGLADESH     Food Secure                    1        8   429
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure           0      257   429
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure           1       71   429
24 months   NIH-Birth    BANGLADESH     Food Insecure                  0       17   429
24 months   NIH-Birth    BANGLADESH     Food Insecure                  1       16   429
24 months   NIH-Crypto   BANGLADESH     Food Secure                    0      313   514
24 months   NIH-Crypto   BANGLADESH     Food Secure                    1       21   514
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure           0      114   514
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure           1       10   514
24 months   NIH-Crypto   BANGLADESH     Food Insecure                  0       51   514
24 months   NIH-Crypto   BANGLADESH     Food Insecure                  1        5   514


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
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA

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




# Results Detail

## Results Plots
![](/tmp/ba001eda-a24c-4c39-8d53-3b804870e4b2/290a8a0f-a35d-409a-ab47-fe585f663a7b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ba001eda-a24c-4c39-8d53-3b804870e4b2/290a8a0f-a35d-409a-ab47-fe585f663a7b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ba001eda-a24c-4c39-8d53-3b804870e4b2/290a8a0f-a35d-409a-ab47-fe585f663a7b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ba001eda-a24c-4c39-8d53-3b804870e4b2/290a8a0f-a35d-409a-ab47-fe585f663a7b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal    NEPAL        Food Secure            NA                0.0356394   0.0189901   0.0522888
Birth       GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.0471698   0.0067813   0.0875584
Birth       GMS-Nepal    NEPAL        Food Insecure          NA                0.0898876   0.0304209   0.1493544
24 months   GMS-Nepal    NEPAL        Food Secure            NA                0.0964912   0.0651656   0.1278169
24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.1194030   0.0416778   0.1971281
24 months   GMS-Nepal    NEPAL        Food Insecure          NA                0.1449275   0.0617789   0.2280762
24 months   NIH-Birth    BANGLADESH   Food Secure            NA                0.1176471   0.0409794   0.1943147
24 months   NIH-Birth    BANGLADESH   Mildly Food Insecure   NA                0.2164634   0.1718424   0.2610845
24 months   NIH-Birth    BANGLADESH   Food Insecure          NA                0.4848485   0.3141348   0.6555622
24 months   NIH-Crypto   BANGLADESH   Food Secure            NA                0.0628743   0.0368167   0.0889318
24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0806452   0.0326728   0.1286175
24 months   NIH-Crypto   BANGLADESH   Food Insecure          NA                0.0892857   0.0145275   0.1640439


### Parameter: E(Y)


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal    NEPAL        NA                   NA                0.0446429   0.0290169   0.0602688
24 months   GMS-Nepal    NEPAL        NA                   NA                0.1066946   0.0789894   0.1343997
24 months   NIH-Birth    BANGLADESH   NA                   NA                0.2214452   0.1821080   0.2607825
24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.0700389   0.0479542   0.0921236


### Parameter: RR


agecat      studyid      country      intervention_level     baseline_level    estimate    ci_lower   ci_upper
----------  -----------  -----------  ---------------------  ---------------  ---------  ----------  ---------
Birth       GMS-Nepal    NEPAL        Food Secure            Food Secure       1.000000   1.0000000   1.000000
Birth       GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       1.323529   0.4990314   3.510260
Birth       GMS-Nepal    NEPAL        Food Insecure          Food Secure       2.522141   1.1221261   5.668880
24 months   GMS-Nepal    NEPAL        Food Secure            Food Secure       1.000000   1.0000000   1.000000
24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       1.237449   0.5978826   2.561172
24 months   GMS-Nepal    NEPAL        Food Insecure          Food Secure       1.501976   0.7769123   2.903716
24 months   NIH-Birth    BANGLADESH   Food Secure            Food Secure       1.000000   1.0000000   1.000000
24 months   NIH-Birth    BANGLADESH   Mildly Food Insecure   Food Secure       1.839939   0.9288873   3.644549
24 months   NIH-Birth    BANGLADESH   Food Insecure          Food Secure       4.121212   1.9648904   8.643937
24 months   NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.000000   1.0000000   1.000000
24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.282642   0.6212197   2.648291
24 months   NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.420068   0.5579185   3.614494


### Parameter: PAR


agecat      studyid      country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       GMS-Nepal    NEPAL        Food Secure          NA                0.0090034   -0.0023034   0.0203103
24 months   GMS-Nepal    NEPAL        Food Secure          NA                0.0102033   -0.0083620   0.0287687
24 months   NIH-Birth    BANGLADESH   Food Secure          NA                0.1037982    0.0292197   0.1783766
24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                0.0071647   -0.0096965   0.0240259


### Parameter: PAF


agecat      studyid      country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       GMS-Nepal    NEPAL        Food Secure          NA                0.2016771   -0.0837182   0.4119141
24 months   GMS-Nepal    NEPAL        Food Secure          NA                0.0956312   -0.0945510   0.2527686
24 months   NIH-Birth    BANGLADESH   Food Secure          NA                0.4687307    0.0121611   0.7142782
24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                0.1022954   -0.1713644   0.3120215
