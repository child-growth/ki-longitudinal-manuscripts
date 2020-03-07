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

agecat      studyid      country        hfoodsec                sstunted   n_cell       n
----------  -----------  -------------  ---------------------  ---------  -------  ------
Birth       GMS-Nepal    NEPAL          Food Secure                    0      460     672
Birth       GMS-Nepal    NEPAL          Food Secure                    1       17     672
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure           0      101     672
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure           1        5     672
Birth       GMS-Nepal    NEPAL          Food Insecure                  0       81     672
Birth       GMS-Nepal    NEPAL          Food Insecure                  1        8     672
Birth       JiVitA-3     BANGLADESH     Food Secure                    0     6342   14364
Birth       JiVitA-3     BANGLADESH     Food Secure                    1      609   14364
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure           0     4381   14364
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure           1      496   14364
Birth       JiVitA-3     BANGLADESH     Food Insecure                  0     2258   14364
Birth       JiVitA-3     BANGLADESH     Food Insecure                  1      278   14364
Birth       JiVitA-4     BANGLADESH     Food Secure                    0     1304    2810
Birth       JiVitA-4     BANGLADESH     Food Secure                    1      129    2810
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure           0      941    2810
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure           1       77    2810
Birth       JiVitA-4     BANGLADESH     Food Insecure                  0      332    2810
Birth       JiVitA-4     BANGLADESH     Food Insecure                  1       27    2810
Birth       MAL-ED       BANGLADESH     Food Secure                    0      140     172
Birth       MAL-ED       BANGLADESH     Food Secure                    1        4     172
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure           0        3     172
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure           1        1     172
Birth       MAL-ED       BANGLADESH     Food Insecure                  0       23     172
Birth       MAL-ED       BANGLADESH     Food Insecure                  1        1     172
Birth       MAL-ED       BRAZIL         Food Secure                    0        0      28
Birth       MAL-ED       BRAZIL         Food Secure                    1        0      28
Birth       MAL-ED       BRAZIL         Mildly Food Insecure           0        4      28
Birth       MAL-ED       BRAZIL         Mildly Food Insecure           1        0      28
Birth       MAL-ED       BRAZIL         Food Insecure                  0       22      28
Birth       MAL-ED       BRAZIL         Food Insecure                  1        2      28
Birth       MAL-ED       INDIA          Food Secure                    0       32      37
Birth       MAL-ED       INDIA          Food Secure                    1        2      37
Birth       MAL-ED       INDIA          Mildly Food Insecure           0        1      37
Birth       MAL-ED       INDIA          Mildly Food Insecure           1        0      37
Birth       MAL-ED       INDIA          Food Insecure                  0        2      37
Birth       MAL-ED       INDIA          Food Insecure                  1        0      37
Birth       MAL-ED       NEPAL          Food Secure                    0       10      14
Birth       MAL-ED       NEPAL          Food Secure                    1        0      14
Birth       MAL-ED       NEPAL          Mildly Food Insecure           0        1      14
Birth       MAL-ED       NEPAL          Mildly Food Insecure           1        0      14
Birth       MAL-ED       NEPAL          Food Insecure                  0        3      14
Birth       MAL-ED       NEPAL          Food Insecure                  1        0      14
Birth       MAL-ED       PERU           Food Secure                    0       24      91
Birth       MAL-ED       PERU           Food Secure                    1        0      91
Birth       MAL-ED       PERU           Mildly Food Insecure           0       23      91
Birth       MAL-ED       PERU           Mildly Food Insecure           1        0      91
Birth       MAL-ED       PERU           Food Insecure                  0       44      91
Birth       MAL-ED       PERU           Food Insecure                  1        0      91
Birth       MAL-ED       SOUTH AFRICA   Food Secure                    0       45      88
Birth       MAL-ED       SOUTH AFRICA   Food Secure                    1        0      88
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure           0        9      88
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure           1        0      88
Birth       MAL-ED       SOUTH AFRICA   Food Insecure                  0       33      88
Birth       MAL-ED       SOUTH AFRICA   Food Insecure                  1        1      88
Birth       NIH-Birth    BANGLADESH     Food Secure                    0       89     608
Birth       NIH-Birth    BANGLADESH     Food Secure                    1        1     608
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure           0      462     608
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure           1       16     608
Birth       NIH-Birth    BANGLADESH     Food Insecure                  0       38     608
Birth       NIH-Birth    BANGLADESH     Food Insecure                  1        2     608
Birth       NIH-Crypto   BANGLADESH     Food Secure                    0      437     732
Birth       NIH-Crypto   BANGLADESH     Food Secure                    1        2     732
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure           0      205     732
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure           1        4     732
Birth       NIH-Crypto   BANGLADESH     Food Insecure                  0       80     732
Birth       NIH-Crypto   BANGLADESH     Food Insecure                  1        4     732
6 months    GMS-Nepal    NEPAL          Food Secure                    0      386     546
6 months    GMS-Nepal    NEPAL          Food Secure                    1       10     546
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure           0       71     546
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure           1        5     546
6 months    GMS-Nepal    NEPAL          Food Insecure                  0       71     546
6 months    GMS-Nepal    NEPAL          Food Insecure                  1        3     546
6 months    JiVitA-3     BANGLADESH     Food Secure                    0     7979   16791
6 months    JiVitA-3     BANGLADESH     Food Secure                    1      436   16791
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure           0     5248   16791
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure           1      354   16791
6 months    JiVitA-3     BANGLADESH     Food Insecure                  0     2545   16791
6 months    JiVitA-3     BANGLADESH     Food Insecure                  1      229   16791
6 months    JiVitA-4     BANGLADESH     Food Secure                    0     2308    4793
6 months    JiVitA-4     BANGLADESH     Food Secure                    1      134    4793
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure           0     1632    4793
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure           1       97    4793
6 months    JiVitA-4     BANGLADESH     Food Insecure                  0      585    4793
6 months    JiVitA-4     BANGLADESH     Food Insecure                  1       37    4793
6 months    MAL-ED       BANGLADESH     Food Secure                    0      155     193
6 months    MAL-ED       BANGLADESH     Food Secure                    1        5     193
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure           0        4     193
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure           1        0     193
6 months    MAL-ED       BANGLADESH     Food Insecure                  0       29     193
6 months    MAL-ED       BANGLADESH     Food Insecure                  1        0     193
6 months    MAL-ED       BRAZIL         Food Secure                    0        3     129
6 months    MAL-ED       BRAZIL         Food Secure                    1        0     129
6 months    MAL-ED       BRAZIL         Mildly Food Insecure           0       11     129
6 months    MAL-ED       BRAZIL         Mildly Food Insecure           1        0     129
6 months    MAL-ED       BRAZIL         Food Insecure                  0      115     129
6 months    MAL-ED       BRAZIL         Food Insecure                  1        0     129
6 months    MAL-ED       INDIA          Food Secure                    0      183     212
6 months    MAL-ED       INDIA          Food Secure                    1        7     212
6 months    MAL-ED       INDIA          Mildly Food Insecure           0        5     212
6 months    MAL-ED       INDIA          Mildly Food Insecure           1        0     212
6 months    MAL-ED       INDIA          Food Insecure                  0       16     212
6 months    MAL-ED       INDIA          Food Insecure                  1        1     212
6 months    MAL-ED       NEPAL          Food Secure                    0       94     128
6 months    MAL-ED       NEPAL          Food Secure                    1        0     128
6 months    MAL-ED       NEPAL          Mildly Food Insecure           0       15     128
6 months    MAL-ED       NEPAL          Mildly Food Insecure           1        0     128
6 months    MAL-ED       NEPAL          Food Insecure                  0       19     128
6 months    MAL-ED       NEPAL          Food Insecure                  1        0     128
6 months    MAL-ED       PERU           Food Secure                    0       24     111
6 months    MAL-ED       PERU           Food Secure                    1        3     111
6 months    MAL-ED       PERU           Mildly Food Insecure           0       27     111
6 months    MAL-ED       PERU           Mildly Food Insecure           1        1     111
6 months    MAL-ED       PERU           Food Insecure                  0       53     111
6 months    MAL-ED       PERU           Food Insecure                  1        3     111
6 months    MAL-ED       SOUTH AFRICA   Food Secure                    0      127     228
6 months    MAL-ED       SOUTH AFRICA   Food Secure                    1        2     228
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure           0       17     228
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure           1        1     228
6 months    MAL-ED       SOUTH AFRICA   Food Insecure                  0       78     228
6 months    MAL-ED       SOUTH AFRICA   Food Insecure                  1        3     228
6 months    NIH-Birth    BANGLADESH     Food Secure                    0       77     537
6 months    NIH-Birth    BANGLADESH     Food Secure                    1        3     537
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure           0      391     537
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure           1       26     537
6 months    NIH-Birth    BANGLADESH     Food Insecure                  0       34     537
6 months    NIH-Birth    BANGLADESH     Food Insecure                  1        6     537
6 months    NIH-Crypto   BANGLADESH     Food Secure                    0      416     715
6 months    NIH-Crypto   BANGLADESH     Food Secure                    1       11     715
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure           0      196     715
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure           1        8     715
6 months    NIH-Crypto   BANGLADESH     Food Insecure                  0       80     715
6 months    NIH-Crypto   BANGLADESH     Food Insecure                  1        4     715
24 months   GMS-Nepal    NEPAL          Food Secure                    0      309     478
24 months   GMS-Nepal    NEPAL          Food Secure                    1       33     478
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure           0       59     478
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure           1        8     478
24 months   GMS-Nepal    NEPAL          Food Insecure                  0       59     478
24 months   GMS-Nepal    NEPAL          Food Insecure                  1       10     478
24 months   JiVitA-3     BANGLADESH     Food Secure                    0     3359    8214
24 months   JiVitA-3     BANGLADESH     Food Secure                    1      516    8214
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure           0     2331    8214
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure           1      430    8214
24 months   JiVitA-3     BANGLADESH     Food Insecure                  0     1240    8214
24 months   JiVitA-3     BANGLADESH     Food Insecure                  1      338    8214
24 months   JiVitA-4     BANGLADESH     Food Secure                    0     2165    4713
24 months   JiVitA-4     BANGLADESH     Food Secure                    1      234    4713
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure           0     1542    4713
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure           1      163    4713
24 months   JiVitA-4     BANGLADESH     Food Insecure                  0      558    4713
24 months   JiVitA-4     BANGLADESH     Food Insecure                  1       51    4713
24 months   MAL-ED       BANGLADESH     Food Secure                    0      142     194
24 months   MAL-ED       BANGLADESH     Food Secure                    1       19     194
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure           0        2     194
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure           1        2     194
24 months   MAL-ED       BANGLADESH     Food Insecure                  0       23     194
24 months   MAL-ED       BANGLADESH     Food Insecure                  1        6     194
24 months   MAL-ED       BRAZIL         Food Secure                    0        3     129
24 months   MAL-ED       BRAZIL         Food Secure                    1        0     129
24 months   MAL-ED       BRAZIL         Mildly Food Insecure           0       11     129
24 months   MAL-ED       BRAZIL         Mildly Food Insecure           1        0     129
24 months   MAL-ED       BRAZIL         Food Insecure                  0      115     129
24 months   MAL-ED       BRAZIL         Food Insecure                  1        0     129
24 months   MAL-ED       INDIA          Food Secure                    0      165     212
24 months   MAL-ED       INDIA          Food Secure                    1       25     212
24 months   MAL-ED       INDIA          Mildly Food Insecure           0        5     212
24 months   MAL-ED       INDIA          Mildly Food Insecure           1        0     212
24 months   MAL-ED       INDIA          Food Insecure                  0       14     212
24 months   MAL-ED       INDIA          Food Insecure                  1        3     212
24 months   MAL-ED       NEPAL          Food Secure                    0       91     128
24 months   MAL-ED       NEPAL          Food Secure                    1        3     128
24 months   MAL-ED       NEPAL          Mildly Food Insecure           0       15     128
24 months   MAL-ED       NEPAL          Mildly Food Insecure           1        0     128
24 months   MAL-ED       NEPAL          Food Insecure                  0       16     128
24 months   MAL-ED       NEPAL          Food Insecure                  1        3     128
24 months   MAL-ED       PERU           Food Secure                    0       23     107
24 months   MAL-ED       PERU           Food Secure                    1        3     107
24 months   MAL-ED       PERU           Mildly Food Insecure           0       25     107
24 months   MAL-ED       PERU           Mildly Food Insecure           1        2     107
24 months   MAL-ED       PERU           Food Insecure                  0       50     107
24 months   MAL-ED       PERU           Food Insecure                  1        4     107
24 months   MAL-ED       SOUTH AFRICA   Food Secure                    0      116     228
24 months   MAL-ED       SOUTH AFRICA   Food Secure                    1       13     228
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure           0       14     228
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure           1        4     228
24 months   MAL-ED       SOUTH AFRICA   Food Insecure                  0       73     228
24 months   MAL-ED       SOUTH AFRICA   Food Insecure                  1        8     228
24 months   NIH-Birth    BANGLADESH     Food Secure                    0       60     429
24 months   NIH-Birth    BANGLADESH     Food Secure                    1        8     429
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure           0      257     429
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure           1       71     429
24 months   NIH-Birth    BANGLADESH     Food Insecure                  0       17     429
24 months   NIH-Birth    BANGLADESH     Food Insecure                  1       16     429
24 months   NIH-Crypto   BANGLADESH     Food Secure                    0      313     514
24 months   NIH-Crypto   BANGLADESH     Food Secure                    1       21     514
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure           0      114     514
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure           1       10     514
24 months   NIH-Crypto   BANGLADESH     Food Insecure                  0       51     514
24 months   NIH-Crypto   BANGLADESH     Food Insecure                  1        5     514


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
![](/tmp/19a9be32-8a86-49ae-abf1-c77ba2fbc148/b9afefdc-576e-458a-9a8d-80bcb2bab841/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/19a9be32-8a86-49ae-abf1-c77ba2fbc148/b9afefdc-576e-458a-9a8d-80bcb2bab841/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/19a9be32-8a86-49ae-abf1-c77ba2fbc148/b9afefdc-576e-458a-9a8d-80bcb2bab841/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/19a9be32-8a86-49ae-abf1-c77ba2fbc148/b9afefdc-576e-458a-9a8d-80bcb2bab841/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal    NEPAL        Food Secure            NA                0.0356394   0.0189901   0.0522888
Birth       GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.0471698   0.0067813   0.0875584
Birth       GMS-Nepal    NEPAL        Food Insecure          NA                0.0898876   0.0304209   0.1493544
Birth       JiVitA-3     BANGLADESH   Food Secure            NA                0.0966324   0.0879484   0.1053164
Birth       JiVitA-3     BANGLADESH   Mildly Food Insecure   NA                0.0961653   0.0864983   0.1058323
Birth       JiVitA-3     BANGLADESH   Food Insecure          NA                0.0969196   0.0821247   0.1117146
Birth       JiVitA-4     BANGLADESH   Food Secure            NA                0.0904859   0.0725494   0.1084224
Birth       JiVitA-4     BANGLADESH   Mildly Food Insecure   NA                0.0748852   0.0564155   0.0933549
Birth       JiVitA-4     BANGLADESH   Food Insecure          NA                0.0729553   0.0504005   0.0955101
6 months    JiVitA-3     BANGLADESH   Food Secure            NA                0.0606926   0.0542074   0.0671778
6 months    JiVitA-3     BANGLADESH   Mildly Food Insecure   NA                0.0582588   0.0515283   0.0649894
6 months    JiVitA-3     BANGLADESH   Food Insecure          NA                0.0733613   0.0625405   0.0841821
6 months    JiVitA-4     BANGLADESH   Food Secure            NA                0.0548017   0.0458462   0.0637572
6 months    JiVitA-4     BANGLADESH   Mildly Food Insecure   NA                0.0557216   0.0432772   0.0681661
6 months    JiVitA-4     BANGLADESH   Food Insecure          NA                0.0602884   0.0420024   0.0785743
24 months   GMS-Nepal    NEPAL        Food Secure            NA                0.0964912   0.0651656   0.1278169
24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.1194030   0.0416778   0.1971281
24 months   GMS-Nepal    NEPAL        Food Insecure          NA                0.1449275   0.0617789   0.2280762
24 months   JiVitA-3     BANGLADESH   Food Secure            NA                0.1498418   0.1348604   0.1648231
24 months   JiVitA-3     BANGLADESH   Mildly Food Insecure   NA                0.1465050   0.1308991   0.1621108
24 months   JiVitA-3     BANGLADESH   Food Insecure          NA                0.1838310   0.1604753   0.2071868
24 months   JiVitA-4     BANGLADESH   Food Secure            NA                0.0970352   0.0832326   0.1108379
24 months   JiVitA-4     BANGLADESH   Mildly Food Insecure   NA                0.0949470   0.0793384   0.1105557
24 months   JiVitA-4     BANGLADESH   Food Insecure          NA                0.0822182   0.0573402   0.1070962
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
Birth       JiVitA-3     BANGLADESH   NA                   NA                0.0962824   0.0908494   0.1017154
Birth       JiVitA-4     BANGLADESH   NA                   NA                0.0829181   0.0711515   0.0946848
6 months    JiVitA-3     BANGLADESH   NA                   NA                0.0606873   0.0568242   0.0645503
6 months    JiVitA-4     BANGLADESH   NA                   NA                0.0559149   0.0491257   0.0627040
24 months   GMS-Nepal    NEPAL        NA                   NA                0.1066946   0.0789894   0.1343997
24 months   JiVitA-3     BANGLADESH   NA                   NA                0.1563185   0.1472145   0.1654224
24 months   JiVitA-4     BANGLADESH   NA                   NA                0.0950562   0.0854670   0.1046455
24 months   NIH-Birth    BANGLADESH   NA                   NA                0.2214452   0.1821080   0.2607825
24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.0700389   0.0479542   0.0921236


### Parameter: RR


agecat      studyid      country      intervention_level     baseline_level     estimate    ci_lower   ci_upper
----------  -----------  -----------  ---------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal    NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       1.3235294   0.4990314   3.510260
Birth       GMS-Nepal    NEPAL        Food Insecure          Food Secure       2.5221414   1.1221261   5.668880
Birth       JiVitA-3     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       JiVitA-3     BANGLADESH   Mildly Food Insecure   Food Secure       0.9951662   0.8726767   1.134848
Birth       JiVitA-3     BANGLADESH   Food Insecure          Food Secure       1.0029725   0.8401860   1.197299
Birth       JiVitA-4     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       JiVitA-4     BANGLADESH   Mildly Food Insecure   Food Secure       0.8275899   0.6032295   1.135397
Birth       JiVitA-4     BANGLADESH   Food Insecure          Food Secure       0.8062616   0.5571952   1.166661
6 months    JiVitA-3     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    JiVitA-3     BANGLADESH   Mildly Food Insecure   Food Secure       0.9599007   0.8242498   1.117876
6 months    JiVitA-3     BANGLADESH   Food Insecure          Food Secure       1.2087360   1.0124446   1.443084
6 months    JiVitA-4     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    JiVitA-4     BANGLADESH   Mildly Food Insecure   Food Secure       1.0167865   0.7711578   1.340653
6 months    JiVitA-4     BANGLADESH   Food Insecure          Food Secure       1.1001180   0.7772162   1.557172
24 months   GMS-Nepal    NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       1.2374491   0.5978826   2.561172
24 months   GMS-Nepal    NEPAL        Food Insecure          Food Secure       1.5019763   0.7769123   2.903716
24 months   JiVitA-3     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   JiVitA-3     BANGLADESH   Mildly Food Insecure   Food Secure       0.9777311   0.8474492   1.128042
24 months   JiVitA-3     BANGLADESH   Food Insecure          Food Secure       1.2268343   1.0526315   1.429866
24 months   JiVitA-4     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   JiVitA-4     BANGLADESH   Mildly Food Insecure   Food Secure       0.9784799   0.7895528   1.212614
24 months   JiVitA-4     BANGLADESH   Food Insecure          Food Secure       0.8473028   0.6062206   1.184259
24 months   NIH-Birth    BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   NIH-Birth    BANGLADESH   Mildly Food Insecure   Food Secure       1.8399390   0.9288873   3.644549
24 months   NIH-Birth    BANGLADESH   Food Insecure          Food Secure       4.1212121   1.9648904   8.643937
24 months   NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.2826421   0.6212197   2.648291
24 months   NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.4200680   0.5579185   3.614494


### Parameter: PAR


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal    NEPAL        Food Secure          NA                 0.0090034   -0.0023034   0.0203103
Birth       JiVitA-3     BANGLADESH   Food Secure          NA                -0.0003500   -0.0073598   0.0066597
Birth       JiVitA-4     BANGLADESH   Food Secure          NA                -0.0075677   -0.0191518   0.0040163
6 months    JiVitA-3     BANGLADESH   Food Secure          NA                -0.0000053   -0.0052137   0.0052031
6 months    JiVitA-4     BANGLADESH   Food Secure          NA                 0.0011132   -0.0056045   0.0078308
24 months   GMS-Nepal    NEPAL        Food Secure          NA                 0.0102033   -0.0083620   0.0287687
24 months   JiVitA-3     BANGLADESH   Food Secure          NA                 0.0064767   -0.0051103   0.0180637
24 months   JiVitA-4     BANGLADESH   Food Secure          NA                -0.0019790   -0.0111899   0.0072319
24 months   NIH-Birth    BANGLADESH   Food Secure          NA                 0.1037982    0.0292197   0.1783766
24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0071647   -0.0096965   0.0240259


### Parameter: PAF


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal    NEPAL        Food Secure          NA                 0.2016771   -0.0837182   0.4119141
Birth       JiVitA-3     BANGLADESH   Food Secure          NA                -0.0036355   -0.0791551   0.0665993
Birth       JiVitA-4     BANGLADESH   Food Secure          NA                -0.0912677   -0.2383315   0.0383308
6 months    JiVitA-3     BANGLADESH   Food Secure          NA                -0.0000872   -0.0897016   0.0821576
6 months    JiVitA-4     BANGLADESH   Food Secure          NA                 0.0199081   -0.1076028   0.1327396
24 months   GMS-Nepal    NEPAL        Food Secure          NA                 0.0956312   -0.0945510   0.2527686
24 months   JiVitA-3     BANGLADESH   Food Secure          NA                 0.0414328   -0.0357655   0.1128773
24 months   JiVitA-4     BANGLADESH   Food Secure          NA                -0.0208194   -0.1223129   0.0714958
24 months   NIH-Birth    BANGLADESH   Food Secure          NA                 0.4687307    0.0121611   0.7142782
24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                 0.1022954   -0.1713644   0.3120215
