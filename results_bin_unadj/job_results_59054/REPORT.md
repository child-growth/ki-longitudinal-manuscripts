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

**Outcome Variable:** wasted

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

agecat      studyid      country        hfoodsec                wasted   n_cell       n
----------  -----------  -------------  ---------------------  -------  -------  ------
Birth       GMS-Nepal    NEPAL          Food Secure                  0      347     620
Birth       GMS-Nepal    NEPAL          Food Secure                  1       95     620
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure         0       87     620
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure         1       13     620
Birth       GMS-Nepal    NEPAL          Food Insecure                0       59     620
Birth       GMS-Nepal    NEPAL          Food Insecure                1       19     620
Birth       JiVitA-3     BANGLADESH     Food Secure                  0     5214   11763
Birth       JiVitA-3     BANGLADESH     Food Secure                  1      583   11763
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure         0     3524   11763
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure         1      423   11763
Birth       JiVitA-3     BANGLADESH     Food Insecure                0     1787   11763
Birth       JiVitA-3     BANGLADESH     Food Insecure                1      232   11763
Birth       JiVitA-4     BANGLADESH     Food Secure                  0     1093    2383
Birth       JiVitA-4     BANGLADESH     Food Secure                  1      112    2383
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure         0      776    2383
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure         1       94    2383
Birth       JiVitA-4     BANGLADESH     Food Insecure                0      275    2383
Birth       JiVitA-4     BANGLADESH     Food Insecure                1       33    2383
Birth       MAL-ED       BANGLADESH     Food Secure                  0      113     162
Birth       MAL-ED       BANGLADESH     Food Secure                  1       25     162
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure         0        3     162
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure         1        0     162
Birth       MAL-ED       BANGLADESH     Food Insecure                0       17     162
Birth       MAL-ED       BANGLADESH     Food Insecure                1        4     162
Birth       MAL-ED       BRAZIL         Food Secure                  0        0      26
Birth       MAL-ED       BRAZIL         Food Secure                  1        0      26
Birth       MAL-ED       BRAZIL         Mildly Food Insecure         0        4      26
Birth       MAL-ED       BRAZIL         Mildly Food Insecure         1        0      26
Birth       MAL-ED       BRAZIL         Food Insecure                0       21      26
Birth       MAL-ED       BRAZIL         Food Insecure                1        1      26
Birth       MAL-ED       INDIA          Food Secure                  0       29      35
Birth       MAL-ED       INDIA          Food Secure                  1        3      35
Birth       MAL-ED       INDIA          Mildly Food Insecure         0        1      35
Birth       MAL-ED       INDIA          Mildly Food Insecure         1        0      35
Birth       MAL-ED       INDIA          Food Insecure                0        0      35
Birth       MAL-ED       INDIA          Food Insecure                1        2      35
Birth       MAL-ED       NEPAL          Food Secure                  0       10      14
Birth       MAL-ED       NEPAL          Food Secure                  1        0      14
Birth       MAL-ED       NEPAL          Mildly Food Insecure         0        1      14
Birth       MAL-ED       NEPAL          Mildly Food Insecure         1        0      14
Birth       MAL-ED       NEPAL          Food Insecure                0        2      14
Birth       MAL-ED       NEPAL          Food Insecure                1        1      14
Birth       MAL-ED       PERU           Food Secure                  0       22      89
Birth       MAL-ED       PERU           Food Secure                  1        1      89
Birth       MAL-ED       PERU           Mildly Food Insecure         0       22      89
Birth       MAL-ED       PERU           Mildly Food Insecure         1        0      89
Birth       MAL-ED       PERU           Food Insecure                0       42      89
Birth       MAL-ED       PERU           Food Insecure                1        2      89
Birth       MAL-ED       SOUTH AFRICA   Food Secure                  0       42      87
Birth       MAL-ED       SOUTH AFRICA   Food Secure                  1        3      87
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure         0        8      87
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure         1        1      87
Birth       MAL-ED       SOUTH AFRICA   Food Insecure                0       29      87
Birth       MAL-ED       SOUTH AFRICA   Food Insecure                1        4      87
Birth       NIH-Birth    BANGLADESH     Food Secure                  0       69     575
Birth       NIH-Birth    BANGLADESH     Food Secure                  1       17     575
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure         0      311     575
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure         1      142     575
Birth       NIH-Birth    BANGLADESH     Food Insecure                0       27     575
Birth       NIH-Birth    BANGLADESH     Food Insecure                1        9     575
Birth       NIH-Crypto   BANGLADESH     Food Secure                  0      330     707
Birth       NIH-Crypto   BANGLADESH     Food Secure                  1       99     707
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure         0      150     707
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure         1       49     707
Birth       NIH-Crypto   BANGLADESH     Food Insecure                0       55     707
Birth       NIH-Crypto   BANGLADESH     Food Insecure                1       24     707
6 months    GMS-Nepal    NEPAL          Food Secure                  0      360     546
6 months    GMS-Nepal    NEPAL          Food Secure                  1       36     546
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure         0       74     546
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure         1        2     546
6 months    GMS-Nepal    NEPAL          Food Insecure                0       64     546
6 months    GMS-Nepal    NEPAL          Food Insecure                1       10     546
6 months    JiVitA-3     BANGLADESH     Food Secure                  0     7734   16764
6 months    JiVitA-3     BANGLADESH     Food Secure                  1      662   16764
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure         0     5113   16764
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure         1      477   16764
6 months    JiVitA-3     BANGLADESH     Food Insecure                0     2498   16764
6 months    JiVitA-3     BANGLADESH     Food Insecure                1      280   16764
6 months    JiVitA-4     BANGLADESH     Food Secure                  0     2304    4795
6 months    JiVitA-4     BANGLADESH     Food Secure                  1      141    4795
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure         0     1623    4795
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure         1      105    4795
6 months    JiVitA-4     BANGLADESH     Food Insecure                0      595    4795
6 months    JiVitA-4     BANGLADESH     Food Insecure                1       27    4795
6 months    MAL-ED       BANGLADESH     Food Secure                  0      155     193
6 months    MAL-ED       BANGLADESH     Food Secure                  1        5     193
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure         0        4     193
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure         1        0     193
6 months    MAL-ED       BANGLADESH     Food Insecure                0       27     193
6 months    MAL-ED       BANGLADESH     Food Insecure                1        2     193
6 months    MAL-ED       BRAZIL         Food Secure                  0        3     129
6 months    MAL-ED       BRAZIL         Food Secure                  1        0     129
6 months    MAL-ED       BRAZIL         Mildly Food Insecure         0       11     129
6 months    MAL-ED       BRAZIL         Mildly Food Insecure         1        0     129
6 months    MAL-ED       BRAZIL         Food Insecure                0      115     129
6 months    MAL-ED       BRAZIL         Food Insecure                1        0     129
6 months    MAL-ED       INDIA          Food Secure                  0      174     212
6 months    MAL-ED       INDIA          Food Secure                  1       16     212
6 months    MAL-ED       INDIA          Mildly Food Insecure         0        3     212
6 months    MAL-ED       INDIA          Mildly Food Insecure         1        2     212
6 months    MAL-ED       INDIA          Food Insecure                0       16     212
6 months    MAL-ED       INDIA          Food Insecure                1        1     212
6 months    MAL-ED       NEPAL          Food Secure                  0       93     128
6 months    MAL-ED       NEPAL          Food Secure                  1        1     128
6 months    MAL-ED       NEPAL          Mildly Food Insecure         0       14     128
6 months    MAL-ED       NEPAL          Mildly Food Insecure         1        1     128
6 months    MAL-ED       NEPAL          Food Insecure                0       19     128
6 months    MAL-ED       NEPAL          Food Insecure                1        0     128
6 months    MAL-ED       PERU           Food Secure                  0       27     111
6 months    MAL-ED       PERU           Food Secure                  1        0     111
6 months    MAL-ED       PERU           Mildly Food Insecure         0       28     111
6 months    MAL-ED       PERU           Mildly Food Insecure         1        0     111
6 months    MAL-ED       PERU           Food Insecure                0       56     111
6 months    MAL-ED       PERU           Food Insecure                1        0     111
6 months    MAL-ED       SOUTH AFRICA   Food Secure                  0      126     228
6 months    MAL-ED       SOUTH AFRICA   Food Secure                  1        3     228
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure         0       17     228
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure         1        1     228
6 months    MAL-ED       SOUTH AFRICA   Food Insecure                0       78     228
6 months    MAL-ED       SOUTH AFRICA   Food Insecure                1        3     228
6 months    NIH-Birth    BANGLADESH     Food Secure                  0       78     537
6 months    NIH-Birth    BANGLADESH     Food Secure                  1        2     537
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure         0      388     537
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure         1       29     537
6 months    NIH-Birth    BANGLADESH     Food Insecure                0       36     537
6 months    NIH-Birth    BANGLADESH     Food Insecure                1        4     537
6 months    NIH-Crypto   BANGLADESH     Food Secure                  0      419     715
6 months    NIH-Crypto   BANGLADESH     Food Secure                  1        8     715
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure         0      194     715
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure         1       10     715
6 months    NIH-Crypto   BANGLADESH     Food Insecure                0       81     715
6 months    NIH-Crypto   BANGLADESH     Food Insecure                1        3     715
24 months   GMS-Nepal    NEPAL          Food Secure                  0      276     477
24 months   GMS-Nepal    NEPAL          Food Secure                  1       65     477
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure         0       56     477
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure         1       11     477
24 months   GMS-Nepal    NEPAL          Food Insecure                0       55     477
24 months   GMS-Nepal    NEPAL          Food Insecure                1       14     477
24 months   JiVitA-3     BANGLADESH     Food Secure                  0     3084    8190
24 months   JiVitA-3     BANGLADESH     Food Secure                  1      773    8190
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure         0     2114    8190
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure         1      639    8190
24 months   JiVitA-3     BANGLADESH     Food Insecure                0     1208    8190
24 months   JiVitA-3     BANGLADESH     Food Insecure                1      372    8190
24 months   JiVitA-4     BANGLADESH     Food Secure                  0     1939    4696
24 months   JiVitA-4     BANGLADESH     Food Secure                  1      450    4696
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure         0     1352    4696
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure         1      347    4696
24 months   JiVitA-4     BANGLADESH     Food Insecure                0      490    4696
24 months   JiVitA-4     BANGLADESH     Food Insecure                1      118    4696
24 months   MAL-ED       BANGLADESH     Food Secure                  0      142     194
24 months   MAL-ED       BANGLADESH     Food Secure                  1       19     194
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure         0        4     194
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure         1        0     194
24 months   MAL-ED       BANGLADESH     Food Insecure                0       27     194
24 months   MAL-ED       BANGLADESH     Food Insecure                1        2     194
24 months   MAL-ED       BRAZIL         Food Secure                  0        3     129
24 months   MAL-ED       BRAZIL         Food Secure                  1        0     129
24 months   MAL-ED       BRAZIL         Mildly Food Insecure         0       11     129
24 months   MAL-ED       BRAZIL         Mildly Food Insecure         1        0     129
24 months   MAL-ED       BRAZIL         Food Insecure                0      114     129
24 months   MAL-ED       BRAZIL         Food Insecure                1        1     129
24 months   MAL-ED       INDIA          Food Secure                  0      170     212
24 months   MAL-ED       INDIA          Food Secure                  1       20     212
24 months   MAL-ED       INDIA          Mildly Food Insecure         0        2     212
24 months   MAL-ED       INDIA          Mildly Food Insecure         1        3     212
24 months   MAL-ED       INDIA          Food Insecure                0       14     212
24 months   MAL-ED       INDIA          Food Insecure                1        3     212
24 months   MAL-ED       NEPAL          Food Secure                  0       93     128
24 months   MAL-ED       NEPAL          Food Secure                  1        1     128
24 months   MAL-ED       NEPAL          Mildly Food Insecure         0       15     128
24 months   MAL-ED       NEPAL          Mildly Food Insecure         1        0     128
24 months   MAL-ED       NEPAL          Food Insecure                0       19     128
24 months   MAL-ED       NEPAL          Food Insecure                1        0     128
24 months   MAL-ED       PERU           Food Secure                  0       25     107
24 months   MAL-ED       PERU           Food Secure                  1        1     107
24 months   MAL-ED       PERU           Mildly Food Insecure         0       27     107
24 months   MAL-ED       PERU           Mildly Food Insecure         1        0     107
24 months   MAL-ED       PERU           Food Insecure                0       52     107
24 months   MAL-ED       PERU           Food Insecure                1        2     107
24 months   MAL-ED       SOUTH AFRICA   Food Secure                  0      129     228
24 months   MAL-ED       SOUTH AFRICA   Food Secure                  1        0     228
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure         0       17     228
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure         1        1     228
24 months   MAL-ED       SOUTH AFRICA   Food Insecure                0       81     228
24 months   MAL-ED       SOUTH AFRICA   Food Insecure                1        0     228
24 months   NIH-Birth    BANGLADESH     Food Secure                  0       63     428
24 months   NIH-Birth    BANGLADESH     Food Secure                  1        5     428
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure         0      281     428
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure         1       46     428
24 months   NIH-Birth    BANGLADESH     Food Insecure                0       31     428
24 months   NIH-Birth    BANGLADESH     Food Insecure                1        2     428
24 months   NIH-Crypto   BANGLADESH     Food Secure                  0      302     514
24 months   NIH-Crypto   BANGLADESH     Food Secure                  1       32     514
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure         0      116     514
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure         1        8     514
24 months   NIH-Crypto   BANGLADESH     Food Insecure                0       51     514
24 months   NIH-Crypto   BANGLADESH     Food Insecure                1        5     514


The following strata were considered:

* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/ad547cbd-b9ea-4ad9-828c-96476e7d80ec/3a4b5517-755a-43a4-bebf-862ec0664e53/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ad547cbd-b9ea-4ad9-828c-96476e7d80ec/3a4b5517-755a-43a4-bebf-862ec0664e53/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ad547cbd-b9ea-4ad9-828c-96476e7d80ec/3a4b5517-755a-43a4-bebf-862ec0664e53/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ad547cbd-b9ea-4ad9-828c-96476e7d80ec/3a4b5517-755a-43a4-bebf-862ec0664e53/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal    NEPAL        Food Secure            NA                0.2149321   0.1766063   0.2532580
Birth       GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.1300000   0.0640325   0.1959675
Birth       GMS-Nepal    NEPAL        Food Insecure          NA                0.2435897   0.1482532   0.3389263
Birth       JiVitA-3     BANGLADESH   Food Secure            NA                0.1005693   0.0921140   0.1090245
Birth       JiVitA-3     BANGLADESH   Mildly Food Insecure   NA                0.1071700   0.0965185   0.1178215
Birth       JiVitA-3     BANGLADESH   Food Insecure          NA                0.1149084   0.1014271   0.1283897
Birth       JiVitA-4     BANGLADESH   Food Secure            NA                0.0929461   0.0725815   0.1133106
Birth       JiVitA-4     BANGLADESH   Mildly Food Insecure   NA                0.1080460   0.0807836   0.1353083
Birth       JiVitA-4     BANGLADESH   Food Insecure          NA                0.1071429   0.0665162   0.1477695
Birth       NIH-Birth    BANGLADESH   Food Secure            NA                0.1976744   0.1134327   0.2819162
Birth       NIH-Birth    BANGLADESH   Mildly Food Insecure   NA                0.3134658   0.2707092   0.3562224
Birth       NIH-Birth    BANGLADESH   Food Insecure          NA                0.2500000   0.1084286   0.3915714
Birth       NIH-Crypto   BANGLADESH   Food Secure            NA                0.2307692   0.1908719   0.2706666
Birth       NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.2462312   0.1863322   0.3061301
Birth       NIH-Crypto   BANGLADESH   Food Insecure          NA                0.3037975   0.2023125   0.4052824
6 months    JiVitA-3     BANGLADESH   Food Secure            NA                0.0788471   0.0721168   0.0855773
6 months    JiVitA-3     BANGLADESH   Mildly Food Insecure   NA                0.0853309   0.0777954   0.0928665
6 months    JiVitA-3     BANGLADESH   Food Insecure          NA                0.1007919   0.0892531   0.1123308
6 months    JiVitA-4     BANGLADESH   Food Secure            NA                0.0576687   0.0460356   0.0693018
6 months    JiVitA-4     BANGLADESH   Mildly Food Insecure   NA                0.0607639   0.0473306   0.0741972
6 months    JiVitA-4     BANGLADESH   Food Insecure          NA                0.0434084   0.0104539   0.0763628
24 months   GMS-Nepal    NEPAL        Food Secure            NA                0.1906158   0.1488825   0.2323492
24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.1641791   0.0753854   0.2529728
24 months   GMS-Nepal    NEPAL        Food Insecure          NA                0.2028986   0.1079091   0.2978880
24 months   JiVitA-3     BANGLADESH   Food Secure            NA                0.2004148   0.1865436   0.2142860
24 months   JiVitA-3     BANGLADESH   Mildly Food Insecure   NA                0.2321104   0.2150817   0.2491391
24 months   JiVitA-3     BANGLADESH   Food Insecure          NA                0.2354430   0.2141082   0.2567779
24 months   JiVitA-4     BANGLADESH   Food Secure            NA                0.1883633   0.1700380   0.2066886
24 months   JiVitA-4     BANGLADESH   Mildly Food Insecure   NA                0.2042378   0.1819555   0.2265200
24 months   JiVitA-4     BANGLADESH   Food Insecure          NA                0.1940789   0.1534371   0.2347208
24 months   NIH-Crypto   BANGLADESH   Food Secure            NA                0.0958084   0.0642126   0.1274042
24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0645161   0.0212336   0.1077986
24 months   NIH-Crypto   BANGLADESH   Food Insecure          NA                0.0892857   0.0145275   0.1640439


### Parameter: E(Y)


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal    NEPAL        NA                   NA                0.2048387   0.1730454   0.2366321
Birth       JiVitA-3     BANGLADESH   NA                   NA                0.1052453   0.0993428   0.1111477
Birth       JiVitA-4     BANGLADESH   NA                   NA                0.1002937   0.0848872   0.1157003
Birth       NIH-Birth    BANGLADESH   NA                   NA                0.2921739   0.2549711   0.3293768
Birth       NIH-Crypto   BANGLADESH   NA                   NA                0.2432815   0.2116319   0.2749310
6 months    JiVitA-3     BANGLADESH   NA                   NA                0.0846457   0.0798459   0.0894454
6 months    JiVitA-4     BANGLADESH   NA                   NA                0.0569343   0.0480657   0.0658029
24 months   GMS-Nepal    NEPAL        NA                   NA                0.1886792   0.1535311   0.2238274
24 months   JiVitA-3     BANGLADESH   NA                   NA                0.2178266   0.2079286   0.2277246
24 months   JiVitA-4     BANGLADESH   NA                   NA                0.1948467   0.1815077   0.2081857
24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.0875486   0.0630907   0.1120065


### Parameter: RR


agecat      studyid      country      intervention_level     baseline_level     estimate    ci_lower   ci_upper
----------  -----------  -----------  ---------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal    NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       0.6048421   0.3532255   1.035695
Birth       GMS-Nepal    NEPAL        Food Insecure          Food Secure       1.1333333   0.7371783   1.742380
Birth       JiVitA-3     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       JiVitA-3     BANGLADESH   Mildly Food Insecure   Food Secure       1.0656338   0.9322760   1.218068
Birth       JiVitA-3     BANGLADESH   Food Insecure          Food Secure       1.1425795   0.9925018   1.315351
Birth       JiVitA-4     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       JiVitA-4     BANGLADESH   Mildly Food Insecure   Food Secure       1.1624589   0.8345924   1.619127
Birth       JiVitA-4     BANGLADESH   Food Insecure          Food Secure       1.1527423   0.7424337   1.789810
Birth       NIH-Birth    BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       NIH-Birth    BANGLADESH   Mildly Food Insecure   Food Secure       1.5857681   1.0137016   2.480671
Birth       NIH-Birth    BANGLADESH   Food Insecure          Food Secure       1.2647059   0.6225768   2.569130
Birth       NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.0670017   0.7916870   1.438059
Birth       NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.3164557   0.9037530   1.917621
6 months    JiVitA-3     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    JiVitA-3     BANGLADESH   Mildly Food Insecure   Food Secure       1.0822336   0.9593723   1.220829
6 months    JiVitA-3     BANGLADESH   Food Insecure          Food Secure       1.2783219   1.1113581   1.470369
6 months    JiVitA-4     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    JiVitA-4     BANGLADESH   Mildly Food Insecure   Food Secure       1.0536717   0.7823741   1.419045
6 months    JiVitA-4     BANGLADESH   Food Insecure          Food Secure       0.7527194   0.3460734   1.637186
24 months   GMS-Nepal    NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       0.8613088   0.4805754   1.543676
24 months   GMS-Nepal    NEPAL        Food Insecure          Food Secure       1.0644370   0.6348405   1.784741
24 months   JiVitA-3     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   JiVitA-3     BANGLADESH   Mildly Food Insecure   Food Secure       1.1581499   1.0471476   1.280919
24 months   JiVitA-3     BANGLADESH   Food Insecure          Food Secure       1.1747785   1.0509335   1.313218
24 months   JiVitA-4     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   JiVitA-4     BANGLADESH   Mildly Food Insecure   Food Secure       1.0842757   0.9374459   1.254103
24 months   JiVitA-4     BANGLADESH   Food Insecure          Food Secure       1.0303436   0.8172833   1.298947
24 months   NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.6733871   0.3188651   1.422075
24 months   NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       0.9319196   0.3789294   2.291916


### Parameter: PAR


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal    NEPAL        Food Secure          NA                -0.0100934   -0.0297241   0.0095372
Birth       JiVitA-3     BANGLADESH   Food Secure          NA                 0.0046760   -0.0014392   0.0107912
Birth       JiVitA-4     BANGLADESH   Food Secure          NA                 0.0073477   -0.0077489   0.0224443
Birth       NIH-Birth    BANGLADESH   Food Secure          NA                 0.0944995    0.0147631   0.1742359
Birth       NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0125122   -0.0132117   0.0382362
6 months    JiVitA-3     BANGLADESH   Food Secure          NA                 0.0057986    0.0012328   0.0103644
6 months    JiVitA-4     BANGLADESH   Food Secure          NA                -0.0007344   -0.0091289   0.0076601
24 months   GMS-Nepal    NEPAL        Food Secure          NA                -0.0019366   -0.0240019   0.0201287
24 months   JiVitA-3     BANGLADESH   Food Secure          NA                 0.0174118    0.0072086   0.0276149
24 months   JiVitA-4     BANGLADESH   Food Secure          NA                 0.0064833   -0.0065888   0.0195555
24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0082597   -0.0255539   0.0090344


### Parameter: PAF


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal    NEPAL        Food Secure          NA                -0.0492749   -0.1494688   0.0421855
Birth       JiVitA-3     BANGLADESH   Food Secure          NA                 0.0444296   -0.0155074   0.1008289
Birth       JiVitA-4     BANGLADESH   Food Secure          NA                 0.0732617   -0.0892305   0.2115132
Birth       NIH-Birth    BANGLADESH   Food Secure          NA                 0.3234358   -0.0106683   0.5470926
Birth       NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0514311   -0.0603323   0.1514142
6 months    JiVitA-3     BANGLADESH   Food Secure          NA                 0.0685044    0.0126916   0.1211620
6 months    JiVitA-4     BANGLADESH   Food Secure          NA                -0.0128992   -0.1718428   0.1244860
24 months   GMS-Nepal    NEPAL        Food Secure          NA                -0.0102639   -0.1342383   0.1001598
24 months   JiVitA-3     BANGLADESH   Food Secure          NA                 0.0799342    0.0319153   0.1255712
24 months   JiVitA-4     BANGLADESH   Food Secure          NA                 0.0332741   -0.0361486   0.0980454
24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0943446   -0.3091652   0.0852260
