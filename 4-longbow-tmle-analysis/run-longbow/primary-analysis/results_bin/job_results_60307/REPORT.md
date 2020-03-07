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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

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




# Results Detail

## Results Plots
![](/tmp/7c0917cc-cc60-410f-9ce9-bb0a1e568780/81f8b55e-7fd2-407e-94ee-eec713d4db61/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7c0917cc-cc60-410f-9ce9-bb0a1e568780/81f8b55e-7fd2-407e-94ee-eec713d4db61/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7c0917cc-cc60-410f-9ce9-bb0a1e568780/81f8b55e-7fd2-407e-94ee-eec713d4db61/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7c0917cc-cc60-410f-9ce9-bb0a1e568780/81f8b55e-7fd2-407e-94ee-eec713d4db61/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal    NEPAL        Food Secure            NA                0.2146270   0.1761242   0.2531298
Birth       GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.1308536   0.0625235   0.1991837
Birth       GMS-Nepal    NEPAL        Food Insecure          NA                0.2912847   0.1774714   0.4050979
Birth       JiVitA-3     BANGLADESH   Food Secure            NA                0.1063495   0.0962427   0.1164563
Birth       JiVitA-3     BANGLADESH   Mildly Food Insecure   NA                0.1025732   0.0898077   0.1153387
Birth       JiVitA-3     BANGLADESH   Food Insecure          NA                0.0985675   0.0846087   0.1125263
Birth       JiVitA-4     BANGLADESH   Food Secure            NA                0.0931067   0.0727557   0.1134577
Birth       JiVitA-4     BANGLADESH   Mildly Food Insecure   NA                0.1068551   0.0796516   0.1340586
Birth       JiVitA-4     BANGLADESH   Food Insecure          NA                0.1100357   0.0694187   0.1506528
Birth       NIH-Birth    BANGLADESH   Food Secure            NA                0.1976744   0.1134327   0.2819162
Birth       NIH-Birth    BANGLADESH   Mildly Food Insecure   NA                0.3134658   0.2707092   0.3562224
Birth       NIH-Birth    BANGLADESH   Food Insecure          NA                0.2500000   0.1084286   0.3915714
Birth       NIH-Crypto   BANGLADESH   Food Secure            NA                0.2297900   0.1898533   0.2697267
Birth       NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.2491708   0.1882435   0.3100981
Birth       NIH-Crypto   BANGLADESH   Food Insecure          NA                0.3004391   0.1988282   0.4020500
6 months    JiVitA-3     BANGLADESH   Food Secure            NA                0.0840661   0.0762158   0.0919165
6 months    JiVitA-3     BANGLADESH   Mildly Food Insecure   NA                0.0833063   0.0750056   0.0916070
6 months    JiVitA-3     BANGLADESH   Food Insecure          NA                0.0899191   0.0762029   0.1036353
6 months    JiVitA-4     BANGLADESH   Food Secure            NA                0.0578395   0.0461439   0.0695352
6 months    JiVitA-4     BANGLADESH   Mildly Food Insecure   NA                0.0602719   0.0468691   0.0736748
6 months    JiVitA-4     BANGLADESH   Food Insecure          NA                0.0441597   0.0113620   0.0769574
24 months   GMS-Nepal    NEPAL        Food Secure            NA                0.1883830   0.1469358   0.2298302
24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.1725195   0.0775055   0.2675336
24 months   GMS-Nepal    NEPAL        Food Insecure          NA                0.2052322   0.1048107   0.3056538
24 months   JiVitA-3     BANGLADESH   Food Secure            NA                0.2055309   0.1898767   0.2211851
24 months   JiVitA-3     BANGLADESH   Mildly Food Insecure   NA                0.2238155   0.2050459   0.2425851
24 months   JiVitA-3     BANGLADESH   Food Insecure          NA                0.2391838   0.2133262   0.2650415
24 months   JiVitA-4     BANGLADESH   Food Secure            NA                0.1875003   0.1692074   0.2057933
24 months   JiVitA-4     BANGLADESH   Mildly Food Insecure   NA                0.2058121   0.1836428   0.2279814
24 months   JiVitA-4     BANGLADESH   Food Insecure          NA                0.1945219   0.1545251   0.2345186
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
Birth       GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       0.6096791   0.3509557   1.059133
Birth       GMS-Nepal    NEPAL        Food Insecure          Food Secure       1.3571669   0.8826493   2.086788
Birth       JiVitA-3     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       JiVitA-3     BANGLADESH   Mildly Food Insecure   Food Secure       0.9644917   0.8203865   1.133910
Birth       JiVitA-3     BANGLADESH   Food Insecure          Food Secure       0.9268262   0.7859673   1.092930
Birth       JiVitA-4     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       JiVitA-4     BANGLADESH   Mildly Food Insecure   Food Secure       1.1476635   0.8230465   1.600312
Birth       JiVitA-4     BANGLADESH   Food Insecure          Food Secure       1.1818246   0.7684343   1.817604
Birth       NIH-Birth    BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       NIH-Birth    BANGLADESH   Mildly Food Insecure   Food Secure       1.5857681   1.0137016   2.480671
Birth       NIH-Birth    BANGLADESH   Food Insecure          Food Secure       1.2647059   0.6225768   2.569130
Birth       NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.0843414   0.8032337   1.463828
Birth       NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.3074508   0.8941417   1.911808
6 months    JiVitA-3     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    JiVitA-3     BANGLADESH   Mildly Food Insecure   Food Secure       0.9909621   0.8659112   1.134072
6 months    JiVitA-3     BANGLADESH   Food Insecure          Food Secure       1.0696236   0.8988899   1.272786
6 months    JiVitA-4     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    JiVitA-4     BANGLADESH   Mildly Food Insecure   Food Secure       1.0420541   0.7732379   1.404324
6 months    JiVitA-4     BANGLADESH   Food Insecure          Food Secure       0.7634859   0.3565511   1.634859
24 months   GMS-Nepal    NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       0.9157914   0.5059842   1.657510
24 months   GMS-Nepal    NEPAL        Food Insecure          Food Secure       1.0894414   0.6370067   1.863218
24 months   JiVitA-3     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   JiVitA-3     BANGLADESH   Mildly Food Insecure   Food Secure       1.0889626   0.9710052   1.221249
24 months   JiVitA-3     BANGLADESH   Food Insecure          Food Secure       1.1637366   1.0223841   1.324632
24 months   JiVitA-4     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   JiVitA-4     BANGLADESH   Mildly Food Insecure   Food Secure       1.0976626   0.9501870   1.268028
24 months   JiVitA-4     BANGLADESH   Food Insecure          Food Secure       1.0374480   0.8259790   1.303058
24 months   NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.6733871   0.3188651   1.422075
24 months   NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       0.9319196   0.3789294   2.291916


### Parameter: PAR


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal    NEPAL        Food Secure          NA                -0.0097883   -0.0295321   0.0099555
Birth       JiVitA-3     BANGLADESH   Food Secure          NA                -0.0011043   -0.0091447   0.0069362
Birth       JiVitA-4     BANGLADESH   Food Secure          NA                 0.0071871   -0.0078895   0.0222637
Birth       NIH-Birth    BANGLADESH   Food Secure          NA                 0.0944995    0.0147631   0.1742359
Birth       NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0134915   -0.0122674   0.0392503
6 months    JiVitA-3     BANGLADESH   Food Secure          NA                 0.0005795   -0.0054609   0.0066200
6 months    JiVitA-4     BANGLADESH   Food Secure          NA                -0.0009052   -0.0093357   0.0075252
24 months   GMS-Nepal    NEPAL        Food Secure          NA                 0.0002962   -0.0216998   0.0222923
24 months   JiVitA-3     BANGLADESH   Food Secure          NA                 0.0122957   -0.0004016   0.0249930
24 months   JiVitA-4     BANGLADESH   Food Secure          NA                 0.0073463   -0.0056322   0.0203249
24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0082597   -0.0255539   0.0090344


### Parameter: PAF


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal    NEPAL        Food Secure          NA                -0.0477854   -0.1485274   0.0441202
Birth       JiVitA-3     BANGLADESH   Food Secure          NA                -0.0104922   -0.0898365   0.0630755
Birth       JiVitA-4     BANGLADESH   Food Secure          NA                 0.0716604   -0.0905838   0.2097677
Birth       NIH-Birth    BANGLADESH   Food Secure          NA                 0.3234358   -0.0106683   0.5470926
Birth       NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0554562   -0.0565142   0.1555599
6 months    JiVitA-3     BANGLADESH   Food Secure          NA                 0.0068467   -0.0671573   0.0757188
6 months    JiVitA-4     BANGLADESH   Food Secure          NA                -0.0158998   -0.1755797   0.1220907
24 months   GMS-Nepal    NEPAL        Food Secure          NA                 0.0015701   -0.1220881   0.1116006
24 months   JiVitA-3     BANGLADESH   Food Secure          NA                 0.0564473   -0.0035882   0.1128914
24 months   JiVitA-4     BANGLADESH   Food Secure          NA                 0.0377031   -0.0312252   0.1020243
24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0943446   -0.3091652   0.0852260
