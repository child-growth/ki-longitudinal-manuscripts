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

**Outcome Variable:** pers_wast

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

agecat        studyid      country        hfoodsec                pers_wast   n_cell       n
------------  -----------  -------------  ---------------------  ----------  -------  ------
0-24 months   GMS-Nepal    NEPAL          Food Secure                     0      367     579
0-24 months   GMS-Nepal    NEPAL          Food Secure                     1       52     579
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure            0       75     579
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure            1        6     579
0-24 months   GMS-Nepal    NEPAL          Food Insecure                   0       61     579
0-24 months   GMS-Nepal    NEPAL          Food Insecure                   1       18     579
0-24 months   JiVitA-3     BANGLADESH     Food Secure                     0     7574   15772
0-24 months   JiVitA-3     BANGLADESH     Food Secure                     1      386   15772
0-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure            0     4908   15772
0-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure            1      302   15772
0-24 months   JiVitA-3     BANGLADESH     Food Insecure                   0     2397   15772
0-24 months   JiVitA-3     BANGLADESH     Food Insecure                   1      205   15772
0-24 months   JiVitA-4     BANGLADESH     Food Secure                     0     2471    5240
0-24 months   JiVitA-4     BANGLADESH     Food Secure                     1      205    5240
0-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure            0     1716    5240
0-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure            1      168    5240
0-24 months   JiVitA-4     BANGLADESH     Food Insecure                   0      629    5240
0-24 months   JiVitA-4     BANGLADESH     Food Insecure                   1       51    5240
0-24 months   MAL-ED       BANGLADESH     Food Secure                     0      152     194
0-24 months   MAL-ED       BANGLADESH     Food Secure                     1        9     194
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure            0        4     194
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure            1        0     194
0-24 months   MAL-ED       BANGLADESH     Food Insecure                   0       27     194
0-24 months   MAL-ED       BANGLADESH     Food Insecure                   1        2     194
0-24 months   MAL-ED       BRAZIL         Food Secure                     0        3     129
0-24 months   MAL-ED       BRAZIL         Food Secure                     1        0     129
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure            0       11     129
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure            1        0     129
0-24 months   MAL-ED       BRAZIL         Food Insecure                   0      115     129
0-24 months   MAL-ED       BRAZIL         Food Insecure                   1        0     129
0-24 months   MAL-ED       INDIA          Food Secure                     0      173     212
0-24 months   MAL-ED       INDIA          Food Secure                     1       17     212
0-24 months   MAL-ED       INDIA          Mildly Food Insecure            0        3     212
0-24 months   MAL-ED       INDIA          Mildly Food Insecure            1        2     212
0-24 months   MAL-ED       INDIA          Food Insecure                   0       16     212
0-24 months   MAL-ED       INDIA          Food Insecure                   1        1     212
0-24 months   MAL-ED       NEPAL          Food Secure                     0       93     128
0-24 months   MAL-ED       NEPAL          Food Secure                     1        1     128
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure            0       14     128
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure            1        1     128
0-24 months   MAL-ED       NEPAL          Food Insecure                   0       19     128
0-24 months   MAL-ED       NEPAL          Food Insecure                   1        0     128
0-24 months   MAL-ED       PERU           Food Secure                     0       27     112
0-24 months   MAL-ED       PERU           Food Secure                     1        0     112
0-24 months   MAL-ED       PERU           Mildly Food Insecure            0       29     112
0-24 months   MAL-ED       PERU           Mildly Food Insecure            1        0     112
0-24 months   MAL-ED       PERU           Food Insecure                   0       55     112
0-24 months   MAL-ED       PERU           Food Insecure                   1        1     112
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                     0      131     232
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                     1        0     232
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure            0       18     232
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure            1        1     232
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                   0       81     232
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                   1        1     232
0-24 months   NIH-Birth    BANGLADESH     Food Secure                     0       74     534
0-24 months   NIH-Birth    BANGLADESH     Food Secure                     1        4     534
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure            0      379     534
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure            1       38     534
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                   0       34     534
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                   1        5     534
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                     0      425     730
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                     1       13     730
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure            0      197     730
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure            1       10     730
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                   0       82     730
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                   1        3     730
0-6 months    GMS-Nepal    NEPAL          Food Secure                     0      349     549
0-6 months    GMS-Nepal    NEPAL          Food Secure                     1       47     549
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure            0       75     549
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure            1        4     549
0-6 months    GMS-Nepal    NEPAL          Food Insecure                   0       66     549
0-6 months    GMS-Nepal    NEPAL          Food Insecure                   1        8     549
0-6 months    JiVitA-3     BANGLADESH     Food Secure                     0       22      50
0-6 months    JiVitA-3     BANGLADESH     Food Secure                     1        0      50
0-6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure            0       16      50
0-6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure            1        1      50
0-6 months    JiVitA-3     BANGLADESH     Food Insecure                   0       10      50
0-6 months    JiVitA-3     BANGLADESH     Food Insecure                   1        1      50
0-6 months    MAL-ED       BANGLADESH     Food Secure                     0      156     194
0-6 months    MAL-ED       BANGLADESH     Food Secure                     1        5     194
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure            0        4     194
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure            1        0     194
0-6 months    MAL-ED       BANGLADESH     Food Insecure                   0       28     194
0-6 months    MAL-ED       BANGLADESH     Food Insecure                   1        1     194
0-6 months    MAL-ED       BRAZIL         Food Secure                     0        3     129
0-6 months    MAL-ED       BRAZIL         Food Secure                     1        0     129
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure            0       11     129
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure            1        0     129
0-6 months    MAL-ED       BRAZIL         Food Insecure                   0      115     129
0-6 months    MAL-ED       BRAZIL         Food Insecure                   1        0     129
0-6 months    MAL-ED       INDIA          Food Secure                     0      175     211
0-6 months    MAL-ED       INDIA          Food Secure                     1       14     211
0-6 months    MAL-ED       INDIA          Mildly Food Insecure            0        3     211
0-6 months    MAL-ED       INDIA          Mildly Food Insecure            1        2     211
0-6 months    MAL-ED       INDIA          Food Insecure                   0       15     211
0-6 months    MAL-ED       INDIA          Food Insecure                   1        2     211
0-6 months    MAL-ED       NEPAL          Food Secure                     0       91     128
0-6 months    MAL-ED       NEPAL          Food Secure                     1        3     128
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure            0       14     128
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure            1        1     128
0-6 months    MAL-ED       NEPAL          Food Insecure                   0       19     128
0-6 months    MAL-ED       NEPAL          Food Insecure                   1        0     128
0-6 months    MAL-ED       PERU           Food Secure                     0       27     112
0-6 months    MAL-ED       PERU           Food Secure                     1        0     112
0-6 months    MAL-ED       PERU           Mildly Food Insecure            0       29     112
0-6 months    MAL-ED       PERU           Mildly Food Insecure            1        0     112
0-6 months    MAL-ED       PERU           Food Insecure                   0       56     112
0-6 months    MAL-ED       PERU           Food Insecure                   1        0     112
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                     0      130     231
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                     1        1     231
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure            0       18     231
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure            1        1     231
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                   0       81     231
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                   1        0     231
0-6 months    NIH-Birth    BANGLADESH     Food Secure                     0       22     169
0-6 months    NIH-Birth    BANGLADESH     Food Secure                     1        1     169
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure            0      130     169
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure            1        9     169
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                   0        6     169
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                   1        1     169
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                     0      143     250
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                     1        2     250
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure            0       76     250
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure            1        2     250
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                   0       26     250
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                   1        1     250
6-24 months   GMS-Nepal    NEPAL          Food Secure                     0      367     579
6-24 months   GMS-Nepal    NEPAL          Food Secure                     1       52     579
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure            0       75     579
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure            1        6     579
6-24 months   GMS-Nepal    NEPAL          Food Insecure                   0       61     579
6-24 months   GMS-Nepal    NEPAL          Food Insecure                   1       18     579
6-24 months   JiVitA-3     BANGLADESH     Food Secure                     0     7574   15772
6-24 months   JiVitA-3     BANGLADESH     Food Secure                     1      386   15772
6-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure            0     4908   15772
6-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure            1      302   15772
6-24 months   JiVitA-3     BANGLADESH     Food Insecure                   0     2397   15772
6-24 months   JiVitA-3     BANGLADESH     Food Insecure                   1      205   15772
6-24 months   JiVitA-4     BANGLADESH     Food Secure                     0     2471    5240
6-24 months   JiVitA-4     BANGLADESH     Food Secure                     1      205    5240
6-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure            0     1716    5240
6-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure            1      168    5240
6-24 months   JiVitA-4     BANGLADESH     Food Insecure                   0      629    5240
6-24 months   JiVitA-4     BANGLADESH     Food Insecure                   1       51    5240
6-24 months   MAL-ED       BANGLADESH     Food Secure                     0      152     194
6-24 months   MAL-ED       BANGLADESH     Food Secure                     1        9     194
6-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure            0        4     194
6-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure            1        0     194
6-24 months   MAL-ED       BANGLADESH     Food Insecure                   0       27     194
6-24 months   MAL-ED       BANGLADESH     Food Insecure                   1        2     194
6-24 months   MAL-ED       BRAZIL         Food Secure                     0        3     129
6-24 months   MAL-ED       BRAZIL         Food Secure                     1        0     129
6-24 months   MAL-ED       BRAZIL         Mildly Food Insecure            0       11     129
6-24 months   MAL-ED       BRAZIL         Mildly Food Insecure            1        0     129
6-24 months   MAL-ED       BRAZIL         Food Insecure                   0      115     129
6-24 months   MAL-ED       BRAZIL         Food Insecure                   1        0     129
6-24 months   MAL-ED       INDIA          Food Secure                     0      173     212
6-24 months   MAL-ED       INDIA          Food Secure                     1       17     212
6-24 months   MAL-ED       INDIA          Mildly Food Insecure            0        3     212
6-24 months   MAL-ED       INDIA          Mildly Food Insecure            1        2     212
6-24 months   MAL-ED       INDIA          Food Insecure                   0       16     212
6-24 months   MAL-ED       INDIA          Food Insecure                   1        1     212
6-24 months   MAL-ED       NEPAL          Food Secure                     0       93     128
6-24 months   MAL-ED       NEPAL          Food Secure                     1        1     128
6-24 months   MAL-ED       NEPAL          Mildly Food Insecure            0       14     128
6-24 months   MAL-ED       NEPAL          Mildly Food Insecure            1        1     128
6-24 months   MAL-ED       NEPAL          Food Insecure                   0       19     128
6-24 months   MAL-ED       NEPAL          Food Insecure                   1        0     128
6-24 months   MAL-ED       PERU           Food Secure                     0       27     112
6-24 months   MAL-ED       PERU           Food Secure                     1        0     112
6-24 months   MAL-ED       PERU           Mildly Food Insecure            0       29     112
6-24 months   MAL-ED       PERU           Mildly Food Insecure            1        0     112
6-24 months   MAL-ED       PERU           Food Insecure                   0       55     112
6-24 months   MAL-ED       PERU           Food Insecure                   1        1     112
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure                     0      131     232
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure                     1        0     232
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure            0       18     232
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure            1        1     232
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                   0       81     232
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                   1        1     232
6-24 months   NIH-Birth    BANGLADESH     Food Secure                     0       74     534
6-24 months   NIH-Birth    BANGLADESH     Food Secure                     1        4     534
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure            0      379     534
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure            1       38     534
6-24 months   NIH-Birth    BANGLADESH     Food Insecure                   0       34     534
6-24 months   NIH-Birth    BANGLADESH     Food Insecure                   1        5     534
6-24 months   NIH-Crypto   BANGLADESH     Food Secure                     0      425     730
6-24 months   NIH-Crypto   BANGLADESH     Food Secure                     1       13     730
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure            0      197     730
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure            1       10     730
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure                   0       82     730
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure                   1        3     730


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
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/2dfeb3d0-2372-4304-9f52-1a191a5c8a5c/15ad365f-6788-47df-8741-fee8e4b8f6fa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2dfeb3d0-2372-4304-9f52-1a191a5c8a5c/15ad365f-6788-47df-8741-fee8e4b8f6fa/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2dfeb3d0-2372-4304-9f52-1a191a5c8a5c/15ad365f-6788-47df-8741-fee8e4b8f6fa/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2dfeb3d0-2372-4304-9f52-1a191a5c8a5c/15ad365f-6788-47df-8741-fee8e4b8f6fa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        Food Secure            NA                0.1241050   0.0925086   0.1557014
0-24 months   GMS-Nepal   NEPAL        Mildly Food Insecure   NA                0.0740741   0.0169917   0.1311565
0-24 months   GMS-Nepal   NEPAL        Food Insecure          NA                0.2278481   0.1352752   0.3204210
0-24 months   JiVitA-3    BANGLADESH   Food Secure            NA                0.0517554   0.0456364   0.0578744
0-24 months   JiVitA-3    BANGLADESH   Mildly Food Insecure   NA                0.0553162   0.0483086   0.0623237
0-24 months   JiVitA-3    BANGLADESH   Food Insecure          NA                0.0624823   0.0504452   0.0745194
0-24 months   JiVitA-4    BANGLADESH   Food Secure            NA                0.0765383   0.0650674   0.0880091
0-24 months   JiVitA-4    BANGLADESH   Mildly Food Insecure   NA                0.0889754   0.0741402   0.1038106
0-24 months   JiVitA-4    BANGLADESH   Food Insecure          NA                0.0755975   0.0537866   0.0974084
6-24 months   GMS-Nepal   NEPAL        Food Secure            NA                0.1241050   0.0925086   0.1557014
6-24 months   GMS-Nepal   NEPAL        Mildly Food Insecure   NA                0.0740741   0.0169917   0.1311565
6-24 months   GMS-Nepal   NEPAL        Food Insecure          NA                0.2278481   0.1352752   0.3204210
6-24 months   JiVitA-3    BANGLADESH   Food Secure            NA                0.0513227   0.0451188   0.0575266
6-24 months   JiVitA-3    BANGLADESH   Mildly Food Insecure   NA                0.0549339   0.0476508   0.0622170
6-24 months   JiVitA-3    BANGLADESH   Food Insecure          NA                0.0611737   0.0496807   0.0726668
6-24 months   JiVitA-4    BANGLADESH   Food Secure            NA                0.0764649   0.0649927   0.0879370
6-24 months   JiVitA-4    BANGLADESH   Mildly Food Insecure   NA                0.0891599   0.0743520   0.1039677
6-24 months   JiVitA-4    BANGLADESH   Food Insecure          NA                0.0751570   0.0531848   0.0971291


### Parameter: E(Y)


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        NA                   NA                0.1312608   0.1037314   0.1587902
0-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0566193   0.0525138   0.0607248
0-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.0809160   0.0722421   0.0895899
6-24 months   GMS-Nepal   NEPAL        NA                   NA                0.1312608   0.1037314   0.1587902
6-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0566193   0.0525138   0.0607248
6-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.0809160   0.0722421   0.0895899


### Parameter: RR


agecat        studyid     country      intervention_level     baseline_level     estimate    ci_lower   ci_upper
------------  ----------  -----------  ---------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal   NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal   NEPAL        Mildly Food Insecure   Food Secure       0.5968661   0.2651016   1.343821
0-24 months   GMS-Nepal   NEPAL        Food Insecure          Food Secure       1.8359299   1.1366453   2.965427
0-24 months   JiVitA-3    BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3    BANGLADESH   Mildly Food Insecure   Food Secure       1.0688002   0.8992964   1.270253
0-24 months   JiVitA-3    BANGLADESH   Food Insecure          Food Secure       1.2072622   0.9645590   1.511035
0-24 months   JiVitA-4    BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4    BANGLADESH   Mildly Food Insecure   Food Secure       1.1624956   0.9320250   1.449957
0-24 months   JiVitA-4    BANGLADESH   Food Insecure          Food Secure       0.9877083   0.7219247   1.351343
6-24 months   GMS-Nepal   NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal   NEPAL        Mildly Food Insecure   Food Secure       0.5968661   0.2651016   1.343821
6-24 months   GMS-Nepal   NEPAL        Food Insecure          Food Secure       1.8359299   1.1366453   2.965427
6-24 months   JiVitA-3    BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3    BANGLADESH   Mildly Food Insecure   Food Secure       1.0703636   0.8946095   1.280646
6-24 months   JiVitA-3    BANGLADESH   Food Insecure          Food Secure       1.1919435   0.9585785   1.482121
6-24 months   JiVitA-4    BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4    BANGLADESH   Mildly Food Insecure   Food Secure       1.1660238   0.9352508   1.453740
6-24 months   JiVitA-4    BANGLADESH   Food Insecure          Food Secure       0.9828952   0.7158259   1.349606


### Parameter: PAR


agecat        studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        Food Secure          NA                0.0071558   -0.0104876   0.0247992
0-24 months   JiVitA-3    BANGLADESH   Food Secure          NA                0.0048639   -0.0000724   0.0098002
0-24 months   JiVitA-4    BANGLADESH   Food Secure          NA                0.0043778   -0.0035733   0.0123288
6-24 months   GMS-Nepal   NEPAL        Food Secure          NA                0.0071558   -0.0104876   0.0247992
6-24 months   JiVitA-3    BANGLADESH   Food Secure          NA                0.0052966    0.0002902   0.0103031
6-24 months   JiVitA-4    BANGLADESH   Food Secure          NA                0.0044512   -0.0035000   0.0124023


### Parameter: PAF


agecat        studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        Food Secure          NA                0.0545158   -0.0895224   0.1795116
0-24 months   JiVitA-3    BANGLADESH   Food Secure          NA                0.0859057   -0.0051762   0.1687344
0-24 months   JiVitA-4    BANGLADESH   Food Secure          NA                0.0541027   -0.0493148   0.1473276
6-24 months   GMS-Nepal   NEPAL        Food Secure          NA                0.0545158   -0.0895224   0.1795116
6-24 months   JiVitA-3    BANGLADESH   Food Secure          NA                0.0935484    0.0010070   0.1775172
6-24 months   JiVitA-4    BANGLADESH   Food Secure          NA                0.0550096   -0.0484165   0.1482327
