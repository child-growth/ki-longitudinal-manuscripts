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

agecat      studyid      country        hfoodsec                stunted   n_cell       n
----------  -----------  -------------  ---------------------  --------  -------  ------
Birth       GMS-Nepal    NEPAL          Food Secure                   0      401     672
Birth       GMS-Nepal    NEPAL          Food Secure                   1       76     672
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure          0       86     672
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure          1       20     672
Birth       GMS-Nepal    NEPAL          Food Insecure                 0       69     672
Birth       GMS-Nepal    NEPAL          Food Insecure                 1       20     672
Birth       JiVitA-3     BANGLADESH     Food Secure                   0     4894   14364
Birth       JiVitA-3     BANGLADESH     Food Secure                   1     2057   14364
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure          0     3303   14364
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure          1     1574   14364
Birth       JiVitA-3     BANGLADESH     Food Insecure                 0     1696   14364
Birth       JiVitA-3     BANGLADESH     Food Insecure                 1      840   14364
Birth       JiVitA-4     BANGLADESH     Food Secure                   0      978    2810
Birth       JiVitA-4     BANGLADESH     Food Secure                   1      455    2810
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure          0      722    2810
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure          1      296    2810
Birth       JiVitA-4     BANGLADESH     Food Insecure                 0      253    2810
Birth       JiVitA-4     BANGLADESH     Food Insecure                 1      106    2810
Birth       MAL-ED       BANGLADESH     Food Secure                   0      121     172
Birth       MAL-ED       BANGLADESH     Food Secure                   1       23     172
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure          0        3     172
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure          1        1     172
Birth       MAL-ED       BANGLADESH     Food Insecure                 0       19     172
Birth       MAL-ED       BANGLADESH     Food Insecure                 1        5     172
Birth       MAL-ED       BRAZIL         Food Secure                   0        0      28
Birth       MAL-ED       BRAZIL         Food Secure                   1        0      28
Birth       MAL-ED       BRAZIL         Mildly Food Insecure          0        3      28
Birth       MAL-ED       BRAZIL         Mildly Food Insecure          1        1      28
Birth       MAL-ED       BRAZIL         Food Insecure                 0       20      28
Birth       MAL-ED       BRAZIL         Food Insecure                 1        4      28
Birth       MAL-ED       INDIA          Food Secure                   0       28      37
Birth       MAL-ED       INDIA          Food Secure                   1        6      37
Birth       MAL-ED       INDIA          Mildly Food Insecure          0        1      37
Birth       MAL-ED       INDIA          Mildly Food Insecure          1        0      37
Birth       MAL-ED       INDIA          Food Insecure                 0        1      37
Birth       MAL-ED       INDIA          Food Insecure                 1        1      37
Birth       MAL-ED       NEPAL          Food Secure                   0       10      14
Birth       MAL-ED       NEPAL          Food Secure                   1        0      14
Birth       MAL-ED       NEPAL          Mildly Food Insecure          0        1      14
Birth       MAL-ED       NEPAL          Mildly Food Insecure          1        0      14
Birth       MAL-ED       NEPAL          Food Insecure                 0        3      14
Birth       MAL-ED       NEPAL          Food Insecure                 1        0      14
Birth       MAL-ED       PERU           Food Secure                   0       20      91
Birth       MAL-ED       PERU           Food Secure                   1        4      91
Birth       MAL-ED       PERU           Mildly Food Insecure          0       21      91
Birth       MAL-ED       PERU           Mildly Food Insecure          1        2      91
Birth       MAL-ED       PERU           Food Insecure                 0       39      91
Birth       MAL-ED       PERU           Food Insecure                 1        5      91
Birth       MAL-ED       SOUTH AFRICA   Food Secure                   0       41      88
Birth       MAL-ED       SOUTH AFRICA   Food Secure                   1        4      88
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0        9      88
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0      88
Birth       MAL-ED       SOUTH AFRICA   Food Insecure                 0       31      88
Birth       MAL-ED       SOUTH AFRICA   Food Insecure                 1        3      88
Birth       NIH-Birth    BANGLADESH     Food Secure                   0       78     608
Birth       NIH-Birth    BANGLADESH     Food Secure                   1       12     608
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure          0      404     608
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure          1       74     608
Birth       NIH-Birth    BANGLADESH     Food Insecure                 0       29     608
Birth       NIH-Birth    BANGLADESH     Food Insecure                 1       11     608
Birth       NIH-Crypto   BANGLADESH     Food Secure                   0      387     732
Birth       NIH-Crypto   BANGLADESH     Food Secure                   1       52     732
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      175     732
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       34     732
Birth       NIH-Crypto   BANGLADESH     Food Insecure                 0       69     732
Birth       NIH-Crypto   BANGLADESH     Food Insecure                 1       15     732
6 months    GMS-Nepal    NEPAL          Food Secure                   0      314     546
6 months    GMS-Nepal    NEPAL          Food Secure                   1       82     546
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure          0       54     546
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure          1       22     546
6 months    GMS-Nepal    NEPAL          Food Insecure                 0       60     546
6 months    GMS-Nepal    NEPAL          Food Insecure                 1       14     546
6 months    JiVitA-3     BANGLADESH     Food Secure                   0     6526   16791
6 months    JiVitA-3     BANGLADESH     Food Secure                   1     1889   16791
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure          0     4125   16791
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure          1     1477   16791
6 months    JiVitA-3     BANGLADESH     Food Insecure                 0     1918   16791
6 months    JiVitA-3     BANGLADESH     Food Insecure                 1      856   16791
6 months    JiVitA-4     BANGLADESH     Food Secure                   0     1828    4793
6 months    JiVitA-4     BANGLADESH     Food Secure                   1      614    4793
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure          0     1276    4793
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure          1      453    4793
6 months    JiVitA-4     BANGLADESH     Food Insecure                 0      477    4793
6 months    JiVitA-4     BANGLADESH     Food Insecure                 1      145    4793
6 months    MAL-ED       BANGLADESH     Food Secure                   0      129     193
6 months    MAL-ED       BANGLADESH     Food Secure                   1       31     193
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure          0        2     193
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure          1        2     193
6 months    MAL-ED       BANGLADESH     Food Insecure                 0       25     193
6 months    MAL-ED       BANGLADESH     Food Insecure                 1        4     193
6 months    MAL-ED       BRAZIL         Food Secure                   0        3     129
6 months    MAL-ED       BRAZIL         Food Secure                   1        0     129
6 months    MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
6 months    MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
6 months    MAL-ED       BRAZIL         Food Insecure                 0      113     129
6 months    MAL-ED       BRAZIL         Food Insecure                 1        2     129
6 months    MAL-ED       INDIA          Food Secure                   0      153     212
6 months    MAL-ED       INDIA          Food Secure                   1       37     212
6 months    MAL-ED       INDIA          Mildly Food Insecure          0        5     212
6 months    MAL-ED       INDIA          Mildly Food Insecure          1        0     212
6 months    MAL-ED       INDIA          Food Insecure                 0       14     212
6 months    MAL-ED       INDIA          Food Insecure                 1        3     212
6 months    MAL-ED       NEPAL          Food Secure                   0       91     128
6 months    MAL-ED       NEPAL          Food Secure                   1        3     128
6 months    MAL-ED       NEPAL          Mildly Food Insecure          0       15     128
6 months    MAL-ED       NEPAL          Mildly Food Insecure          1        0     128
6 months    MAL-ED       NEPAL          Food Insecure                 0       15     128
6 months    MAL-ED       NEPAL          Food Insecure                 1        4     128
6 months    MAL-ED       PERU           Food Secure                   0       19     111
6 months    MAL-ED       PERU           Food Secure                   1        8     111
6 months    MAL-ED       PERU           Mildly Food Insecure          0       22     111
6 months    MAL-ED       PERU           Mildly Food Insecure          1        6     111
6 months    MAL-ED       PERU           Food Insecure                 0       41     111
6 months    MAL-ED       PERU           Food Insecure                 1       15     111
6 months    MAL-ED       SOUTH AFRICA   Food Secure                   0      104     228
6 months    MAL-ED       SOUTH AFRICA   Food Secure                   1       25     228
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       15     228
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        3     228
6 months    MAL-ED       SOUTH AFRICA   Food Insecure                 0       65     228
6 months    MAL-ED       SOUTH AFRICA   Food Insecure                 1       16     228
6 months    NIH-Birth    BANGLADESH     Food Secure                   0       60     537
6 months    NIH-Birth    BANGLADESH     Food Secure                   1       20     537
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure          0      308     537
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure          1      109     537
6 months    NIH-Birth    BANGLADESH     Food Insecure                 0       25     537
6 months    NIH-Birth    BANGLADESH     Food Insecure                 1       15     537
6 months    NIH-Crypto   BANGLADESH     Food Secure                   0      342     715
6 months    NIH-Crypto   BANGLADESH     Food Secure                   1       85     715
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      158     715
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       46     715
6 months    NIH-Crypto   BANGLADESH     Food Insecure                 0       65     715
6 months    NIH-Crypto   BANGLADESH     Food Insecure                 1       19     715
24 months   GMS-Nepal    NEPAL          Food Secure                   0      202     478
24 months   GMS-Nepal    NEPAL          Food Secure                   1      140     478
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure          0       29     478
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure          1       38     478
24 months   GMS-Nepal    NEPAL          Food Insecure                 0       36     478
24 months   GMS-Nepal    NEPAL          Food Insecure                 1       33     478
24 months   JiVitA-3     BANGLADESH     Food Secure                   0     2152    8214
24 months   JiVitA-3     BANGLADESH     Food Secure                   1     1723    8214
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure          0     1368    8214
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure          1     1393    8214
24 months   JiVitA-3     BANGLADESH     Food Insecure                 0      677    8214
24 months   JiVitA-3     BANGLADESH     Food Insecure                 1      901    8214
24 months   JiVitA-4     BANGLADESH     Food Secure                   0     1435    4713
24 months   JiVitA-4     BANGLADESH     Food Secure                   1      964    4713
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure          0     1007    4713
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure          1      698    4713
24 months   JiVitA-4     BANGLADESH     Food Insecure                 0      381    4713
24 months   JiVitA-4     BANGLADESH     Food Insecure                 1      228    4713
24 months   MAL-ED       BANGLADESH     Food Secure                   0       87     194
24 months   MAL-ED       BANGLADESH     Food Secure                   1       74     194
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure          0        1     194
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure          1        3     194
24 months   MAL-ED       BANGLADESH     Food Insecure                 0       12     194
24 months   MAL-ED       BANGLADESH     Food Insecure                 1       17     194
24 months   MAL-ED       BRAZIL         Food Secure                   0        3     129
24 months   MAL-ED       BRAZIL         Food Secure                   1        0     129
24 months   MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
24 months   MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
24 months   MAL-ED       BRAZIL         Food Insecure                 0      112     129
24 months   MAL-ED       BRAZIL         Food Insecure                 1        3     129
24 months   MAL-ED       INDIA          Food Secure                   0      107     212
24 months   MAL-ED       INDIA          Food Secure                   1       83     212
24 months   MAL-ED       INDIA          Mildly Food Insecure          0        5     212
24 months   MAL-ED       INDIA          Mildly Food Insecure          1        0     212
24 months   MAL-ED       INDIA          Food Insecure                 0        9     212
24 months   MAL-ED       INDIA          Food Insecure                 1        8     212
24 months   MAL-ED       NEPAL          Food Secure                   0       76     128
24 months   MAL-ED       NEPAL          Food Secure                   1       18     128
24 months   MAL-ED       NEPAL          Mildly Food Insecure          0       12     128
24 months   MAL-ED       NEPAL          Mildly Food Insecure          1        3     128
24 months   MAL-ED       NEPAL          Food Insecure                 0       10     128
24 months   MAL-ED       NEPAL          Food Insecure                 1        9     128
24 months   MAL-ED       PERU           Food Secure                   0       14     107
24 months   MAL-ED       PERU           Food Secure                   1       12     107
24 months   MAL-ED       PERU           Mildly Food Insecure          0       20     107
24 months   MAL-ED       PERU           Mildly Food Insecure          1        7     107
24 months   MAL-ED       PERU           Food Insecure                 0       33     107
24 months   MAL-ED       PERU           Food Insecure                 1       21     107
24 months   MAL-ED       SOUTH AFRICA   Food Secure                   0       88     228
24 months   MAL-ED       SOUTH AFRICA   Food Secure                   1       41     228
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       12     228
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        6     228
24 months   MAL-ED       SOUTH AFRICA   Food Insecure                 0       49     228
24 months   MAL-ED       SOUTH AFRICA   Food Insecure                 1       32     228
24 months   NIH-Birth    BANGLADESH     Food Secure                   0       45     429
24 months   NIH-Birth    BANGLADESH     Food Secure                   1       23     429
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure          0      131     429
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure          1      197     429
24 months   NIH-Birth    BANGLADESH     Food Insecure                 0        9     429
24 months   NIH-Birth    BANGLADESH     Food Insecure                 1       24     429
24 months   NIH-Crypto   BANGLADESH     Food Secure                   0      254     514
24 months   NIH-Crypto   BANGLADESH     Food Secure                   1       80     514
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure          0       91     514
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       33     514
24 months   NIH-Crypto   BANGLADESH     Food Insecure                 0       37     514
24 months   NIH-Crypto   BANGLADESH     Food Insecure                 1       19     514


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




# Results Detail

## Results Plots
![](/tmp/f37c6b74-dbbc-4a1e-908b-550f721732a9/8fc1a65e-c3f3-43f7-bd6e-78e3838baf3f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f37c6b74-dbbc-4a1e-908b-550f721732a9/8fc1a65e-c3f3-43f7-bd6e-78e3838baf3f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f37c6b74-dbbc-4a1e-908b-550f721732a9/8fc1a65e-c3f3-43f7-bd6e-78e3838baf3f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f37c6b74-dbbc-4a1e-908b-550f721732a9/8fc1a65e-c3f3-43f7-bd6e-78e3838baf3f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country        intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -------------  ---------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal    NEPAL          Food Secure            NA                0.1627557   0.1290968   0.1964145
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.1696462   0.0989899   0.2403026
Birth       GMS-Nepal    NEPAL          Food Insecure          NA                0.2312235   0.1246593   0.3377876
Birth       JiVitA-3     BANGLADESH     Food Secure            NA                0.3141443   0.3006825   0.3276061
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                0.3128506   0.2963117   0.3293895
Birth       JiVitA-3     BANGLADESH     Food Insecure          NA                0.3224090   0.2988144   0.3460036
Birth       JiVitA-4     BANGLADESH     Food Secure            NA                0.3182981   0.2902201   0.3463761
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                0.2897414   0.2563296   0.3231531
Birth       JiVitA-4     BANGLADESH     Food Insecure          NA                0.2952291   0.2457437   0.3447144
Birth       NIH-Birth    BANGLADESH     Food Secure            NA                0.1336758   0.0642486   0.2031029
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.1548611   0.1223788   0.1873434
Birth       NIH-Birth    BANGLADESH     Food Insecure          NA                0.3056285   0.1630712   0.4481859
Birth       NIH-Crypto   BANGLADESH     Food Secure            NA                0.1186778   0.0882853   0.1490702
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.1635244   0.1129858   0.2140630
Birth       NIH-Crypto   BANGLADESH     Food Insecure          NA                0.1769056   0.0948060   0.2590053
6 months    GMS-Nepal    NEPAL          Food Secure            NA                0.2067731   0.1666900   0.2468562
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.2962855   0.1924222   0.4001488
6 months    GMS-Nepal    NEPAL          Food Insecure          NA                0.1981519   0.1059620   0.2903417
6 months    JiVitA-3     BANGLADESH     Food Secure            NA                0.2474680   0.2356244   0.2593117
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                0.2472197   0.2335348   0.2609045
6 months    JiVitA-3     BANGLADESH     Food Insecure          NA                0.2833695   0.2618546   0.3048843
6 months    JiVitA-4     BANGLADESH     Food Secure            NA                0.2503187   0.2305378   0.2700996
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                0.2623967   0.2388667   0.2859267
6 months    JiVitA-4     BANGLADESH     Food Insecure          NA                0.2364570   0.2007192   0.2721948
6 months    MAL-ED       PERU           Food Secure            NA                0.2962963   0.1232791   0.4693135
6 months    MAL-ED       PERU           Mildly Food Insecure   NA                0.2142857   0.0616124   0.3669590
6 months    MAL-ED       PERU           Food Insecure          NA                0.2678571   0.1513457   0.3843686
6 months    NIH-Birth    BANGLADESH     Food Secure            NA                0.2430705   0.1464495   0.3396914
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.2607675   0.2185094   0.3030257
6 months    NIH-Birth    BANGLADESH     Food Insecure          NA                0.3571960   0.2051680   0.5092240
6 months    NIH-Crypto   BANGLADESH     Food Secure            NA                0.1985652   0.1605749   0.2365554
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2261899   0.1685878   0.2837921
6 months    NIH-Crypto   BANGLADESH     Food Insecure          NA                0.2324777   0.1425670   0.3223884
24 months   GMS-Nepal    NEPAL          Food Secure            NA                0.4120515   0.3595330   0.4645700
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.5375579   0.4121410   0.6629749
24 months   GMS-Nepal    NEPAL          Food Insecure          NA                0.4579826   0.3355578   0.5804075
24 months   JiVitA-3     BANGLADESH     Food Secure            NA                0.4864639   0.4661976   0.5067301
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                0.4836347   0.4597535   0.5075159
24 months   JiVitA-3     BANGLADESH     Food Insecure          NA                0.5305977   0.4995830   0.5616125
24 months   JiVitA-4     BANGLADESH     Food Secure            NA                0.4008901   0.3773595   0.4244207
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                0.4098963   0.3831301   0.4366624
24 months   JiVitA-4     BANGLADESH     Food Insecure          NA                0.3749513   0.3326015   0.4173011
24 months   MAL-ED       PERU           Food Secure            NA                0.4615385   0.2690159   0.6540610
24 months   MAL-ED       PERU           Mildly Food Insecure   NA                0.2592593   0.0931838   0.4253347
24 months   MAL-ED       PERU           Food Insecure          NA                0.3888889   0.2582528   0.5195249
24 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                0.3178295   0.2373006   0.3983583
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.3333333   0.1150804   0.5515863
24 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.3950617   0.2883657   0.5017577
24 months   NIH-Birth    BANGLADESH     Food Secure            NA                0.3382353   0.2256552   0.4508154
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.6006098   0.5475442   0.6536753
24 months   NIH-Birth    BANGLADESH     Food Insecure          NA                0.7272727   0.5751441   0.8794013
24 months   NIH-Crypto   BANGLADESH     Food Secure            NA                0.2414766   0.1952352   0.2877179
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2668063   0.1876525   0.3459601
24 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                0.3294848   0.2040631   0.4549065


### Parameter: E(Y)


agecat      studyid      country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal    NEPAL          NA                   NA                0.1726190   0.1440245   0.2012136
Birth       JiVitA-3     BANGLADESH     NA                   NA                0.3112643   0.3026111   0.3199174
Birth       JiVitA-4     BANGLADESH     NA                   NA                0.3049822   0.2848489   0.3251155
Birth       NIH-Birth    BANGLADESH     NA                   NA                0.1595395   0.1304091   0.1886699
Birth       NIH-Crypto   BANGLADESH     NA                   NA                0.1379781   0.1129774   0.1629789
6 months    GMS-Nepal    NEPAL          NA                   NA                0.2161172   0.1815615   0.2506729
6 months    JiVitA-3     BANGLADESH     NA                   NA                0.2514442   0.2432971   0.2595914
6 months    JiVitA-4     BANGLADESH     NA                   NA                0.2528688   0.2386164   0.2671211
6 months    MAL-ED       PERU           NA                   NA                0.2612613   0.1791629   0.3433597
6 months    NIH-Birth    BANGLADESH     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    NIH-Crypto   BANGLADESH     NA                   NA                0.2097902   0.1799252   0.2396552
24 months   GMS-Nepal    NEPAL          NA                   NA                0.4414226   0.3968613   0.4859839
24 months   JiVitA-3     BANGLADESH     NA                   NA                0.4890431   0.4756182   0.5024680
24 months   JiVitA-4     BANGLADESH     NA                   NA                0.4010185   0.3840244   0.4180125
24 months   MAL-ED       PERU           NA                   NA                0.3738318   0.2817277   0.4659358
24 months   MAL-ED       SOUTH AFRICA   NA                   NA                0.3464912   0.2845889   0.4083936
24 months   NIH-Birth    BANGLADESH     NA                   NA                0.5687646   0.5218455   0.6156837
24 months   NIH-Crypto   BANGLADESH     NA                   NA                0.2568093   0.2190047   0.2946140


### Parameter: RR


agecat      studyid      country        intervention_level     baseline_level     estimate    ci_lower   ci_upper
----------  -----------  -------------  ---------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal    NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       1.0423369   0.6551902   1.658245
Birth       GMS-Nepal    NEPAL          Food Insecure          Food Secure       1.4206784   0.8569587   2.355221
Birth       JiVitA-3     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       0.9958817   0.9312445   1.065005
Birth       JiVitA-3     BANGLADESH     Food Insecure          Food Secure       1.0263085   0.9422184   1.117903
Birth       JiVitA-4     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       0.9102830   0.7876470   1.052013
Birth       JiVitA-4     BANGLADESH     Food Insecure          Food Secure       0.9275238   0.7680832   1.120061
Birth       NIH-Birth    BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       1.1584831   0.6613001   2.029462
Birth       NIH-Birth    BANGLADESH     Food Insecure          Food Secure       2.2863422   1.1366648   4.598859
Birth       NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.3778861   0.9224222   2.058244
Birth       NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.4906385   0.8774667   2.532294
6 months    GMS-Nepal    NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       1.4329016   0.9598304   2.139135
6 months    GMS-Nepal    NEPAL          Food Insecure          Food Secure       0.9583058   0.5785742   1.587264
6 months    JiVitA-3     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       0.9989964   0.9329396   1.069730
6 months    JiVitA-3     BANGLADESH     Food Insecure          Food Secure       1.1450750   1.0490360   1.249906
6 months    JiVitA-4     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       1.0482506   0.9301519   1.181344
6 months    JiVitA-4     BANGLADESH     Food Insecure          Food Secure       0.9446241   0.7982954   1.117775
6 months    MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    MAL-ED       PERU           Mildly Food Insecure   Food Secure       0.7232143   0.2878706   1.816924
6 months    MAL-ED       PERU           Food Insecure          Food Secure       0.9040179   0.4364671   1.872417
6 months    NIH-Birth    BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       1.0728062   0.6980819   1.648679
6 months    NIH-Birth    BANGLADESH     Food Insecure          Food Secure       1.4695163   0.8205383   2.631782
6 months    NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.1391221   0.8285190   1.566167
6 months    NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.1707879   0.7605865   1.802220
24 months   GMS-Nepal    NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       1.3045892   1.0000487   1.701870
24 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       1.1114694   0.8263915   1.494890
24 months   JiVitA-3     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       0.9941842   0.9353406   1.056730
24 months   JiVitA-3     BANGLADESH     Food Insecure          Food Secure       1.0907238   1.0183334   1.168260
24 months   JiVitA-4     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       1.0224655   0.9390716   1.113265
24 months   JiVitA-4     BANGLADESH     Food Insecure          Food Secure       0.9352970   0.8248643   1.060515
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
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.1048953   0.7765415   1.572091
24 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.3644587   0.8907054   2.090195


### Parameter: PAR


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal    NEPAL          Food Secure          NA                 0.0098634   -0.0097751   0.0295018
Birth       JiVitA-3     BANGLADESH     Food Secure          NA                -0.0028800   -0.0136358   0.0078758
Birth       JiVitA-4     BANGLADESH     Food Secure          NA                -0.0133159   -0.0329007   0.0062689
Birth       NIH-Birth    BANGLADESH     Food Secure          NA                 0.0258637   -0.0392554   0.0909828
Birth       NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0193004   -0.0018258   0.0404266
6 months    GMS-Nepal    NEPAL          Food Secure          NA                 0.0093441   -0.0125765   0.0312648
6 months    JiVitA-3     BANGLADESH     Food Secure          NA                 0.0039762   -0.0050746   0.0130270
6 months    JiVitA-4     BANGLADESH     Food Secure          NA                 0.0025501   -0.0112235   0.0163237
6 months    MAL-ED       PERU           Food Secure          NA                -0.0350350   -0.1837366   0.1136665
6 months    NIH-Birth    BANGLADESH     Food Secure          NA                 0.0250859   -0.0645491   0.1147210
6 months    NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0112251   -0.0135678   0.0360179
24 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0293711    0.0001299   0.0586123
24 months   JiVitA-3     BANGLADESH     Food Secure          NA                 0.0025792   -0.0122776   0.0174360
24 months   JiVitA-4     BANGLADESH     Food Secure          NA                 0.0001284   -0.0154847   0.0157415
24 months   MAL-ED       PERU           Food Secure          NA                -0.0877067   -0.2536441   0.0782307
24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0286618   -0.0259150   0.0832385
24 months   NIH-Birth    BANGLADESH     Food Secure          NA                 0.2305293    0.1263288   0.3347297
24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0153328   -0.0131862   0.0438517


### Parameter: PAF


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal    NEPAL          Food Secure          NA                 0.0571397   -0.0635509   0.1641343
Birth       JiVitA-3     BANGLADESH     Food Secure          NA                -0.0092527   -0.0444206   0.0247310
Birth       JiVitA-4     BANGLADESH     Food Secure          NA                -0.0436613   -0.1099651   0.0186819
Birth       NIH-Birth    BANGLADESH     Food Secure          NA                 0.1621149   -0.3621211   0.4845895
Birth       NIH-Crypto   BANGLADESH     Food Secure          NA                 0.1398800   -0.0259733   0.2789224
6 months    GMS-Nepal    NEPAL          Food Secure          NA                 0.0432364   -0.0636819   0.1394075
6 months    JiVitA-3     BANGLADESH     Food Secure          NA                 0.0158134   -0.0208231   0.0511350
6 months    JiVitA-4     BANGLADESH     Food Secure          NA                 0.0100847   -0.0459120   0.0630834
6 months    MAL-ED       PERU           Food Secure          NA                -0.1340996   -0.8728000   0.3132305
6 months    NIH-Birth    BANGLADESH     Food Secure          NA                 0.0935497   -0.3107494   0.3731432
6 months    NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0535061   -0.0722770   0.1645343
24 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0665374   -0.0022499   0.1306036
24 months   JiVitA-3     BANGLADESH     Food Secure          NA                 0.0052740   -0.0255779   0.0351979
24 months   JiVitA-4     BANGLADESH     Food Secure          NA                 0.0003202   -0.0393822   0.0385060
24 months   MAL-ED       PERU           Food Secure          NA                -0.2346154   -0.7713345   0.1394764
24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0827200   -0.0891025   0.2274349
24 months   NIH-Birth    BANGLADESH     Food Secure          NA                 0.4053158    0.1884019   0.5642557
24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0597049   -0.0580830   0.1643805
